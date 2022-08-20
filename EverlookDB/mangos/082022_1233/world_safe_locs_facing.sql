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

-- Dumping structure for table mangos.world_safe_locs_facing
DROP TABLE IF EXISTS `world_safe_locs_facing`;
CREATE TABLE IF NOT EXISTS `world_safe_locs_facing` (
  `id` int(10) unsigned NOT NULL,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mangos.world_safe_locs_facing: ~98 rows (approximately)
INSERT INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES
	(3, 3.83972),
	(4, 2.49582),
	(6, 4.7822),
	(7, 2.53073),
	(8, 2.79253),
	(10, 1.22173),
	(32, 0.20944),
	(34, 1.88496),
	(35, 4.86947),
	(36, 3.15905),
	(39, 4.7473),
	(70, 0.20944),
	(89, 1.8675),
	(90, 2.40855),
	(91, 2.72271),
	(92, 1.8326),
	(93, 1.11701),
	(94, 4.64258),
	(97, 3.14159),
	(98, 1.67552),
	(99, 5.5676),
	(100, 2.05949),
	(101, 2.54818),
	(103, 2.80998),
	(104, 0.925025),
	(105, 2.72271),
	(106, 4.57276),
	(108, 3.12414),
	(109, 0.925025),
	(149, 0.20944),
	(169, 4.4855),
	(189, 3.00197),
	(209, 2.70526),
	(229, 1.3439),
	(249, 0.0872665),
	(289, 4.88692),
	(309, 1.25664),
	(310, 3.10669),
	(329, 4.59022),
	(349, 2.58309),
	(369, 4.60767),
	(370, 5.98648),
	(389, 3.07178),
	(409, 1.55334),
	(429, 0.907571),
	(449, 0.750492),
	(450, 0.488692),
	(469, 5.79449),
	(489, 4.92183),
	(509, 4.99164),
	(511, 0.0349066),
	(512, 0.0523599),
	(569, 3.38594),
	(609, 2.86234),
	(610, 2.02458),
	(611, 3.92699),
	(630, 6.14356),
	(631, 5.67232),
	(632, 1.76278),
	(633, 3.80482),
	(634, 0.0174533),
	(635, 0.366519),
	(636, 6.21337),
	(649, 4.92183),
	(689, 2.00713),
	(690, 4.71239),
	(709, 4.11898),
	(729, 1.53589),
	(749, 2.35619),
	(750, 0.261799),
	(751, 4.79966),
	(769, 3.14159),
	(809, 1.5708),
	(810, 0.261799),
	(829, 4.7822),
	(830, 3.35103),
	(850, 0.907571),
	(851, 6.28319),
	(852, 0.785398),
	(854, 1.76278),
	(869, 2.44346),
	(889, 0.802851),
	(890, 3.83972),
	(891, 2.9147),
	(892, 3.12414),
	(893, 1.71042),
	(894, 1.69297),
	(895, 1.8675),
	(896, 2.53073),
	(897, 5.044),
	(898, 2.74017),
	(899, 1.72788),
	(909, 6.05629),
	(910, 2.89725),
	(1000, 5.8381),
	(1001, 5.84593),
	(1002, 2.233),
	(1003, 4.40469);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
