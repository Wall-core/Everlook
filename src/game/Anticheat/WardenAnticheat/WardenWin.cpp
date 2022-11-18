/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

 /*
  *
  * This code was written by namreeb (legal@namreeb.org) and is released with
  * permission as part of vmangos (https://github.com/vmangos/core)
  *
  */


#include "Warden.hpp"
#include "WardenWin.hpp"
#include "WardenModuleMgr.hpp"
#include "WardenScanMgr.hpp"
#include "WardenScan.hpp"
#include "../Anticheat.h"
#include "World.h"

#include "Unit.h"
#include "Chat.h"
#include "WorldSession.h"
#include "Auth/BigNumber.h"
#include "Auth/HMACSHA1.h"
#include "ByteBuffer.h"
#include "Database/DatabaseEnv.h"
#include "Player.h"
#include "Progression.h"

#include <string>
#include <vector>
#include <memory>
#include <sstream>
#include <iomanip>

namespace
{
// fixed offsets for classic client(s):
static constexpr struct ClientOffsets
{
    uint32 Build;

    // LuaScan
    uint32 GetText;

    // FileHashScan
    uint32 Open;
    uint32 Size;
    uint32 Read;
    uint32 Close;

    // TimeScan
    uint32 TickCount;

    // CWorld::enables memory scan
    uint32 WorldEnables;

    // LastHardwareAction memory scan (CSimpleTop::m_eventTime)
    uint32 LastHardwareAction;

    // Warden memory scan
    uint32 WardenModule;
    uint32 OfsWardenSysInfo;
    uint32 OfsWardenWinSysInfo;
} Offsets[] = {
    {
        5875,
        0x303BF0,
        0x2477A0, 0x2487F0, 0x248460, 0x253900,
        0x2C010,
        0xC7B2A4,
        0xCF0BC8,
        0xCE897C, 0x228, 0x08
    }
};

// TODO: Identify drivers for other hypervisors and add detections for them too
static constexpr struct
{
    const char *Name;
    const char *Driver;
    const char *DeviceName;
} Hypervisors[] =
{
    { "VirtualBox", "VBoxGuest", "\\Device\\VBoxGuest"},
    { "ESXi", "vmmemctl", "\\Device\\vmmemctl"},
};

static auto constexpr HypervisorCount = sizeof(Hypervisors) / sizeof(Hypervisors[0]);

enum WorldEnables
{
    TerrainDoodads                  = 0x1,              // default, toggled by sub at 0x673130, which is never called.  should always be set
    Terrain                         = 0x2,              // default, toggled by sub at 0x6730F0, which is never called.  should always be set
    TerrainLOD                      = 0x4,              // lod console var
    Unk10                           = 0x10,             // default
    TerrainCulling                  = 0x20,             // default, showCull console command
    TerrainShadows                  = 0x40,             // default, mapShadows console var, showShadow console command
    TerrainDoodadCollisionVisuals   = 0x80,             // toggled by sub at 0x6731C0, which is never called.  should never be set
    MapObjects                      = 0x100,            // default, toggled by sub at 0x673430, which is never called.  should always be set
    MapObjectLighting               = 0x200,            // default, toggled by sub at 0x673360, which is never called.  should always be set
    FootPrints                      = 0x400,            // showfootprints console var
    MapObjectTextures               = 0x800,            // default, toggled by sub at 0x6733A0, which is never called.  should always be set
    PortalDisplay                   = 0x1000,           // toggled by sub at 0x673470, which is never called.  should never be set
    PortalVisual                    = 0x2000,           // toggled by sub at 0x6734B0, which is never called.  should never be set
    DisableDoodadFullAlpha          = 0x4000,           // fullAlpha console var
    DoodadAnimation                 = 0x8000,           // doodadAnim console var
    TriangleStrips                  = 0x10000,          // triangleStrips console var
    CrappyBatches                   = 0x20000,          // toggled by sub at 0x6733E0, which is never called.  should never be set
    ZoneBoundaryVisuals             = 0x40000,          // zoneBoundary disabled console command (should never be set, also sends CMSG_ZONE_MAP, sub at 0x673850)
    BSPRender                       = 0x80000,          // toggled by sub at 0x6730A0, which is never called.  should never be set
    DetailDoodads                   = 0x100000,         // default, showDetailDoodads console command
    ShowQuery                       = 0x200000,         // showQuery disabled console command (should never be set)
    TerrainDoodadAABoxVisuals       = 0x400000,         // toggled by sub at 0x673170, which is never called.  should never be set
    TrilinearFiltering              = 0x800000,         // trilinear console var
    Water                           = 0x1000000,        // default, toggled by sub at 0x673670, which is never called.  should always be set
    WaterParticulates               = 0x2000000,        // default, waterParticulates console command
    TerrainLowDetail                = 0x4000000,        // default, showLowDetail console command
    Specular                        = 0x8000000,        // specular console var
    PixelShaders                    = 0x10000000,       // pixelShaders console var
    Unknown6737F9                   = 0x20000000,       // unknown, set by sub at 0x6737F0, should never be set
    Unknown673820                   = 0x40000000,       // unknown, set by sub at 0x673820, should never be set
    Anisotropic                     = 0x80000000,       // anisotropic console var

