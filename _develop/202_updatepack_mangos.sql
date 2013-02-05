--
-- Copyright (C) 2005-2013 MaNGOS <http://getmangos.com/>
-- Copyright (C) 2009-2013 MaNGOSZero <https://github.com/mangoszero>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

-- coming in next updatepack
-- drop conditions for recipes. each player can get any recipe (without a proper profession) Thanks kokeszko
-- DELETE FROM `conditions` WHERE condition_entry IN (6,10,13,16);
-- UPDATE creature_loot_template SET condition_id=0 WHERE condition_id IN (6,10,13,16);

-- missing graveyard for naxxramas
DELETE FROM `game_graveyard_zone` WHERE id=909 AND ghost_zone=3456;
INSERT INTO `game_graveyard_zone` VALUES
(909,3456,0);

-- naxxramas creature updates
-- Heigan the Unclean
UPDATE `creature` SET position_x=2793.86, position_y=-3707.38, position_z=276.627, orientation=0.593412 WHERE guid=88205;
-- Noth the Plaguebringer
UPDATE `creature` SET position_x=2671.65, position_y=-3489.11, position_z=261.337, orientation=3.89492, spawndist=5, MovementType=1 WHERE guid=88100;

-- missing gameobject spawns (naxxramas)
DELETE FROM `gameobject` WHERE map=533;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('65707','181510','533','2787.26','-3654.13','274.317','-2.74888','0','0','-0.980784','0.195097','180','0','1'),
('65708','181511','533','2782.4','-3660.4','274.315','2.11089','0','0','0.87012','0.492841','180','0','1'),
('65709','181512','533','2778.43','-3651.31','274.317','-2.74259','0','0','-0.980166','0.198181','180','0','1'),
('65710','181513','533','2774.3','-3660.66','274.317','-0.183933','0','0','-0.0918369','0.995774','180','0','1'),
('65711','175369','533','3185.48','-4039.1','107.792','3.12412','0','0','0.999962','0.00873622','180','0','1'),
('65712','181514','533','2757.84','-3659.56','274.317','1.97116','0','0','0.833593','0.55238','180','0','1'),
('65713','175370','533','3271.52','-4064.31','108.435','-2.8536','0','0','-0.989651','0.143497','180','0','1'),
('65714','181515','533','2755.24','-3649.9','274.317','-2.88634','0','0','-0.991867','0.12728','180','0','1'),
('65715','181516','533','2763.55','-3654.04','274.317','-2.88396','0','0','-0.991715','0.12846','180','0','1'),
('65716','181517','533','2793.24','-3664.13','274.317','0.635802','0','0','0.312573','0.949894','180','0','1'),
('65717','181518','533','2802.51','-3664.73','274.317','0.635802','0','0','0.312573','0.949894','180','0','1'),
('65718','181519','533','2812','-3671.98','274.073','-0.473312','0','0','-0.234453','0.972127','180','0','1'),
('65719','181520','533','2810.56','-3680.58','274.317','-3.09646','0','0','-0.999745','0.0225644','180','0','1'),
('65720','181521','533','2800.15','-3682.71','274.352','1.03882','0','0','0.496368','0.868112','180','0','1'),
('65721','181522','533','2805.96','-3691.67','274.317','-1.84881','0','0','-0.798263','0.60231','180','0','1'),
('65722','181523','533','2795.81','-3677.56','274.073','2.85315','0','0','0.989618','0.143722','180','0','1'),
('65723','181524','533','2792.33','-3684.13','274.317','-1.30703','0','0','-0.607981','0.793952','180','0','1'),
('65724','181525','533','2783.36','-3688.36','274.385','-3.12187','0','0','-0.999951','0.00986115','180','0','1'),
('65725','181526','533','2781.56','-3671','274.352','-3.12955','0','0','-0.999982','0.0060213','180','0','1'),
('65726','181527','533','2777.41','-3677.64','274.387','0.79134','0','0','0.385427','0.922739','180','0','1'),
('65727','181528','533','2769.25','-3671.42','274.422','-0.424006','0','0','-0.210418','0.977611','180','0','1'),
('65728','181529','533','2763.33','-3680.53','274.352','-3.13681','0','0','-0.999997','0.00239129','180','0','1'),
('65729','181530','533','2758.16','-3667.13','274.352','3.13883','0','0','0.999999','0.00138135','180','0','1'),
('65730','181531','533','2749.34','-3662.21','274.352','-2.64632','0','0','-0.969495','0.245113','180','0','1'),
('65731','181532','533','2743.09','-3671.32','274.317','2.46425','0','0','0.943197','0.332234','180','0','1'),
('65732','181533','533','2754.01','-3673.77','274.387','0.79134','0','0','0.385427','0.922739','180','0','1'),
('65733','181534','533','2737.17','-3675.16','274.317','-1.91353','0','0','-0.817332','0.576167','180','0','1'),
('65734','181535','533','2747.13','-3684.35','274.352','3.13243','0','0','0.99999','0.00458127','180','0','1'),
('65735','181536','533','2740.49','-3692.13','274.387','0.792787','0','0','0.386094','0.922459','180','0','1'),
('65736','181537','533','2738.4','-3703.13','274.385','-0.537079','0','0','-0.265324','0.964159','180','0','1'),
('65737','181538','533','2752.93','-3706.52','274.317','1.04784','0','0','0.500278','0.865865','180','0','1'),
('65738','181539','533','2746.13','-3700.19','274.317','-0.789904','0','0','-0.384764','0.923015','180','0','1'),
('65739','181540','533','2752.92','-3693.02','274.317','-2.18329','0','0','-0.887387','0.461026','180','0','1'),
('65740','181541','533','2760.58','-3688.31','274.387','0.412781','0','0','0.204928','0.978777','180','0','1'),
('65741','181542','533','2764.29','-3698.09','274.422','-0.792388','0','0','-0.38591','0.922536','180','0','1'),
('65742','181543','533','2772.08','-3692.15','274.352','-1.26434','0','0','-0.590897','0.806747','180','0','1'),
('65743','181544','533','2774.96','-3701.13','274.317','0.523547','0','0','0.258794','0.965933','180','0','1'),
('65744','181545','533','2772.29','-3711.44','274.422','-0.260754','0','0','-0.130008','0.991513','180','0','1'),
('65745','181546','533','2761.82','-3711.92','274.315','-2.32171','0','0','-0.917144','0.398555','180','0','1'),
('65746','181547','533','2754.19','-3718.12','274.317','-0.91283','0','0','-0.440733','0.897638','180','0','1'),
('65747','181548','533','2765.76','-3718.73','274.317','-1.4752','0','0','-0.672514','0.740085','180','0','1'),
('65748','181549','533','2776.16','-3721.79','274.387','-2.34582','0','0','-0.921882','0.387471','180','0','1'),
('65749','181550','533','2765.33','-3728.61','274.315','-0.065239','0','0','-0.0326137','0.999468','180','0','1'),
('65750','181551','533','2774.99','-3731.79','274.387','-2.35527','0','0','-0.923703','0.38311','180','0','1'),
('65751','181552','533','2784.17','-3724.73','274.385','1.05084','0','0','0.501576','0.865113','180','0','1'),
('65752','181577','533','2909','-4025.02','273.475','3.14159','0','0','1','0.00000126759','180','0','1'),
('65753','181119','533','2587.96','-3017.17','241.304','3.14159','0','0','-1','0','180','0','1'),
('65754','181120','533','3339.16','-3100.64','296.813','3.14159','0','0','-1','0','180','0','1'),
('65755','181121','533','3421.86','-3017.51','295.615','3.14159','0','0','-1','0','180','0','1'),
('65756','181123','533','3317.97','-3254.35','293.346','-1.5708','0','0','-0.707107','0.707107','180','0','1'),
('65757','181124','533','2750.49','-3384.36','267.341','0','0','0','0','1','180','0','0'),
('65758','181125','533','2633.84','-3336.82','267.084','0','0','0','0','1','180','0','1'),
('65759','181126','533','3202.67','-3475.94','287.034','3.14159','0','0','-1','0','180','0','0'),
('65764','181676','533','2771.37','-3681.64','273.667','-0.104719','0','0','-0.0523356','0.99863','180','0','1'),
('65765','181676','533','2753.28','-3643.09','273.618','0.436332','0','0','0.216439','0.976296','180','0','1'),
('65766','181676','533','2766.39','-3642.32','273.853','-2.77507','0','0','-0.983255','0.182237','180','0','1'),
('65767','181676','533','2779.17','-3684.18','273.668','2.67035','0','0','0.972369','0.233447','180','0','1'),
('65768','181676','533','2765.45','-3663.31','273.667','-1.3439','0','0','-0.622513','0.782609','180','0','1'),
('65769','181676','533','2746.33','-3649.14','273.621','-2.82743','0','0','-0.987688','0.156436','180','0','1'),
('65770','181676','533','2783.05','-3681.86','273.67','-1.44862','0','0','-0.662619','0.748957','180','0','1'),
('65771','181676','533','2771.77','-3652.75','273.658','-0.645772','0','0','-0.317305','0.948324','180','0','1'),
('65772','181676','533','2776.29','-3642.56','273.965','0.017452','0','0','0.00872589','0.999962','180','0','1'),
('65773','181676','533','2746.2','-3658.67','273.619','3.00195','0','0','0.997563','0.0697646','180','0','1'),
('65774','181676','533','2771.85','-3665.62','273.667','3.10665','0','0','0.999847','0.0174704','180','0','1'),
('65775','181676','533','2761.93','-3648.03','273.626','-0.366518','0','0','-0.182235','0.983255','180','0','1'),
('65776','181676','533','2771.63','-3642.94','274.379','-0.733038','0','0','-0.358368','0.93358','180','0','1'),
('65777','181676','533','2762.27','-3672.94','273.667','-2.82743','0','0','-0.987688','0.156436','180','0','1'),
('65778','181676','533','2752.57','-3655.19','273.626','1.46608','0','0','0.669132','0.743144','180','0','1'),
('65779','181676','533','2782.95','-3641.68','273.594','-0.872664','0','0','-0.422618','0.906308','180','0','1'),
('65780','181676','533','2759.67','-3641.1','273.591','-0.645772','0','0','-0.317305','0.948324','180','0','1'),
('65781','181676','533','2752.82','-3666.02','273.654','2.58308','0','0','0.961261','0.275641','180','0','1'),
('65782','181677','533','2735.92','-3697.26','273.65','0.523598','0','0','0.258819','0.965926','180','0','1'),
('65783','181677','533','2778.21','-3694.98','273.638','0.663223','0','0','0.325567','0.945519','180','0','1'),
('65784','181677','533','2747.86','-3676.92','273.662','0.296705','0','0','0.147809','0.989016','180','0','1'),
('65785','181677','533','2745.5','-3666.69','273.639','-1.55334','0','0','-0.700908','0.713252','180','0','1'),
('65786','181677','533','2755.71','-3682.96','273.666','-1.27409','0','0','-0.594823','0.803857','180','0','1'),
('65787','181677','533','2768.83','-3701.38','273.665','1.51844','0','0','0.688356','0.725373','180','0','1'),
('65788','181677','533','2747.2','-3693.01','273.666','-1.85005','0','0','-0.798636','0.601815','180','0','1'),
('65789','181677','533','2734.93','-3688.94','273.628','-0.645772','0','0','-0.317305','0.948324','180','0','1'),
('65790','181677','533','2766.62','-3687.92','273.664','-0.436332','0','0','-0.216439','0.976296','180','0','1'),
('65791','181677','533','2729.2','-3673.43','273.621','-0.157079','0','0','-0.0784588','0.996917','180','0','1'),
('65792','181677','533','2729.52','-3697.78','273.625','0.104719','0','0','0.0523356','0.99863','180','0','1'),
('65793','181677','533','2729.02','-3684.86','274.373','-0.034906','0','0','-0.0174521','0.999848','180','0','1'),
('65794','181677','533','2734','-3663.36','273.621','-1.91986','0','0','-0.819151','0.573577','180','0','1'),
('65795','181677','533','2740.54','-3681.25','273.644','1.81514','0','0','0.78801','0.615662','180','0','1'),
('65796','181677','533','2761.62','-3693.18','273.664','2.60053','0','0','0.963629','0.267244','180','0','1'),
('65797','181678','533','2807.49','-3668.25','273.644','-1.55334','0','0','-0.700908','0.713252','180','0','1'),
('65798','181678','533','2819.54','-3677.43','273.638','1.51844','0','0','0.688356','0.725373','180','0','1'),
('65799','181678','533','2808.35','-3685.41','273.645','-1.27409','0','0','-0.594823','0.803857','180','0','1'),
('65800','181678','533','2802.32','-3659.69','273.626','1.46608','0','0','0.669132','0.743144','180','0','1'),
('65801','181678','533','2795.44','-3687.74','273.622','-0.506145','0','0','-0.25038','0.968148','180','0','1'),
('65802','181678','533','2821.09','-3691.97','275.804','2.79252','0','0','0.984807','0.173652','180','0','1'),
('65803','181678','533','2818.81','-3672.17','273.629','-1.3439','0','0','-0.622513','0.782609','180','0','1'),
('65804','181678','533','2787.77','-3674.88','273.668','0.296705','0','0','0.147809','0.989016','180','0','1'),
('65805','181678','533','2793.97','-3656.83','273.637','0.663223','0','0','0.325567','0.945519','180','0','1'),
('65806','181678','533','2789.24','-3668.48','273.669','-0.366518','0','0','-0.182235','0.983255','180','0','1'),
('65807','181678','533','2793','-3646.92','273.62','-0.95993','0','0','-0.461748','0.887011','180','0','1'),
('65808','181678','533','2813.31','-3699.76','273.621','-1.85005','0','0','-0.798636','0.601815','180','0','1'),
('65809','181678','533','2817.4','-3684.56','273.623','-0.820303','0','0','-0.398748','0.91706','180','0','1'),
('65810','181678','533','2786.82','-3647.31','273.635','-0.436332','0','0','-0.216439','0.976296','180','0','1'),
('65811','181678','533','2817.31','-3687.08','273.621','2.60053','0','0','0.963629','0.267244','180','0','1'),
('65812','181678','533','2803.58','-3675.67','273.666','-2.80997','0','0','-0.986285','0.165053','180','0','1'),
('65813','181678','533','2815.57','-3697.73','273.621','0.994837','0','0','0.477158','0.878817','180','0','1'),
('65814','181678','533','2811.57','-3663.93','273.623','3.00195','0','0','0.997563','0.0697646','180','0','1'),
('65815','181678','533','2796.98','-3671.73','273.669','2.58308','0','0','0.961261','0.275641','180','0','1'),
('65816','181168','533','2924.01','-3286.47','305.366','-2.35619','0','0','-0.92388','0.382683','180','0','1'),
('65817','181169','533','2907.85','-3270.72','305.366','-2.35619','0','0','-0.92388','0.382683','180','0','1'),
('65818','181170','533','2692.07','-3360.78','267.504','3.14159','0','0','-1','0','180','0','0'),
('65819','181695','533','2749.96','-3724.48','273.623','0.645772','0','0','0.317305','0.948324','180','0','1'),
('65820','181695','533','2745.57','-3720.84','273.654','1.8675','0','0','0.803856','0.594824','180','0','1'),
('65821','181695','533','2771.05','-3717.31','273.67','-0.366518','0','0','-0.182235','0.983255','180','0','1'),
('65822','181695','533','2757.5','-3708.95','273.668','-0.95993','0','0','-0.461748','0.887011','180','0','1'),
('65823','181695','533','2752.93','-3699.58','273.667','0.436332','0','0','0.216439','0.976296','180','0','1'),
('65824','181695','533','2766.44','-3708.41','273.667','-1.27409','0','0','-0.594823','0.803857','180','0','1'),
('65825','181695','533','2760.5','-3732.28','273.632','-1.18682','0','0','-0.559191','0.829039','180','0','1'),
('65826','181695','533','2791.41','-3726.31','273.622','1.48353','0','0','0.67559','0.737277','180','0','1'),
('65827','181695','533','2787.4','-3731.16','273.616','-1.09956','0','0','-0.5225','0.852639','180','0','1'),
('65828','181695','533','2779.75','-3728.21','273.644','2.67035','0','0','0.972369','0.233447','180','0','1'),
('65829','181695','533','2771.59','-3736.93','273.618','1.48353','0','0','0.67559','0.737277','180','0','1'),
('65830','181695','533','2745.73','-3711.43','273.621','0.767944','0','0','0.374606','0.927184','180','0','1'),
('65831','181695','533','2759.15','-3718.01','273.669','-2.00713','0','0','-0.843392','0.537299','180','0','1'),
('65832','181695','533','2759.64','-3724.62','273.66','2.1293','0','0','0.874619','0.48481','180','0','1'),
('65833','181695','533','2771.05','-3727.31','273.67','-0.436332','0','0','-0.216439','0.976296','180','0','1'),
('65834','181695','533','2737.57','-3710.51','273.624','2.96704','0','0','0.996194','0.0871655','180','0','1'),
('65835','181695','533','2781.85','-3735.08','273.62','1.51844','0','0','0.688356','0.725373','180','0','1'),
('65836','181695','533','2731.62','-3706.18','273.623','-2.77507','0','0','-0.983255','0.182237','180','0','1'),
('65837','181695','533','2755.07','-3728.92','273.626','0.523598','0','0','0.258819','0.965926','180','0','1'),
('65838','181695','533','2781.35','-3720.31','273.64','2.67035','0','0','0.972369','0.233447','180','0','1'),
('65839','181195','533','3143.96','-3572.22','287.097','2.35619','0','0','0.923879','0.382686','180','0','1'),
('65840','181197','533','3452.74','-3863.67','308.341','3.14159','0','0','-1','0','180','0','0'),
('65841','181198','533','2963.16','-3476.83','297.596','-2.35619','0','0','-0.92388','0.382683','180','0','0'),
('65842','181199','533','2847.43','-3489.47','297.839','3.14159','0','0','-1','0','180','0','0'),
('65843','181200','533','2737.66','-3489.72','262.095','3.14159','0','0','-1','0','180','0','0'),
('65844','181201','533','2684.28','-3559.36','261.913','1.5708','0','0','0.707107','0.707107','180','0','1'),
('65845','181202','533','2822.93','-3685.3','273.541','3.14159','0','0','-1','0','180','0','1'),
('65846','181203','533','2771.5','-3737.34','273.596','-1.5708','0','0','-0.707107','0.707107','180','0','1'),
('65847','181209','533','3427.56','-3846.01','310.369','0.001245','0','0','0.000622749','1','180','0','1'),
('65848','181210','533','2991.71','-3420.18','300.972','3.14159','0','0','-1','0','180','0','1'),
('65849','181211','533','2991.58','-3448.51','300.972','3.14159','0','0','-1','0','180','0','1'),
('65850','181212','533','3020.08','-3448.65','300.972','3.14159','0','0','-1','0','180','0','1'),
('65851','181213','533','3019.93','-3420.31','300.972','3.14159','0','0','-1','0','180','0','1'),
('65853','181229','533','3005.78','-3434.36','300.328','3.14159','0','0','1','0.00000126759','180','0','1'),
('65854','181230','533','2493.02','-2921.78','241.193','3.14159','0','0','-1','0','180','0','1'),
('65855','181231','533','2909','-4025.02','273.475','3.14159','0','0','-1','0','180','0','1'),
('65856','181232','533','3539.02','-2936.82','302.476','3.14159','0','0','-1','0','180','0','1'),
('65857','181233','533','3465.16','-3940.45','308.788','0.441179','-0.305481','0.637715','0.305481','0.637716','180','0','1'),
('65858','181234','533','2904.86','-3286.11','298.527','-0.785397','0','0','-0.382683','0.92388','180','0','1'),
('65859','181235','533','3318.65','-3695.85','259.094','3.14159','0','0','-1','0','180','0','0'),
('65860','181496','533','2909.69','-3818.45','273.553','3.14159','0','0','-1','0','180','0','0'),
('65861','181240','533','2908.99','-4044.1','273.726','-1.5708','0','0','-0.707107','0.707107','180','0','1'),
('65862','181241','533','2909.69','-3947.28','273.553','3.14159','0','0','-1','0','180','0','0'),
('65863','181242','533','2859.62','-3997.85','273.297','1.5708','0','0','0.707107','0.707107','180','0','1'),
('65864','181243','533','2959.33','-3997.85','273.297','1.5708','0','0','0.707107','0.707107','180','0','1'),
('21641','181366','533','2511.51','-2943.93','245.552','5.48707','0','0','0.387629','-0.921816','-604800','100','1'),
('67868','181225','533','3536.81','-5158.41','142.862','-1.77151','0','0','-0.774392','0.632706','604800','0','1'),
('82247','181575','533','3465.18','-3940.4','308.79','2.44346','0.241845','0.664462','0.664463','0.241847','180','255','1'),
('82248','181576','533','3539.02','-2936.82','302.476','3.14159','0','0','1','0.00000126759','180','255','1'),
('82249','181578','533','2493.02','-2921.78','241.193','3.14159','0','0','1','0.00000126759','180','255','1'),
('82250','181402','533','3732.66','-5026.17','152.72','-1.77151','0','0','-0.774393','0.632705','180','255','1'),
('82251','181403','533','3784.16','-5062.08','152.57','-2.55691','0','0','-0.957571','0.288197','180','255','1'),
('82252','181404','533','3760.24','-5175.26','152.571','2.10995','0','0','0.869888','0.493249','180','255','1'),
('82253','181405','533','3698.6','-5187.07','152.72','1.32456','0','0','0.614915','0.788593','180','255','1'),
('82254','181477','533','3527.94','-2952.26','318.898','3.14159','0','0','-1','0','180','255','0'),
('82255','181478','533','3487.32','-2911.38','318.898','3.14159','0','0','-1','0','180','255','0'),
('82256','181228','533','3635.36','-5090.29','142.983','-1.77151','0','0','-0.774393','0.632705','180','255','0');

