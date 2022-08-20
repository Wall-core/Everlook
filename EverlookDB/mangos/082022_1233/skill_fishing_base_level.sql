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

-- Dumping structure for table mangos.skill_fishing_base_level
DROP TABLE IF EXISTS `skill_fishing_base_level`;
CREATE TABLE IF NOT EXISTS `skill_fishing_base_level` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL DEFAULT 0 COMMENT 'Base skill level requirement',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Fishing system';

-- Dumping data for table mangos.skill_fishing_base_level: 56 rows
/*!40000 ALTER TABLE `skill_fishing_base_level` DISABLE KEYS */;
INSERT INTO `skill_fishing_base_level` (`entry`, `skill`) VALUES
	(1, -70),
	(12, -70),
	(14, -70),
	(85, -70),
	(141, -70),
	(215, -70),
	(17, -20),
	(38, -20),
	(40, -20),
	(130, -20),
	(148, -20),
	(718, -20),
	(719, -20),
	(1519, -20),
	(1537, -20),
	(1581, -20),
	(1637, -20),
	(1638, -20),
	(1657, -20),
	(10, 55),
	(11, 55),
	(44, 55),
	(267, 55),
	(331, 55),
	(406, 55),
	(8, 130),
	(15, 130),
	(33, 130),
	(36, 130),
	(45, 130),
	(400, 130),
	(405, 130),
	(796, 130),
	(16, 205),
	(28, 205),
	(47, 205),
	(357, 205),
	(361, 205),
	(440, 205),
	(490, 205),
	(493, 205),
	(1417, 205),
	(2100, 205),
	(41, 330),
	(46, 330),
	(139, 330),
	(618, 330),
	(1377, 330),
	(1977, 330),
	(2017, 330),
	(2057, 330),
	(297, 205),
	(1112, 330),
	(1222, 330),
	(1227, 330),
	(3140, 330);
/*!40000 ALTER TABLE `skill_fishing_base_level` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