    Required = (TerrainDoodads|Terrain| MapObjects| MapObjectLighting| MapObjectTextures| Water),
    Prohibited = (TerrainDoodadCollisionVisuals|CrappyBatches|ZoneBoundaryVisuals|BSPRender|ShowQuery|TerrainDoodadAABoxVisuals|Unknown6737F9|Unknown673820),
};


static auto constexpr foo = sizeof(uint32);

struct KSYSTEM_TIME
{
    uint32 LowPart;
    int32 High1Time;
    int32 High2Time;
};

enum NT_PRODUCT_TYPE
{
    NtProductWinNt = 1,
    NtProductLanManNt = 2,
    NtProductServer = 3
};

enum ALTERNATIVE_ARCHITECTURE_TYPE
{
    StandardDesign = 0,
    NEC98x86 = 1,
    EndAlternatives = 2
};

struct KUSER_SHARED_DATA
{
    uint32                      TickCountLowDeprecated;
    uint32                      TickCountMultiplier;
    KSYSTEM_TIME                InterruptTime;
    KSYSTEM_TIME                SystemTime;
    KSYSTEM_TIME                TimeZoneBias;
    uint16                      ImageNumberLow;
    uint16                      ImageNumberHigh;
    wchar_t                       NtSystemRoot[260];
    uint32                      MaxStackTraceDepth;
    uint32                      CryptoExponent;
    uint32                      TimeZoneId;
    uint32                      LargePageMinimum;
    uint32                      AitSamplingValue;
    uint32                      AppCompatFlag;
    uint64                      RNGSeedVersion;
    uint32                      GlobalValidationRunlevel;
    int32                       TimeZoneBiasStamp;
    uint32                      NtBuildNumber;
    NT_PRODUCT_TYPE             NtProductType;
    bool                        ProductTypeIsValid;
    bool                        Reserved0[1];
    uint16                      NativeProcessorArchitecture;
    uint32                      NtMajorVersion;
    uint32                      NtMinorVersion;
    bool                        ProcessorFeatures[64];
    uint32                      Reserved1;
    uint32                      Reserved3;
    uint32                      TimeSlip;
    ALTERNATIVE_ARCHITECTURE_TYPE AlternativeArchitecture;
    uint32                      BootId;
    uint64                      SystemExpirationDate;
    uint32                      SuiteMask;
    bool                        KdDebuggerEnabled;
    union {
        uint8 MitigationPolicies;
        struct {
            uint8 NXSupportPolicy : 2;
            uint8 SEHValidationPolicy : 2;
            uint8 CurDirDevicesSkippedForDlls : 2;
            uint8 Reserved : 2;
        };
    };
    uint16                      CyclesPerYield;
    uint32                      ActiveConsoleId;
    uint32                      DismountCount;
    uint32                      ComPlusPackage;
    uint32                      LastSystemRITEventTickCount;
    uint32                      NumberOfPhysicalPages;
    bool                        SafeBootMode;
    union {
        uint8 VirtualizationFlags;
        struct {
            uint8 ArchStartedInEl2 : 1;
            uint8 QcSlIsSupported : 1;
        };
    };
    uint8                       Reserved12[2];
    union {
        uint32 SharedDataFlags;
        struct {
            uint32 DbgErrorPortPresent : 1;
            uint32 DbgElevationEnabled : 1;
            uint32 DbgVirtEnabled : 1;
            uint32 DbgInstallerDetectEnabled : 1;
            uint32 DbgLkgEnabled : 1;
            uint32 DbgDynProcessorEnabled : 1;
            uint32 DbgConsoleBrokerEnabled : 1;
            uint32 DbgSecureBootEnabled : 1;
            uint32 DbgMultiSessionSku : 1;
            uint32 DbgMultiUsersInSessionSku : 1;
            uint32 DbgStateSeparationEnabled : 1;
            uint32 SpareBits : 21;
        } DUMMYSTRUCTNAME2;
    } DUMMYUNIONNAME2;
    uint32                      DataFlagsPad[1];
    uint64                      TestRetInstruction;
    int64                       QpcFrequency;
    uint32                      SystemCall;
    uint32                      Reserved2;
    uint64                      SystemCallPad[2];
    union {
        KSYSTEM_TIME TickCount;
        uint64      TickCountQuad;
        struct {
            uint32 ReservedTickCountOverlay[3];
            uint32 TickCountPad[1];
        } DUMMYSTRUCTNAME;
    } DUMMYUNIONNAME3;
    uint32                      Cookie;
    uint32                      CookiePad[1];
    int64                       ConsoleSessionForegroundProcessId;
    uint64                      TimeUpdateLock;
    uint64                      BaselineSystemTimeQpc;
    uint64                      BaselineInterruptTimeQpc;
    uint64                      QpcSystemTimeIncrement;
    uint64                      QpcInterruptTimeIncrement;
    uint8                       QpcSystemTimeIncrementShift;
    uint8                       QpcInterruptTimeIncrementShift;
    uint16                      UnparkedProcessorCount;
    uint32                      EnclaveFeatureMask[4];
    uint32                      TelemetryCoverageRound;
    uint16                      UserModeGlobalLogger[16];
    uint32                      ImageFileExecutionOptions;
    uint32                      LangGenerationCount;
    uint64                      Reserved4;
    uint64                      InterruptTimeBias;
    uint64                      QpcBias;
    uint32                      ActiveProcessorCount;
    uint8                       ActiveGroupCount;
    uint8                       Reserved9;
    union {
        uint16 QpcData;
        struct {
            uint8 QpcBypassEnabled;
            uint8 QpcShift;
        };
    };
    uint64                      TimeZoneBiasEffectiveStart;
    uint64                      TimeZoneBiasEffectiveEnd;
};

// How much to read, since reading all of it would fill Warden's entire buffer
constexpr uint32 SystemRootLength = 25;

static constexpr struct
{
    const char* name;
    uint32 offset;
    uint32 length;
} UserDataFields[] = {
    {"NtSystemRoot", offsetof(KUSER_SHARED_DATA, NtSystemRoot), SystemRootLength * sizeof(wchar_t) },
#define ADD_FIELD(x) { #x, offsetof(KUSER_SHARED_DATA, x), sizeof(KUSER_SHARED_DATA::x) }
    ADD_FIELD(NtBuildNumber),
    ADD_FIELD(NtProductType),
    ADD_FIELD(NtMajorVersion),
    ADD_FIELD(NtMinorVersion)
#undef ADD_FIELD
};

constexpr size_t GetDataFieldSize()
{
    auto constexpr fields = sizeof(UserDataFields) / sizeof(UserDataFields[0]);

    size_t ret = 0;
    for (auto i = 0u; i < fields; ++i)
        ret += UserDataFields[i].length;
    return ret;
}

auto constexpr UserDataFieldSize = GetDataFieldSize();

const ClientOffsets* GetClientOffets(uint32 build)
{
    static auto constexpr offset_count = sizeof(Offsets) / sizeof(Offsets[0]);

    for (auto i = 0; i < offset_count; ++i)
        if (Offsets[i].Build == build)
            return &Offsets[i];

    return nullptr;
}

// returns ScanFlag mask for those builds which we have offsets
ScanFlags GetScanFlagsByAvailableOffsets()
{
    uint32 result = None;

    auto offset_count = sizeof(Offsets) / sizeof(Offsets[0]);

    for (auto i = 0; i < offset_count; ++i)
    {
        switch (Offsets[i].Build)
        {
        case CLIENT_BUILD_1_2_4:
            result |= WinBuild4222;
            break;
        case CLIENT_BUILD_1_3_1:
            result |= WinBuild4297;
            break;
        case CLIENT_BUILD_1_4_2:
            result |= WinBuild4375;
            break;
        case CLIENT_BUILD_1_5_1:
            result |= WinBuild4449;
            break;
        case CLIENT_BUILD_1_6_1:
            result |= WinBuild4544;
            break;
        case CLIENT_BUILD_1_7_1:
            result |= WinBuild4695;
            break;
        case CLIENT_BUILD_1_8_4:
            result |= WinBuild4878;
            break;
        case CLIENT_BUILD_1_9_4:
            result |= WinBuild5086;
            break;
        case CLIENT_BUILD_1_10_2:
            result |= WinBuild5302;
            break;
        case CLIENT_BUILD_1_11_2:
            result |= WinBuild5464;
            break;
        case CLIENT_BUILD_1_12_1:
            result |= WinBuild5875 | WinBuild6005 | WinBuild6141;
            break;
        }
    }

    return static_cast<ScanFlags>(result);
}

std::string ArchitectureString(uint16 arch)
{
    switch (arch)
    {
        case 0:
            return "x86";
        case 5:
            return "ARM";
        case 6:
            return "IA64";
        case 9:
            return "x64";
        case 0xFFFF:
            return "Unknown";
        default:
            return "INVALID";
    }
}

std::string OsInfoString(const wchar_t* systemRoot, NT_PRODUCT_TYPE productType, uint32 majorVersion, uint32 minorVersion, uint32 build)
{
    std::stringstream result;
    std::wstring ws(systemRoot);
    result << "Windows dir: " << std::string(ws.begin(), ws.end());
    result << " Version: " << majorVersion << "." << minorVersion << "." << build;
    result << " Type:";

    if (productType == NtProductWinNt)
        result << "NT";
    else if (productType == NtProductLanManNt)
        result << "LanManNT";
    else if (productType == NtProductServer)
        result << "Server";
    else
        result << "Unknown (" << static_cast<uint32>(productType) << ")";

    return result.str();
}

std::string CPUTypeAndRevision(uint32 cpuType, uint16 revision)
{
    std::stringstream str;

    switch (cpuType)
    {
        case 386:
        {
            str << "i386";

            const uint8 firstByte = revision >> 8;
            const uint8 y = 0xF & (revision >> 4);
            const uint8 z = 0xF & (revision);

            if (firstByte == 0xFF)
                str << " Model: " << static_cast<uint32>(y) << " Stepping: " << z;
            else
                str << " Stepping: " << static_cast<char>('A' + firstByte) << static_cast<uint32>(firstByte & 0xFF);

            break;
        }
        case 486:
        {
            str << "i486";

            const uint8 firstByte = revision >> 8;
            const uint8 y = 0xF & (revision >> 4);
            const uint8 z = 0xF & (revision);

            if (firstByte == 0xFF)
                str << " Model: " << static_cast<uint32>(y) << " Stepping: " << z;
            else
                str << " Stepping: " << static_cast<char>('A' + firstByte) << static_cast<uint32>(firstByte & 0xFF);

            break;
        }
        case 586:
        {
            str << "Pentium (i586)";

            const uint8 model = 0xFF & (revision >> 8);
            const uint8 stepping = 0xFF & (revision);

            str << " Model: " << static_cast<uint32>(model) << " Stepping: " << static_cast<uint32>(stepping);

            break;
        }
        case 2200:
            str << "IA64";
            break;
        case 8664:
            str << "X8664";
            break;
        default:
            str << "ARM/Unknown";
            break;
    }

    return str.str();
}
}

