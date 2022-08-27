-- Vendor Dialogue
DELETE FROM `broadcast_text` WHERE `entry`=200003;
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`) VALUES (200003, 'Welcome to Everlook. Today\'s event is simple; Get gear. The world is now open for PvE content, and the patch is set to 1.2 itemization. You can do all dungeon content as a 40 man raid, so have fun.', 'Welcome to Everlook. Today\'s event is simple; Get gear. The world is now open for PvE content, and the patch is set to 1.2 itemization. You can do all dungeon content as a 40 man raid, so have fun.');

-- Premade PTR sets
DELETE FROM `player_premade_item` WHERE `entry` BETWEEN 100 AND 108;

-- Warrior
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 8094, 0, 0); -- Platemail Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 8088, 0, 0); -- Platemail Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 8089, 0, 0); -- Platemail Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 8090, 0, 0); -- Platemail Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 8091, 0, 0); -- Platemail Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 8092, 0, 0); -- Platemail Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 8093, 0, 0); -- Platemail Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 2531, 0, 0); -- Great Axe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 2528, 0, 0); -- Falchion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 2534, 0, 0); -- Rondel
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 2451, 0, 0); -- Crested Heater Shield

-- Paladin
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 8094, 0, 0); -- Platemail Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 8088, 0, 0); -- Platemail Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 8089, 0, 0); -- Platemail Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 8090, 0, 0); -- Platemail Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 8091, 0, 0); -- Platemail Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 8092, 0, 0); -- Platemail Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 8093, 0, 0); -- Platemail Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 2531, 0, 0); -- Great Axe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 2528, 0, 0); -- Falchion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 2451, 0, 0); -- Crested Heater Shield

-- Shaman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 5175, 0, 0); -- Earth Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 5176, 0, 0); -- Fire Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 5177, 0, 0); -- Water Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 5178, 0, 0); -- Air Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2424, 0, 0); -- Brigandine Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2426, 0, 0); -- Brigandine Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2427, 0, 0); -- Brigandine Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2428, 0, 0); -- Brigandine Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 3894, 0, 0); -- Brigandine Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2425, 0, 0); -- Brigandine Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2423, 0, 0); -- Brigandine Vest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2534, 0, 0); -- Rondel
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2451, 0, 0); -- Crested Heater Shield
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2531, 0, 0); -- Great Axe

-- Hunter
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 2662, 0, 0); -- Ribbly's Quiver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 2424, 0, 0); -- Brigandine Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 2426, 0, 0); -- Brigandine Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 2427, 0, 0); -- Brigandine Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 2428, 0, 0); -- Brigandine Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 3894, 0, 0); -- Brigandine Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 2425, 0, 0); -- Brigandine Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 2423, 0, 0); -- Brigandine Vest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 2531, 0, 0); -- Great Axe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 9400, 0, 0); -- Baelog's Shortbow

-- Rogue
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 5060, 0, 0); -- Thieves' Tools
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2471, 0, 0); -- Reinforced Leather Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2473, 0, 0); -- Reinforced Leather Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2474, 0, 0); -- Reinforced Leather Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 3893, 0, 0); -- Reinforced Leather Cap
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2475, 0, 0); -- Reinforced Leather Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2472, 0, 0); -- Reinforced Leather Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2470, 0, 0); -- Reinforced Leather Vest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2528, 0, 0); -- Falchion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2534, 0, 0); -- Rondel
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2534, 0, 0); -- Rondel

-- Druid
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 2471, 0, 0); -- Reinforced Leather Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 2473, 0, 0); -- Reinforced Leather Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 2474, 0, 0); -- Reinforced Leather Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 3893, 0, 0); -- Reinforced Leather Cap
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 2475, 0, 0); -- Reinforced Leather Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 2472, 0, 0); -- Reinforced Leather Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 2470, 0, 0); -- Reinforced Leather Vest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 2535, 0, 0); -- War Staff

-- Warlock
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 21341, 0, 0); -- Felcloth Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 2435, 0, 0); -- Embroidered Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 3587, 0, 0); -- Embroidered Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 2438, 0, 0); -- Embroidered Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 3588, 0, 0); -- Embroidered Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 2440, 0, 0); -- Embroidered Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 3892, 0, 0); -- Embroidered Hat
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 2437, 0, 0); -- Embroidered Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 2535, 0, 0); -- War Staff

-- Priest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 2435, 0, 0); -- Embroidered Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 3587, 0, 0); -- Embroidered Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 2438, 0, 0); -- Embroidered Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 3588, 0, 0); -- Embroidered Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 2440, 0, 0); -- Embroidered Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 3892, 0, 0); -- Embroidered Hat
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 2437, 0, 0); -- Embroidered Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 2535, 0, 0); -- War Staff

-- Mage
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 36002, 0, 0); -- The Nade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 36003, 0, 0); -- The Wing
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 36004, 0, 0); -- The Rag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 36005, 0, 0); -- The Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 36006, 0, 0); -- Skeletal Steed Reins
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 2435, 0, 0); -- Embroidered Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 3587, 0, 0); -- Embroidered Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 2438, 0, 0); -- Embroidered Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 3588, 0, 0); -- Embroidered Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 2440, 0, 0); -- Embroidered Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 3892, 0, 0); -- Embroidered Hat
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 2437, 0, 0); -- Embroidered Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 2535, 0, 0); -- War Staff

-- Everlook Premade Item Template
DELETE FROM `player_premade_item_template` WHERE `entry` BETWEEN 100 AND 108;

INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (100, 1, 60, 1, 'Everlook Warrior');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (101, 2, 60, 1, 'Everlook Paladin');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (102, 7, 60, 1, 'Everlook Shaman');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (103, 3, 60, 1, 'Everlook Hunter');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (104, 4, 60, 1, 'Everlook Rogue');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (105, 11, 60, 1, 'Everlook Druid');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (106, 9, 60, 1, 'Everlook Warlock');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (107, 5, 60, 1, 'Everlook Priest');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (108, 8, 60, 1, 'Everlook Mage');

-- Mount
DELETE FROM `item_template` WHERE `entry`=36006 AND `patch`=0;
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`) VALUES (36006, 0, 15, 0, 'Skeletal Steed Reins', '', 24011, 4, 64, 1, 1000000, 250000, 0, -1, -1, 60, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29059, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1);

UPDATE `item_template` SET `patch`=0 WHERE `entry`=36003;
UPDATE `item_template` SET `patch`=0 WHERE `entry`=36004;
UPDATE `item_template` SET `patch`=0 WHERE `entry`=36005;

-- Delete NPCs
-- World Buffs
DELETE FROM `creature` WHERE `id`=90065;
DELETE FROM `creature` WHERE `id`=90099;

-- Add NPCs
-- Teleporters
DELETE FROM `creature` WHERE `id`=90066;
DELETE FROM `creature` WHERE `id`=90100;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000136, 90066, 0, 0, 0, 269, 2166.26, 46.8035, 52.9081, 5.31723, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000137, 90100, 0, 0, 0, 269, 2490.99, 1346.71, 20.8614, 6.01089, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Innkeepers
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000138, 11118, 0, 0, 0, 269, 2165.677, 17.5353, 52.909, 2.6732, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000139, 11118, 0, 0, 0, 269, 2485.789, 1341.502, 20.88, 5.481948, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Remove duel cd reset
DELETE FROM `mangos`.`spell_scripts` WHERE `id`=7266;