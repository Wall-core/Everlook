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

#ifndef __BATTLEGROUND_H
#define __BATTLEGROUND_H

#include "Common.h"
#include "SharedDefines.h"
#include "Map.h"
#include "ByteBuffer.h"
#include "ObjectGuid.h"

// magic event-numbers
#define BG_EVENT_NONE 255
// those generic events should get a high event id
#define BG_EVENT_DOOR 254


class Creature;
class GameObject;
class Group;
class Player;
class WorldPacket;
class BattleGroundMap;
class ChatHandler;
class SpellInfo;

struct WorldSafeLocsEntry;

struct BattleGroundEventIdx
{
    uint8 event1;
    uint8 event2;
};

enum BattleGroundSounds
{
    SOUND_HORDE_WINS                = 8454,
    SOUND_ALLIANCE_WINS             = 8455,
    SOUND_BG_START                  = 3439
};

enum BattleGroundQuests
{
//    SPELL_WS_QUEST_REWARD           = 43483,
//    SPELL_AB_QUEST_REWARD           = 43484,
//    SPELL_AV_QUEST_REWARD           = 43475,
    SPELL_AV_QUEST_KILLED_BOSS      = 23658,
    SPELL_AB_QUEST_REWARD_4_BASES   = 24061,
    SPELL_AB_QUEST_REWARD_5_BASES   = 24064
};

enum BattleGroundMarks
{
    SPELL_WS_ALLY_WINNER            = 23661,
    SPELL_WS_HORDE_WINNER           = 23702,
    SPELL_AB_OLD_WINNER             = 24017,
    SPELL_WS_OLD_LOSER              = 24637,
    SPELL_WS_MARK_LOSER             = 24950,
    SPELL_WS_MARK_WINNER            = 24951,
    SPELL_AB_MARK_LOSER             = 24952,
    SPELL_AB_MARK_WINNER            = 24953,
    SPELL_AV_MARK_LOSER             = 24954,
    SPELL_AV_MARK_WINNER            = 24955,
};

enum BattleGroundTimeIntervals
{
    RESURRECTION_INTERVAL           = 30000,                // ms
    REMIND_INTERVAL                 = 30000,                // ms
    INVITATION_REMIND_TIME          = 60000,                // ms
    INVITE_ACCEPT_WAIT_TIME         = 80000,                // ms
    TIME_TO_AUTOREMOVE              = 120000,               // ms
    MAX_OFFLINE_TIME                = 30,                   // secs
    RESPAWN_ONE_DAY                 = 86400,                // secs
    RESPAWN_IMMEDIATELY             = 0,                    // secs
    BUFF_RESPAWN_TIME               = 180,                  // secs
    RESPAWN_FOUR_DAYS               = 345600,               // secs
    DESPAWN_IMMEDIATELY             = 345601,               // secs
    RESPAWN_2MINUTES                = 120
};

enum BattleGroundStartTimeIntervals
{
    BG_START_DELAY_2M               = 120000,               // ms (2 minutes)
    BG_START_DELAY_1M               = 60000,                // ms (1 minute)
    BG_START_DELAY_30S              = 30000,                // ms (30 seconds)
    BG_START_DELAY_NONE             = 0,                    // ms
};

enum BattleGroundBuffObjects
{
    BG_OBJECTID_SPEEDBUFF_ENTRY     = 179871,
    BG_OBJECTID_REGENBUFF_ENTRY     = 179904,
    BG_OBJECTID_BERSERKERBUFF_ENTRY = 179905
};

uint32 const g_buffEntries[3] = { BG_OBJECTID_SPEEDBUFF_ENTRY, BG_OBJECTID_REGENBUFF_ENTRY, BG_OBJECTID_BERSERKERBUFF_ENTRY };

