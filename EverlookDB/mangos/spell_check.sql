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

-- Dumping structure for table mangos.spell_check
CREATE TABLE IF NOT EXISTS `spell_check` (
  `spellid` mediumint(7) unsigned NOT NULL DEFAULT 0,
  `SpellFamilyName` smallint(5) NOT NULL DEFAULT -1,
  `SpellFamilyMask` bigint(30) NOT NULL DEFAULT -1,
  `SpellIcon` int(10) NOT NULL DEFAULT -1,
  `SpellVisual` int(10) NOT NULL DEFAULT -1,
  `SpellCategory` int(10) NOT NULL DEFAULT -1,
  `EffectType` int(10) NOT NULL DEFAULT -1,
  `EffectAura` int(10) NOT NULL DEFAULT -1,
  `EffectIdx` tinyint(3) NOT NULL DEFAULT -1,
  `Name` varchar(40) NOT NULL DEFAULT '',
  `Code` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`spellid`,`SpellFamilyName`,`SpellFamilyMask`,`SpellIcon`,`SpellVisual`,`SpellCategory`,`Code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.spell_check: 5 rows
/*!40000 ALTER TABLE `spell_check` DISABLE KEYS */;
REPLACE INTO `spell_check` (`spellid`, `SpellFamilyName`, `SpellFamilyMask`, `SpellIcon`, `SpellVisual`, `SpellCategory`, `EffectType`, `EffectAura`, `EffectIdx`, `Name`, `Code`) VALUES
	(18788, -1, -1, -1, -1, -1, 1, -1, -1, 'Demonic Sacrifice', 'Spell::EffectInstaKill'),
	(18789, -1, -1, -1, -1, -1, -1, -1, -1, '', 'Spell::EffectInstaKill'),
	(18790, -1, -1, -1, -1, -1, -1, -1, -1, '', 'Spell::EffectInstaKill'),
	(18791, -1, -1, -1, -1, -1, -1, -1, -1, '', 'Spell::EffectInstaKill'),
	(18792, -1, -1, -1, -1, -1, -1, -1, -1, '', 'Spell::EffectInstaKill');
/*!40000 ALTER TABLE `spell_check` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