-- missing creature spawns (naxxramas)
DELETE FROM `creature` WHERE id=4075 AND map=533;

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('128354','4075','533','0','0','2862.24','-3221.67','274.281','6.15288','3600','5','0','120','0','0','1'),
('128355','4075','533','0','0','2850.01','-3069.62','273.745','3.45795','3600','5','0','120','0','0','1'),
('128356','4075','533','0','0','3343.67','-3329.04','292.678','1.22173','3600','0','0','120','0','0','0'),
('128357','4075','533','0','0','2798.81','-3397.75','267.685','2.03858','3600','5','0','120','0','0','1'),
('128358','4075','533','0','0','2757.92','-3245.05','267.717','4.34936','3600','5','0','120','0','0','1'),
('128359','4075','533','0','0','2779.72','-3402.66','267.686','0.077889','3600','5','0','120','0','0','1'),
('128360','4075','533','0','0','2854.37','-3252.37','298.109','3.09705','3600','5','0','120','0','0','1'),
('128361','4075','533','0','0','2821.19','-3210.31','298.291','0.612072','3600','5','0','120','0','0','1'),
('128362','4075','533','0','0','2980.29','-3198.71','294.146','3.56047','3600','0','0','120','0','0','0'),
('128363','4075','533','0','0','2861.21','-3468.68','297.871','4.17484','3600','5','0','120','0','0','1'),
('128364','4075','533','0','0','2683.21','-3254.64','267.723','1.51289','3600','5','0','120','0','0','1'),
('128365','4075','533','0','0','3254.77','-3263.22','292.678','2.87979','3600','0','0','120','0','0','0'),
('128366','4075','533','0','0','2628.21','-3538.8','261.853','2.68703','3600','5','0','120','0','0','1'),
('128367','4075','533','0','0','2790.74','-3154.29','298.148','6.07273','3600','5','0','120','0','0','1'),
('128368','4075','533','0','0','2962.72','-3356.16','298.127','2.36018','3600','5','0','120','0','0','1'),
('128369','4075','533','0','0','2791.8','-3207.55','273.819','0.161498','3600','5','0','120','0','0','1'),
('128370','4075','533','0','0','2913.79','-3370.73','298.139','2.61752','3600','5','0','120','0','0','1'),
('128371','4075','533','0','0','2931.33','-3221.42','273.787','4.48913','3600','5','0','120','0','0','1'),
('128372','4075','533','0','0','2745.92','-3658.74','285.253','5.25344','3600','5','0','120','0','0','1'),
('128373','4075','533','0','0','2871.23','-3364.54','298.146','1.52012','3600','5','0','120','0','0','1'),
('128374','4075','533','0','0','2799.5','-3301.39','267.685','2.71451','3600','5','0','120','0','0','1'),
('128375','4075','533','0','0','2892.38','-3469.16','297.863','3.14837','3600','5','0','120','0','0','1'),
('128376','4075','533','0','0','2985.75','-3243.94','294.146','3.56047','3600','0','0','120','0','0','0'),
('128377','4075','533','0','0','3195.98','-3308.35','292.678','6.23082','3600','0','0','120','0','0','0'),
('128378','4075','533','0','0','2690.28','-3260.72','267.738','0.596745','3600','5','0','120','0','0','1'),
('128379','4075','533','0','0','2753.39','-3217.74','267.569','2.01382','3600','5','0','120','0','0','1'),
('128380','4075','533','0','0','2774.83','-3180.47','273.782','1.09138','3600','5','0','120','0','0','1'),
('128381','4075','533','0','0','3343.55','-3292.74','292.678','3.71755','3600','0','0','120','0','0','0'),
('128382','4075','533','0','0','3279.03','-3262.9','292.678','3.57792','3600','0','0','120','0','0','0'),
('128383','4075','533','0','0','2865.47','-3217.4','274.658','0.301265','3600','5','0','120','0','0','1'),
('128384','4075','533','0','0','2705.53','-3077.45','267.685','6.06152','3600','5','0','120','0','0','1'),
('128385','4075','533','0','0','2659.89','-3220.11','267.679','5.28339','3600','5','0','120','0','0','1'),
('128386','4075','533','0','0','2747.18','-3153.39','267.717','2.46168','3600','5','0','120','0','0','1'),
('128387','4075','533','0','0','2828.36','-3279.32','298.099','0.719604','3600','5','0','120','0','0','1'),
('128388','4075','533','0','0','2726.03','-3545.26','261.911','1.31996','3600','5','0','120','0','0','1'),
('128389','4075','533','0','0','2948.95','-3163.86','274.504','0.000783','3600','5','0','120','0','0','1'),
('128390','4075','533','0','0','2858.15','-3534.33','297.885','1.77236','3600','5','0','120','0','0','1'),
('128391','4075','533','0','0','2798.77','-3391.96','267.685','2.36412','3600','5','0','120','0','0','1'),
('128392','4075','533','0','0','2776.23','-3326.02','267.684','0.794321','3600','5','0','120','0','0','1'),
('128393','4075','533','0','0','2939.08','-3489.07','297.823','2.24602','3600','5','0','120','0','0','1'),
('128394','4075','533','0','0','3197.27','-3270.23','292.678','4.2237','3600','0','0','120','0','0','0'),
('128395','4075','533','0','0','2773.42','-3160.4','298.147','4.59206','3600','5','0','120','0','0','1'),
('128396','4075','533','0','0','3201.55','-3356.08','292.678','5.42797','3600','0','0','120','0','0','0'),
('128397','4075','533','0','0','3201.14','-3368.57','292.678','1.18682','3600','0','0','120','0','0','0'),
('128398','4075','533','0','0','3201.36','-3364.57','292.678','6.21337','3600','0','0','120','0','0','0'),
('128399','4075','533','0','0','3196.74','-3356.55','292.678','0.244346','3600','0','0','120','0','0','0'),
('128400','4075','533','0','0','3190.56','-3348.45','292.678','5.41052','3600','0','0','120','0','0','0'),
('128401','4075','533','0','0','3194.27','-3351.64','292.678','0.488692','3600','0','0','120','0','0','0'),
('128402','4075','533','0','0','3204.66','-3360.4','292.678','6.0912','3600','0','0','120','0','0','0'),
('128403','4075','533','0','0','3192.33','-3357.58','292.678','2.63545','3600','0','0','120','0','0','0'),
('128404','4075','533','0','0','3201.96','-3374.83','292.595','4.78349','3600','5','0','120','0','0','1'),
('128405','4075','533','0','0','3190.75','-3375.17','292.678','2.44346','3600','0','0','120','0','0','0'),
('128406','4075','533','0','0','2745.8','-3712.84','285.262','5.70723','3600','5','0','120','0','0','1'),
('128407','4075','533','0','0','2635.35','-3522.12','261.93','3.63578','3600','5','0','120','0','0','1'),
('128408','4075','533','0','0','2916.49','-3150.86','274.268','3.08401','3600','5','0','120','0','0','1'),
('128409','4075','533','0','0','3347.26','-3319.77','292.678','3.15905','3600','0','0','120','0','0','0'),
('128410','4075','533','0','0','2797.65','-3307.94','267.685','3.05083','3600','5','0','120','0','0','1'),
('128411','4075','533','0','0','2933.28','-3531.7','298.418','4.11675','3600','5','0','120','0','0','1'),
('128412','4075','533','0','0','2797.56','-3658.15','285.262','2.32129','3600','5','0','120','0','0','1'),
('128413','4075','533','0','0','2752.13','-3228.54','267.567','1.37531','3600','5','0','120','0','0','1'),
('128414','4075','533','0','0','2939.99','-3209.17','273.787','2.50452','3600','5','0','120','0','0','1'),
('128415','4075','533','0','0','3081.84','-3062.09','294.151','5.044','3600','0','0','120','0','0','0'),
('128416','4075','533','0','0','3084.76','-3063.93','294.154','3.59538','3600','0','0','120','0','0','0'),
('128417','4075','533','0','0','3087.03','-3062.32','294.153','2.37365','3600','0','0','120','0','0','0'),
('128418','4075','533','0','0','3091.66','-3065.17','294.158','3.78736','3600','0','0','120','0','0','0'),
('128419','4075','533','0','0','3096.33','-3067.03','294.161','3.78736','3600','0','0','120','0','0','0'),
('128420','4075','533','0','0','3097.6','-3063.46','294.158','3.83972','3600','0','0','120','0','0','0'),
('128421','4075','533','0','0','3089.47','-3062.15','294.153','6.0912','3600','0','0','120','0','0','0'),
('128422','4075','533','0','0','3085.19','-3058.58','294.148','0.20944','3600','0','0','120','0','0','0'),
('128423','4075','533','0','0','3095.58','-3059.41','294.152','1.44862','3600','0','0','120','0','0','0'),
('128424','4075','533','0','0','3088.22','-3065.31','294.157','2.30383','3600','0','0','120','0','0','0'),
('128425','4075','533','0','0','2940.28','-3297.49','298.229','5.60251','3600','0','0','120','0','0','0'),
('128426','4075','533','0','0','3023.22','-3105','294.147','2.80998','3600','0','0','120','0','0','0'),
('128427','4075','533','0','0','3027.07','-3101.84','294.151','4.85202','3600','0','0','120','0','0','0'),
('128428','4075','533','0','0','3024.52','-3102.71','294.148','5.46288','3600','0','0','120','0','0','0'),
('128429','4075','533','0','0','3015.25','-3110.68','294.155','3.71755','3600','0','0','120','0','0','0'),
('128430','4075','533','0','0','3026.8','-3095.25','294.152','0.610865','3600','0','0','120','0','0','0'),
('128431','4075','533','0','0','3019.95','-3102.67','294.147','0.20944','3600','0','0','120','0','0','0'),
('128432','4075','533','0','0','3027.04','-3098.89','294.153','3.31613','3600','0','0','120','0','0','0'),
('128433','4075','533','0','0','3028.62','-3097.12','294.154','4.66003','3600','0','0','120','0','0','0'),
('128434','4075','533','0','0','3020.6','-3108.74','294.151','4.74729','3600','0','0','120','0','0','0'),
('128435','4075','533','0','0','3021.4','-3102.96','294.146','3.85718','3600','0','0','120','0','0','0'),
('128436','4075','533','0','0','3009.89','-3255.94','294.146','4.11898','3600','0','0','120','0','0','0'),
('128437','4075','533','0','0','2892.94','-3158.46','273.787','4.79605','3600','5','0','120','0','0','1'),
('128438','4075','533','0','0','2903.89','-3218.66','273.787','2.37032','3600','5','0','120','0','0','1'),
('128439','4075','533','0','0','2821.79','-3223.4','298.32','3.69071','3600','5','0','120','0','0','1'),
('128440','4075','533','0','0','2852.78','-3219.24','273.787','5.08628','3600','5','0','120','0','0','1'),
('128441','4075','533','0','0','2659.73','-3212.53','267.664','5.31375','3600','5','0','120','0','0','1'),
('128442','4075','533','0','0','2699.33','-3085.07','267.685','0.023725','3600','5','0','120','0','0','1'),
('128443','4075','533','0','0','2794.68','-3403.76','267.686','2.68793','3600','5','0','120','0','0','1'),
('128444','4075','533','0','0','2752.63','-3207.8','267.566','2.53656','3600','5','0','120','0','0','1'),
('128445','4075','533','0','0','2838.21','-3066.32','273.798','3.34716','3600','5','0','120','0','0','1'),
('128446','4075','533','0','0','2872.69','-3151.1','273.787','2.90263','3600','5','0','120','0','0','1'),
('128447','4075','533','0','0','2776.98','-3334.2','267.684','1.46036','3600','5','0','120','0','0','1'),
('128448','4075','533','0','0','2943.52','-3160.81','273.787','3.86506','3600','5','0','120','0','0','1'),
('128449','4075','533','0','0','2750.52','-3160.27','267.724','2.62969','3600','5','0','120','0','0','1'),
('128450','4075','533','0','0','2952.48','-3505.97','298.279','3.96102','3600','5','0','120','0','0','1'),
('128451','4075','533','0','0','2891.58','-3558.73','297.862','2.78446','3600','5','0','120','0','0','1'),
('128452','4075','533','0','0','2860.95','-3077.39','273.736','4.0009','3600','5','0','120','0','0','1'),
('128453','4075','533','0','0','2777.25','-3222.09','285.551','0.214748','3600','5','0','120','0','0','1');

