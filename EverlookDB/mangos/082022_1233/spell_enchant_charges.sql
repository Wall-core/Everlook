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

-- Dumping structure for table mangos.spell_enchant_charges
DROP TABLE IF EXISTS `spell_enchant_charges`;
CREATE TABLE IF NOT EXISTS `spell_enchant_charges` (
  `entry` int(10) unsigned NOT NULL,
  `charges` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.spell_enchant_charges: ~19 rows (approximately)
INSERT INTO `spell_enchant_charges` (`entry`, `charges`) VALUES
	(2823, 60),
	(2824, 75),
	(5761, 50),
	(8679, 40),
	(8686, 55),
	(8688, 70),
	(8693, 75),
	(11338, 85),
	(11339, 100),
	(11340, 115),
	(11355, 90),
	(11356, 105),
	(11399, 100),
	(13219, 60),
	(13225, 75),
	(13226, 90),
	(13227, 105),
	(14792, 15),
	(25351, 120);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
