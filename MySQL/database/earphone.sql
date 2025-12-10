/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : earphone

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:24:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audio_data
-- ----------------------------
DROP TABLE IF EXISTS `audio_data`;
CREATE TABLE `audio_data`  (
  `Audio_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '音频数据唯一标识',
  `Headphone_Id` int(0) NULL DEFAULT NULL COMMENT '耳机ID（外键）',
  `Driver_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '驱动单元类型（如动圈、动铁）',
  `Frequency_Response_Hz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '频率响应范围（赫兹）',
  `Total_Harmonic_Distortion_Percent` decimal(5, 2) NULL DEFAULT NULL COMMENT '总谐波失真（百分比）',
  `Sound_Pressure_Level_Db` decimal(5, 1) NULL DEFAULT NULL COMMENT '声压级（分贝）',
  `Impedance_Ohms` int(0) NULL DEFAULT NULL COMMENT '阻抗（欧姆）',
  `Sensitivity_Db` decimal(5, 1) NULL DEFAULT NULL COMMENT '灵敏度（分贝）',
  `Max_Input_Power_Mw` int(0) NULL DEFAULT NULL COMMENT '最大输入功率（毫瓦）',
  `Audio_Jack_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '音频接口类型（如 3.5mm、USB-C）',
  `Bluetooth_Version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '蓝牙版本（如 5.0）',
  `Audio_Codec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支持的音频编解码器（如 SBC、AAC、LDAC）',
  PRIMARY KEY (`Audio_Id`) USING BTREE,
  INDEX `headphone_id`(`Headphone_Id`) USING BTREE,
  CONSTRAINT `audio_data_ibfk_1` FOREIGN KEY (`Headphone_Id`) REFERENCES `headphones` (`Headphone_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audio_data
-- ----------------------------
INSERT INTO `audio_data` VALUES (1, 1, 'Dynamic', '4-40000', 0.02, 104.5, 32, 104.5, 1500, '3.5mm', '5.0', 'LDAC');
INSERT INTO `audio_data` VALUES (2, 2, 'Dynamic', '10-24000', 0.01, 110.0, 20, 110.0, 1000, '3.5mm', '5.1', 'AAC');
INSERT INTO `audio_data` VALUES (3, 3, 'Dynamic', '10-41000', 0.05, 104.0, 150, 104.0, 200, '6.35mm', NULL, NULL);
INSERT INTO `audio_data` VALUES (9, 1, 'Dynamic', '20-20000', 0.00, 100.0, 32, 100.0, 1000, '3.5mm', '5.0', 'SBC');
INSERT INTO `audio_data` VALUES (10, 2, 'Dynamic', '15-22000', 0.00, 102.0, 30, 102.0, 1200, 'USB-C', '5.1', 'AAC');
INSERT INTO `audio_data` VALUES (11, 3, 'Balanced Armature', '10-25000', 0.00, 98.5, 24, 98.5, 800, NULL, '5.2', 'LDAC');
INSERT INTO `audio_data` VALUES (12, 4, 'Dynamic', '18-20000', 0.01, 105.0, 32, 105.0, 1500, '3.5mm', '5.0', 'SBC');
INSERT INTO `audio_data` VALUES (13, 5, 'Hybrid', '10-40000', 0.01, 108.0, 20, 108.0, 2000, 'USB-C', '5.3', 'LDAC');
INSERT INTO `audio_data` VALUES (14, 101, NULL, '15-22000', 0.00, NULL, 32, 102.0, NULL, NULL, '5.2', 'SBC');
INSERT INTO `audio_data` VALUES (15, 102, NULL, '18-21000', 0.00, NULL, 24, 98.0, NULL, NULL, '5.0', 'SBC');
INSERT INTO `audio_data` VALUES (16, 103, NULL, '10-25000', 0.00, NULL, 40, 105.0, NULL, NULL, '5.3', 'SBC');
INSERT INTO `audio_data` VALUES (17, 1, 'Dynamic', '20-20000', 0.00, 100.0, 32, 100.0, 1000, '3.5mm', '5.0', 'SBC');
INSERT INTO `audio_data` VALUES (18, 2, 'Dynamic', '15-22000', 0.00, 102.0, 30, 102.0, 1200, 'USB-C', '5.1', 'AAC');
INSERT INTO `audio_data` VALUES (19, 3, 'Balanced Armature', '10-25000', 0.00, 98.5, 24, 98.5, 800, NULL, '5.2', 'LDAC');
INSERT INTO `audio_data` VALUES (20, 4, 'Dynamic', '18-20000', 0.01, 105.0, 32, 105.0, 1500, '3.5mm', '5.0', 'SBC');
INSERT INTO `audio_data` VALUES (21, 5, 'Hybrid', '10-40000', 0.01, 108.0, 20, 108.0, 2000, 'USB-C', '5.3', 'LDAC');
INSERT INTO `audio_data` VALUES (22, 101, NULL, '15-22000', 0.00, NULL, 32, 102.0, NULL, NULL, '5.2', 'SBC');
INSERT INTO `audio_data` VALUES (23, 102, NULL, '18-21000', 0.00, NULL, 24, 98.0, NULL, NULL, '5.0', 'SBC');
INSERT INTO `audio_data` VALUES (24, 103, NULL, '10-25000', 0.00, NULL, 40, 105.0, NULL, NULL, '5.3', 'SBC');
INSERT INTO `audio_data` VALUES (25, 1, 'Dynamic', '20-20000', 0.00, 100.0, 32, 100.0, 1000, '3.5mm', '5.0', 'SBC');
INSERT INTO `audio_data` VALUES (26, 2, 'Dynamic', '15-22000', 0.00, 102.0, 30, 102.0, 1200, 'USB-C', '5.1', 'AAC');
INSERT INTO `audio_data` VALUES (27, 3, 'Balanced Armature', '10-25000', 0.00, 98.5, 24, 98.5, 800, NULL, '5.2', 'LDAC');
INSERT INTO `audio_data` VALUES (28, 4, 'Dynamic', '18-20000', 0.01, 105.0, 32, 105.0, 1500, '3.5mm', '5.0', 'SBC');
INSERT INTO `audio_data` VALUES (29, 5, 'Hybrid', '10-40000', 0.01, 108.0, 20, 108.0, 2000, 'USB-C', '5.3', 'LDAC');

-- ----------------------------
-- Table structure for carbon_emissions
-- ----------------------------
DROP TABLE IF EXISTS `carbon_emissions`;
CREATE TABLE `carbon_emissions`  (
  `id` int(0) NOT NULL,
  `emission_factor` decimal(10, 2) NULL DEFAULT NULL,
  `annual_emissions_tonnes` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carbon_emissions
-- ----------------------------

-- ----------------------------
-- Table structure for computer_system
-- ----------------------------
DROP TABLE IF EXISTS `computer_system`;
CREATE TABLE `computer_system`  (
  `cpu_score` int(0) NULL DEFAULT NULL,
  `gpu_score` int(0) NULL DEFAULT NULL,
  `memory_score` int(0) NULL DEFAULT NULL,
  `storage_score` int(0) NULL DEFAULT NULL,
  `overall_score` int(0) NULL DEFAULT NULL,
  `test_temperature_celsius` int(0) NULL DEFAULT NULL,
  `power_consumption_watts` int(0) NULL DEFAULT NULL,
  `rated_operating_temperature_celsius` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of computer_system
-- ----------------------------

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data`  (
  `device_id` int(0) NULL DEFAULT NULL,
  `energy_saved` decimal(10, 2) NULL DEFAULT NULL,
  `timestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of energy_data
-- ----------------------------

-- ----------------------------
-- Table structure for fuzzy_membership
-- ----------------------------
DROP TABLE IF EXISTS `fuzzy_membership`;
CREATE TABLE `fuzzy_membership`  (
  `id` int(0) NOT NULL,
  `variable_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `membership_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `threshold_value` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fuzzy_membership
-- ----------------------------

-- ----------------------------
-- Table structure for headphones
-- ----------------------------
DROP TABLE IF EXISTS `headphones`;
CREATE TABLE `headphones`  (
  `Headphone_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '耳机唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '耳机型号',
  `Manufacturer_Id` int(0) NULL DEFAULT NULL COMMENT '制造商ID（外键）',
  `Driver_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '驱动单元类型（如动圈、动铁）',
  `Ompedance_Ohms` int(0) NULL DEFAULT NULL COMMENT '阻抗（欧姆）',
  `Sensitivity_Db` decimal(5, 1) NULL DEFAULT NULL COMMENT '灵敏度（分贝）',
  `Frequency_Response_Hz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '频率响应范围（赫兹）',
  `Weight_Grams` decimal(10, 2) NULL DEFAULT NULL COMMENT '重量（克）',
  `Is_Wireless` tinyint(1) NULL DEFAULT NULL COMMENT '是否无线',
  `Battery_Life_Hours` int(0) NULL DEFAULT NULL COMMENT '电池续航时间（小时）',
  `Release_Date` date NULL DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格（美元）',
  `Noise_Cancellation` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持主动降噪',
  `Microphone` tinyint(1) NULL DEFAULT NULL COMMENT '是否内置麦克风',
  `Water_Resistance` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防水等级（如 IPX4）',
  `Impedance_Ohms` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Headphone_Id`) USING BTREE,
  INDEX `manufacturer_id`(`Manufacturer_Id`) USING BTREE,
  CONSTRAINT `headphones_ibfk_1` FOREIGN KEY (`Manufacturer_Id`) REFERENCES `manufacturers` (`Manufacturer_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of headphones
-- ----------------------------
INSERT INTO `headphones` VALUES (1, 'WH-1000XM4', 1, 'Dynamic', 32, 104.5, '4-40000', 254.00, 1, 30, '2020-08-06', 349.99, 1, 1, NULL, NULL);
INSERT INTO `headphones` VALUES (2, 'QuietComfort 45', 2, 'Dynamic', 20, 110.0, '10-24000', 240.00, 1, 24, '2021-09-23', 329.00, 1, 1, NULL, NULL);
INSERT INTO `headphones` VALUES (3, 'HD 660 S', 3, 'Dynamic', 150, 104.0, '10-41000', 260.00, 0, NULL, '2017-02-01', 499.95, 0, 0, NULL, NULL);
INSERT INTO `headphones` VALUES (4, 'ModelA', 1, 'Dynamic', NULL, 100.0, '20-20000', 200.00, 1, 15, '2022-01-15', 80.00, 1, 1, 'IPX7', 32);
INSERT INTO `headphones` VALUES (5, 'ModelB', 2, 'Dynamic', NULL, 102.0, '15-22000', 250.00, 1, 20, '2022-03-10', 90.00, 1, 1, 'IPX7', 30);
INSERT INTO `headphones` VALUES (6, 'ModelC', 3, 'Balanced Armature', NULL, 98.5, '10-25000', 300.00, 1, 18, '2022-05-20', 95.00, 1, 0, 'IPX7', 24);
INSERT INTO `headphones` VALUES (7, 'ModelD', 1, 'Dynamic', NULL, 105.0, '18-20000', 180.00, 0, NULL, '2021-11-05', 90.00, 0, 1, NULL, 32);
INSERT INTO `headphones` VALUES (8, 'ModelE', 2, 'Hybrid', NULL, 108.0, '10-40000', 220.00, 1, 25, '2023-02-14', 85.00, 1, 1, 'IPX5', 20);
INSERT INTO `headphones` VALUES (9, 'ModelF', 3, 'Dynamic', NULL, 100.0, '20-20000', 150.00, 1, 10, '2023-04-01', 120.00, 1, 1, 'IPX4', 32);
INSERT INTO `headphones` VALUES (10, 'ModelG', 1, 'Dynamic', NULL, 101.0, '18-22000', 180.00, 1, 12, '2023-06-10', 110.00, 1, 0, 'IPX6', 28);
INSERT INTO `headphones` VALUES (11, 'ModelH', 2, 'Dynamic', NULL, 102.0, '20-20000', 210.00, 1, 30, '2023-08-22', 999999.00, 1, 1, 'IPX7', 32);
INSERT INTO `headphones` VALUES (12, 'ModelI', 3, 'Dynamic', NULL, 100.0, '19-21000', 190.00, 1, 28, '2023-09-30', 500000.00, 1, 1, 'IPX7', 30);
INSERT INTO `headphones` VALUES (101, 'AquaBuds Pro', 100, NULL, NULL, NULL, NULL, 45.00, 1, 25, NULL, 89.99, 1, NULL, 'IPX7', NULL);
INSERT INTO `headphones` VALUES (102, 'ClearTone Mini', 101, NULL, NULL, NULL, NULL, 40.00, 1, 20, NULL, 79.99, 0, NULL, 'IPX7', NULL);
INSERT INTO `headphones` VALUES (103, 'SoundShield X1', 102, NULL, NULL, NULL, NULL, 50.00, 1, 30, NULL, 95.00, 1, NULL, 'IPX7', NULL);
INSERT INTO `headphones` VALUES (104, 'ModelA', 1, 'Dynamic', NULL, 100.0, '20-20000', 200.00, 1, 15, '2022-01-15', 80.00, 1, 1, 'IPX7', 32);
INSERT INTO `headphones` VALUES (105, 'ModelB', 2, 'Dynamic', NULL, 102.0, '15-22000', 250.00, 1, 20, '2022-03-10', 90.00, 1, 1, 'IPX7', 30);
INSERT INTO `headphones` VALUES (106, 'ModelC', 3, 'Balanced Armature', NULL, 98.5, '10-25000', 300.00, 1, 18, '2022-05-20', 95.00, 1, 0, 'IPX7', 24);
INSERT INTO `headphones` VALUES (107, 'ModelD', 1, 'Dynamic', NULL, 105.0, '18-20000', 180.00, 0, NULL, '2021-11-05', 90.00, 0, 1, NULL, 32);
INSERT INTO `headphones` VALUES (108, 'ModelE', 2, 'Hybrid', NULL, 108.0, '10-40000', 220.00, 1, 25, '2023-02-14', 85.00, 1, 1, 'IPX5', 20);
INSERT INTO `headphones` VALUES (109, 'ModelF', 3, 'Dynamic', NULL, 100.0, '20-20000', 150.00, 1, 10, '2023-04-01', 120.00, 1, 1, 'IPX4', 32);
INSERT INTO `headphones` VALUES (110, 'ModelG', 1, 'Dynamic', NULL, 101.0, '18-22000', 180.00, 1, 12, '2023-06-10', 110.00, 1, 0, 'IPX6', 28);
INSERT INTO `headphones` VALUES (111, 'ModelH', 2, 'Dynamic', NULL, 102.0, '20-20000', 210.00, 1, 30, '2023-08-22', 999999.00, 1, 1, 'IPX7', 32);
INSERT INTO `headphones` VALUES (112, 'ModelI', 3, 'Dynamic', NULL, 100.0, '19-21000', 190.00, 1, 28, '2023-09-30', 500000.00, 1, 1, 'IPX7', 30);
INSERT INTO `headphones` VALUES (113, 'ModelA', 1, 'Dynamic', NULL, 100.0, '20-20000', 200.00, 1, 15, '2022-01-15', 80.00, 1, 1, 'IPX7', 32);
INSERT INTO `headphones` VALUES (114, 'ModelB', 2, 'Dynamic', NULL, 102.0, '15-22000', 250.00, 1, 20, '2022-03-10', 90.00, 1, 1, 'IPX7', 30);
INSERT INTO `headphones` VALUES (115, 'ModelC', 3, 'Balanced Armature', NULL, 98.5, '10-25000', 300.00, 1, 18, '2022-05-20', 95.00, 1, 0, 'IPX7', 24);
INSERT INTO `headphones` VALUES (116, 'ModelD', 1, 'Dynamic', NULL, 105.0, '18-20000', 180.00, 0, NULL, '2021-11-05', 90.00, 0, 1, NULL, 32);
INSERT INTO `headphones` VALUES (117, 'ModelE', 2, 'Hybrid', NULL, 108.0, '10-40000', 220.00, 1, 25, '2023-02-14', 85.00, 1, 1, 'IPX5', 20);
INSERT INTO `headphones` VALUES (118, 'ModelF', 3, 'Dynamic', NULL, 100.0, '20-20000', 150.00, 1, 10, '2023-04-01', 120.00, 1, 1, 'IPX4', 32);
INSERT INTO `headphones` VALUES (119, 'ModelG', 1, 'Dynamic', NULL, 101.0, '18-22000', 180.00, 1, 12, '2023-06-10', 110.00, 1, 0, 'IPX6', 28);
INSERT INTO `headphones` VALUES (120, 'ModelH', 2, 'Dynamic', NULL, 102.0, '20-20000', 210.00, 1, 30, '2023-08-22', 999999.00, 1, 1, 'IPX7', 32);
INSERT INTO `headphones` VALUES (121, 'ModelI', 3, 'Dynamic', NULL, 100.0, '19-21000', 190.00, 1, 28, '2023-09-30', 500000.00, 1, 1, 'IPX7', 30);

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers`  (
  `Manufacturer_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Manufacturer_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商名称',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '制造商所在国家',
  `Revenue_Usd` decimal(15, 2) NULL DEFAULT NULL COMMENT '年度营业额（美元）',
  `Profit_Usd` decimal(15, 2) NULL DEFAULT NULL COMMENT '年度利润（美元）',
  `Market_Share_Percent` decimal(5, 2) NULL DEFAULT NULL COMMENT '市场份额（百分比）',
  `Employees` int(0) NULL DEFAULT NULL COMMENT '员工数量',
  `Founded_Year` year NULL DEFAULT NULL COMMENT '成立年份',
  `Headquarters` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '总部地址',
  `Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '官方网站',
  `Contact_Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  PRIMARY KEY (`Manufacturer_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
INSERT INTO `manufacturers` VALUES (1, 'Sony', 'Japan', 80000000000.00, 6000000000.00, 20.50, 110000, 1946, 'Tokyo, Japan', 'https://www.sony.com', 'support@sony.com');
INSERT INTO `manufacturers` VALUES (2, 'Bose', 'USA', 3000000000.00, 500000000.00, 15.00, 9000, 1964, 'Framingham, Massachusetts, USA', 'https://www.bose.com', 'support@bose.com');
INSERT INTO `manufacturers` VALUES (3, 'Sennheiser', 'Germany', 700000000.00, 100000000.00, 10.00, 2800, 1945, 'Wedemark, Germany', 'https://www.sennheiser.com', 'support@sennheiser.com');
INSERT INTO `manufacturers` VALUES (4, 'ManuA', 'USA', 5000000000.00, 500000000.00, 20.00, 500000, 1980, 'New York, USA', 'https://www.manua.com', 'contact@manua.com');
INSERT INTO `manufacturers` VALUES (5, 'ManuB', 'Germany', 7000000000.00, 800000000.00, 30.00, 800000, 1970, 'Berlin, Germany', 'https://www.manub.de', 'info@manub.de');
INSERT INTO `manufacturers` VALUES (6, 'ManuC', 'Japan', 1000000000.00, 100000000.00, 2.00, 500, 1990, 'Osaka, Japan', 'https://www.manuc.jp', 'support@manuc.jp');
INSERT INTO `manufacturers` VALUES (7, 'ManuD', 'South Korea', 1500000000.00, 150000000.00, 3.00, 800, 1985, 'Seoul, South Korea', 'https://www.manud.kr', 'help@manud.kr');
INSERT INTO `manufacturers` VALUES (8, 'ManuE', 'China', 20000000000.00, 2000000000.00, 25.00, 2000000, 1960, 'Shenzhen, China', 'https://www.manue.cn', 'service@manue.cn');
INSERT INTO `manufacturers` VALUES (9, 'ManuF', 'France', 18000000000.00, 1800000000.00, 22.00, 1500000, 1965, 'Paris, France', 'https://www.manuf.fr', 'contact@manuf.fr');
INSERT INTO `manufacturers` VALUES (100, 'Acme Audio', 'USA', NULL, NULL, 3.20, 150000000, 1950, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (101, 'Vintage Sound Co.', 'UK', NULL, NULL, 4.10, 120000000, 1965, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (102, 'RetroWave Electronics', 'Germany', NULL, NULL, 2.80, 110000000, 1970, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (103, 'ManuA', 'USA', 5000000000.00, 500000000.00, 20.00, 500000, 1980, 'New York, USA', 'https://www.manua.com', 'contact@manua.com');
INSERT INTO `manufacturers` VALUES (104, 'ManuB', 'Germany', 7000000000.00, 800000000.00, 30.00, 800000, 1970, 'Berlin, Germany', 'https://www.manub.de', 'info@manub.de');
INSERT INTO `manufacturers` VALUES (105, 'ManuC', 'Japan', 1000000000.00, 100000000.00, 2.00, 500, 1990, 'Osaka, Japan', 'https://www.manuc.jp', 'support@manuc.jp');
INSERT INTO `manufacturers` VALUES (106, 'ManuD', 'South Korea', 1500000000.00, 150000000.00, 3.00, 800, 1985, 'Seoul, South Korea', 'https://www.manud.kr', 'help@manud.kr');
INSERT INTO `manufacturers` VALUES (107, 'ManuE', 'China', 20000000000.00, 2000000000.00, 25.00, 2000000, 1960, 'Shenzhen, China', 'https://www.manue.cn', 'service@manue.cn');
INSERT INTO `manufacturers` VALUES (108, 'ManuF', 'France', 18000000000.00, 1800000000.00, 22.00, 1500000, 1965, 'Paris, France', 'https://www.manuf.fr', 'contact@manuf.fr');
INSERT INTO `manufacturers` VALUES (110, 'Acme Audio', 'USA', NULL, NULL, 3.20, 150000000, 1950, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (111, 'Vintage Sound Co.', 'UK', NULL, NULL, 4.10, 120000000, 1965, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (112, 'RetroWave Electronics', 'Germany', NULL, NULL, 2.80, 110000000, 1970, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (113, 'ManuA', 'USA', 5000000000.00, 500000000.00, 20.00, 500000, 1980, 'New York, USA', 'https://www.manua.com', 'contact@manua.com');
INSERT INTO `manufacturers` VALUES (114, 'ManuB', 'Germany', 7000000000.00, 800000000.00, 30.00, 800000, 1970, 'Berlin, Germany', 'https://www.manub.de', 'info@manub.de');
INSERT INTO `manufacturers` VALUES (115, 'ManuC', 'Japan', 1000000000.00, 100000000.00, 2.00, 500, 1990, 'Osaka, Japan', 'https://www.manuc.jp', 'support@manuc.jp');
INSERT INTO `manufacturers` VALUES (116, 'ManuD', 'South Korea', 1500000000.00, 150000000.00, 3.00, 800, 1985, 'Seoul, South Korea', 'https://www.manud.kr', 'help@manud.kr');
INSERT INTO `manufacturers` VALUES (117, 'ManuE', 'China', 20000000000.00, 2000000000.00, 25.00, 2000000, 1960, 'Shenzhen, China', 'https://www.manue.cn', 'service@manue.cn');
INSERT INTO `manufacturers` VALUES (118, 'ManuF', 'France', 18000000000.00, 1800000000.00, 22.00, 1500000, 1965, 'Paris, France', 'https://www.manuf.fr', 'contact@manuf.fr');

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records`  (
  `Record_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Headphone_Id` int(0) NULL DEFAULT NULL COMMENT '耳机ID（外键）',
  `User_Id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime(0) NULL DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime(0) NULL DEFAULT NULL COMMENT '使用结束时间',
  `Usage_Duration_Minutes` int(0) NULL DEFAULT NULL COMMENT '使用时长（分钟）',
  `Volume_Level_Percent` int(0) NULL DEFAULT NULL COMMENT '平均音量水平（百分比）',
  `Battery_Consumed_Percent` int(0) NULL DEFAULT NULL COMMENT '电池消耗百分比',
  `Noise_Cancellation_Used` tinyint(1) NULL DEFAULT NULL COMMENT '是否使用了主动降噪功能',
  `Microphone_Used` tinyint(1) NULL DEFAULT NULL COMMENT '是否使用了麦克风',
  `Audio_Quality_Rating` int(0) NULL DEFAULT NULL COMMENT '用户对音质的评分（1-5 分）',
  `Comfort_Rating` int(0) NULL DEFAULT NULL COMMENT '用户对舒适度的评分（1-5 分）',
  PRIMARY KEY (`Record_Id`) USING BTREE,
  INDEX `headphone_id`(`Headphone_Id`) USING BTREE,
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Headphone_Id`) REFERENCES `headphones` (`Headphone_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
INSERT INTO `usage_records` VALUES (1, 1, 101, '2023-10-01 10:00:00', '2023-10-01 12:00:00', 120, 70, 20, 1, 1, 5, 4);
INSERT INTO `usage_records` VALUES (2, 2, 102, '2023-10-02 14:00:00', '2023-10-02 16:30:00', 150, 80, 30, 1, 0, 4, 5);
INSERT INTO `usage_records` VALUES (3, 3, 103, '2023-10-03 09:00:00', '2023-10-03 11:00:00', 120, 60, NULL, 0, 0, 5, 5);
INSERT INTO `usage_records` VALUES (10, 1, 201, '2023-10-01 11:00:00', '2023-10-01 11:45:00', 45, 75, 60, 1, 1, 4, 4);
INSERT INTO `usage_records` VALUES (11, 2, 202, '2023-10-01 13:00:00', '2023-10-01 13:50:00', 50, 80, 55, 1, 0, 3, 5);
INSERT INTO `usage_records` VALUES (12, 3, 203, '2023-10-01 15:00:00', '2023-10-01 15:55:00', 55, 85, 70, 1, 1, 5, 5);
INSERT INTO `usage_records` VALUES (100, 101, NULL, NULL, NULL, 120, 85, 90, NULL, NULL, 3, NULL);
INSERT INTO `usage_records` VALUES (101, 102, NULL, NULL, NULL, 90, 90, 70, NULL, NULL, 2, NULL);
INSERT INTO `usage_records` VALUES (102, 103, NULL, NULL, NULL, 150, 82, 120, NULL, NULL, 3, NULL);
INSERT INTO `usage_records` VALUES (103, 1, 201, '2023-10-01 11:00:00', '2023-10-01 11:45:00', 45, 75, 60, 1, 1, 4, 4);
INSERT INTO `usage_records` VALUES (104, 2, 202, '2023-10-01 13:00:00', '2023-10-01 13:50:00', 50, 80, 55, 1, 0, 3, 5);
INSERT INTO `usage_records` VALUES (105, 3, 203, '2023-10-01 15:00:00', '2023-10-01 15:55:00', 55, 85, 70, 1, 1, 5, 5);
INSERT INTO `usage_records` VALUES (106, 1, 201, '2023-10-01 11:00:00', '2023-10-01 11:45:00', 45, 75, 60, 1, 1, 4, 4);
INSERT INTO `usage_records` VALUES (107, 2, 202, '2023-10-01 13:00:00', '2023-10-01 13:50:00', 50, 80, 55, 1, 0, 3, 5);
INSERT INTO `usage_records` VALUES (108, 3, 203, '2023-10-01 15:00:00', '2023-10-01 15:55:00', 55, 85, 70, 1, 1, 5, 5);

SET FOREIGN_KEY_CHECKS = 1;
