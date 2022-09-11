DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20220911054629');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20220911054629');
-- Add your query below.


-- Spawn Point 1
INSERT INTO `creature` (`guid`, `id`, `id2`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(4089, 12381, 12382, 0, -11177.200195, -2033.979980, 47.158798, 2.9482, 0, 2, 340, 480);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(4089, 1, -11177.245117, -2033.983521, 47.158783, 100.000000, 0, 0.000000, 0),
(4089, 2, -11170.590820, -2036.936890, 47.165546, 100.000000, 0, 0.000000, 0),
(4089, 3, -11156.636719, -2041.116943, 47.148666, 100.000000, 0, 0.000000, 0),
(4089, 4, -11142.261719, -2043.310425, 47.148666, 100.000000, 0, 0.000000, 0),
(4089, 5, -11133.083984, -2045.780762, 47.167202, 100.000000, 0, 0.000000, 0),
(4089, 6, -11129.125977, -2056.745361, 47.193264, 100.000000, 0, 0.000000, 0),
(4089, 7, -11131.037109, -2076.039307, 47.163990, 100.000000, 0, 0.000000, 0),
(4089, 8, -11136.179688, -2089.142090, 47.364826, 100.000000, 0, 0.000000, 0),
(4089, 9, -11144.539063, -2111.479980, 50.499874, 100.000000, 0, 0.000000, 0),
(4089, 10, -11139.716797, -2123.265869, 51.521389, 100.000000, 0, 0.000000, 0),
(4089, 11, -11128.132813, -2131.545654, 40.090717, 100.000000, 0, 0.000000, 0),
(4089, 12, -11123.087891, -2137.185547, 35.718681, 100.000000, 0, 0.000000, 0),
(4089, 13, -11114.113281, -2153.488770, 31.058424, 100.000000, 0, 0.000000, 0),
(4089, 14, -11095.431641, -2166.700439, 28.206760, 100.000000, 0, 0.000000, 0),
(4089, 15, -11067.737305, -2175.179932, 29.645603, 100.000000, 0, 0.000000, 0),
(4089, 16, -11050.368164, -2169.428467, 28.964302, 100.000000, 0, 0.000000, 0),
(4089, 17, -11038.117188, -2155.542969, 28.841944, 100.000000, 0, 0.000000, 0),
(4089, 18, -11032.666016, -2127.278076, 28.665648, 100.000000, 0, 0.000000, 0),
(4089, 19, -11031.387695, -2101.208008, 29.022755, 100.000000, 0, 0.000000, 0),
(4089, 20, -11012.345703, -2076.385986, 36.918098, 100.000000, 0, 0.000000, 0),
(4089, 21, -10985.174805, -2056.658936, 36.790413, 100.000000, 0, 0.000000, 0),
(4089, 22, -10987.590820, -2031.452759, 37.211788, 100.000000, 0, 0.000000, 0),
(4089, 23, -10984.105469, -2050.306885, 36.670902, 100.000000, 0, 0.000000, 0),
(4089, 24, -11006.748047, -2071.493896, 38.341122, 100.000000, 0, 0.000000, 0),
(4089, 25, -11026.671875, -2090.823486, 30.310307, 100.000000, 0, 0.000000, 0),
(4089, 26, -11031.727539, -2115.264160, 28.654924, 100.000000, 0, 0.000000, 0),
(4089, 27, -11034.656250, -2143.816162, 28.769110, 100.000000, 0, 0.000000, 0),
(4089, 28, -11041.562500, -2161.791504, 28.995548, 100.000000, 0, 0.000000, 0),
(4089, 29, -11061.280273, -2174.644531, 29.115572, 100.000000, 0, 0.000000, 0),
(4089, 30, -11088.593750, -2169.211914, 28.761847, 100.000000, 0, 0.000000, 0),
(4089, 31, -11106.176758, -2161.293945, 28.308960, 100.000000, 0, 0.000000, 0),
(4089, 32, -11117.075195, -2147.075928, 32.778717, 100.000000, 0, 0.000000, 0),
(4089, 33, -11124.440430, -2135.316650, 36.616669, 100.000000, 0, 0.000000, 0),
(4089, 34, -11135.917969, -2126.860840, 48.428841, 100.000000, 0, 0.000000, 0),
(4089, 35, -11141.548828, -2121.066406, 51.875469, 100.000000, 0, 0.000000, 0),
(4089, 36, -11140.916016, -2099.372070, 48.374062, 100.000000, 0, 0.000000, 0),
(4089, 37, -11134.466797, -2086.522217, 47.233448, 100.000000, 0, 0.000000, 0),
(4089, 38, -11130.463867, -2068.091797, 47.179592, 100.000000, 0, 0.000000, 0),
(4089, 39, -11128.538086, -2053.663818, 47.193264, 100.000000, 0, 0.000000, 0),
(4089, 40, -11131.577148, -2046.566650, 47.174339, 100.000000, 0, 0.000000, 0),
(4089, 41, -11145.397461, -2043.054688, 47.148666, 100.000000, 0, 0.000000, 0),
(4089, 42, -11159.664063, -2040.355713, 47.148666, 100.000000, 0, 0.000000, 0),
(4089, 43, -11178.248047, -2033.787109, 47.196342, 100.000000, 0, 0.000000, 0);

-- Spawn Point 2
INSERT INTO `creature` (`guid`, `id`, `id2`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(4090, 12381, 12382, 0, -11153.000000, -2093.860107, 47.877800, 1.74458, 0, 2, 340, 480);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(4090, 1, -11153.000000, -2093.863281, 47.877762, 100.000000, 0, 0.000000, 0),
(4090, 2, -11146.947266, -2101.832031, 48.747299, 100.000000, 0, 0.000000, 0),
(4090, 3, -11148.406250, -2121.024658, 53.256046, 100.000000, 0, 0.000000, 0),
(4090, 4, -11147.317383, -2133.326416, 57.343906, 100.000000, 0, 0.000000, 0),
(4090, 5, -11148.680664, -2152.213379, 63.528221, 100.000000, 0, 0.000000, 0),
(4090, 6, -11159.758789, -2169.070313, 72.683647, 100.000000, 0, 0.000000, 0),
(4090, 7, -11174.450195, -2186.270508, 83.909317, 100.000000, 0, 0.000000, 0),
(4090, 8, -11178.644531, -2211.516602, 96.430038, 100.000000, 0, 0.000000, 0),
(4090, 9, -11174.241211, -2237.482666, 108.091705, 100.000000, 0, 0.000000, 0),
(4090, 10, -11153.215820, -2260.279785, 119.113106, 100.000000, 0, 0.000000, 0),
(4090, 11, -11115.643555, -2262.690186, 121.574341, 100.000000, 0, 0.000000, 0),
(4090, 12, -11086.622070, -2260.559570, 121.147354, 100.000000, 0, 0.000000, 0),
(4090, 13, -11068.498047, -2255.185303, 121.460068, 100.000000, 0, 0.000000, 0),
(4090, 14, -11055.909180, -2259.142334, 121.557167, 100.000000, 0, 0.000000, 0),
(4090, 15, -11013.452148, -2264.962158, 121.649475, 100.000000, 0, 0.000000, 0),
(4090, 16, -10997.039063, -2272.171875, 121.636749, 100.000000, 0, 0.000000, 0),
(4090, 17, -10957.914063, -2269.973389, 121.632813, 100.000000, 0, 0.000000, 0),
(4090, 18, -10933.271484, -2255.693115, 122.874252, 100.000000, 0, 0.000000, 0),
(4090, 19, -10903.619141, -2221.083740, 121.603630, 100.000000, 0, 0.000000, 0),
(4090, 20, -10869.561523, -2203.221680, 122.900581, 100.000000, 0, 0.000000, 0),
(4090, 21, -10837.169922, -2174.189453, 121.631378, 100.000000, 0, 0.000000, 0),
(4090, 22, -10824.770508, -2143.014404, 122.076828, 100.000000, 0, 0.000000, 0),
(4090, 23, -10837.473633, -2107.118408, 121.339615, 100.000000, 0, 0.000000, 0),
(4090, 24, -10825.219727, -2133.930664, 121.627174, 100.000000, 0, 0.000000, 0),
(4090, 25, -10832.454102, -2165.872070, 121.880089, 100.000000, 0, 0.000000, 0),
(4090, 26, -10861.764648, -2197.373291, 122.276245, 100.000000, 0, 0.000000, 0),
(4090, 27, -10895.679688, -2215.702148, 121.659348, 100.000000, 0, 0.000000, 0),
(4090, 28, -10928.293945, -2250.908936, 122.720688, 100.000000, 0, 0.000000, 0),
(4090, 29, -10947.082031, -2265.732178, 121.712120, 100.000000, 0, 0.000000, 0),
(4090, 30, -10989.225586, -2273.721924, 121.631538, 100.000000, 0, 0.000000, 0),
(4090, 31, -11006.856445, -2267.191895, 121.650032, 100.000000, 0, 0.000000, 0),
(4090, 32, -11045.039063, -2263.369629, 121.569557, 100.000000, 0, 0.000000, 0),
(4090, 33, -11062.003906, -2255.081543, 121.557167, 100.000000, 0, 0.000000, 0),
(4090, 34, -11080.238281, -2258.848389, 120.758827, 100.000000, 0, 0.000000, 0),
(4090, 35, -11103.879883, -2262.178223, 121.618210, 100.000000, 0, 0.000000, 0),
(4090, 36, -11147.452148, -2262.624756, 120.390656, 100.000000, 0, 0.000000, 0),
(4090, 37, -11168.819336, -2246.523193, 112.235657, 100.000000, 0, 0.000000, 0),
(4090, 38, -11178.043945, -2222.109375, 101.252762, 100.000000, 0, 0.000000, 0),
(4090, 39, -11176.943359, -2192.047119, 86.504150, 100.000000, 0, 0.000000, 0),
(4090, 40, -11164.573242, -2174.692871, 76.303452, 100.000000, 0, 0.000000, 0),
(4090, 41, -11153.165039, -2161.485352, 68.141823, 100.000000, 0, 0.000000, 0),
(4090, 42, -11147.135742, -2145.202393, 61.263638, 100.000000, 0, 0.000000, 0),
(4090, 43, -11148.305664, -2128.738281, 55.437210, 100.000000, 0, 0.000000, 0),
(4090, 44, -11145.987305, -2110.421875, 50.485939, 100.000000, 0, 0.000000, 0),
(4090, 45, -11153.730469, -2089.702393, 47.908920, 100.000000, 0, 0.000000, 0);

-- Spawn Point 3
INSERT INTO `creature` (`guid`, `id`, `id2`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(4149, 12381, 12382, 0, -10993.299805, -1938.250000, 47.139301, 5.50472, 0, 2, 340, 480);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(4149, 1, -10993.326172, -1938.248291, 47.139290, 100.000000, 0, 0.000000, 0),
(4149, 2, -10997.236328, -1921.790405, 49.942711, 100.000000, 0, 0.000000, 0),
(4149, 3, -11001.631836, -1898.160034, 51.975887, 100.000000, 0, 0.000000, 0),
(4149, 4, -11017.869141, -1880.935547, 49.934593, 100.000000, 0, 0.000000, 0),
(4149, 5, -11044.808594, -1872.973389, 50.704720, 100.000000, 0, 0.000000, 0),
(4149, 6, -11062.667969, -1874.937622, 51.173748, 100.000000, 0, 0.000000, 0),
(4149, 7, -11082.419922, -1879.116211, 55.075043, 100.000000, 0, 0.000000, 0),
(4149, 8, -11090.654297, -1882.918945, 56.919342, 100.000000, 0, 0.000000, 0),
(4149, 9, -11103.005859, -1886.104858, 58.642410, 100.000000, 0, 0.000000, 0),
(4149, 10, -11117.255859, -1884.167603, 60.993542, 100.000000, 0, 0.000000, 0),
(4149, 11, -11141.385742, -1883.647827, 62.097736, 100.000000, 0, 0.000000, 0),
(4149, 12, -11158.945313, -1899.421631, 61.839062, 100.000000, 0, 0.000000, 0),
(4149, 13, -11161.835938, -1903.291992, 61.789177, 100.000000, 0, 0.000000, 0),
(4149, 14, -11164.556641, -1907.269287, 61.702557, 100.000000, 0, 0.000000, 0),
(4149, 15, -11167.998047, -1910.355225, 61.484280, 100.000000, 0, 0.000000, 0),
(4149, 16, -11167.076172, -1924.201416, 60.591312, 100.000000, 0, 0.000000, 0),
(4149, 17, -11165.928711, -1927.650269, 60.437935, 100.000000, 0, 0.000000, 0),
(4149, 18, -11163.107422, -1934.965820, 59.677906, 100.000000, 0, 0.000000, 0),
(4149, 19, -11171.914063, -1947.645264, 57.054874, 100.000000, 0, 0.000000, 0),
(4149, 20, -11170.190430, -1959.365112, 55.548855, 100.000000, 0, 0.000000, 0),
(4149, 21, -11164.512695, -1972.313965, 54.555813, 100.000000, 0, 0.000000, 0),
(4149, 22, -11173.027344, -2003.534546, 47.129387, 100.000000, 0, 0.000000, 0),
(4149, 23, -11177.958984, -2000.168945, 47.164478, 100.000000, 0, 0.000000, 0),
(4149, 24, -11195.679688, -1998.683838, 47.189007, 100.000000, 0, 0.000000, 0),
(4149, 25, -11209.906250, -2010.788696, 47.174473, 100.000000, 0, 0.000000, 0),
(4149, 26, -11215.151367, -2020.339600, 47.339806, 100.000000, 0, 0.000000, 0),
(4149, 27, -11205.338867, -2031.673584, 47.760555, 100.000000, 0, 0.000000, 0),
(4149, 28, -11198.610352, -2036.435913, 48.808022, 100.000000, 0, 0.000000, 0),
(4149, 29, -11190.386719, -2053.476318, 48.652885, 100.000000, 0, 0.000000, 0),
(4149, 30, -11192.715820, -2045.291138, 48.606010, 100.000000, 0, 0.000000, 0),
(4149, 31, -11201.099609, -2034.453369, 48.243675, 100.000000, 0, 0.000000, 0),
(4149, 32, -11214.741211, -2026.812744, 47.610832, 100.000000, 0, 0.000000, 0),
(4149, 33, -11214.735352, -2019.408691, 47.171772, 100.000000, 0, 0.000000, 0),
(4149, 34, -11203.528320, -2003.889038, 47.183079, 100.000000, 0, 0.000000, 0),
(4149, 35, -11186.319336, -1997.449951, 47.189007, 100.000000, 0, 0.000000, 0),
(4149, 36, -11178.154297, -1999.952881, 47.166027, 100.000000, 0, 0.000000, 0),
(4149, 37, -11164.815430, -1980.391479, 53.168159, 100.000000, 0, 0.000000, 0),
(4149, 38, -11164.739258, -1971.176147, 54.723717, 100.000000, 0, 0.000000, 0),
(4149, 39, -11170.857422, -1958.510498, 55.691429, 100.000000, 0, 0.000000, 0),
(4149, 40, -11169.515625, -1943.452026, 58.216778, 100.000000, 0, 0.000000, 0),
(4149, 41, -11163.039063, -1934.888550, 59.730980, 100.000000, 0, 0.000000, 0),
(4149, 42, -11162.125977, -1932.237549, 60.047722, 100.000000, 0, 0.000000, 0),
(4149, 43, -11168.614258, -1919.540894, 61.002632, 100.000000, 0, 0.000000, 0),
(4149, 44, -11169.067383, -1913.848511, 61.406548, 100.000000, 0, 0.000000, 0),
(4149, 45, -11167.306641, -1909.452393, 61.558937, 100.000000, 0, 0.000000, 0),
(4149, 46, -11161.759766, -1903.174072, 61.791248, 100.000000, 0, 0.000000, 0),
(4149, 47, -11147.884766, -1887.992310, 62.093449, 100.000000, 0, 0.000000, 0),
(4149, 48, -11130.327148, -1883.386841, 61.531189, 100.000000, 0, 0.000000, 0),
(4149, 49, -11111.153320, -1884.975952, 59.937248, 100.000000, 0, 0.000000, 0),
(4149, 50, -11096.974609, -1886.959229, 57.666065, 100.000000, 0, 0.000000, 0),
(4149, 51, -11093.141602, -1885.714355, 56.955479, 100.000000, 0, 0.000000, 0),
(4149, 52, -11073.344727, -1877.048218, 52.621822, 100.000000, 0, 0.000000, 0),
(4149, 53, -11054.389648, -1873.482422, 51.604008, 100.000000, 0, 0.000000, 0),
(4149, 54, -11025.761719, -1875.747192, 49.948402, 100.000000, 0, 0.000000, 0),
(4149, 55, -11003.097656, -1895.007813, 51.745132, 100.000000, 0, 0.000000, 0),
(4149, 56, -10999.300781, -1913.536255, 50.367111, 100.000000, 0, 0.000000, 0),
(4149, 57, -10992.474609, -1939.088135, 46.908199, 100.000000, 0, 0.000000, 0);

-- Spawn Point 4
INSERT INTO `creature` (`guid`, `id`, `id2`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(4200, 12381, 12382, 0, -10807.400391, -2072.270020, 121.989998, 5.83641, 0, 2, 340, 480);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(4200, 1, -10807.356445, -2072.272949, 121.990479, 100.000000, 0, 0.000000, 0),
(4200, 2, -10810.201172, -2056.059326, 121.363579, 100.000000, 0, 0.000000, 0),
(4200, 3, -10809.038086, -2032.296021, 123.501480, 100.000000, 0, 0.000000, 0),
(4200, 4, -10810.132813, -2008.259766, 124.840370, 100.000000, 0, 0.000000, 0),
(4200, 5, -10809.552734, -1994.016479, 122.952431, 100.000000, 0, 0.000000, 0),
(4200, 6, -10800.713867, -1977.221069, 123.116592, 100.000000, 0, 0.000000, 0),
(4200, 7, -10780.786133, -1956.139526, 123.305138, 100.000000, 0, 0.000000, 0),
(4200, 8, -10769.868164, -1946.554077, 122.523872, 100.000000, 0, 0.000000, 0),
(4200, 9, -10751.593750, -1947.421021, 122.041252, 100.000000, 0, 0.000000, 0),
(4200, 10, -10738.915039, -1955.417236, 121.268394, 100.000000, 0, 0.000000, 0),
(4200, 11, -10729.708008, -1976.356201, 121.700272, 100.000000, 0, 0.000000, 0),
(4200, 12, -10732.880859, -1989.944092, 121.704353, 100.000000, 0, 0.000000, 0),
(4200, 13, -10730.762695, -2018.113403, 121.658218, 100.000000, 0, 0.000000, 0),
(4200, 14, -10709.770508, -2043.832764, 121.655655, 100.000000, 0, 0.000000, 0),
(4200, 15, -10693.584961, -2054.807373, 121.484818, 100.000000, 0, 0.000000, 0),
(4200, 16, -10661.646484, -2076.753906, 114.866005, 100.000000, 0, 0.000000, 0),
(4200, 17, -10684.600586, -2060.350342, 120.881157, 100.000000, 0, 0.000000, 0),
(4200, 18, -10701.359375, -2050.680420, 121.655655, 100.000000, 0, 0.000000, 0),
(4200, 19, -10725.303711, -2027.015015, 121.655655, 100.000000, 0, 0.000000, 0),
(4200, 20, -10734.371094, -2000.180664, 121.670219, 100.000000, 0, 0.000000, 0),
(4200, 21, -10731.486328, -1986.522217, 121.722656, 100.000000, 0, 0.000000, 0),
(4200, 22, -10732.761719, -1963.208984, 121.477737, 100.000000, 0, 0.000000, 0),
(4200, 23, -10746.231445, -1950.078613, 121.770355, 100.000000, 0, 0.000000, 0),
(4200, 24, -10764.521484, -1944.872070, 122.554886, 100.000000, 0, 0.000000, 0),
(4200, 25, -10772.445313, -1948.710693, 122.756569, 100.000000, 0, 0.000000, 0),
(4200, 26, -10793.537109, -1968.716919, 123.203812, 100.000000, 0, 0.000000, 0),
(4200, 27, -10805.425781, -1983.943604, 123.000389, 100.000000, 0, 0.000000, 0),
(4200, 28, -10810.036133, -1997.314697, 123.268608, 100.000000, 0, 0.000000, 0),
(4200, 29, -10808.612305, -2021.245117, 124.573395, 100.000000, 0, 0.000000, 0),
(4200, 30, -10810.830078, -2045.120239, 122.165337, 100.000000, 0, 0.000000, 0),
(4200, 31, -10805.780273, -2073.028076, 122.006348, 100.000000, 0, 0.000000, 0);

-- Spawn Point 5
INSERT INTO `creature` (`guid`, `id`, `id2`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(4222, 12381, 12382, 0, -10922.000000, -1968.719971, 114.875999, 0.990982, 0, 2, 340, 480);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(4222, 1, -10922.007813, -1968.715088, 114.875710, 100.000000, 0, 0.000000, 0),
(4222, 2, -10897.315430, -1945.660889, 114.897758, 100.000000, 0, 0.000000, 0),
(4222, 3, -10881.270508, -1932.804810, 114.728485, 100.000000, 0, 0.000000, 0),
(4222, 4, -10861.129883, -1911.909912, 114.510864, 100.000000, 0, 0.000000, 0),
(4222, 5, -10844.985352, -1876.995483, 114.544075, 100.000000, 0, 0.000000, 0),
(4222, 6, -10820.593750, -1862.350586, 114.732857, 100.000000, 0, 0.000000, 0),
(4222, 7, -10792.623047, -1854.366089, 114.680695, 100.000000, 0, 0.000000, 0),
(4222, 8, -10771.559570, -1842.981445, 114.583244, 100.000000, 0, 0.000000, 0),
(4222, 9, -10738.925781, -1835.391357, 114.693001, 100.000000, 0, 0.000000, 0),
(4222, 10, -10706.333984, -1842.573242, 114.667221, 100.000000, 0, 0.000000, 0),
(4222, 11, -10691.691406, -1860.391968, 114.458832, 100.000000, 0, 0.000000, 0),
(4222, 12, -10684.948242, -1893.307251, 114.251503, 100.000000, 0, 0.000000, 0),
(4222, 13, -10670.469727, -1912.260132, 114.972107, 100.000000, 0, 0.000000, 0),
(4222, 14, -10647.007813, -1917.857544, 116.192497, 100.000000, 0, 0.000000, 0),
(4222, 15, -10607.423828, -1901.490601, 116.833755, 100.000000, 0, 0.000000, 0),
(4222, 16, -10573.966797, -1873.725464, 114.972717, 100.000000, 0, 0.000000, 0),
(4222, 17, -10569.970703, -1827.927124, 106.283699, 100.000000, 0, 0.000000, 0),
(4222, 18, -10559.235352, -1792.224731, 96.794128, 100.000000, 0, 0.000000, 0),
(4222, 19, -10545.982422, -1756.659912, 89.326103, 100.000000, 0, 0.000000, 0),
(4222, 20, -10512.415039, -1746.711548, 89.405396, 100.000000, 0, 0.000000, 0),
(4222, 21, -10541.197266, -1750.571167, 88.537025, 100.000000, 0, 0.000000, 0),
(4222, 22, -10556.307617, -1784.085449, 95.177643, 100.000000, 0, 0.000000, 0),
(4222, 23, -10568.560547, -1819.702148, 104.173180, 100.000000, 0, 0.000000, 0),
(4222, 24, -10569.705078, -1867.064575, 113.782333, 100.000000, 0, 0.000000, 0),
(4222, 25, -10600.123047, -1896.690063, 116.594055, 100.000000, 0, 0.000000, 0),
(4222, 26, -10638.731445, -1916.830444, 117.127129, 100.000000, 0, 0.000000, 0),
(4222, 27, -10662.419922, -1915.870239, 115.705139, 100.000000, 0, 0.000000, 0),
(4222, 28, -10680.138672, -1901.061646, 114.379707, 100.000000, 0, 0.000000, 0),
(4222, 29, -10688.144531, -1869.061157, 114.316925, 100.000000, 0, 0.000000, 0),
(4222, 30, -10699.178711, -1847.787476, 114.620110, 100.000000, 0, 0.000000, 0),
(4222, 31, -10729.632813, -1835.388184, 114.667221, 100.000000, 0, 0.000000, 0),
(4222, 32, -10762.931641, -1839.292480, 114.564522, 100.000000, 0, 0.000000, 0),
(4222, 33, -10783.721680, -1851.107666, 114.671288, 100.000000, 0, 0.000000, 0),
(4222, 34, -10811.525391, -1859.123047, 114.747757, 100.000000, 0, 0.000000, 0),
(4222, 35, -10838.271484, -1870.480347, 114.556625, 100.000000, 0, 0.000000, 0),
(4222, 36, -10856.084961, -1903.386597, 114.465912, 100.000000, 0, 0.000000, 0),
(4222, 37, -10873.750977, -1926.188477, 114.727440, 100.000000, 0, 0.000000, 0),
(4222, 38, -10892.399414, -1941.523804, 114.878387, 100.000000, 0, 0.000000, 0),
(4222, 39, -10920.625977, -1966.605103, 114.848999, 100.000000, 0, 0.000000, 0);

-- Remove loot from Mana Sprite and Ley Sprite.
UPDATE `creature_template` SET `ai_name`='EventAI', `spell_list_id`=123820, `gold_min`=0, `gold_max`=0 WHERE `entry` IN (12382, 12381);
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (123820, 'Deadwind Pass - Mana Sprite and Ley Sprite', 21027, 100, 1, 0, 0, 8, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Ley Sprite
DELETE FROM `creature_ai_events` WHERE `creature_id`=12381;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1238101, 12381, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1238101, 0, 0, 'Ley Sprite - Cast Detonate on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=1238101;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1238101, 0, 0, 15, 21027, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ley Sprite - Cast Spell Detonate');

-- Events list for Mana Sprite
DELETE FROM `creature_ai_events` WHERE `creature_id`=12382;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1238201, 12382, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1238201, 0, 0, 'Mana Sprite - Cast Detonate on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=1238201;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1238201, 0, 0, 15, 21027, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mana Sprite - Cast Spell Detonate');


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
