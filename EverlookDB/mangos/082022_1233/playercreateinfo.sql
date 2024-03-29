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

-- Dumping structure for table mangos.playercreateinfo
DROP TABLE IF EXISTS `playercreateinfo`;
CREATE TABLE IF NOT EXISTS `playercreateinfo` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `map` smallint(5) unsigned NOT NULL DEFAULT 0,
  `zone` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.playercreateinfo: 40 rows
/*!40000 ALTER TABLE `playercreateinfo` DISABLE KEYS */;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
	(1, 1, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(1, 2, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(1, 4, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(1, 5, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(1, 8, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(1, 9, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(2, 1, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(2, 3, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(2, 4, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(2, 7, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(2, 9, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(3, 1, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(3, 2, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(3, 3, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(3, 4, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(3, 5, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(4, 1, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(4, 3, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(4, 4, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(4, 5, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(4, 11, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(5, 1, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(5, 4, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(5, 5, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(5, 8, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(5, 9, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(6, 1, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(6, 3, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(6, 7, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(6, 11, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(7, 1, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(7, 4, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(7, 8, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(7, 9, 269, 2370, 2173.93, 28.867, 53.167, 2.73327),
	(8, 1, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(8, 3, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(8, 4, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(8, 5, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(8, 7, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514),
	(8, 8, 269, 2367, 2516.04, 1340.72, 20.6419, 4.38514);
/*!40000 ALTER TABLE `playercreateinfo` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
