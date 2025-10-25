/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : electric_scooter

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:27:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Batteries
-- ----------------------------
DROP TABLE IF EXISTS `Batteries`;
CREATE TABLE `Batteries` (
  `Battery_ID` int NOT NULL COMMENT '电池唯一标识',
  `Bike_ID` int DEFAULT NULL COMMENT '电瓶车ID',
  `Type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '电池类型（铅酸、锂电池、镍氢等）',
  `Voltage` int DEFAULT NULL COMMENT '电压 (V)',
  `Capacity` int DEFAULT NULL COMMENT '容量 (Ah)',
  `Distance` int DEFAULT NULL COMMENT '续航里程 (km)',
  PRIMARY KEY (`Battery_ID`) USING BTREE,
  KEY `BikeID1` (`Bike_ID`) USING BTREE,
  CONSTRAINT `BikeID1` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Batteries
-- ----------------------------
BEGIN;
INSERT INTO `Batteries` VALUES (1, 1, '锂电池', 48, 20, 60);
INSERT INTO `Batteries` VALUES (2, 2, '铅酸电池', 48, 12, 36);
INSERT INTO `Batteries` VALUES (3, 3, '锂电池', 60, 20, 70);
INSERT INTO `Batteries` VALUES (4, 4, '铅酸电池', 48, 12, 36);
INSERT INTO `Batteries` VALUES (5, 5, '锂电池', 72, 32, 100);
INSERT INTO `Batteries` VALUES (6, 6, '铅酸电池', 48, 12, 36);
INSERT INTO `Batteries` VALUES (7, 7, '锂电池', 48, 20, 60);
INSERT INTO `Batteries` VALUES (8, 8, '铅酸电池', 48, 12, 36);
INSERT INTO `Batteries` VALUES (9, 9, '锂电池', 60, 20, 70);
INSERT INTO `Batteries` VALUES (10, 10, '锂电池', 72, 32, 100);
INSERT INTO `Batteries` VALUES (11, 11, '铅酸电池', 48, 12, 36);
INSERT INTO `Batteries` VALUES (12, 12, '锂电池', 48, 20, 60);
INSERT INTO `Batteries` VALUES (14, 14, '锂电池', 60, 20, 70);
INSERT INTO `Batteries` VALUES (15, 15, '铅酸电池', 48, 12, 36);
INSERT INTO `Batteries` VALUES (16, 20, 'Lithium-ion', 48, 20, 60);
INSERT INTO `Batteries` VALUES (17, 17, 'Lithium-ion', 36, 15, 40);
INSERT INTO `Batteries` VALUES (1001, 1, '锂电池', 48, 60, 120);
INSERT INTO `Batteries` VALUES (2001, 18, '锂电池', 72, 100, 150);
INSERT INTO `Batteries` VALUES (2002, 18, '锂电池', 72, 95, 140);
INSERT INTO `Batteries` VALUES (2003, 19, '锂电池', 48, 120, 180);
INSERT INTO `Batteries` VALUES (2004, 19, '铅酸电池', 72, 110, 130);
INSERT INTO `Batteries` VALUES (3001, 1001, '实验型锂电池', 1000, 1000, NULL);
INSERT INTO `Batteries` VALUES (6001, 5001, '实验型超级电池', 1000, 1000, NULL);
INSERT INTO `Batteries` VALUES (6002, 5002, '锂电池', 48, 60, 120);
COMMIT;

-- ----------------------------
-- Table structure for BodyDimensions
-- ----------------------------
DROP TABLE IF EXISTS `BodyDimensions`;
CREATE TABLE `BodyDimensions` (
  `Dimension_ID` int NOT NULL COMMENT '尺寸唯一标识',
  `Bike_ID` int DEFAULT NULL COMMENT '电瓶车ID',
  `Length` int DEFAULT NULL COMMENT '长度 (mm)',
  `Width` int DEFAULT NULL COMMENT '宽度\n',
  `Height` int DEFAULT NULL COMMENT '高度 (mm)',
  `Wheel_Size` int DEFAULT NULL COMMENT '车轮直径 (寸)',
  PRIMARY KEY (`Dimension_ID`) USING BTREE,
  KEY `BikeID3` (`Bike_ID`) USING BTREE,
  CONSTRAINT `BikeID3` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of BodyDimensions
-- ----------------------------
BEGIN;
INSERT INTO `BodyDimensions` VALUES (1, 1, 1700, 650, 1100, 20);
INSERT INTO `BodyDimensions` VALUES (2, 2, 1650, 630, 1080, 20);
INSERT INTO `BodyDimensions` VALUES (3, 3, 1750, 670, 1120, 22);
INSERT INTO `BodyDimensions` VALUES (4, 4, 1600, 620, 1050, 20);
INSERT INTO `BodyDimensions` VALUES (5, 5, 1800, 700, 1150, 26);
INSERT INTO `BodyDimensions` VALUES (6, 6, 1620, 630, 1060, 20);
INSERT INTO `BodyDimensions` VALUES (7, 7, 1680, 640, 1090, 20);
INSERT INTO `BodyDimensions` VALUES (8, 8, 1660, 635, 1085, 20);
INSERT INTO `BodyDimensions` VALUES (9, 9, 1720, 660, 1110, 22);
INSERT INTO `BodyDimensions` VALUES (10, 10, 1820, 710, 1160, 26);
INSERT INTO `BodyDimensions` VALUES (11, 11, 1630, 625, 1055, 20);
INSERT INTO `BodyDimensions` VALUES (12, 12, 1690, 645, 1100, 20);
INSERT INTO `BodyDimensions` VALUES (13, 13, 5000, 2000, 2500, 30);
INSERT INTO `BodyDimensions` VALUES (14, 14, 1730, 665, 1125, 22);
INSERT INTO `BodyDimensions` VALUES (15, 15, 2000, 750, 1100, 16);
INSERT INTO `BodyDimensions` VALUES (17, 17, 1200, 400, 1100, 12);
INSERT INTO `BodyDimensions` VALUES (501, 101, 1800, 700, 1200, 14);
INSERT INTO `BodyDimensions` VALUES (502, 101, 1750, 650, 1100, 12);
INSERT INTO `BodyDimensions` VALUES (503, 102, 1800, 700, 1200, 16);
INSERT INTO `BodyDimensions` VALUES (504, 102, 1800, 700, 1200, 14);
COMMIT;

-- ----------------------------
-- Table structure for BrakeSystems
-- ----------------------------
DROP TABLE IF EXISTS `BrakeSystems`;
CREATE TABLE `BrakeSystems` (
  `Brake_ID` int NOT NULL COMMENT '制动系统唯一标识',
  `Bike_ID` int DEFAULT NULL COMMENT '电瓶车ID',
  `Type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '制动类型（鼓式、碟式）',
  `Front_Brake` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '前制动配置',
  `Rear_Brake` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '后制动配置',
  PRIMARY KEY (`Brake_ID`) USING BTREE,
  KEY `BikeID4` (`Bike_ID`) USING BTREE,
  CONSTRAINT `BikeID4` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of BrakeSystems
-- ----------------------------
BEGIN;
INSERT INTO `BrakeSystems` VALUES (1, 1, '碟刹', '碟刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (2, 2, '鼓刹', '鼓刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (3, 3, '碟刹', '碟刹', '碟刹');
INSERT INTO `BrakeSystems` VALUES (4, 4, '鼓刹', '鼓刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (5, 5, '碟刹', '碟刹', '碟刹');
INSERT INTO `BrakeSystems` VALUES (6, 6, '鼓刹', '鼓刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (7, 7, '碟刹', '碟刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (8, 8, '鼓刹', '鼓刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (9, 9, '碟刹', '碟刹', '碟刹');
INSERT INTO `BrakeSystems` VALUES (10, 10, '碟刹', '碟刹', '碟刹');
INSERT INTO `BrakeSystems` VALUES (11, 11, '鼓刹', '鼓刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (12, 12, '碟刹', '碟刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (13, 13, '碟刹', '碟刹', '鼓刹');
INSERT INTO `BrakeSystems` VALUES (14, 14, '碟刹', '碟刹', '碟刹');
INSERT INTO `BrakeSystems` VALUES (15, 15, '鼓刹', '鼓刹', '鼓刹');
COMMIT;

-- ----------------------------
-- Table structure for ChargingRecords
-- ----------------------------
DROP TABLE IF EXISTS `ChargingRecords`;
CREATE TABLE `ChargingRecords` (
  `Record_ID` int NOT NULL COMMENT '记录唯一标识',
  `User_ID` int DEFAULT NULL,
  `Bike_ID` int DEFAULT NULL,
  `Station_ID` int DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL COMMENT '充电开始时间',
  `EndTime` datetime DEFAULT NULL COMMENT '充电结束时间',
  `Energy_Used` double DEFAULT NULL COMMENT '使用的电量 (kWh)',
  `Cost` double DEFAULT NULL COMMENT '充电费用',
  PRIMARY KEY (`Record_ID`) USING BTREE,
  KEY `UserID1` (`User_ID`) USING BTREE,
  KEY `BikeID5` (`Bike_ID`) USING BTREE,
  KEY `StationID1` (`Station_ID`) USING BTREE,
  CONSTRAINT `BikeID5` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `StationID1` FOREIGN KEY (`Station_ID`) REFERENCES `ChargingStations` (`Station_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UserID1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ChargingRecords
-- ----------------------------
BEGIN;
INSERT INTO `ChargingRecords` VALUES (1, 1, 1, 1, '2023-10-01 10:00:00', '2023-10-01 12:00:00', 2, 5);
INSERT INTO `ChargingRecords` VALUES (2, 2, 2, 2, '2023-10-02 11:00:00', '2023-10-02 13:00:00', 3, 6);
INSERT INTO `ChargingRecords` VALUES (3, 3, 3, 3, '2023-10-03 12:00:00', '2023-10-03 14:00:00', 2.8, 5.6);
INSERT INTO `ChargingRecords` VALUES (4, 4, 4, 4, '2023-10-04 13:00:00', '2023-10-04 15:00:00', 3.2, 6.4);
INSERT INTO `ChargingRecords` VALUES (5, 5, 5, 5, '2023-10-05 14:00:00', '2023-10-05 16:00:00', 2.7, 5.4);
INSERT INTO `ChargingRecords` VALUES (6, 6, 6, 6, '2023-10-06 15:00:00', '2023-10-06 17:00:00', 3.1, 6.2);
INSERT INTO `ChargingRecords` VALUES (7, 7, 7, 7, '2023-10-07 16:00:00', '2023-10-07 18:00:00', 2.9, 5.8);
INSERT INTO `ChargingRecords` VALUES (8, 8, 8, 8, '2023-10-08 17:00:00', '2023-10-08 19:00:00', 3.3, 6.6);
INSERT INTO `ChargingRecords` VALUES (9, 9, 9, 9, '2023-10-09 18:00:00', '2023-10-09 20:00:00', 2.6, 5.2);
INSERT INTO `ChargingRecords` VALUES (10, 10, 10, 10, '2023-10-10 19:00:00', '2023-10-10 21:00:00', 3.4, 6.8);
INSERT INTO `ChargingRecords` VALUES (11, 11, 11, 11, '2023-10-11 20:00:00', '2023-10-11 22:00:00', 2.8, 5.6);
INSERT INTO `ChargingRecords` VALUES (12, 12, 12, 12, '2023-10-12 21:00:00', '2023-10-12 23:00:00', 3, 6);
INSERT INTO `ChargingRecords` VALUES (14, 14, 14, 14, '2023-10-14 23:00:00', '2023-10-15 01:00:00', 3.1, 6.2);
INSERT INTO `ChargingRecords` VALUES (15, 15, 15, 15, '2023-10-15 09:00:00', '2023-10-15 11:00:00', 2.7, 5.4);
INSERT INTO `ChargingRecords` VALUES (16, 10, 10, 10, '2024-08-01 08:00:00', '2024-08-01 09:30:00', 5, 10);
COMMIT;

-- ----------------------------
-- Table structure for ChargingStations
-- ----------------------------
DROP TABLE IF EXISTS `ChargingStations`;
CREATE TABLE `ChargingStations` (
  `Station_ID` int NOT NULL COMMENT '充电站唯一标识',
  `Location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '位置',
  `Available_Slots` int DEFAULT NULL COMMENT '可用充电槽数量',
  PRIMARY KEY (`Station_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ChargingStations
-- ----------------------------
BEGIN;
INSERT INTO `ChargingStations` VALUES (1, '北京市朝阳区国贸大厦', 10);
INSERT INTO `ChargingStations` VALUES (2, '上海市浦东新区陆家嘴', 8);
INSERT INTO `ChargingStations` VALUES (3, '广州市天河区珠江新城', 12);
INSERT INTO `ChargingStations` VALUES (4, '深圳市南山区科技园', 15);
INSERT INTO `ChargingStations` VALUES (5, '杭州市西湖区文三路', 6);
INSERT INTO `ChargingStations` VALUES (6, '南京市鼓楼区新街口', 9);
INSERT INTO `ChargingStations` VALUES (7, '武汉市江汉区江汉路', 7);
INSERT INTO `ChargingStations` VALUES (8, '成都市武侯区天府广场', 10);
INSERT INTO `ChargingStations` VALUES (9, '重庆市渝中区解放碑', 8);
INSERT INTO `ChargingStations` VALUES (10, '西安市雁塔区大雁塔', 11);
INSERT INTO `ChargingStations` VALUES (11, '长沙市岳麓区岳麓山', 5);
INSERT INTO `ChargingStations` VALUES (12, '苏州市工业园区金鸡湖', 14);
INSERT INTO `ChargingStations` VALUES (13, '天津市和平区五大道', 7);
INSERT INTO `ChargingStations` VALUES (14, '青岛市市南区五四广场', 9);
INSERT INTO `ChargingStations` VALUES (15, '厦门市思明区鼓浪屿', 6);
COMMIT;

-- ----------------------------
-- Table structure for ElectricBikes
-- ----------------------------
DROP TABLE IF EXISTS `ElectricBikes`;
CREATE TABLE `ElectricBikes` (
  `Bike_ID` int NOT NULL COMMENT '电瓶车唯一标识',
  `Model` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '型号',
  `Manufacturer` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '制造商\n',
  `Price` double DEFAULT NULL COMMENT '价格',
  `Weight` double DEFAULT NULL COMMENT '重量 (kg)',
  PRIMARY KEY (`Bike_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ElectricBikes
-- ----------------------------
BEGIN;
INSERT INTO `ElectricBikes` VALUES (1, '小牛NQi', '小牛电动', 3999, 50);
INSERT INTO `ElectricBikes` VALUES (2, '雅迪DE2', '雅迪科技', 3499, 58);
INSERT INTO `ElectricBikes` VALUES (3, '九号C80', '九号公司', 4599, 52);
INSERT INTO `ElectricBikes` VALUES (4, '爱玛极客X100', '爱玛科技', 2999, 60);
INSERT INTO `ElectricBikes` VALUES (5, '新日MIKU Super', '新日股份', 4999, 50);
INSERT INTO `ElectricBikes` VALUES (6, '台铃小金刚', '台铃集团', 2799, 62);
INSERT INTO `ElectricBikes` VALUES (7, '绿源小龟王', '绿源集团', 3299, 57);
INSERT INTO `ElectricBikes` VALUES (8, '立马闪电', '立马车业', 3699, 59);
INSERT INTO `ElectricBikes` VALUES (9, '小鸟D51', '小鸟电动车', 2899, 61);
INSERT INTO `ElectricBikes` VALUES (10, '速珂TS', '速珂智能', 5999, 48);
INSERT INTO `ElectricBikes` VALUES (11, '小刀N5', '小刀电动车', 2599, 63);
INSERT INTO `ElectricBikes` VALUES (12, '新蕾TDT', '新蕾车业', 3199, 56);
INSERT INTO `ElectricBikes` VALUES (13, '雅迪T60', '雅迪科技', 4699, 50);
INSERT INTO `ElectricBikes` VALUES (14, '欧派极光', '欧派电动车', 2799, 60.5);
INSERT INTO `ElectricBikes` VALUES (15, '宝岛战神', '宝岛车业', 2999, 59.5);
INSERT INTO `ElectricBikes` VALUES (17, 'EcoRider X1', 'GreenTech', 2500, 25);
INSERT INTO `ElectricBikes` VALUES (18, 'Urban Z300', 'GreenMotion', 4200, 28);
INSERT INTO `ElectricBikes` VALUES (19, 'Mountain Ultra', 'TrailMaster', 7200, 35.2);
INSERT INTO `ElectricBikes` VALUES (20, 'EcoRider X1', 'GreenTech', 2500, 30);
INSERT INTO `ElectricBikes` VALUES (101, 'Urban Commuter Pro', 'EcoRide', 3800, 28.5);
INSERT INTO `ElectricBikes` VALUES (102, 'Cargo Master', 'LoadRider', 4200, 35);
INSERT INTO `ElectricBikes` VALUES (1001, 'Hyper Performance X', 'FutureRide', 15000, 45.5);
INSERT INTO `ElectricBikes` VALUES (5001, 'Experimental Heavy-Duty', 'FutureTech', 25000, 1000);
INSERT INTO `ElectricBikes` VALUES (5002, 'Standard Commuter', 'EcoRide', 3500, 28);
COMMIT;

-- ----------------------------
-- Table structure for MaintenanceRecords
-- ----------------------------
DROP TABLE IF EXISTS `MaintenanceRecords`;
CREATE TABLE `MaintenanceRecords` (
  `Maintenance_ID` int NOT NULL COMMENT '维护记录唯一标识',
  `Bike_ID` int DEFAULT NULL,
  `Maintenance_Date` datetime DEFAULT NULL COMMENT '维护日期',
  `Cost` double DEFAULT NULL COMMENT '维护费用',
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '维护描述',
  `Technician` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '技术人员',
  PRIMARY KEY (`Maintenance_ID`) USING BTREE,
  KEY `BikeID6` (`Bike_ID`) USING BTREE,
  CONSTRAINT `BikeID6` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of MaintenanceRecords
-- ----------------------------
BEGIN;
INSERT INTO `MaintenanceRecords` VALUES (1, 1, '2023-10-01 00:00:00', 300, '更换电池', '张师傅');
INSERT INTO `MaintenanceRecords` VALUES (2, 2, '2023-10-02 00:00:00', 150, '更换轮胎', '李师傅');
INSERT INTO `MaintenanceRecords` VALUES (3, 3, '2023-10-03 00:00:00', 200, '检查电机', '王师傅');
INSERT INTO `MaintenanceRecords` VALUES (4, 4, '2023-10-04 00:00:00', 100, '更换刹车片', '赵师傅');
INSERT INTO `MaintenanceRecords` VALUES (5, 5, '2023-10-05 00:00:00', 250, '更换控制器', '孙师傅');
INSERT INTO `MaintenanceRecords` VALUES (6, 6, '2023-10-06 00:00:00', 50, '更换车灯', '周师傅');
INSERT INTO `MaintenanceRecords` VALUES (7, 7, '2023-10-07 00:00:00', 300, '更换电池', '吴师傅');
INSERT INTO `MaintenanceRecords` VALUES (8, 8, '2023-10-08 00:00:00', 150, '更换轮胎', '郑师傅');
INSERT INTO `MaintenanceRecords` VALUES (9, 9, '2023-10-09 00:00:00', 200, '检查电机', '王师傅');
INSERT INTO `MaintenanceRecords` VALUES (10, 10, '2023-10-10 00:00:00', 100, '更换刹车片', '李师傅');
INSERT INTO `MaintenanceRecords` VALUES (11, 11, '2023-10-11 00:00:00', 250, '更换控制器', '张师傅');
INSERT INTO `MaintenanceRecords` VALUES (12, 12, '2023-10-12 00:00:00', 50, '更换车灯', '赵师傅');
INSERT INTO `MaintenanceRecords` VALUES (13, 13, '2023-10-14 00:00:00', 150, '更换轮胎', '周师傅');
INSERT INTO `MaintenanceRecords` VALUES (14, 14, '2023-10-15 00:00:00', 200, '检查电机', '吴师傅');
COMMIT;

-- ----------------------------
-- Table structure for Motors
-- ----------------------------
DROP TABLE IF EXISTS `Motors`;
CREATE TABLE `Motors` (
  `Motor_ID` int NOT NULL COMMENT '电机唯一标识',
  `Bike_ID` int DEFAULT NULL COMMENT '电瓶车ID',
  `Power` int DEFAULT NULL COMMENT '功率 (W)',
  `Type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '电机类型（有刷、无刷）',
  PRIMARY KEY (`Motor_ID`) USING BTREE,
  KEY `BikeID2` (`Bike_ID`) USING BTREE,
  CONSTRAINT `BikeID2` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Motors
-- ----------------------------
BEGIN;
INSERT INTO `Motors` VALUES (1, 1, 400, '无刷电机');
INSERT INTO `Motors` VALUES (2, 2, 350, '有刷电机');
INSERT INTO `Motors` VALUES (3, 3, 500, '无刷电机');
INSERT INTO `Motors` VALUES (4, 4, 350, '有刷电机');
INSERT INTO `Motors` VALUES (5, 5, 800, '无刷电机');
INSERT INTO `Motors` VALUES (6, 6, 350, '有刷电机');
INSERT INTO `Motors` VALUES (7, 7, 400, '无刷电机');
INSERT INTO `Motors` VALUES (8, 8, 350, '有刷电机');
INSERT INTO `Motors` VALUES (9, 9, 500, '无刷电机');
INSERT INTO `Motors` VALUES (10, 10, 800, '无刷电机');
INSERT INTO `Motors` VALUES (11, 11, 350, '有刷电机');
INSERT INTO `Motors` VALUES (12, 12, 400, '无刷电机');
INSERT INTO `Motors` VALUES (14, 14, 500, '无刷电机');
INSERT INTO `Motors` VALUES (15, 15, 350, '有刷电机');
INSERT INTO `Motors` VALUES (16, 20, 500, 'Brushless');
INSERT INTO `Motors` VALUES (17, 17, 250, 'Brushless');
INSERT INTO `Motors` VALUES (4001, 1001, 10000, '实验型无刷电机');
INSERT INTO `Motors` VALUES (7001, 5001, 10000, '实验型高功率电机');
INSERT INTO `Motors` VALUES (7002, 5002, 500, '标准无刷电机');
COMMIT;

-- ----------------------------
-- Table structure for carbon_emissions
-- ----------------------------
DROP TABLE IF EXISTS `carbon_emissions`;
CREATE TABLE `carbon_emissions` (
  `id` int NOT NULL,
  `emission_factor` decimal(10,2) DEFAULT NULL,
  `annual_emissions_tonnes` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data` (
  `device_id` int DEFAULT NULL,
  `energy_saved` decimal(10,2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for fuzzy_membership
-- ----------------------------
DROP TABLE IF EXISTS `fuzzy_membership`;
CREATE TABLE `fuzzy_membership` (
  `id` int NOT NULL,
  `variable_name` varchar(50) DEFAULT NULL,
  `membership_level` varchar(50) DEFAULT NULL,
  `threshold_value` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `User_ID` int NOT NULL COMMENT '用户唯一标识',
  `Username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `CreatedAt` datetime DEFAULT NULL COMMENT '注册时间',
  `Phone` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '电话号码',
  `Address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '地址\n',
  PRIMARY KEY (`User_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, '张三', '2023-10-01 10:00:00', '13800138001', '北京市朝阳区');
INSERT INTO `users` VALUES (2, '李四', '2023-10-02 11:00:00', '13800138002', '上海市浦东新区');
INSERT INTO `users` VALUES (3, '王五', '2023-10-03 12:00:00', '13800138003', '广州市天河区');
INSERT INTO `users` VALUES (4, '赵六', '2023-10-04 13:00:00', '13800138004', '深圳市南山区');
INSERT INTO `users` VALUES (5, '孙七', '2023-10-05 14:00:00', '13800138005', '杭州市西湖区');
INSERT INTO `users` VALUES (6, '周八', '2023-10-06 15:00:00', '13800138006', '南京市鼓楼区');
INSERT INTO `users` VALUES (7, '吴九', '2023-10-07 16:00:00', '13800138007', '武汉市江汉区');
INSERT INTO `users` VALUES (8, '郑十', '2023-10-08 17:00:00', '13800138008', '成都市武侯区');
INSERT INTO `users` VALUES (9, '王十一', '2023-10-09 18:00:00', '13800138009', '重庆市渝中区');
INSERT INTO `users` VALUES (10, '李十二', '2023-10-10 19:00:00', '13800138010', '西安市雁塔区');
INSERT INTO `users` VALUES (11, '张十三', '2023-10-11 20:00:00', '13800138011', '长沙市岳麓区');
INSERT INTO `users` VALUES (12, '刘十四', '2023-10-12 21:00:00', '13800138012', '苏州市工业园区');
INSERT INTO `users` VALUES (13, '陈十五', '2023-10-13 22:00:00', '13800138013', '天津市和平区');
INSERT INTO `users` VALUES (14, '杨十六', '2023-10-14 23:00:00', '13800138014', '青岛市市南区');
INSERT INTO `users` VALUES (15, '黄十七', '2023-10-15 09:00:00', '13800138015', '厦门市思明区');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
