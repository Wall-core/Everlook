DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20220106223654');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20220106223654');
-- Add your query below.


-- Use Summon Flag To Set Active Object
DELETE FROM `creature_movement_scripts` WHERE `id`=243501;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 620, 0, 0, 0, 0, 0, 0, 0, 0, 'Southshore Crier - Say Text');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 621, 0, 0, 0, 0, 0, 0, 0, 0, 'Southshore Crier - Say Text');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243506, -1, 9, -863.81, -496.398, 13.4382, 5.34071, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243507, -1, 9, -863.394, -494.436, 13.4375, 5.53269, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243502, -1, 9, -852.268, -560.181, 11.6908, 3.82227, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243503, -1, 9, -850.748, -561.89, 11.6908, 3.14159, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243508, -1, 9, -818.436, -503.501, 15.3768, 3.71755, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243509, -1, 9, -817.583, -505.381, 15.2609, 3.03687, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243504, -1, 9, -874.746, -573.897, 11.6758, 2.28638, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243505, -1, 9, -877.416, -574.223, 11.5033, 1.0821, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243512, -1, 9, -726.371, -574.912, 25.5261, 4.16828, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243512, -1, 9, -726.914, -575.805, 25.4761, 4.03917, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243510, -1, 9, -787.598, -505.655, 18.9435, 6.05629, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 8, 10, 2386, 2100000, 0, 0, 0, 0, 0, 0, 2, 243511, -1, 9, -787.574, -504.358, 18.9435, 5.79449, 0, 'Summon Creature Southshore Guard');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 623, 0, 0, 0, 0, 0, 0, 0, 0, 'Southshore Crier - Say Text');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 626, 0, 0, 0, 0, 0, 0, 0, 0, 'Southshore Crier - Say Text');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 21, 15, 2596, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Southshore Crier - Cast Spell Touch of the Black Claw');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243520, -1, 9, -879.434, -507.08, 12.0944, 1.861, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243521, -1, 9, -863.649, -538.335, 8.72452, 0.311862, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243521, -1, 9, -860.799, -537.438, 9.01221, 0.313721, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243522, -1, 9, -864.073, -420.33, 12.208, 5.61996, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243522, -1, 9, -862.443, -418.923, 12.1787, 5.51524, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243523, -1, 9, -826.355, -514.603, 13.2019, 3.24146, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243523, -1, 9, -826.566, -514.741, 13.1909, 3.22376, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243524, -1, 9, -772.994, -529.219, 20.8964, 5.34041, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243524, -1, 9, -773.472, -526.871, 21.3032, 4.91285, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243525, -1, 9, -915.314, -416.524, 8.04292, 5.74213, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243525, -1, 9, -915.724, -418.445, 7.44239, 4.92183, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243526, -1, 9, -776.995, -681.734, 10.645, 1.14385, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243526, -1, 9, -769.896, -676.539, 11.8627, 0.92749, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243520, -1, 9, -879.583, -506.974, 12.0944, 4.32519, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243519, -1, 9, -781.113, -441.065, 21.0467, 2.06222, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243513, -1, 9, -775.028, -681.441, 10.5779, 0.763972, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243513, -1, 9, -774.61, -682.655, 10.2871, 0.20944, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243514, -1, 9, -874.898, -543.902, 8.1009, 2.6314, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243514, -1, 9, -874.686, -543.904, 8.11303, 2.65715, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243515, -1, 9, -722.296, -626.843, 21.2373, 4.2949, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243515, -1, 9, -722.225, -627.343, 21.2852, 5.99603, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243516, -1, 9, -863.397, -420.184, 12.1807, 5.33287, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243516, -1, 9, -862.454, -416.289, 12.1807, 3.79291, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243517, -1, 9, -757.291, -425, 20.5991, 4.43955, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243517, -1, 9, -759.857, -421.127, 20.7913, 3.24438, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243518, -1, 9, -830.498, -675.663, 11.4526, 1.83392, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243518, -1, 9, -832.882, -666.844, 12.3942, 1.82468, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 22, 10, 2434, 2100000, 0, 0, 0, 0, 0, 0, 2, 243519, -1, 9, -775.546, -441.894, 21.8413, 0.456332, 0, 'Summon Creature Shadowy Assassin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (243501, 27, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Southshore Crier - Despawn Creature');
DELETE FROM `generic_scripts` WHERE `id` BETWEEN 243513 AND 243526 AND `command` = 21;

-- Move Talk Commands To Creature Movement Scripts
DELETE FROM `generic_scripts` WHERE `id` BETWEEN 243513 AND 243526 AND `command` = 0;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(243501, 2040, 68, 243527, 2, 2434, 500, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2434, 'Southshore Crier - Start Script For All'),
(243501, 2040, 68, 243528, 2, 2434, 500, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2435, 'Southshore Crier - Start Script For All');

INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(243527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 633, 634, 635, 0, 0, 0, 0, 0, 0, 'Shadowy Assassin - Talk'),
(243528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 630, 631, 632, 0, 0, 0, 0, 0, 0, 'Shadowy Assassin - Talk');


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