enum BattleGroundStatus
{
    STATUS_NONE         = 0,                                // first status, should mean bg is not instance
    STATUS_WAIT_QUEUE   = 1,                                // means bg is empty and waiting for queue
    STATUS_WAIT_JOIN    = 2,                                // this means, that BG has already started and it is waiting for more players
    STATUS_IN_PROGRESS  = 3,                                // means bg is running
    STATUS_WAIT_LEAVE   = 4                                 // means some faction has won BG and it is ending
};

struct BattleGroundPlayer
{
    Team    playerTeam;                                     // Player's team
};

// handle the queue types and bg types separately to enable joining queue for different sized arenas at the same time
enum BattleGroundQueueTypeId
{
    BATTLEGROUND_QUEUE_NONE     = 0,
    BATTLEGROUND_QUEUE_AV       = 1,
    BATTLEGROUND_QUEUE_WS       = 2,
    BATTLEGROUND_QUEUE_AB       = 3,
};
#define MAX_BATTLEGROUND_QUEUE_TYPES 4

enum BattleGroundBracketId                                  // bracketId for level ranges
{
    BG_BRACKET_ID_NONE           = -1,
    BG_BRACKET_ID_FIRST          = 0,                       // brackets start from specific BG min level and each include 10 levels range
    BG_BRACKET_ID_LAST           = 5,                       // so for start level 10 will be 10-19, 20-29, ...  all greater max bg level included in last bracket

    MAX_BATTLEGROUND_BRACKETS    = 6                        // used as one from values, so in enum
};

enum ScoreType
{
    SCORE_KILLING_BLOWS         = 1,
    SCORE_DEATHS                = 2,
    SCORE_HONORABLE_KILLS       = 3,
    SCORE_BONUS_HONOR           = 4,
    //WS
    SCORE_FLAG_CAPTURES         = 7,
    SCORE_FLAG_RETURNS          = 8,
    //AB
    SCORE_BASES_ASSAULTED       = 9,
    SCORE_BASES_DEFENDED        = 10,
    //AV
    SCORE_GRAVEYARDS_ASSAULTED  = 11,
    SCORE_GRAVEYARDS_DEFENDED   = 12,
    SCORE_TOWERS_ASSAULTED      = 13,
    SCORE_TOWERS_DEFENDED       = 14,
    SCORE_SECONDARY_OBJECTIVES  = 15
};

enum BattleGroundWinner
{
    WINNER_HORDE            = 0,
    WINNER_ALLIANCE         = 1,
    WINNER_NONE             = 2
};

enum BattleGroundTeamIndex
{
    BG_TEAM_ALLIANCE        = 0,
    BG_TEAM_HORDE           = 1
};

#define BG_TEAMS_COUNT  2

enum BattleGroundStartingEvents
{
    BG_STARTING_EVENT_NONE  = 0x00,
    BG_STARTING_EVENT_1     = 0x01,
    BG_STARTING_EVENT_2     = 0x02,
    BG_STARTING_EVENT_3     = 0x04,
    BG_STARTING_EVENT_4     = 0x08,
    BG_DOORS_DESPAWNED      = 0x10,
};

enum BattleGroundStartingEventsIds
{
    BG_STARTING_EVENT_FIRST     = 0,
    BG_STARTING_EVENT_SECOND    = 1,
    BG_STARTING_EVENT_THIRD     = 2,
    BG_STARTING_EVENT_FOURTH    = 3
};
#define BG_STARTING_EVENT_COUNT 4

enum BattleGroundCreatureSpawnMode
{
    DESPAWN_FORCED   = 0,
    RESPAWN_STOP     = 1,
    RESPAWN_START    = 2,
    RESPAWN_FORCED   = 3
};
#define BG_CREATURE_SPAWN_MODE_COUNT 4