void WardenWin::LoadScriptedScans()
{
    auto offset_flags = GetScanFlagsByAvailableOffsets();

    // sys info locate phase 2
    auto const wardenSysInfo2 = std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);
        auto const offsets = GetClientOffets(wardenWin->_session->GetGameBuild());

        if (!offsets)
            return;

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << wardenWin->_sysInfo.dwOemId + offsets->OfsWardenWinSysInfo
             << static_cast<uint8>(sizeof(wardenWin->_sysInfo));
    },
    // checker
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Failed to read SYSTEM_INFO");

            return true;
        }

        buff.read(reinterpret_cast<uint8 *>(&wardenWin->_sysInfo), sizeof(wardenWin->_sysInfo));

        // for classic, tbc, and wotlk, the architecute should never be anything other than x86 (0)
        if (!!wardenWin->_sysInfo.wProcessorArchitecture)
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Incorrect architecture reported (%u)",
                wardenWin->_sysInfo.wProcessorArchitecture);

            return true;
        }

        // for classic, tbc, and wotlk, the cpu type should never be anything other than i386, i486, or pentium (i586)
        if (wardenWin->_sysInfo.dwProcessorType != 386 &&
            wardenWin->_sysInfo.dwProcessorType != 486 &&
            wardenWin->_sysInfo.dwProcessorType != 586)
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Incorrect processor type: %u",
                wardenWin->_sysInfo.dwProcessorType);

            return true;
        }

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(WIN_SYSTEM_INFO),
        "Sysinfo locate", None);

    // sys info locate phase 1
    auto const wardenSysInfo1 = std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);
        auto const offsets = GetClientOffets(wardenWin->_session->GetGameBuild());

        if (!offsets)
            return;

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << wardenWin->_wardenAddress + offsets->OfsWardenSysInfo
             << static_cast<uint8>(sizeof(wardenWin->_sysInfo.dwOemId));
    },
    // checker
    [wardenSysInfo2](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Failed to read warden->SysInfo");

            return true;
        }

        // borrow this memory temporarily
        wardenWin->_sysInfo.dwOemId = buff.read<uint32>();

        // immediately third second stage
        wardenWin->EnqueueScans({ wardenSysInfo2 });

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(uint32),
        "Intermediate sysinfo locate", None);

    // find warden module
    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);
        auto const offsets = GetClientOffets(wardenWin->_session->GetGameBuild());

        if (!offsets)
            return;

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << offsets->WardenModule
             << static_cast<uint8>(sizeof(wardenWin->_wardenAddress));
    },
    // checker
    [wardenSysInfo1](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Failed to read s_moduleInterface");

            return true;
        }

        wardenWin->_wardenAddress = buff.read<uint32>();

        // immediately enqueue second stage
        wardenWin->EnqueueScans({ wardenSysInfo1 });

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(uint32),
        "Warden locate", InitialLogin|offset_flags));

    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);
        auto const offsets = GetClientOffets(wardenWin->_session->GetGameBuild());

        if (!offsets)
            return;

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << offsets->WorldEnables
             << static_cast<uint8>(sizeof(wardenWin->_wardenAddress));
    },
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Failed to read CWorld::enables");

            return true;
        }

        auto const val = buff.read<uint32>();

        // if any required flags are missing, or prohibited flags are present
        if ((val & Required) != Required || !!(val & Prohibited))
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "CWorld::enables expected 0x%lx prohibited 0x%lx received 0x%lx",
                Required, Prohibited, val);

            return true;
        }

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8),
    sizeof(uint32), "CWorld::enables hack", offset_flags));

    // read game time and last hardware action time together
    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);
        auto const offsets = GetClientOffets(wardenWin->_session->GetGameBuild());

        if (!offsets)
            return;

        // NOTE: the order of these two scans is important because the client will not perform the checks
        // at the same time, and we want to safely assume that the last hardware action time is not
        // greater than the current time

        // last hardware action time
        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << offsets->LastHardwareAction
             << static_cast<uint8>(sizeof(uint32));

        // game time
        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[CHECK_TIMING_VALUES] ^ wardenWin->GetXor());
    },
    // checker
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));
        auto const session = wardenWin->_session;

        if (!!buff.read<uint8>())
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_DEBUG, "Timing check failed to read CSimpleTop::m_eventTime");
            return true;
        }

        auto const lastHardwareAction = buff.read<uint32>();

        auto const timeResult = buff.read<uint8>();
        auto const currentTime = buff.read<uint32>();

        if (!timeResult)
        {
            // the timing check can fail for innocuous reasons like running under wine, within a virtual machine,
            // or in XP compatibility mode.  there are probably other causes too.  therefore let us ignore this
            // failure, since the clock desync check will catch this same case if the clock is moving at an
            // unfair speed.
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_DEBUG, "Timing check failed");
            return false;
        }

        // last hardware action cannot legitimately be past the current time
        if (lastHardwareAction > currentTime)
        {
            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Current time: %u Last hardware action: %u (last hardware action in the future)",
                currentTime, lastHardwareAction);
            return true;
        }

        wardenWin->_lastClientTime = currentTime;
        wardenWin->_lastHardwareActionTime = lastHardwareAction;
        wardenWin->_lastTimeCheckServer = WorldTimer::getMSTime();

        return false;
    }, 11, 10, "Anti-AFK hack", offset_flags));

    // check for hypervisors
    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &strings, ByteBuffer &scan)
    {
        MANGOS_ASSERT(strings.size() + HypervisorCount < 0xFF);

        auto const winWarden = reinterpret_cast<const WardenWin *>(warden);
        auto const opcode = static_cast<uint8>(winWarden->GetModule()->opcodes[FIND_DRIVER_BY_NAME] ^ winWarden->GetXor());

        for (auto i = 0u; i < HypervisorCount; ++i)
        {
            auto const &hypervisor = Hypervisors[i];

            strings.emplace_back(hypervisor.Driver);

            auto const seed = static_cast<uint32>(rand32());

            scan << opcode << seed;

            HMACSHA1 hash(reinterpret_cast<const uint8 *>(&seed), sizeof(seed));
            hash.UpdateData(hypervisor.DeviceName);
            hash.Finalize();

            scan.append(hash.GetDigest(), hash.GetLength());
            scan << static_cast<uint8>(strings.size());
        }
    },
    // checker
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const winWarden = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        winWarden->_hypervisors = "";

        for (auto i = 0u; i < HypervisorCount; ++i)
        {
            auto const found = buff.read<uint8>() == 0x4A;

            if (!found)
                continue;

            winWarden->_hypervisors += Hypervisors[i].Name;
        }

        // always return false because there is nothing necessary wrong with using a hypervisor
        return false;
    },
    // TODO: Replace the magic number below with combined driver string lengths
    (sizeof(uint8) + sizeof(uint32) + SHA_DIGEST_LENGTH + sizeof(uint8)) * HypervisorCount + 21,
    sizeof(uint8) * HypervisorCount,
    "Hypervisor check",
    WinAllBuild|InitialLogin));

    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &strings, ByteBuffer &scan)
    {
        auto const seed = static_cast<uint32>(rand32());

        scan << static_cast<uint8>(warden->GetModule()->opcodes[FIND_CODE_BY_HASH] ^ warden->GetXor())
             << seed;

        static constexpr std::uint8_t pattern[] =
        {
            0x56, 0x57, 0xFC, 0x8B, 0x54, 0x24, 0x14, 0x8B,
            0x74, 0x24, 0x10, 0x8B, 0x44, 0x24, 0x0C, 0x8B,
            0xCA, 0x8B, 0xF8, 0xC1, 0xE9, 0x02, 0x74, 0x02,
            0xF3, 0xA5, 0xB1, 0x03, 0x23, 0xCA, 0x74, 0x02,
            0xF3, 0xA4, 0x5F, 0x5E, 0xC3
        };

        static_assert(sizeof(pattern) <= 0xFF, "pattern length must fit into 8 bits");

        HMACSHA1 hash(reinterpret_cast<const uint8 *>(&seed), sizeof(seed));
        hash.UpdateData(&pattern[0], sizeof(pattern));
        hash.Finalize();

        scan.append(hash.GetDigest(), hash.GetLength());

        scan << warden->GetModule()->memoryRead << static_cast<uint8>(sizeof(pattern));
    },
    // checker
    [] (const Warden *warden, ByteBuffer &buff)
    {
        auto const found = buff.read<uint8>() == WindowsCodeScan::PatternFound;

        // if this is not found, it means someone has tampered with the function
        return !found;
    }, sizeof(uint8) + sizeof(uint32) + SHA_DIGEST_LENGTH + sizeof(uint32) + sizeof(uint8), sizeof(uint8),
    "Warden Memory Read check",
    WinAllBuild));

    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsModuleScan>("prxdrvpe.dll",
    // checker
    Scan::CheckT([](const Warden *warden, ByteBuffer &buff)
    {
        if (buff.read<uint8>() == WindowsModuleScan::ModuleFound)
        {
            auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));
            wardenWin->_proxifierFound = true;

            sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Proxifier found");
        }

        return false;
    }), "Proxifier check", WinAllBuild | InitialLogin));

    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden* warden, std::vector<std::string>& strings, ByteBuffer& scan)
    {
        auto static constexpr fields = sizeof(UserDataFields) / sizeof(UserDataFields[0]);

        for (auto i = 0u; i < fields; ++i)
            scan << static_cast<uint8>(warden->GetModule()->opcodes[READ_MEMORY] ^ warden->GetXor())
                 << static_cast<uint8>(0)
                 << static_cast<uint32>(0x7FFE0000u + UserDataFields[i].offset)
                 << static_cast<uint8>(UserDataFields[i].length);

    },
    [](const Warden* warden, ByteBuffer& buff)
    {
        auto static constexpr fields = sizeof(UserDataFields) / sizeof(UserDataFields[0]);
        auto const wardenWin = const_cast<WardenWin*>(reinterpret_cast<const WardenWin*>(warden));

        for (auto i = 0u; i < fields; ++i)
        {
            // non-zero value indicates failure
            if (!!buff.read<uint8>())
            {
                sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC,
                    "Failed to read KUSER_SHARED_DATA::%s", UserDataFields[i].name);
                return true;
            }

            const std::string field{ UserDataFields[i].name };

            if (field == "NtSystemRoot")
            {
                memset(wardenWin->_systemRoot, 0, sizeof(wardenWin->_systemRoot));
                static_assert(SystemRootLength * sizeof(wchar_t) == sizeof(WardenWin::_systemRoot), "System root length wrong");
                buff.read(reinterpret_cast<uint8*>(wardenWin->_systemRoot), UserDataFields[i].length);
            }
            else if (field == "NtBuildNumber")
                wardenWin->_systemBuild = buff.read<uint32>();
            else if (field == "NtProductType")
                wardenWin->_productType = buff.read<uint32>();
            else if (field == "NtMajorVersion")
                wardenWin->_winMajorVersion = buff.read<uint32>();
            else if (field == "NtMinorVersion")
                wardenWin->_winMinorVersion = buff.read<uint32>();
            else
            {
                buff.rpos(buff.rpos() + UserDataFields[i].length);
                sLog.Player(wardenWin->_session, LOG_ANTICHEAT, "Warden", LOG_LVL_DEBUG, "Unhandled KUSER_SHAREED_DATA value: %s length: %d", field.c_str(), UserDataFields[i].length);
            }
        }

        return false;
    }, 7 * sizeof(UserDataFields) / sizeof(UserDataFields[0]), UserDataFieldSize + sizeof(UserDataFields) / sizeof(UserDataFields[0]),
    "KUSER_SHARED_DATA", WinAllBuild|InitialLogin));
}

