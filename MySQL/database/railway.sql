/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : railway

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:29:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for conventionaltrains
-- ----------------------------
DROP TABLE IF EXISTS `conventionaltrains`;
CREATE TABLE `conventionaltrains`  (
  `Train_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '列车ID',
  `Train_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列车名称',
  `Track_Gauge` int(0) NULL DEFAULT NULL COMMENT '轨距（mm）',
  `Weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '自重（吨）',
  `Passenger_Capacity_Open` int(0) NULL DEFAULT NULL COMMENT '开敞式定员（人）',
  `Passenger_Capacity_Closed` int(0) NULL DEFAULT NULL COMMENT '封闭式定员（人）',
  `Design_Speed` int(0) NULL DEFAULT NULL COMMENT '构造速度（km/h）',
  `Floor_Material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客室地板材料',
  `Door_Width` int(0) NULL DEFAULT NULL COMMENT '车门开度（mm）',
  `Door_Height` int(0) NULL DEFAULT NULL COMMENT '车门净高度（mm）',
  `Safety_Features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '安全特性',
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  `Manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Train_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conventionaltrains
-- ----------------------------
INSERT INTO `conventionaltrains` VALUES (1, 'YW25B', 1435, 47.00, 66, 44, 140, 'Anti-Slip Flooring', 1300, 1800, 'Emergency Brake', '硬卧客车', NULL);
INSERT INTO `conventionaltrains` VALUES (2, 'YZ22', 1435, 45.00, 120, 80, 120, 'Waterproof Flooring', 1200, 1800, 'Fire Extinguishers', '硬座客车', NULL);
INSERT INTO `conventionaltrains` VALUES (3, 'RW25G', 1435, 50.00, 36, 24, 160, 'Fireproof Flooring', 1300, 1800, 'Smoke Detectors', '软卧客车', NULL);
INSERT INTO `conventionaltrains` VALUES (4, 'CA23', 1435, 48.00, 50, 30, 140, 'Anti-Slip Flooring', 1200, 1800, 'Emergency Exits', '餐车', NULL);
INSERT INTO `conventionaltrains` VALUES (5, 'XL25T', 1435, 46.00, 80, 60, 150, 'Waterproof Flooring', 1300, 1800, 'First Aid Kits', '行李车', NULL);
INSERT INTO `conventionaltrains` VALUES (9, 'Express_101', NULL, 80.00, 1000, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (10, 'StableTrain_A', 1435, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (11, 'StableTrain_B', 1435, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (12, 'StableTrain_C', 1520, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (13, 'StableTrain_D', 1520, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (14, 'StabilityTest_Train', 2500, 200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (15, 'HighSpeed_Train', NULL, NULL, NULL, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (16, 'HeavyLoad_Train', NULL, 600.00, 1200, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (17, 'HyperSpeed_Train', NULL, 1500.00, NULL, NULL, 1500, 'Ordinary_Wood', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (18, 'AeroTest_Train', NULL, NULL, NULL, NULL, NULL, NULL, 1200, 2200, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (19, 'FlowOptimized_Train', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (20, 'WideDoor_Train', NULL, NULL, NULL, NULL, NULL, NULL, 3000, 3000, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (21, 'AirRes Test 100', 1435, 45.50, 100, 70, 120, 'Anti-Slip Flooring', 1200, 1800, 'Emergency Brake', '空气阻力测试模型100', NULL);
INSERT INTO `conventionaltrains` VALUES (22, 'AirRes Test 200', 1435, 48.50, 200, 100, 120, 'Waterproof Flooring', 1300, 1800, 'Fire Extinguishers', '空气阻力测试模型200', NULL);
INSERT INTO `conventionaltrains` VALUES (23, 'Capacity Sum Test', 1435, 48.00, 100, 150, 120, 'Anti-Slip Flooring', 1300, 1800, 'Emergency Exits', '总容量测试用硬座客车', NULL);
INSERT INTO `conventionaltrains` VALUES (28, 'HyperSpeed_TestTrain', NULL, 80.00, NULL, NULL, 1000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (71, 'Conv Pioneer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (72, 'Conv Explorer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (73, 'Conv Voyager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (74, 'Conv Settler', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (75, 'Conv Merchant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (81, 'Conv Train A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (82, 'Conv Train B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (83, 'Conv Train C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (84, 'Conv Train D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (85, 'Conv Train E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (99, 'ExtremeDoor_ConvTrain', NULL, 80.00, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (101, 'K-Series Standard 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (102, 'T-Series Standard 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (103, 'Z-Series Fast 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conventionaltrains` VALUES (104, 'K-Series Standard 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dieselmultipleunits
-- ----------------------------
DROP TABLE IF EXISTS `dieselmultipleunits`;
CREATE TABLE `dieselmultipleunits`  (
  `Train_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '列车ID',
  `Train_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列车名称',
  `Formation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编组方式（如2M+2T）',
  `Max_Speed` int(0) NULL DEFAULT NULL COMMENT '最高运行速度（km/h）',
  `Total_Power` int(0) NULL DEFAULT NULL COMMENT '总牵引功率（kW）',
  `Passenger_Capacity` int(0) NULL DEFAULT NULL COMMENT '定员（人）',
  `Engine_Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发动机类型',
  `Fuel_Type` enum('diesel','biofuel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '燃料类型',
  `Fuel_Efficiency` decimal(5, 2) NULL DEFAULT NULL COMMENT '燃油效率（L/km）',
  `Emission_Level` enum('low','medium','high') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '排放水平',
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  `Comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  PRIMARY KEY (`Train_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dieselmultipleunits
-- ----------------------------
INSERT INTO `dieselmultipleunits` VALUES (1, '庐山号', '2M+2T', 160, 864, 540, 'Diesel Engine', 'diesel', 2.50, 'medium', '中国内燃动车组', NULL);
INSERT INTO `dieselmultipleunits` VALUES (2, '新曙光号', '2M+9T', 180, 2760, 600, 'Diesel Engine', 'diesel', 2.80, 'high', '中国内燃动车组', NULL);
INSERT INTO `dieselmultipleunits` VALUES (3, 'British Rail 125', '2M+8T', 200, 3000, 550, 'Diesel Engine', 'diesel', 3.00, 'medium', '英国内燃动车组', NULL);
INSERT INTO `dieselmultipleunits` VALUES (4, 'Talgo XXI', '2M+6T', 220, 2500, 500, 'Diesel Engine', 'diesel', 2.70, 'low', '西班牙内燃动车组', NULL);
INSERT INTO `dieselmultipleunits` VALUES (5, 'Siemens Desiro', '2M+4T', 160, 2000, 480, 'Diesel Engine', 'diesel', 2.60, 'medium', '德国内燃动车组', NULL);
INSERT INTO `dieselmultipleunits` VALUES (21, 'DMU_Express', NULL, 160, 3000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (22, 'DMU_CapacityTest', '18k-22', NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (23, 'DMU_ExtremeFormation', '30k-60', NULL, NULL, 8000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (24, 'DMU_HeavyLoad', NULL, NULL, NULL, 800, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (25, 'DMU_FuelEfficiencyTest', NULL, NULL, 5000, NULL, NULL, 'diesel', 2.50, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (26, 'DMU_ExtremeCapacity', '50k-100', NULL, NULL, 5000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (27, 'DMU_ExtremeFuelConsumption', NULL, NULL, 5000, NULL, NULL, NULL, 999.99, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (71, 'DMU Alpha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (72, 'DMU Beta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (73, 'DMU Gamma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (74, 'DMU Delta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (75, 'DMU Epsilon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (81, 'DMU Train A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (82, 'DMU Train B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (83, 'DMU Train C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (84, 'DMU Train D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (85, 'DMU Train E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (99, 'ExtremeDoor_DMU', NULL, NULL, 1000, NULL, NULL, NULL, 1.50, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (101, 'DMU Express 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (102, 'DMU Regional 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (103, 'DMU Express 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dieselmultipleunits` VALUES (104, 'DMU Regional 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for doorsandcompartments
-- ----------------------------
DROP TABLE IF EXISTS `doorsandcompartments`;
CREATE TABLE `doorsandcompartments`  (
  `Compartment_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '客室ID',
  `Train_ID` int(0) NOT NULL COMMENT '列车ID',
  `Door_Width` int(0) NULL DEFAULT NULL COMMENT '车门开度（mm）',
  `Door_Height` int(0) NULL DEFAULT NULL COMMENT '车门净高度（mm）',
  `Floor_Material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地板材料',
  `Floor_Slip_Resistance` enum('high','medium','low') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地板防滑性能',
  `Floor_Water_Resistance` tinyint(1) NULL DEFAULT NULL COMMENT '地板是否防水',
  `Floor_Fire_Resistance` tinyint(1) NULL DEFAULT NULL COMMENT '地板是否防火',
  `Window_Material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '车窗材料',
  `Window_Safety_Level` enum('high','medium','low') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '车窗安全等级',
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  PRIMARY KEY (`Compartment_ID`) USING BTREE,
  INDEX `Train_ID`(`Train_ID`) USING BTREE,
  CONSTRAINT `DoorsAndCompartments_ibfk_1` FOREIGN KEY (`Train_ID`) REFERENCES `highspeed_trains` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `DoorsAndCompartments_ibfk_2` FOREIGN KEY (`Train_ID`) REFERENCES `urbanrail_trains` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `DoorsAndCompartments_ibfk_3` FOREIGN KEY (`Train_ID`) REFERENCES `dieselmultipleunits` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `DoorsAndCompartments_ibfk_4` FOREIGN KEY (`Train_ID`) REFERENCES `conventionaltrains` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doorsandcompartments
-- ----------------------------
INSERT INTO `doorsandcompartments` VALUES (1, 1, 1300, 1800, 'Anti-Slip Flooring', 'high', 1, 1, 'Laminated Glass', 'high', '高速列车客室');
INSERT INTO `doorsandcompartments` VALUES (2, 2, 1200, 1800, 'Waterproof Flooring', 'medium', 1, 0, 'Tempered Glass', 'medium', '地铁列车客室');
INSERT INTO `doorsandcompartments` VALUES (3, 3, 1300, 1800, 'Fireproof Flooring', 'high', 0, 1, 'Safety Glass', 'high', '内燃动车组客室');
INSERT INTO `doorsandcompartments` VALUES (4, 4, 1200, 1800, 'Anti-Slip Flooring', 'medium', 1, 1, 'Laminated Glass', 'medium', '普速列车客室');
INSERT INTO `doorsandcompartments` VALUES (5, 5, 1300, 1800, 'Waterproof Flooring', 'high', 1, 0, 'Tempered Glass', 'high', '单轨列车客室');
INSERT INTO `doorsandcompartments` VALUES (30, 99, 10000, 2200, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (31, 101, NULL, NULL, 'rubber', 'high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (32, 101, NULL, NULL, 'rubber', 'medium', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (33, 102, NULL, NULL, 'rubber', 'low', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (34, 102, NULL, NULL, 'rubber', 'high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (35, 103, NULL, NULL, 'rubber', 'medium', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (36, 103, NULL, NULL, 'rubber', 'high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (37, 104, NULL, NULL, 'wood', 'medium', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (38, 104, NULL, NULL, 'metal', 'low', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (101, 71, 10000, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (102, 72, 10000, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (103, 73, 10000, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (104, 74, 10000, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (105, 75, 10000, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (106, 71, 9000, 9000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doorsandcompartments` VALUES (107, 72, 8000, 8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for highspeed_trains
-- ----------------------------
DROP TABLE IF EXISTS `highspeed_trains`;
CREATE TABLE `highspeed_trains`  (
  `Train_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '列车ID',
  `Train_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列车名称',
  `Max_Speed` int(0) NULL DEFAULT NULL COMMENT '最高运行速度（km/h）',
  `Operating_Speed` int(0) NULL DEFAULT NULL COMMENT '持续运营速度（km/h）',
  `Air_Resistance` decimal(5, 2) NULL DEFAULT NULL COMMENT '空气阻力占比（%）',
  `Head_Length` decimal(5, 2) NULL DEFAULT NULL COMMENT '车头长度（米）',
  `Body_Structure_Material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '车体结构材料',
  `Sealing_Requirement` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Pressure_Wave_Optimization` tinyint(1) NULL DEFAULT NULL COMMENT '是否优化压力波',
  `Blocking_Ratio` decimal(5, 2) NULL DEFAULT NULL COMMENT '阻塞比（列车横截面积/隧道横截面积）',
  `Static_Load_Capacity` decimal(10, 2) NULL DEFAULT NULL COMMENT '静态荷载能力（吨）',
  `Dynamic_Load_Capacity` decimal(10, 2) NULL DEFAULT NULL COMMENT '动态荷载能力（吨）',
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  PRIMARY KEY (`Train_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of highspeed_trains
-- ----------------------------
INSERT INTO `highspeed_trains` VALUES (1, 'CRH380A', 380, 350, 75.50, 12.00, 'Aluminum Alloy', 'high', 1, 0.25, 500.00, 450.00, '中国高速铁路的代表车型');
INSERT INTO `highspeed_trains` VALUES (2, 'Shinkansen E5', 320, 300, 70.00, 15.00, 'Steel', 'high', 1, 0.30, 550.00, 500.00, '日本新干线高速列车');
INSERT INTO `highspeed_trains` VALUES (3, 'TGV Duplex', 320, 300, 72.00, 13.50, 'Aluminum Alloy', 'medium', 1, 0.28, 520.00, 480.00, '法国双层高速列车');
INSERT INTO `highspeed_trains` VALUES (4, 'ICE 3', 330, 300, 73.50, 14.00, 'Steel', 'high', 1, 0.27, 530.00, 490.00, '德国城际快车');
INSERT INTO `highspeed_trains` VALUES (5, 'AGV Italo', 360, 320, 74.00, 12.50, 'Aluminum Alloy', 'high', 1, 0.26, 510.00, 470.00, '意大利高速列车');
INSERT INTO `highspeed_trains` VALUES (41, 'CRH Harmony 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (42, 'Fuxing Hao 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.30, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (43, 'CRH Harmony 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.20, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (44, 'Fuxing Hao 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.35, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (45, 'CRH Harmony 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.28, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (46, 'HighSpeedTrainA', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (47, 'HighSpeedTrainB', NULL, NULL, 180.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (48, 'HighSpeedTrainC', NULL, NULL, 170.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (49, 'HighSpeedTrainD', NULL, NULL, 160.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (50, 'HighSpeedTrainE', NULL, NULL, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (51, 'Fuxing Hao 1', NULL, NULL, 100.00, NULL, NULL, 'ultra_high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (52, 'CRH Harmony 2', NULL, NULL, 120.00, NULL, NULL, 'ultra_high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (53, 'Fuxing Hao 3', NULL, NULL, 150.00, NULL, NULL, 'ultra_high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (54, 'CRH Harmony 4', NULL, NULL, 180.00, NULL, NULL, 'ultra_high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (55, 'Fuxing Hao 5', NULL, NULL, 200.00, NULL, NULL, 'ultra_high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (56, 'CRH Harmony 6', NULL, NULL, 90.00, NULL, NULL, 'medium', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (57, 'Fuxing Hao 7', NULL, NULL, 250.00, NULL, NULL, 'ultra_high', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (61, 'CRH Phoenix', NULL, NULL, 100.00, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (62, 'Fuxing Dragon', NULL, NULL, 120.00, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (63, 'CRH Comet', NULL, NULL, 150.00, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (64, 'Fuxing Eagle', NULL, NULL, 180.00, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (65, 'CRH Swift', NULL, NULL, 200.00, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (66, 'Fuxing Titan', NULL, NULL, 250.00, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (67, 'CRH Legacy', NULL, NULL, 110.00, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (71, 'CRH Falcon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (72, 'CRH Vulture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (73, 'CRH Hawk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (74, 'CRH Eagle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (75, 'CRH Sparrow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (81, 'Speedster 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (82, 'Speedster 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75.00, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (83, 'Speedster 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (84, 'Speedster 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125.00, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (85, 'Speedster 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150.00, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (99, 'ExtremeDoor_HSTrain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (101, 'CRH Harmony 1', 350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (102, 'CRH Harmony 2', 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (103, 'Fuxing Hao 1', 350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `highspeed_trains` VALUES (104, 'Fuxing Hao 2', 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for technicalparameters
-- ----------------------------
DROP TABLE IF EXISTS `technicalparameters`;
CREATE TABLE `technicalparameters`  (
  `Parameter_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数ID',
  `Train_ID` int(0) NOT NULL COMMENT '列车ID',
  `Parameter_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数名称',
  `Parameter_Value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数值',
  `Unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  PRIMARY KEY (`Parameter_ID`) USING BTREE,
  INDEX `Train_ID`(`Train_ID`) USING BTREE,
  CONSTRAINT `TechnicalParameters_ibfk_1` FOREIGN KEY (`Train_ID`) REFERENCES `highspeed_trains` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `TechnicalParameters_ibfk_2` FOREIGN KEY (`Train_ID`) REFERENCES `urbanrail_trains` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `TechnicalParameters_ibfk_3` FOREIGN KEY (`Train_ID`) REFERENCES `dieselmultipleunits` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `TechnicalParameters_ibfk_4` FOREIGN KEY (`Train_ID`) REFERENCES `conventionaltrains` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of technicalparameters
-- ----------------------------
INSERT INTO `technicalparameters` VALUES (1, 1, 'Air Resistance', '75.50', '%', '空气阻力占比');
INSERT INTO `technicalparameters` VALUES (2, 2, 'Sealing Pressure', '40.00', 'Pa', '客室静态正压');
INSERT INTO `technicalparameters` VALUES (3, 3, 'Fuel Efficiency', '2.50', 'L/km', '燃油效率');
INSERT INTO `technicalparameters` VALUES (4, 4, 'Design Speed', '140', 'km/h', '构造速度');
INSERT INTO `technicalparameters` VALUES (5, 5, 'Track Gauge', '1435', 'mm', '轨距');
INSERT INTO `technicalparameters` VALUES (26, 1, 'Window_Strength', '80', 'N', 'Strength of Safety Glass');
INSERT INTO `technicalparameters` VALUES (27, 2, 'Window_Strength', '70', 'N', 'Strength of Tempered Glass');
INSERT INTO `technicalparameters` VALUES (28, 3, 'Window_Strength', '85', 'N', 'Strength of Laminated Glass');
INSERT INTO `technicalparameters` VALUES (29, 4, 'Window_Strength', '80', 'N', 'Strength of Safety Glass');
INSERT INTO `technicalparameters` VALUES (30, 5, 'Window_Strength', '70', 'N', 'Strength of Tempered Glass');
INSERT INTO `technicalparameters` VALUES (31, 81, 'Traction power', NULL, NULL, NULL);
INSERT INTO `technicalparameters` VALUES (32, 82, 'Traction power', NULL, NULL, NULL);
INSERT INTO `technicalparameters` VALUES (33, 83, 'Traction power', NULL, NULL, NULL);
INSERT INTO `technicalparameters` VALUES (34, 84, 'Traction power', NULL, NULL, NULL);
INSERT INTO `technicalparameters` VALUES (35, 85, 'Traction power', NULL, NULL, NULL);
INSERT INTO `technicalparameters` VALUES (36, 81, 'Weight', NULL, NULL, NULL);
INSERT INTO `technicalparameters` VALUES (37, 82, 'Weight', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tracksystems
-- ----------------------------
DROP TABLE IF EXISTS `tracksystems`;
CREATE TABLE `tracksystems`  (
  `Track_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '轨道ID',
  `Track_Type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Track_Gauge` int(0) NULL DEFAULT NULL COMMENT '轨距（mm）',
  `Anti_Derailment_Guard` tinyint(1) NULL DEFAULT NULL COMMENT '是否设置防脱护轨',
  `Max_Speed` int(0) NULL DEFAULT NULL COMMENT '最高允许速度（km/h）',
  `Tunnel_Cross_Section` decimal(10, 2) NULL DEFAULT NULL COMMENT '隧道横截面积（平方米）',
  `Track_Material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '轨道材料',
  `Maintenance_Interval` int(0) NULL DEFAULT NULL COMMENT '维护间隔（天）',
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  PRIMARY KEY (`Track_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tracksystems
-- ----------------------------
INSERT INTO `tracksystems` VALUES (20, 'high_speed', 1435, 1, 350, 70.00, 'Concrete Sleepers', 180, '高速铁路轨道系统');
INSERT INTO `tracksystems` VALUES (21, 'urban_rail', 1435, 1, 100, 50.00, 'Steel Rails', 90, '城市轨道交通轨道系统');
INSERT INTO `tracksystems` VALUES (22, 'conventional', 1435, 1, 160, 60.00, 'Wooden Sleepers', 120, '普速铁路轨道系统');
INSERT INTO `tracksystems` VALUES (23, 'monorail', 1000, 0, 80, 40.00, 'Concrete Beams', 60, '单轨铁路轨道系统');
INSERT INTO `tracksystems` VALUES (24, 'tram', 1435, 0, 50, 30.00, 'Steel Rails', 30, '有轨电车轨道系统');
INSERT INTO `tracksystems` VALUES (41, NULL, NULL, NULL, NULL, 60.00, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (42, NULL, NULL, NULL, NULL, 55.00, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (43, NULL, NULL, NULL, NULL, 70.00, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (44, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (45, NULL, NULL, NULL, NULL, 65.00, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (91, 'HighSpeed', NULL, NULL, 350, NULL, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (92, 'Hyperloop', NULL, NULL, 10000, NULL, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (93, 'Conventional', NULL, NULL, 160, NULL, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (94, 'UrbanRail', NULL, NULL, 120, NULL, NULL, NULL, NULL);
INSERT INTO `tracksystems` VALUES (101, NULL, NULL, NULL, NULL, NULL, 'Railway rail', 20, NULL);
INSERT INTO `tracksystems` VALUES (102, NULL, NULL, NULL, NULL, NULL, 'Concrete rail', 15, NULL);
INSERT INTO `tracksystems` VALUES (103, NULL, NULL, NULL, NULL, NULL, 'Railway rail', 60, NULL);
INSERT INTO `tracksystems` VALUES (104, NULL, NULL, NULL, NULL, NULL, 'Wooden sleepers', 10, NULL);
INSERT INTO `tracksystems` VALUES (105, NULL, NULL, NULL, NULL, NULL, 'Concrete rail', 30, NULL);
INSERT INTO `tracksystems` VALUES (111, 'Test Track', NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `tracksystems` VALUES (112, 'HighSpeed', NULL, NULL, NULL, NULL, NULL, 30, NULL);
INSERT INTO `tracksystems` VALUES (113, 'Conventional', NULL, NULL, NULL, NULL, NULL, 60, NULL);
INSERT INTO `tracksystems` VALUES (114, 'UrbanRail', NULL, NULL, NULL, NULL, NULL, 45, NULL);

-- ----------------------------
-- Table structure for urbanrail_trains
-- ----------------------------
DROP TABLE IF EXISTS `urbanrail_trains`;
CREATE TABLE `urbanrail_trains`  (
  `Train_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '列车ID',
  `Train_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列车名称',
  `Max_Speed` int(0) NULL DEFAULT NULL COMMENT '最高运行速度（km/h）',
  `Body_Strength_Rating` enum('high','medium','low') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '车体强度评级',
  `Window_Material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '车窗材料',
  `Door_Emergency_Unlock` tinyint(1) NULL DEFAULT NULL COMMENT '车门是否具备紧急解锁功能',
  `Brake_System_Type` enum('electric','friction','combined') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '制动系统类型',
  `Redundancy_Power_System` tinyint(1) NULL DEFAULT NULL COMMENT '是否具备冗余动力系统',
  `Sealing_Pressure` decimal(5, 2) NULL DEFAULT NULL COMMENT '客室静态正压（Pa）',
  `Insulation_Performance` enum('high','medium','low') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '隔热性能',
  `Noise_Reduction_Level` enum('high','medium','low') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '隔音性能',
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  PRIMARY KEY (`Train_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of urbanrail_trains
-- ----------------------------
INSERT INTO `urbanrail_trains` VALUES (1, 'Metro A', 80, 'high', 'Safety Glass', 1, 'combined', 1, 40.00, 'high', 'high', '城市地铁列车');
INSERT INTO `urbanrail_trains` VALUES (2, 'Subway B', 90, 'medium', 'Tempered Glass', 1, 'electric', 1, 35.00, 'medium', 'medium', '地下铁列车');
INSERT INTO `urbanrail_trains` VALUES (3, 'Light Rail C', 70, 'high', 'Laminated Glass', 1, 'friction', 0, 30.00, 'high', 'high', '轻轨列车');
INSERT INTO `urbanrail_trains` VALUES (4, 'Monorail D', 60, 'medium', 'Safety Glass', 1, 'combined', 1, 45.00, 'medium', 'medium', '单轨列车');
INSERT INTO `urbanrail_trains` VALUES (5, 'Tram E', 50, 'low', 'Tempered Glass', 1, 'electric', 0, 25.00, 'low', 'low', '有轨电车');
INSERT INTO `urbanrail_trains` VALUES (12, 'Metro F', 85, 'high', 'Tempered Glass', 1, 'combined', 1, 42.00, 'high', 'high', 'High-strength body with tempered glass');
INSERT INTO `urbanrail_trains` VALUES (13, 'Metro G', 88, 'high', 'Composite Material', 1, 'electric', 1, 43.00, 'high', 'medium', 'High-strength body with composite material');
INSERT INTO `urbanrail_trains` VALUES (14, 'Ultra Strength X', 95, 'high', '100000 MPa', 1, 'combined', 1, 50.00, 'high', 'high', 'Train equipped with ultra-high-strength 100000 MPa window material');
INSERT INTO `urbanrail_trains` VALUES (15, 'Emergency Test 1', 75, 'medium', 'Tempered Glass', 1, 'electric', 1, 32.00, 'medium', 'medium', 'Train with emergency door unlock and electric brake system');
INSERT INTO `urbanrail_trains` VALUES (16, 'Emergency Test 2', 78, 'medium', 'Safety Glass', 1, 'combined', 1, 34.00, 'medium', 'high', 'Train with emergency door unlock and combined brake system');
INSERT INTO `urbanrail_trains` VALUES (17, 'HyperSpeed X', 10000, 'high', 'Safety Glass', 1, 'combined', 1, 60.00, 'high', 'high', 'Urban rail train with extreme 10000 km/h maximum speed for deceleration calculation');
INSERT INTO `urbanrail_trains` VALUES (18, 'PressureSound A', 85, 'high', 'Laminated Glass', 1, 'electric', 1, 55.00, 'high', 'high', 'High static positive pressure compartment with high noise reduction');
INSERT INTO `urbanrail_trains` VALUES (19, 'PressureSound B', 82, 'medium', 'Safety Glass', 1, 'combined', 1, 52.00, 'medium', 'high', 'High static positive pressure compartment with strong sound insulation');
INSERT INTO `urbanrail_trains` VALUES (71, 'Urban Red', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (72, 'Urban Blue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (73, 'Urban Green', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (74, 'Urban Yellow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (75, 'Urban Purple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (81, 'Urban Train A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (82, 'Urban Train B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (83, 'Urban Train C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (84, 'Urban Train D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (85, 'Urban Train E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (99, 'ExtremeDoor_UrbanTrain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (101, 'Urban Train A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (102, 'Urban Train B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (103, 'Urban Train C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `urbanrail_trains` VALUES (104, 'Urban Train D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