enum BattleGroundJoinError
{
    BG_JOIN_ERR_OK = 0,
    BG_JOIN_ERR_OFFLINE_MEMBER = 1,
    BG_JOIN_ERR_GROUP_TOO_MANY = 2,
    BG_JOIN_ERR_MIXED_FACTION = 3,
    BG_JOIN_ERR_MIXED_LEVELS = 4,
    //BG_JOIN_ERR_MIXED_ARENATEAM = 5,
    BG_JOIN_ERR_GROUP_MEMBER_ALREADY_IN_QUEUE = 6,
    BG_JOIN_ERR_GROUP_DESERTER = 7,
    BG_JOIN_ERR_ALL_QUEUES_USED = 8,
    BG_JOIN_ERR_GROUP_NOT_ENOUGH = 9
};

class BattleGroundScore
{
    public:
        BattleGroundScore() : killingBlows(0), deaths(0), honorableKills(0),
            bonusHonor(0)
        {}
        virtual ~BattleGroundScore() {}                     //virtual destructor is used when deleting score from scores map

        uint32 killingBlows;
        uint32 deaths;
        uint32 honorableKills;
        uint32 bonusHonor;
};

/*
This class is used to:
1. Add player to battleground
2. Remove player from battleground
3. some certain cases, same for all battlegrounds
4. It has properties same for all battlegrounds
*/
class BattleGround
{
    friend class BattleGroundMgr;

    public:
        /* Construction */
        BattleGround();
        /*BattleGround(const BattleGround& bg);*/
        virtual ~BattleGround();
        virtual void Update(uint32 diff);                   // must be implemented in BG subclass of BG specific update code, but must in begginning call parent version
        virtual bool SetupBattleGround()                    // must be implemented in BG subclass
        {
            return true;
        }
        virtual void HandleCommand(Player* player, ChatHandler* handler, char* args);
        virtual void Reset();                               // resets all common properties for battlegrounds, must be implemented and called in BG subclass
        virtual void StartingEventCloseDoors()   {}
        virtual void StartingEventOpenDoors()    {}
        virtual void StartingEventDespawnDoors();
        void ReturnPlayersToHomeGY();

        // Called after event state changed (event add or remove).
        virtual void OnEventStateChanged(uint8 event1, uint8 event2, bool actived) {}

        virtual SpellCastResult CheckSpellCast(Player* caster, SpellEntry const* spell) { return SPELL_CAST_OK; }

        /* Battleground */
        // Get methods:
        char const* GetName() const         { return m_name; }
        BattleGroundTypeId GetTypeID() const { return m_typeId; }
        BattleGroundBracketId GetBracketId() const { return m_bracketId; }
        // the instanceId check is also used to determine a bg-template
        // that's why the m_map hack is here..
        uint32 GetInstanceID()              { return m_map ? GetBgMap()->GetInstanceId() : 0; }
        BattleGroundStatus GetStatus() const { return m_status; }
        uint32 GetClientInstanceID() const  { return m_clientInstanceId; }
        uint32 GetStartTime() const         { return m_startTime; }
        uint32 GetEndTime() const           { return m_endTime; }
        uint32 GetMaxPlayers() const        { return m_maxPlayers; }
        uint32 GetMinPlayers() const        { return m_minPlayers; }

        uint32 GetMinLevel() const          { return m_levelMin; }
        uint32 GetMaxLevel() const          { return m_levelMax; }

        uint32 GetAllianceWinSpell() const  { return m_allianceWinSpell; }
        uint32 GetAllianceLoseSpell() const { return m_allianceLoseSpell; }
        uint32 GetHordeWinSpell() const     { return m_hordeWinSpell; }
        uint32 GetHordeLoseSpell() const    { return m_hordeLoseSpell; }

        uint32 GetMaxPlayersPerTeam() const { return m_maxPlayersPerTeam; }
        uint32 GetMinPlayersPerTeam() const { return m_minPlayersPerTeam; }

        int32 GetStartDelayTime() const     { return m_startDelayTime; }
        BattleGroundWinner GetWinner() const { return m_winner; }
        uint32 GetBattlemasterEntry() const;
        uint32 GetBonusHonorFromKill(uint32 kills) const;
        float GetHonorModifier();

