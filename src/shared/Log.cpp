/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
 *
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

#include "Common.h"
#include "Log.h"
#include "Policies/SingletonImp.h"
#include "Config/Config.h"
#include "Util.h"
#include "ByteBuffer.h"
#include "ProgressBar.h"

#include <stdarg.h>
#include <fstream>
#include <iostream>

#include "ace/OS_NS_unistd.h"

INSTANTIATE_SINGLETON_1(Log);

static constexpr Color logColors[] = {
    RED,    // error
    RESET,  // minimal
    RESET,  // basic
    YELLOW, // detail
    BLUE    // debug
};

namespace
{
uint16 GetConsoleColor()
{
#if PLATFORM == PLATFORM_WINDOWS
    // Capture initial text color for using as a default
    CONSOLE_SCREEN_BUFFER_INFO info;
    if (!GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &info))
    {
        // default to white on error
        return FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED;
    }

    return info.wAttributes & 0xF;
#else
    return 0;
#endif
}
}

Log::Log() :
    m_includeTime(false), m_logsTimestamp(GetTimestampStr()), m_defaultColor(GetConsoleColor())
{
    for (int i = 0; i < LOG_TYPE_MAX; ++i)
    {
        logFiles[i] = nullptr;
    }

    /// Common log files data
    m_logsDir = sConfig.GetStringDefault("LogsDir", "");
    if (!m_logsDir.empty())
    {
        if ((m_logsDir.at(m_logsDir.length() - 1) != '/') && (m_logsDir.at(m_logsDir.length() - 1) != '\\'))
            m_logsDir.append("/");
    }

    auto const log_file_timestamp = sConfig.GetBoolDefault("LogFile.TimeStamp", false);

    /// Open specific log files

    // GM log settings for per account case
    m_gmlog_filename_format = sConfig.GetStringDefault("GMLogFile", "");
    if (!m_gmlog_filename_format.empty())
    {
        bool m_gmlog_timestamp = sConfig.GetBoolDefault("GmLogTimestamp", false);

        size_t dot_pos = m_gmlog_filename_format.find_last_of('.');
        if (dot_pos != m_gmlog_filename_format.npos)
        {
            if (m_gmlog_timestamp)
                m_gmlog_filename_format.insert(dot_pos, m_logsTimestamp);

            m_gmlog_filename_format.insert(dot_pos, "_#%u");
        }
        else
        {
            m_gmlog_filename_format += "_#%u";

            if (m_gmlog_timestamp)
                m_gmlog_filename_format += m_logsTimestamp;
        }

        m_gmlog_filename_format = m_logsDir + m_gmlog_filename_format;
    }

    logFiles[LOG_BASIC] = openLogFile("LogFile.Basic", "Server.log", log_file_timestamp);
    logFiles[LOG_WORLDPACKET] = openLogFile("LogFile.World", "world_packets.log", log_file_timestamp);
    logFiles[LOG_CHAT] = openLogFile("LogFile.Chat", "Chat.log", log_file_timestamp);
    logFiles[LOG_BG] = openLogFile("BgLogFile", "Bg.log", log_file_timestamp);
    logFiles[LOG_CHAR] = openLogFile("LogFile.Char", "Char.log", log_file_timestamp);
    logFiles[LOG_HONOR] = openLogFile("LogFile.Honor", "", log_file_timestamp);
    logFiles[LOG_RA] = openLogFile("LogFile.Ra", "Ra.log", log_file_timestamp);
    logFiles[LOG_DBERROR] = openLogFile("LogFile.DBError", "DBErrors.log", log_file_timestamp);
    logFiles[LOG_DBERRFIX] = openLogFile("LogFile.DBErrorFix", "DBErrorFixes.sql", log_file_timestamp);
    logFiles[LOG_LOOTS] = openLogFile("LootsLogFile", "Loot.log", log_file_timestamp);
    logFiles[LOG_LEVELUP] = openLogFile("LevelupLogFile", "LevelUp.log", log_file_timestamp);
    logFiles[LOG_PERFORMANCE] = openLogFile("LogFile.Performance", "Perf.log", log_file_timestamp);
    logFiles[LOG_GM] = sConfig.GetBoolDefault("GmLogPerAccount", false) ?
        openLogFile("LogFile.Gm", "", log_file_timestamp) : nullptr;
    logFiles[LOG_MONEY_TRADES] = openLogFile("LogFile.Trades", "", log_file_timestamp);
    logFiles[LOG_GM_CRITICAL] = openLogFile("LogFile.CriticalCommands", "gm_critical.log", log_file_timestamp);
    logFiles[LOG_ANTICHEAT] = openLogFile("LogFile.Anticheat", "Anticheat.log", log_file_timestamp);

    // Main log file settings
    m_includeTime = sConfig.GetBoolDefault("LogTime", false);
    m_consoleLevel = LogLevel(sConfig.GetIntDefault("LogLevel.Console", 2));
    m_fileLevel = LogLevel(sConfig.GetIntDefault("LogLevel.File", 2));
    m_dbLevel = LogLevel(sConfig.GetIntDefault("LogLevel.DB", 2));


    // Smartlog data
    InitSmartlogEntries(sConfig.GetStringDefault("Smartlog.ExtraEntries", ""));
    InitSmartlogGuids(sConfig.GetStringDefault("Smartlog.ExtraGuids", ""));

    m_logFilter = 0;
    for (int i = 0; i < LOG_FILTER_COUNT; ++i)
        if (*logFilterData[i].name)
            if (sConfig.GetBoolDefault(logFilterData[i].configName, logFilterData[i].defaultState))
                m_logFilter |= (1 << i);

    // Char log settings
    m_charLog_Dump = sConfig.GetBoolDefault("CharLogDump", false);
}

