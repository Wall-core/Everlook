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

-- Dumping structure for table mangos.disenchant_loot_template
DROP TABLE IF EXISTS `disenchant_loot_template`;
CREATE TABLE IF NOT EXISTS `disenchant_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Recommended id selection: item_level*100 + item_quality',
  `item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ChanceOrQuestChance` float NOT NULL DEFAULT 100,
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT 1,
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `patch_min` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Minimum content patch to load this entry',
  `patch_max` tinyint(3) unsigned NOT NULL DEFAULT 10 COMMENT 'Maximum content patch to load this entry',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Dumping data for table mangos.disenchant_loot_template: 81 rows
/*!40000 ALTER TABLE `disenchant_loot_template` DISABLE KEYS */;
INSERT INTO `disenchant_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES
	(65, 20725, 100, 0, 1, 2, 0, 0, 10),
	(64, 20725, 100, 0, 1, 1, 0, 0, 10),
	(63, 14343, 100, 0, 2, 4, 0, 0, 10),
	(62, 11178, 100, 0, 2, 4, 0, 0, 10),
	(61, 11177, 100, 0, 2, 4, 0, 0, 10),
	(49, 20725, 1, 1, 1, 1, 0, 0, 10),
	(49, 14344, 99, 1, 1, 1, 0, 0, 10),
	(48, 14344, 100, 1, 1, 1, 0, 0, 10),
	(47, 14343, 100, 0, 1, 1, 0, 0, 10),
	(46, 11178, 100, 0, 1, 1, 0, 0, 10),
	(45, 11177, 100, 0, 1, 1, 0, 0, 10),
	(44, 11139, 100, 0, 1, 1, 0, 0, 10),
	(43, 11138, 100, 0, 1, 1, 0, 0, 10),
	(42, 11084, 100, 0, 1, 1, 0, 0, 10),
	(41, 10978, 100, 0, 1, 1, 0, 0, 10),
	(31, 14344, 0, 1, 1, 1, 0, 0, 10),
	(31, 16203, 75, 1, 2, 3, 0, 0, 10),
	(31, 16204, 22, 1, 2, 5, 0, 0, 10),
	(30, 14344, 0, 1, 1, 1, 0, 0, 10),
	(30, 16203, 75, 1, 1, 2, 0, 0, 10),
	(30, 16204, 22, 1, 1, 2, 0, 0, 10),
	(29, 14343, 0, 1, 1, 1, 0, 0, 10),
	(29, 16202, 75, 1, 1, 2, 0, 0, 10),
	(29, 11176, 22, 1, 2, 5, 0, 0, 10),
	(28, 11178, 0, 1, 1, 1, 0, 0, 10),
	(28, 11175, 75, 1, 1, 2, 0, 0, 10),
	(28, 11176, 20, 1, 1, 2, 0, 0, 10),
	(27, 11177, 0, 1, 1, 1, 0, 0, 10),
	(27, 11174, 75, 1, 1, 2, 0, 0, 10),
	(27, 11137, 20, 1, 2, 5, 0, 0, 10),
	(26, 11139, 0, 1, 1, 1, 0, 0, 10),
	(26, 11135, 75, 1, 1, 2, 0, 0, 10),
	(26, 11137, 20, 1, 1, 2, 0, 0, 10),
	(25, 11138, 0, 1, 1, 1, 0, 0, 10),
	(25, 11134, 75, 1, 1, 2, 0, 0, 10),
	(25, 11083, 20, 1, 2, 5, 0, 0, 10),
	(24, 11084, 0, 1, 1, 1, 0, 0, 10),
	(24, 11082, 75, 1, 1, 2, 0, 0, 10),
	(24, 11083, 20, 1, 1, 2, 0, 0, 10),
	(23, 10978, 0, 1, 1, 1, 0, 0, 10),
	(23, 10998, 75, 1, 1, 2, 0, 0, 10),
	(23, 10940, 15, 1, 4, 6, 0, 0, 10),
	(22, 10978, 0, 1, 1, 1, 0, 0, 10),
	(22, 10939, 75, 1, 1, 2, 0, 0, 10),
	(22, 10940, 20, 1, 2, 3, 0, 0, 10),
	(21, 10938, 80, 1, 1, 2, 0, 0, 10),
	(21, 10940, 0, 1, 1, 2, 0, 0, 10),
	(11, 14344, 0, 1, 1, 1, 0, 0, 10),
	(11, 16203, 20, 1, 2, 3, 0, 0, 10),
	(11, 16204, 75, 1, 2, 5, 0, 0, 10),
	(10, 14344, 0, 1, 1, 1, 0, 0, 10),
	(10, 16203, 20, 1, 1, 2, 0, 0, 10),
	(10, 16204, 75, 1, 1, 2, 0, 0, 10),
	(9, 14343, 0, 1, 1, 1, 0, 0, 10),
	(9, 16202, 20, 1, 1, 2, 0, 0, 10),
	(9, 11176, 75, 1, 2, 5, 0, 0, 10),
	(8, 11178, 0, 1, 1, 1, 0, 0, 10),
	(8, 11175, 20, 1, 1, 2, 0, 0, 10),
	(8, 11176, 75, 1, 1, 2, 0, 0, 10),
	(7, 11177, 0, 1, 1, 1, 0, 0, 10),
	(7, 11174, 20, 1, 1, 2, 0, 0, 10),
	(7, 11137, 75, 1, 2, 5, 0, 0, 10),
	(6, 11139, 0, 1, 1, 1, 0, 0, 10),
	(6, 11135, 20, 1, 1, 2, 0, 0, 10),
	(6, 11137, 75, 1, 1, 2, 0, 0, 10),
	(5, 11138, 0, 1, 1, 1, 0, 0, 10),
	(5, 11134, 20, 1, 1, 2, 0, 0, 10),
	(5, 11083, 75, 1, 2, 5, 0, 0, 10),
	(4, 11084, 0, 1, 1, 1, 0, 0, 10),
	(4, 11082, 20, 1, 1, 2, 0, 0, 10),
	(4, 11083, 75, 1, 1, 2, 0, 0, 10),
	(3, 10978, 0, 1, 1, 1, 0, 0, 10),
	(3, 10998, 15, 1, 1, 2, 0, 0, 10),
	(3, 10940, 75, 1, 4, 6, 0, 0, 10),
	(2, 10978, 0, 1, 1, 1, 0, 0, 10),
	(2, 10939, 20, 1, 1, 2, 0, 0, 10),
	(2, 10940, 75, 1, 2, 3, 0, 0, 10),
	(1, 10938, 0, 1, 1, 2, 0, 0, 10),
	(1, 10940, 80, 1, 1, 2, 0, 0, 10),
	(64, 14344, 100, 0, 1, 1, 4026, 0, 10),
	(65, 14344, 100, 0, 1, 2, 4026, 0, 10);
/*!40000 ALTER TABLE `disenchant_loot_template` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
