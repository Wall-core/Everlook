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

-- Dumping structure for table mangos.variables
DROP TABLE IF EXISTS `variables`;
CREATE TABLE IF NOT EXISTS `variables` (
  `index` int(10) unsigned NOT NULL DEFAULT 0,
  `value` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table mangos.variables: 37 rows
/*!40000 ALTER TABLE `variables` DISABLE KEYS */;
INSERT INTO `variables` (`index`, `value`) VALUES
	(17440, 1657661433),
	(17004, 1657661433),
	(17139, 1657661433),
	(17046, 1657661433),
	(17618, 1657661433),
	(17016, 1657661433),
	(171497, 1657661433),
	(171519, 1657661433),
	(17000, 0),
	(17001, 0),
	(17092, 0),
	(17093, 0),
	(17095, 0),
	(17094, 0),
	(17091, 0),
	(17090, 0),
	(30002, 0),
	(30054, 1660958101),
	(30050, 0),
	(30016, 1657896427),
	(30017, 3),
	(30012, 0),
	(30008, 5),
	(30020, 3),
	(30015, 0),
	(30011, 5),
	(30019, 3),
	(30014, 0),
	(30010, 5),
	(30018, 3),
	(30013, 2),
	(30009, 5),
	(30056, 0),
	(30022, 0),
	(30023, 1),
	(1, 0),
	(0, 0);
/*!40000 ALTER TABLE `variables` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
