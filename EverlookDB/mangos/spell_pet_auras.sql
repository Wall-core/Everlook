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

-- Dumping structure for table mangos.spell_pet_auras
CREATE TABLE IF NOT EXISTS `spell_pet_auras` (
  `spell` mediumint(8) unsigned NOT NULL COMMENT 'dummy spell id',
  `pet` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'pet id; 0 = all',
  `aura` mediumint(8) unsigned NOT NULL COMMENT 'pet aura id',
  PRIMARY KEY (`spell`,`pet`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table mangos.spell_pet_auras: 23 rows
/*!40000 ALTER TABLE `spell_pet_auras` DISABLE KEYS */;
REPLACE INTO `spell_pet_auras` (`spell`, `pet`, `aura`) VALUES
	(19028, 0, 25228),
	(19578, 0, 19579),
	(20895, 0, 24529),
	(23785, 416, 23759),
	(23822, 416, 23826),
	(23823, 416, 23827),
	(23824, 416, 23828),
	(23825, 416, 23829),
	(23785, 417, 23762),
	(23822, 417, 23837),
	(23823, 417, 23838),
	(23824, 417, 23839),
	(23825, 417, 23840),
	(23785, 1860, 23760),
	(23822, 1860, 23841),
	(23823, 1860, 23842),
	(23824, 1860, 23843),
	(23825, 1860, 23844),
	(23785, 1863, 23761),
	(23822, 1863, 23833),
	(23823, 1863, 23834),
	(23824, 1863, 23835),
	(23825, 1863, 23836);
/*!40000 ALTER TABLE `spell_pet_auras` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