void WardenWin::BuildLuaInit(const std::string &module, bool fastcall, uint32 offset, ByteBuffer &out) const
{
    const uint16 len = 1 + 1 + 1 + module.length() + 4 + 1;

    out = ByteBuffer(1 + 2 + 4 + len);

    out << static_cast<uint8>(WARDEN_SMSG_MODULE_INITIALIZE)
        << static_cast<uint16>(len)
        << static_cast<uint32>(0)   // checksum placeholder
        << static_cast<uint8>(4)
        << static_cast<uint8>(0)
        << static_cast<uint8>(module.length());

    // avoid writing null terminator
    out.append(module.c_str(), module.length());

    out << offset
        << static_cast<uint8>(fastcall ? 0 : 1);

    // write checksum
    auto const oldwpos = out.wpos();
    out.wpos(3);
    out << BuildChecksum(out.contents() + 7, len);
    out.wpos(oldwpos);
}

void WardenWin::BuildFileHashInit(const std::string &module, bool asyncparam, uint32 openOffset,
    uint32 sizeOffset, uint32 readOffset, uint32 closeOffset, ByteBuffer &out) const
{
    const uint16 len = 1 + 1 + 1 + 1 + module.length() + 4 + 4 + 4 + 4;

    out = ByteBuffer(1 + 2 + 4 + len);

    out << static_cast<uint8>(WARDEN_SMSG_MODULE_INITIALIZE)
        << static_cast<uint16>(len)
        << static_cast<uint32>(0)   // checksum placeholder
        << static_cast<uint8>(1)
        << static_cast<uint8>(0)
        << static_cast<uint8>(asyncparam ? 2 : 1)
        << static_cast<uint8>(module.length());

    // avoid writing null terminator
    out.append(module.c_str(), module.length());

    out << openOffset
        << sizeOffset
        << readOffset
        << closeOffset;

    // write checksum
    auto const oldwpos = out.wpos();
    out.wpos(3);
    out << BuildChecksum(out.contents() + 7, len);
    out.wpos(oldwpos);
}

