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

-- Dumping structure for table mangos.areatrigger_involvedrelation
DROP TABLE IF EXISTS `areatrigger_involvedrelation`;
CREATE TABLE IF NOT EXISTS `areatrigger_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';

-- Dumping data for table mangos.areatrigger_involvedrelation: 40 rows
/*!40000 ALTER TABLE `areatrigger_involvedrelation` DISABLE KEYS */;
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`) VALUES
	(2946, 6421),
	(3366, 6025),
	(2327, 4842),
	(2486, 4811),
	(1205, 2989),
	(482, 1699),
	(362, 1448),
	(231, 984),
	(230, 954),
	(223, 944),
	(216, 870),
	(196, 578),
	(97, 287),
	(98, 201),
	(78, 155),
	(178, 503),
	(87, 76),
	(88, 62),
	(3986, 8286),
	(1387, 3505),
	(175, 455),
	(246, 1149),
	(232, 984),
	(235, 984),
	(2926, 25),
	(522, 1719),
	(197, 62),
	(342, 76),
	(2206, 5156),
	(2207, 5156),
	(2208, 5156),
	(822, 2240),
	(173, 437),
	(3991, 1658),
	(2726, 6185),
	(4101, 9263),
	(4103, 9264),
	(4100, 9265),
	(224, 944),
	(225, 944);
/*!40000 ALTER TABLE `areatrigger_involvedrelation` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
