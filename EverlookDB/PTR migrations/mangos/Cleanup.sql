-- Potion Dealers
DELETE FROM `creature_template` WHERE `entry`=90102 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90102, 0, 105, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jay', 'Pot Dealer', 0, 60, 60, 35, 16388, 1, 1.14286, 20, 5, 0, 0, 1, 1, 1, 1, 1, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 64, '');
DELETE FROM `creature_template` WHERE `entry`=90103 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90103, 0, 105, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bob', 'Pot Dealer', 0, 60, 60, 35, 16388, 1, 1.14286, 20, 5, 0, 0, 1, 1, 1, 1, 1, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 64, '');

-- Guards
-- Alliance Guard
DELETE FROM `creature_template` WHERE `entry`=90104 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90104, 0, 164, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 'Durnholde Keep Guard', '', 0, 60, 60, 11, 0, 1, 1.3, 20, 5, 0, 1, 1, 50, 1, 1.1, 50, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 1, 32768, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 163960, 0, 0, NULL, '', 0, 3, 0, 0, 3, 16396, 0, 0, 0, 0, 524288, '');

-- Horde Guard
DELETE FROM `creature_template` WHERE `entry`=90105 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90105, 0, 1359, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 'Orc Guard', '', 0, 60, 60, 85, 0, 1, 1.3, 20, 5, 0, 1, 1, 50, 1, 0.85, 50, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 599, 4836, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 3, 0, 0, 3, 15853, 0, 0, 0, 0, 524288, '');

-- Alliance Pet Trainer
DELETE FROM `creature_template` WHERE `entry`=90106 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90106, 0, 9338, 0, 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aileb', 'Pet Trainer', 4783, 60, 60, 35, 19, 1, 1.14286, 18, 5, 0, 0, 1, 1.15, 1, 1, 1.1, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 1, 4608, 0, 3, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 3, 0, 0, 3, 0, 273, 0, 0, 0, 524298, '');

-- Horde Pet Trainer
DELETE FROM `creature_template` WHERE `entry`=90107 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90107, 0, 4292, 0, 0, 0, 1.5, 0, 0, 0, 1, 0, 0, 0, 1, 0, 'Zugg', 'Pet Trainer', 4783, 60, 60, 35, 17, 1, 1.14286, 18, 5, 0, 0, 1, 1.15, 1, 1, 1.1, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 1, 4608, 0, 3, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 3, 1, 0, 3, 3624, 273, 0, 0, 0, 524298, '');

-- Alliance Stable Master
DELETE FROM `creature_template` WHERE `entry`=90108 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90108, 0, 9257, 0, 0, 0, 1.5, 0, 0, 0, 1, 0, 0, 0, 1, 0, 'Amre', 'Stable Master', 0, 60, 60, 35, 8192, 1, 1.14286, 18, 5, 0, 0, 1, 1.05, 1, 1, 0.5, 0.14, 0, 1000, 2000, 0, 0, 0, 0, 0, 0, 1, 4608, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 3, 1, 0, 3, 0, 0, 0, 0, 0, 524298, '');

-- Horde Stable Master
DELETE FROM `creature_template` WHERE `entry`=90109 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90109, 0, 10566, 0, 0, 0, 1.5, 0, 0, 0, 1, 0, 0, 0, 1, 0, 'Adoba', 'Stable Master', 0, 60, 60, 35, 8192, 1, 1.14286, 18, 5, 0, 0, 1, 1.05, 1, 1, 0.9, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 1, 4608, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 1, 0, 0, 3, 11105, 0, 0, 0, 0, 524298, '');

-- Alliance Teleporter
DELETE FROM `creature_template` WHERE `entry`=90066 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90066, 0, 15251, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Porter', 'Teleporter', 0, 50, 50, 35, 1, 1, 1.14286, 20, 5, 0, 1, 1, 1, 1, 1, 1, 0.14, 0, 1000, 1000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'custom_teleport_npc');

