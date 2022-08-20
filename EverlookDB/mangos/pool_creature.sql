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

-- Dumping structure for table mangos.pool_creature
CREATE TABLE IF NOT EXISTS `pool_creature` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0,
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `chance` float unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `flags` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FLAG_SPAWN_ENABLE_IF_WORLD_POP_OVER_BLIZZLIKE = 1',
  `patch_min` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Minimum content patch to load this entry',
  `patch_max` tinyint(3) unsigned NOT NULL DEFAULT 10 COMMENT 'Maximum content patch to load this entry',
  PRIMARY KEY (`guid`),
  KEY `pool_idx` (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table mangos.pool_creature: 122 rows
/*!40000 ALTER TABLE `pool_creature` DISABLE KEYS */;
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES
	(300739, 32901, 15, 'Skul', 0, 0, 10),
	(300740, 32901, 15, 'Skul', 0, 0, 10),
	(52838, 32901, 0, 'Gardien squelettique', 0, 0, 10),
	(52621, 32901, 0, 'Gardien squelettique', 0, 0, 10),
	(40466, 22901, 0, 'Elite Main-noire', 0, 0, 10),
	(300741, 22901, 15, 'Jed Runewatcher', 0, 0, 10),
	(300217, 42901, 0, 'Spectre Eldreth', 0, 1, 10),
	(56961, 42901, 15, 'Tsu zee', 0, 1, 10),
	(90627, 23001, 0, 'Paysan Ombreforge', 0, 0, 7),
	(47771, 23001, 15, 'Pyromancer Loregrain', 0, 0, 7),
	(47777, 23002, 0, 'Golem de lave de guerre', 0, 0, 10),
	(300627, 23002, 15, 'Panzor the Invincible', 0, 0, 10),
	(84082, 3601, 0, 'Miner Johson - placeholder (Defias Miner)', 0, 0, 10),
	(45763, 22903, 0, 'Ecumeur Hache Sanglante', 0, 0, 10),
	(300742, 22903, 15, 'Ghok Bashguud', 0, 0, 10),
	(44376, 22904, 0, 'Jeune araignée du Pic', 0, 0, 10),
	(44422, 22904, 15, 'Crystal Fang', 0, 0, 10),
	(300743, 22905, 0, 'Massacreur pierre du pic', 0, 0, 10),
	(43523, 22905, 15, 'Spirestone Butcher', 0, 0, 10),
	(43516, 22906, 0, 'Ogre Magus pierre du pic', 0, 0, 10),
	(300744, 22906, 15, 'Spirestone Battle Lord', 0, 0, 10),
	(43509, 22907, 0, 'Ogre Magus pierre du pic', 0, 0, 10),
	(43521, 22907, 15, 'Spirestone Lord Magus', 0, 0, 10),
	(79090, 10001, 15, 'Bruegal Ironknuckle', 0, 0, 10),
	(79091, 10001, 0, 'Defias Inmate', 0, 0, 10),
	(112920, 3110, 50, 'AQ War Nokhor', 0, 7, 10),
	(112921, 3111, 0, 'AQ War Qiraji Lieutenant General', 0, 7, 10),
	(112901, 3110, 0, 'AQ War Qiraji Lieutenant General', 0, 7, 10),
	(112900, 3110, 50, 'AQ War Nokhor', 0, 7, 10),
	(112401, 3103, 0, 'AQ War Qiraji Brigadier General', 0, 7, 10),
	(112400, 3103, 50, 'AQ War Pax-lish', 0, 7, 10),
	(69113, 2453, 0, 'Lo\'Grosh (Youfie)', 0, 0, 10),
	(301285, 2453, 0, 'Lo\'Grosh (Youfie)', 0, 0, 10),
	(84079, 3601, 20, 'Miner Johnson (3586) Deadmines', 0, 0, 10),
	(87485, 4701, 30, 'Blind Hunter (4425) Razorfen Kraul', 0, 0, 10),
	(300379, 4702, 30, 'Earthcaller Halmgar (4842) Razorfen Kraul', 0, 0, 10),
	(87327, 4702, 70, 'Alternate creature to Halmgar (4842) Razorfen Kraul', 0, 0, 10),
	(301710, 34901, 30, 'Meshlok the Harvester (12237) Maraudon', 0, 0, 10),
	(54652, 34901, 70, 'Meshlok the Harvester (12237) Maraudon, alternate mob', 0, 0, 10),
	(30132, 9001, 70, 'Alternate creature to Dark Iron Ambassador (6228) Gnomeregan', 0, 0, 10),
	(300376, 9001, 30, 'Dark Iron Ambassador (6228) Gnomeregan', 0, 0, 10),
	(31774, 12901, 30, 'Ragglesnout (7354) Razorfen Downs', 0, 0, 10),
	(87241, 12901, 70, 'Alternate creature to Ragglesnout (7354) Razorfen Downs', 0, 0, 10),
	(16440, 3301, 30, 'Fel Steed ShadowfandKeep', 0, 0, 10),
	(300843, 3301, 70, 'Shadow Charger ShadowfandKeep', 0, 0, 10),
	(16441, 3302, 30, 'Fel Steed ShadowfandKeep', 0, 0, 10),
	(300844, 3302, 70, 'Shadow Charger ShadowfandKeep', 0, 0, 10),
	(16442, 3303, 30, 'Fel Steed ShadowfandKeep', 0, 0, 10),
	(300845, 3303, 70, 'Shadow Charger ShadowfandKeep', 0, 0, 10),
	(39893, 18901, 0, 'Graveyard Random Rare Boss spawn 1', 0, 0, 10),
	(39894, 18901, 2, 'Graveyard Random Rare Boss spawn 1', 0, 0, 10),
	(39883, 18901, 2, 'Graveyard Random Rare Boss spawn 1', 0, 0, 10),
	(39884, 18901, 2, 'Graveyard Random Rare Boss spawn 1', 0, 0, 10),
	(39888, 18902, 0, 'Graveyard Random Rare Boss spawn 2', 0, 0, 10),
	(39885, 18902, 2, 'Graveyard Random Rare Boss spawn 2', 0, 0, 10),
	(39886, 18902, 2, 'Graveyard Random Rare Boss spawn 2', 0, 0, 10),
	(39887, 18902, 2, 'Graveyard Random Rare Boss spawn 2', 0, 0, 10),
	(12164, 18903, 2, 'Graveyard Random Rare Boss spawn 3', 0, 0, 10),
	(39918, 18903, 2, 'Graveyard Random Rare Boss spawn 3', 0, 0, 10),
	(39919, 18903, 2, 'Graveyard Random Rare Boss spawn 3', 0, 0, 10),
	(39859, 18903, 0, 'Graveyard Random Rare Boss spawn 3', 0, 0, 10),
	(39882, 18904, 0, 'Graveyard Random Rare Boss spawn 4', 0, 0, 10),
	(39920, 18904, 2, 'Graveyard Random Rare Boss spawn 4', 0, 0, 10),
	(39921, 18904, 2, 'Graveyard Random Rare Boss spawn 4', 0, 0, 10),
	(39922, 18904, 2, 'Graveyard Random Rare Boss spawn 4', 0, 0, 10),
	(39895, 18905, 0, 'Graveyard Random Rare Boss spawn 5', 0, 0, 10),
	(39923, 18905, 2, 'Graveyard Random Rare Boss spawn 5', 0, 0, 10),
	(39924, 18905, 2, 'Graveyard Random Rare Boss spawn 5', 0, 0, 10),
	(39925, 18905, 2, 'Graveyard Random Rare Boss spawn 5', 0, 0, 10),
	(39907, 18906, 0, 'Graveyard Random Rare Boss spawn 6', 0, 0, 10),
	(39926, 18906, 2, 'Graveyard Random Rare Boss spawn 6', 0, 0, 10),
	(39927, 18906, 2, 'Graveyard Random Rare Boss spawn 6', 0, 0, 10),
	(39928, 18906, 2, 'Graveyard Random Rare Boss spawn 6', 0, 0, 10),
	(39944, 18907, 0, 'Graveyard Random Rare Boss spawn 7', 0, 0, 10),
	(39858, 18907, 2, 'Graveyard Random Rare Boss spawn 7', 0, 0, 10),
	(39864, 18907, 2, 'Graveyard Random Rare Boss spawn 7', 0, 0, 10),
	(39929, 18907, 2, 'Graveyard Random Rare Boss spawn 7', 0, 0, 10),
	(17600, 2452, 0, 'Skhowl', 0, 0, 10),
	(301286, 2452, 0, 'Skhowl', 0, 0, 10),
	(40461, 5004, 95, 'Jed Runewatcher', 0, 0, 10),
	(87490, 4701, 0, 'Blind Hunter - placeholder (Greater Kraul Bat)', 0, 0, 10),
	(99291, 1601, 30, 'Deathsworn Captain', 0, 0, 10),
	(134517, 1601, 70, 'Tormented Officer', 0, 0, 10),
	(47774, 42907, 100, 'BRD : Warder Stilgiss', 0, 0, 7),
	(47775, 42907, 100, 'BRD : Verek (pet of Warder Stilgiss)', 0, 0, 7),
	(47895, 42908, 100, 'BRD : Anvilrage Guardsman', 0, 0, 7),
	(47894, 42908, 100, 'BRD : Anvilrage Guardsman', 0, 0, 7),
	(47893, 42908, 100, 'BRD : Anvilrage Guardsman', 0, 0, 7),
	(47304, 42909, 25, 'BRD : Lord Roccor', 0, 0, 7),
	(90861, 42909, 0, 'BRD : Bloodhound', 0, 0, 7),
	(44170, 1501, 0, 'Zul\'Farrak : Sandfury Shadowhunter', 0, 0, 10),
	(155625, 1501, 30, 'Zul\'Farrak : Zerillis', 0, 0, 10),
	(134825, 4295, 100, 'DM North: First Pack v1 Brute', 0, 1, 10),
	(134827, 4295, 100, 'DM North: First Pack v1 Mage', 0, 1, 10),
	(134838, 4295, 100, 'DM North: First Pack v1 Mage', 0, 1, 10),
	(134865, 4295, 100, 'DM North: First Pack v1 Brute', 0, 1, 10),
	(136150, 4296, 100, 'DM North: First Pack v2 Brute', 0, 1, 10),
	(136151, 4296, 100, 'DM North: First Pack v2 Mage', 0, 1, 10),
	(136152, 4296, 100, 'DM North: First Pack v2 Mage', 0, 1, 10),
	(136153, 4296, 100, 'DM North: First Pack v2 Mastiff', 0, 1, 10),
	(136154, 4297, 100, 'DM North: First Pack v3 Mage', 0, 1, 10),
	(136155, 4297, 100, 'DM North: First Pack v3 Brute', 0, 1, 10),
	(136156, 4297, 100, 'DM North: First Pack v3 Mage', 0, 1, 10),
	(136157, 4298, 100, 'DM North: First Pack v4 Mage', 0, 1, 10),
	(136158, 4298, 100, 'DM North: First Pack v4 Brute', 0, 1, 10),
	(136159, 4298, 100, 'DM North: First Pack v4 Mage', 0, 1, 10),
	(136160, 4298, 100, 'DM North: First Pack v4 Brute', 0, 1, 10),
	(136161, 4299, 100, 'DM North: First Pack v5 Mastiff', 0, 1, 10),
	(136162, 4299, 100, 'DM North: First Pack v5 Brute', 0, 1, 10),
	(136163, 4299, 100, 'DM North: First Pack v5 Mage', 0, 1, 10),
	(136164, 4300, 100, 'DM North: First Pack v6 Brute', 0, 1, 10),
	(136165, 4300, 100, 'DM North: First Pack v6 Brute', 0, 1, 10),
	(136166, 4300, 100, 'DM North: First Pack v6 Mage', 0, 1, 10),
	(44148, 1502, 25, 'Zul\'Farrak : Sandarr Dunereaver', 0, 0, 10),
	(44162, 1502, 75, 'Zul\'Farrak : Sandfury Shadowcaster', 0, 0, 10),
	(53805, 32979, 0, 'Strat - Rockwing Gargoyle / Rockwing Screecher / Stonespine', 0, 0, 10),
	(53806, 32979, 0, 'Strat - Rockwing Gargoyle / Rockwing Screecher / Stonespine', 0, 0, 10),
	(53807, 32979, 15, 'Strat - Rockwing Gargoyle / Rockwing Screecher / Stonespine', 0, 0, 10),
	(43176, 1612, 50, 'Silithus - Shade of Ambermoon', 0, 0, 10),
	(43132, 1612, 50, 'Silithus - Shade of Ambermoon', 0, 0, 10),
	(4975, 1603, 50, 'Duskwood - Nefaru', 0, 0, 10),
	(4277, 1603, 50, 'Duskwood - Nefaru', 0, 0, 10);
/*!40000 ALTER TABLE `pool_creature` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
