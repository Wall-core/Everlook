-- Move Players to Everlook PTR start locations
-- Alliance
UPDATE `characters` SET `position_x`=2173.931641, `position_y`=28.866976, `position_z`=53.167, `map`=269, `zone`=2370 WHERE `race`=1;
UPDATE `characters` SET `position_x`=2173.931641, `position_y`=28.866976, `position_z`=53.167, `map`=269, `zone`=2370 WHERE `race`=3;
UPDATE `characters` SET `position_x`=2173.931641, `position_y`=28.866976, `position_z`=53.167, `map`=269, `zone`=2370 WHERE `race`=4;
UPDATE `characters` SET `position_x`=2173.931641, `position_y`=28.866976, `position_z`=53.167, `map`=269, `zone`=2370 WHERE `race`=7;

-- Horde
UPDATE `characters` SET `position_x`=2516.044678, `position_y`=1340.723877, `position_z`=20.641928, `map`=269, `zone`=2367 WHERE `race`=2;
UPDATE `characters` SET `position_x`=2516.044678, `position_y`=1340.723877, `position_z`=20.641928, `map`=269, `zone`=2367 WHERE `race`=5;
UPDATE `characters` SET `position_x`=2516.044678, `position_y`=1340.723877, `position_z`=20.641928, `map`=269, `zone`=2367 WHERE `race`=6;
UPDATE `characters` SET `position_x`=2516.044678, `position_y`=1340.723877, `position_z`=20.641928, `map`=269, `zone`=2367 WHERE `race`=8;

-- Delete all auras
DELETE FROM `characters`.`character_aura`;

-- Delete all gear
DELETE FROM `characters`.`character_inventory`;