        // Set methods:
        void SetName(char const* name)               { m_name = name; }
        void SetTypeID(BattleGroundTypeId typeId)    { m_typeId = typeId; }
        void SetBracketId(BattleGroundBracketId id)  { m_bracketId = id; }
        void SetStatus(BattleGroundStatus status)    { m_status = status; }
        void SetClientInstanceID(uint32 instanceId)  { m_clientInstanceId = instanceId; }
        void SetStartTime(uint32 time)               { m_startTime = time; }
        void SetEndTime(uint32 time)                 { m_endTime = time; }
        void SetMaxPlayers(uint32 maxPlayers)        { m_maxPlayers = maxPlayers; }
        void SetMinPlayers(uint32 minPlayers)        { m_minPlayers = minPlayers; }
        void SetAllianceWinSpell(uint32 winSpell)    { m_allianceWinSpell = winSpell; }
        void SetAllianceLoseSpell(uint32 loseSpell)  { m_allianceLoseSpell = loseSpell; }
        void SetHordeWinSpell(uint32 winSpell)       { m_hordeWinSpell = winSpell; }
        void SetHordeLoseSpell(uint32 loseSpell)     { m_hordeLoseSpell = loseSpell; }
        void SetLevelRange(uint32 min, uint32 max)   { m_levelMin = min; m_levelMax = max; }
        void SetWinner(BattleGroundWinner winner)    { m_winner = winner; }

        void ModifyStartDelayTime(int diff) { m_startDelayTime -= diff; }
        void SetStartDelayTime(int time)    { m_startDelayTime = time; }

        void SetMaxPlayersPerTeam(uint32 maxPlayers) { m_maxPlayersPerTeam = maxPlayers; }
        void SetMinPlayersPerTeam(uint32 minPlayers) { m_minPlayersPerTeam = minPlayers; }

        void AddToBGFreeSlotQueue();                        //this queue will be useful when more battlegrounds instances will be available
        void RemoveFromBGFreeSlotQueue();                   //this method could delete whole BG instance, if another free is available

        void DecreaseInvitedCount(Team team)      { (team == ALLIANCE) ? --m_invitedAlliance : --m_invitedHorde; }
        void IncreaseInvitedCount(Team team)      { (team == ALLIANCE) ? ++m_invitedAlliance : ++m_invitedHorde; }
        uint32 GetInvitedCount(Team team) const
        {
            if (team == ALLIANCE)
                return m_invitedAlliance;
            else
                return m_invitedHorde;
        }
        bool HasFreeSlots() const;
        uint32 GetFreeSlotsForTeam(Team team) const;

        typedef std::map<ObjectGuid, BattleGroundPlayer> BattleGroundPlayerMap;
        BattleGroundPlayerMap const& GetPlayers() const { return m_players; }
        uint32 GetPlayersSize() const { return m_players.size(); }

        typedef std::map<ObjectGuid, BattleGroundScore*> BattleGroundScoreMap;
        BattleGroundScoreMap::const_iterator GetPlayerScoresBegin() const { return m_playerScores.begin(); }
        BattleGroundScoreMap::const_iterator GetPlayerScoresEnd() const { return m_playerScores.end(); }
        uint32 GetPlayerScoresSize() const { return m_playerScores.size(); }

        void StartBattleGround();
        void StopBattleGround();

        /* Location */
        void SetMapId(uint32 mapId) { m_mapId = mapId; }
        uint32 GetMapId() const { return m_mapId; }

        /* Map pointers */
        void SetBgMap(BattleGroundMap* map) { m_map = map; }
        BattleGroundMap* GetBgMap()
        {
            MANGOS_ASSERT(m_map);
            return m_map;
        }

        void SetTeamStartLoc(Team team, float x, float y, float z, float o);
        void GetTeamStartLoc(Team team, float &x, float &y, float &z, float &o) const
        {
            BattleGroundTeamIndex idx = GetTeamIndexByTeamId(team);
            x = m_teamStartLocX[idx];
            y = m_teamStartLocY[idx];
            z = m_teamStartLocZ[idx];
            o = m_teamStartLocO[idx];
        }