void Log::InitSmartlogEntries(std::string const& str)
{
    m_smartlogExtraEntries.clear();

    if (str.empty())
        return;

    uint32 entry;
    std::istringstream ss(str);

    while (ss)
    {
        ss >> entry;
        m_smartlogExtraEntries.insert(entry);
    }
}

void Log::InitSmartlogGuids(std::string const& str)
{
    m_smartlogExtraGuids.clear();

    if (str.empty())
        return;

    uint32 entry;
    std::istringstream ss(str);

    while (ss)
    {
        ss >> entry;
        m_smartlogExtraGuids.insert(entry);
    }
}

void Log::SetColor(FILE* where, Color color) const
{
    if (color == RESET)
    {
        ResetColor(where);
        return;
    }

#if PLATFORM == PLATFORM_WINDOWS

    static constexpr WORD WinColorFG[] =
    {
        0,                                                  // RESET, unused
        0,                                                  // BLACK
        FOREGROUND_RED,                                     // RED
        FOREGROUND_GREEN,                                   // GREEN
        FOREGROUND_RED | FOREGROUND_GREEN,                  // BROWN
        FOREGROUND_BLUE,                                    // BLUE
        FOREGROUND_RED | FOREGROUND_BLUE,// MAGENTA
        FOREGROUND_GREEN | FOREGROUND_BLUE,                 // CYAN
        FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_BLUE,// WHITE
                                                            // YELLOW
        FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_INTENSITY,
        // RED_BOLD
        FOREGROUND_RED | FOREGROUND_INTENSITY,
        // GREEN_BOLD
        FOREGROUND_GREEN | FOREGROUND_INTENSITY,
        FOREGROUND_BLUE | FOREGROUND_INTENSITY,             // BLUE_BOLD
                                                            // MAGENTA_BOLD
        FOREGROUND_RED | FOREGROUND_BLUE | FOREGROUND_INTENSITY,
        // CYAN_BOLD
        FOREGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_INTENSITY,
        // WHITE_BOLD
        FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_INTENSITY
    };

    static_assert(sizeof(WinColorFG) / sizeof(WinColorFG[0]) == COLOR_COUNT,
        "WinColorFG size must match COLOR_COUNT");

    HANDLE hConsole = GetStdHandle(where == stdout ? STD_OUTPUT_HANDLE : STD_ERROR_HANDLE);
    SetConsoleTextAttribute(hConsole, WinColorFG[color]);
#else

    enum ANSITextAttr
    {
        TA_NORMAL = 0,
        TA_BOLD = 1,
        TA_BLINK = 5,
        TA_REVERSE = 7
    };

    enum ANSIFgTextAttr
    {
        FG_BLACK = 30, FG_RED, FG_GREEN, FG_BROWN, FG_BLUE,
        FG_MAGENTA, FG_CYAN, FG_WHITE, FG_YELLOW
    };

    enum ANSIBgTextAttr
    {
        BG_BLACK = 40, BG_RED, BG_GREEN, BG_BROWN, BG_BLUE,
        BG_MAGENTA, BG_CYAN, BG_WHITE
    };

    static uint8 UnixColorFG[COLOR_COUNT] =
    {
        FG_BLACK,                                           // BLACK
        FG_RED,                                             // RED
        FG_GREEN,                                           // GREEN
        FG_BROWN,                                           // BROWN
        FG_BLUE,                                            // BLUE
        FG_MAGENTA,                                         // MAGENTA
        FG_CYAN,                                            // CYAN
        FG_WHITE,                                           // WHITE
        FG_YELLOW,                                          // YELLOW
        FG_RED,                                             // LRED
        FG_GREEN,                                           // LGREEN
        FG_BLUE,                                            // LBLUE
        FG_MAGENTA,                                         // LMAGENTA
        FG_CYAN,                                            // LCYAN
        FG_WHITE                                            // LWHITE
    };

    fprintf(where, "\x1b[%d%sm", UnixColorFG[color], (color >= YELLOW && color < COLOR_COUNT ? ";1" : ""));
#endif
}

