-- Vendor Dialogue
DELETE FROM `broadcast_text` WHERE `entry`=200003;
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`) VALUES (200003, 'Welcome to Everlook. Zul\'Gurub is now available.', 'Welcome to Everlook. Ahn\'Qiraj is now available.');

-- Premade PTR sets
DELETE FROM `player_premade_item` WHERE `entry` BETWEEN 145 AND 153;

-- Warrior
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21329, 1503, 0); -- Conqueror's Crown
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 18404, 0, 0); -- Onyxia Tooth Pendant
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21330, 2488, 0); -- Conqueror's Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 18541, 849, 0); -- Puissant Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21331, 1891, 0); -- Conqueror's Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21602, 1886, 0); -- Qiraji Execution Bracer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21581, 1887, 0); -- Gauntlets of Annihilation
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 19137, 0, 0); -- Onslaught Girdle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21332, 1503, 0); -- Conqueror's Legguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21333, 911, 0); -- Conqueror's Greaves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 19384, 0, 0); -- Master Dragonslayer's Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21670, 0, 0); -- Badge of the Swamguard
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 23570, 0, 0); -- Jom Gabbar
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21134, 1900, 0); -- Dark Edge of Insanity
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21126, 1900, 0); -- Death's Sting
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21269, 1704, 0); -- Blessed Qiraji Bulwark
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 23557, 1900, 0); -- Larvae of the Great Worm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21244, 1900, 0); -- Blessed Qiraji Pugio
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21242, 1900, 0); -- Blessed Qiraji War Axe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21268, 1900, 0); -- Blessed Qiraji War Hammer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (145, 21650, 1900, 0); -- Ancient Qiraji Ripper


-- Paladin
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21387, 2544, 0); -- Avenger's Crown
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 17111, 0, 0); -- Blazefury Medallion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21391, 2488, 0); -- Avenger's Pauldrons
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 18541, 1888, 0); -- Puissant Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21389, 1891, 0); -- Avenger's Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21602, 1883, 0); -- Qiraji Exeuction Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21623, 1887, 0); -- Gauntlets of the Righteous Champion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 19137, 0, 0); -- Onslaught Girdle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21390, 2544, 0); -- Avenger's Legguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21388, 911, 0); -- Avenger's Greaves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 19384, 0, 0); -- Master Dragonslayer's Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21670, 0, 0); -- Badge of the Swarmguard
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 23570, 0, 0); -- Jom Gabbar
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21134, 1900, 0); -- Dark Edge of Insanity
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21610, 1704, 0); -- Wormscale Blocker
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21242, 1900, 0); -- Blessed Qiraji War Axe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21268, 1900, 0); -- Blessed Qiraji War Hammer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (146, 21650, 1900, 0); -- Ancient Qiraji Ripper


-- Shaman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 5175, 0, 0); -- Earth Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 5176, 0, 0); -- Fire Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 5177, 0, 0); -- Water Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 5178, 0, 0); -- Air Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21372, 2544, 0); -- Stormcaller's Diadem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21608, 0, 0); -- Amulet of Vek'nilash
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21376, 2488, 0); -- Stormcaller's Pauldrons
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 22731, 1888, 0); -- Cloak of the Devoured
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21374, 1891, 0); -- Stormcaller's Hauberk
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21611, 1883, 0); -- Burrower Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21624, 1887, 0); -- Gauntlets of Kalimdor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 19388, 0, 0); -- Angelista's Grasp
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21375, 2544, 0); -- Stormcaller's Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21373, 911, 0); -- Stormcaller's Footguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21709, 0, 0); -- Ring of the Fallen God
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21190, 0, 0); -- Wrath of Cenarius
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21670, 0, 0); -- Badge of the Swarmguard
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 23570, 0, 0); -- Jom Gabbar
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21134, 1900, 0); -- Dark Edge of Insanity
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21126, 1900, 0); -- Death's Sting
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21610, 1704, 0); -- Wormscale Buckler
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (147, 21242, 1900, 0); -- Blessed Qiraji War Axe

-- Hunter
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 18714, 0, 0); -- Ancient Sinew Wrapped Lamina
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21366, 1508, 0); -- Striker's Diadem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 19377, 0, 0); -- Prestor's Talisman of Connivery
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21367, 2488, 0); -- Striker's Pauldrons
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 18541, 849, 0); -- Puissant Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21370, 1891, 0); -- Striker's Hauberk
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21602, 1883, 0); -- Qiraji Execution Bracer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21599, 1887, 0); -- Vek'lor's Gloves of Devastation
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21586, 0, 0); -- Belt of Never-ending Agony
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21368, 1508, 0); -- Striker's Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21365, 911, 0); -- Striker's Footguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21596, 0, 0); -- Ring of the Godslayer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21670, 0, 0); -- Badge of the Swarmguard
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 23570, 0, 0); -- Jom Gabbar
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 21134, 1900, 0); -- Dark Edge of Insanity
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (148, 23557, 1900, 0); -- Larvae of the Great Worm

-- Rogue
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 5060, 0, 0); -- Thieves' Tools
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21360, 1508, 0); -- Deathdealer's Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 19377, 0, 0); -- Prestor's Talisman of Connivery
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21361, 2488, 0); -- Deathdealer's Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 18541, 849, 0); -- Puissant Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21364, 1891, 0); -- Deathdealer's Vest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21602, 1885, 0); -- Qiraji Execution Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 16907, 1887, 0); -- Bloodfang Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21586, 0, 0); -- Belt of Never-ending Agony
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21362, 1508, 0); -- Deathdealer's Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21359, 911, 0); -- Deathdealer's Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 19384, 0, 0); -- Master Dragonslayer's Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21670, 0, 0); -- Badge of the Swarmguard
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 23570, 0, 0); -- Jom Gabbar
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21126, 1900, 0); -- Death's Sting
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 23557, 1900, 0); -- Larvae of the Great Worm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21244, 1900, 0); -- Blessed Qiraji Pugio
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (149, 21650, 1900, 0); -- Ancient Qiraji Ripper

-- Druid
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21353, 2544, 0); -- Genesis Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21608, 0, 0); -- Amulet of Vek'nilash
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21354, 2488, 0); -- Genesis Shoulderpads
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 22731, 1888, 0); -- Cloak of the Devoured
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21357, 1891, 0); -- Genesis Vest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21611, 1883, 0); -- Burrower Bracer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21585, 1887, 0); -- Dark Storm Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 19388, 0, 0); -- Angelista's Grasp
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21356, 2544, 0); -- Genesis Trousers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21355, 911, 0); -- Genesis Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21709, 0, 0); -- Ring of the Fallen God
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21190, 0, 0); -- Wrath of Cenarius
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21647, 0, 0); -- Fetish of the Sand Reaver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 23558, 0, 0); -- The Burrower's Shell
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (150, 21273, 1900, 0); -- Blessed Qiraji Acolyte Staff

-- Warlock
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21341, 0, 0); -- Felcloth Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21337, 2544, 0); -- Doomcaller's Circlet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21608, 0, 0); -- Amulet of Vek'nilash
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21335, 2488, 0); -- Doomcaller's Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 22731, 1888, 0); -- Cloak of the Devoured
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21334, 1891, 0); -- Doomcaller's Robes
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21611, 1883, 0); -- Burrower Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21585, 1887, 0); -- Dark Storm Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 19388, 0, 0); -- Angelista's Grasp
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21336, 2544, 0); -- Doomcaller's Trousers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21338, 911, 0); -- Doomcaller's Footwraps
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21709, 0, 0); -- Ring of the Fallen God
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21190, 0, 0); -- Wrath of Cenarius
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21647, 0, 0); -- Fetish of the Sand Reaver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 23558, 0, 0); -- The Burrower's Shell
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21273, 1900, 0); -- Blessed Qiraji Acolyte Staff
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (151, 21603, 0, 0); -- Wand of Qiraji Nobility

-- Priest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21348, 2544, 0); -- Tiara of the Oracle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21608, 0, 0); -- Amulet of Vek'nilash
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21350, 2488, 0); -- Mantle of the Oracle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 22731, 1888, 0); -- Cloak of the Devoured
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21351, 1891, 0); -- Vestments of the Oracle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21611, 1883, 0); -- Burrower Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21585, 1887, 0); -- Dark Storm Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 19388, 0, 0); -- Angelista's Grasp
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21352, 2544, 0); -- Trousers of the Oracle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21349, 911, 0); -- Footwraps of the Oracle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21709, 0, 0); -- Ring of the Fallen God
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21190, 0, 0); -- Wrath of Cenarius
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21647, 0, 0); -- Fetish of the Sand Reaver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 23558, 0, 0); -- The Burrower's Shell
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21275, 1900, 0); -- Blessed Qiraji Augur Staff
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (152, 21603, 0, 0); -- Wand of Qiraji Nobility

-- Mage
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21347, 2544, 0); -- Enigma Circlet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21608, 0, 0); -- Amulet of Vek'nilash
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21345, 2488, 0); -- Enigma Shoulderpads
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 22731, 1888, 0); -- Cloak of the Devoured
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21343, 1891, 0); -- Enigma Robes
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21585, 1883, 0); -- Dark Storm Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 19388, 1887, 0); -- Angelista's Grasp
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 19388, 0, 0); -- Angelista's Grasp
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21346, 2544, 0); -- Enigma Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21344, 911, 0); -- Enigma Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21709, 0, 0); -- Ring of the Fallen God
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21190, 0, 0); -- Wrath of Cenarius
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21647, 0, 0); -- Fetish of the Sand Reaver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 23558, 0, 0); -- The Burrower's Shell
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21273, 1900, 0); -- Blessed Qiraji Acolyte Staff
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (153, 21603, 0, 0); -- Wand of Qiraji Nobility

-- Everlook Premade Item Template
DELETE FROM `player_premade_item_template` WHERE `entry` BETWEEN 145 AND 153;

INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (145, 1, 60, 1, 'Everlook AQ Warrior');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (146, 2, 60, 1, 'Everlook AQ Paladin');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (147, 7, 60, 1, 'Everlook AQ Shaman');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (148, 3, 60, 1, 'Everlook AQ Hunter');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (149, 4, 60, 1, 'Everlook AQ Rogue');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (150, 11, 60, 1, 'Everlook AQ Druid');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (151, 9, 60, 1, 'Everlook AQ Warlock');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (152, 5, 60, 1, 'Everlook AQ Priest');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (153, 8, 60, 1, 'Everlook AQ Mage');