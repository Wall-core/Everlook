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

-- Dumping structure for table mangos.player_factionchange_spells
DROP TABLE IF EXISTS `player_factionchange_spells`;
CREATE TABLE IF NOT EXISTS `player_factionchange_spells` (
  `alliance_id` int(8) NOT NULL,
  `horde_id` int(8) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.player_factionchange_spells: 37 rows
/*!40000 ALTER TABLE `player_factionchange_spells` DISABLE KEYS */;
INSERT INTO `player_factionchange_spells` (`alliance_id`, `horde_id`, `comment`) VALUES
	(458, 6654, ''),
	(472, 580, ''),
	(3561, 3567, 'Teleportation : Hurlevent / Orgrimmar'),
	(3562, 3563, 'Teleportation : Forgefer / Fossoyeuse'),
	(3565, 3566, 'Téléportation : Darnasssus / Téléportation : Pitons-du-Tonnerre'),
	(6648, 6653, ''),
	(6777, 8395, ''),
	(6898, 10796, ''),
	(6899, 10799, ''),
	(10059, 11417, 'Portail : Hurlevent / Orgrimmar'),
	(10789, 17464, ''),
	(10793, 17463, ''),
	(10969, 18990, ''),
	(11416, 11418, ''),
	(11419, 11420, ''),
	(15779, 18992, ''),
	(16082, 16080, ''),
	(16083, 16081, ''),
	(17453, 18989, ''),
	(17459, 18991, ''),
	(17460, 17450, ''),
	(17461, 16084, ''),
	(22717, 22724, ''),
	(22719, 22718, ''),
	(22720, 22721, ''),
	(22723, 22722, ''),
	(23219, 23246, ''),
	(23222, 23247, ''),
	(23225, 23249, ''),
	(23227, 23251, ''),
	(23228, 23252, ''),
	(23229, 23250, ''),
	(23238, 23243, ''),
	(23239, 23241, ''),
	(23240, 23242, ''),
	(23338, 17465, ''),
	(23510, 23509, '');
/*!40000 ALTER TABLE `player_factionchange_spells` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
