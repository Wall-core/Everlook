DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20220917141705');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20220917141705');
-- Add your query below.


-- The Blue Scepter Shard Questline Updates (credit cmangos)
DELETE FROM `creature_questrelation` WHERE `quest` = 8578 AND `id` = 11811;
UPDATE `quest_template` SET `RewMailTemplateId` = 123, `RewMailDelaySecs` = 86400, `RewMailMoney` = 1000000 WHERE `entry` = 8729;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Update Quest End Script (credit cmangos)
DELETE FROM `quest_start_scripts` WHERE `id`=2765;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3828, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Talk'),
(2765, 0, 0, 4, 147, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Modify Flags'),
(2765, 2, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12030.27, -999.409, 49.77913, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Move'),
(2765, 9, 0, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Kneel'),
(2765, 13, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Stand'),
(2765, 15, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12036.58, -1002.73, 49.6633, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Move'),
(2765, 18, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Emote'),
(2765, 22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Emote'),
(2765, 24, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12039.43, -1006.109, 49.6331, 2.78613, 0, 'Expert Blacksmith!: Galvan the Ancient - Move'),
(2765, 25, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Emote'),
(2765, 29, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Emote'),
(2765, 31, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12039.9, -1009.15, 49.5048, 3.56047, 0, 'Expert Blacksmith!: Galvan the Ancient - Move'),
(2765, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3825, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Talk'),
(2765, 35, 0, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Emote'),
(2765, 39, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Emote'),
(2765, 41, 0, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Modify Flags'),
(2765, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3826, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Talk'),
(2765, 41, 0, 7, 2765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Expert Blacksmith!: Galvan the Ancient - Complete QUest');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Correct Object Size (credit cmangos)
UPDATE `gameobject_template` SET `size` = 1 WHERE `entry` = 1610;
UPDATE `gameobject_template` SET `size` = 1 WHERE `entry` = 1667;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Update Kroshius Encounter (credit cmangos https://github.com/cmangos/tbc-db/pull/1110/files)
-- Kroshius Spell Target
UPDATE `gameobject` SET `position_x` = 5780.3354, `position_y` = -964.8442, `position_z` = 412.69403, `orientation` = 3.5081117 WHERE `guid` IN (3996170, 99894);

-- Fel Fire spawn
UPDATE `gameobject_template` SET `size` = 2 WHERE `entry` = 179676;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(157008, 179676, 1, 5780.3354, -964.8442, 412.69403, 3.5081117, 0, 0, 0, 0, -6, -6, 100, 1, 0, 0, 0, 10);

-- Kroshius 
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(39715, 14467, 0, 0, 0, 1, 5780.3354, -964.8442, 412.69403, 3.5081117, 180, 180, 0, 100, 0, 0, 0, 0, 0, 10);
UPDATE `creature_template` SET `faction` = 1194, `flags_extra` = 0 WHERE `entry` = 14467;


-- Events list for Kroshius
DELETE FROM `creature_ai_events` WHERE `creature_id`=14467;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1446701, 14467, 0, 11, 0, 100, 0, 0, 0, 0, 0, 1446701, 0, 0, 'Kroshius - Set Stand State - Just Spawned');
DELETE FROM `creature_ai_scripts` WHERE `id`=1446701;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1446701, 0, 0, 28, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Set Stand State');

DELETE FROM `event_scripts` WHERE `id`=8328;
INSERT INTO `event_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(8328, 0, 0, 9, 157008, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Respawn Gameobject'),
(8328, 3, 0, 28, 0, 0, 0, 0, 39715, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Set Stand State'),
(8328, 5, 0, 0, 0, 0, 0, 0, 39715, 0, 9, 2, 9633, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Talk'),
(8328, 5, 0, 35, 0, 0, 0, 0, 39715, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Orientation'),
(8328, 5, 0, 1, 15, 0, 0, 0, 39715, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Emote'),
(8328, 10, 0, 22, 14, 1, 0, 0, 39715, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Set Faction'),
(8328, 10, 0, 4, 46, 768, 2, 0, 39715, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Remove Unit Flag'),
(8328, 1200, 0, 18, 0, 0, 0, 0, 39715, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kroshius - Despawn');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Spells to Doomguard Minion (credit cmangos)
UPDATE `creature_template` SET `spell_list_id` = 14385 WHERE `entry` = 14385;
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES
(14385, 'Dire Maul - Doomguard Minion', 16005, 100, 4, 0, 0, 0, 5, 8, 18, 24, 0, 16727, 100, 0, 0, 0, 0, 12, 15, 20, 25, 0, 89, 100, 1, 0, 0, 32, 0, 0, 30, 30, 0, 15090, 100, 1, 0, 0, 0, 7, 14, 17, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Script For Disharmony of Flame (credit cmangos)
UPDATE `quest_template` SET `CompleteScript` = 3906 WHERE `entry` = 3906;
UPDATE `broadcast_text` SET `chat_type` = 4 WHERE `entry` IN (4717, 4718);

DELETE FROM `quest_end_scripts` WHERE `id`=3906;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(3906, 1, 0, 0, 0, 0, 0, 0, 6884, 0, 9, 2, 4717, 0, 0, 0, 0, 0, 0, 0, 0, 'Disharmony of Flame: Shadowmage Vivian Lagrave - Talk'),
(3906, 4, 0, 0, 0, 0, 0, 0, 6879, 0, 9, 2, 4718, 0, 0, 0, 0, 0, 0, 0, 0, 'Disharmony of Flame: Galamav the Marksman - Talk');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set Some War Effort Broadcast Texts (credit cmangos)
UPDATE `broadcast_text` SET `chat_type` = 6 WHERE `entry` IN (11427, 11432, 11425, 11426, 11424);
UPDATE `broadcast_text` SET `chat_type` = 6 WHERE `entry` IN (11429);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Text to Nathanos Blightcaller (credit cmangos)
DELETE FROM `creature_ai_events` WHERE `creature_id`=11878;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1187801, 11878, 269, 1, 0, 100, 1, 60000, 60000, 120000, 240000, 1187801, 0, 0, 'Nathanos Blightcaller - Start Dog Fetch Event');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1187802, 11878, 0, 0, 0, 100, 1, 30000, 30000, 30000, 30000, 1187802, 0, 0, 'Nathanos Blightcaller - Cast Spell Blighthound Call');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1187803, 11878, 0, 4, 0, 100, 2, 0, 0, 0, 0, 1187803, 1187805, 0, 'Nathanos Blightcaller - Say Text on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1187804, 11878, 0, 7, 0, 100, 2, 0, 0, 0, 0, 1187804, 1187806, 0, 'Nathanos Blightcaller - Say Text on Evade');

DELETE FROM `creature_ai_scripts` WHERE `id`=1187803;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1187803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7229, 7230, 7231, 7232, 0, 0, 0, 0, 0, 'Nathanos Blightcaller - Say Random Text');

DELETE FROM `creature_ai_scripts` WHERE `id`=1187805;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1187805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7233, 0, 0, 0, 0, 0, 0, 0, 0, 'Nathanos Blightcaller - Say Random Text');

DELETE FROM `creature_ai_scripts` WHERE `id`=1187804;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1187804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7234, 7235, 7236, 7237, 0, 0, 0, 0, 0, 'Nathanos Blightcaller - Say Random Text'),
(1187804, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nathanos Blightcaller - Despawn Guardians');


DELETE FROM `creature_ai_scripts` WHERE `id`=1187806;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1187806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7238, 7239, 0, 0, 0, 0, 0, 0, 0, 'Nathanos Blightcaller - Say Random Text');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Improve Timers for Zevrim Thornhoof 11490 (credit cmangos)
DELETE FROM `creature_ai_events` WHERE `creature_id`=11490;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1149001, 11490, 0, 0, 0, 100, 1, 1000, 5000, 12000, 18000, 1149001, 0, 0, 'Zevrim Thornhoof - Cast Intense Pain');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1149002, 11490, 0, 0, 0, 100, 1, 8000, 10000, 16000, 24000, 1149002, 0, 0, 'Zevrim Thornhoof - Cast Sacrifice');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Update Some Breadcrumb Quests (credit cmangos)
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 364;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 691 WHERE `entry` = 690; -- Malin's Request -> Worth Its Weight in Gold
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 691;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1524, `NextQuestId` = 0 WHERE `entry` = 1522; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1524, `NextQuestId` = 0 WHERE `entry` = 1523; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1524, `NextQuestId` = 0 WHERE `entry` = 2983; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1524, `NextQuestId` = 0 WHERE `entry` = 2984; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1530, `NextQuestId` = 0 WHERE `entry` = 1528; -- Call of Water -> Call of Water
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1530, `NextQuestId` = 0 WHERE `entry` = 1529; -- Call of Water -> Call of Water
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1530, `NextQuestId` = 0 WHERE `entry` = 2985; -- Call of Water -> Call of Water
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1530, `NextQuestId` = 0 WHERE `entry` = 2986; -- Call of Water -> Call of Water
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1699;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1705 WHERE `entry` = 1700; -- Grimand Elmore -> Burning Blood
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1705;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1710 WHERE `entry` = 1703; -- Mathiel -> Sunscorched Shells
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1710;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1708 WHERE `entry` = 1704; -- Klockmort Spannerspan -> Iron Coral
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1708;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1842 WHERE `entry` = 1839; -- Ula'elek and the Brutal Gauntlets -> Satyr Hooves
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1842;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1844 WHERE `entry` = 1840; -- Orm Stonehoof and the Brutal Helm -> Chimaeric Horn
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1844;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1846 WHERE `entry` = 1841; -- Velora Nitely and the Brutal Legguards -> Dragonmaw Shinbones
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1846;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4734 WHERE `entry` = 4907; -- Tinkee Steamboil -> Egg Freezing
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 4734;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1699;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Modify elementals dmgschool to deal elemental damage on melee attacks (credit azerothcore)
UPDATE `creature_template` SET `damage_school` = 3 WHERE `entry` = 13696;
UPDATE `creature_template` SET `damage_school` = 2 WHERE `entry` IN (10756, 10757, 11673);
UPDATE `creature_template` SET `damage_school` = 5 WHERE `entry` IN (521, 3470, 8538, 10389, 11284, 14389, 14686, 14986, 15146);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Gurubashi Bat Rider and Bloodshot Are Not Skinnable
UPDATE `creature_template` SET `skinning_loot_id`= 0 WHERE `entry` IN  (14750, 11614);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (10151, 14750);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Objects Used in Quest Bingles' Missing Supplies Should Respawn Faster (credit cmangos)
UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` IN (12871, 12863, 12872, 12864);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Keeper Remulos 11832
UPDATE `creature` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180 WHERE `id` = 11832;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Correct Orientation
UPDATE `creature` SET `orientation` = 4.79274 WHERE `guid` = 26902;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Update Objects Used For Quest 2933
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(443, 142708, 0, -15.0868, -2789.53, 123.974, 0.916285, 0.705321, 0.172728, -0.672002, 0.145263, 7200, 7200, 100, 1, 0, 0, 0, 10),
(444, 142710, 0, -14.1372, -2789.71, 123.862, 3.14159, 0, 0, -1, 0, 7200, 7200, 100, 1, 0, 0, 0, 10),
(445, 142711, 0, -15.0243, -2789.39, 123.862, 3.14159, 0, 0, -1, 0, 7200, 7200, 100, 1, 0, 0, 0, 10);

UPDATE `gameobject` SET `spawntimesecsmin` = 1800, `spawntimesecsmax` = 3600 WHERE `id` IN (142702, 142703, 142704, 142705, 142706, 142707, 142708, 142710, 142711, 142712, 142713, 142714);

INSERT INTO `gameobject_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(142703, 2933, 0, 10),
(142704, 2933, 0, 10),
(142705, 2933, 0, 10),
(142706, 2933, 0, 10),
(142707, 2933, 0, 10),
(142708, 2933, 0, 10),
(142710, 2933, 0, 10),
(142711, 2933, 0, 10),
(142712, 2933, 0, 10),
(142713, 2933, 0, 10),
(142714, 2933, 0, 10);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Greetings
INSERT INTO `quest_greeting` (`entry`, `type`, `emote_id`, `emote_delay`, `content_default`) VALUES
(2083, 0, 0, 0, 'Like Teldrassil itself, Dolanaar embraces those who embrace the land.'),
(7740, 0, 0, 0, ''),
(7825, 0, 0, 0, ''),
(7884, 0, 0, 0, ''),
(8582, 0, 0, 0, ''),
(10306, 0, 0, 0, ''),
(11857, 0, 0, 0, ''),
(11862, 0, 0, 0, ''),
(11864, 0, 0, 0, ''),
(12126, 0, 0, 0, ''),
(150075, 1, 0, 0, ''),
(179827, 1, 0, 0, ''),
(186420, 1, 0, 0, 'This collection of scrolls contains various logistic and strategic information, as well as coded correspondences.');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Update Scourgestone Quests
UPDATE `creature_involvedrelation` SET `id`= 10839 WHERE `id`=10840 AND `quest`=5407;
UPDATE `creature_involvedrelation` SET `id`= 10839 WHERE `id`=10840 AND `quest`=5408;
UPDATE `creature_involvedrelation` SET `id`= 10840 WHERE `id`=10839 AND `quest`=5403;
UPDATE `creature_involvedrelation` SET `id`= 10840 WHERE `id`=10839 AND `quest`=5402;
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` IN (5401, 5402, 5403, 5404);
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` IN (5405, 5406, 5407, 5408);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Questgivers
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(1228, 1919, 0, 10),
(313, 249, 0, 10);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- q.4971 'A Matter of Time' (credit cmangos)
-- Fix issue with 1/10 kill counter on quest START
UPDATE quest_template SET ReqItemId1 = 0, ReqItemId2 = 12627, ReqItemCount1 = 0, ReqItemCount2 = 1 WHERE entry = 4971;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Respawn Wintterfall Villiage (credit cmangos)
UPDATE `creature` SET `position_x` = 6865.51, `position_y` = -5099.49, `position_z` = 692.725, `orientation` = 0.695391, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41030;
UPDATE `creature` SET `position_x` = 6845.32, `position_y` = -5115.65, `position_z` = 694.404, `orientation` = 0.135005, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41034;
UPDATE `creature` SET `position_x` = 6833.81, `position_y` = -5108.76, `position_z` = 693.604, `orientation` = 5.84685, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41048;
UPDATE `creature` SET `position_x` = 6833.14, `position_y` = -5041.56, `position_z` = 690.784, `orientation` = 5.78156, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41049;
UPDATE `creature` SET `position_x` = 6818.08, `position_y` = -5083.12, `position_z` = 693.565, `orientation` = 5.67232, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41047;
UPDATE `creature` SET `position_x` = 6788.7, `position_y` = -5150.96, `position_z` = 731.929, `orientation` = 2.45244, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41026;
UPDATE `creature` SET `position_x` = 6786.41, `position_y` = -5161.69, `position_z` = 732.942, `orientation` = 0.578115, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41032;
UPDATE `creature` SET `position_x` = 6780.28, `position_y` = -5049.57, `position_z` = 722.916, `orientation` = 2.09397, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41024;
UPDATE `creature` SET `position_x` = 6779.97, `position_y` = -5061.67, `position_z` = 722.918, `orientation` = 5.45228, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41025;
UPDATE `creature` SET `position_x` = 6742.48, `position_y` = -5201.8, `position_z` = 761.62, `orientation` = 0.978138, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41027;
UPDATE `creature` SET `position_x` = 6731.89, `position_y` = -5134.97, `position_z` = 733.104, `orientation` = 3.80482, `movement_type` = 1, `wander_distance` = 1 WHERE `guid` = 41031;

INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(1823, 7439, 7440, 0, 0, 1, 6740.71, -5139.57, 729.938, 5.84685, 333, 333, 2, 100, 100, 1, 0, 0, 0, 10);

UPDATE `creature` SET `spawntimesecsmin` = 240, `spawntimesecsmax` = 360 WHERE `id` IN (7438, 7439, 7440);

DELETE FROM `creature` WHERE `guid` IN (41018, 41021, 41019, 41022, 41023, 41017, 41020);
INSERT INTO `creature` (`guid`, `id`, `id2`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(41018, 7438, 7439, 1, 6667.84, -5122.11, 780.42, 0, 10, 1, 240, 360),
(41021, 7438, 7439, 1, 6646.41, -5083.27, 791.9520, 0, 10, 1, 240, 360),
(41019, 7438, 7439, 1, 6690.06, -5044.10, 780.40997, 0, 10, 1, 240, 360),
(41022, 7438, 7439, 1, 6719.06, -5010.87, 766.1040, 0, 10, 1, 240, 360),
(41023, 7438, 7439, 1, 6750.95, -4982.43, 774.3099, 0, 10, 1, 240, 360),
(41017, 7438, 7439, 1, 6747.06, -4953.18, 771.3369, 0, 10, 1, 240, 360),
(41020, 7438, 7439, 1, 6775.89, -4953.06, 763.7109, 0, 10, 1, 240, 360);

DELETE FROM `creature` WHERE `guid` IN (41045, 41046, 41035, 41043, 41041, 41042, 41037);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(41045, 7440, 1, 6847.62, -5148.45, 704.5919, 0, 8, 1, 240, 360),
(41046, 7440, 1, 6879.10, -5192.58, 728.8530, 0, 8, 1, 240, 360),
(41035, 7440, 1, 6912.93, -5142.75, 695.0289, 0, 20, 1, 240, 360),
(41043, 7440, 1, 6922.14, -5080.25, 695.5139, 0, 20, 1, 240, 360),
(41041, 7440, 1, 6905.95, -5011.29, 693.1820, 0, 20, 1, 240, 360),
(41042, 7440, 1, 6856.73, -5014.25, 694.9570, 0, 20, 1, 240, 360),
(41037, 7440, 1, 6883.64, -4985.54, 696.64, 0, 20, 1, 240, 360);

UPDATE `creature` SET `movement_type` = 2, `id2` = 7438 WHERE `guid` = 41029;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(41029, 1, 6672.991, -5123.819, 776.6279, 100, 0, 0),
(41029, 2, 6638.452, -5102.194, 785.6561, 100, 0, 0),
(41029, 3, 6650.196, -5078.844, 791.2263, 100, 0, 0),
(41029, 4, 6677.679, -5060.239, 780.3429, 100, 0, 0),
(41029, 5, 6687.422, -5044.838, 780.5929, 100, 0, 0),
(41029, 6, 6697.113, -5037.76, 775.5929, 100, 0, 0),
(41029, 7, 6707.379, -5024.815, 766.2048, 100, 0, 0),
(41029, 8, 6724.477, -5014.26, 765.8298, 100, 0, 0),
(41029, 9, 6740.117, -4984.761, 773.6328, 100, 0, 0),
(41029, 10, 6733.8867, -4965.7383, 772.15936, 100, 0, 0),
(41029, 11, 6764.60, -4958.81, 768.484, 100, 0, 0),
(41029, 12, 6733.8867, -4965.7383, 772.15936, 100, 0, 0),
(41029, 13, 6740.117, -4984.761, 773.6328, 100, 0, 0),
(41029, 14, 6724.477, -5014.26, 765.8298, 100, 0, 0),
(41029, 15, 6707.379, -5024.815, 766.2048, 100, 0, 0),
(41029, 16, 6697.113, -5037.76, 775.5929, 100, 0, 0),
(41029, 17, 6687.422, -5044.838, 780.5929, 100, 0, 0),
(41029, 18, 6677.679, -5060.239, 780.3429, 100, 0, 0),
(41029, 19, 6650.196, -5078.844, 791.2263, 100, 0, 0),
(41029, 20, 6638.452, -5102.194, 785.6561, 100, 0, 0);

UPDATE `creature` SET `movement_type` = 2 WHERE `guid` = 41044;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(41044, 1, 6896.047, -5145.929, 698.4564, 100, 0, 0),
(41044, 2, 6912.23, -5154.356, 699.7226, 100, 0, 0),
(41044, 3, 6917.795, -5157.371, 698.9726, 100, 0, 0),
(41044, 4, 6924.244, -5140.042, 694.5976, 100, 0, 0),
(41044, 5, 6926.439, -5140.172, 694.2226, 100, 0, 0),
(41044, 6, 6912.631, -5155.736, 699.8476, 100, 0, 0),
(41044, 7, 6898.35, -5155.16, 698.56, 100, 0, 0),
(41044, 8, 6893.58, -5100.58, 695.29, 100, 0, 0),
(41044, 9, 6904.77, -5064.33, 691.32, 100, 0, 0),
(41044, 10, 6875.16, -5014.68, 694.93, 100, 0, 0),
(41044, 11, 6865.56, -4995.85, 695.94, 100, 0, 0),
(41044, 12, 6884.68, -4974.75, 699.25, 100, 0, 0),
(41044, 13, 6893.75, -4981.16, 697.89, 100, 0, 0),
(41044, 14, 6905.25, -5032.75, 693.83, 100, 0, 0),
(41044, 15, 6904.77, -5064.33, 691.32, 100, 0, 0),
(41044, 16, 6893.58, -5100.58, 695.29, 100, 0, 0);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Fix Vile Familiars Quest Chains (quest 792 is not for warlocks)
UPDATE `quest_template` SET `RequiredRaces` = 18 WHERE `entry` IN (1485, 1470, 1499);
UPDATE `quest_template` SET `RequiredClasses` = 1245 WHERE `entry` = 792;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Duplicate Gameobjects
DELETE FROM `gameobject` WHERE `guid` IN (
31901,
31900,
31684,
31907,
31896,
31897,
31902,
31899,
31905,
31906,
31903,
49216,
49217,
21128);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove hard coded name in text
UPDATE `quest_template` SET `RequestItemsText` = 'You made it. I\'m so glad.$b$bMuch has happened over the last few years, $n: the creation of Teldrassil, the corruption of many of the forest creatures here and abroad, discovery of lands we thought lost to us like Feralas... so much, in so little time. But those are just some of the reasons we are here, the most important being to protect our kind from further evil.' WHERE `entry`=3116;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Convert To Creature Groups
UPDATE `creature` SET `movement_type` = 0 WHERE `guid` IN (3560, 3477, 3571);
DELETE FROM `creature_movement` WHERE `id` IN (3560, 3477, 3571);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES
(3476, 3476, 0, 6.25244, 11),
(3476, 3477, 5, 3.14, 11),
(3476, 3571, 8, 3, 11),
(3476, 3560, 8, 3.5, 11);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- q.872 The Disruption Ends'
-- Fix issue with 2 requirements placed in same shared place
UPDATE `quest_template` SET `ReqItemId1` = 0, `ReqItemId3` = 5063, `ReqItemCount1` = 0, `ReqItemCount3` = 1 WHERE `entry` = 872;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Undead Mages had int and spi Mixed Up
UPDATE `player_levelstats` SET `inte` = 21, `spi` = 27 WHERE `race` = 5 AND `class` = 8 AND `level` = 1;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Events list for Shadowy Assassin
DELETE FROM `creature_ai_events` WHERE `creature_id`=2434;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (243401, 2434, 0, 4, 0, 100, 0, 0, 0, 0, 0, 243401, 0, 0, 'Shadowy Assassin - Set Faction On Aggro');

DELETE FROM `creature_ai_scripts` WHERE `id`=243401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(243401, 0, 0, 22, 97, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowy Assassin - Set Faction');

UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 2434;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Correct Scale For Huntress Leafrunner
UPDATE `creature_template` SET `display_scale1` = 0 WHERE `entry` = 14380;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Krolg Does Not Drop Loot
UPDATE `creature_template` SET `loot_id` = 0 WHERE `entry` = 3897;
DELETE FROM `creature_loot_template` WHERE `entry` = 3897;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Increase Dropchance of Shadow Hunter Knife
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -23.30 WHERE `item` = 5040;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Update Creatures Under Map
UPDATE `creature` SET `position_z` = -0.5432 WHERE `guid` = 9492;
UPDATE `creature` SET `position_x` = -3643.21, `position_y` = -951.42, `position_z` = -6.4994 WHERE `guid` = 9681;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Patrol 1
DELETE FROM `creature_movement` WHERE `id` IN (92903, 92904);
UPDATE `creature` SET `movement_type` = 0 WHERE `guid` = 92904;

INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES
(92903, 92903, 0, 6.25244, 11),
(92903, 92904, 1.5, 1.57, 11);

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(92903, 1, -560.477, -4602.34, 9.73491, 100, 0, 0, 0),
(92903, 2, -555.676, -4584.8, 9.65229, 100, 0, 0, 0),
(92903, 3, -564.356, -4573.47, 9.47859, 100, 0, 0, 0),
(92903, 4, -584.895, -4564.14, 9.03952, 100, 0, 0, 0),
(92903, 5, -586.043, -4559.78, 9.10454, 100, 0, 0, 0),
(92903, 6, -581.104, -4560.61, 9.16501, 100, 0, 0, 0),
(92903, 7, -565.556, -4568.16, 9.41349, 100, 0, 0, 0),
(92903, 8, -558.513, -4557.34, 10.1069, 100, 0, 0, 0),
(92903, 9, -548.18, -4544.4, 9.76996, 100, 0, 0, 0),
(92903, 10, -537.815, -4539.63, 10.3619, 100, 0, 0, 0),
(92903, 11, -530.221, -4536.66, 10.8068, 100, 0, 0, 0),
(92903, 12, -527.343, -4539.12, 10.7366, 100, 0, 0, 0),
(92903, 13, -537.099, -4544.58, 10.2895, 100, 0, 0, 0),
(92903, 14, -550.885, -4553.08, 10.2612, 100, 0, 0, 0),
(92903, 15, -560.426, -4569.81, 9.58455, 100, 0, 0, 0),
(92903, 16, -556.762, -4579.83, 9.61527, 100, 0, 0, 0),
(92903, 17, -556.18, -4595.4, 9.56615, 100, 0, 0, 0),
(92903, 18, -558.644, -4604.46, 9.61982, 100, 0, 0, 0),
(92903, 19, -566.361, -4613.43, 9.74237, 100, 0, 0, 0),
(92903, 20, -576.789, -4615.38, 9.5312, 100, 0, 0, 0),
(92903, 21, -588.553, -4618.48, 9.37748, 100, 0, 0, 0),
(92903, 22, -599.79, -4630.89, 9.48897, 100, 0, 0, 0),
(92903, 23, -591.666, -4623.96, 9.46637, 100, 0, 0, 0),
(92903, 24, -583.448, -4616.84, 9.35752, 100, 0, 0, 0),
(92903, 25, -568.47, -4615.99, 9.65283, 100, 0, 0, 0);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Patrol 2
DELETE FROM `creature_movement` WHERE `id` IN (92898, 92899);
UPDATE `creature` SET `movement_type` = 0 WHERE `guid` = 92899;

INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES
(92898, 92898, 0, 6.25244, 11),
(92898, 92899, 3, 3.14, 11);

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(92898, 1, -634.003, -4693.88, 5.13052, 100, 0, 0, 0),
(92898, 2, -643.561, -4714.02, 5.1673, 100, 3000, 0, 0),
(92898, 3, -634.003, -4693.88, 5.13052, 100, 0, 0, 0),
(92898, 4, -614.562, -4654.46, 5.03842, 100, 3000, 0, 0);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Text to Smith Slagtree
DELETE FROM `creature_movement_scripts` WHERE `id`=1473701;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1473701, 1, 0, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Smith Slagtree - Kneel'),
(1473701, 4, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Smith Slagtree - Stand Up'),
(1473701, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9959, 0, 0, 0, 0, 0, 0, 0, 0, 'Smith Slagtree - Talk');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Conver Caliph Scorpidsting Patrol To Groups
UPDATE `creature` SET `id2` = 0, `id3` = 0, `movement_type` = 0 WHERE `guid` IN (23466, 23467);
DELETE FROM `creature_movement` WHERE `id` IN (23466, 23467);

INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES
(23286, 23286, 0, 6.25244, 11),
(23286, 23466, 3, 2.35619, 11),
(23286, 23467, 3, 3.92699, 11);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Spells To Creatures (credit cmangos)
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES 
(14890, 'Stranglethorn Vale - Zanzil Hunter', 10277, 100, 1, 0, 0, 0, 5, 30, 35, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14900, 'Stranglethorn Vale - Zanzil Witch Doctor', 9613, 100, 1, 0, 0, 0, 0, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell_list_id` = 14890 WHERE `entry` = 1489;
UPDATE `creature_template` SET `spell_list_id` = 14900 WHERE `entry` = 1490;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Correct Devilsaw Template (credit cmangos)
UPDATE `creature_template` SET `inhabit_type` = 3 WHERE `entry` IN (6498, 6499, 6500);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Correct Creature Immunities (credit cmangos)
UPDATE `creature_template` SET `mechanic_immune_mask` = 8388624 WHERE `entry` = 12237;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Young Crocolisk Skins Does Not Require Pre Quest
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 484;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Convert Great Bear Spirit To DB Gossips (credit cmangos)
UPDATE `creature_template` SET `gossip_menu_id` = 3882, `script_name` = '' WHERE `entry` = 11956;

-- 497: Target Has Quest 5929 In Log
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (497, 9, 5929, 0, 0, 0, 0);
-- 498: Target Has Quest 5930 In Log
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (498, 9, 5930, 0, 0, 0, 0);
-- 499: (497: Target Has Quest 5929 In Log) Or (498: Target Has Quest 5930 In Log)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (499, -2, 497, 498, 0, 0, 0);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3882, 4718, 0, 0),
(3882, 4719, 0, 499);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(3882, 0, 0, 'What do you represent, spirit?', 7439, 1, 1, 3881, 0, 0, 0, 0, '', 0, 499);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3881, 4721, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(3881, 0, 0, 'I seek to understand the importance of strength of the body.', 7442, 1, 1, 3883, 0, 0, 0, 0, '', 0, 0);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3883, 4733, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(3883, 0, 0, 'I seek to understand the importance of strength of the heart.', 7444, 1, 1, 3884, 0, 0, 0, 0, '', 0, 0);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (3884, 4734, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(3884, 0, 0, 'I have heard your words, Great Bear Spirit, and I understand.  I now seek your blessings to fully learn the way of the Claw.', 7446, 1, 1, 3885, 0, 3884, 0, 0, '', 0, 497),
(3884, 1, 0, 'I have heard your words, Great Bear Spirit, and I understand.  I now seek your blessings to fully learn the way of the Claw.', 7446, 1, 1, 3885, 0, 3885, 0, 0, '', 0, 498);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3885, 4735, 0, 0);

DELETE FROM `gossip_scripts` WHERE `id`=3884;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(3884, 0, 0, 7, 5929, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Great Bear Spirit - Complete Quest'),
(3885, 0, 0, 7, 5930, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Great Bear Spirit - Complete Quest');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Stormwind City Patroller Should Have A Lantern at Night
INSERT INTO `game_event_creature_data` (`guid`, `patch`, `entry_id`, `display_id`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(90438, 0, 0, 0, 50001, 0, 0, 27);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Incorrect Stormwind Guard
DELETE FROM `creature` WHERE `guid` = 2473;

DELETE FROM `gossip_menu` WHERE  `entry` = 9406 AND `text_id` = 5495;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Condition For Arch Druid Staghelm Gossip Option
-- 602: Target Has Quest 3781 In Log
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (602, 9, 3781, 0, 0, 0, 0);
-- 603:  Not (Target Has 1 Points In Skill 182)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (603, 7, 182, 1, 0, 0, 1);
-- 604: (602: Target Has Quest 3781 In Log) And (603:  Not (Target Has 1 Points In Skill 182))
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (604, -1, 602, 603, 0, 0, 0);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Convert Lunaclaw Spirit To DB Gossips (credit cmangos)
UPDATE `creature_template` SET `gossip_menu_id` = 3862, `script_name` = '' WHERE `entry` = 12144;

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3862, 4714, 0, 0),
(3863, 4715, 0, 0);

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(3862, 0, 0, 'You have fought well, spirit.  I ask you to grant me the strength of your body and the stength of your heart.', 7405, 1, 1, 3863, 0, 386201, 0, 0, '', 0, 610),
(3862, 1, 0, 'You have fought well, spirit.  I ask you to grant me the strength of your body and the stength of your heart.', 7405, 1, 1, 3863, 0, 386202, 0, 0, '', 0, 611);

INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(386201, 0, 0, 7, 6001, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunaclaw Spirit - Complete Quest'),
(386202, 0, 0, 7, 6002, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunaclaw Spirit - Complete Quest');

-- 610: Target Has Incomplete Quest 6001 In Log
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (610, 9, 6001, 1, 0, 0, 0);
-- 611: Target Has Incomplete Quest 6002 In Log
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (611, 9, 6002, 1, 0, 0, 0);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Beached Sea Creature Should Not Despawn On Loot (Note To Self: Maybe Convert Beached Sea Creatures Hardcoded Scripts To DB)
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `guid` IN (48555, 48788);

-- Tallonkai's Dresser Should Not Despawn When Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0, `spawn_flags` = 0 WHERE `guid` = 49828;

-- Objects Used In Quest The Relics of Wakening Should Not Despawn when Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `guid` IN (49807, 49810, 49808, 49809);

-- Objects Used In Quest Deep Ocean, Vast Sea Should Not Despawn When Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `guid` IN (48652, 48653);

-- Objects Used In Quest Trial Of The Sea Lion Should Not Despawn When Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `guid` IN (48785, 21141, 21142);

-- Blackwood Nut Stores Should Not Despawn When Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `guid` IN (48671, 48616, 48605);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Stop Blubber Gump Castin Fishing If Player Already Has It
-- 810:  Not (Target Has 1 Points In Skill 356)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (810, 7, 356, 1, 0, 0, 1);

DELETE FROM `gossip_scripts` WHERE `id`=256200;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(256200, 0, 0, 15, 7733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 810, 'Gubber Blump  - Teach Fishing'),
(256200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5531, 0, 0, 0, 0, 0, 0, 0, 0, 'Gubber Blump  - Say Text');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Cant Reset Talents At Loganaar  Untill TBC
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4687 AND `id`=1;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Silithid Protector Should Talk On Spawn
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 3503;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (350301, 3503, 0, 11, 0, 100, 0, 0, 0, 0, 0, 350301, 0, 0, 'Silithid Protector - Talk On Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(350301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 'Silithid Protector - Talk');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Correct Gossip For Sputtervalve 
UPDATE `gossip_menu_option` SET `action_menu_id` = 1381 WHERE `menu_id` = 21 AND `id` = 1;

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(1381, 2013);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Spells To Winterfall Totemic (credit cmangos)
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES
(74410, 'Winterspring - Winterfall Totemic', 15786, 100, 0, 0, 0, 0, 7, 9, 55, 65, 0, 15787, 100, 0, 0, 0, 0, 12, 14, 20, 30, 0, 17205, 100, 0, 0, 0, 32, 0, 10, 120, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell_list_id` = 74410 WHERE `entry` = 7441;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Events list for Janice Felstone
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1077801, 10778, 0, 1, 0, 100, 1, 0, 420000, 180000, 420000, 1077801, 0, 0, 'Janice Felstone - Play Sound OOC');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1077801, 0, 0, 16, 2680, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Janice Felstone - Play Sound');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry` = 10778;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Gossip For Janice Felstone
INSERT INTO `gossip_menu` (`entry`, `text_id`, condition_id) VALUES
(2961, 3669, 299);

-- 299: Target Has Done Quest 5051
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (299, 8, 5051, 0, 0, 0, 0);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
