DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20221025170550');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20221025170550');
-- Add your query below.

-- Remove unused DB scripts

DELETE FROM `mangos`.`creature_ai_scripts` WHERE  `id`=485704;
DELETE FROM `mangos`.`creature_ai_scripts` WHERE  `id`=485703;
DELETE FROM `mangos`.`creature_ai_scripts` WHERE  `id`=485702;
DELETE FROM `mangos`.`creature_ai_scripts` WHERE  `id`=485701;

DELETE FROM `mangos`.`creature_ai_events` WHERE  `id`=485704;
DELETE FROM `mangos`.`creature_ai_events` WHERE  `id`=485703;
DELETE FROM `mangos`.`creature_ai_events` WHERE  `id`=485702;
DELETE FROM `mangos`.`creature_ai_events` WHERE  `id`=485701;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
