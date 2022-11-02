-- Vendor Dialogue
DELETE FROM `broadcast_text` WHERE `entry`=200003;
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`) VALUES (200003, 'Welcome to Everlook. Blackwing Lair and Battleground are now available, along with T1 premade sets.', 'Welcome to Everlook. Blackwing Lair and Battleground are now available, along with T1 premade sets.');

-- Premade PTR sets
DELETE FROM `player_premade_item` WHERE `entry` BETWEEN 127 AND 135;

-- Warrior
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 16864, 0, 0); -- Belt of Might
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 16862, 911, 0); -- Sabatons of Might
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 16861, 1886, 0); -- Bracers of Might
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 16865, 1891, 0); -- Breastplate of Might
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 16863, 1887, 0); -- Gauntlets of Might
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 16866, 1503, 0); -- Helm of Might
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 16867, 1503, 0); -- Legplates of Might
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 16868, 2488, 0); -- Pauldrons of Might
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 18205, 0, 0); -- Eskhander's Collar
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 18204, 1888, 0); -- Eskhander's Pelt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 19325, 0, 0); -- Don Julio's Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 18834, 0, 67); -- Insignia of the Horde
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 18854, 0, 469); -- Insignia of the Alliance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 18406, 0, 0); -- Onyxia Blood Talisman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 18203, 1900, 0); -- Eskhander's Right Claw
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 18202, 1900, 0); -- Eskhander's Left Claw
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 17069, 2523, 0); -- Striker's Mark
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 17066, 929, 0); -- Drillborer Disk
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (127, 18822, 1900, 0); -- Obsidian Edged Blade

-- Paladin
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 16858, 0, 0); -- Lawbringer Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 16859, 911, 0); -- Lawbringer Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 16857, 2566, 0); -- Lawbringer Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 16853, 1891, 0); -- Lawbringer Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 16860, 1887, 0); -- Lawbringer Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 16854, 1483, 0); -- Lawbringer Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 16855, 1483, 0); -- Lawbringer Legplates 
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 16856, 2488, 0); -- Lawbringer Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 17111, 0, 0); -- Blazefury Medallion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 18510, 1888, 0); -- Hide of the Wild
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 19325, 0, 0); -- Don Julio's Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 18864, 0, 469); -- Insignia of the Alliance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 18820, 0, 0); -- Talisman of Ephemeral Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 17105, 2505, 0); -- Aurastone Hammer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 17106, 929, 0); -- Malistar's Defender
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (128, 18822, 1900, 0); -- Obsidian Edged Blade

-- Shaman
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 5175, 0, 0); -- Earth Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 5176, 0, 0); -- Fire Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 5177, 0, 0); -- Water Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 5178, 0, 0); -- Air Totem
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 16840, 2566, 0); -- Earthfury Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 16837, 911, 0); -- Earthfury Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 16842, 1483, 0); -- Earthfury Helmet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 16838, 0, 0); -- Earthfury Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 16839, 1887, 0); -- Earthfury Gauntlets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 16843, 1483, 0); -- Earthfury Legguards
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 16844, 2488, 0); -- Earthfury Epaulets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 16841, 1891, 0); -- Earthfury Vestments
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 17111, 0, 0); -- Blazefury Medallion
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 18510, 1888, 0); -- Hide of the Wild
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 19140, 0, 0); -- Cauterizing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 19140, 0, 0); -- Cauterizing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 18845, 0, 67); -- Insignia of the Horde
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 18820, 0, 0); -- Talisman of Ephemeral Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 17105, 2505, 0); -- Aurastone Hammer
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 17106, 929, 0); -- Malistar's Defender
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (129, 17073, 1900, 0); -- Earthshaker


-- Hunter
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 18714, 0, 0); -- Ancient Sinew Wrapped Lamina
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 16851, 0, 0); -- Giantstalker's Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 16850, 1886, 0); -- Giantstalker's Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 16849, 911, 0); -- Giantstalker's Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 16846, 1508, 0); -- Giantstalker's Helmet
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 16852, 1887, 0); -- Giantstalker's Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 16848, 2488, 0); -- Giantstalker's Epaulets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 16847, 1508, 0); -- Giantstalker's Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 16845, 1891, 0); -- Giantstalker's Breastplate
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 18404, 0, 0); -- Onyxia Tooth Pendant
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 18541, 1888, 0); -- Puissant Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 19325, 0, 0); -- Don Julio's Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 18846, 0, 67); -- Insignia of the Horde
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 18856, 0, 469); -- Insignia of the Alliance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 13965, 0, 0); -- Blackhand's Breadth
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 18715, 1904, 0); -- Lok'delar, Stave of the Ancient Keepers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (130, 18713, 2523, 0); -- Rhok'delar, Longbow of the Ancient Keepers

-- Rogue
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 5060, 0, 0); -- Thieves' Tools
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 16827, 0, 0); -- Nightslayer Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 16824, 911, 0); -- Nightslayer Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 16825, 1886, 0); -- Nightslayer Bracelets
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 16821, 1508, 0); -- Nightslayer Cover
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 16826, 1887, 0); -- Nightslayer Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 16822, 1508, 0); -- Nightslayer Pants
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 16823, 2488, 0); -- Nightslayer Shoulder Pads
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 16820, 1891, 0); -- Nightslayer Chestpiece
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 18404, 0, 0); -- Onyxia Tooth Pendant
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 18541, 1888, 0); -- Puissant Cape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 19325, 0, 0); -- Don Julio's Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 17063, 0, 0); -- Band of Accuria
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 18849, 0, 67); -- Insignia of the Horde
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 18857, 0, 469); -- Insignia of the Alliance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 11815, 0, 0); -- Hand of Justice
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 17075, 1900, 0); -- Vis'kag the Bloodletter
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 18832, 1900, 0); -- Brutality Blade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 17069, 2523, 0); -- Striker's Mark
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 18816, 1900, 0); -- Perdition's Blade
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (131, 18805, 1900, 0); -- Core Hound Tooth

-- Druid
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 16828, 0, 0); -- Cenarion Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 16829, 911, 0); -- Cenarion Boots
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 16830, 2566, 0); -- Cenarion Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 16834, 1483, 0); -- Cenarion Helm
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 16831, 1887, 0); -- Cenarion Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 16835, 1483, 0); -- Cenarion Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 16836, 2488, 0); -- Cenarion Spaulders
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 16833, 1891, 0); -- Cenarion Vestments
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 18814, 0, 0); -- Choker of the Fire Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 18510, 1888, 0); -- Hide of the Wild
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 19140, 0, 0); -- Cauterizing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 19140, 0, 0); -- Cauterizing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 18853, 0, 67); -- Insignia of the Horde
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 18863, 0, 469); -- Insignia of the Alliance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 18820, 0, 0); -- Talisman of Ephemeral Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (132, 18842, 2505, 0); -- Staff of Dominance

-- Warlock
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 21341, 0, 0); -- Felcloth Bag
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 16806, 0, 0); -- Deathmist Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 16804, 1886, 0); -- Deathmist Bracers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 16810, 1483, 0); -- Deathmist Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 16807, 2488, 0); -- Deathmist Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 16808, 1483, 0); -- Deathmist Mask
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 16809, 1891, 0); -- Deathmist Robe
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 16803, 911, 0); -- Deathmist Sandals
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 16805, 1887, 0); -- Deathmist Wraps
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 18814, 0, 0); -- Choker of the Fire Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 17078, 1888, 0); -- Sapphiron Drape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 19147, 0, 0); -- Ring of Spell Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 19147, 0, 0); -- Ring of Spell Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 18852, 0, 67); -- Insignia of the Horde
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 18858, 0, 469); -- Insignia of the Alliance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 18820, 0, 0); -- Talisman of Ephemeral Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 18842, 2504, 0); -- Staff of Dominance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (133, 13938, 0, 0); -- Bonecreeper Stylus

-- Priest
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 16817, 0, 0); -- Girdle of Prophecy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 16819, 2566, 0); -- Vambraces of Prophecy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 16813, 1483, 0); -- Circlet of Prophecy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 16812, 1887, 0); -- Gloves of Prophecy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 16816, 2488, 0); -- Mantle of Prophecy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 16815, 1891, 0); -- Robes of Prophecy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 16811, 911, 0); -- Boots of Prophecy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 16814, 1483, 0); -- Pants of Prophecy
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 18814, 0, 0); -- Choker of the Fire Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 18510, 1888, 0); -- Hide of the Wild
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 19140, 0, 0); -- Cauterizing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 19140, 0, 0); -- Cauterizing Band
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 18851, 0, 67); -- Insignia of the Horde
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 18862, 0, 469); -- Insignia of the Alliance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 18820, 0, 0); -- Talisman of Ephemeral Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 18608, 2505, 0); -- Staff of Dominance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (134, 13938, 0, 0); -- Bonecreeper Stylus

-- Mage
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 16802, 0, 0); -- Arcanist Belt
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 16799, 1886, 0); -- Arcanist Bindings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 16800, 911, 0); -- Arcanist Slippers
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 16795, 1483, 0); -- Arcanist Crown
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 16801, 1887, 0); -- Arcanist Gloves
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 16796, 1483, 0); -- Arcanist Leggings
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 16797, 2488, 0); -- Arcanist Mantle
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 16798, 1891, 0); -- Arcanist Robes
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 18814, 0, 0); -- Choker of the Fire Lord
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 17078, 1888, 0); -- Sapphiron Drape
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 19147, 0, 0); -- Ring of Spell Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 19147, 0, 0); -- Ring of Spell Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 18850, 0, 67); -- Insignia of the Horde
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 18859, 0, 469); -- Insignia of the Alliance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 18820, 0, 0); -- Talisman of Ephemeral Power
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 18842, 2504, 0); -- Staff of Dominance
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES (135, 13938, 0, 0); -- Bonecreeper Stylus

-- Everlook Premade Item Template
DELETE FROM `player_premade_item_template` WHERE `entry` BETWEEN 127 AND 135;

INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (127, 1, 60, 1, 'Everlook T1 Warrior');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (128, 2, 60, 1, 'Everlook T1 Paladin');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (129, 7, 60, 1, 'Everlook T1 Shaman');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (130, 3, 60, 1, 'Everlook T1 Hunter');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (131, 4, 60, 1, 'Everlook T1 Rogue');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (132, 11, 60, 1, 'Everlook T1 Druid');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (133, 9, 60, 1, 'Everlook T1 Warlock');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (134, 5, 60, 1, 'Everlook T1 Priest');
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES (135, 8, 60, 1, 'Everlook T1 Mage');