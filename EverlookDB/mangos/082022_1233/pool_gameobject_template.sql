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

-- Dumping structure for table mangos.pool_gameobject_template
DROP TABLE IF EXISTS `pool_gameobject_template`;
CREATE TABLE IF NOT EXISTS `pool_gameobject_template` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `chance` float unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `flags` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FLAG_SPAWN_ENABLE_IF_WORLD_POP_OVER_BLIZZLIKE = 1',
  `patch_min` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Minimum content patch to load this entry',
  `patch_max` tinyint(3) unsigned NOT NULL DEFAULT 10 COMMENT 'Maximum content patch to load this entry',
  PRIMARY KEY (`id`),
  KEY `pool_idx` (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.pool_gameobject_template: 51 rows
/*!40000 ALTER TABLE `pool_gameobject_template` DISABLE KEYS */;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES
	(180753, 42905, 0, 'Azshara - Patch of Elemental Water', 0, 7, 10),
	(175785, 22909, 0, 'LBRS - Inconspicuous Documents', 0, 0, 10),
	(1727, 1339, 0, 'Hillsbrad Foothills - Dun Garok - Keg of Shindigger Stout (1727)', 0, 0, 10),
	(2744, 1342, 0, 'Stranglethorn Vale - Giant Clam', 0, 0, 10),
	(375, 1597, 0, 'Tirisfal Glades - Tirisfal Pumpkin', 0, 0, 10),
	(331, 152, 0, 'Wetlands - Loose Soil', 0, 0, 10),
	(333, 162, 0, 'Wetlands - Ancient Relic', 0, 0, 10),
	(334, 1599, 0, 'Wetlands - Ancient Relic', 0, 0, 10),
	(35252, 1598, 0, 'Wetlands - Ancient Relic', 0, 0, 10),
	(175334, 139, 0, 'LBRS - Bijous Belongings', 0, 0, 10),
	(161557, 140, 0, 'Elwynn Forest - Milly\'s Harvest', 0, 0, 10),
	(175966, 141, 0, 'Stratholme - Enchanted Scarlet Thread', 0, 0, 10),
	(154357, 142, 0, 'Redridge Mountains - Glinting Mud', 0, 0, 10),
	(176249, 143, 0, 'Stratholme - Scourge Data', 0, 0, 10),
	(2086, 144, 0, 'Stranglethorn Vale - Bloodsail Charts', 0, 0, 10),
	(2087, 150, 0, 'Stranglethorn Vale - Bloodsail Orders', 0, 0, 10),
	(179548, 1596, 0, 'Dire Maul - Dusty Tome', 0, 1, 10),
	(176753, 1010, 0, 'Tirisfal Glades - Doom Weed', 0, 0, 10),
	(175566, 1009, 0, 'Tirisfal Glades - Gloom Weed', 0, 0, 10),
	(181287, 1595, 0, 'Naxxramas - Frozen Rune', 0, 9, 10),
	(1673, 1613, 0, 'Teldrassil - Fel Cone', 0, 0, 10),
	(4608, 1614, 0, 'Teldrassil - Timberling Sprout', 0, 0, 10),
	(3640, 1615, 0, 'The Barrens - Laden Mushroom', 0, 0, 10),
	(3685, 1616, 0, 'The Barrens - Silithid Mound', 0, 0, 10),
	(1723, 1617, 0, 'Hillsbrad Foothills - Mudsnout Blossom', 0, 0, 10),
	(175928, 1618, 0, 'Thousand Needles - Incendia Agarve', 0, 0, 10),
	(2724, 1619, 0, 'Westfall - Sack of Oats', 0, 0, 10),
	(13360, 1636, 0, 'Darkshore - Mathystra Relic (Entry: 13360)', 0, 0, 10),
	(12654, 1636, 0, 'Darkshore - Mathystra Relic (Entry: 12654)', 0, 0, 10),
	(13872, 1636, 0, 'Darkshore - Mathystra Relic (Entry: 13872)', 0, 0, 10),
	(24798, 1620, 0, 'Swamp of Sorrows - Sundried Driftwood', 0, 0, 10),
	(28604, 1621, 0, 'Swamp of Sorrows - Scattered Crate', 0, 0, 10),
	(86492, 1622, 0, 'Darkshore - Crate of Elunite', 0, 0, 10),
	(89634, 1623, 0, 'Wetlands - Iron Coral', 0, 0, 10),
	(89635, 1624, 0, 'Thousand Needles - Sunscorched Shell', 0, 0, 10),
	(141931, 1625, 0, 'Feralas - Hippogryph Egg', 0, 0, 10),
	(148516, 1626, 0, 'Azshara - Tablet of Beth\'Amara', 0, 0, 10),
	(148513, 1627, 0, 'Azshara - Tablet of Jinyael', 0, 0, 10),
	(148514, 1628, 0, 'Azshara - Tablet of Markri', 0, 0, 10),
	(148515, 1629, 0, 'Azshara - Tablet of Saelhai', 0, 0, 10),
	(152094, 1630, 0, 'Teldrassil - Hyacinth Mushroom', 0, 0, 10),
	(152622, 1631, 0, 'Azshara - Azsharite (Entry: 152622)', 0, 0, 10),
	(152621, 1632, 0, 'Azshara - Azsharite (Entry: 152621)', 0, 0, 10),
	(152620, 1633, 0, 'Azshara - Azsharite (Entry: 152620)', 0, 0, 10),
	(176213, 1634, 0, 'Plaguelands - Blood of Heroes', 0, 0, 10),
	(176150, 151, 0, 'Western Plaguelands - Musty Tome', 0, 0, 10),
	(2554, 1336, 0, 'Stranglethorn Vale - Cortello\'s Riddle', 0, 0, 10),
	(176116, 3012, 0, 'Eastern Plaguelands - Pamela\'s Doll\'s Head', 0, 0, 10),
	(176142, 3013, 0, 'Eastern Plaguelands - Pamela\'s Doll\'s Left Side', 0, 0, 10),
	(176143, 3014, 0, 'Eastern Plaguelands - Pamela\'s Doll\'s Right Side', 0, 0, 10),
	(2560, 1635, 0, 'Stranglethorn Vale - Half Buried Bottle', 0, 0, 10);
/*!40000 ALTER TABLE `pool_gameobject_template` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
