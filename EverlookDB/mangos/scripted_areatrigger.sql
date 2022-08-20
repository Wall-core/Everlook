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

-- Dumping structure for table mangos.scripted_areatrigger
CREATE TABLE IF NOT EXISTS `scripted_areatrigger` (
  `entry` mediumint(8) NOT NULL,
  `script_name` char(64) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.scripted_areatrigger: 49 rows
/*!40000 ALTER TABLE `scripted_areatrigger` DISABLE KEYS */;
REPLACE INTO `scripted_areatrigger` (`entry`, `script_name`) VALUES
	(522, 'at_twiggy_flathead'),
	(1526, 'at_ring_of_law'),
	(3066, 'at_ravenholdt'),
	(4112, 'at_naxxramas'),
	(2026, 'at_blackrock_spire'),
	(2046, 'at_blackrock_spire'),
	(3552, 'at_childrens_week_spot'),
	(3550, 'at_childrens_week_spot'),
	(3549, 'at_childrens_week_spot'),
	(3548, 'at_childrens_week_spot'),
	(3547, 'at_childrens_week_spot'),
	(3546, 'at_childrens_week_spot'),
	(962, 'at_zumrah'),
	(3847, 'at_orb_of_command'),
	(4016, 'at_shade_of_eranikus'),
	(4017, 'at_twilight_grove'),
	(1726, 'at_scent_larkorwi'),
	(3626, 'at_enter_vael_room'),
	(1966, 'at_murloc_camp'),
	(3587, 'at_irontree_wood'),
	(4047, 'at_temple_ahnqiraj'),
	(4052, 'at_temple_ahnqiraj'),
	(1786, 'at_shadowforge_bridge'),
	(4033, 'at_temple_ahnqiraj'),
	(4034, 'at_temple_ahnqiraj'),
	(4036, 'at_temple_ahnqiraj'),
	(171, 'at_huldar_miran'),
	(1667, 'at_sentry_point'),
	(4115, 'at_naxxramas'),
	(4156, 'at_naxxramas'),
	(4113, 'at_naxxramas'),
	(4117, 'at_naxxramas'),
	(2066, 'at_ubrs_the_beast'),
	(2786, 'at_stormwind_gates'),
	(1727, 'at_scent_larkorwi'),
	(1728, 'at_scent_larkorwi'),
	(1729, 'at_scent_larkorwi'),
	(1730, 'at_scent_larkorwi'),
	(1731, 'at_scent_larkorwi'),
	(1732, 'at_scent_larkorwi'),
	(1733, 'at_scent_larkorwi'),
	(1734, 'at_scent_larkorwi'),
	(1735, 'at_scent_larkorwi'),
	(1736, 'at_scent_larkorwi'),
	(1737, 'at_scent_larkorwi'),
	(1738, 'at_scent_larkorwi'),
	(1739, 'at_scent_larkorwi'),
	(1740, 'at_scent_larkorwi'),
	(1766, 'at_scent_larkorwi');
/*!40000 ALTER TABLE `scripted_areatrigger` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
