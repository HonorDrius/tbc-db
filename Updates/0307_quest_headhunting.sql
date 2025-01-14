-- All guids are free in Classic, TBC and WOTLK DB
SET @OGUID := 157010; -- gameobjects

-- Endscript for Quest 'Headhunting'
DELETE FROM `dbscripts_on_quest_end` WHERE id = '582';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(582,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Set Active'),
(582,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Remove QuestFlags'),
(582,0,3,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0.64577,0,0,'Nimboya - Orientation'),
(582,0,4,0,0,0,0,0,0,0,732,0,0,0,0,0,0,0,0,0,0,'Nimboya - Say EmoteText'),
(582,1000,0,9,@OGUID,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,1,9,@OGUID+1,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,2,9,@OGUID+2,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,3,9,@OGUID+3,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,4,9,@OGUID+4,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,5,9,@OGUID+5,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,6,9,@OGUID+6,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,1,9,@OGUID+7,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,2,9,@OGUID+8,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,3,9,@OGUID+9,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,4,9,@OGUID+10,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,5,9,@OGUID+11,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,6,9,@OGUID+12,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,7,0,0,0,0,0,0,0,733,0,0,0,0,0,0,0,0,0,0,'Nimboya - Say EmoteText'),
(582,12000,1,9,@OGUID+13,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,2,9,@OGUID+14,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,3,9,@OGUID+15,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,4,9,@OGUID+16,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,5,9,@OGUID+17,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,6,9,@OGUID+18,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,19000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Face Player'),
(582,19000,1,0,0,0,0,0,0,0,734,0,0,0,0,0,0,0,0,0,0,'Nimboya - Say EmoteText'),
(582,19000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Add QuestFlags'),
(582,25000,0,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,3.19395,0,0,'Nimboya - Change Orientation'),
(582,25000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Remove Active');

UPDATE `quest_template` SET `CompleteScript`='582' WHERE `entry`='582';

-- These texts are TextEmote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='732');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='733');

-- Skull spawns
DELETE FROM gameobject WHERE `guid` IN (157010, 157011, 157012, 157013, 157014, 157015, 157016, 157017, 157018, 157019, 157020, 157021, 157022, 157023, 157024, 157025, 157026, 157027, 157028);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`) VALUES 
-- First set delay +1
(@OGUID, '2371', '0', '-12345.903', '170.5356', '3.004278', '4.4331365', '-0.7986355', '0.60181504', '-60', '-60', '1'),
(@OGUID+1, '2371', '0', '-12346.513', '171.06647', '3.004277', '3.1940022', '-0.9996567', '0.026201647', '-60', '-60', '1'),
(@OGUID+2, '2371', '0', '-12346.201', '171.26357', '3.00435', '3.0717661', '0.9993906', '0.034906134', '-60', '-60', '1'),
(@OGUID+3, '2371', '0', '-12346.156', '170.5383', '3.004277', '1.780234', '0.7771454', '0.6293211', '-60', '-60', '1'),
(@OGUID+4, '2371', '0', '-12346.156', '170.5383', '3.004277', '1.780234', '0.7771454', '0.6293211', '-60', '-60', '1'),
(@OGUID+5, '2371', '0', '-12346.107', '170.72945', '3.00435', '0', '0', '1', '-60', '-60', '1'),
(@OGUID+6, '2371', '0', '-12345.833', '169.7869', '2.978263', '0', '0', '1', '-60', '-60', '1'),
-- Second Set delay +7
(@OGUID+7, '2371', '0', '-12346.037', '170.97575', '3.00435', '5.585054', '-0.34202003', '0.9396927', '-60', '-60', '1'),
(@OGUID+8, '2371', '0', '-12346.091', '170.27995', '3.004277', '2.0769393', '0.86162853', '0.99904823', '-60', '-60', '1'),
(@OGUID+9, '2371', '0', '-12346.354', '170.8782', '3.004349', '0.087266', '0.043619156', '0.99904823', '-60', '-60', '1'),
(@OGUID+10, '2371', '0', '-12347.181', '170.73628', '3.022072', '5.811947', '-0.23344517', '0.97236997', '-60', '-60', '1'),
(@OGUID+11, '2371', '0', '-12345.812', '170.6614', '3.079033', '0.94247663', '0.45398998', '0.89100677', '-60', '-60', '1'),
(@OGUID+12, '2371', '0', '-12346.648', '170.6251', '3.214931', '4.9741898', '-0.60876083', '0.7933538', '-60', '-60', '1'),
-- 3rd set delay +12
(@OGUID+13, '2371', '0', '-12346.784', '169.93674', '3.01733', '3.9095414', '-0.92718315', '0.3746083', '-60', '-60', '1'),
(@OGUID+14, '2371', '0', '-12346.142', '171.32802', '3.214792', '2.1642058', '0.88294697', '0.4694727', '-60', '-60', '1'),
(@OGUID+15, '2371', '0', '-12346.013', '171.04683', '3.192957', '0.12217299', '0.061048508', '0.9981348', '-60', '-60', '1'),
(@OGUID+16, '2371', '0', '-12345.653', '170.5593', '3.215016', '3.0194132', '0.9981346', '0.061051756', '-60', '-60', '1'),
(@OGUID+17, '2371', '0', '-12346.173', '171.38135', '3.533223', '3.8397253', '-0.9396925', '0.34202045', '-60', '-60', '1'),
(@OGUID+18, '2371', '0', '-12346.501', '170.10889', '3.00499', '2.2514734', '0.902585', '0.43051165', '-60', '-60', '1');
