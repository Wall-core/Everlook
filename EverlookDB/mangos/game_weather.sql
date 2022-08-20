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

-- Dumping structure for table mangos.game_weather
CREATE TABLE IF NOT EXISTS `game_weather` (
  `zone` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spring_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `spring_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `spring_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `summer_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `summer_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `summer_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `fall_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `fall_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `fall_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `winter_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `winter_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `winter_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  PRIMARY KEY (`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Weather System';

-- Dumping data for table mangos.game_weather: 33 rows
/*!40000 ALTER TABLE `game_weather` DISABLE KEYS */;
REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES
	(3, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 15),
	(45, 23, 0, 0, 15, 0, 0, 23, 0, 0, 23, 0, 0),
	(3358, 10, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0),
	(148, 15, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0),
	(85, 20, 0, 0, 15, 0, 0, 20, 0, 0, 20, 0, 0),
	(405, 10, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0),
	(41, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0),
	(15, 25, 0, 0, 20, 0, 0, 25, 0, 0, 25, 0, 0),
	(10, 15, 0, 0, 15, 0, 0, 20, 0, 0, 15, 0, 0),
	(139, 10, 0, 0, 15, 0, 0, 15, 0, 0, 10, 0, 0),
	(28, 10, 0, 0, 15, 0, 0, 15, 0, 0, 10, 0, 0),
	(2017, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0),
	(12, 20, 0, 0, 15, 0, 0, 20, 0, 0, 20, 0, 0),
	(357, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0),
	(267, 15, 0, 0, 10, 0, 0, 15, 0, 0, 15, 0, 0),
	(47, 10, 0, 0, 10, 0, 0, 15, 0, 0, 10, 0, 0),
	(38, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0),
	(215, 15, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0),
	(44, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0),
	(33, 20, 0, 0, 25, 0, 0, 25, 0, 0, 20, 0, 0),
	(141, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0),
	(796, 5, 0, 0, 10, 0, 0, 25, 0, 0, 5, 0, 0),
	(490, 15, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0),
	(11, 25, 0, 0, 15, 0, 0, 25, 0, 0, 25, 0, 0),
	(36, 0, 20, 0, 0, 20, 0, 0, 25, 0, 0, 30, 0),
	(1, 0, 25, 0, 0, 15, 0, 0, 25, 0, 0, 25, 0),
	(618, 0, 25, 0, 0, 20, 0, 0, 20, 0, 0, 25, 0),
	(2597, 0, 15, 0, 0, 15, 0, 0, 20, 0, 0, 25, 0),
	(1377, 0, 0, 20, 0, 0, 25, 0, 0, 20, 0, 0, 15),
	(3429, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 20),
	(3428, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 20),
	(440, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15),
	(1977, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0);
/*!40000 ALTER TABLE `game_weather` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