        /* Packet Transfer */
        // method that should fill worldpacket with actual world states (not yet implemented for all battlegrounds!)
        virtual void FillInitialWorldStates(WorldPacket& /*data*/, uint32& /*count*/) {}
        void SendPacketToTeam(Team team, WorldPacket* packet, Player* sender = nullptr, bool self = true);
        void SendPacketToAll(WorldPacket* packet);

        template<class Do>
        void BroadcastWorker(Do& _do);

        void PlaySoundToTeam(uint32 soundId, Team team);
        void PlaySoundToAll(uint32 soundId);
        void CastSpellOnTeam(uint32 spellId, Team team);
        void RewardHonorToTeam(uint32 honor, Team team);
        void RewardReputationToTeam(uint32 factionId, uint32 reputation, Team team);
        void RewardMark(Player* player, bool winner);
        void SendRewardMarkByMail(Player* player,uint32 mark, uint32 count);
        void RewardItem(Player* player, uint32 itemId, uint32 count);
        void RewardQuestComplete(Player* player);
        static void RewardSpellCast(Player* player, uint32 spellId);
        void UpdateWorldState(uint32 field, uint32 value);
        static void UpdateWorldStateForPlayer(uint32 field, uint32 value, Player* source);
        virtual void EndBattleGround(Team winner);
        static void BlockMovement(Player* player);

        void SendMessageToAll(int32 entry, ChatMsg type, Player const* source = nullptr);
        void SendYellToAll(int32 entry, uint32 language, ObjectGuid guid);
        void PSendMessageToAll(int32 entry, ChatMsg type, Player const* source, ...  );

        // specialized version with 2 string id args
        void SendMessage2ToAll(int32 entry, ChatMsg type, Player const* source, int32 strId1 = 0, int32 strId2 = 0);
        void SendYell2ToAll(int32 entry, uint32 language, ObjectGuid guid, int32 arg1, int32 arg2);

        /* Raid Group */
        Group* GetBgRaid(Team team) const { return m_bgRaids[GetTeamIndexByTeamId(team)]; }
        void SetBgRaid(Team team, Group* bgRaid);

        virtual void UpdatePlayerScore(Player* source, uint32 type, uint32 value);

        static BattleGroundTeamIndex GetTeamIndexByTeamId(Team team) { return team == ALLIANCE ? BG_TEAM_ALLIANCE : BG_TEAM_HORDE; }
        uint32 GetPlayersCountByTeam(Team team) const { return m_playersCount[GetTeamIndexByTeamId(team)]; }
        uint32 GetAlivePlayersCountByTeam(Team team) const; // used in arenas to correctly handle death in spirit of redemption / last stand etc. (killer = killed) cases
        void UpdatePlayersCountByTeam(Team team, bool remove)
        {
            if (remove)
                --m_playersCount[GetTeamIndexByTeamId(team)];
            else
                ++m_playersCount[GetTeamIndexByTeamId(team)];
        }

        /* Triggers handle */
        // must be implemented in BG subclass
        virtual void HandleAreaTrigger(Player* /*source*/, uint32 /*trigger*/) {}
        // must be implemented in BG subclass if need AND call base class generic code
        virtual void HandleKillPlayer(Player* pVictim, Player* pKiller);
        virtual void HandleKillUnit(Creature* /*unit*/, Player* /*killer*/) { };

        /* Battleground events */
        virtual void EventPlayerDroppedFlag(Player* /*player*/) {}
        virtual void EventPlayerClickedOnFlag(Player* /*player*/, GameObject* /*targetGo*/) {}
        virtual void EventPlayerCapturedFlag(Player* /*player*/) {}

        /* Death related */
        virtual WorldSafeLocsEntry const* GetClosestGraveYard(Player* player);

        virtual void AddPlayer(Player* player);                // must be implemented in BG subclass

        void AddOrSetPlayerToCorrectBgGroup(Player* player, ObjectGuid playerGuid, Team team);