-- Horde Teleporter
DELETE FROM `creature_template` WHERE `entry`=90100 AND `patch`=0;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `unit_flags`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (90100, 0, 15251, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pano the Traveler', 'Teleporter', 0, 50, 50, 35, 1, 1, 1.14286, 20, 5, 0, 1, 1, 1, 1, 1, 1, 0.14, 0, 1000, 1000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'custom_teleport_npc');

-- Creature
DELETE FROM `creature` WHERE `guid`=2000114;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000114, 90106, 0, 0, 0, 269, 2103.33, 44.1396, 53.6653, 1.20177, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

DELETE FROM `creature` WHERE `guid`=2000129;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000129, 90107, 0, 0, 0, 269, 2536.57, 1319.76, 21.459, 2.71616, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Teleporters
DELETE FROM `creature` WHERE `guid`=2000136; -- Alliance
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000136, 90066, 0, 0, 0, 269, 2166.26, 46.8035, 52.9081, 5.31723, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

DELETE FROM `creature` WHERE `guid`=2000137; -- Horde
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000137, 90100, 0, 0, 0, 269, 2490.99, 1346.71, 20.8614, 6.01089, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Alliance Stable Master
DELETE FROM `creature` WHERE `guid`=2000138;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000138, 90108, 0, 0, 0, 269, 2106.79, 42.2973, 53.8232, 1.15856, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Horde Stable Master
DELETE FROM `creature` WHERE `guid`=2000139;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000139, 90109, 0, 0, 0, 269, 2534.65, 1315.97, 21.4165, 2.6965, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Profession Trainers
DELETE FROM `creature` WHERE `guid`=2000140; -- Alliance
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000140,90062,0,0,0,269,2138.37,55.6703,52.9166,4.14701,25,25,0,100,100,0,0,0,0,10);

DELETE FROM `creature` WHERE `guid`=2000141; -- Horde
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000141,90096,0,0,0,269,2481.01,1323.23,21.816,0.195006,25,25,0,100,100,0,0,0,0,10);

-- Training Dummy Spawns
-- Alliance
DELETE FROM `creature` WHERE `guid`=2000142;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000142,90056,0,0,0,269,2091.74,142.74,52.4567,5.08945,25,25,0,100,100,0,0,0,0,10);
DELETE FROM `creature` WHERE `guid`=2000143;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000143,90056,0,0,0,269,2088.61,140.331,52.442,5.65342,25,25,0,100,100,0,0,0,0,10);
DELETE FROM `creature` WHERE `guid`=2000144;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000144,90056,0,0,0,269,2095.31,144.533,52.5117,5.20575,25,25,0,100,100,0,0,0,0,10);
DELETE FROM `creature` WHERE `guid`=2000145;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000145,90056,0,0,0,269,2098.9,146.447,52.4489,5.13503,25,25,0,100,100,0,0,0,0,10);

-- Horde
DELETE FROM `creature` WHERE `guid`=2000146;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000146,90090,0,0,0,269,2522.8,1369.69,20.8197,4.38894,25,25,0,100,100,0,0,0,0,10);
DELETE FROM `creature` WHERE `guid`=2000147;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000147,90090,0,0,0,269,2527.2,1368.56,20.9896,4.40465,25,25,0,100,100,0,0,0,0,10);
DELETE FROM `creature` WHERE `guid`=2000148;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000148,90090,0,0,0,269,2531.1,1367.83,21.1453,4.06304,25,25,0,100,100,0,0,0,0,10);
DELETE FROM `creature` WHERE `guid`=2000149;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000149,90090,0,0,0,269,2534.42,1365.79,21.2643,4.38894,25,25,0,100,100,0,0,0,0,10);

