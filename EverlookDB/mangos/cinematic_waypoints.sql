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

-- Dumping structure for table mangos.cinematic_waypoints
CREATE TABLE IF NOT EXISTS `cinematic_waypoints` (
  `cinematic` int(11) unsigned DEFAULT 0,
  `timer` int(11) unsigned DEFAULT 0,
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `position_z` float DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table mangos.cinematic_waypoints: 47 rows
/*!40000 ALTER TABLE `cinematic_waypoints` DISABLE KEYS */;
REPLACE INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES
	(81, 0, -8960, 517, 86, 'Humains start'),
	(81, 30000, -9038, 458, 83, 'Humains 2'),
	(81, 1000, -8960, 517, 86, 'Humains 1'),
	(81, 35000, -9130, 386, 80, 'Humains 3'),
	(81, 42000, -9184, 256, 63, 'Humains 4'),
	(81, 55000, -9102, 13, 89, 'Humains 5'),
	(81, 70000, -8995, -85, 85, 'Humains 6'),
	(101, 40000, -5461, 433, 387, 'Cinematic ajoutee automatiquement'),
	(101, 1000, -5103, 460, 404, 'Ok'),
	(41, 1000, -5050, -789, 496, 'Ok'),
	(101, 35000, -5393, 521, 387, 'Cinematic ajoutee automatiquement'),
	(41, 20000, -5221, -616, 420, 'Cinematic ajoutee automatiquement'),
	(41, 25000, -5312, -512, 393, 'Cinematic ajoutee automatiquement'),
	(41, 30000, -5575, -480, 398, 'Cinematic ajoutee automatiquement'),
	(41, 45000, -6240, 332, 383, 'Arrivee a la zone de depart'),
	(41, 40000, -6238, 138, 431, 'Devans la grotte'),
	(101, 14000, -5196, 520, 388, 'Ok'),
	(101, 26000, -5343, 542, 386, 'Ok'),
	(101, 65000, -6176, 394, 398, 'Cinematic ajoutee automatiquement'),
	(101, 70000, -6251, 351, 384, 'Cinematic ajoutee automatiquement'),
	(61, 1000, 9846, 963, 1307, 'Cinematic ajoutee automatiquement'),
	(61, 30000, 9879, 817, 1309, 'Cinematic ajoutee automatiquement'),
	(61, 50000, 10312, 833, 1327, 'Cinematic ajoutee automatiquement'),
	(61, 40000, 10064, 694, 1351, 'Cinematic ajoutee automatiquement'),
	(21, 1000, 264, -4752, 10, 'Cinematic ajoutee automatiquement'),
	(21, 25000, 104, -4783, 18, 'Cinematic ajoutee automatiquement'),
	(21, 30000, -295, -4716, 36, 'Cinematic ajoutee automatiquement'),
	(21, 35000, -484, -4691, 37, 'Cinematic ajoutee automatiquement'),
	(21, 42000, -595, -4616, 42, 'Cinematic ajoutee automatiquement'),
	(21, 60000, -618, -4251, 39, 'Cinematic ajoutee automatiquement'),
	(2, 60000, 1677, 1679, 122, 'Cinematic ajoutee automatiquement'),
	(2, 50000, 1898, 1568, 90, 'Cinematic ajoutee automatiquement'),
	(2, 35000, 1973, 1546, 88, 'Cinematic ajoutee automatiquement'),
	(2, 18000, 2053, 1511, 74, 'Cinematic ajoutee automatiquement'),
	(2, 1000, 2117, 1488, 69, 'Cinematic ajoutee automatiquement'),
	(141, 45000, -2917, -257, 53, 'Fin'),
	(141, 1000, -1250, 92, 125, 'Dans ThunderBluff'),
	(141, 21000, -1809, -216, -9, 'Devans un puit'),
	(141, 18000, -1735, -61, -4, 'On est descendu'),
	(141, 26000, -1899, -420, -4, 'Devans 2 arbres'),
	(141, 27000, -1995, -309, -7, 'Pret du pont - avant la riviere'),
	(141, 30000, -2121, -360, -10, 'Apres traversee de la riviere'),
	(141, 32000, -2322, -373, -8, 'Cinematic ajoutee automatiquement'),
	(121, 34000, -618, -4251, 39, 'Arrivee'),
	(121, 26000, -622, -4657, 40, 'Devans les portes'),
	(121, 22000, -701, -4771, 35, 'Devans un gros rocher'),
	(121, 1000, -833, -4920, 21, 'Dans la maison au debut');
/*!40000 ALTER TABLE `cinematic_waypoints` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