void Log::ResetColor(FILE* where) const
{
#if PLATFORM == PLATFORM_WINDOWS
    HANDLE hConsole = GetStdHandle(where == stdout ? STD_OUTPUT_HANDLE : STD_ERROR_HANDLE);
    SetConsoleTextAttribute(hConsole, m_defaultColor);
#else
    fprintf(where, "\x1b[%dm", m_defaultColor);
#endif
}

void Log::SetConsoleLevel(LogLevel level)
{
    if (level < LOG_LVL_ERROR)
        level = LOG_LVL_ERROR;
    else if (level > LOG_LVL_DEBUG)
        level = LOG_LVL_DEBUG;

    m_consoleLevel = level;

    printf("Console log level set to %u\n", m_consoleLevel);
}

void Log::SetFileLevel(LogLevel level)
{
    int32 newLevel = atoi((char*)level);

    if (newLevel < LOG_LVL_ERROR)
        newLevel = LOG_LVL_ERROR;
    else if (newLevel > LOG_LVL_DEBUG)
        newLevel = LOG_LVL_DEBUG;

    m_fileLevel = LogLevel(newLevel);

    printf("File log level set to %u\n", m_fileLevel);
}

FILE* Log::openLogFile(char const* configFileName, char const* defaultFileName, bool timestampFile) const
{
    std::string logfn = sConfig.GetStringDefault(configFileName, defaultFileName);
    if (logfn.empty())
        return nullptr;

    char const* mode;
    if (timestampFile)
    {
        mode = "w";
        size_t dot_pos = logfn.find_last_of('.');
        if (dot_pos != logfn.npos)
            logfn.insert(dot_pos, m_logsTimestamp);
        else
            logfn += m_logsTimestamp;
    }
    else
        mode = "a";

    return fopen((m_logsDir + logfn).c_str(), mode);
}

FILE* Log::openGmlogPerAccount(uint32 account) const
{
    if (m_gmlog_filename_format.empty())
        return nullptr;

    char namebuf[MANGOS_PATH_MAX];
    snprintf(namebuf, MANGOS_PATH_MAX, m_gmlog_filename_format.c_str(), account);
    return fopen(namebuf, "a");
}

void Log::outTimestamp(FILE* file)
{
    time_t t = time(nullptr);
    tm* aTm = localtime(&t);
    //       YYYY   year
    //       MM     month (2 digits 01-12)
    //       DD     day (2 digits 01-31)
    //       HH     hour (2 digits 00-23)
    //       MM     minutes (2 digits 00-59)
    //       SS     seconds (2 digits 00-59)
    fprintf(file, "%-4d-%02d-%02d %02d:%02d:%02d ", aTm->tm_year + 1900, aTm->tm_mon + 1, aTm->tm_mday, aTm->tm_hour, aTm->tm_min, aTm->tm_sec);
}

void Log::outTime(FILE* where)
{
    time_t t = time(nullptr);
    tm* aTm = localtime(&t);
    //       YYYY   year
    //       MM     month (2 digits 01-12)
    //       DD     day (2 digits 01-31)
    //       HH     hour (2 digits 00-23)
    //       MM     minutes (2 digits 00-59)
    //       SS     seconds (2 digits 00-59)
    fprintf(where, "%02d:%02d:%02d ", aTm->tm_hour, aTm->tm_min, aTm->tm_sec);
}

