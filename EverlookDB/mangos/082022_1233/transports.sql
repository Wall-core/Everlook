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

-- Dumping structure for table mangos.transports
DROP TABLE IF EXISTS `transports`;
CREATE TABLE IF NOT EXISTS `transports` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `period` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';

-- Dumping data for table mangos.transports: 9 rows
/*!40000 ALTER TABLE `transports` DISABLE KEYS */;
INSERT INTO `transports` (`entry`, `name`, `period`) VALUES
	(20808, 'Ratchet and Booty Bay', 350822),
	(176244, 'Teldrassil and Auberdine', 316253),
	(176231, 'Menethil Harbor and Theramore Isle', 329315),
	(176310, 'Menethil Harbor and Auberdine', 295580),
	(177233, 'Forgotton Coast and Feathermoon Stronghold', 317044),
	(164871, 'Orgrimmar and Undercity', 356287),
	(175080, 'Grom\'Gol Base Camp and Orgrimmar', 303466),
	(176495, 'Grom\'Gol Base Camp and Undercity', 333044),
	(181056, 'Naxxramas', 1208095);
/*!40000 ALTER TABLE `transports` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