void WardenWin::BuildTimingInit(const std::string &module, uint32 offset, bool set, ByteBuffer &out) const
{
    const uint16 len = 1 + 1 + 1 + module.length() + 4 + 1;

    out = ByteBuffer(1 + 2 + 4 + len);

    out << static_cast<uint8>(WARDEN_SMSG_MODULE_INITIALIZE)
        << static_cast<uint16>(len)
        << static_cast<uint32>(0)   // checksum placeholder
        << static_cast<uint8>(1)
        << static_cast<uint8>(1)
        << static_cast<uint8>(module.length());

    // avoid writing null terminator
    out.append(module.c_str(), module.length());

    out << offset << static_cast<uint8>(set ? 1 : 0);

    // write checksum
    auto const oldwpos = out.wpos();
    out.wpos(3);
    out << BuildChecksum(out.contents() + 7, len);
    out.wpos(oldwpos);
}

WardenWin::WardenWin(WorldSession *session, const BigNumber &K) :
    _wardenAddress(0), Warden(session, sWardenModuleMgr.GetWindowsModule(), K),
    _lastClientTime(0), _lastHardwareActionTime(0), _lastTimeCheckServer(0), _sysInfoSaved(false),
    _proxifierFound(false), _hypervisors(""), _systemRoot(L""), _systemBuild(0), _productType(0),
    _winMajorVersion(0), _winMinorVersion(0)
{
    memset(&_sysInfo, 0, sizeof(_sysInfo));
}