std::string Log::GetTimestampStr()
{
    time_t t = time(nullptr);
    tm* aTm = localtime(&t);
    //       YYYY   year
    //       MM     month (2 digits 01-12)
    //       DD     day (2 digits 01-31)
    //       HH     hour (2 digits 00-23)
    //       MM     minutes (2 digits 00-59)
    //       SS     seconds (2 digits 00-59)
    char buf[20];
    snprintf(buf, 20, "_%04d-%02d-%02d_%02d-%02d-%02d", aTm->tm_year + 1900, aTm->tm_mon + 1, aTm->tm_mday, aTm->tm_hour, aTm->tm_min, aTm->tm_sec);
    return std::string(buf);
}

// the actual logging function.  nothing else should write log messages, except this
void Log::Out(LogType logType, LogLevel logLevel, char const* str, ...)
{
    ASSERT(logType >= 0 && logType < LOG_TYPE_MAX&& logLevel >= 0 && logLevel <= LOG_LVL_DEBUG);

    if (!str)
        return;

    // neither console nor file gets this?  we're done
    if (m_consoleLevel < logLevel && !(logFiles[logType] && m_fileLevel >= logLevel))
        return;

    // make buffer
    char buff[4096];
    va_list ap;
    va_start(ap, str);
    vsnprintf(buff, sizeof(buff), str, ap);
    va_end(ap);

    // LOG_PERFORMANCE and LOG_DBERRFIX should never be logged to the console
    if (logType != LOG_PERFORMANCE && logType != LOG_DBERRFIX && m_consoleLevel >= logLevel)
    {
        auto const where = logLevel == LOG_LVL_ERROR ? stderr : stdout;

        SetColor(where, logColors[logLevel]);

        if (m_includeTime)
            outTime(where);

        if (logLevel == LOG_LVL_ERROR)
            fprintf(where, "ERROR: ");

        utf8printf(stdout, buff);

        ResetColor(where);

        fprintf(where, "\n");
        fflush(where);
    }

    if (logFiles[logType] && m_fileLevel >= logLevel)
    {
        // LOG_DBERRFIX should not get timestamp, but all others should
        if (logType != LOG_DBERRFIX)
        {
            outTimestamp(logFiles[logType]);

            if (logLevel == LOG_LVL_ERROR)
                fputs("ERROR: ", logFiles[logType]);
        }

        fputs(buff, logFiles[logType]);
        fputs("\n", logFiles[logType]);
        fflush(logFiles[logType]);
    }
}

void Log::outWorldPacketDump(ACE_HANDLE socketHandle, uint32 opcode,
    char const* opcodeName, ByteBuffer const* packet,
    bool incoming)
{
    if (!logFiles[LOG_WORLDPACKET])
        return;

    outTimestamp(logFiles[LOG_WORLDPACKET]);

    fprintf(logFiles[LOG_WORLDPACKET],
        "\n%s:\nSOCKET: %p\nLENGTH: %zu\nOPCODE: %s (0x%.4X)\nDATA:\n",
        incoming ? "CLIENT" : "SERVER", socketHandle, packet->size(),
        opcodeName, opcode);

    size_t p = 0;
    while (p < packet->size())
    {
        for (size_t j = 0; j < 16 && p < packet->size(); ++j)
            fprintf(logFiles[LOG_WORLDPACKET], "%.2X ", (*packet)[p++]);

        fprintf(logFiles[LOG_WORLDPACKET], "\n");
    }

    fprintf(logFiles[LOG_WORLDPACKET], "\n\n");
    fflush(logFiles[LOG_WORLDPACKET]);
}

bool Log::IsSmartLog(uint32 entry, uint32 guid) const
{
    return m_smartlogExtraEntries.find(entry) != m_smartlogExtraEntries.end() ||
        m_smartlogExtraGuids.find(guid) != m_smartlogExtraGuids.end();
}

void Log::WaitBeforeContinueIfNeed()
{
    int mode = sConfig.GetIntDefault("WaitAtStartupError", 0);

    if (mode < 0)
    {
        printf("\nPress <Enter> for continue\n");

        std::string line;
        std::getline(std::cin, line);
    }
    else if (mode > 0)
    {
        printf("\nWait %d secs for continue.\n", mode);
        BarGoLink bar(mode);
        for (int i = 0; i < mode; ++i)
        {
            bar.step();
            ACE_OS::sleep(1);
        }
    }
}
