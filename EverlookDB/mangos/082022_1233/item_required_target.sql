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

-- Dumping structure for table mangos.item_required_target
DROP TABLE IF EXISTS `item_required_target`;
CREATE TABLE IF NOT EXISTS `item_required_target` (
  `entry` mediumint(8) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `target_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `entry_type_target` (`entry`,`type`,`target_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table mangos.item_required_target: 37 rows
/*!40000 ALTER TABLE `item_required_target` DISABLE KEYS */;
INSERT INTO `item_required_target` (`entry`, `type`, `target_entry`) VALUES
	(3912, 1, 2530),
	(8149, 2, 7318),
	(9328, 1, 7977),
	(9606, 2, 7584),
	(9618, 2, 2927),
	(9618, 2, 2928),
	(9618, 2, 2929),
	(9618, 2, 7808),
	(9619, 2, 5300),
	(9619, 2, 5304),
	(9619, 2, 5305),
	(9619, 2, 5306),
	(9620, 2, 5276),
	(9620, 2, 5278),
	(9621, 2, 5357),
	(9621, 2, 5358),
	(9621, 2, 14604),
	(9621, 2, 14640),
	(12647, 1, 4678),
	(12647, 1, 4681),
	(12647, 1, 4685),
	(15908, 1, 1196),
	(15911, 1, 1126),
	(15913, 1, 1201),
	(15914, 1, 2956),
	(15915, 1, 2959),
	(15916, 1, 2970),
	(15917, 1, 3099),
	(15919, 1, 3107),
	(15920, 1, 3126),
	(15921, 1, 1998),
	(15922, 1, 2043),
	(15923, 1, 1996),
	(22048, 2, 16042),
	(22432, 1, 6498),
	(22432, 1, 6499),
	(22432, 1, 6500);
/*!40000 ALTER TABLE `item_required_target` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
