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

-- Dumping structure for table mangos.mail_loot_template
CREATE TABLE IF NOT EXISTS `mail_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
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

-- Dumping data for table mangos.mail_loot_template: 72 rows
/*!40000 ALTER TABLE `mail_loot_template` DISABLE KEYS */;
REPLACE INTO `mail_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES
	(103, 11422, 100, 0, 1, 1, 0, 0, 10),
	(104, 11422, 100, 0, 1, 1, 0, 0, 10),
	(99, 11423, 100, 0, 1, 1, 0, 0, 10),
	(100, 11423, 100, 0, 1, 1, 0, 0, 10),
	(93, 20469, 100, 0, 1, 1, 0, 0, 10),
	(94, 20469, 100, 0, 1, 1, 0, 0, 10),
	(172, 23008, 100, 0, 1, 1, 0, 0, 10),
	(173, 23010, 100, 0, 1, 1, 0, 0, 10),
	(174, 23011, 100, 0, 1, 1, 0, 0, 10),
	(175, 23012, 100, 0, 1, 1, 0, 0, 10),
	(176, 23013, 100, 0, 1, 1, 0, 0, 10),
	(177, 23016, 100, 0, 1, 1, 0, 0, 10),
	(171, 22723, 100, 0, 1, 1, 0, 0, 10),
	(110, 20645, 100, 0, 1, 1, 0, 0, 10),
	(135, 21746, 100, 0, 1, 1, 0, 0, 10),
	(87, 6529, 100, 0, 1, 1, 0, 0, 10),
	(102, 17685, 100, 0, 1, 1, 0, 0, 10),
	(118, 17685, 100, 0, 1, 1, 0, 0, 10),
	(122, 21216, 100, 0, 1, 1, 0, 0, 10),
	(161, 21216, 100, 0, 1, 1, 0, 0, 10),
	(108, 17712, 100, 0, 1, 1, 0, 0, 10),
	(117, 17712, 100, 0, 1, 1, 0, 0, 10),
	(98, 13158, 100, 0, 1, 1, 0, 0, 10),
	(84, 21746, 100, 0, 1, 1, 0, 0, 10),
	(85, 21746, 100, 0, 1, 1, 0, 0, 10),
	(86, 21746, 100, 0, 1, 1, 0, 0, 10),
	(88, 21746, 100, 0, 1, 1, 0, 0, 10),
	(89, 21746, 100, 0, 1, 1, 0, 0, 10),
	(90, 21746, 100, 0, 1, 1, 0, 0, 10),
	(91, 21746, 100, 0, 1, 1, 0, 0, 10),
	(92, 21746, 100, 0, 1, 1, 0, 0, 10),
	(95, 21746, 100, 0, 1, 1, 0, 0, 10),
	(96, 21746, 100, 0, 1, 1, 0, 0, 10),
	(97, 21746, 100, 0, 1, 1, 0, 0, 10),
	(121, 21746, 100, 0, 1, 1, 0, 0, 10),
	(124, 21746, 100, 0, 1, 1, 0, 0, 10),
	(125, 21746, 100, 0, 1, 1, 0, 0, 10),
	(126, 21746, 100, 0, 1, 1, 0, 0, 10),
	(127, 21746, 100, 0, 1, 1, 0, 0, 10),
	(128, 21746, 100, 0, 1, 1, 0, 0, 10),
	(129, 21746, 100, 0, 1, 1, 0, 0, 10),
	(130, 21746, 100, 0, 1, 1, 0, 0, 10),
	(131, 21746, 100, 0, 1, 1, 0, 0, 10),
	(132, 21746, 100, 0, 1, 1, 0, 0, 10),
	(133, 21746, 100, 0, 1, 1, 0, 0, 10),
	(134, 21746, 100, 0, 1, 1, 0, 0, 10),
	(136, 21746, 100, 0, 1, 1, 0, 0, 10),
	(137, 21746, 100, 0, 1, 1, 0, 0, 10),
	(138, 21746, 100, 0, 1, 1, 0, 0, 10),
	(139, 21746, 100, 0, 1, 1, 0, 0, 10),
	(140, 21746, 100, 0, 1, 1, 0, 0, 10),
	(141, 21746, 100, 0, 1, 1, 0, 0, 10),
	(142, 21746, 100, 0, 1, 1, 0, 0, 10),
	(143, 21746, 100, 0, 1, 1, 0, 0, 10),
	(144, 21746, 100, 0, 1, 1, 0, 0, 10),
	(145, 21746, 100, 0, 1, 1, 0, 0, 10),
	(146, 21746, 100, 0, 1, 1, 0, 0, 10),
	(147, 21746, 100, 0, 1, 1, 0, 0, 10),
	(148, 21746, 100, 0, 1, 1, 0, 0, 10),
	(149, 21746, 100, 0, 1, 1, 0, 0, 10),
	(150, 21746, 100, 0, 1, 1, 0, 0, 10),
	(151, 21746, 100, 0, 1, 1, 0, 0, 10),
	(152, 21746, 100, 0, 1, 1, 0, 0, 10),
	(153, 21746, 100, 0, 1, 1, 0, 0, 10),
	(154, 21746, 100, 0, 1, 1, 0, 0, 10),
	(155, 21746, 100, 0, 1, 1, 0, 0, 10),
	(156, 21746, 100, 0, 1, 1, 0, 0, 10),
	(157, 21746, 100, 0, 1, 1, 0, 0, 10),
	(158, 21746, 100, 0, 1, 1, 0, 0, 10),
	(159, 21746, 100, 0, 1, 1, 0, 0, 10),
	(160, 21746, 100, 0, 1, 1, 0, 0, 10),
	(168, 21746, 100, 0, 1, 1, 0, 0, 10);
/*!40000 ALTER TABLE `mail_loot_template` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
