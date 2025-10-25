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

 Date: 11/08/2025 12:29:44
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
-- Records of ConventionalTrains
-- ----------------------------
BEGIN;
INSERT INTO `ConventionalTrains` VALUES (1, 'YW25B', 1435, 47.00, 66, 44, 140, 'Anti-Slip Flooring', 1300, 1800, 'Emergency Brake', '硬卧客车');
INSERT INTO `ConventionalTrains` VALUES (2, 'YZ22', 1435, 45.00, 120, 80, 120, 'Waterproof Flooring', 1200, 1800, 'Fire Extinguishers', '硬座客车');
INSERT INTO `ConventionalTrains` VALUES (3, 'RW25G', 1435, 50.00, 36, 24, 160, 'Fireproof Flooring', 1300, 1800, 'Smoke Detectors', '软卧客车');
INSERT INTO `ConventionalTrains` VALUES (4, 'CA23', 1435, 48.00, 50, 30, 140, 'Anti-Slip Flooring', 1200, 1800, 'Emergency Exits', '餐车');
INSERT INTO `ConventionalTrains` VALUES (5, 'XL25T', 1435, 46.00, 80, 60, 150, 'Waterproof Flooring', 1300, 1800, 'First Aid Kits', '行李车');
COMMIT;

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
-- Records of DieselMultipleUnits
-- ----------------------------
BEGIN;
INSERT INTO `DieselMultipleUnits` VALUES (1, '庐山号', '2M+2T', 160, 864, 540, 'Diesel Engine', 'diesel', 2.50, 'medium', '中国内燃动车组', NULL);
INSERT INTO `DieselMultipleUnits` VALUES (2, '新曙光号', '2M+9T', 180, 2760, 600, 'Diesel Engine', 'diesel', 2.80, 'high', '中国内燃动车组', NULL);
INSERT INTO `DieselMultipleUnits` VALUES (3, 'British Rail 125', '2M+8T', 200, 3000, 550, 'Diesel Engine', 'diesel', 3.00, 'medium', '英国内燃动车组', NULL);
INSERT INTO `DieselMultipleUnits` VALUES (4, 'Talgo XXI', '2M+6T', 220, 2500, 500, 'Diesel Engine', 'diesel', 2.70, 'low', '西班牙内燃动车组', NULL);
INSERT INTO `DieselMultipleUnits` VALUES (5, 'Siemens Desiro', '2M+4T', 160, 2000, 480, 'Diesel Engine', 'diesel', 2.60, 'medium', '德国内燃动车组', NULL);
COMMIT;

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
-- Records of DoorsAndCompartments
-- ----------------------------
BEGIN;
INSERT INTO `DoorsAndCompartments` VALUES (1, 1, 1300, 1800, 'Anti-Slip Flooring', 'high', 1, 1, 'Laminated Glass', 'high', '高速列车客室');
INSERT INTO `DoorsAndCompartments` VALUES (2, 2, 1200, 1800, 'Waterproof Flooring', 'medium', 1, 0, 'Tempered Glass', 'medium', '地铁列车客室');
INSERT INTO `DoorsAndCompartments` VALUES (3, 3, 1300, 1800, 'Fireproof Flooring', 'high', 0, 1, 'Safety Glass', 'high', '内燃动车组客室');
INSERT INTO `DoorsAndCompartments` VALUES (4, 4, 1200, 1800, 'Anti-Slip Flooring', 'medium', 1, 1, 'Laminated Glass', 'medium', '普速列车客室');
INSERT INTO `DoorsAndCompartments` VALUES (5, 5, 1300, 1800, 'Waterproof Flooring', 'high', 1, 0, 'Tempered Glass', 'high', '单轨列车客室');
COMMIT;

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
-- Records of HighSpeed_Trains
-- ----------------------------
BEGIN;
INSERT INTO `HighSpeed_Trains` VALUES (1, 'CRH380A', 380, 350, 75.50, 12.00, 'Aluminum Alloy', 'high', 1, 0.25, 500.00, 450.00, '中国高速铁路的代表车型');
INSERT INTO `HighSpeed_Trains` VALUES (2, 'Shinkansen E5', 320, 300, 70.00, 15.00, 'Steel', 'high', 1, 0.30, 550.00, 500.00, '日本新干线高速列车');
INSERT INTO `HighSpeed_Trains` VALUES (3, 'TGV Duplex', 320, 300, 72.00, 13.50, 'Aluminum Alloy', 'medium', 1, 0.28, 520.00, 480.00, '法国双层高速列车');
INSERT INTO `HighSpeed_Trains` VALUES (4, 'ICE 3', 330, 300, 73.50, 14.00, 'Steel', 'high', 1, 0.27, 530.00, 490.00, '德国城际快车');
INSERT INTO `HighSpeed_Trains` VALUES (5, 'AGV Italo', 360, 320, 74.00, 12.50, 'Aluminum Alloy', 'high', 1, 0.26, 510.00, 470.00, '意大利高速列车');
COMMIT;

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
-- Records of TechnicalParameters
-- ----------------------------
BEGIN;
INSERT INTO `TechnicalParameters` VALUES (1, 1, 'Air Resistance', '75.50', '%', '空气阻力占比');
INSERT INTO `TechnicalParameters` VALUES (2, 2, 'Sealing Pressure', '40.00', 'Pa', '客室静态正压');
INSERT INTO `TechnicalParameters` VALUES (3, 3, 'Fuel Efficiency', '2.50', 'L/km', '燃油效率');
INSERT INTO `TechnicalParameters` VALUES (4, 4, 'Design Speed', '140', 'km/h', '构造速度');
INSERT INTO `TechnicalParameters` VALUES (5, 5, 'Track Gauge', '1435', 'mm', '轨距');
COMMIT;

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
-- Records of TrackSystems
-- ----------------------------
BEGIN;
INSERT INTO `TrackSystems` VALUES (20, 'high_speed', 1435, 1, 350, 70.00, 'Concrete Sleepers', 180, '高速铁路轨道系统');
INSERT INTO `TrackSystems` VALUES (21, 'urban_rail', 1435, 1, 100, 50.00, 'Steel Rails', 90, '城市轨道交通轨道系统');
INSERT INTO `TrackSystems` VALUES (22, 'conventional', 1435, 1, 160, 60.00, 'Wooden Sleepers', 120, '普速铁路轨道系统');
INSERT INTO `TrackSystems` VALUES (23, 'monorail', 1000, 0, 80, 40.00, 'Concrete Beams', 60, '单轨铁路轨道系统');
INSERT INTO `TrackSystems` VALUES (24, 'tram', 1435, 0, 50, 30.00, 'Steel Rails', 30, '有轨电车轨道系统');
COMMIT;

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

-- ----------------------------
-- Records of UrbanRail_Trains
-- ----------------------------
BEGIN;
INSERT INTO `UrbanRail_Trains` VALUES (1, 'Metro A', 80, 'high', 'Safety Glass', 1, 'combined', 1, 40.00, 'high', 'high', '城市地铁列车');
INSERT INTO `UrbanRail_Trains` VALUES (2, 'Subway B', 90, 'medium', 'Tempered Glass', 1, 'electric', 1, 35.00, 'medium', 'medium', '地下铁列车');
INSERT INTO `UrbanRail_Trains` VALUES (3, 'Light Rail C', 70, 'high', 'Laminated Glass', 1, 'friction', 0, 30.00, 'high', 'high', '轻轨列车');
INSERT INTO `UrbanRail_Trains` VALUES (4, 'Monorail D', 60, 'medium', 'Safety Glass', 1, 'combined', 1, 45.00, 'medium', 'medium', '单轨列车');
INSERT INTO `UrbanRail_Trains` VALUES (5, 'Tram E', 50, 'low', 'Tempered Glass', 1, 'electric', 0, 25.00, 'low', 'low', '有轨电车');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
