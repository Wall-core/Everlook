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

-- Dumping structure for table mangos.spell_learn_spell
DROP TABLE IF EXISTS `spell_learn_spell`;
CREATE TABLE IF NOT EXISTS `spell_learn_spell` (
  `entry` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SpellID` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Active` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `build_min` smallint(4) unsigned NOT NULL DEFAULT 0 COMMENT 'Minimum game client build to load this entry',
  `build_max` smallint(4) unsigned NOT NULL DEFAULT 5875 COMMENT 'Maximum game client build to load this entry',
  PRIMARY KEY (`entry`,`SpellID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

-- Dumping data for table mangos.spell_learn_spell: 5 rows
/*!40000 ALTER TABLE `spell_learn_spell` DISABLE KEYS */;
INSERT INTO `spell_learn_spell` (`entry`, `SpellID`, `Active`, `build_min`, `build_max`) VALUES
	(2842, 8681, 1, 0, 5875),
	(5149, 1853, 1, 0, 5875),
	(5149, 14922, 1, 0, 5875),
	(17002, 24867, 0, 4878, 5875),
	(24866, 24864, 0, 4878, 5875);
/*!40000 ALTER TABLE `spell_learn_spell` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
