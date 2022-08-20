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

-- Dumping structure for table mangos.battleground_template
DROP TABLE IF EXISTS `battleground_template`;
CREATE TABLE IF NOT EXISTS `battleground_template` (
  `id` mediumint(8) unsigned NOT NULL,
  `patch` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Content patch in which this exact version of the entry was added',
  `min_players_per_team` smallint(5) unsigned NOT NULL DEFAULT 0,
  `max_players_per_team` smallint(5) unsigned NOT NULL DEFAULT 0,
  `min_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `max_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `alliance_win_spell` smallint(5) unsigned NOT NULL DEFAULT 0,
  `alliance_lose_spell` smallint(5) unsigned NOT NULL DEFAULT 0,
  `horde_win_spell` smallint(5) unsigned NOT NULL DEFAULT 0,
  `horde_lose_spell` smallint(5) unsigned NOT NULL DEFAULT 0,
  `alliance_start_location` mediumint(8) unsigned NOT NULL COMMENT 'WorldSafeLocs.dbc',
  `horde_start_location` mediumint(8) unsigned NOT NULL COMMENT 'WorldSafeLocs.dbc',
  PRIMARY KEY (`id`,`patch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.battleground_template: 10 rows
/*!40000 ALTER TABLE `battleground_template` DISABLE KEYS */;
INSERT INTO `battleground_template` (`id`, `patch`, `min_players_per_team`, `max_players_per_team`, `min_level`, `max_level`, `alliance_win_spell`, `alliance_lose_spell`, `horde_win_spell`, `horde_lose_spell`, `alliance_start_location`, `horde_start_location`) VALUES
	(1, 0, 20, 40, 61, 61, 0, 0, 0, 0, 611, 610),
	(2, 0, 4, 10, 61, 61, 0, 0, 0, 0, 769, 770),
	(3, 0, 6, 15, 61, 61, 0, 0, 0, 0, 890, 889),
	(2, 3, 4, 10, 21, 60, 23661, 0, 23702, 0, 769, 770),
	(1, 3, 30, 40, 51, 60, 0, 0, 0, 0, 611, 610),
	(3, 5, 6, 15, 20, 60, 24017, 0, 24017, 0, 890, 889),
	(2, 5, 4, 10, 20, 60, 23661, 24637, 23702, 24637, 769, 770),
	(2, 6, 4, 10, 10, 60, 24951, 24950, 24951, 24950, 769, 770),
	(1, 6, 20, 40, 51, 60, 24955, 24954, 24955, 24954, 611, 610),
	(3, 6, 6, 15, 20, 60, 24953, 24952, 24953, 24952, 890, 889);
/*!40000 ALTER TABLE `battleground_template` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
