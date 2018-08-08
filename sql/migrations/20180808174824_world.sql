DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180808174824');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180808174824');
-- Add your query below.


DELETE FROM `quest_start_scripts` WHERE `id`=3382;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 0, 4, 147, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Crew Under Fire - Remove Npc Flags');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 5, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 1');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 5, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 2');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 5, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 3');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 10, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 4');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 10, 10, 12204, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 10, 2375.868, -5947.179, 9.544, 4.565, 0, 'A Crew Under Fire - Spawn Spitelash Raider 5');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 30, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Crew Under Fire - Add Npc Flags');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3382, 30, 7, 3382, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 'A Crew Under Fire - Complete Quest');
UPDATE `quest_template` SET `StartScript`=3382 WHERE `entry`=3382;

UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=15341;

UPDATE `game_event` SET `start_time`='2015-03-30 04:00:00', `disabled`=0, `patch_max`=1 WHERE `entry`=157;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