        virtual void RemovePlayerAtLeave(ObjectGuid guid, bool transport, bool sendPacket);
                                                            // can be extended in in BG subclass

        /* event related */
        // called when a creature gets added to map (NOTE: only triggered if
        // a player activates the cell of the creature)
        void OnObjectDBLoad(Creature* /*creature*/);
        void OnObjectDBLoad(GameObject* /*obj*/);
        // (de-)spawns creatures and gameobjects from an event
        void SpawnEvent(uint8 event1, uint8 event2, bool spawn, bool forcedDespawn, uint32 delay = 0);
        void SetSpawnEventMode(uint8 event1, uint8 event2, BattleGroundCreatureSpawnMode mode);
        bool IsActiveEvent(uint8 event1, uint8 event2)
        {
            if (m_activeEvents.find(event1) == m_activeEvents.end())
                return false;
            return m_activeEvents[event1] == event2;
        }
        void ActivateEventWithoutSpawn(uint8 event1, uint8 event2)
        {
            m_activeEvents[event1] = event2;
        }
        ObjectGuid GetSingleCreatureGuid(uint8 event1, uint8 event2);
        ObjectGuid GetSingleGameObjectGuid(uint8 event1, uint8 event2);

        void OpenDoorEvent(uint8 event1, uint8 event2 = 0);
        static bool IsDoor(uint8 event1, uint8 event2);

        void HandleTriggerBuff(ObjectGuid goGuid);

        // TODO: make this protected:
        typedef std::vector<ObjectGuid> BGObjects;
        typedef std::vector<ObjectGuid> BGCreatures;
        // TODO drop m_BGObjects
        BGObjects m_bgObjects;
        void SpawnBGObject(ObjectGuid guid, uint32 respawnTime);
        bool AddObject(uint32 type, uint32 entry, float x, float y, float z, float o, float rotation0, float rotation1, float rotation2, float rotation3, uint32 respawnTime = 0);
        void SpawnBGCreature(ObjectGuid guid, BattleGroundCreatureSpawnMode mode);
        bool DelObject(uint32 type);

        void DoorOpen(ObjectGuid guid);
        void DoorClose(ObjectGuid guid);

        virtual bool HandlePlayerUnderMap(Player* /*player*/) { return false; }

        // since arenas can be AvA or Hvh, we have to get the "temporary" team of a player
        Team GetPlayerTeam(ObjectGuid guid);
        static Team GetOtherTeam(Team team){ return team ? ((team == ALLIANCE) ? HORDE : ALLIANCE) : TEAM_NONE; }
        static BattleGroundTeamIndex GetOtherTeamIndex(BattleGroundTeamIndex teamIdx){ return teamIdx == BG_TEAM_ALLIANCE ? BG_TEAM_HORDE : BG_TEAM_ALLIANCE; }
        bool IsPlayerInBattleGround(ObjectGuid guid);

        /* virtual score-array - get's used in bg-subclasses */
        int32 m_teamScores[BG_TEAMS_COUNT];

        struct EventObjects
        {
            BGObjects gameobjects;
            BGCreatures creatures;
        };

        // cause we create it dynamicly i use a map - to avoid resizing when
        // using vector - also it contains 2*events concatenated with PAIR32
        // this is needed to avoid overhead of a 2dimensional std::map
        std::map<uint32, EventObjects> m_eventObjects;
        // this must be filled first in BattleGroundXY::Reset().. else
        // creatures will get added wrong
        // door-events are automaticly added - but _ALL_ other must be in this vector
        std::map<uint8, uint8> m_activeEvents;

        uint32 GetPlayerSkinRefLootId() const { return m_playerSkinReflootId; }
        void SetPlayerSkinRefLootId(uint32 reflootId) { m_playerSkinReflootId = reflootId; }
    protected:
        //this method is called, when BG cannot spawn its own spirit guide, or something is wrong, It correctly ends BattleGround
        void EndNow();
        void PlayerAddedToBGCheckIfBGIsRunning(Player* player);