-- Guards
-- Alliance
DELETE FROM `creature` WHERE `guid`=2000150;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000150, 90104, 0, 0, 0, 269, 2079.93, 228.698, 64.8744, 2.46233, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2000151;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000151, 90104, 0, 0, 0, 269, 2065.83, 210.932, 64.872, 1.99895, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2000152;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000152, 90104, 0, 0, 0, 269, 2161.08, 67.3269, 64.9009, 1.68085, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2000153;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000153, 90104, 0, 0, 0, 269, 2098.06, 181.277, 65.0271, 1.80651, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2000154;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000154, 90104, 0, 0, 0, 269, 2109.43, 208.97, 65.2041, 3.15347, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
-- Horde
DELETE FROM `creature` WHERE `guid`=2000155;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000155, 90105, 0, 0, 0, 269, 2375.23, 1190.75, 67.2134, 4.2477, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2000156;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000156, 90105, 0, 0, 0, 269, 2395.07, 1174.83, 68.1981, 3.85892, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2000157;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000157, 90105, 0, 0, 0, 269, 2527.76, 1284.4, 23.6552, 3.28164, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2000158;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000158, 90105, 0, 0, 0, 269, 2485.78, 1294.07, 24.8341, 5.14304, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2000159;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000159, 90105, 0, 0, 0, 269, 2482.8, 1385.05, 21.5534, 5.11947, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Everlook PTR Transporter
DELETE FROM `item_template` WHERE `entry`=36001 AND `patch`=0;
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`) VALUES (36001, 0, 15, 0, 'Everlook PTR Transporter', 'It Just Works', 31423, 6, 64, 1, 0, 0, 0, -1, -1, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23442, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 1);
-- Set Teleport
UPDATE `spell_target_position` SET `id`=23442, `target_map`=269, `target_position_x`=2635.17, `target_position_y`=674.657, `target_position_z`=54.484, `target_orientation`=4.71246, `build_min`=0, `build_max`=5875 WHERE `id`=23442 AND `target_map`=1;
-- Revert Everlook Transporter
-- UPDATE `spell_target_position` SET `id`=23442, `target_map`=1, `target_position_x`=6755.33, `target_position_y`=-4658.09, `target_position_z`=724.8, `target_orientation`=3.4049, `build_min`=0, `build_max`=5875 WHERE `id`=23442 AND `target_map`=269;

DELETE FROM `npc_vendor` WHERE `entry`=90050;
DELETE FROM `npc_vendor` WHERE `entry`=90084;

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=5565; -- Infernal Stone
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 5565, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=16583; -- Demonic Figurine
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 16583, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17020; -- Arcane Powder
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17020, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17026; -- Wild Thornroot
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17026, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17029; -- Sacred Candle
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17029, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17030; -- Ankh
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17030, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17033; -- Symbol of Divinity
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17033, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17038; -- Ironwood Seed
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17038, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=21177; -- Symbol of Kings
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 21177, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=5530; -- Blinding Powder
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 5530, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=5140; -- Flash Powder
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 5140, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=6265; -- Soul Shard
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 6265, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=12654; -- Doomshot
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 12654, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=8957; -- Spinefin Halibut
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 8957, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=8957; -- Spinefin Halibut
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 8957, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17056; -- Light Feather
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17056, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17057; -- Shiny Fish Scales
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17057, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90050 AND `item`=17058; -- Fish Oil
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90050, 17058, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=5565; -- Infernal Stone
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 5565, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=16583; -- Demonic Figurine
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 16583, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17020; -- Arcane Powder
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17020, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17026; -- Wild Thornroot
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17026, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17029; -- Sacred Candle
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17029, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17030; -- Ankh
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17030, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17033; -- Symbol of Divinity
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17033, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17038; -- Ironwood Seed
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17038, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=21177; -- Symbol of Kings
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 21177, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=5530; -- Blinding Powder
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 5530, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=5140; -- Flash Powder
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 5140, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=6265; -- Soul Shard
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 6265, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=12654; -- Doomshot
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 12654, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=8957; -- Spinefin Halibut
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 8957, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17056; -- Light Feather
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17056, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17057; -- Shiny Fish Scales
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17057, 0, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=90084 AND `item`=17058; -- Fish Oil
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90084, 17058, 0, 0, 0, 0);