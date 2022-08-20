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

-- Dumping structure for table mangos.locales_taxi_node
CREATE TABLE IF NOT EXISTS `locales_taxi_node` (
  `entry` int(10) unsigned NOT NULL,
  `name_loc1` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc2` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc3` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc4` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc5` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc6` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mangos.locales_taxi_node: ~85 rows (approximately)
REPLACE INTO `locales_taxi_node` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`) VALUES
	(1, '노스샤이어 대성당', 'Abbaye de Northshire', 'Abtei von Nordhain', '北郡修道院', '北郡修道院', 'Abadía de Villanorte'),
	(2, '스톰윈드 (엘윈 숲)', 'Stormwind, Elwynn', 'Stormwind, Elwynn', '暴风城，艾尔文森林', '暴風城，艾爾文森林', 'Ventormenta, Elwynn'),
	(3, '프로그래머의 섬', 'Ile des programmeurs', 'Programmierer-Insel', 'Programmer Isle', 'Programmer Isle', 'Isla del programador'),
	(4, '감시의 언덕 (서부 몰락지대)', 'Colline des sentinelles, marche de l\'Ouest', 'Späherkuppe, Westfall', '哨兵岭，西部荒野', '哨兵嶺，西部荒野', 'Colina del Centinela, Páramos de Poniente'),
	(5, '레이크샤이어 (붉은마루 산맥)', 'Lakeshire, les Carmines', 'Seenhain, Rotkammgebirge', '湖畔镇，赤脊山', '湖畔鎮，赤脊山', 'Villa del Lago, Crestagrana'),
	(6, '아이언포지 (던 모로)', 'Ironforge, Dun Morogh', 'Ironforge, Dun Morogh', '铁炉堡，丹莫罗', '鐵爐堡，丹莫洛', 'Forjaz, Dun Morogh'),
	(7, '메네실 항구 (저습지)', 'Port de Menethil, les Paluns', 'Hafen von Menethil, Sumpfland', '米奈希尔港，湿地', '米奈希爾港，濕地', 'Puerto de Menethil, Los Humedales'),
	(8, '텔사마 (모단 호수)', 'Thelsamar, Loch Modan', 'Thelsamar, Loch Modan', '塞尔萨玛，洛克莫丹', '塞爾薩瑪，洛克莫丹', 'Thelsamar, Loch Modan'),
	(9, '무법항 (가시덤불 골짜기)', 'Baie-du-Butin, Strangleronce', 'Booty Bay, Schlingendorntal', '藏宝海湾，荆棘谷', '藏寶海灣，荊棘谷', 'Bahía del Botín, Tuercespina'),
	(10, '공동묘지 (은빛소나무 숲)', 'Le Sépulcre, forêt des Pins argentés', 'Das Grabmal, Silberwald', '瑟伯切尔，银松森林', '瑟伯切爾，銀松森林', 'El Sepulcro, Bosque de Argénteos'),
	(11, '언더시티 (티리스팔 숲)', 'Undercity, Tirisfal', 'Undercity, Tirisfal', '幽暗城，提瑞斯法林地', '幽暗城，提里斯法林地', 'Entrañas, Tirisfal'),
	(12, '다크샤이어 (그늘숲)', 'Darkshire, bois de la Pénombre', 'Dunkelhain, Dämmerwald', '夜色镇，暮色森林', '夜色鎮，暮色森林', 'Villa Oscura, Bosque del Ocaso'),
	(13, '타렌 밀농장 (힐스브래드 구릉지)', 'Moulin-de-Tarren, Hillsbrad', 'Tarrens Mühle, Hillsbrad', '塔伦米尔，希尔斯布莱德', '塔倫米爾，希爾斯布萊德', 'Molino Tarren, Trabalomas'),
	(14, '사우스쇼어 (힐스브래드 구릉지)', 'Southshore, Hillsbrad', 'Southshore, Hillsbrad', '南海镇，希尔斯布莱德', '南海鎮，希爾斯布萊德', 'Costasur, Trabalomas'),
	(15, '동부 오염지역', 'Maleterres de l\'est', 'Die östlichen Pestländer', '东瘟疫之地', '東瘟疫之地', 'Tierras de la Peste del Este'),
	(16, '임시 주둔지 (아라시 고원)', 'Refuge de l\'Ornière, Arathi', 'Die Zuflucht, Arathi', '避难谷地，阿拉希高地', '避難谷地，阿拉希高地', 'Refugio de la Zaga, Arathi'),
	(17, '해머폴 (아라시 고원)', 'Trépas-d\'Orgrim, Arathi', 'Hammerfall, Arathi', '落锤镇，阿拉希高地', '落錘鎮，阿拉希高地', 'Sentencia, Arathi'),
	(18, '무법항 (가시덤불 골짜기)', 'Baie-du-Butin, Strangleronce', 'Booty Bay, Schlingendorntal', '藏宝海湾，荆棘谷', '藏寶海灣，荊棘谷', 'Bahía del Botín, Tuercespina'),
	(19, '무법항 (가시덤불 골짜기)', 'Baie-du-Butin, Strangleronce', 'Booty Bay, Schlingendorntal', '藏宝海湾，荆棘谷', '藏寶海灣，荊棘谷', 'Bahía del Botín, Tuercespina'),
	(20, '그롬골 (가시덤불 골짜기)', 'Grom\'gol, Strangleronce', 'Grom\'gol, Schlingendorntal', '格罗姆高，荆棘谷', '格羅姆高，荊棘谷', 'Grom\'gol, Tuercespina'),
	(21, '카르가스 (황야의 땅)', 'Kargath, Terres ingrates', 'Kargath, Ödland', '卡加斯，荒芜之地', '卡加斯，荒蕪之地', 'Kargath, Tierras Inhóspitas'),
	(22, '썬더 블러프 (멀고어)', 'Thunder Bluff, Mulgore', 'Thunder Bluff, Mulgore', '雷霆崖，莫高雷', '雷霆崖，莫高雷', 'Cima del Trueno, Mulgore'),
	(23, '오그리마 (듀로타)', 'Orgrimmar, Durotar', 'Orgrimmar, Durotar', '奥格瑞玛，杜隆塔尔', '奧格瑪，杜洛塔', 'Orgrimmar, Durotar'),
	(24, '일반 (비행선 경로)', 'Générique, Cible monde pour les voies des zeppelins', 'Allgemein, Weltziel für Zeppelinrouten', 'Generic, World target for Zeppelin Paths', 'Generic, World target for Zeppelin Paths', 'Genérico, Objetivo mundial para rutas de zeppelines'),
	(25, '크로스로드 (불모의 땅)', 'La Croisée, Tarides', 'Crossroads, Brachland', '十字路口，贫瘠之地', '十字路口，貧瘠之地', 'El Cruce, Los Baldíos'),
	(26, '아우버다인 (어둠의 해안)', 'Auberdine, Sombrivage', 'Auberdine, Dunkelküste', '奥伯丁，黑海岸', '奧伯丁，黑海岸', 'Auberdine, Costa Oscura'),
	(27, '루테란 마을 (텔드랏실)', 'Rut\'theran, Teldrassil', 'Rut\'theran, Teldrassil', '鲁瑟兰村，泰达希尔', '魯瑟蘭村，泰達希爾', 'Aldea Rut\'theran, Teldrassil'),
	(28, '아스트라나르 (잿빛 골짜기)', 'Astranaar, Ashenvale', 'Astranaar, Ashenvale', '阿斯特兰纳，灰谷', '阿斯特蘭納，梣谷', 'Astranaar, Vallefresno'),
	(29, '해바위 야영지 (돌발톱 산맥)', 'Retraite de Roche-Soleil, Serres-Rocheuses', 'Sonnenfels, Steinkrallengebirge', '烈日石居，石爪山', '烈日石居，石爪山', 'Refugio Roca del sol, Sierra Espolón'),
	(30, '높새바람 봉우리 (버섯구름 봉우리)', 'Poste de Librevent, Mille Pointes', 'Freiwindposten, Tausend Nadeln', '乱风岗 ，千针石林', '亂風崗 ，千針石林', 'Poblado Viento Libre, Las Mil Agujas'),
	(31, '탈라나르 (페랄라스)', 'Thalanaar, Feralas', 'Thalanaar, Feralas', '萨兰纳尔，千针石林', '薩蘭納爾，千針石林', 'Thalanaar, Feralas'),
	(32, '테라모어 섬 (먼지진흙 습지대)', 'Theramore, marécage d\'Âprefange', 'Theramore, Marschen von Dustwallow', '塞拉摩，尘泥沼泽', '塞拉摩，塵泥沼澤', 'Theramore, Marjal Revolcafango'),
	(33, '돌발톱 봉우리 (돌발톱 산맥)', 'Pic des Serres-Rocheuses, Serres-Rocheuses', 'Steinkrallengipfel, Steinkrallengebirge', '石爪峰，石爪山', '石爪峰，石爪山', 'Cima del Espolón, Sierra Espolón'),
	(34, '운송 수단 (무법항 ~ 톱니항)', 'Transport, Ratchet - Baie-du-Butin', 'Transport, Booty Bay - Ratchet', '棘齿城到藏宝海湾的船只', '傳送，藏寶海灣 - 棘齒城', 'Transporte, Bahía del Botín - Trinquete'),
	(35, '운송 수단 (오그리마 비행선)', 'Transport, zeppelins d\'Orgrimmar', 'Transport, Zeppeline von Orgrimmar', '奥格瑞玛的飞艇', '傳送，奧格瑪飛艇', 'Transporte, Zeppelines de Orgrimmar'),
	(36, '일반 (세계 대상)', 'Générique, cible monde', 'Generic, World target', 'Generic, World target', 'Generic, World target', 'Genérico, Objetivo mundial'),
	(37, '나이젤의 야영지 (잊혀진 땅)', 'Combe de Nijel, Désolace', 'Die Nijelspitze, Desolace', '尼耶尔前哨站，凄凉之地', '尼耶爾前哨站，淒涼之地', 'Punta de Nijel, Desolace'),
	(38, '그늘수렵 마을 (잊혀진 땅)', 'Proie-de-l\'Ombre, Désolace', 'Shadowprey, Desolace', '葬影村，凄凉之地', '葬影村，淒涼之地', 'Aldea Cazasombras, Desolace'),
	(39, '가젯잔 (타나리스)', 'Gadgetzan, Tanaris', 'Gadgetzan, Tanaris', '加基森，塔纳利斯', '加基森，塔納利斯', 'Gadgetzan, Tanaris'),
	(40, '가젯잔 (타나리스)', 'Gadgetzan, Tanaris', 'Gadgetzan, Tanaris', '加基森，塔纳利斯', '加基森，塔納利斯', 'Gadgetzan, Tanaris'),
	(41, '페더문 요새 (페랄라스)', 'Feathermoon, Feralas', 'Feathermoon, Feralas', '羽月要塞，菲拉斯', '羽月要塞，菲拉斯', 'Plumaluna, Feralas'),
	(42, '모자케 야영지 (페랄라스)', 'Camp Mojache, Feralas', 'Camp Mojache, Feralas', '莫沙彻营地，菲拉斯', '莫沙徹營地，菲拉斯', 'Campamento Mojache, Feralas'),
	(43, '맹금의 봉우리 (동부 내륙지)', 'Nid-de-l\'Aigle, Les Hinterlands', 'Aerie Peak, Hinterland', '鹰巢山，辛特兰', '鷹巢山，辛特蘭', 'Pico Nidal, Tierras del Interior'),
	(44, '발로르모크 (아즈샤라)', 'Valormok, Azshara', 'Valormok, Azshara', '瓦罗莫克，艾萨拉', '瓦羅莫克，艾薩拉', 'Valormok, Azshara'),
	(45, '네더가드 요새 (저주받은 땅)', 'Rempart-du-Néant, Terres foudroyées', 'Burg Nethergarde, Verwüstete Lande', '守望堡，诅咒之地', '守望堡，詛咒之地', 'Castillo de Nethergarde, Las Tierras Devastadas'),
	(46, '사우스쇼어 선착장 (힐스브래드 구릉지)', 'Bac de Southshore, Hillsbrad', 'Fähre von Southshore, Hillsbrad', '南海镇渡口，希尔斯布莱德', '南海鎮渡口，希爾斯布萊德', 'Embarcadero de Costasur, Trabalomas'),
	(47, '운송 수단 (그롬골 ~ 오그리마)', 'Transport, Grom\'gol - Orgrimmar', 'Transport, Grom\'gol - Orgrimmar', '格罗姆高到奥格瑞玛的飞艇', '傳送，格羅姆 - 奧格瑪', 'Transporte, Grom\'gol - Orgrimmar'),
	(48, '피멍울 초소 (악령의 숲)', 'Poste de la Vénéneuse, Gangrebois', 'Blutgiftposten, Teufelswald', '血毒河，费伍德森林', '血毒河，費伍德森林', 'Puesto del Veneno'),
	(49, '달의 숲', 'Reflet-de-Lune', 'Moonglade', '月光林地', '月光林地', 'Claro de la Luna'),
	(50, '운송 수단 (메네실 여객선)', 'Transport, vaisseaux de Menethil', 'Transport, Schiffe von Menethil', '米奈希尔的船只', '傳送，米奈希爾船隻', 'Transporte, Barcos de Menethil'),
	(51, '운송 수단 (루테란 ~ 아우버다인)', 'Transport, Rut\'theran - Auberdine', 'Transport, Rut\'theran - Auberdine', '鲁瑟兰到奥伯丁的船只', '傳送，魯瑟蘭 - 奧伯丁', 'Transporte, Rut\'theran - Auberdine'),
	(52, '눈망루 마을 (여명의 설원)', 'Long-guet, Berceau-de-l\'Hiver', 'Everlook, Winterspring', '永望镇，冬泉谷', '永望鎮，冬泉谷', 'Vista Eterna, Cuna del Invierno'),
	(53, '눈망루 마을 (여명의 설원)', 'Long-guet, Berceau-de-l\'Hiver', 'Everlook, Winterspring', '永望镇，冬泉谷', '永望鎮，冬泉谷', 'Vista Eterna, Cuna del Invierno'),
	(54, '운송 수단 (페더문 - 페랄라스)', 'Transport, Feathermoon - Feralas', 'Transport, Feathermoon - Feralas', '羽月要塞 - 菲拉斯', '傳送，羽月要塞 - 菲拉斯', 'Transporte, Plumaluna - Feralas'),
	(55, '담쟁이 마을 (먼지진흙 습지대)', 'Mur-de-Fougères, marécage d\'Âprefange', 'Brackenwall, Marschen von Dustwallow', '蕨墙村，尘泥沼泽', '蕨牆村，塵泥沼澤', 'Poblado Murohelecho, Marjal Revolcafango'),
	(56, '스토나드 (슬픔의 늪)', 'Stonard, marais des Chagrins', 'Stonard, Sümpfe des Elends', '斯通纳德，悲伤沼泽', '斯通納德，悲傷沼澤', 'Rocal, Pantano de las Penas'),
	(57, '고기잡이 마을 (텔드랏실)', 'Village de pêcheurs, Teldrassil', 'Fischerdorf, Teldrassil', '钓鱼村，泰达希尔', '釣魚村，泰達希爾', 'Aldea Pesquera, Teldrassil'),
	(58, '조람가르 전초기지 (잿빛 골짜기)', 'Avant-poste de Zoram\'gar, Ashenvale', 'Zoram\'gar-Außenposten, Ashenvale', '佐拉姆加前哨站，灰谷', '左拉姆加前哨站，梣谷', 'Avanzada de Zoram\'gar, Vallefresno'),
	(59, '던 발다르 (알터랙 계곡)', 'Dun Baldar, Vallée d\'Alterac', 'Dun Baldar, Alteractal', '丹巴达尔，奥特兰克山谷', '丹巴達爾，奧特蘭克山谷', 'Dun Baldar, Valle de Alterac'),
	(60, '서리늑대 요새 (알터랙 계곡)', 'Donjon Frostwolf, Vallée d\'Alterac', 'Burg Frostwolf, Alteractal', '部落要塞，奥特兰克山谷', '部落要塞，奧特蘭克山谷', 'Bastión Lobo Gélido, Valle de Alterac'),
	(61, '토막나무 주둔지 (잿빛 골짜기)', 'Poste de Bois-brisé, Ashenvale', 'Splintertreeposten, Ashenvale', '碎木岗哨，灰谷', '碎木崗哨，梣谷', 'Puesto del Hachazo, Vallefresno'),
	(62, '나이트헤이븐 (달의 숲)', 'Havrenuit, Reflet-de-Lune', 'Nighthaven, Moonglade', '永夜港，月光林地', '永夜港，月光林地', 'Amparo de la Noche, Claro de la Luna'),
	(63, '나이트헤이븐 (달의 숲)', 'Havrenuit, Reflet-de-Lune', 'Nighthaven, Moonglade', '永夜港，月光林地', '永夜港，月光林地', 'Amparo de la Noche, Claro de la Luna'),
	(64, '탈렌드리스 초소 (아즈샤라)', 'Halte de Talrendis, Azshara', 'Talrendisspitze, Azshara', '塔伦迪斯营地，艾萨拉', '塔倫迪斯營地，艾薩拉', 'Punta Talrendis, Azshara'),
	(65, '갈퀴가지 숲 (악령의 숲)', 'Clairière de Griffebranche, Gangrebois', 'Nachtlaublichtung, Teufelswald', '刺枝林地，费伍德森林', '刺枝林地，費伍德森林', 'Claro Ramaespolón, Frondavil'),
	(66, '서리바람 야영지 (서부 역병지대)', 'Camp du Noroît, Maleterres de l\'ouest', 'Chillwind-Lager, westliche Pestländer', '冰风岗，西瘟疫之地', '冰風崗，西瘟疫之地', 'Campamento del Orvallo, Tierras de la Peste del Oeste'),
	(67, '희망의 빛 예배당 (동부 역병지대)', 'Chapelle de l\'Espoir de Lumière, Maleterres de l\'est', 'Kapelle des hoffnungsvollen Lichts, östliche Pestländer', '圣光之愿礼拜堂，东瘟疫之地', '聖光之願禮拜堂，東瘟疫之地', 'Capilla de la Esperanza de la Luz, Tierras de la Peste del Este'),
	(68, '희망의 빛 예배당 (동부 역병지대)', 'Chapelle de l\'Espoir de Lumière, Maleterres de l\'est', 'Kapelle des hoffnungsvollen Lichts, östliche Pestländer', '圣光之愿礼拜堂，东瘟疫之地', '聖光之願禮拜堂，東瘟疫之地', 'Capilla de la Esperanza de la Luz, Tierras de la Peste del Este'),
	(69, '달의 숲', 'Reflet-de-Lune', 'Moonglade', '月光林地', '月光林地', 'Claro de la Luna'),
	(70, '화염 마루 (불타는 평원)', 'Corniches des flammes, Steppes ardentes', 'Flammenkamm, brennende Steppe', '烈焰峰，燃烧平原', '烈焰峰，燃燒平原', 'Peñasco Llamarada, Las Estepas Ardientes'),
	(71, '모건의 망루 (불타는 평원)', 'Veille de Morgan, Steppes ardentes', 'Morgans Wacht, brennende Steppe', '摩根的岗哨，燃烧平原', '摩根的崗哨，燃燒平原', 'Vigilia de Morgan, Las Estepas Ardientes'),
	(72, '세나리온 요새 (실리더스)', 'Fort cénarien, Silithus', 'Burg Cenarius, Silithus', '塞纳里奥要塞，希利苏斯', '塞納里奧城堡，希利蘇斯', 'Fuerte Cenarion, Silithus'),
	(73, '세나리온 요새 (실리더스)', 'Fort cénarien, Silithus', 'Burg Cenarius, Silithus', '塞纳里奥要塞，希利苏斯', '塞納里奧城堡，希利蘇斯', 'Fuerte Cenarion, Silithus'),
	(74, '토륨 조합 거점 (이글거리는 협곡)', 'Halte du Thorium, Gorge des Vents brûlants', 'Thoriumspitze, sengende Schlucht', '瑟银哨塔，灼热峡谷', '瑟銀哨塔，灼熱峽谷', 'Puesto del Thorium, La Garganta de Fuego'),
	(75, '토륨 조합 거점 (이글거리는 협곡)', 'Halte du Thorium, Gorge des Vents brûlants', 'Thoriumspitze, sengende Schlucht', '瑟银哨塔，灼热峡谷', '瑟銀哨塔，灼熱峽谷', 'Puesto del Thorium, La Garganta de Fuego'),
	(76, '레반터스크 마을 (동부 내륙지)', 'Village des Revantusk, les Hinterlands', 'Revantusk, Hinterland', '恶齿村，辛特兰', '惡齒村，辛特蘭', 'Poblado Sañadiente, Tierras del Interior'),
	(77, '타우라조 야영지 (불모의 땅)', 'Camp Taurajo, les Tarides', 'Camp Taurajo, Brachland', '陶拉祖营地，贫瘠之地', '陶拉祖營地，貧瘠之地', 'Campamento Taurajo, Los Baldíos'),
	(78, '낙스라마스', 'Naxxramas', 'Naxxramas', '纳克萨玛斯', '納克薩瑪斯', 'Naxxramas'),
	(79, '마샬의 야영지 (운고로 분화구)', 'Refuge des Marshal, cratère d\'Un\'Goro', 'Marshals Zuflucht, Un\'Goro-Krater', '马绍尔营地，安戈洛环形山', '馬紹爾營地，安戈洛環形山', 'Refugio de Marshal, Cráter de Un\'Goro'),
	(80, '톱니항 (불모의 땅)', 'Ratchet, les Tarides', 'Ratchet, Brachland', '棘齿城，贫瘠之地', '棘齒城，貧瘠之地', 'Trinquete, Los Baldíos'),
	(81, '필르밍', 'Enregistrement', 'Filmen', '拍摄', '薄霧之地', 'Grabando'),
	(84, '역병의 숲 경비탑 (동부 역병지대)', 'Tour de Pestebois, Maleterres de l\'est', 'Pestwaldturm, östliche Pestländer', '病木林哨塔，东瘟疫之地', '病木林哨塔，東瘟疫之地', 'Torre del Bosque de la Peste, Tierras de la Peste de Este'),
	(85, '북부관문 경비탑 (동부 역병지대)', 'Tour du Col du nord, Maleterres de l\'est', 'Nordpassturm, östliche Pestländer', '北地哨塔，东瘟疫之地', '北地哨塔，東瘟疫之地', 'Torre del Paso Norte, Tierras de la Peste del Este'),
	(86, '동부방벽 경비탑 (동부 역병지대)', 'Tour du Mur d\'est, Maleterres de l\'est', 'Ostwallturm, östliche Pestländer', '东墙哨塔，东瘟疫之地', '東牆之塔，東瘟疫之地', 'Torre de la Muralla del Este, Tierras de la Peste del Este'),
	(87, '산마루 경비탑 (동부 역병지대)', 'Tour de garde de la couronne, Maleterres de l\'est', 'Turm der Kronenwache, östliche Pestländer', '皇冠哨塔，东瘟疫之地', '皇冠哨塔，東瘟疫之地', 'Torre de la Corona, Tierras de la Peste del Este');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
