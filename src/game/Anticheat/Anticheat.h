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

#ifndef ANTICHEAT_H
#define ANTICHEAT_H

#include "Common.h"
#include "AbstractPlayer.h"
#include "UnitDefines.h"

enum WardenActions
{
    WARDEN_ACTION_LOG,
    WARDEN_ACTION_KICK,
    WARDEN_ACTION_BAN,
    WARDEN_ACTION_MAX
};

enum CheatAction
{
    CHEAT_ACTION_NONE             = 0x00,
    CHEAT_ACTION_LOG              = 0x01,
    CHEAT_ACTION_REPORT_GMS       = 0x02,
    CHEAT_ACTION_GLOBAL_ANNOUNNCE = 0x04,
    CHEAT_ACTION_KICK             = 0x08,
    CHEAT_ACTION_BAN_ACCOUNT      = 0x10,
    CHEAT_ACTION_BAN_IP_ACCOUNT   = 0x20,
    CHEAT_MAX_ACTIONS,
};

class Unit;
class Player;
class MovementInfo;
class BigNumber;
class WorldPacket;
class WorldSession;
class ChatHandler;
class Warden;
class MovementAnticheat;
class AccountPersistentData;
struct AreaEntry;

#ifdef USE_ANTICHEAT
#include "WardenAnticheat/Warden.hpp"
#include "MovementAnticheat/MovementAnticheat.h"
#include "Antispam/Antispam.hpp"
#include "Antispam/AntispamMgr.hpp"

using Antispam = NamreebAnticheat::Antispam;
#else
class Antispam
{
private:
    const uint32 _account;
public:
    Antispam(uint32 account) : _account(account) {}

    uint32 GetBlacklistCount() const { return 0; }
    uint32 GetAccount() const { return _account; }
    std::string GetInfo() const { return ""; }

    void Whisper(const std::string& msg, const ObjectGuid& to) {}
    void Say(const std::string& msg) {}
    void Yell(const std::string& msg) {}
    void Channel(const std::string& msg) {}
    void Mail(const std::string& subject, const std::string& body, const ObjectGuid& to) {}

    void Analyze() {}

};

class Warden
{
public:
    Warden() = default;
    ~Warden() = default;
    void HandlePacket(WorldPacket&) {}
    virtual void Update() {}
    virtual void GetPlayerInfo(std::string&, std::string&, std::string&, std::string&, std::string&) const {}
};

class MovementAnticheat
{
public:
    MovementAnticheat() = default;
    ~MovementAnticheat() = default;

    void Init() {}
    void InitNewPlayer(Player* pPlayer) {}
    void ResetJumpCounters() {}

    bool IsInKnockBack() const { return false; }

    uint32 Update(Player* pPlayer, uint32 diff, std::stringstream& reason) { return CHEAT_ACTION_NONE; }
    uint32 Finalize(Player* pPlayer, std::stringstream& reason) { return CHEAT_ACTION_NONE; }
    void AddCheats(uint32 cheats, uint32 count = 1) {}
    void HandleCommand(ChatHandler* handler) const {}
    void OnKnockBack(Player* pPlayer, float speedxy, float speedz, float cos, float sin) {}

    void OnUnreachable(Unit* attacker) {}
    void OnExplore(AreaEntry const* pArea) {}
    void OnWrongAckData() {};
    void OnFailedToAckChange() {};
    void OnDeath() {};

    /*
    pPlayer - player who is being moved (not necessarily same as this session's player)
    movementInfo - new movement info that was just received
    opcode - the packet we are checking
    */
    uint32 HandlePositionTests(Player* /*pPlayer*/, MovementInfo& /*movementInfo*/, uint16 /*opcode*/) { return 0; }
    uint32 HandleFlagTests(Player* /*pPlayer*/, MovementInfo& /*movementInfo*/, uint16 /*opcode*/) { return 0; }
    bool HandleSplineDone(Player* /*pPlayer*/, MovementInfo const& /*movementInfo*/, uint32 /*splineId*/) { return true; }
    void LogMovementPacket(bool /*isClientPacket*/, WorldPacket& /*packet*/) {}
};
#endif

class AnticheatManager
{
public:
#ifdef USE_ANTICHEAT
    void LoadAnticheatData();

    Warden * CreateWardenFor(WorldSession* client, BigNumber* K);
    MovementAnticheat* CreateAnticheatFor(Player* player);
#else
    void LoadAnticheatData() {}

    Warden* CreateWardenFor(WorldSession* client, BigNumber* K)
    {
        return new Warden();
    }
    MovementAnticheat* CreateAnticheatFor(Player* player)
    {
        return new MovementAnticheat();
    }
#endif

    static AnticheatManager* instance();
};

AnticheatManager* GetAnticheatLib();

#define sAnticheatMgr (GetAnticheatLib())

#endif // ANTICHEAT_H