-- Quest 8519
UPDATE `gameobject_template` SET TYPE=0 WHERE entry IN (176147,176148);

DELETE FROM `dbscripts_on_event` WHERE id IN (9425,9426,9427);
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('9425','2','12','66334','76','0','0','0','0','0','0','0','0','0','0','0','Close the AQ gate'),
('9426','2','12','66335','72','0','0','0','0','0','0','0','0','0','0','0','Close the AQ roots'),
('9427','2','12','66336','60','0','0','0','0','0','0','0','0','0','0','0','Close the AQ runes');

-- Quest 970
UPDATE `creature_loot_template` SET ChanceOrQuestChance=-100 WHERE entry=3725 AND item=5366;
UPDATE `creature_loot_template` SET ChanceOrQuestChance=-100 WHERE entry=3727 AND item=5366;
UPDATE `creature_loot_template` SET ChanceOrQuestChance=-100 WHERE entry=3728 AND item=5366;
UPDATE `creature_loot_template` SET ChanceOrQuestChance=-100 WHERE entry=3730 AND item=5366;
UPDATE `creature_loot_template` SET ChanceOrQuestChance=-100 WHERE entry=3879 AND item=5366;

-- Cleanup
UPDATE creature SET
curhealth = (SELECT FLOOR(RAND(1)*(maxhealth - minhealth) + minhealth) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curhealth < (SELECT minhealth FROM creature_template WHERE creature.id = creature_template.entry);

UPDATE creature SET
curmana = (SELECT FLOOR(RAND(1)*(maxmana - minmana) + minmana) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curmana < (SELECT minmana FROM creature_template WHERE creature.id = creature_template.entry);

UPDATE creature SET MovementType = 1 WHERE spawndist != 0 AND MovementType = 0;
UPDATE creature SET MovementType = 0 WHERE spawndist = 0 AND MovementType != 2;
UPDATE creature SET MovementType = 2 WHERE guid IN (SELECT DISTINCT id FROM creature_movement);
DELETE FROM creature_movement WHERE id NOT IN (SELECT guid FROM creature);

DELETE FROM creature_addon WHERE guid NOT IN (SELECT guid FROM creature);

--UPDATE Database Version
UPDATE db_version set version = 'ZeroDatabase 2.0.2 for MaNGOSZero zXXXX+ and ScriptDev0 zXXXX+';
