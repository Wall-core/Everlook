-- Vendor Dialogue
DELETE FROM `broadcast_text` WHERE `entry`=200003;
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`) VALUES (200003, 'Welcome to Everlook. Zul\'Gurub is now available.', 'Welcome to Everlook. Zul\'Gurub is now available.');

-- Premade PTR sets
DELETE FROM `player_premade_item` WHERE `entry` BETWEEN 136 AND 144;

-- Warrior
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 16963, 1503, 0); -- Helm of Wrath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 18404, 0, 0); -- Onyxia Tooth Pendant
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 16961, 2488, 0); -- Pauldrons of Wrath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 18541, 849, 0); -- Puissant Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 16966, 1891, 0); -- Breastplate of Wrath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 16959, 1886, 0); -- Bracelets of Wrath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 16964, 1887, 0); -- Gauntlets of Wrath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 16960, 0, 0); -- Waistband of Wrath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 16962, 1503, 0); -- Legplates of Wrath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 16965, 911, 0); -- Sabatons of Wrath
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19384, 0, 0); -- Master Dragonslayer's Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19341, 0, 0); -- Lifegiving Gem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19406, 0, 0); -- Drake Fang Talisman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19334, 1900, 0); -- The Untamed Blade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19353, 1900, 0); -- Drake Talon Cleaver
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19349, 1704, 0); -- Elementium Reinforced Bulwark
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19352, 1900, 0); -- Chromatically Tempered Sword
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19351, 1900, 0); -- Maladath, Runed Blade of the Black Flight
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19363, 1900, 0); -- Crul'shorukh, Edge of Chaos
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 19362, 1900, 0); -- Doom's Edge
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (136, 17069, 2523, 0); -- Striker's Mark

-- Paladin
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 16955, 2544, 0); -- Judgement Crown
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 17111, 0, 0); -- Blazefury Medallion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 16953, 2488, 0); -- Judgement Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 19378, 1888, 0); -- Cloak of the Brood Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 16958, 1891, 0); -- Judgement Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 16951, 1883, 0); -- Judgement Bindings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 16956, 1887, 0); -- Judgement Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 16952, 0, 0); -- Judgement Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 16954, 2544, 0); -- Judgement Legplates
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 16957, 911, 0); -- Judgement Sabatons
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 19384, 0, 0); -- Master Dragonslayer's Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 19343, 0, 0); -- Scrolls of Blinding Light
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 19406, 0, 0); -- Drake Fang Talisman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 19360, 2504, 0); -- Lok'amir il Romathis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 19348, 1704, 0); -- Red Dragonscale Protector
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (137, 19334, 1900, 0); -- The Untamed Blade

-- Shaman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 5175, 0, 0); -- Earth Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 5176, 0, 0); -- Fire Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 5177, 0, 0); -- Water Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 5178, 0, 0); -- Air Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 16947, 2544, 0); -- Helmet of Ten Storms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 17111, 0, 0); -- Blazefury Medallion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 16945, 2488, 0); -- Epaulets of Ten Storms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 19378, 1888, 0); -- Cloak of the Brood Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 16950, 1891, 0); -- Breastplate of Ten Storms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 16943, 1883, 0); -- Bracers of Ten Storms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 16948, 1887, 0); -- Gauntlets of Ten Storms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 16944, 0, 0); -- Belt of Ten Storms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 16946, 2544, 0); -- Legplates of Ten Storms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 16949, 911, 0); -- Greaves of Ten Storms
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 19382, 0, 0); -- Pure Elementium Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 19403, 0, 0); -- Band of Forced Concentration
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 19344, 0, 0); -- Natural Alignment Crystal
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 19379, 0, 0); -- Neltharion's Tear
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 19360, 2504, 0); -- Lok'amir il Romathis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 19348, 1704, 0); -- Red Dragonscale Protector
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (138, 19353, 1900, 0); -- Drake Talon Cleaver


-- Hunter
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 18714, 0, 0); -- Ancient Sinew Wrapped Lamina
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 16939, 1508, 0); -- Dragonstalker's Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 19377, 0, 0); -- Prestor's Talisman of Connivery
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 16937, 2488, 0); -- Dragonstalker's Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 19398, 849, 0); -- Cloak of Firemaw
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 16942, 1891, 0); -- Dragonstalker's Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 16935, 1883, 0); -- Dragonstalker's Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 16940, 1887, 0); -- Dragonstalker's Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 16936, 0, 0); -- Dragonstalker's Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 16938, 1508, 0); -- Dragonstalker's Legguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 16941, 911, 0); -- Dragonstalker's Greaves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 19325, 0, 0); -- Don Julio's Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 19376, 0, 0); -- Archimtiros' Ring of Reckoning
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 19336, 0, 0); -- Arcane Infused Gem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 19406, 0, 0); -- Drake Fang Talisman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 19364, 37, 0); -- Ashkandi, Greatsword of the Brotherhood
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (139, 19361, 2523, 0); -- Ashjre'thul, Crossbow of Smiting

-- Rogue
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 5060, 0, 0); -- Thieves' Tools
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 16908, 1508, 0); -- Bloodfang Hood
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 19377, 0, 0); -- Prestor's Talisman of Connivery
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 16832, 2488, 0); -- Bloodfang Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 18541, 849, 0); -- Puissant Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 16905, 1891, 0); -- Bloodfang Chestpiece
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 16911, 1885, 0); -- Bloodfang Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 16907, 1887, 0); -- Bloodfang Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 16910, 0, 0); -- Bloodfang Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 16909, 1508, 0); -- Bloodfang Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 16906, 911, 0); -- Bloodfang Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 19384, 0, 0); -- Master Dragonslayer's Ring
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 19342, 0, 0); -- Venomous Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 19406, 0, 0); -- Drake Fang Talisman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 19352, 1900, 0); -- Chromatically Tempered Sword
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 19351, 1900, 0); -- Maladath, Runed Blade of the Black Flight
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 18816, 1900, 0); -- Perdition's Blade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 19346, 1900, 0); -- Dragonfang Blade 
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (140, 19368, 2523, 0); -- Dragonbreath Hand Cannon

-- Druid
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 16900, 2544, 0); -- Stormrage Cover
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 19371, 0, 0); -- Pendant of the Fallen Dragon
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 16902, 2488, 0); -- Stormrage Pauldrons
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 19430, 1888, 0); -- Shroud of Pure Thought
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 16897, 1891, 0); -- Stormrage Chestguard
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 16904, 1883, 0); -- Stormrage Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 16899, 1887, 0); -- Stormrage Handguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 16903, 0, 0); -- Stormrage Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 16901, 2544, 0); -- Stormrage Legguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 16898, 911, 0); -- Stormrage Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 19382, 0, 0); -- Pure Elementium Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 19138, 0, 0); -- Band of Sulfuras
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 19395, 0, 0); -- Rejuvenating Gem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 19340, 0, 0); -- Rune of Metamorphosis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 19360, 2505, 0); -- Lok'amir il Romathis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (141, 19312, 0, 0); -- Lei of the Lifegiver

-- Warlock
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 21341, 0, 0); -- Felcloth Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 16929, 2544, 0); -- Nemesis Skullcap
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 18814, 0, 0); -- Choker of the Fire Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 16932, 2488, 0); -- Nemesis Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 19378, 1888, 0); -- Cloak of the Brood Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 16931, 1891, 0); -- Nemesis Robes
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 16934, 1883, 0); -- Nemesis Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 16928, 1887, 0); -- Nemesis Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 16933, 0, 0); -- Nemesis Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 16930, 2544, 0); -- Nemesis Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 16927, 911, 0); -- Nemesis Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 19403, 0, 0); -- Band of Forced Concentration
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 19434, 0, 0); -- Band of Dark Dominion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 19337, 0, 0); -- The Black Book
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 19379, 0, 0); -- Neltharion's Tear
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 19356, 2504, 0); -- Staff of the Shadow Flame
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (142, 19367, 0, 0); -- Dragon's Touch

-- Priest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 16921, 2544, 0); -- Halo of Transcendence
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 19371, 0, 0); -- Pendant of the Fallen Dragon
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 16924, 2488, 0); -- Pauldrons of Transcendence
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 19430, 1888, 0); -- Shroud of Pure Thought
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 16923, 1891, 0); -- Robes of Transcendence
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 16926, 1883, 0); -- Bindings of Transcendence
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 16920, 1887, 0); -- Handguards of Transcendence
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 16925, 0, 0); -- Belt of Transcendence
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 16922, 2544, 0); -- Leggings of Transcendence
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 16919, 911, 0); -- Boots of Transcendence
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 19382, 0, 0); -- Pure Elementium Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 19140, 0, 0); -- Cauterizing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 19345, 0, 0); -- Aegis of Preservation
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 19395, 0, 0); -- Rejuvenating Gem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 18608, 2505, 0); -- Benediction
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (143, 19367, 0, 0); -- Dragon's Touch

-- Mage
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 16914, 2544, 0); -- Netherwind Crown
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 18814, 0, 0); -- Choker of the Fire Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 16917, 2488, 0); -- Netherwind Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 19378, 1888, 0); -- Cloak of the Brood Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 16916, 1891, 0); -- Netherwind Robes
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 16918, 1883, 0); -- Netherwind Bindings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 16913, 1887, 0); -- Netherwind Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 16818, 0, 0); -- Netherwind Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 16915, 2544, 0); -- Netherwind Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 16912, 911, 0); -- Netherwind Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 19403, 0, 0); -- Band of Forced Concentration
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 18543, 0, 0); -- Ring of Entropy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 19339, 0, 0); -- Mind Quickening Gem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 19379, 0, 0); -- Neltharion's Tear
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 19356, 2504, 0); -- Staff of the Shadow Flame
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (144, 19367, 0, 0); -- Dragon's Touch

-- Everlook Premade Item Template
DELETE FROM `player_premade_item_template` WHERE `entry` BETWEEN 136 AND 144;

INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (136, 1, 60, 1, 'Everlook T2 Warrior');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (137, 2, 60, 1, 'Everlook T2 Paladin');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (138, 7, 60, 1, 'Everlook T2 Shaman');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (139, 3, 60, 1, 'Everlook T2 Hunter');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (140, 4, 60, 1, 'Everlook T2 Rogue');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (141, 11, 60, 1, 'Everlook T2 Druid');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (142, 9, 60, 1, 'Everlook T2 Warlock');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (143, 5, 60, 1, 'Everlook T2 Priest');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (144, 8, 60, 1, 'Everlook T2 Mage');