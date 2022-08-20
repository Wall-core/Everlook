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

-- Dumping structure for table mangos.creature_spells_scripts
DROP TABLE IF EXISTS `creature_spells_scripts`;
CREATE TABLE IF NOT EXISTS `creature_spells_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `delay` int(10) unsigned NOT NULL DEFAULT 0,
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `command` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `datalong2` int(10) unsigned NOT NULL DEFAULT 0,
  `datalong3` int(10) unsigned NOT NULL DEFAULT 0,
  `datalong4` int(10) unsigned NOT NULL DEFAULT 0,
  `target_param1` int(10) unsigned NOT NULL DEFAULT 0,
  `target_param2` int(10) unsigned NOT NULL DEFAULT 0,
  `target_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `data_flags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dataint` int(11) NOT NULL DEFAULT 0,
  `dataint2` int(11) NOT NULL DEFAULT 0,
  `dataint3` int(11) NOT NULL DEFAULT 0,
  `dataint4` int(11) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0,
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.creature_spells_scripts: 17 rows
/*!40000 ALTER TABLE `creature_spells_scripts` DISABLE KEYS */;
INSERT INTO `creature_spells_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
	(21147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9071, 0, 0, 0, 0, 0, 0, 0, 0, 'Azuregos - Arcane Vacuum - Say Text'),
	(7621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6535, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Arugal - Arugal\'s Curse - Arugal Say Text'),
	(7803, 1, 0, 3, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 'Archmage Arugal - Thundershock - Move Away from Target'),
	(19096, 0, 0, 39, 19096, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 'Nathanos Blightcaller - 50% Chance to Yell Text'),
	(3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7798, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Scout - Say Text on Enrage'),
	(26381, 0, 0, 29, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -100, 0, 0, 0, 0, 'Hive\'Zara Sandstalker - Reset Threat'),
	(26381, 1, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Zara Sandstalker - Start Attack'),
	(17473, 0, 0, 15, 17475, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 1'),
	(17473, 0, 0, 15, 17476, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 2'),
	(17473, 0, 0, 15, 17477, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 3'),
	(17473, 0, 0, 15, 17478, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 4'),
	(17473, 0, 0, 15, 17479, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 5'),
	(17473, 0, 0, 15, 17480, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 6'),
	(17473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6511, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Say Text'),
	(17473, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6512, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Say Text'),
	(57640, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2077, 0, 0, 0, 0, 0, 0, 0, 0, 'Guardian of Blizzard - Say Text'),
	(8646, 0, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Ashenvale Outrunner - Move Away from Target');
/*!40000 ALTER TABLE `creature_spells_scripts` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
