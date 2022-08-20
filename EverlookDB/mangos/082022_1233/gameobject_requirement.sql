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

-- Dumping structure for table mangos.gameobject_requirement
DROP TABLE IF EXISTS `gameobject_requirement`;
CREATE TABLE IF NOT EXISTS `gameobject_requirement` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `reqType` int(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Gameobject Identifier',
  `reqGuid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gameobject Identifier',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM AUTO_INCREMENT=397162 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';

-- Dumping data for table mangos.gameobject_requirement: 22 rows
/*!40000 ALTER TABLE `gameobject_requirement` DISABLE KEYS */;
INSERT INTO `gameobject_requirement` (`guid`, `reqType`, `reqGuid`) VALUES
	(43121, 1, 15536),
	(43126, 1, 35801),
	(361752, 0, 44319),
	(43127, 1, 15365),
	(43128, 1, 15364),
	(43135, 1, 15363),
	(43123, 1, 39924),
	(362149, 1, 43094),
	(43137, 1, 43094),
	(43134, 1, 15646),
	(43120, 1, 17904),
	(43136, 1, 15329),
	(43129, 1, 15330),
	(43124, 1, 15331),
	(43122, 1, 15306),
	(43125, 1, 35864),
	(349151, 0, 43469),
	(43219, 1, 43178),
	(27871, 0, 52161),
	(27888, 0, 53693),
	(397160, 0, 56942),
	(397161, 0, 56942);
/*!40000 ALTER TABLE `gameobject_requirement` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
