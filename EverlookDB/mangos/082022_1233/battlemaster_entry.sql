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

-- Dumping structure for table mangos.battlemaster_entry
DROP TABLE IF EXISTS `battlemaster_entry`;
CREATE TABLE IF NOT EXISTS `battlemaster_entry` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Entry of a creature',
  `bg_template` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Battleground template id',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.battlemaster_entry: 24 rows
/*!40000 ALTER TABLE `battlemaster_entry` DISABLE KEYS */;
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES
	(347, 1),
	(5118, 1),
	(7410, 1),
	(7427, 1),
	(12197, 1),
	(14942, 1),
	(2302, 2),
	(2804, 2),
	(3890, 2),
	(10360, 2),
	(14981, 2),
	(14982, 2),
	(857, 3),
	(907, 3),
	(12198, 3),
	(15006, 3),
	(15007, 3),
	(15008, 3),
	(14990, 3),
	(14991, 3),
	(15102, 2),
	(15105, 2),
	(15106, 1),
	(15103, 1);
/*!40000 ALTER TABLE `battlemaster_entry` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