uint32 WardenWin::GetScanFlags() const
{
    auto const game_build = _session->GetGameBuild();

    constexpr int accepted_versions[] = EXPECTED_MANGOSD_CLIENT_BUILD;
    // for some reason these arrays are null terminated
    auto constexpr num_accepted_versions = (sizeof(accepted_versions) / sizeof(accepted_versions[0])) - 1;

    bool found = false;
    for (auto i = 0; i < num_accepted_versions; ++i)
    {
        if (accepted_versions[i] == game_build)
        {
            found = true;
            break;
        }
    }

    if (!found)
    {
        sLog.Player(_session, LOG_ANTICHEAT, "Warden", LOG_LVL_BASIC, "Invalid client build %u.  Kicking.", _session->GetGameBuild());
        _session->KickPlayer();
        return ScanFlags::None;
    }

    // at this point we know the game build is accepted

    switch (_session->GetGameBuild())
    {
        case 4222:
            return ScanFlags::WinBuild4222;
        case 4297:
            return ScanFlags::WinBuild4297;
        case 4375:
            return ScanFlags::WinBuild4375;
        case 4499:
            return ScanFlags::WinBuild4449;
        case 4544:
            return ScanFlags::WinBuild4544;
        case 4695:
            return ScanFlags::WinBuild4695;
        case 4878:
            return ScanFlags::WinBuild4878;
        case 5086:
            return ScanFlags::WinBuild5086;
        case 5302:
            return ScanFlags::WinBuild5302;
        case 5464:
            return ScanFlags::WinBuild5464;
        case 5875:
            return ScanFlags::WinBuild5875;
        case 6005:
            return ScanFlags::WinBuild6005;
        case 6141:
            return ScanFlags::WinBuild6141;
    }

    return ScanFlags::None;
}

