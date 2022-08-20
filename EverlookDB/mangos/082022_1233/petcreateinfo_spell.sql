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

-- Dumping structure for table mangos.petcreateinfo_spell
DROP TABLE IF EXISTS `petcreateinfo_spell`;
CREATE TABLE IF NOT EXISTS `petcreateinfo_spell` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell1` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell3` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell4` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `patch_min` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Minimum content patch to load this entry',
  `patch_max` tinyint(3) unsigned NOT NULL DEFAULT 10 COMMENT 'Maximum content patch to load this entry',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet Create Spells';

-- Dumping data for table mangos.petcreateinfo_spell: 7 rows
/*!40000 ALTER TABLE `petcreateinfo_spell` DISABLE KEYS */;
INSERT INTO `petcreateinfo_spell` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`, `patch_min`, `patch_max`) VALUES
	(416, 3110, 0, 0, 0, 0, 10),
	(417, 19505, 0, 0, 0, 0, 10),
	(510, 6873, 9672, 0, 0, 0, 10),
	(1860, 3716, 0, 0, 0, 0, 10),
	(1863, 7814, 0, 0, 0, 0, 10),
	(5807, 17254, 0, 0, 0, 0, 10),
	(15429, 25163, 0, 0, 0, 7, 10);
/*!40000 ALTER TABLE `petcreateinfo_spell` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
