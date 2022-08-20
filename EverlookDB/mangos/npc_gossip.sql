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

-- Dumping structure for table mangos.npc_gossip
CREATE TABLE IF NOT EXISTS `npc_gossip` (
  `npc_guid` int(10) unsigned NOT NULL DEFAULT 0,
  `textid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`npc_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mangos.npc_gossip: 1,224 rows
/*!40000 ALTER TABLE `npc_gossip` DISABLE KEYS */;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES
	(29, 5054),
	(31, 5031),
	(32, 5118),
	(36, 2137),
	(37, 7194),
	(38, 8128),
	(41, 4732),
	(49, 5204),
	(50, 5186),
	(103, 6514),
	(177, 5857),
	(193, 7015),
	(213, 3395),
	(265, 4990),
	(351, 4937),
	(1022, 5836),
	(1024, 5723),
	(1026, 1914),
	(1724, 4881),
	(1753, 2234),
	(1763, 5276),
	(1789, 8269),
	(1791, 7780),
	(1794, 5794),
	(1796, 5422),
	(1799, 2253),
	(1803, 5722),
	(1804, 5723),
	(1807, 5723),
	(1812, 5581),
	(1813, 5836),
	(1816, 2355),
	(1819, 7195),
	(1888, 5495),
	(1892, 5800),
	(2005, 6383),
	(2008, 5582),
	(2011, 3456),
	(2012, 3398),
	(2013, 1261),
	(2016, 6957),
	(2084, 5330),
	(54190, 8359),
	(3162, 6793),
	(10463, 2593),
	(4078, 4253),
	(4091, 5112),
	(4476, 7015),
	(10462, 2593),
	(10450, 2593),
	(34151, 5836),
	(54192, 8350),
	(10430, 4037),
	(54193, 8354),
	(54766, 8351),
	(54807, 8352),
	(54120, 8355),
	(54163, 8356),
	(10428, 4037),
	(10427, 4037),
	(68930, 8366),
	(35237, 1391),
	(54186, 8358),
	(54145, 8357),
	(10426, 4037),
	(69680, 4450),
	(10353, 2593),
	(10352, 2593),
	(10351, 2593),
	(10350, 2593),
	(10348, 2593),
	(10347, 2593),
	(10299, 2593),
	(10298, 2593),
	(10297, 2593),
	(10280, 3409),
	(10279, 4037),
	(10278, 4037),
	(10277, 4037),
	(10276, 4037),
	(10275, 4037),
	(10274, 4037),
	(10273, 4037),
	(10271, 4037),
	(8530, 2593),
	(8529, 2593),
	(8528, 2593),
	(8527, 2593),
	(8526, 2593),
	(8525, 2593),
	(8524, 2593),
	(8523, 2593),
	(8522, 2593),
	(8521, 2593),
	(8424, 4037),
	(8423, 4037),
	(8422, 638),
	(8421, 4037),
	(8420, 4037),
	(8418, 4037),
	(8417, 4037),
	(8416, 4037),
	(8415, 4037),
	(7970, 3466),
	(7969, 5172),
	(7968, 1571),
	(7950, 2593),
	(7949, 2593),
	(7948, 2593),
	(7946, 2593),
	(7945, 2593),
	(7943, 2593),
	(7942, 2593),
	(7941, 2593),
	(7669, 4037),
	(7668, 4037),
	(7666, 5133),
	(7479, 5199),
	(7463, 1640),
	(7447, 3893),
	(7421, 2593),
	(53737, 4716),
	(7420, 2593),
	(7419, 2593),
	(7418, 2593),
	(7417, 2593),
	(7416, 2593),
	(7415, 2593),
	(7399, 2593),
	(7398, 2593),
	(7397, 2593),
	(7298, 4037),
	(7297, 4037),
	(7296, 4037),
	(7295, 5836),
	(7294, 4037),
	(68499, 4213),
	(54749, 3935),
	(31950, 5108),
	(7292, 4037),
	(7290, 4037),
	(7284, 638),
	(6630, 5350),
	(6629, 5530),
	(6626, 5238),
	(6624, 5037),
	(6613, 1635),
	(6603, 2278),
	(6602, 2280),
	(6600, 5516),
	(6596, 2193),
	(6595, 1039),
	(6594, 1124),
	(6567, 2593),
	(6566, 2593),
	(6565, 2593),
	(6564, 2593),
	(6563, 2593),
	(6562, 2593),
	(6561, 2593),
	(53837, 4254),
	(6560, 2593),
	(6559, 2593),
	(6558, 2593),
	(3328, 6933),
	(6520, 8127),
	(6519, 8131),
	(6512, 7010),
	(3329, 6990),
	(6500, 6935),
	(6499, 7174),
	(6497, 8269),
	(6492, 7780),
	(4601, 6991),
	(6403, 3896),
	(6402, 4875),
	(6389, 5715),
	(6388, 4037),
	(6387, 4037),
	(6386, 4037),
	(6385, 4037),
	(6383, 4037),
	(6382, 4037),
	(6380, 4037),
	(4800, 5715),
	(4799, 5836),
	(52957, 5894),
	(4602, 7043),
	(4771, 3573),
	(54338, 7339),
	(54384, 7337),
	(54386, 7314),
	(54390, 7395),
	(54393, 7397),
	(54404, 7355),
	(2000135, 90011),
	(4595, 6594),
	(4765, 7652),
	(88826, 7536),
	(79658, 1256),
	(79672, 1237),
	(79673, 1237),
	(79678, 1250),
	(79682, 1235),
	(79688, 8238),
	(79723, 1235),
	(79751, 1254),
	(79755, 1207),
	(79756, 1238),
	(79782, 6948),
	(79785, 5994),
	(79786, 1258),
	(79838, 3484),
	(79853, 1250),
	(79970, 4938),
	(80336, 3405),
	(80355, 7015),
	(81093, 5257),
	(81094, 6961),
	(86167, 68),
	(88829, 7535),
	(56615, 7339),
	(56600, 7334),
	(56611, 7338),
	(56614, 7397),
	(56617, 7355),
	(56342, 7314),
	(56498, 7337),
	(56324, 7400),
	(385, 7718),
	(723, 7718),
	(436, 7720),
	(386, 7717),
	(366, 7574),
	(312, 7615),
	(310, 7556),
	(311, 7534),
	(309, 7515),
	(288, 7514),
	(391, 7454),
	(540, 3806),
	(387, 2136),
	(640, 5074),
	(637, 3488),
	(580, 6793),
	(638, 5535),
	(388, 7965),
	(644, 6165),
	(361, 7778),
	(662, 5345),
	(607, 7015),
	(531, 6535),
	(2722, 6995),
	(279, 2641),
	(2704, 2213),
	(2702, 7778),
	(2685, 1371),
	(4569, 3295),
	(125, 2713),
	(4597, 2993),
	(2686, 1351),
	(2755, 1302),
	(4686, 5279),
	(8254, 3523),
	(79696, 1235),
	(79697, 1235),
	(79737, 1238),
	(79726, 1238),
	(80471, 2286),
	(86424, 8103),
	(37606, 1225),
	(79714, 1235),
	(37607, 1243),
	(8169, 7055),
	(5169, 3407),
	(37604, 3453),
	(6931, 3802),
	(79769, 6957),
	(79828, 5207),
	(79829, 5181),
	(80933, 5247),
	(31845, 1996),
	(79827, 1231),
	(184, 5753),
	(4685, 5799),
	(4681, 5069),
	(4680, 5425),
	(4677, 4879),
	(4676, 5136),
	(4206, 3461),
	(4673, 5793),
	(4672, 5157),
	(4670, 1606),
	(4669, 3412),
	(6882, 6947),
	(79684, 1250),
	(3467, 7403),
	(573, 5479),
	(4209, 7778),
	(11206, 7778),
	(2032, 8129),
	(44, 2760),
	(45, 2760),
	(46, 2760),
	(47, 2760),
	(57, 2760),
	(58, 2760),
	(88, 2760),
	(97, 2760),
	(101, 2760),
	(105, 2760),
	(106, 2760),
	(107, 2760),
	(114, 2760),
	(115, 2760),
	(121, 2760),
	(128, 2760),
	(129, 2760),
	(131, 2760),
	(132, 2760),
	(133, 2760),
	(134, 2760),
	(135, 2760),
	(136, 2760),
	(138, 2760),
	(139, 2760),
	(140, 2760),
	(141, 2760),
	(142, 2760),
	(144, 2760),
	(145, 2760),
	(1743, 2760),
	(1748, 2760),
	(1750, 2760),
	(1757, 2760),
	(1759, 2760),
	(1760, 2760),
	(1765, 2760),
	(1766, 2760),
	(1767, 2760),
	(1783, 2760),
	(1817, 2760),
	(1818, 2760),
	(1821, 2760),
	(1889, 2760),
	(1893, 2760),
	(1894, 2760),
	(1895, 2760),
	(2009, 2760),
	(2023, 2760),
	(2024, 2760),
	(2025, 2760),
	(2027, 2760),
	(2028, 2760),
	(2079, 2760),
	(2081, 2760),
	(2085, 2760),
	(2086, 2760),
	(79799, 1236),
	(79686, 1236),
	(3465, 2593),
	(3462, 2593),
	(6714, 7778),
	(11315, 3803),
	(3461, 5715),
	(89522, 5009),
	(11223, 7554),
	(14520, 6414),
	(3454, 638),
	(3452, 5715),
	(3443, 3583),
	(3422, 7186),
	(3421, 7188),
	(16579, 7434),
	(3393, 6793),
	(3391, 2593),
	(86234, 7806),
	(30136, 1693),
	(16261, 799),
	(52882, 5253),
	(8019, 7638),
	(8018, 3590),
	(8478, 7778),
	(8490, 1818),
	(86184, 6250),
	(89405, 8139),
	(89406, 8139),
	(89398, 8139),
	(89396, 8139),
	(89397, 8139),
	(89393, 8139),
	(89394, 8139),
	(89395, 8139),
	(89392, 8139),
	(89390, 8139),
	(89391, 8139),
	(89389, 8139),
	(89386, 8139),
	(89387, 8139),
	(89388, 8139),
	(89385, 8139),
	(89383, 8139),
	(89384, 8139),
	(89380, 8139),
	(89381, 8139),
	(89382, 8139),
	(89379, 8139),
	(89375, 8139),
	(89376, 8139),
	(89372, 8139),
	(89371, 8139),
	(89370, 8139),
	(89369, 8139),
	(89368, 8139),
	(89367, 8139),
	(89366, 8139),
	(89365, 8139),
	(89364, 8139),
	(89363, 8139),
	(89362, 8139),
	(89361, 8139),
	(89360, 8139),
	(89359, 8139),
	(89418, 8125),
	(89416, 8125),
	(89417, 8125),
	(89413, 8125),
	(89414, 8125),
	(53646, 6250),
	(48276, 1253),
	(52920, 1231),
	(52925, 1231),
	(54432, 7400),
	(3390, 2593),
	(54382, 7338),
	(54388, 7383),
	(61987, 7383),
	(54426, 7406),
	(56624, 7406),
	(91071, 2758),
	(91048, 2758),
	(90888, 2758),
	(90743, 2758),
	(90738, 2758),
	(90737, 2758),
	(48170, 2758),
	(48153, 2758),
	(46630, 2758),
	(46626, 2758),
	(46625, 2758),
	(46620, 2758),
	(91067, 2637),
	(91069, 2637),
	(91066, 2637),
	(91065, 2637),
	(91064, 2637),
	(91050, 2637),
	(91051, 2637),
	(91052, 2637),
	(91046, 2637),
	(91047, 2637),
	(91043, 2637),
	(91044, 2637),
	(91010, 2637),
	(90890, 2637),
	(90886, 2637),
	(90884, 2637),
	(91068, 2637),
	(90745, 2637),
	(90742, 2637),
	(90741, 2637),
	(90739, 2637),
	(48171, 2637),
	(48169, 2637),
	(48093, 2637),
	(48092, 2637),
	(46628, 2637),
	(46624, 2637),
	(46622, 2637),
	(91070, 2636),
	(91049, 2636),
	(91045, 2636),
	(91019, 2636),
	(91018, 2636),
	(91015, 2636),
	(91016, 2636),
	(91017, 2636),
	(91014, 2636),
	(91011, 2636),
	(91012, 2636),
	(91013, 2636),
	(90889, 2636),
	(90887, 2636),
	(90885, 2636),
	(90883, 2636),
	(90881, 2636),
	(90882, 2636),
	(90746, 2636),
	(90744, 2636),
	(90740, 2636),
	(48172, 2636),
	(48168, 2636),
	(48152, 2636),
	(48094, 2636),
	(46629, 2636),
	(46627, 2636),
	(46621, 2636),
	(46618, 2758),
	(46617, 2758),
	(46616, 2758),
	(46613, 2727),
	(47779, 5834),
	(91025, 2596),
	(2000134, 90010),
	(91021, 2595),
	(91024, 2597),
	(91026, 2600),
	(91023, 2602),
	(62, 4445),
	(66, 4445),
	(68, 4445),
	(76, 4445),
	(453, 4445),
	(455, 4445),
	(457, 4445),
	(463, 4445),
	(467, 4445),
	(643, 4445),
	(645, 4445),
	(649, 4445),
	(651, 4445),
	(653, 4445),
	(661, 4445),
	(755, 4445),
	(757, 4445),
	(72, 4445),
	(459, 4445),
	(461, 4445),
	(469, 4445),
	(655, 4445),
	(647, 4445),
	(70, 4445),
	(657, 4445),
	(64, 4445),
	(74, 4445),
	(471, 4445),
	(659, 4445),
	(78, 4445),
	(465, 4445),
	(200, 4446),
	(4383, 7594),
	(2000133, 90009),
	(2000121, 90006),
	(2000119, 90006),
	(2000118, 90006),
	(2000117, 90006),
	(2000116, 90006),
	(3389, 2593),
	(636, 7074),
	(49077, 7594),
	(16262, 798),
	(54765, 8353),
	(53171, 4814),
	(15293, 5084),
	(15286, 5575),
	(15292, 6595),
	(14828, 5934),
	(14832, 5934),
	(14816, 5934),
	(14815, 5934),
	(14811, 5934),
	(14788, 5934),
	(14784, 5934),
	(14783, 5934),
	(14782, 5934),
	(14827, 5939),
	(14819, 5939),
	(14817, 5939),
	(14812, 5939),
	(14813, 5939),
	(14787, 5939),
	(14831, 5981),
	(14786, 4838),
	(15582, 761),
	(92909, 7239),
	(92914, 7242),
	(92911, 7240),
	(92912, 7237),
	(92910, 7238),
	(92889, 7175),
	(93209, 7257),
	(5598, 2279),
	(5584, 7094),
	(5588, 7095),
	(5587, 7117),
	(5585, 7120),
	(5589, 7115),
	(5767, 3001),
	(17626, 5453),
	(17625, 3418),
	(28466, 581),
	(29804, 4934),
	(28460, 5836),
	(28467, 5720),
	(34113, 4097),
	(33711, 5859),
	(28472, 5840),
	(29783, 4097),
	(29774, 4097),
	(28475, 5836),
	(33752, 5720),
	(28479, 581),
	(33740, 5233),
	(34111, 4097),
	(29780, 4097),
	(44738, 623),
	(31924, 4356),
	(31925, 4353),
	(28415, 3979),
	(28421, 3753),
	(28419, 4173),
	(38289, 5282),
	(33707, 6793),
	(32028, 4097),
	(17669, 3543),
	(28481, 3543),
	(28485, 3543),
	(28486, 3543),
	(28487, 3543),
	(28488, 3543),
	(28489, 3543),
	(28490, 3543),
	(33823, 3543),
	(33831, 3543),
	(34102, 3543),
	(34103, 3543),
	(34104, 3543),
	(34105, 3543),
	(34106, 3543),
	(38296, 3543),
	(38297, 3543),
	(38298, 3543),
	(38299, 3543),
	(38301, 3543),
	(38302, 3543),
	(38305, 3543),
	(39019, 3543),
	(39020, 3543),
	(39022, 3543),
	(39023, 3543),
	(39024, 3543),
	(39025, 3543),
	(39026, 3543),
	(41884, 3543),
	(41887, 3543),
	(41888, 3543),
	(41889, 3543),
	(41890, 3543),
	(41891, 3543),
	(41892, 3543),
	(41956, 3543),
	(41960, 3543),
	(41961, 3543),
	(41964, 3543),
	(38057, 5454),
	(32076, 8133),
	(31857, 5455),
	(29793, 3653),
	(38055, 6159),
	(38401, 7015),
	(31804, 3666),
	(31855, 6957),
	(31903, 7189),
	(38067, 5566),
	(38069, 5556),
	(38066, 5434),
	(31863, 5720),
	(38071, 5720),
	(41834, 5715),
	(38414, 5836),
	(31889, 581),
	(38095, 581),
	(32040, 581),
	(38103, 5162),
	(38096, 5139),
	(31884, 5355),
	(31887, 5294),
	(31879, 5228),
	(31878, 5195),
	(31902, 1734),
	(32038, 3194),
	(38073, 5099),
	(28497, 4474),
	(17647, 5089),
	(32067, 7659),
	(32068, 7668),
	(31901, 4476),
	(38428, 3421),
	(41843, 1619),
	(45225, 4355),
	(45245, 4633),
	(45424, 4041),
	(48468, 4445),
	(48467, 4445),
	(48466, 4445),
	(48465, 4445),
	(48464, 4445),
	(48463, 4445),
	(48462, 4445),
	(48461, 4445),
	(48460, 4445),
	(48459, 4445),
	(48948, 4445),
	(48949, 4445),
	(48950, 4445),
	(48951, 4445),
	(48952, 4445),
	(48953, 4445),
	(48954, 4445),
	(48955, 4445),
	(48956, 4445),
	(48957, 4445),
	(91312, 4445),
	(91313, 4445),
	(91314, 4445),
	(91315, 4445),
	(91316, 4445),
	(91317, 4445),
	(91318, 4445),
	(91319, 4445),
	(91320, 4445),
	(91321, 4445),
	(91370, 4445),
	(91371, 4445),
	(48805, 4446),
	(3388, 2593),
	(3387, 2593),
	(3386, 2593),
	(3385, 2593),
	(3384, 2593),
	(3383, 2593),
	(3382, 2593),
	(3366, 678),
	(3349, 6957),
	(79695, 8130),
	(10464, 2593),
	(10465, 2593),
	(10466, 2593),
	(10467, 2593),
	(10468, 2593),
	(10469, 2593),
	(10470, 2593),
	(11789, 2593),
	(11790, 2593),
	(11791, 2593),
	(11792, 2593),
	(11793, 2593),
	(11794, 2593),
	(11795, 2593),
	(11796, 2593),
	(13100, 3048),
	(13172, 1916),
	(13552, 2133),
	(13637, 6556),
	(13949, 1875),
	(14077, 2640),
	(14344, 3559),
	(14350, 3654),
	(14366, 2193),
	(14370, 3586),
	(14385, 3587),
	(14389, 7015),
	(14410, 5913),
	(14411, 4933),
	(14413, 5545),
	(14417, 3298),
	(2243, 4982),
	(15033, 7315),
	(15087, 3471),
	(15090, 5288),
	(15096, 5496),
	(15104, 5515),
	(15149, 5127),
	(19221, 3557),
	(20179, 7726),
	(20968, 1041),
	(21549, 932),
	(21551, 778),
	(21552, 778),
	(21553, 778),
	(21554, 778),
	(21555, 778),
	(21556, 780),
	(21557, 780),
	(21558, 780),
	(21559, 780),
	(21592, 2354),
	(21820, 5177),
	(190237, 780),
	(21823, 2954),
	(23056, 1519),
	(23117, 2038),
	(23268, 1758),
	(23273, 8335),
	(23277, 7778),
	(23287, 1933),
	(23413, 5798),
	(23414, 2138),
	(23443, 1471),
	(23717, 3096),
	(23718, 3095),
	(23720, 3093),
	(24252, 2734),
	(24253, 2816),
	(24379, 6741),
	(24439, 7041),
	(24670, 7661),
	(24714, 3415),
	(24721, 5040),
	(24723, 5428),
	(24728, 4473),
	(24760, 5196),
	(24770, 5340),
	(24779, 5843),
	(24787, 5864),
	(24791, 2333),
	(24794, 7654),
	(24797, 6957),
	(24867, 7190),
	(25541, 4443),
	(25996, 4072),
	(26053, 4072),
	(26564, 7667),
	(26566, 5497),
	(26618, 1615),
	(26623, 5551),
	(26625, 6513),
	(26626, 5398),
	(26627, 5291),
	(26628, 5079),
	(26630, 5223),
	(26649, 7015),
	(26651, 6793),
	(26779, 522),
	(26894, 5130),
	(26895, 7013),
	(26901, 7819),
	(26907, 7015),
	(26909, 5285),
	(26910, 6793),
	(27585, 5212),
	(27586, 4891),
	(28714, 4813),
	(29063, 6574),
	(29064, 6334),
	(29065, 6335),
	(29069, 6353),
	(29117, 4857),
	(29133, 5335),
	(29202, 4959),
	(29237, 5248),
	(29245, 5443),
	(29246, 5773),
	(29370, 5819),
	(32245, 7778),
	(32383, 6033),
	(32720, 7778),
	(32916, 5529),
	(33017, 6793),
	(33165, 6193),
	(33282, 5654),
	(33283, 5653),
	(34184, 5613),
	(35194, 4233),
	(35865, 1796),
	(35867, 7881),
	(35872, 2033),
	(35874, 2036),
	(35888, 2293),
	(36021, 1994),
	(36626, 718),
	(39077, 3864),
	(39088, 4960),
	(39091, 2845),
	(39092, 2849),
	(39098, 3874),
	(39100, 3807),
	(39106, 7001),
	(190236, 780),
	(39108, 8123),
	(190240, 780),
	(41642, 4395),
	(41764, 8143),
	(41765, 3377),
	(41769, 4634),
	(42205, 7778),
	(42207, 3673),
	(42208, 8292),
	(42264, 3758),
	(42300, 4841),
	(42301, 7045),
	(42329, 6153),
	(42332, 6154),
	(42333, 4977),
	(42334, 4753),
	(42337, 4916),
	(42338, 4913),
	(42744, 6812),
	(42751, 7801),
	(42752, 7736),
	(42753, 7735),
	(42756, 7728),
	(42757, 7729),
	(42759, 7778),
	(42760, 7730),
	(42761, 7731),
	(42762, 7732),
	(42764, 7733),
	(42765, 7734),
	(43044, 8108),
	(43174, 6155),
	(43175, 7779),
	(43180, 7782),
	(43200, 8114),
	(43236, 7797),
	(45610, 8280),
	(46167, 8059),
	(46168, 8215),
	(46193, 5265),
	(46194, 5190),
	(46195, 6960),
	(46205, 4936),
	(46218, 5437),
	(46223, 3076),
	(46241, 5187),
	(46244, 5540),
	(46334, 5325),
	(46336, 5273),
	(46420, 7017),
	(46466, 5393),
	(46467, 5213),
	(46473, 5844),
	(46480, 6957),
	(46559, 7193),
	(46570, 7665),
	(46718, 7017),
	(46722, 5862),
	(46723, 5477),
	(46803, 8126),
	(46820, 3016),
	(46821, 3016),
	(46822, 3016),
	(46823, 3016),
	(46824, 3016),
	(46825, 3016),
	(46826, 3016),
	(46828, 3016),
	(46829, 3016),
	(46830, 3016),
	(46831, 3016),
	(46832, 3016),
	(46833, 3016),
	(46834, 3016),
	(46835, 3016),
	(46836, 3016),
	(46837, 3016),
	(46838, 3016),
	(46839, 3016),
	(46840, 3016),
	(46841, 3016),
	(46843, 3016),
	(46844, 3016),
	(46845, 3016),
	(46846, 3016),
	(46847, 3016),
	(46848, 3016),
	(46849, 3016),
	(46852, 3016),
	(46853, 3016),
	(46854, 3016),
	(46855, 3016),
	(46880, 3016),
	(46881, 3016),
	(46882, 3016),
	(46883, 3016),
	(46884, 3016),
	(46903, 2285),
	(49539, 2153),
	(49843, 4316),
	(49844, 4316),
	(49845, 4316),
	(49846, 4316),
	(49847, 4316),
	(49848, 4316),
	(49849, 4316),
	(49852, 7818),
	(49936, 7481),
	(49937, 7616),
	(49939, 3016),
	(50080, 7778),
	(50142, 5407),
	(50145, 2433),
	(50147, 3545),
	(50996, 2638),
	(150106, 6093),
	(51234, 7402),
	(52924, 1252),
	(90478, 5919),
	(45242, 3984),
	(23723, 7778),
	(30229, 3156),
	(79738, 1239),
	(79727, 5320),
	(90468, 5836),
	(90471, 6755),
	(31876, 5047),
	(42893, 7662),
	(4174, 3868),
	(37612, 1249),
	(79734, 5260),
	(79826, 5561),
	(37611, 5147),
	(80352, 5836),
	(23706, 3546),
	(45239, 3754),
	(48358, 5124),
	(53943, 3755),
	(79767, 3657),
	(45452, 4354),
	(45437, 4357),
	(45435, 7778),
	(53177, 7778),
	(9465, 5481),
	(9457, 5517),
	(79806, 7011),
	(43224, 7044),
	(79821, 7196),
	(54614, 7653),
	(54625, 7666),
	(42758, 7778),
	(42914, 7874),
	(25997, 8132),
	(42749, 8212),
	(14323, 7778),
	(40530, 7916),
	(18675, 698),
	(52416, 7395),
	(87045, 580),
	(29802, 580),
	(7716, 580),
	(9386, 580),
	(40519, 580),
	(40520, 580),
	(40521, 580),
	(40522, 580),
	(40523, 580),
	(40524, 580),
	(40525, 580),
	(40528, 580),
	(40529, 580),
	(40533, 580),
	(40535, 580),
	(40536, 580),
	(40537, 580),
	(40538, 580),
	(40539, 580),
	(40540, 580),
	(40541, 580),
	(40542, 580),
	(40543, 580),
	(40544, 580),
	(40545, 580),
	(40546, 580),
	(40547, 580),
	(40548, 580),
	(40549, 580),
	(40550, 580),
	(40551, 580),
	(40553, 580),
	(40554, 580),
	(40555, 580),
	(40556, 580),
	(40557, 580),
	(40559, 580),
	(40560, 580),
	(40561, 580),
	(40562, 580),
	(40565, 580),
	(40566, 580),
	(40567, 580),
	(40568, 580),
	(40569, 580),
	(40570, 580),
	(40571, 580),
	(40572, 580),
	(40573, 580),
	(40574, 580),
	(40575, 580),
	(40576, 580),
	(40577, 580),
	(40578, 580),
	(40579, 580),
	(40580, 580),
	(40581, 580),
	(40582, 580),
	(40583, 580),
	(40584, 580),
	(40585, 580),
	(40586, 580),
	(40587, 580),
	(40591, 580),
	(40593, 580),
	(17649, 580),
	(2065, 580),
	(87044, 580),
	(190239, 780),
	(79628, 580),
	(12783, 580),
	(87046, 580),
	(87047, 580),
	(87048, 580),
	(87049, 580),
	(87050, 580),
	(84656, 580),
	(84826, 580),
	(17650, 580),
	(190238, 780),
	(39063, 5943),
	(36537, 5473),
	(49938, 5474),
	(8259, 5580),
	(11263, 7778),
	(8742, 2289),
	(79823, 1234),
	(15324, 7778),
	(79728, 1238),
	(51780, 2496),
	(13419, 5495),
	(1795, 5524),
	(9448, 7778),
	(81389, 4876),
	(81393, 4859),
	(189, 933),
	(190, 933),
	(79664, 933),
	(79666, 933),
	(79669, 933),
	(79671, 933),
	(79674, 933),
	(79679, 933),
	(79687, 933),
	(79704, 933),
	(79730, 933),
	(79731, 933),
	(79732, 933),
	(79733, 933),
	(79819, 933),
	(79840, 933),
	(79857, 933),
	(79859, 933),
	(79861, 933),
	(79863, 933),
	(79864, 933),
	(79865, 933),
	(2473, 933),
	(19272, 933),
	(19273, 933),
	(26833, 933),
	(79834, 5019),
	(79832, 5016),
	(79833, 1233),
	(79825, 1202),
	(79831, 1231),
	(4152, 4855),
	(4150, 4871),
	(14740, 7818),
	(86263, 7818),
	(89432, 8076),
	(89440, 8076),
	(5363, 2315),
	(46619, 2643),
	(46615, 2973),
	(53174, 4979),
	(8461, 7778),
	(37097, 3334),
	(26558, 4935),
	(42201, 3854),
	(56945, 6918),
	(56943, 6694),
	(36098, 6108),
	(641, 5454),
	(6862, 2398),
	(150112, 6174),
	(190241, 780),
	(2000115, 90006),
	(2000114, 90006),
	(2000113, 90006),
	(2000112, 90006),
	(2000111, 90010),
	(2000110, 90009),
	(2000108, 90006),
	(2000107, 90006),
	(2000106, 90006),
	(2000105, 90006),
	(2000104, 90006),
	(2000103, 90006),
	(2000102, 90006),
	(2000101, 90006),
	(2000100, 90006),
	(2000032, 90004),
	(2000031, 90003),
	(2000030, 90002),
	(2000029, 90001),
	(2000022, 90000),
	(2000010, 90000),
	(2000008, 90000),
	(2000007, 90000),
	(2000006, 90000),
	(2000005, 90000),
	(2000004, 90000),
	(2000003, 90000),
	(2000002, 90000),
	(2000001, 90000),
	(2000000, 90000);
/*!40000 ALTER TABLE `npc_gossip` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