void WardenWin::InitializeClient()
{
    if (auto const offsets = GetClientOffets(_session->GetGameBuild()))
    {
        // initialize lua
        ByteBuffer lua;
        BuildLuaInit("", true, offsets->GetText, lua);

        // initialize SFile*
        ByteBuffer file;
        BuildFileHashInit("", true, offsets->Open, offsets->Size, offsets->Read, offsets->Close, file);

        // initialize timing check
        ByteBuffer timing;
        BuildTimingInit("", offsets->TickCount, true, timing);

        ByteBuffer pkt(lua.wpos() + file.wpos() + timing.wpos());

        pkt.append(lua);
        pkt.append(file);
        pkt.append(timing);

        SendPacket(pkt);
    }

    _initialized = true;
}

void WardenWin::Update()
{
    Warden::Update();

    if (!_initialized)
        return;

    // 'lpMaximumApplicationAddress' should never be zero if the structure has been read
    if (!_sysInfoSaved && !!_sysInfo.lpMaximumApplicationAddress)
    {
        auto activeProcCount = 0;
        for (auto i = 0; i < 8 * sizeof(_sysInfo.dwActiveProcessorMask); ++i)
            if (!!(_sysInfo.dwActiveProcessorMask & (1 << i)))
                ++activeProcCount;

        LogsDatabase.BeginTransaction();

        static SqlStatementID fingerprintUpdate;

        auto stmt = LogsDatabase.CreateStatement(fingerprintUpdate,
            "INSERT INTO `system_fingerprint_usage` (`fingerprint`, `account`, `ip`, `realm`, `architecture`, `cputype`, `os_info`, `activecpus`, `totalcpus`, `pagesize`) "
            "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

        stmt.addUInt32(_session->GetFingerprint());
        stmt.addUInt32(_session->GetAccountId());
        stmt.addString(_session->GetRemoteAddress());
        stmt.addUInt32(realmID);
        stmt.addString(ArchitectureString(_sysInfo.wProcessorArchitecture));
        stmt.addString(CPUTypeAndRevision(_sysInfo.dwProcessorType, _sysInfo.wProcessorRevision));
        stmt.addString(OsInfoString(_systemRoot, static_cast<NT_PRODUCT_TYPE>(_productType), _winMajorVersion, _winMinorVersion, _systemBuild));
        stmt.addUInt32(activeProcCount);
        stmt.addUInt32(_sysInfo.dwNumberOfProcessors);
        stmt.addUInt32(_sysInfo.dwPageSize);
        stmt.Execute();

        LogsDatabase.CommitTransaction();

        _session->CleanupFingerprintHistory();

        _sysInfoSaved = true;

        // at this point if we have the character enum packet, it is okay to send
        if (!_charEnum.empty())
        {
            _session->SendPacket(&_charEnum);
            _charEnum.clear();
        }
    }
}

void WardenWin::SetCharEnumPacket(WorldPacket &&packet)
{
    // if we have already recorded system information, send the packet immediately.  otherwise delay
    if (_sysInfoSaved)
        _session->SendPacket(&packet);
    else
        _charEnum = std::move(packet);
}

void WardenWin::GetPlayerInfo(std::string& clock, std::string& fingerprint, std::string& hypervisors,
    std::string& proxifier) const
{
    if (!!_lastTimeCheckServer)
    {
        std::stringstream s;
        s << "Last hardware action: " << _lastHardwareActionTime
            << " client time: " << _lastClientTime
            << " idle time: " << (_lastClientTime - _lastHardwareActionTime) / 1000
            << " seconds info age: " << WorldTimer::getMSTimeDiffToNow(_lastTimeCheckServer) / 1000
            << " seconds";
        clock = s.str();
    }

    // 'lpMaximumApplicationAddress' should never be zero if the structure has been read
    if (!!_sysInfo.lpMaximumApplicationAddress)
    {
        std::stringstream s;

        s << "Architecture: " << ArchitectureString(_sysInfo.wProcessorArchitecture)
            << " CPU Type: " << CPUTypeAndRevision(_sysInfo.dwProcessorType, _sysInfo.wProcessorRevision)
            << " Page Size: 0x" << std::hex << std::uppercase << _sysInfo.dwPageSize << std::dec;

        auto activeProcCount = 0;
        for (auto i = 0; i < 8*sizeof(_sysInfo.dwActiveProcessorMask); ++i)
            if (!!(_sysInfo.dwActiveProcessorMask & (1 << i)))
                ++activeProcCount;

        s << " Active CPUs: " << activeProcCount;
        s << " Total CPUs: " << _sysInfo.dwNumberOfProcessors;

        s << OsInfoString(_systemRoot, static_cast<NT_PRODUCT_TYPE>(_productType), _winMajorVersion,
            _winMinorVersion, _systemBuild);

        fingerprint = s.str();
    }

    if (_hypervisors.length() > 0)
        hypervisors = "Hypervisor(s) found: " + _hypervisors;

    if (_proxifierFound)
        proxifier = "Proxifier is running";
}