        /* Scorekeeping */

        BattleGroundScoreMap m_playerScores;                // Player scores
        // must be implemented in BG subclass
        virtual void RemovePlayer(Player* /*player*/, ObjectGuid /*guid*/) {}

        /* Player lists, those need to be accessible by inherited classes */
        BattleGroundPlayerMap  m_players;

        /*
        these are important variables used for starting messages
        */
        uint8 m_events;
        BattleGroundStartTimeIntervals  m_startDelayTimes[BG_STARTING_EVENT_COUNT];
        //this must be filled in constructors!
        uint32 m_startMessageIds[BG_STARTING_EVENT_COUNT];

        bool   m_buffChange;

    private:
        /* Battleground */
        BattleGroundTypeId m_typeId;
        BattleGroundStatus m_status;
        BattleGroundWinner  m_winner;

        uint32 m_clientInstanceId;                          //the instance-id which is sent to the client and without any other internal use
        uint32 m_startTime;
        int32 m_endTime;                                    // it is set to 120000 when bg is ending and it decreases itself
        BattleGroundBracketId m_bracketId;
        bool   m_inBGFreeSlotQueue;                         // used to make sure that BG is only once inserted into the BattleGroundMgr.m_bgFreeSlotQueue[bgTypeId] deque
        int32  m_startDelayTime;
        bool   m_prematureCountDown;
        uint32 m_prematureCountDownTimer;
        char const* m_name;

        /* Player lists */

        /* Invited counters are useful for player invitation to BG - do not allow, if BG is started to one faction to have 2 more players than another faction */
        /* Invited counters will be changed only when removing already invited player from queue, removing player from battleground and inviting player to BG */
        /* Invited players counters*/
        uint32 m_invitedAlliance;
        uint32 m_invitedHorde;

        /* Raid Group */
        Group* m_bgRaids[BG_TEAMS_COUNT];                                // 0 - alliance, 1 - horde

        /* Players count by team */
        uint32 m_playersCount[BG_TEAMS_COUNT];

        /* Limits */
        uint32 m_levelMin;
        uint32 m_levelMax;
        uint32 m_maxPlayersPerTeam;
        uint32 m_maxPlayers;
        uint32 m_minPlayersPerTeam;
        uint32 m_minPlayers;

        // Spell that is cast on player at end of BG to grant him reward.
        uint32 m_allianceWinSpell;
        uint32 m_allianceLoseSpell;
        uint32 m_hordeWinSpell;
        uint32 m_hordeLoseSpell;

        /* Start location */
        uint32 m_mapId;
        BattleGroundMap* m_map;
        float m_teamStartLocX[BG_TEAMS_COUNT];
        float m_teamStartLocY[BG_TEAMS_COUNT];
        float m_teamStartLocZ[BG_TEAMS_COUNT];
        float m_teamStartLocO[BG_TEAMS_COUNT];

        uint32 m_playerSkinReflootId;
};

// helper functions for world state list fill
inline void FillInitialWorldState(ByteBuffer& data, uint32& count, uint32 state, uint32 value)
{
    data << uint32(state);
    data << uint32(value);
    ++count;
}

inline void FillInitialWorldState(ByteBuffer& data, uint32& count, uint32 state, int32 value)
{
    data << uint32(state);
    data << int32(value);
    ++count;
}

inline void FillInitialWorldState(ByteBuffer& data, uint32& count, uint32 state, bool value)
{
    data << uint32(state);
    data << uint32(value?1:0);
    ++count;
}

struct WorldStatePair
{
    uint32 state;
    uint32 value;
};

inline void FillInitialWorldState(ByteBuffer& data, uint32& count, WorldStatePair const* array)
{
    for(WorldStatePair const* itr = array; itr->state; ++itr)
    {
        data << uint32(itr->state);
        data << uint32(itr->value);
        ++count;
    }
}

#endif
