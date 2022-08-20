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

-- Dumping structure for table mangos.game_event_quest
DROP TABLE IF EXISTS `game_event_quest`;
CREATE TABLE IF NOT EXISTS `game_event_quest` (
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'entry from quest_template',
  `event` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'entry from game_event',
  `patch_min` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Minimum content patch to load this entry',
  PRIMARY KEY (`quest`,`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Game event system';

-- Dumping data for table mangos.game_event_quest: 69 rows
/*!40000 ALTER TABLE `game_event_quest` DISABLE KEYS */;
INSERT INTO `game_event_quest` (`quest`, `event`, `patch_min`) VALUES
	(172, 10, 2),
	(1468, 10, 2),
	(8193, 15, 5),
	(8194, 40, 5),
	(8221, 40, 5),
	(8224, 40, 5),
	(8225, 40, 5),
	(8228, 14, 5),
	(8229, 14, 5),
	(1657, 12, 6),
	(8795, 22, 7),
	(8980, 8, 8),
	(8983, 8, 8),
	(9025, 8, 8),
	(9027, 8, 8),
	(8860, 34, 6),
	(8507, 86, 7),
	(8861, 34, 6),
	(1658, 12, 6),
	(8311, 12, 6),
	(8312, 12, 6),
	(8322, 12, 6),
	(8353, 12, 6),
	(8354, 12, 6),
	(8355, 12, 6),
	(8356, 12, 6),
	(8357, 12, 6),
	(8358, 12, 6),
	(8359, 12, 6),
	(8360, 12, 6),
	(8373, 12, 6),
	(8409, 12, 6),
	(8743, 85, 7),
	(8731, 86, 7),
	(8800, 86, 7),
	(8556, 86, 7),
	(8557, 86, 7),
	(8558, 86, 7),
	(8689, 86, 7),
	(8690, 86, 7),
	(8691, 86, 7),
	(8692, 86, 7),
	(8693, 86, 7),
	(8694, 86, 7),
	(8695, 86, 7),
	(8696, 86, 7),
	(8697, 86, 7),
	(8698, 86, 7),
	(8699, 86, 7),
	(8700, 86, 7),
	(8701, 86, 7),
	(8702, 86, 7),
	(8703, 86, 7),
	(8704, 86, 7),
	(8705, 86, 7),
	(8706, 86, 7),
	(8707, 86, 7),
	(8708, 86, 7),
	(8709, 86, 7),
	(8710, 86, 7),
	(8711, 86, 7),
	(8712, 86, 7),
	(8794, 22, 7),
	(8792, 22, 7),
	(8793, 22, 7),
	(8796, 22, 7),
	(8797, 22, 7),
	(8827, 21, 6),
	(8828, 21, 6);
/*!40000 ALTER TABLE `game_event_quest` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
