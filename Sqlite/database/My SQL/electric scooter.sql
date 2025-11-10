/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : electric scooter

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 21:44:36
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
  `Type` varchar(50) DEFAULT NULL COMMENT '电池类型（铅酸、锂电池、镍氢等）',
  `Voltage` int DEFAULT NULL COMMENT '电压 (V)',
  `Capacity` int DEFAULT NULL COMMENT '容量 (Ah)',
  `Distance` int DEFAULT NULL COMMENT '续航里程 (km)',
  PRIMARY KEY (`Battery_ID`) USING BTREE,
  KEY `BikeID1` (`Bike_ID`),
  CONSTRAINT `BikeID1` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  KEY `BikeID3` (`Bike_ID`),
  CONSTRAINT `BikeID3` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for BrakeSystems
-- ----------------------------
DROP TABLE IF EXISTS `BrakeSystems`;
CREATE TABLE `BrakeSystems` (
  `Brake_ID` int NOT NULL COMMENT '制动系统唯一标识',
  `Bike_ID` int DEFAULT NULL COMMENT '电瓶车ID',
  `Type` varchar(50) DEFAULT NULL COMMENT '制动类型（鼓式、碟式）',
  `Front_Brake` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '前制动配置',
  `Rear_Brake` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '后制动配置',
  PRIMARY KEY (`Brake_ID`) USING BTREE,
  KEY `BikeID4` (`Bike_ID`),
  CONSTRAINT `BikeID4` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  KEY `UserID1` (`User_ID`),
  KEY `BikeID5` (`Bike_ID`),
  KEY `StationID1` (`Station_ID`),
  CONSTRAINT `BikeID5` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `StationID1` FOREIGN KEY (`Station_ID`) REFERENCES `ChargingStations` (`Station_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UserID1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for ChargingStations
-- ----------------------------
DROP TABLE IF EXISTS `ChargingStations`;
CREATE TABLE `ChargingStations` (
  `Station_ID` int NOT NULL COMMENT '充电站唯一标识',
  `Location` varchar(255) DEFAULT NULL COMMENT '位置',
  `Available_Slots` int DEFAULT NULL COMMENT '可用充电槽数量',
  PRIMARY KEY (`Station_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for ElectricBikes
-- ----------------------------
DROP TABLE IF EXISTS `ElectricBikes`;
CREATE TABLE `ElectricBikes` (
  `Bike_ID` int NOT NULL COMMENT '电瓶车唯一标识',
  `Model` varchar(100) DEFAULT NULL COMMENT '型号',
  `Manufacturer` varchar(100) DEFAULT NULL COMMENT '制造商\n',
  `Price` double DEFAULT NULL COMMENT '价格',
  `Weight` double DEFAULT NULL COMMENT '重量 (kg)',
  PRIMARY KEY (`Bike_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for MaintenanceRecords
-- ----------------------------
DROP TABLE IF EXISTS `MaintenanceRecords`;
CREATE TABLE `MaintenanceRecords` (
  `Maintenance_ID` int NOT NULL COMMENT '维护记录唯一标识',
  `Bike_ID` int DEFAULT NULL,
  `Maintenance_Date` datetime DEFAULT NULL COMMENT '维护日期',
  `Cost` double DEFAULT NULL COMMENT '维护费用',
  `Description` text COMMENT '维护描述',
  `Technician` varchar(100) DEFAULT NULL COMMENT '技术人员',
  PRIMARY KEY (`Maintenance_ID`) USING BTREE,
  KEY `BikeID6` (`Bike_ID`),
  CONSTRAINT `BikeID6` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for Motors
-- ----------------------------
DROP TABLE IF EXISTS `Motors`;
CREATE TABLE `Motors` (
  `Motor_ID` int NOT NULL COMMENT '电机唯一标识',
  `Bike_ID` int DEFAULT NULL COMMENT '电瓶车ID',
  `Power` int DEFAULT NULL COMMENT '功率 (W)',
  `Type` varchar(50) DEFAULT NULL COMMENT '电机类型（有刷、无刷）',
  PRIMARY KEY (`Motor_ID`) USING BTREE,
  KEY `BikeID2` (`Bike_ID`),
  CONSTRAINT `BikeID2` FOREIGN KEY (`Bike_ID`) REFERENCES `ElectricBikes` (`Bike_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `User_ID` int NOT NULL COMMENT '用户唯一标识',
  `Username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `CreatedAt` datetime DEFAULT NULL COMMENT '注册时间',
  `Phone` varchar(15) DEFAULT NULL COMMENT '电话号码',
  `Address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '地址\n',
  PRIMARY KEY (`User_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SET FOREIGN_KEY_CHECKS = 1;
