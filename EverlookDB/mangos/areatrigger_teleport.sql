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

-- Dumping structure for table mangos.areatrigger_teleport
CREATE TABLE IF NOT EXISTS `areatrigger_teleport` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `patch` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Content patch in which this exact version of the entry was added',
  `name` varchar(64) NOT NULL DEFAULT '',
  `message` varchar(128) NOT NULL DEFAULT '',
  `required_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `required_condition` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `target_map` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target_position_x` float NOT NULL DEFAULT 0,
  `target_position_y` float NOT NULL DEFAULT 0,
  `target_position_z` float NOT NULL DEFAULT 0,
  `target_orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`patch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';

-- Dumping data for table mangos.areatrigger_teleport: 121 rows
/*!40000 ALTER TABLE `areatrigger_teleport` DISABLE KEYS */;
REPLACE INTO `areatrigger_teleport` (`id`, `patch`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
	(45, 0, 'Scarlet Monastery Graveyard - Entrance', 'You must be at least level 20 to enter.', 20, 0, 189, 1687.27, 1050.09, 18.6773, 1.5708),
	(78, 0, 'Deadmines - Entrance', 'You must be at least level 10 to enter.', 10, 0, 36, -14.5732, -385.475, 62.4561, 1.5708),
	(101, 0, 'Stormwind Stockades - Entrance', 'You must be at least level 15 to enter.', 15, 0, 34, 48.9849, 0.483882, -16.3942, 6.28319),
	(107, 0, 'Stormwind Vault - Entrance', '', 0, 0, 35, -0.91, 40.57, -24.23, 0),
	(109, 0, 'Stormwind Vault - Exit', '', 0, 0, 0, -8661.57, 616.574, 86.1877, 5.49779),
	(119, 0, 'Deadmines - Exit', '', 0, 0, 0, -11208.7, 1675.9, 24.5733, 4.71239),
	(121, 0, 'Deadmines - Back Exit', '', 0, 0, 0, -11339.9, 1572.45, 94.3916, 1.5708),
	(145, 0, 'Shadowfang Keep - Entrance', 'You must be at least level 10 to enter.', 10, 0, 33, -228.191, 2111.41, 76.8904, 1.22173),
	(194, 0, 'Shadowfang Keep - Exit', '', 0, 0, 0, -233.011, 1567.5, 76.8921, 4.27606),
	(226, 0, 'Wailing Caverns - Exit', '', 0, 0, 1, -738.462, -2217.8, 16.919, 6.02139),
	(228, 0, 'Wailing Caverns - Entrance', 'You must be at least level 10 to enter.', 10, 0, 43, -158.441, 131.601, -74.2552, 5.84685),
	(242, 0, 'Razorfen Kraul - Exit', '', 0, 0, 1, -4463.32, -1664.29, 84.0489, 3.92699),
	(244, 0, 'Razorfen Kraul - Entrance', 'You must be at least level 15 to enter.', 15, 0, 47, 1942.27, 1544.23, 83.3055, 1.309),
	(257, 0, 'Blackfathom Deeps - Entrance', 'You must be at least level 10 to enter.', 10, 0, 48, -150.234, 106.594, -39.779, 4.45059),
	(259, 0, 'Blackfathom Deeps - Exit', '', 0, 0, 1, 4246.68, 743.402, -24.8573, 4.71239),
	(286, 0, 'Uldaman - Entrance', 'You must be at least level 30 to enter.', 30, 0, 70, -228.859, 46.1018, -46.0186, 1.5708),
	(288, 0, 'Uldaman - Exit', '', 0, 0, 0, -6066.25, -2954.56, 209.772, 3.14159),
	(322, 0, 'Gnomeregan - Exit', '', 0, 0, 0, -5162.57, 927.841, 257.177, 4.71239),
	(324, 0, 'Gnomeregan - Entrance', 'You must be at least level 15 to enter.', 15, 0, 90, -329.098, -3.20722, -152.851, 2.96706),
	(442, 0, 'Razorfen Downs - Entrance', 'You must be at least level 25 to enter.', 25, 0, 129, 2593.68, 1111.23, 50.9518, 4.71239),
	(444, 0, 'Razorfen Downs - Exit', '', 0, 0, 1, -4659.64, -2524.24, 81.374, 0.785398),
	(446, 0, 'Sunken Temple - Entrance', 'You must be at least level 35 to enter.', 35, 0, 109, -315.903, 100.197, -131.849, 3.14159),
	(448, 0, 'Sunken Temple - Exit', '', 0, 0, 0, -10176.6, -3995.35, -112.185, 3.00197),
	(503, 0, 'Stormwind Stockades - Exit', '', 0, 0, 0, -8766.11, 845.499, 87.9952, 3.83972),
	(523, 0, 'Gnomeregan - Back Entrance', 'You must be at least level 15 to enter.', 15, 0, 90, -733.636, 1.86838, -249.09, 3.14159),
	(525, 0, 'Gnomeregan - Back Exit', '', 0, 0, 0, -4858.97, 770.207, 241.805, 4.71239),
	(527, 0, 'Darnassus - Exit', '', 0, 0, 1, 8785.79, 966.983, 30.1999, 3.40339),
	(542, 0, 'Darnassus - Entrance', '', 0, 0, 1, 9946.25, 2612.97, 1316.49, 4.71239),
	(602, 0, 'Scarlet Monastery Graveyard - Exit', '', 0, 0, 0, 2915.34, -801.58, 160.333, 3.49066),
	(604, 0, 'Scarlet Monastery Cathedral - Exit', '', 0, 0, 0, 2915.13, -823.637, 160.327, 3.49066),
	(606, 0, 'Scarlet Monastery Armory - Exit', '', 0, 0, 0, 2885.96, -835.802, 160.327, 0.349066),
	(608, 0, 'Scarlet Monastery Library - Exit', '', 0, 0, 0, 2869.32, -820.818, 160.333, 0.349066),
	(610, 0, 'Scarlet Monastery Cathedral - Entrance', 'You must be at least level 20 to enter.', 20, 0, 189, 853.179, 1319.18, 18.6714, 1.5708),
	(612, 0, 'Scarlet Monastery Armory - Entrance', 'You must be at least level 20 to enter.', 20, 0, 189, 1608.1, -318.919, 18.6714, 4.71239),
	(614, 0, 'Scarlet Monastery Library - Entrance', 'You must be at least level 20 to enter.', 20, 0, 189, 253.672, -206.624, 18.6773, 4.71239),
	(702, 0, 'Stormwind Wizard\'s Sanctum - Exit', '', 0, 0, 0, -9014.94, 873.326, 148.616, 5.49779),
	(704, 0, 'Stormwind Wizard\'s Sanctum - Entrance', '', 0, 0, 0, -9017.46, 885.901, 29.6207, 5.49779),
	(882, 0, 'Uldaman - Back Exit', '', 0, 0, 0, -6619.97, -3765.74, 266.309, 3.40339),
	(902, 0, 'Uldaman - Back Entrance', 'You must be at least level 30 to enter.', 30, 0, 70, -212.95, 382.427, -38.7486, 1.39626),
	(922, 0, 'Zul\'Farrak - Exit', '', 0, 0, 1, -6795.56, -2890.72, 8.88742, 3.14159),
	(924, 0, 'Zul\'Farrak - Entrance', 'You must be at least level 35 to enter.', 35, 0, 209, 1212.67, 842.04, 8.93346, 6.28319),
	(1064, 0, 'Onyxia\'s Lair - Exit', '', 0, 0, 1, -4750.38, -3754.44, 49.0485, 0.785398),
	(1466, 0, 'Blackrock Depths - Entrance', 'You must be at least level 40 to enter.', 40, 0, 230, 456.929, 34.0923, -68.0896, 4.71239),
	(1468, 0, 'Blackrock Spire - Entrance', 'You must be at least level 45 to enter.', 45, 0, 229, 78.3534, -226.841, 49.7662, 4.71239),
	(1470, 0, 'Blackrock Spire - Exit', '', 0, 0, 0, -7524.7, -1228.41, 287.204, 1.74533),
	(1472, 0, 'Blackrock Depths - Exit', '', 0, 0, 0, -7178.41, -922.152, 166.092, 2.00713),
	(2166, 0, 'Deeprun Tram Ironforge - Exit', '', 0, 0, 0, -4839.51, -1317.74, 501.868, 1.48353),
	(2171, 0, 'Deeprun Tram Stormwind - Exit', '', 0, 0, 0, -8354.23, 524.068, 91.7971, 2.35619),
	(2173, 0, 'Deeprun Tram Stormwind - Entrance', '', 0, 0, 369, 67.7607, 2490.98, -4.29649, 3.14159),
	(2175, 0, 'Deeprun Tram Ironforge - Exit', '', 0, 0, 369, 69.2277, 10.3932, -4.29665, 3.14159),
	(2214, 0, 'Stratholme - Back Entrance', 'You must be at least level 45 to enter.', 45, 0, 329, 3590.87, -3643.22, 138.491, 5.49779),
	(2216, 0, 'Stratholme - Right Entrance', 'You must be at least level 45 to enter.', 45, 0, 329, 3392.92, -3395.03, 143.135, 1.5708),
	(2217, 0, 'Stratholme - Left Entrance', 'You must be at least level 45 to enter.', 45, 0, 329, 3392.84, -3364.44, 142.965, 4.71239),
	(2221, 0, 'Stratholme - Back Exit', '', 0, 0, 0, 3233.06, -4048.3, 108.442, 2.00713),
	(2226, 0, 'Ragefire Chasm - Exit', '', 0, 0, 1, 1814.99, -4419.23, -18.8151, 1.91986),
	(2230, 0, 'Ragefire Chasm - Entrance', 'You must be at least level 8 to enter.', 8, 0, 389, 0.797643, -8.23429, -15.5288, 4.71239),
	(2527, 2, 'Hall of Legends - Entrance', 'You must be a Stone Guard or higher rank in order to enter the Hall of Legends.', 0, 2527, 450, 222.22, 74.457, 25.7209, 0.610865),
	(2530, 0, 'Hall of Legends - Exit', '', 0, 0, 1, 1637.91, -4240.25, 56.1744, 3.92699),
	(2532, 2, 'Champions\' Hall - Entrance', 'You must be a Knight or higher rank in order to enter the Champions\' Hall.', 0, 2532, 449, -0.401287, 2.40001, -0.255885, 1.5708),
	(2534, 0, 'Champions\' Hall Exit', '', 0, 0, 0, -8762.82, 402.434, 103.901, 5.49779),
	(2567, 0, 'Scholomance - Entrance', 'You must be at least level 45 to enter.', 45, 0, 289, 190.819, 126.329, 137.227, 6.28319),
	(2568, 0, 'Scholomance - Exit', '', 0, 0, 0, 1273.91, -2553.09, 91.8393, 3.57792),
	(2606, 0, 'Alterac Valley - Horde Exit', 'Only the Horde may use this portal.', 0, 0, 0, 536.495, -1085.72, 106.27, 3.66519),
	(2608, 0, 'Alterac Valley - Alliance Exit', 'Only the Alliance may use this portal.', 0, 0, 0, 101.144, -184.934, 127.344, 4.88692),
	(2848, 0, 'Onyxia\'s Lair - Entrance', 'You must be part of a Raid group, at least level 50 and have the Drakefire Amulet in your inventory to enter.', 50, 16309, 249, 30.8916, -54.079, -5.02784, 4.71239),
	(2886, 0, 'Molten Core - Entrance', 'You must be part of a Raid group and at least level 50 to enter.', 50, 0, 409, 1091.89, -466.985, -105.084, 3.14159),
	(2890, 0, 'Molten Core - Exit', '', 0, 0, 0, -7508.32, -1039.74, 180.912, 3.83972),
	(3126, 0, 'Maraudon - Purple Exit', '', 0, 0, 1, -1182.8, 2877.43, 85.908, 1.65806),
	(3131, 0, 'Maraudon - Orange Exit', '', 0, 0, 1, -1468.2, 2614.21, 76.3804, 6.28319),
	(3133, 0, 'Maraudon - Orange Entrance', 'You must be at least level 30 to enter.', 30, 0, 349, 1016.83, -458.52, -43.4737, 6.28319),
	(3134, 0, 'Maraudon - Purple Entrance', 'You must be at least level 30 to enter.', 30, 0, 349, 755.078, -617.696, -32.9222, 1.5708),
	(3183, 1, 'Dire Maul - Entrance 1', 'You must be at least level 45 to enter.', 45, 0, 429, 47.4501, -153.665, -2.71439, 5.49779),
	(3184, 1, 'Dire Maul - Entrance 2', 'You must be at least level 45 to enter.', 45, 0, 429, -203.166, -322.997, -2.72467, 4.71239),
	(3185, 1, 'Dire Maul - Entrance 3', 'You must be at least level 45 to enter.', 45, 0, 429, 10.5786, -836.991, -32.3988, 6.28319),
	(3186, 1, 'Dire Maul - Entrance 4', 'You must be at least level 45 to enter.', 45, 0, 429, -65.6559, 159.561, -3.4647, 2.35619),
	(3187, 1, 'Dire Maul - Entrance 5', 'You must be at least level 45 to enter.', 45, 0, 429, 33.1083, 158.977, -3.47126, 0.785398),
	(3189, 1, 'Dire Maul - Entrance 6', 'You must be at least level 45 to enter.', 45, 0, 429, 254.92, -19.463, -2.5596, 5.49779),
	(3190, 1, 'Dire Maul - Exit 4', '', 0, 0, 1, -3829.68, 1250.52, 160.226, 6.28319),
	(3191, 1, 'Dire Maul - Exit 5', '', 0, 0, 1, -3749.41, 1249.25, 160.221, 3.14159),
	(3193, 1, 'Dire Maul - Exit 6', '', 0, 0, 1, -3520.24, 1078.4, 161.103, 1.5708),
	(3194, 1, 'Dire Maul - Exit 1', '', 0, 0, 1, -3738.62, 934.522, 160.975, 3.14159),
	(3195, 1, 'Dire Maul - Exit 2', '', 0, 0, 1, -3981.04, 777.815, 160.965, 1.5708),
	(3196, 1, 'Dire Maul - Exit 3', '', 0, 0, 1, -4031.25, 129.345, 26.4744, 2.70526),
	(3197, 1, 'Dire Maul - Tunnel Exit', '', 0, 0, 1, -3585.84, 847.367, 138.641, 2.35619),
	(3529, 1, 'Molten Core - Window Lava Entrance', '', 50, 7851, 409, 1091.89, -466.985, -105.084, 3.14159),
	(3726, 4, 'Blackwing Lair - Entrance', 'You must be part of a raid group and at least 50th level to enter.', 50, 0, 469, -7672.32, -1107.05, 396.651, 0.785398),
	(3728, 0, 'Blackwing Lair - Exit', '', 0, 0, 0, -7524.7, -1228.41, 287.204, 1.74533),
	(3928, 5, 'Zul\'Gurub - Entrance', 'You must be part of a Raid group and at least level 50 to enter.', 50, 0, 309, -11916.6, -1243.52, 92.5338, 4.71239),
	(3930, 5, 'Zul\'Gurub - Exit', '', 0, 0, 0, -11916.2, -1206.9, 92.2612, 1.5708),
	(3948, 5, 'Arathi Basin - Alliance Exit', 'Only the Alliance may use this portal.', 0, 0, 0, -1215.59, -2531.75, 21.6734, 3.1765),
	(3949, 5, 'Arathi Basin - Horde Exit', 'Only the Horde may use this portal.', 0, 0, 0, -831.881, -3518.52, 72.4831, 3.36849),
	(3528, 1, 'Molten Core - Window Entrance', 'You must be attuned and in a raid group to enter.', 50, 7850, 409, 1091.89, -466.985, -105.084, 3.14159),
	(4006, 7, 'Ruins Of Ahn\'Qiraj - Exit', '', 0, 0, 1, -8415.7, 1502.44, 30.6862, 5.49779),
	(4008, 7, 'Ruins Of Ahn\'Qiraj - Entrance', 'You cannot enter here unless the gates of Ahn\'Qiraj have been opened, you are level 50+, and in a raid group.', 50, 126, 509, -8436.53, 1519.17, 31.907, 2.61799),
	(4010, 7, 'Temple of Ahn\'Qiraj - Entrance', 'You cannot enter here unless the gates of Ahn\'Qiraj have been opened, you are level 50+, and in a raid group.', 50, 126, 531, -8221.35, 2014.34, 129.071, 0.872665),
	(4012, 7, 'Temple of Ahn\'Qiraj - Exit', '', 0, 0, 1, -8239.01, 1993.25, 129.071, 4.01426),
	(4055, 9, 'Naxxramas - Entrance', 'You must be level 51+, in a Raid group, and be attuned to Naxxramas to enter.', 51, 9124, 533, 3005.87, -3435.01, 293.882, 0),
	(943, 0, 'Thousand Needles - Test of Faith', '', 0, 0, 1, -5191.27, -2802.59, -7.21111, 5.67232),
	(2547, 0, 'Scholomance - Balcony Exit', '', 0, 0, 0, 1399.42, -2574.59, 107.786, 6.28319),
	(2406, 0, 'Shadowfang Keep - Left Jump Exit', '', 0, 0, 0, -276.241, 1652.68, 77.5589, 3.14159),
	(942, 0, 'Thousand Needles - Test of Faith', '', 0, 0, 1, -5191.27, -2802.59, -7.21111, 5.67232),
	(944, 0, 'Thousand Needles - Test of Faith', '', 0, 0, 1, -5191.27, -2802.59, -7.21111, 5.67232),
	(1103, 0, 'Transpolyporter - Booty Bay to Gnomeregan', '', 0, 36, 0, -5095.58, 756.763, 260.55, 6.28319),
	(1104, 0, 'Transpolyporter - Gnomeregan to Booty Bay', '', 0, 36, 0, -14460, 463.278, 15.1651, 4.71239),
	(2068, 0, 'Blackrock Spire - Jump Exit', '', 0, 0, 0, -7558.39, -1309.43, 248.454, 1.5708),
	(1626, 0, 'Old Hillsbrad Foothills - Exit', '', 61, 0, 1, -8341.56, -4063.62, -207.981, 3.14159),
	(2407, 0, 'Shadowfang Keep - Left Jump Exit', '', 0, 0, 0, -276.241, 1652.68, 77.5589, 3.14159),
	(2408, 0, 'Shadowfang Keep - Front Jump Exit', '', 0, 0, 0, -225.34, 1556.53, 93.0454, 4.71239),
	(2409, 0, 'Shadowfang Keep - Front Jump Exit', '', 0, 0, 0, -225.34, 1556.53, 93.0454, 4.71239),
	(2410, 0, 'Shadowfang Keep - Right Jump Exit', '', 0, 0, 0, -181.26, 1580.65, 97.4466, 6.28319),
	(2411, 0, 'Shadowfang Keep - Right Jump Exit', '', 0, 0, 0, -181.26, 1580.65, 97.4466, 6.28319),
	(2548, 0, 'Scholomance - Balcony Exit', '', 0, 0, 0, 1399.42, -2574.59, 107.786, 6.28319),
	(2549, 0, 'Scholomance - Balcony Exit', '', 0, 0, 0, 1399.42, -2574.59, 107.786, 6.28319),
	(3669, 3, 'Warsong Gulch - Horde Exit', 'Only the Horde may use this portal.', 0, 0, 1, 1035.27, -2104.28, 122.945, 4.71239),
	(3671, 3, 'Warsong Gulch - Alliance Exit', 'Only the Alliance may use this portal.', 0, 0, 1, 1459.17, -1858.67, 124.762, 6.02139),
	(3183, 0, 'Dire Maul - Entrance 1', 'You Shall Not Pass !', 61, 0, 429, 47.4501, -153.665, -2.71439, 5.49779),
	(3184, 0, 'Dire Maul - Entrance 2', 'You Shall Not Pass !', 61, 0, 429, -203.166, -322.997, -2.72467, 4.71239),
	(3185, 0, 'Dire Maul - Entrance 3', 'You Shall Not Pass !', 61, 0, 429, 10.5786, -836.991, -32.3988, 6.28319),
	(3186, 0, 'Dire Maul - Entrance 4', 'You Shall Not Pass !', 61, 0, 429, -65.6559, 159.561, -3.4647, 2.35619),
	(3187, 0, 'Dire Maul - Entrance 5', 'You Shall Not Pass !', 61, 0, 429, 33.1083, 158.977, -3.47126, 0.785398),
	(3189, 0, 'Dire Maul - Entrance 6', 'You Shall Not Pass !', 61, 0, 429, 254.92, -19.463, -2.5596, 5.49779);
/*!40000 ALTER TABLE `areatrigger_teleport` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
