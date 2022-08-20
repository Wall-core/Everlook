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

-- Dumping structure for table mangos.spell_elixir
DROP TABLE IF EXISTS `spell_elixir`;
CREATE TABLE IF NOT EXISTS `spell_elixir` (
  `entry` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'SpellId of potion',
  `mask` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT 'Mask 0x1 battle 0x2 guardian 0x3 flask 0x7 unstable flasks 0xB shattrath flasks',
  `build_min` smallint(4) unsigned NOT NULL DEFAULT 0 COMMENT 'Minimum game client build to load this entry',
  `build_max` smallint(4) unsigned NOT NULL DEFAULT 5875 COMMENT 'Maximum game client build to load this entry',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';

-- Dumping data for table mangos.spell_elixir: 60 rows
/*!40000 ALTER TABLE `spell_elixir` DISABLE KEYS */;
INSERT INTO `spell_elixir` (`entry`, `mask`, `build_min`, `build_max`) VALUES
	(17624, 3, 0, 5875),
	(17626, 3, 0, 5875),
	(17627, 3, 0, 5875),
	(17629, 3, 0, 5875),
	(17628, 3, 0, 5875),
	(2367, 0, 0, 5875),
	(2374, 0, 0, 5875),
	(3160, 0, 0, 5875),
	(3164, 0, 0, 5875),
	(7844, 0, 0, 5875),
	(8212, 0, 0, 5875),
	(10667, 0, 0, 5875),
	(10669, 0, 0, 5875),
	(11328, 0, 0, 5875),
	(11334, 0, 0, 5875),
	(11390, 0, 0, 5875),
	(11405, 0, 0, 5875),
	(11406, 0, 0, 5875),
	(11474, 0, 0, 5875),
	(16322, 0, 0, 5875),
	(16323, 0, 0, 5875),
	(16329, 0, 0, 5875),
	(17038, 0, 0, 5875),
	(17537, 0, 0, 5875),
	(17538, 0, 0, 5875),
	(17539, 0, 0, 5875),
	(21920, 0, 0, 5875),
	(26276, 0, 5302, 5875),
	(673, 0, 0, 5875),
	(2378, 0, 0, 5875),
	(2380, 0, 0, 5875),
	(3166, 0, 0, 5875),
	(3219, 0, 0, 5875),
	(3220, 0, 0, 5875),
	(3222, 0, 0, 5875),
	(3223, 0, 0, 5875),
	(3593, 0, 0, 5875),
	(10668, 0, 0, 5875),
	(10692, 0, 0, 5875),
	(10693, 0, 0, 5875),
	(11319, 0, 0, 5875),
	(11348, 0, 0, 5875),
	(11349, 0, 0, 5875),
	(16321, 0, 0, 5875),
	(11364, 0, 0, 5875),
	(11371, 0, 0, 5875),
	(11396, 0, 0, 5875),
	(15231, 0, 0, 5875),
	(15233, 0, 0, 5875),
	(16325, 0, 0, 5875),
	(16326, 0, 0, 5875),
	(16327, 0, 0, 5875),
	(17535, 0, 0, 5875),
	(24361, 0, 4695, 5875),
	(24363, 0, 4695, 5875),
	(24382, 0, 4695, 5875),
	(24383, 0, 4695, 5875),
	(24417, 0, 4695, 5875),
	(27652, 0, 5302, 5875),
	(27653, 0, 5302, 5875);
/*!40000 ALTER TABLE `spell_elixir` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
