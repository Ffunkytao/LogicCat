/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : railway

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 23:05:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ConventionalTrains
-- ----------------------------
DROP TABLE IF EXISTS `ConventionalTrains`;
CREATE TABLE `ConventionalTrains` (
  `Train_ID` int NOT NULL AUTO_INCREMENT COMMENT '列车ID',
  `Train_Name` varchar(100) NOT NULL COMMENT '列车名称',
  `Track_Gauge` int DEFAULT NULL COMMENT '轨距（mm）',
  `Weight` decimal(10,2) DEFAULT NULL COMMENT '自重（吨）',
  `Passenger_Capacity_Open` int DEFAULT NULL COMMENT '开敞式定员（人）',
  `Passenger_Capacity_Closed` int DEFAULT NULL COMMENT '封闭式定员（人）',
  `Design_Speed` int DEFAULT NULL COMMENT '构造速度（km/h）',
  `Floor_Material` varchar(100) DEFAULT NULL COMMENT '客室地板材料',
  `Door_Width` int DEFAULT NULL COMMENT '车门开度（mm）',
  `Door_Height` int DEFAULT NULL COMMENT '车门净高度（mm）',
  `Safety_Features` text COMMENT '安全特性',
  `Description` text COMMENT '描述',
  PRIMARY KEY (`Train_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for DieselMultipleUnits
-- ----------------------------
DROP TABLE IF EXISTS `DieselMultipleUnits`;
CREATE TABLE `DieselMultipleUnits` (
  `Train_ID` int NOT NULL AUTO_INCREMENT COMMENT '列车ID',
  `Train_Name` varchar(100) NOT NULL COMMENT '列车名称',
  `Formation` varchar(50) DEFAULT NULL COMMENT '编组方式（如2M+2T）',
  `Max_Speed` int DEFAULT NULL COMMENT '最高运行速度（km/h）',
  `Total_Power` int DEFAULT NULL COMMENT '总牵引功率（kW）',
  `Passenger_Capacity` int DEFAULT NULL COMMENT '定员（人）',
  `Engine_Type` varchar(100) DEFAULT NULL COMMENT '发动机类型',
  `Fuel_Type` enum('diesel','biofuel') DEFAULT NULL COMMENT '燃料类型',
  `Fuel_Efficiency` decimal(5,2) DEFAULT NULL COMMENT '燃油效率（L/km）',
  `Emission_Level` enum('low','medium','high') DEFAULT NULL COMMENT '排放水平',
  `Description` text COMMENT '描述',
  `Comments` text COMMENT '备注',
  PRIMARY KEY (`Train_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for DoorsAndCompartments
-- ----------------------------
DROP TABLE IF EXISTS `DoorsAndCompartments`;
CREATE TABLE `DoorsAndCompartments` (
  `Compartment_ID` int NOT NULL AUTO_INCREMENT COMMENT '客室ID',
  `Train_ID` int NOT NULL COMMENT '列车ID',
  `Door_Width` int DEFAULT NULL COMMENT '车门开度（mm）',
  `Door_Height` int DEFAULT NULL COMMENT '车门净高度（mm）',
  `Floor_Material` varchar(100) DEFAULT NULL COMMENT '地板材料',
  `Floor_Slip_Resistance` enum('high','medium','low') DEFAULT NULL COMMENT '地板防滑性能',
  `Floor_Water_Resistance` tinyint(1) DEFAULT NULL COMMENT '地板是否防水',
  `Floor_Fire_Resistance` tinyint(1) DEFAULT NULL COMMENT '地板是否防火',
  `Window_Material` varchar(100) DEFAULT NULL COMMENT '车窗材料',
  `Window_Safety_Level` enum('high','medium','low') DEFAULT NULL COMMENT '车窗安全等级',
  `Description` text COMMENT '描述',
  PRIMARY KEY (`Compartment_ID`),
  KEY `Train_ID` (`Train_ID`),
  CONSTRAINT `DoorsAndCompartments_ibfk_1` FOREIGN KEY (`Train_ID`) REFERENCES `HighSpeed_Trains` (`Train_ID`),
  CONSTRAINT `DoorsAndCompartments_ibfk_2` FOREIGN KEY (`Train_ID`) REFERENCES `UrbanRail_Trains` (`Train_ID`),
  CONSTRAINT `DoorsAndCompartments_ibfk_3` FOREIGN KEY (`Train_ID`) REFERENCES `DieselMultipleUnits` (`Train_ID`),
  CONSTRAINT `DoorsAndCompartments_ibfk_4` FOREIGN KEY (`Train_ID`) REFERENCES `ConventionalTrains` (`Train_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for HighSpeed_Trains
-- ----------------------------
DROP TABLE IF EXISTS `HighSpeed_Trains`;
CREATE TABLE `HighSpeed_Trains` (
  `Train_ID` int NOT NULL AUTO_INCREMENT COMMENT '列车ID',
  `Train_Name` varchar(100) NOT NULL COMMENT '列车名称',
  `Max_Speed` int DEFAULT NULL COMMENT '最高运行速度（km/h）',
  `Operating_Speed` int DEFAULT NULL COMMENT '持续运营速度（km/h）',
  `Air_Resistance` decimal(5,2) DEFAULT NULL COMMENT '空气阻力占比（%）',
  `Head_Length` decimal(5,2) DEFAULT NULL COMMENT '车头长度（米）',
  `Body_Structure_Material` varchar(100) DEFAULT NULL COMMENT '车体结构材料',
  `Sealing_Requirement` enum('high','medium','low') DEFAULT NULL COMMENT '气密性要求',
  `Pressure_Wave_Optimization` tinyint(1) DEFAULT NULL COMMENT '是否优化压力波',
  `Blocking_Ratio` decimal(5,2) DEFAULT NULL COMMENT '阻塞比（列车横截面积/隧道横截面积）',
  `Static_Load_Capacity` decimal(10,2) DEFAULT NULL COMMENT '静态荷载能力（吨）',
  `Dynamic_Load_Capacity` decimal(10,2) DEFAULT NULL COMMENT '动态荷载能力（吨）',
  `Description` text COMMENT '描述',
  PRIMARY KEY (`Train_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for TechnicalParameters
-- ----------------------------
DROP TABLE IF EXISTS `TechnicalParameters`;
CREATE TABLE `TechnicalParameters` (
  `Parameter_ID` int NOT NULL AUTO_INCREMENT COMMENT '参数ID',
  `Train_ID` int NOT NULL COMMENT '列车ID',
  `Parameter_Name` varchar(100) DEFAULT NULL COMMENT '参数名称',
  `Parameter_Value` varchar(100) DEFAULT NULL COMMENT '参数值',
  `Unit` varchar(50) DEFAULT NULL COMMENT '单位',
  `Description` text COMMENT '描述',
  PRIMARY KEY (`Parameter_ID`),
  KEY `Train_ID` (`Train_ID`),
  CONSTRAINT `TechnicalParameters_ibfk_1` FOREIGN KEY (`Train_ID`) REFERENCES `HighSpeed_Trains` (`Train_ID`),
  CONSTRAINT `TechnicalParameters_ibfk_2` FOREIGN KEY (`Train_ID`) REFERENCES `UrbanRail_Trains` (`Train_ID`),
  CONSTRAINT `TechnicalParameters_ibfk_3` FOREIGN KEY (`Train_ID`) REFERENCES `DieselMultipleUnits` (`Train_ID`),
  CONSTRAINT `TechnicalParameters_ibfk_4` FOREIGN KEY (`Train_ID`) REFERENCES `ConventionalTrains` (`Train_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for TrackSystems
-- ----------------------------
DROP TABLE IF EXISTS `TrackSystems`;
CREATE TABLE `TrackSystems` (
  `Track_ID` int NOT NULL AUTO_INCREMENT COMMENT '轨道ID',
  `Track_Type` enum('high_speed','urban_rail','conventional','monorail','tram') DEFAULT NULL,
  `Track_Gauge` int DEFAULT NULL COMMENT '轨距（mm）',
  `Anti_Derailment_Guard` tinyint(1) DEFAULT NULL COMMENT '是否设置防脱护轨',
  `Max_Speed` int DEFAULT NULL COMMENT '最高允许速度（km/h）',
  `Tunnel_Cross_Section` decimal(10,2) DEFAULT NULL COMMENT '隧道横截面积（平方米）',
  `Track_Material` varchar(100) DEFAULT NULL COMMENT '轨道材料',
  `Maintenance_Interval` int DEFAULT NULL COMMENT '维护间隔（天）',
  `Description` text COMMENT '描述',
  PRIMARY KEY (`Track_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for UrbanRail_Trains
-- ----------------------------
DROP TABLE IF EXISTS `UrbanRail_Trains`;
CREATE TABLE `UrbanRail_Trains` (
  `Train_ID` int NOT NULL AUTO_INCREMENT COMMENT '列车ID',
  `Train_Name` varchar(100) NOT NULL COMMENT '列车名称',
  `Max_Speed` int DEFAULT NULL COMMENT '最高运行速度（km/h）',
  `Body_Strength_Rating` enum('high','medium','low') DEFAULT NULL COMMENT '车体强度评级',
  `Window_Material` varchar(100) DEFAULT NULL COMMENT '车窗材料',
  `Door_Emergency_Unlock` tinyint(1) DEFAULT NULL COMMENT '车门是否具备紧急解锁功能',
  `Brake_System_Type` enum('electric','friction','combined') DEFAULT NULL COMMENT '制动系统类型',
  `Redundancy_Power_System` tinyint(1) DEFAULT NULL COMMENT '是否具备冗余动力系统',
  `Sealing_Pressure` decimal(5,2) DEFAULT NULL COMMENT '客室静态正压（Pa）',
  `Insulation_Performance` enum('high','medium','low') DEFAULT NULL COMMENT '隔热性能',
  `Noise_Reduction_Level` enum('high','medium','low') DEFAULT NULL COMMENT '隔音性能',
  `Description` text COMMENT '描述',
  PRIMARY KEY (`Train_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
