-- Vendor Dialogue
DELETE FROM `broadcast_text` WHERE `entry`=200003;
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`) VALUES (200003, 'Welcome to Everlook. Today, we are releasing Pre-Raid BiS gear for you to test out. Enjoy the templates and good luck in Molten Core.', 'Welcome to Everlook. Today, we are releasing Pre-Raid BiS gear for you to test out. Enjoy the templates and good luck in Molten Core.');

DELETE FROM `npc_text` WHERE `ID`=90009;
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (90009, 200003, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `npc_gossip` WHERE `textid`=90009;
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (2000111, 90009);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (2000126, 90009);

-- Premade PTR sets
DELETE FROM `player_premade_item` WHERE `entry` BETWEEN 100 AND 126;

-- Warrior
-- Arms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 16731, 1503, 0); -- Helm of Valor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 16733, 2488, 0); -- Spaulders of Valor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 13397, 849, 0); -- Stoneskin Gargoyle's Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 16730, 1891, 0); -- Breastplate of Valor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 12936, 1885, 0); -- Battleborn Armbraces
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 15063, 1887, 0); -- Devilsaur Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 13959, 0, 0); -- Omokk's Girth Restrainer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 15062, 1503, 0); -- Devilsaur Legging
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 16734, 911, 0); -- Boots of Valor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 17713, 0, 0); -- Blackstone Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 13965, 0, 0); -- Blackhand's Breadth
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 12592, 1900, 0); -- Blackblade of Shahram
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 12784, 1900, 0); -- Arcanite Reaper
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 11684, 1900, 0); -- Ironfoe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 12602, 1704, 0); -- Draconian Deflector
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (100, 12651, 2042, 0); -- Blackcrow

-- Fury
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 13404, 1506, 0); -- Mask of the Unforgiven
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 12927, 2488, 0); -- Truestrike Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 13340, 849, 0); -- Cape of the Black Baron
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 13944, 1891, 0); -- Tombstone Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 12936, 1885, 0); -- Battleborn Armbraces
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 15063, 927, 0); -- Devilsaur Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 13959, 0, 0); -- Omokk's Girth Restrainer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 15062, 1506, 0); -- Devilsaur Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 12555, 911, 0); -- Battlechaser's Greaves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 17713, 0, 0); -- Blackstone Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 13965, 0, 0); -- Blackhand's Breadth
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 11684, 1900, 0); -- Ironfoe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 12590, 1900, 0); -- Deathstriker
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 811, 1900, 0); -- Axe of the Deep Woods
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 871, 1900, 0); -- Flurry Axe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (101, 12651, 2042, 0); -- Blackcrow

-- Protection
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 11746, 1503, 0); -- Golem Skull Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 13091, 0, 0); -- Medallion of Grand Marshal Morris
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 14552, 2488, 0); -- Stockade Pauldrons
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 13397, 1888, 0); -- Stoneskin Gargoyle Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 11726, 1891, 0); -- Savage Gladiator's Chain
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 13951, 1886, 0); -- Vigorsteel Vambraces
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 13072, 1887, 0); -- Stonegrip Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 12115, 0, 0); -- Stalwart Clutch
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 12935, 1503, 0); -- Warmaster Legguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 14549, 911, 0); -- Boots of Avoidance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 2246, 0, 0); -- Myrmidon's Signet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 13373, 0, 0); -- Band of Flesh
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 13965, 0, 0); -- Blackhand's Breadth
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 11684, 1900, 0); -- Ironfoe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 12602, 1704, 0); -- Draconian Deflector
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 12590, 1900, 0); -- Deathstriker
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 811, 1900, 0); -- Axe of the Deep Woods
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 871, 1900, 0); -- Flurry Axe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (102, 12651, 2042, 0); -- Blackcrow

-- Paladin
-- Holy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 12633, 1509, 0); -- Whitesoul Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 12625, 2488, 0); -- Dawnbringer Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 13346, 1891, 0); -- Robes of the Exalted
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 13969, 1883, 0); -- Loomguard Armbraces
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 12554, 1887, 0); -- Hands of the Exalted Herald
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 14553, 0, 0); -- Sash of Mercy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 13170, 1509, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 13954, 911, 0); -- Verdant Footpads
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 16058, 0, 0); -- Fordring's Seal
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 11819, 0, 0); -- Second Wind
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 11923, 1900, 0); -- The Hammer of Grace
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (103, 11904, 0, 0); -- Spirit of Aquamentas

-- Protection
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 11746, 1503, 0); -- Golem Skull Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 13091, 0, 0); -- Medallion of Grand Marshal Morris
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 14552, 2488, 0); -- Stockade Pauldrons
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 13397, 1888, 0); -- Stoneskin Gargoyle Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 15413, 1891, 0); -- Deathbone Chest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 13951, 1886, 0); -- Vigorsteel Vambraces
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 13072, 1887, 0); -- Stonegrip Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 12115, 0, 0); -- Stalwart Clutch
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 12935, 1503, 0); -- Warmaster Legguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 14549, 911, 0); -- Boots of Avoidance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 2246, 0, 0); -- Myrmidon's Signet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 11669, 0, 0); -- Naglering
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 11810, 0, 0); -- Force of Will
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 11684, 1900, 0); -- Ironfoe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (104, 1168, 1704, 0); -- Skullflame Shield

-- Retribution
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 16727, 1508, 0); -- Lightforge Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 16729, 2488, 0); -- Lightforge Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 13340, 849, 0); -- Cape of the Black Baron
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 16726, 1891, 0); -- Lightforge Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 16722, 1885, 0); -- Lightforge Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 15063, 1887, 0); -- Devilsaur Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 16723, 0, 0); -- Lightforge Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 15062, 1508, 0); -- Devilsaur Legging
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 16725, 911, 0); -- Lightforge Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 17713, 0, 0); -- Blackstone Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 13965, 0, 0); -- Blackhand's Breath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (105, 12592, 1900, 0); -- Blackblade of Shahram

-- Shaman
-- Elemental
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 5175, 0, 0); -- Earth Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 5176, 0, 0); -- Fire Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 5177, 0, 0); -- Water Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 5178, 0, 0); -- Air Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 16667, 1509, 0); -- Coif of Elements
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 16669, 2488, 0); -- Pauldrons of Elements
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 16666, 1891, 0); -- Vest of Elements
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 16671, 1883, 0); -- Bindings of Elements
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 12632, 1887, 0); -- Storm Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 16673, 0, 0); -- Cord of Elements
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 16668, 1509, 0); -- Kilt of Elements
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 13954, 911, 0); -- Verdant Footpads
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 13968, 0, 0); -- Eye of the Beast
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 17780, 803, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (106, 11904, 0, 0); -- Spirit of Aquamentas

-- Enhancement
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 5175, 0, 0); -- Earth Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 5176, 0, 0); -- Fire Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 5177, 0, 0); -- Water Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 5178, 0, 0); -- Air Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 13404, 1508, 0); -- Mask of the Unforgiven
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 12927, 2488, 0); -- Truestrike Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 13340, 849, 0); -- Cape of the Black Baron
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 15056, 1891, 0); -- Stormshroud Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 12966, 1885, 0); -- Blackmist Armguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 12632, 1887, 0); -- Storm Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 13962, 0, 0); -- Vosh'Gajin's Strand
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 15057, 1508, 0); -- Stormshroud Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 13210, 911, 0); -- Pads of the Dread Wolf
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 17713, 0, 0); -- Blackstone Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 13965, 0, 0); -- Blackhand's Breath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 17780, 803, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 1168, 1704, 0); -- Skullflame Shield
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (107, 12784, 803, 0); -- Arcanite Reaper

-- Restoration
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 5175, 0, 0); -- Earth Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 5176, 0, 0); -- Fire Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 5177, 0, 0); -- Water Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 5178, 0, 0); -- Air Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 13102, 1483, 0); -- Cassandra's Grace
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 13013, 2488, 0); -- Elder Wizard's Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 12110, 1888, 0); -- Raincaster Drape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 13346, 1891, 0); -- Robes of the Exalted
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 13969, 1883, 0); -- Loomguard Armbraces
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 12554, 1887, 0); -- Hands of the Exalted Herald
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 14553, 0, 0); -- Sash of Mercy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 13170, 1483, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 13954, 911, 0); -- Verdant Footpads
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 16058, 0, 0); -- Fordring's Seal
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 11819, 0, 0); -- Second Wind
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 11923, 1900, 0); -- The Hammer of Grace
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (108, 11904, 0, 0); -- Spirit of Aquamentas

-- Hunter
-- Beast Mastery
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 2662, 0, 0); -- Harpy Hide Quiver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 13404, 1508, 0); -- Mask of the Unforgiven
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 12927, 2488, 0); -- Truestrike Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 13340, 849, 0); -- Cape of the Black Baron
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 14637, 1891, 0); -- Cadaverous Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 12966, 1883, 0); -- Blackmist Armguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 15063, 1887, 0); -- Devilsaur Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 14502, 0, 0); -- Frostbite Girdle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 15062, 1508, 0); -- Devilsaur Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 13210, 911, 0); -- Pads of the Dread Wolf
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 17713, 0, 0); -- Blackstone Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 13965, 0, 0); -- Blackhand's Breath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 12940, 1894, 0); -- Dal'Rend's Sacred Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 12939, 1894, 0); -- Dal'Rend's Tribal Guardian
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 13052, 1904, 0); -- Warmonger
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (109, 12651, 2042, 0); -- Blackcrow

-- Marksmanship
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 2662, 0, 0); -- Harpy Hide Quiver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 13404, 1508, 0); -- Mask of the Unforgiven
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 12927, 2488, 0); -- Truestrike Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 13340, 849, 0); -- Cape of the Black Baron
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 14637, 1891, 0); -- Cadaverous Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 12966, 1883, 0); -- Blackmist Armguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 15063, 1887, 0); -- Devilsaur Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 14502, 0, 0); -- Frostbite Girdle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 15062, 1508, 0); -- Devilsaur Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 13210, 911, 0); -- Pads of the Dread Wolf
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 17713, 0, 0); -- Blackstone Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 13965, 0, 0); -- Blackhand's Breath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 12940, 1894, 0); -- Dal'Rend's Sacred Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 12939, 1894, 0); -- Dal'Rend's Tribal Guardian
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 13052, 1904, 0); -- Warmonger
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (110, 12651, 2042, 0); -- Blackcrow

-- Survival
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 2662, 0, 0); -- Harpy Hide Quiver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 16677, 1508, 0); -- Beaststalker's Cap
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 16679, 2488, 0); -- Beaststalker's Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 13397, 849, 0); -- Stoneskin Gargoyle Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 16674, 1891, 0); -- Beaststalker's Tunic
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 16681, 1886, 0); -- Beaststalker's Bindings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 15063, 1887, 0); -- Devilsaur Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 16680, 0, 0); -- Beaststalker's Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 15062, 1508, 0); -- Devilsaur Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 16675, 911, 0); -- Beaststalker's Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 2246, 0, 0); -- Myrmidon's Signet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 13965, 0, 0); -- Blackhand's Breath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 12940, 1894, 0); -- Dal'Rend's Sacred Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 12939, 1894, 0); -- Dal'Rend's Tribal Guardian
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 13052, 1904, 0); -- Warmonger
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (111, 12651, 2042, 0); -- Blackcrow

-- Rogue
-- Assassination
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 5060, 0, 0); -- Thieves' Tools
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 13404, 1508, 0); -- Mask of the Unforgiven
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 16708, 2488, 0); -- Shadowcraft Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 13397, 849, 0); -- Stoneskin Gargoyle Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 16721, 1891, 0); -- Shadowcraft Tunic
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 16710, 1885, 0); -- Shadowcraft Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 16712, 1887, 0); -- Shadowcraft Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 16713, 0, 0); -- Shadowcraft Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 16709, 1508, 0); -- Shadowcraft Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 13210, 911, 0); -- Pads of the Dread Wolf
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 2246, 0, 0); -- Myrmidon's Signet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 13965, 0, 0); -- Blackhand's Breath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 1728, 1900, 0); -- Teebu's Blazing Longsword
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 10847, 1900, 0); -- Dragon's Call
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 11684, 1900, 0); -- Ironfoe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 11684, 1900, 0); -- Hand of Edward the Odd
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 12590, 1897, 0); -- Deathstriker
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 14555, 1897, 0); -- Alcor's Sunrazor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 12940, 1900, 0); -- Dal'Rend's Sacred Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 12939, 1900, 0); -- Dal'Rend's Tribal Guardian
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (112, 12651, 2042, 0); -- Blackcrow

-- Combat
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 5060, 0, 0); -- Thieves' Tools
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 13404, 1508, 0); -- Mask of the Unforgiven
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 12927, 2488, 0); -- Truestrike Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 13340, 849, 0); -- Cape of the Black Baron
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 14637, 1891, 0); -- Cadaverous Armor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 13120, 1885, 0); -- Deepfury Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 15063, 1887, 0); -- Devilsaur Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 13962, 0, 0); -- Vosh'Gajin's Strand
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 15062, 1508, 0); -- Devilsaur Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 13210, 911, 0); -- Pads of the Dread Wolf
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 17713, 0, 0); -- Blackstone Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 13965, 0, 0); -- Blackhand's Breath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 1728, 1900, 0); -- Teebu's Blazing Longsword
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 10847, 1900, 0); -- Dragon's Call
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 11684, 1900, 0); -- Ironfoe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 11684, 1900, 0); -- Hand of Edward the Odd
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 12590, 1897, 0); -- Deathstriker
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 14555, 1897, 0); -- Alcor's Sunrazor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 12940, 1900, 0); -- Dal'Rend's Sacred Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 12939, 1900, 0); -- Dal'Rend's Tribal Guardian
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (113, 12651, 2042, 0); -- Blackcrow

-- Subtlety
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 5060, 0, 0); -- Thieves' Tools
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 13404, 1508, 0); -- Mask of the Unforgiven
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 16708, 2488, 0); -- Shadowcraft Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 13397, 849, 0); -- Stoneskin Gargoyle Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 16721, 1891, 0); -- Shadowcraft Tunic
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 16710, 1885, 0); -- Shadowcraft Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 16712, 1887, 0); -- Shadowcraft Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 16713, 0, 0); -- Shadowcraft Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 16709, 1508, 0); -- Shadowcraft Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 13210, 911, 0); -- Pads of the Dread Wolf
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 13098, 0, 0); -- Painweaver Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 2246, 0, 0); -- Myrmidon's Signet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 13965, 0, 0); -- Blackhand's Breath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 1728, 1900, 0); -- Teebu's Blazing Longsword
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 10847, 1900, 0); -- Dragon's Call
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 11684, 1900, 0); -- Ironfoe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 11684, 1900, 0); -- Hand of Edward the Odd
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 12590, 1897, 0); -- Deathstriker
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 14555, 1897, 0); -- Alcor's Sunrazor
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 12940, 1900, 0); -- Dal'Rend's Sacred Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 12939, 1900, 0); -- Dal'Rend's Tribal Guardian
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (114, 12651, 2042, 0); -- Blackcrow

-- Druid
-- Balance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 16720, 1509, 0); -- Wildheart Cowl
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 16718, 2488, 0); -- Wildheart Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 16706, 1891, 0); -- Wildheart Vest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 16714, 1883, 0); -- Wildheart Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 13253, 1887, 0); -- Hands of Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 16716, 0, 0); -- Wildheart Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 13170, 1509, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 13954, 911, 0); -- Verdant Footpads
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 13968, 0, 0); -- Eye of the Beast
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 17780, 1900, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (115, 11904, 0, 0); -- Spirit of Aquamentas

-- Feral
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 13404, 1508, 0); -- Mask of the Unforgiven
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 15411, 0, 0); -- Mark of Fordring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 12927, 2488, 0); -- Truestrike Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 13340, 849, 0); -- Cape of the Black Baron
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 13944, 1891, 0); -- Tombstone Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 12966, 1885, 0); -- Blackmist Armguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 15063, 1887, 0); -- Devilsaur Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 13252, 0, 0); -- Cloudrunner Girdle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 15062, 1508, 0); -- Devilsaur Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 13210, 911, 0); -- Pads of the Dread Wolf
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 15855, 0, 0); -- Ring of Protection
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 17713, 0, 0); -- Blackstone Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 13966, 0, 0); -- Mark of Tyranny
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 13965, 0, 0); -- Blackhand's Breadth
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 11921, 34, 0); -- Impervious Giant
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 943, 34, 0); -- Warden Staff
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (116, 8345, 0, 0); -- Wolfshead Helm

-- Restoration
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 13216, 1483, 0); -- Crown of the Penitent
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 13013, 2488, 0); -- Elder Wizard's Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 13346, 1891, 0); -- Robes of the Exalted
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 13107, 1883, 0); -- Magiskull Cuffs
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 12554, 1887, 0); -- Hands of the Exalted Herald
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 14553, 0, 0); -- Sash of Mercy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 13170, 1483, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 13954, 911, 0); -- Verdant Footpads
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 16058, 0, 0); -- Fordring's Seal
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 11819, 0, 0); -- Second Wind
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 11923, 1900, 0); -- The Hammer of Grace
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (117, 11904, 0, 0); -- Spirit of Aquamentas

-- Warlock
-- Affliction
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 21341, 0, 0); -- Felcloth Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 14111, 1510, 0); -- Felcloth Hood
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 14112, 2488, 0); -- Felcloth Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 14153, 1891, 0); -- Robe of the Void
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 13107, 1883, 0); -- Magiskull Cuffs
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 13253, 1887, 0); -- Hands of Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 4329, 0, 0); -- Star Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 13170, 1510, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 11822, 911, 0); -- Omnicast Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 1980, 0, 0); -- Underworld Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 13968, 0, 0); -- Eye of the Beast
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 13937, 1904, 0); -- Headmaster's Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 17780, 1898, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (118, 13938, 0, 0); -- Bonecreeper Stylus

-- Demonology
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 21341, 0, 0); -- Felcloth Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 16698, 1503, 0); -- Dreadmist Mask
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 16701, 2488, 0); -- Dreadmist Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 16700, 1891, 0); -- Dreadmist Robe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 16703, 1883, 0); -- Dreadmist Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 13253, 1887, 0); -- Hands of Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 16702, 0, 0); -- Dreadmist Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 13170, 1503, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 16704, 911, 0); -- Dreadmist Sandals
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 1980, 0, 0); -- Underworld Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 13968, 0, 0); -- Eye of the Beast
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 13937, 1904, 0); -- Headmaster's Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 17780, 1898, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (119, 13938, 0, 0); -- Bonecreeper Stylus

-- Destruction
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 21341, 0, 0); -- Felcloth Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 14111, 1509, 0); -- Felcloth Hood
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 14112, 2488, 0); -- Felcloth Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 14153, 1891, 0); -- Robe of the Void
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 13107, 1883, 0); -- Magiskull Cuffs
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 13253, 1887, 0); -- Hands of Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 4329, 0, 0); -- Star Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 13170, 1509, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 11822, 911, 0); -- Omnicast Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 1980, 0, 0); -- Underworld Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 13968, 0, 0); -- Eye of the Beast
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 13937, 1904, 0); -- Headmaster's Charge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 17780, 1898, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (120, 13938, 0, 0); -- Bonecreeper Stylus

-- Priest
-- Discipline
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 13216, 1483, 0); -- Crown of the Penitent
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 16695, 2488, 0); -- Devout Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 14154, 1891, 0); -- Truefaith Vestments
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 16697, 1883, 0); -- Devout Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 12554, 1887, 0); -- Hands of the Exalted Herald
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 16696, 0, 0); -- Devout Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 13170, 1483, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 16691, 911, 0); -- Devout Sandals
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 16058, 0, 0); -- Fordring's Seal
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 11819, 0, 0); -- Second Wind
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 11923, 1900, 0); -- The Hammer of Grace
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (121, 13938, 0, 0); -- Bonecreeper Stylus

-- Holy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 21341, 0, 0); -- Felcloth Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 13216, 1483, 0); -- Cassandra's Grace
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 13013, 2488, 0); -- Elder Wizard's Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 14154, 1891, 0); -- Truefaith Vestments
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 13107, 1883, 0); -- Devout Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 12554, 1887, 0); -- Hands of the Exalted Herald
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 14143, 0, 0); -- Devout Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 13170, 1483, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 11822, 911, 0); -- Omnicast Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 16058, 0, 0); -- Fordring's Seal
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 11819, 0, 0); -- Second Wind
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 11923, 1900, 0); -- The Hammer of Grace
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (122, 13938, 0, 0); -- Bonecreeper Stylus

-- Shadow
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 14111, 1483, 0); -- Felcloth Hood
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 14112, 2488, 0); -- Felcloth Shoulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 14136, 1891, 0); -- Robe of Winter Night
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 13107, 1883, 0); -- Magiskull Cuffs
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 13253, 1887, 0); -- Hands of Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 4329, 0, 0); -- Star Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 13170, 1483, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 11822, 911, 0); -- Omnicast Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 1980, 0, 0); -- Underworld Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 11832, 0, 0); -- Burst of Knowledge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 17780, 1898, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (123, 13938, 0, 0); -- Bonecreeper Stylus

-- Mage
-- Arcane
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 16686, 1509, 0); -- Magister's Crown
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 13013, 2488, 0); -- Elder Wizard's Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 14152, 1891, 0); -- Robe of the Archmage
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 16683, 1883, 0); -- Magister's Bindings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 13253, 1887, 0); -- Hands of Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 16685, 0, 0); -- Magister's Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 13170, 1509, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 16682, 911, 0); -- Magister's Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 13968, 0, 0); -- Eye of the Beast
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 17780, 1898, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (124, 13938, 0, 0); -- Bonecreeper Stylus

-- Fire
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 3075, 1509, 0); -- Eye of Flame
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 11310, 2488, 0); -- Flameseer Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 14152, 1891, 0); -- Robe of the Archmage
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 16683, 1883, 0); -- Magister's Bindings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 13253, 1887, 0); -- Hands of Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 4117, 0, 0); -- Scorching Sash
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 13170, 1509, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 13369, 911, 0); -- Fire Striders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 13001, 0, 0); -- Maiden's Circle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 13968, 0, 0); -- Eye of the Beast
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 17780, 803, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 944, 1904, 0); -- Elemental Mage Staff
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (125, 13938, 0, 0); -- Bonecreeper Stylus

-- Frost
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 40030, 0, 0); -- Walltoken
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 16686, 1509, 0); -- Magister's Crown
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 13141, 0, 0); -- Tooth of Gnarr
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 11782, 2488, 0); -- Boreal Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 15421, 1888, 0); -- Shroud of the Exile
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 14152, 1891, 0); -- Robe of the Archmage
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 16683, 1883, 0); -- Magister's Bindings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 13253, 1887, 0); -- Hands of Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 16685, 0, 0); -- Magister's Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 13170, 1509, 0); -- Skyshroud Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 16682, 911, 0); -- Magister's Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 942, 0, 0); -- Freezing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 942, 0, 0); -- Freezing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 12930, 0, 0); -- Briarwood Reed
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 13968, 0, 0); -- Eye of the Beast
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 17780, 1894, 0); -- Blade of Eternal Darkness
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 11904, 0, 0); -- Spirit of Aquamentas
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 944, 1904, 0); -- Elemental Mage Staff
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (126, 13938, 0, 0); -- Bonecreeper Stylus

-- Everlook Premade Item Template
DELETE FROM `player_premade_item_template` WHERE `entry` BETWEEN 100 AND 126;

INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (100, 1, 60, 1, 'Everlook Warrior - Arms');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (101, 1, 60, 1, 'Everlook Warrior - Fury');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (102, 1, 60, 1, 'Everlook Warrior - Protection');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (103, 2, 60, 1, 'Everlook Paladin - Holy');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (104, 2, 60, 1, 'Everlook Paladin - Protection');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (105, 2, 60, 1, 'Everlook Paladin - Retribution');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (106, 7, 60, 1, 'Everlook Shaman - Elemental');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (107, 7, 60, 1, 'Everlook Shaman - Enhancement');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (108, 7, 60, 1, 'Everlook Shaman - Restoration');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (109, 3, 60, 1, 'Everlook Hunter - Beast Mastery');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (110, 3, 60, 1, 'Everlook Hunter - Marksmanship');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (111, 3, 60, 1, 'Everlook Hunter - Survival');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (112, 4, 60, 1, 'Everlook Rogue - Assassination');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (113, 4, 60, 1, 'Everlook Rogue - Combat');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (114, 4, 60, 1, 'Everlook Rogue - Subtlety');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (115, 11, 60, 1, 'Everlook Druid - Balance');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (116, 11, 60, 1, 'Everlook Druid - Feral');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (117, 11, 60, 1, 'Everlook Druid - Restoration');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (118, 9, 60, 1, 'Everlook Warlock - Affliction');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (119, 9, 60, 1, 'Everlook Warlock - Demonology');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (120, 9, 60, 1, 'Everlook Warlock - Destruction');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (121, 5, 60, 1, 'Everlook Priest - Discipline');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (122, 5, 60, 1, 'Everlook Priest - Holy');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (123, 5, 60, 1, 'Everlook Priest - Shadow');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (124, 8, 60, 1, 'Everlook Mage - Arcane');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (125, 8, 60, 1, 'Everlook Mage - Fire');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (126, 8, 60, 1, 'Everlook Mage - Frost');

