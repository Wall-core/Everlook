-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table mangos.points_of_interest
DROP TABLE IF EXISTS `points_of_interest`;
CREATE TABLE IF NOT EXISTS `points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `icon` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `data` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `icon_name` text NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.points_of_interest: 250 rows
/*!40000 ALTER TABLE `points_of_interest` DISABLE KEYS */;
INSERT INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
	(658, -9459.35, 42.0805, 6, 99, 0, 'Lion\'s Pride Inn'),
	(652, -9471.12, 33.4441, 6, 99, 0, 'Zaldimar Wefhellt'),
	(660, -9469, 108.053, 6, 99, 0, 'Brother Wilhelm'),
	(653, -9461.07, 32.996, 6, 99, 0, 'Priestess Josetta'),
	(657, -9465.14, 13.2936, 6, 99, 0, 'Keryn Sylvius'),
	(656, -9473.22, -4.08464, 6, 99, 0, 'Maximillian Crowe'),
	(661, -9461.82, 109.505, 6, 99, 0, 'Lyria Du Lac'),
	(663, -9057.04, 153.637, 6, 99, 0, 'Alchemist Mallory'),
	(659, -9456.59, 87.9022, 6, 99, 0, 'Smith Argus'),
	(655, -9467.54, -3.16732, 6, 99, 0, 'Tomas'),
	(654, -9456.82, 30.4947, 6, 99, 0, 'Michelle Belle'),
	(649, -9386.55, -118.731, 6, 99, 0, 'Lee Brown'),
	(650, -9376.12, -75.2306, 6, 99, 0, 'Adele Fielder'),
	(651, -9381.13, -70.1127, 6, 99, 0, 'Helene Peltskinner'),
	(647, -9536.92, -1212.76, 6, 99, 0, 'Eldrin'),
	(869, -9466.62, 45.8709, 6, 99, 0, 'Erma'),
	(527, -8812.57, 666.354, 6, 99, 0, 'Stormwind Auction House'),
	(47, -8885.39, 640.052, 6, 99, 0, 'Stormwind Bank'),
	(532, -8387.53, 565.012, 6, 99, 0, 'The Deeprun Tram'),
	(529, -8867.65, 673.634, 6, 99, 0, 'The Gilded Rose'),
	(535, -8839.35, 487.546, 6, 99, 0, 'Stormwind Gryphon Master'),
	(87, -8886.4, 595.38, 6, 99, 0, 'Stormwind Vistor\'s Center'),
	(870, -8432.87, 555.121, 6, 99, 0, 'Jenova Stoneshield'),
	(808, -8796.2, 613.098, 6, 99, 0, 'Woo Ping'),
	(1467, -8762.39, 401.972, 6, 99, 0, 'Champions\' Hall'),
	(72, -8749.69, 1075.78, 6, 99, 0, 'The Park'),
	(74, -8430.27, 559.87, 6, 99, 0, 'Hunter Lodge'),
	(71, -9008.55, 857.193, 6, 99, 0, 'Wizard\'s Sanctum'),
	(73, -8621.68, 777.189, 6, 99, 0, 'Cathedral Of Light'),
	(69, -8782.15, 353.099, 6, 99, 0, 'Stormwind - Rogue House'),
	(75, -8938.57, 986.894, 6, 99, 0, 'The Slaughtered Lamb'),
	(70, -8714.84, 342.761, 6, 99, 0, 'Stormwind Barracks'),
	(91, -8975.3, 778.865, 6, 99, 0, 'Alchemy Needs'),
	(94, -8433.29, 610.413, 6, 99, 0, 'Therum Deepforge'),
	(68, -8641.24, 423.502, 6, 99, 0, 'Pig and Whistle Tavern'),
	(108, -8838.32, 782.35, 6, 99, 0, 'Lucan Cordell'),
	(93, -8348.42, 640.412, 6, 99, 0, 'Lilliam Sparkspindle'),
	(1427, -8515.48, 804.505, 6, 99, 0, 'Shaina Fuller'),
	(107, -8793.17, 741.886, 6, 99, 0, 'Arnold Leland'),
	(90, -8707.42, 462.037, 6, 99, 0, 'The Protective Hide'),
	(95, -8416.23, 672.791, 6, 99, 0, 'Gelman Stonehand'),
	(92, -8940.58, 771.346, 6, 99, 0, 'Duncan\'s Textiles'),
	(418, -4957.39, -911.604, 6, 99, 0, 'Ironforge Auction House'),
	(415, -4891.91, -991.48, 6, 99, 0, 'The Vault'),
	(547, -4835.28, -1294.7, 6, 99, 0, 'Deeprun Tram'),
	(407, -4821.52, -1152.3, 6, 99, 0, 'Ironforge Gryphon Master'),
	(424, -5021.06, -996.453, 6, 99, 0, 'Ironforge Visitor\'s Center'),
	(417, -4850.48, -872.571, 6, 99, 0, 'Stonefire Tavern'),
	(416, -4845.7, -880.552, 6, 99, 0, 'Ironforge Mailbox'),
	(867, -5010.21, -1262.03, 6, 99, 0, 'Ulbrek Firehand'),
	(928, -5040.01, -1201.88, 6, 99, 0, 'Bixi and Buliwyf'),
	(413, -5023.08, -1253.68, 6, 99, 0, 'Hall of Arms'),
	(412, -4627.02, -926.459, 6, 99, 0, 'Hall of Mysteries'),
	(427, -4647.83, -1124, 6, 99, 0, 'Ironforge Rogue Trainer'),
	(426, -4605.03, -1110.46, 6, 99, 0, 'Ironforge Warlock Trainer'),
	(419, -4858.5, -1241.84, 6, 99, 0, 'Berryfizz\'s Potions and Mixed Drinks'),
	(423, -4796.98, -1110.17, 6, 99, 0, 'The Great Forge'),
	(410, -4767.83, -1184.6, 6, 99, 0, 'The Bronze Kettle'),
	(409, -4803.72, -1196.53, 6, 99, 0, 'Thistlefuzz Arcanery'),
	(408, -4881.6, -1153.13, 6, 99, 0, 'Ironforge Physician'),
	(425, -4597.91, -1091.93, 6, 99, 0, 'Traveling Fisherman'),
	(987, -4745.01, -1027.58, 6, 99, 0, 'Finespindle\'s Leather Goods'),
	(411, -4705.06, -1116.43, 6, 99, 0, 'Deepmountain Mining Guild'),
	(422, -4719.61, -1056.97, 6, 99, 0, 'Stonebrow\'s Clothier'),
	(671, -5584.11, -510.862, 6, 99, 0, 'Thunderbrew Distillery'),
	(868, -5606.17, -513.008, 6, 99, 0, 'Shelby Stoneflint'),
	(674, -5618.73, -453.72, 6, 99, 0, 'Grif Wildheart'),
	(664, -5587.37, -539.037, 6, 99, 0, 'Magis Sparkmantle'),
	(665, -5584.69, -542.492, 6, 99, 0, 'Azar Stronghammer'),
	(666, -5589.19, -530.288, 6, 99, 0, 'Maxan Anvol'),
	(669, -5604.48, -540.089, 6, 99, 0, 'Hogral Bakkan'),
	(677, -5639.5, -528.501, 6, 99, 0, 'Gimrizz Shadowcog'),
	(667, -5605.01, -530.145, 6, 99, 0, 'Granis Swiftaxe'),
	(672, -5582.17, -430.441, 6, 99, 0, 'Tognus Flintfire'),
	(670, -5594.46, -544.573, 6, 99, 0, 'Gremlock Pilsnor'),
	(668, -5604.89, -521.037, 6, 99, 0, 'Thamner Pol'),
	(747, -5198.56, 53.3649, 6, 99, 0, 'Paxton Ganter'),
	(1693, 9862.37, 2339.19, 6, 99, 0, 'Darnassus Auction House'),
	(465, 9938.46, 2512.35, 6, 99, 0, 'Darnassus Bank'),
	(467, 9945.65, 2618.95, 6, 99, 0, 'Rut\'theran Village'),
	(490, 10076.4, 2199.59, 6, 99, 0, 'Darnassus Guild Master'),
	(468, 10133.3, 2222.52, 6, 99, 0, 'Darnassus Inn'),
	(1474, 9942.18, 2495.49, 6, 99, 0, 'Darnassus Mailbox'),
	(872, 10167.2, 2522.67, 6, 99, 0, 'Alassin'),
	(750, 9907.11, 2329.71, 6, 99, 0, 'Ilyenia Moonfire'),
	(486, 10186, 2570.47, 6, 99, 0, 'Darnassus Druid Trainer'),
	(479, 10177.3, 2511.1, 6, 99, 0, 'Darnassus Hunter Trainer'),
	(507, 10122, 2599.13, 6, 99, 0, 'Darnassus Rogue Trainer'),
	(461, 9951.91, 2280.39, 6, 99, 0, 'Warrior\'s Terrace'),
	(476, 10075.9, 2356.76, 6, 99, 0, 'Darnassus Alchemy Trainer'),
	(478, 10088.6, 2419.22, 6, 99, 0, 'Darnassus Cooking Trainer'),
	(473, 10146.1, 2313.43, 6, 99, 0, 'Darnassus Enchanting Trainer'),
	(474, 10150.1, 2390.44, 6, 99, 0, 'Darnassus First Aid Trainer'),
	(489, 9836.21, 2432.18, 6, 99, 0, 'Darnassus Fishing Trainer'),
	(471, 10086.6, 2255.77, 6, 99, 0, 'Darnassus Leatherworking Trainer'),
	(472, 10081.4, 2257.19, 6, 99, 0, 'Darnassus Skinning Trainer'),
	(470, 10079.7, 2268.2, 6, 99, 0, 'Darnassus Tailor'),
	(698, 9821.49, 960.138, 6, 99, 0, 'Dolanaar Inn'),
	(871, 9808.37, 931.106, 6, 99, 0, 'Seriadne'),
	(697, 9741.58, 963.705, 6, 99, 0, 'Kal'),
	(693, 9815.12, 926.283, 6, 99, 0, 'Dazalar'),
	(690, 9906.16, 986.636, 6, 99, 0, 'Laurna Morninglight'),
	(692, 9789.02, 942.865, 6, 99, 0, 'Jannok Breezesong'),
	(691, 9821.97, 950.616, 6, 99, 0, 'Kyra Windblade'),
	(696, 9767.6, 878.817, 6, 99, 0, 'Cyndra Kindwhisper'),
	(694, 9751.19, 906.132, 6, 99, 0, 'Zarrin'),
	(699, 10677.6, 1946.56, 6, 99, 0, 'Alanna Raveneye'),
	(689, 9903.12, 999.095, 6, 99, 0, 'Byancie'),
	(695, 9773.78, 875.884, 6, 99, 0, 'Malorne Bladeleaf'),
	(688, 10152.6, 1681.47, 6, 99, 0, 'Nadyia Maneweaver'),
	(687, 10135.6, 1673.18, 6, 99, 0, 'Radnaal Maneweaver'),
	(267, 1631.51, -4375.33, 6, 99, 0, 'Bank of Orgrimmar'),
	(268, 1676.61, -4332.72, 6, 99, 0, 'The Sky Tower'),
	(269, 1576.93, -4294.75, 6, 99, 0, 'Horde Embassy'),
	(270, 1644.51, -4447.28, 6, 99, 0, 'Orgrimmar Inn'),
	(271, 1622.53, -4388.8, 6, 99, 0, 'Orgrimmar Mailbox'),
	(347, 1679.22, -4450.11, 6, 99, 0, 'Orgrimmar Auction House'),
	(809, 2092.56, -4823.95, 6, 99, 0, 'Sayoc & Hanashi'),
	(848, 2133.12, -4663.93, 6, 99, 0, 'Xon\'cha'),
	(1468, 1633.56, -4249.37, 6, 99, 0, 'Hall of Legends'),
	(150, -1054.48, -285.076, 6, 99, 0, 'Hall of Elders'),
	(149, -1416.33, -114.285, 6, 99, 0, 'Hunter\'s Hall'),
	(161, -1061.21, 195.505, 6, 99, 0, 'Pools of Vision'),
	(148, -989.541, 278.253, 6, 99, 0, 'Hall of Spirits'),
	(152, -1085.57, 27.2931, 6, 99, 0, 'Bena\'s Alchemy'),
	(155, -1239.75, 104.888, 6, 99, 0, 'Karn\'s Smithy'),
	(187, -1214.5, -21.2327, 6, 99, 0, 'Aska\'s Kitchen'),
	(153, -1112.65, 48.2609, 6, 99, 0, 'Dawnstrider Enchanters'),
	(162, -996.586, 200.504, 6, 99, 0, 'Spiritual Healing'),
	(160, -1169.36, -68.878, 6, 99, 0, 'Mountaintop Bait & Tackle'),
	(151, -1137.71, -1.51698, 6, 99, 0, 'Holistic Herbalism'),
	(154, -1156.23, 66.8664, 6, 99, 0, 'Thunder Bluff Armorers'),
	(157, -1249.17, 155.028, 6, 99, 0, 'Stonehoof Geology'),
	(567, -1148.57, 51.1842, 6, 99, 0, 'Mooranta'),
	(272, 2114.84, -4625.32, 6, 99, 0, 'Orgrimmar Hunter\'s Hall'),
	(273, 1451.26, -4223.33, 6, 99, 0, 'Darkbriar Lodge'),
	(274, 1442.22, -4183.24, 6, 99, 0, 'Spirit Lodge'),
	(276, 1925.35, -4181.89, 6, 99, 0, 'Thrall\'s Fortress'),
	(277, 1773.39, -4278.97, 6, 99, 0, 'Shadowswift Brotherhood'),
	(278, 1849.58, -4359.69, 6, 99, 0, 'Darkfire Enclave'),
	(275, 1983.92, -4794.21, 6, 99, 0, 'Hall of the Brave'),
	(279, 1955.17, -4475.8, 6, 99, 0, 'Yelmak\'s Alchemy and Potions'),
	(280, 2054.34, -4831.85, 6, 99, 0, 'The Burning Anvil'),
	(281, 1780.97, -4481.31, 6, 99, 0, 'Borstan\'s Firepit'),
	(282, 1917.5, -4434.95, 6, 99, 0, 'Godan\'s Runeworks'),
	(307, 2038.46, -4744.76, 6, 99, 0, 'Nogg\'s Machine Shop'),
	(283, 1485.22, -4160.91, 6, 99, 0, 'Survival of the Fittest'),
	(284, 1994.15, -4655.7, 6, 99, 0, 'Lumak\'s Fishing'),
	(285, 1898.62, -4454.94, 6, 99, 0, 'Jandi\'s Arboretum'),
	(288, 2029.79, -4704.08, 6, 99, 0, 'Red Canyon Mining'),
	(287, 1852.83, -4562.32, 6, 99, 0, 'Kodohide Leatherworkers'),
	(289, 1802.66, -4560.66, 6, 99, 0, 'Magar\'s Cloth Goods'),
	(588, 276.067, -4706.73, 6, 99, 0, 'Thotar'),
	(589, -839.33, -4935.61, 6, 99, 0, 'Un\'Thuwa'),
	(590, 296.225, -4828.11, 6, 99, 0, 'Tai\'jin'),
	(591, 265.765, -4709.01, 6, 99, 0, 'Kaplak'),
	(592, 307.797, -4836.97, 6, 99, 0, 'Swart'),
	(594, 355.88, -4836.46, 6, 99, 0, 'Dhugru Gorelust'),
	(593, 312.308, -4824.66, 6, 99, 0, 'Tarshaw Jaggedscar'),
	(595, -800.253, -4894.34, 6, 99, 0, 'Miao\'zan'),
	(597, 373.248, -4716.45, 6, 99, 0, 'Dwukk'),
	(602, 368.96, -4723.96, 6, 99, 0, 'Mukdrak'),
	(598, 327.175, -4825.62, 6, 99, 0, 'Rawrk'),
	(801, -1065.49, -4777.43, 6, 99, 0, 'Lau\'Tiki'),
	(596, -836.254, -4896.9, 6, 99, 0, 'Mishiki'),
	(601, 366.941, -4705.09, 6, 99, 0, 'Krunn'),
	(606, -2312.16, -443.693, 6, 99, 0, 'Gennia Runetotem'),
	(608, -2178.15, -406.144, 6, 99, 0, 'Yaw Sharpmane'),
	(607, -2301.5, -439.871, 6, 99, 0, 'Narm Skychaser'),
	(609, -2345.44, -494.114, 6, 99, 0, 'Krang Stonehoof'),
	(610, -2263.34, -287.91, 6, 99, 0, 'Pyall Silentstride'),
	(605, -2353.52, -355.821, 6, 99, 0, 'Vira Younghoof'),
	(613, -2349.22, -241.376, 6, 99, 0, 'Uthan Stillwater'),
	(611, -2257.12, -288.633, 6, 99, 0, 'Chaw Stronghide'),
	(612, -2252.95, -291.324, 6, 99, 0, 'Yonn Deepcut'),
	(616, 2259.58, 235.865, 6, 99, 0, 'Cain Firesong'),
	(617, 2264.43, 248.158, 6, 99, 0, 'Dark Cleric Beryl'),
	(618, 2267.61, 243.924, 6, 99, 0, 'Marion Call'),
	(619, 2257.46, 247.402, 6, 99, 0, 'Rupert Boch'),
	(620, 2257.99, 240.487, 6, 99, 0, 'Austil de Mon'),
	(621, 2264.81, 344.257, 6, 99, 0, 'Carolai Anise'),
	(622, 2280.69, 244.714, 6, 99, 0, 'Vance Undergloom'),
	(623, 2247.01, 242.789, 6, 99, 0, 'Nurse Neela'),
	(624, 2299.92, 1.16547, 6, 99, 0, 'Clyde Kellen'),
	(625, 2270.57, 329.97, 6, 99, 0, 'Faruza'),
	(626, 2027.81, 80.1105, 6, 99, 0, 'Shelene Rhobart'),
	(627, 2031.33, 71.8599, 6, 99, 0, 'Rand Rhobart'),
	(628, 2161.7, 658.172, 6, 99, 0, 'Bowen Brisboise'),
	(464, 9659.13, 2524.89, 6, 99, 0, 'Temple of the Moon'),
	(463, 9757.18, 2430.17, 6, 99, 0, 'Darnassus Herbalism Trainer'),
	(662, -9060.71, 149.236, 6, 99, 0, 'Herbalist Pomeroy'),
	(168, -1257.8, 24.1431, 6, 99, 0, 'Thunder Bluff Bank'),
	(167, -1196.44, 28.2654, 6, 99, 0, 'Wind Rider Roost'),
	(158, -1296.5, 127.579, 6, 99, 0, 'Thunder Bluff Civic Information'),
	(367, -1296.07, 39.7075, 6, 99, 0, 'Thunder Bluff Inn'),
	(368, -1263.6, 44.3601, 6, 99, 0, 'Thunder Bluff Mailbox'),
	(1692, -1198.32, 102.054, 6, 99, 0, 'Thunder Bluff Auction house'),
	(810, -1282.31, 89.563, 6, 99, 0, 'Ansekhwa'),
	(850, -1270.2, 48.8459, 6, 99, 0, 'Bulrug'),
	(1691, 1650.31, 240.191, 6, 99, 0, 'Undercity Auction House'),
	(488, 1595.64, 232.456, 6, 99, 0, 'Undercity Bank'),
	(447, 1565.9, 271.435, 6, 99, 0, 'Undercity Bat Handler'),
	(448, 1594.17, 205.572, 6, 99, 0, 'Undercity Guild Master'),
	(449, 1639.43, 220.998, 6, 99, 0, 'Undercity Inn'),
	(450, 1632.69, 219.403, 6, 99, 0, 'Undercity Mailbox'),
	(852, 1634.18, 226.768, 6, 99, 0, 'Anya Maulray'),
	(729, 1670.31, 324.666, 6, 99, 0, 'Archibald'),
	(451, 2059.04, 274.869, 6, 99, 0, 'Undercity Zeppelin'),
	(452, 1781.09, 53.0096, 6, 99, 0, 'Undercity Mage Trainers'),
	(454, 1758.34, 401.507, 6, 99, 0, 'Undercity Priest Trainers'),
	(456, 1418.56, 65.0243, 6, 99, 0, 'Undercity Rogue Trainers'),
	(453, 1780.92, 53.1697, 6, 99, 0, 'Undercity Warlock Trainers'),
	(455, 1775.6, 418.193, 6, 99, 0, 'Undercity Warrior Trainers'),
	(457, 1419.83, 417.197, 6, 99, 0, 'The Apothecarium'),
	(458, 1696, 285.042, 6, 99, 0, 'Undercity Blacksmithing Trainer'),
	(460, 1596.35, 274.684, 6, 99, 0, 'Undercity Cooking Trainer'),
	(475, 1488.54, 280.194, 6, 99, 0, 'Undercity Enchanting Trainer'),
	(485, 1408.59, 143.431, 6, 99, 0, 'Undercity Engineering Trainer'),
	(483, 1519.65, 167.199, 6, 99, 0, 'Undercity First Aid Trainer'),
	(487, 1679.9, 89.0227, 6, 99, 0, 'Undercity Fishing Trainer'),
	(477, 1558.09, 349.37, 6, 99, 0, 'Undercity Herbalism Trainer'),
	(480, 1498.76, 196.433, 6, 99, 0, 'Undercity Leatherworking Trainer'),
	(481, 1498.61, 196.466, 6, 99, 0, 'Undercity Skinning Trainer'),
	(459, 1642.88, 335.588, 6, 99, 0, 'Undercity Mining Trainer'),
	(462, 1689.55, 193.023, 6, 99, 0, 'Undercity Tailoring Trainer'),
	(420, -4799.56, -1250.24, 6, 99, 0, 'Springspindle\'s Gadgets'),
	(676, -5529.12, -660.912, 6, 99, 0, 'Yarr Hammerstone'),
	(587, 338.709, -4688.87, 6, 99, 0, 'Razor Hill Inn'),
	(847, 330.313, -4710.67, 6, 99, 0, 'Shoja\'my'),
	(604, -2361.39, -349.193, 6, 99, 0, 'Bloodhoof Village Inn'),
	(849, -2338.86, -357.564, 6, 99, 0, 'Seikwa'),
	(615, 2266.98, 242.754, 6, 99, 0, 'Gallows\' End Tavern'),
	(851, 2268.67, 318.876, 6, 99, 0, 'Morganus'),
	(528, -8876.98, 652.043, 6, 99, 0, 'Stormwind Mailbox'),
	(1674, -8426.4, 341.467, 6, 99, 0, 'Thelman Slatefist'),
	(1679, -8422.85, 329.087, 6, 99, 0, 'Lady Hoteshem'),
	(1675, -8452.68, 320.309, 6, 99, 0, 'Elfarran'),
	(1672, -5047.88, -1263.77, 6, 99, 0, 'Glordrum Steelbeard'),
	(1678, -5038.37, -1266.39, 6, 99, 0, 'Donal Osgood'),
	(1673, -5037.24, -1274.83, 6, 99, 0, 'Lylandris'),
	(1667, 9923.61, 2327.44, 6, 99, 0, 'Brogun Stoneshield'),
	(1680, 9977.37, 2324.4, 6, 99, 0, 'Keras Wolfheart'),
	(1647, 9979.85, 2315.79, 6, 99, 0, 'Aethalas'),
	(1668, -1387.83, -97.5562, 6, 99, 0, 'Taim Ragetotem'),
	(1677, -997.004, 214.129, 6, 99, 0, 'Martin Lindsey'),
	(1669, -1384.95, -75.9151, 6, 99, 0, 'Kergul Bloodaxe'),
	(827, 1337.37, -4632.7, 6, 99, 0, 'Orgrimmar Zeppelin Tower'),
	(1671, 1329.05, 333.92, 6, 99, 0, 'Grizzle Halfmane'),
	(1676, 1283.3, 287.16, 6, 99, 0, 'Sir Malory Wheeler'),
	(1670, 1265.1, 351.182, 6, 99, 0, 'Kurden Bloodclaw');
/*!40000 ALTER TABLE `points_of_interest` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;