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

-- Dumping structure for table mangos.warden_scans
CREATE TABLE IF NOT EXISTS `warden_scans` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT 0,
  `str` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `address` int(11) DEFAULT 0,
  `length` int(11) DEFAULT 0,
  `result` tinytext NOT NULL,
  `flags` mediumint(8) unsigned NOT NULL,
  `penalty` tinyint(4) NOT NULL DEFAULT -1 COMMENT 'Action to take if check fails',
  `comment` tinytext NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.warden_scans: 91 rows
/*!40000 ALTER TABLE `warden_scans` DISABLE KEYS */;
REPLACE INTO `warden_scans` (`id`, `type`, `str`, `data`, `address`, `length`, `result`, `flags`, `penalty`, `comment`) VALUES
	(1, 0, NULL, NULL, 8679268, 6, '686561646572', 6, -1, 'Packet internal sign - "header"'),
	(2, 0, NULL, NULL, 8696620, 6, '686561646572', 8, -1, 'Packet internal sign - "header"'),
	(3, 0, NULL, NULL, 8530960, 6, '53595354454D', 6, -1, 'Packet internal sign - "SYSTEM"'),
	(4, 0, NULL, NULL, 8547832, 6, '53595354454D', 8, -1, 'Packet internal sign - "SYSTEM"'),
	(5, 2, NULL, '82D7E5CBC8D2F78A791E189BAB3FD5D4342BF7EB0CA3F129', 74044, NULL, '0', 130830, -1, 'Cheat Engine dll'),
	(6, 2, NULL, 'A444519CC419521B6D39990C1D95329C8D94B59226CBAA98', 16507, NULL, '0', 130830, -1, 'WPE PRO dll'),
	(7, 2, NULL, '3A0F8985E701343E439C74B675C72BBE2D8810A745569913', 372624, NULL, '0', 130830, -1, 'rPE dll'),
	(8, 0, NULL, NULL, 8151666, 4, 'D893FEC0', 2, -1, 'Jump gravity'),
	(9, 0, NULL, NULL, 8151646, 2, '3075', 2, -1, 'Jump gravity water'),
	(10, 0, NULL, NULL, 6382555, 2, '8A47', 2, -1, 'Anti root'),
	(11, 0, NULL, NULL, 6380789, 1, 'F8', 2, -1, 'Anti move'),
	(12, 0, NULL, NULL, 8151647, 1, '75', 2, -1, 'Anti jump'),
	(13, 0, NULL, NULL, 8152026, 4, '8B4F7889', 2, -1, 'No fall damage'),
	(14, 0, NULL, NULL, 6504892, 2, '7425', 2, -1, 'Super fly'),
	(15, 0, NULL, NULL, 6383433, 2, '780F', 2, -1, 'Heartbeat interval speedhack'),
	(16, 0, NULL, NULL, 6284623, 1, 'F4', 2, -1, 'Anti slow hack'),
	(17, 0, NULL, NULL, 6504931, 2, '85D2', 2, -1, 'No fall damage'),
	(18, 0, NULL, NULL, 8151565, 2, '2000', 2, -1, 'Fly hack'),
	(19, 0, NULL, NULL, 7153475, 6, '890D509CCE00', 2, -1, 'General hacks'),
	(20, 0, NULL, NULL, 7138894, 6, 'A3D89BCE00EB', 2, -1, 'Wall climb'),
	(21, 0, NULL, NULL, 7138907, 6, '890DD89BCE00', 2, -1, 'Wall climb'),
	(22, 0, NULL, NULL, 6993044, 1, '74', 2, -1, 'Zero gravity'),
	(23, 0, NULL, NULL, 6502300, 1, 'FC', 2, -1, 'Air walk'),
	(24, 0, NULL, NULL, 6340512, 2, '7F7D', 2, -1, 'Wall climb'),
	(25, 0, NULL, NULL, 6380455, 4, 'F4010000', 2, -1, 'Wall climb'),
	(26, 0, NULL, NULL, 8151657, 4, '488C11C1', 2, -1, 'Wall climb'),
	(27, 0, NULL, NULL, 6992319, 3, '894704', 2, -1, 'Wall climb'),
	(28, 0, NULL, NULL, 6340529, 2, '746C', 2, -1, 'No water hack'),
	(29, 0, NULL, NULL, 6356016, 10, 'C70588D8C4000C000000', 2, -1, 'No water hack'),
	(30, 0, NULL, NULL, 4730584, 6, '0F8CE1000000', 2, -1, 'WMO collision'),
	(31, 0, NULL, NULL, 4803152, 7, 'A1C0EACE0085C0', 2, -1, 'noclip hack'),
	(32, 0, NULL, NULL, 5946704, 6, '8BD18B0D80E0', 2, -1, 'M2 collision'),
	(33, 0, NULL, NULL, 6340543, 2, '7546', 2, -1, 'M2 collision'),
	(34, 0, NULL, NULL, 5341282, 1, '7F', 2, -1, 'Warden disable'),
	(35, 0, NULL, NULL, 4989376, 1, '72', 2, -1, 'No fog hack'),
	(36, 0, NULL, NULL, 8145237, 1, '8B', 2, -1, 'No fog hack'),
	(37, 0, NULL, NULL, 6392083, 8, '8B450850E824DA1A', 2, -1, 'No fog hack'),
	(38, 0, NULL, NULL, 8146241, 10, 'D9818C0000008BE55DC2', 2, -1, 'tp2plane hack'),
	(39, 0, NULL, NULL, 6995731, 1, '74', 2, -1, 'Air swim hack'),
	(40, 0, NULL, NULL, 6964859, 1, '75', 2, -1, 'Infinite jump hack'),
	(41, 0, NULL, NULL, 6382558, 10, '84C074178B86A4000000', 2, -1, 'Gravity water hack'),
	(42, 0, NULL, NULL, 8151997, 3, '895108', 2, -1, 'Gravity hack'),
	(43, 0, NULL, NULL, 8152025, 1, '34', 2, -1, 'Plane teleport'),
	(44, 0, NULL, NULL, 6516436, 1, 'FC', 2, -1, 'Zero fall time'),
	(45, 0, NULL, NULL, 6501616, 1, 'FC', 2, -1, 'No fall damage'),
	(46, 0, NULL, NULL, 6511674, 1, 'FC', 2, -1, 'Fall time hack'),
	(47, 0, NULL, NULL, 6513048, 1, 'FC', 2, -1, 'Death bug hack'),
	(48, 0, NULL, NULL, 6514072, 1, 'FC', 2, -1, 'Anti slow hack'),
	(49, 0, NULL, NULL, 8152029, 3, '894E38', 2, -1, 'Anti slow hack'),
	(50, 0, NULL, NULL, 4847346, 3, '8B45D4', 2, -1, 'Max camera distance hack'),
	(51, 0, NULL, NULL, 4847069, 1, '74', 2, -1, 'Wall climb'),
	(52, 0, NULL, NULL, 8155231, 3, '000000', 2, -1, 'Signature check'),
	(53, 0, NULL, NULL, 6356849, 1, '74', 2, -1, 'Signature check'),
	(54, 0, NULL, NULL, 6354889, 6, '0F8A71FFFFFF', 2, -1, 'Signature check'),
	(55, 0, NULL, NULL, 4657642, 1, '74', 2, -1, 'Max interact distance hack'),
	(56, 0, NULL, NULL, 6211360, 8, '558BEC83EC0C8B45', 2, -1, 'Hover speed hack'),
	(57, 0, NULL, NULL, 8153504, 3, '558BEC', 2, -1, 'Flight speed hack'),
	(58, 0, NULL, NULL, 6214285, 6, '8B82500E0000', 2, -1, 'Track all units hack'),
	(59, 0, NULL, NULL, 8151558, 11, '25FFFFDFFB0D0020000089', 2, -1, 'No fall damage'),
	(60, 0, NULL, NULL, 8155228, 6, '89868C000000', 2, -1, 'Run speed hack'),
	(61, 0, NULL, NULL, 6356837, 2, '7474', 2, -1, 'Follow anything hack'),
	(62, 0, NULL, NULL, 6751806, 1, '74', 2, -1, 'No water hack'),
	(63, 0, NULL, NULL, 4657632, 2, '740A', 2, -1, 'Any name hack'),
	(64, 0, NULL, NULL, 8151976, 4, '84E5FFFF', 2, -1, 'Plane teleport'),
	(65, 0, NULL, NULL, 6214371, 6, '8BB1540E0000', 2, -1, 'Object tracking hack'),
	(66, 0, NULL, NULL, 6818689, 5, 'A388F2C700', 2, -1, 'No water hack'),
	(67, 0, NULL, NULL, 6186028, 5, 'C705ACD2C4', 2, -1, 'No fog hack'),
	(68, 0, NULL, NULL, 5473808, 4, '30855300', 2, -1, 'Warden disable hack '),
	(69, 0, NULL, NULL, 4208171, 3, '6B2C00', 2, -1, 'Warden disable hack'),
	(70, 0, NULL, NULL, 7119285, 1, '74', 2, -1, 'Warden disable hack'),
	(71, 0, NULL, NULL, 4729827, 1, '5E', 2, -1, 'Daylight hack'),
	(72, 0, NULL, NULL, 6354512, 6, '0F84EA000000', 2, -1, 'Ranged attack stop hack'),
	(73, 0, NULL, NULL, 5053463, 2, '7415', 2, -1, 'Officer note hack'),
	(74, 4, 'World\\Lordaeron\\stratholme\\Activedoodads\\doors\\nox_door_plague.m2', NULL, 0, 0, 'B4452B6D95C98B186A70B008FA07BBAEF30DF7A2', 130830, -1, 'Stratholme door'),
	(75, 4, 'World\\Kalimdor\\onyxiaslair\\doors\\OnyxiasGate01.m2', NULL, 0, 0, '75195E4AEDA0BCAF048CA0E34D95A70D4F53C746', 130830, -1, 'Onyxia gate'),
	(76, 4, 'World\\Generic\\Human\\Activedoodads\\doors\\deadminedoor02.m2', NULL, 0, 0, '3DFF011B9AB134F37F885097E695351B91953564', 130830, -1, 'Deadmines door'),
	(77, 4, 'World\\Kalimdor\\silithus\\activedoodads\\ahnqirajdoor\\ahnqirajdoor02.m2', NULL, 0, 0, 'DBD4F407C468CC36134E621D160178FDA4D0D249', 130830, -1, 'AQ door'),
	(78, 4, 'World\\Kalimdor\\diremaul\\activedoodads\\doors\\diremaulsmallinstancedoor.m2', NULL, 0, 0, '0DC8DB46C85549C0FF1A600F6C236357C305781A', 130830, -1, 'Dire Maul Gordok Inner Door'),
	(79, 0, NULL, NULL, 8139737, 5, 'D84E14DEC1', 2, -1, 'UNKNOWN movement hack?'),
	(80, 0, NULL, NULL, 8902804, 4, '8E977042', 2, -1, 'Wall climb hack'),
	(81, 0, NULL, NULL, 8902808, 4, '0000E040', 2, -1, 'Run speed hack'),
	(82, 0, NULL, NULL, 8154755, 7, '8166403FFFDFFF', 2, -1, 'Moveflag hack'),
	(83, 0, NULL, NULL, 8445948, 4, 'BB8D243F', 2, -1, 'Wall climb hack'),
	(84, 0, NULL, NULL, 6493717, 2, '741D', 2, -1, 'Speed hack'),
	(85, 2, NULL, '33D233C9E887071B00E8', 13856, NULL, '1', 14, -1, 'Warden packet process code search sanity check'),
	(86, 1, 'kernel32.dll', NULL, 0, 0, '1', 130830, -1, 'Warden module search bypass sanity check'),
	(87, 1, 'wpespy.dll', NULL, 0, 0, '0', 130830, -1, 'WPE Pro'),
	(88, 1, 'speedhack-i386.dll', NULL, 0, 0, '0', 130830, -1, 'CheatEngine'),
	(89, 1, 'tamia.dll', NULL, 0, 0, '0', 130830, -1, 'Tamia hack'),
	(90, 0, NULL, NULL, 12900744, 4, '0000C843', 2, -1, 'Nameplate extender'),
	(91, 0, NULL, NULL, 8784512, 4, '00006144', 2, -1, 'Unlimited follow distance');
/*!40000 ALTER TABLE `warden_scans` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
