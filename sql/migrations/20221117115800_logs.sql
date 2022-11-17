DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20221117115800');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20221117115800');
-- Add your query below.

ALTER TABLE `system_fingerprint_usage` ADD COLUMN `os_info` VARCHAR(100) NULL AFTER `cputype`, CHARSET=utf8mb4; 

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
