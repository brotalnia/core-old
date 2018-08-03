DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180721181401');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180721181401');
-- Add your query below.


-- Placeholder script for A Crew Under Fire.
DELETE FROM `quest_start_scripts` WHERE `id`=3382;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 0, 4, 147, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Crew Under Fire - Remove Npc Flags');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 5, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 1');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 5, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 2');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 5, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 3');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 5, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 4');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 5, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 5');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 30, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Crew Under Fire - Add Npc Flags');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 30, 7, 3382, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 'A Crew Under Fire - Complete Quest');
UPDATE `quest_template` SET `StartScript`=3382 WHERE `entry`=3382;

-- Fix startup error.
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=15341;

-- Prevent mobs in Dustwind Cave from aggroing.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`+2 WHERE `entry` IN (3195, 3196, 3199);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
