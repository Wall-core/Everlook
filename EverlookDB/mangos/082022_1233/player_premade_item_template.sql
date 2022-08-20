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

-- Dumping structure for table mangos.player_premade_item_template
DROP TABLE IF EXISTS `player_premade_item_template`;
CREATE TABLE IF NOT EXISTS `player_premade_item_template` (
  `entry` int(10) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level` tinyint(3) unsigned NOT NULL DEFAULT 60,
  `role` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mangos.player_premade_item_template: ~9 rows (approximately)
INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `role`, `name`) VALUES
	(100, 1, 60, 1, 'Everlook Warrior'),
	(101, 2, 60, 1, 'Everlook Paladin'),
	(102, 7, 60, 1, 'Everlook Shaman'),
	(103, 3, 60, 1, 'Everlook Hunter'),
	(104, 4, 60, 1, 'Everlook Rogue'),
	(105, 11, 60, 1, 'Everlook Druid'),
	(106, 9, 60, 1, 'Everlook Warlock'),
	(107, 5, 60, 1, 'Everlook Priest'),
	(108, 8, 60, 1, 'Everlook Mage');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
