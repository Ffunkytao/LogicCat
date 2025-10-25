/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : mouse

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:28:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `Manufacturer_Id` int NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Manufacturer_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商名称',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '制造商所在国家',
  `Revenue_Usd` decimal(15,2) DEFAULT NULL COMMENT '年度营业额（美元）',
  `Profit_Usd` decimal(15,2) DEFAULT NULL COMMENT '年度利润（美元）',
  `Market_Share_Percent` decimal(5,2) DEFAULT NULL COMMENT '市场份额（百分比）',
  `Employees` int DEFAULT NULL COMMENT '员工数量',
  `Founded_year` year DEFAULT NULL COMMENT '成立年份',
  `Headquarters` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '总部地址',
  `Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '官方网站',
  `Contact_Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系邮箱',
  PRIMARY KEY (`Manufacturer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `manufacturers` VALUES (1, 'Logitech', 'Switzerland', 5000000000.00, 1200000000.00, 25.50, 8000, 1981, 'Lausanne, Switzerland', 'https://www.logitech.com', 'support@logitech.com');
INSERT INTO `manufacturers` VALUES (2, 'Razer', 'USA', 1200000000.00, 300000000.00, 15.00, 1500, 2005, 'Irvine, California, USA', 'https://www.razer.com', 'support@razer.com');
INSERT INTO `manufacturers` VALUES (3, 'Corsair', 'USA', 1800000000.00, 400000000.00, 12.00, 2000, 1994, 'Fremont, California, USA', 'https://www.corsair.com', 'support@corsair.com');
INSERT INTO `manufacturers` VALUES (4, 'SteelSeries', 'USA', 2500000000.00, 500000000.00, 18.00, 3000, 2001, 'California, USA', 'https://www.steelseries.com ', 'support@steelseries.com ');
INSERT INTO `manufacturers` VALUES (5, 'HighFreq Inc', 'USA', 1000000000.00, 200000000.00, 8.50, 1000, 2010, 'New York, USA', 'https://www.highfreq.com', 'support@highfreq.com');
INSERT INTO `manufacturers` VALUES (6, 'ThermoMice Co', 'USA', 800000000.00, 150000000.00, 8.00, 1200, 2018, '100 Heat St, San Jose', 'www.thermomice.com', 'support@thermomice.com');
INSERT INTO `manufacturers` VALUES (7, 'SpeedPower Tech', 'USA', 900000000.00, 180000000.00, 7.50, 1500, 2017, '200 Fast St, Austin', 'www.speedpower.com', 'support@speedpower.com');
INSERT INTO `manufacturers` VALUES (8, 'PrecisionTech Ltd', 'Germany', 600000000.00, 100000000.00, 4.00, 800, 2015, 'Berlin, Germany', 'www.precisiontech.de', 'support@precisiontech.de');
INSERT INTO `manufacturers` VALUES (9, 'PowerTech Inc', 'Germany', 750000000.00, 140000000.00, 6.00, 1200, 2010, 'Munich, Germany', 'www.powertech.de', 'support@powertech.de');
INSERT INTO `manufacturers` VALUES (10, 'QuantumClick Labs', 'Japan', 500000000.00, 80000000.00, 3.00, 600, 2020, 'Tokyo, Japan', 'www.quantumclick.jp', 'support@quantumclick.jp');
INSERT INTO `manufacturers` VALUES (11, 'HeavyDuty Mice', 'South Korea', 900000000.00, 200000000.00, 12.50, 1800, 2012, 'Seoul, South Korea', 'www.heavydutymice.kr', 'support@heavydutymice.kr');
INSERT INTO `manufacturers` VALUES (12, 'ExtremeMotion Tech', 'South Korea', 1200000000.00, 300000000.00, 9.00, 2500, 2018, 'Seoul, South Korea', 'www.extrememotion.kr', 'support@extrememotion.kr');
INSERT INTO `manufacturers` VALUES (13, 'EMI Solutions', 'USA', 1000000000.00, 250000000.00, 9.00, 2000, 2016, 'Austin, Texas', 'www.emisolutions.com', 'support@emisolutions.com');
INSERT INTO `manufacturers` VALUES (14, 'EMI Solutions', 'USA', 1000000000.00, 250000000.00, 9.00, 2000, 2016, 'Austin, Texas', 'www.emisolutions.com', 'support@emisolutions.com');
INSERT INTO `manufacturers` VALUES (15, 'EMI Solutions', 'USA', 1000000000.00, 250000000.00, 9.00, 2000, 2016, 'Austin, Texas', 'www.emisolutions.com', 'support@emisolutions.com');
INSERT INTO `manufacturers` VALUES (16, 'EMI Solutions', 'USA', 1000000000.00, 250000000.00, 9.00, 2000, 2016, 'Austin, Texas', 'www.emisolutions.com', 'support@emisolutions.com');
INSERT INTO `manufacturers` VALUES (17, 'QuantumClick Labs', 'Japan', 750000000.00, 150000000.00, 4.00, 1000, 2018, 'Tokyo, Japan', 'www.quantumclick.jp', 'support@quantumclick.jp');
INSERT INTO `manufacturers` VALUES (18, 'ChaosTech Inc', 'Canada', 900000000.00, 200000000.00, 18.00, 3000, 2008, 'Vancouver, Canada', 'www.chaostech.ca', 'support@chaostech.ca');
INSERT INTO `manufacturers` VALUES (19, 'LowPower Mice', 'Germany', 650000000.00, 120000000.00, 7.00, 1000, 2016, 'Berlin, Germany', 'www.lowpowermice.de', 'support@lowpowermice.de');
INSERT INTO `manufacturers` VALUES (20, 'UltraCable Tech', 'China', 400000000.00, 80000000.00, 5.00, 500, 2020, 'Shenzhen, China', 'www.ultracabletech.cn', 'support@ultracabletech.cn');
INSERT INTO `manufacturers` VALUES (21, 'LegacyPower Corp', 'USA', 2000000000.00, 500000000.00, 15.00, 2000, 1990, 'San Francisco, USA', 'www.legacypower.com', 'support@legacypower.com');
INSERT INTO `manufacturers` VALUES (22, 'ShortCable Ltd', 'Japan', 500000000.00, 100000000.00, 6.00, 800, 2005, 'Osaka, Japan', 'www.shortcable.jp', 'support@shortcable.jp');
INSERT INTO `manufacturers` VALUES (23, 'NoPDProtocol Co', 'China', 300000000.00, 60000000.00, 3.50, 400, 2010, 'Shanghai, China', 'www.noprotocol.cn', 'support@noprotocol.cn');
INSERT INTO `manufacturers` VALUES (24, 'PowerLeakage Inc', 'South Korea', 400000000.00, 70000000.00, 4.00, 600, 2015, 'Seoul, South Korea', 'www.powerleakage.kr', 'support@powerleakage.kr');
INSERT INTO `manufacturers` VALUES (25, 'ShortLifeTech', 'USA', 350000000.00, 60000000.00, 3.00, 500, 2020, 'Austin, Texas', 'www.shortlifetech.com', 'support@shortlifetech.com');
INSERT INTO `manufacturers` VALUES (26, 'ValueMice Inc', 'Germany', 450000000.00, 90000000.00, 5.00, 800, 2020, 'Berlin, Germany', 'www.valuemice.de', 'support@valuemice.de');
INSERT INTO `manufacturers` VALUES (27, 'UniqueCableTech', 'USA', 500000000.00, 100000000.00, 6.00, 1000, 2000, 'Austin, USA', 'www.uniquecabletech.com', 'support@uniquecabletech.com');
INSERT INTO `manufacturers` VALUES (28, 'BatteryMismatch Co', 'China', 700000000.00, 140000000.00, 9.00, 1200, 2010, 'Shenzhen, China', 'www.batterymismatch.cn', 'support@batterymismatch.cn');
INSERT INTO `manufacturers` VALUES (101, 'Logitech', 'Switzerland', 5000000000.00, 800000000.00, 25.50, 7000, 1981, 'Lausanne, Switzerland', 'https://www.logitech.com ', 'contact@logitech.com');
INSERT INTO `manufacturers` VALUES (102, 'Razer', 'USA', 3000000000.00, 450000000.00, 15.20, 3500, 2005, 'San Diego, USA', 'https://www.razer.com ', 'support@razer.com');
INSERT INTO `manufacturers` VALUES (103, 'Corsair', 'USA', 2000000000.00, 300000000.00, 10.80, 2000, 1994, 'Fremont, USA', 'https://www.corsair.com ', 'info@corsair.com');
INSERT INTO `manufacturers` VALUES (104, 'SteelSeries', 'USA', 1500000000.00, 200000000.00, 8.30, 1200, 2001, 'Chicago, USA', 'https://www.steelseries.com ', 'sales@steelseries.com');
INSERT INTO `manufacturers` VALUES (105, 'Xiaomi', 'China', 4000000000.00, 600000000.00, 18.70, 5000, 2010, 'Beijing, China', 'https://www.mi.com ', 'service@mi.com');
INSERT INTO `manufacturers` VALUES (9999, 'Test Manufacturer', 'USA', 100000000.00, 10000000.00, 15.50, 500, 2010, '123 Test St, Test City', 'www.testmanufacturer.com', 'contact@testmanufacturer.com');
COMMIT;

-- ----------------------------
-- Table structure for mice
-- ----------------------------
DROP TABLE IF EXISTS `mice`;
CREATE TABLE `mice` (
  `Mouse_Id` int NOT NULL AUTO_INCREMENT COMMENT '鼠标唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '鼠标型号',
  `Manufacturer_Id` int DEFAULT NULL COMMENT '制造商ID（外键）',
  `Sensor_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '传感器类型（如光学、激光）',
  `Dpi` int DEFAULT NULL COMMENT 'DPI（每英寸点数）',
  `Buttons` int DEFAULT NULL COMMENT '按键数量',
  `Weight_Grams` decimal(10,2) DEFAULT NULL COMMENT '重量（克）',
  `Is_Wireless` tinyint(1) DEFAULT NULL COMMENT '是否无线',
  `Battery_Life_Hours` int DEFAULT NULL COMMENT '电池续航时间（小时）',
  `Release_Date` date DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10,2) DEFAULT NULL COMMENT '价格（美元）',
  `Tracking_Speed_Ips` decimal(10,2) DEFAULT NULL COMMENT '追踪速度（英寸/秒）',
  `Acceleration_G` decimal(10,2) DEFAULT NULL COMMENT '加速度（重力加速度 g）',
  `Polling_Rate_Hz` int DEFAULT NULL COMMENT '轮询率（Hz）',
  `Cable_Length_Meters` decimal(5,2) DEFAULT NULL COMMENT '线缆长度（米）',
  PRIMARY KEY (`Mouse_Id`),
  KEY `manufacturer_id` (`Manufacturer_Id`),
  CONSTRAINT `mice_ibfk_1` FOREIGN KEY (`Manufacturer_Id`) REFERENCES `manufacturers` (`Manufacturer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of mice
-- ----------------------------
BEGIN;
INSERT INTO `mice` VALUES (1, 'G502 HERO', 1, 'Optical', 16000, 11, 121.00, 0, NULL, '2020-01-01', 79.99, 400.00, 10.00, 1000, 2.10);
INSERT INTO `mice` VALUES (2, 'DeathAdder V2', 2, 'Optical', 20000, 8, 82.00, 0, NULL, '2021-03-15', 69.99, 450.00, 50.00, 1000, 1.80);
INSERT INTO `mice` VALUES (3, 'Dark Core RGB Pro', 3, 'Optical', 18000, 8, 133.00, 1, 50, '2022-05-10', 99.99, 400.00, 40.00, 2000, NULL);
INSERT INTO `mice` VALUES (4, 'Wireless Eco', 2, 'Optical', 8000, 6, 101.00, 1, 60, '2023-06-01', 69.99, 200.00, 20.00, 500, 0.00);
INSERT INTO `mice` VALUES (5, 'Rival 800X', 4, 'Optical', 16000, 8, 105.00, 1, 80, '2023-08-20', 89.99, 350.00, 35.00, 1000, 0.00);
INSERT INTO `mice` VALUES (6, 'Viper 9000', 2, 'Optical', 18000, 12, 98.00, 1, 70, '2023-01-01', 129.99, 420.00, 45.00, 2000, 2.00);
INSERT INTO `mice` VALUES (7, 'HyperWire X', 2, 'Laser', 20000, 10, 120.00, 1, 90, '2023-03-15', 149.99, 500.00, 55.00, 4000, 0.00);
INSERT INTO `mice` VALUES (8, 'HeatBlade X', 6, 'Optical', 12000, 6, 90.00, 1, 48, '2023-05-10', 59.99, 300.00, 35.00, 500, 1.50);
INSERT INTO `mice` VALUES (9, 'HyperWire X', 2, 'Optical', 16000, 8, 120.00, 1, 70, '2022-12-01', 89.99, 450.00, 8.00, 1000, 1.50);
INSERT INTO `mice` VALUES (10, 'HyperSpeed X1', 7, 'Optical', 16000, 8, 85.00, 1, 48, '2023-02-10', 129.99, 401.00, 30.00, 1001, 0.00);
INSERT INTO `mice` VALUES (11, 'HyperOptic X', 7, 'Optical', 18000, 8, 90.00, 1, 60, '2023-03-15', 149.99, 500.00, 50.00, 2000, 2.00);
INSERT INTO `mice` VALUES (12, 'PowerBlade X', 9, 'Optical', 20000, 10, 100.00, 1, 90, '2023-04-01', 159.99, 500.00, 60.00, 4000, 0.00);
INSERT INTO `mice` VALUES (13, 'Q-Blade X', 10, 'Laser', 20000, 12, 80.00, 1, 100, '2023-06-01', 199.99, 600.00, 70.00, 8000, 0.00);
INSERT INTO `mice` VALUES (14, 'TitanBlade X', 11, 'Optical', 16000, 10, 155.00, 0, NULL, '2022-09-01', 179.99, 450.00, 30.00, 1000, 1.80);
INSERT INTO `mice` VALUES (15, 'HyperG Force', 12, 'Laser', 20000, 12, 200.00, 1, 90, '2023-07-20', 249.99, 400.00, 85.00, 2000, 2.00);
INSERT INTO `mice` VALUES (16, 'EMI-Blade X', 14, 'Optical', 16000, 8, 155.00, 1, 72, '2023-07-15', 149.99, 400.00, 35.00, 2000, 1.50);
INSERT INTO `mice` VALUES (17, 'EMI-Blade X', 15, 'Optical', 16000, 8, 155.00, 1, 72, '2023-07-15', 149.99, 400.00, 35.00, 2000, 1.50);
INSERT INTO `mice` VALUES (18, 'EMI-Blade X', 16, 'Optical', 16000, 8, 155.00, 1, 72, '2023-07-15', 149.99, 400.00, 35.00, 2000, 1.50);
INSERT INTO `mice` VALUES (19, 'DPI-Blade X', 17, 'Optical', 16000, 8, 120.00, 1, 90, '2023-05-10', 129.99, 450.00, 55.00, 2000, 0.00);
INSERT INTO `mice` VALUES (20, 'FractalBlade Z', 18, 'Laser', 16000, 10, 120.00, 1, 90, '2023-06-01', 179.99, 500.00, 70.00, 4000, 0.00);
INSERT INTO `mice` VALUES (21, 'LowPower Blade', 19, 'Optical', 12000, 6, 130.00, 1, 1, '2023-08-01', 49.99, 300.00, 25.00, 500, 1.80);
INSERT INTO `mice` VALUES (22, 'UltraCable X1', 20, 'Optical', 12000, 8, 125.00, 0, NULL, '2023-09-01', 39.99, 250.00, 20.00, 250, 1.20);
INSERT INTO `mice` VALUES (23, 'LegacyBlade X', 21, 'Optical', 16000, 8, 95.00, 0, NULL, '2022-10-01', 80.00, 400.00, 30.00, 1000, 1.80);
INSERT INTO `mice` VALUES (24, 'ShortBlade X', 22, 'Optical', 16000, 7, 160.00, 0, NULL, '2023-03-10', 69.99, 400.00, 40.00, 1000, 0.80);
INSERT INTO `mice` VALUES (25, 'NoPD Blade X', 23, 'Optical', 18000, 7, 120.00, 1, 5, '2023-09-01', 30.00, 400.00, 30.00, 1000, 0.00);
INSERT INTO `mice` VALUES (26, 'LeakBlade X', 24, 'Laser', 12000, 6, 100.00, 1, 50, '2023-05-01', 59.99, 300.00, 25.00, 500, 0.00);
INSERT INTO `mice` VALUES (27, 'ShortLife Blade', 25, 'Optical', 12000, 6, 100.00, 1, 50, '2023-01-15', 49.99, 300.00, 20.00, 250, 0.00);
INSERT INTO `mice` VALUES (28, 'ValueBlade X', 26, 'Optical', 16000, 8, 90.00, 1, 80, '2023-07-01', 50.00, 400.00, 30.00, 1000, 0.00);
INSERT INTO `mice` VALUES (29, 'CableBlade X', 27, 'Optical', 12000, 6, 120.00, 0, NULL, '2023-05-10', 39.99, 200.00, 15.00, 250, 1.20);
INSERT INTO `mice` VALUES (30, 'Wireless NoBattery X', 28, 'Laser', 20000, 10, 85.00, 1, NULL, '2023-06-01', 129.99, 500.00, 60.00, 4000, 0.00);
INSERT INTO `mice` VALUES (31, 'DPI-Polling Glitch', 28, 'Optical', 16000, 8, 110.00, 1, 72, '2023-08-01', 149.99, 450.00, 50.00, 500, 1.50);
INSERT INTO `mice` VALUES (101, 'MX Master 3', 101, 'Optical', 4000, 9, 140.50, 1, 720, '2020-09-01', 99.99, 1.50, 12.00, 1000, 1.00);
INSERT INTO `mice` VALUES (102, 'DeathAdder V3', 102, 'Optical', 20000, 8, 89.00, 1, 1440, '2022-03-15', 89.99, 2.00, 50.00, 4000, 0.00);
INSERT INTO `mice` VALUES (103, 'Sabre RGB Pro', 103, 'Laser', 16000, 7, 120.00, 0, NULL, '2021-11-20', 59.99, 1.20, 30.00, 1000, 1.80);
INSERT INTO `mice` VALUES (104, 'Rival 600', 104, 'Optical', 12000, 8, 98.30, 0, NULL, '2019-05-10', 69.99, 1.00, 20.00, 500, 2.00);
INSERT INTO `mice` VALUES (105, 'Mi Wireless Mouse', 105, 'Optical', 800, 6, 105.00, 1, 360, '2023-01-25', 29.99, 0.80, 10.00, 125, 0.00);
INSERT INTO `mice` VALUES (9999, 'HyperCalibrate_Mouse', 9999, 'Optical', 16000, 8, 80.00, 1, 100, '2023-01-01', 100.00, 10.00, 50.00, 1000, 2.00);
COMMIT;

-- ----------------------------
-- Table structure for sensor_data
-- ----------------------------
DROP TABLE IF EXISTS `sensor_data`;
CREATE TABLE `sensor_data` (
  `Sensor_Id` int NOT NULL AUTO_INCREMENT COMMENT '传感器数据唯一标识',
  `Mouse_Id` int DEFAULT NULL COMMENT '鼠标ID（外键）',
  `Sensor_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '传感器类型（如光学、激光）',
  `Max_Dpi` int DEFAULT NULL COMMENT '最大DPI',
  `Tracking_Speed_Ips` decimal(10,2) DEFAULT NULL COMMENT '追踪速度（英寸/秒）',
  `Acceleration_G` decimal(10,2) DEFAULT NULL COMMENT '加速度（重力加速度 g）',
  `Polling_Rate_Hz` int DEFAULT NULL COMMENT '轮询率（Hz）',
  `Lift_Off_Distance_Mm` decimal(5,2) DEFAULT NULL COMMENT '抬升距离（毫米）',
  `Sensor_Life_Hours` int DEFAULT NULL COMMENT '传感器寿命（小时）',
  `Calibration_Count` int DEFAULT NULL COMMENT '校准次数',
  `Last_Calibration_Date` date DEFAULT NULL COMMENT '最后一次校准日期',
  PRIMARY KEY (`Sensor_Id`),
  KEY `mouse_id` (`Mouse_Id`),
  CONSTRAINT `sensor_data_ibfk_1` FOREIGN KEY (`Mouse_Id`) REFERENCES `mice` (`Mouse_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sensor_data
-- ----------------------------
BEGIN;
INSERT INTO `sensor_data` VALUES (1, 1, 'Optical', 16000, 400.00, 40.00, 1000, 2.00, 10000, 5, '2023-09-01');
INSERT INTO `sensor_data` VALUES (2, 2, 'Optical', 20000, 450.00, 50.00, 1000, 1.50, 12000, 3, '2023-08-15');
INSERT INTO `sensor_data` VALUES (3, 3, 'Optical', 18000, 400.00, 40.00, 2000, 2.50, 15000, 7, '2023-07-20');
INSERT INTO `sensor_data` VALUES (4, 4, 'Optical', 8000, 200.00, 20.00, 500, 1.00, 20000, 2, '2023-10-01');
INSERT INTO `sensor_data` VALUES (5, 5, 'Optical', 16000, 350.00, 35.00, 1000, 1.20, 18000, 6, '2023-09-15');
INSERT INTO `sensor_data` VALUES (6, 5, 'Optical', 16000, 350.00, 35.00, 1000, 1.20, 18000, 6, '2023-08-20');
INSERT INTO `sensor_data` VALUES (7, 5, 'Optical', 16000, 350.00, 35.00, 1000, 1.20, 18000, 6, '2023-08-01');
INSERT INTO `sensor_data` VALUES (8, 5, 'Optical', 16000, 350.00, 35.00, 1000, 1.20, 18000, 6, '2023-07-05');
INSERT INTO `sensor_data` VALUES (29, 8, 'Optical', 12000, 300.00, 35.00, 500, 1.00, 18000, 2, '2023-11-01');
INSERT INTO `sensor_data` VALUES (30, 8, 'Optical', 12000, 300.00, 35.00, 500, 1.00, 18000, 3, '2023-11-06');
INSERT INTO `sensor_data` VALUES (35, 11, 'Optical', 18500, 500.00, 50.00, 2000, 1.40, 25000, 4, '2023-10-15');
INSERT INTO `sensor_data` VALUES (36, 13, 'Laser', 20000, 600.00, 70.00, 8000, 0.80, 30000, 1, '2023-08-20');
INSERT INTO `sensor_data` VALUES (37, 15, 'Laser', 20000, 400.00, 85.00, 2000, 1.00, 20000, 2, '2023-10-15');
INSERT INTO `sensor_data` VALUES (38, 16, 'Optical', 16000, 400.00, 35.00, 2000, 1.20, 20000, 3, '2023-11-01');
INSERT INTO `sensor_data` VALUES (39, 16, 'Optical', 16000, 400.00, 35.00, 2000, 1.20, 20000, 4, '2023-11-03');
INSERT INTO `sensor_data` VALUES (42, 19, 'Optical', 16000, 450.00, 55.00, 2000, 1.00, 25000, 2, '2023-10-15');
INSERT INTO `sensor_data` VALUES (43, 20, 'Laser', 16000, 500.00, 70.00, 4000, 1.20, 30000, 5, '2023-10-20');
INSERT INTO `sensor_data` VALUES (44, 20, 'Laser', 16000, 500.00, 70.00, 4000, 1.20, 30000, 6, '2023-10-25');
INSERT INTO `sensor_data` VALUES (45, 25, 'Optical', 18000, 400.00, 30.00, 1000, 1.50, 15000, 1, '2023-10-10');
INSERT INTO `sensor_data` VALUES (46, 27, 'Optical', 12000, 300.00, 20.00, 250, 1.00, 1, 1, '2023-10-01');
INSERT INTO `sensor_data` VALUES (47, 29, 'Optical', 12000, 200.00, 15.00, 250, 2.50, 10000, 3, '2023-10-05');
INSERT INTO `sensor_data` VALUES (48, 31, 'Optical', 16000, 450.00, 50.00, 500, 1.00, 20000, 2, '2023-09-20');
INSERT INTO `sensor_data` VALUES (101, 101, 'Optical', 4000, 1.50, 12.00, 1000, 2.50, 50000, 7, '2023-10-05');
INSERT INTO `sensor_data` VALUES (102, 101, 'Optical', 4000, 1.50, 12.00, 1000, 2.50, 50000, 7, '2023-10-10');
INSERT INTO `sensor_data` VALUES (103, 101, 'Optical', 4000, 1.50, 12.00, 1000, 2.50, 50000, 7, '2023-10-15');
INSERT INTO `sensor_data` VALUES (104, 101, 'Optical', 4000, 1.50, 12.00, 1000, 2.50, 50000, 7, '2023-10-20');
INSERT INTO `sensor_data` VALUES (105, 101, 'Optical', 4000, 1.50, 12.00, 1000, 2.50, 50000, 7, '2023-10-25');
INSERT INTO `sensor_data` VALUES (106, 101, 'Optical', 4000, 1.50, 12.00, 1000, 2.50, 50000, 7, '2023-10-30');
INSERT INTO `sensor_data` VALUES (107, 102, 'Optical', 20000, 2.00, 50.00, 4000, 1.80, 80000, 6, '2023-09-01');
INSERT INTO `sensor_data` VALUES (108, 102, 'Optical', 20000, 2.00, 50.00, 4000, 1.80, 80000, 6, '2023-09-10');
INSERT INTO `sensor_data` VALUES (109, 102, 'Optical', 20000, 2.00, 50.00, 4000, 1.80, 80000, 6, '2023-09-20');
INSERT INTO `sensor_data` VALUES (110, 102, 'Optical', 20000, 2.00, 50.00, 4000, 1.80, 80000, 6, '2023-09-28');
INSERT INTO `sensor_data` VALUES (111, 102, 'Optical', 20000, 2.00, 50.00, 4000, 1.80, 80000, 6, '2023-10-05');
INSERT INTO `sensor_data` VALUES (112, 102, 'Optical', 20000, 2.00, 50.00, 4000, 1.80, 80000, 6, '2023-10-12');
COMMIT;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `Record_ID` int NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Mouse_ID` int DEFAULT NULL COMMENT '鼠标ID（外键）',
  `User_ID` int DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '使用结束时间',
  `Distance_Moved_Meters` decimal(10,2) DEFAULT NULL COMMENT '移动总距离（米）',
  `Clicks` int DEFAULT NULL COMMENT '点击总次数',
  `Scrolls` int DEFAULT NULL COMMENT '滚动总次数',
  `Average_Dpi` int DEFAULT NULL COMMENT '平均DPI',
  `Max_Dpi` int DEFAULT NULL COMMENT '最大DPI',
  `Usage_Duration_Minutes` int DEFAULT NULL COMMENT '使用时长（分钟）',
  `Energy_Consumed_Joules` decimal(10,2) DEFAULT NULL COMMENT '消耗能量（焦耳）',
  PRIMARY KEY (`Record_ID`) USING BTREE,
  KEY `mouse_id` (`Mouse_ID`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Mouse_ID`) REFERENCES `mice` (`Mouse_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
BEGIN;
INSERT INTO `usage_records` VALUES (1, 1, 101, '2023-10-01 10:00:00', '2023-10-01 12:00:00', 1500.50, 1200, 300, 8000, 16000, 120, 5000.00);
INSERT INTO `usage_records` VALUES (2, 2, 102, '2023-10-02 14:00:00', '2023-10-02 16:30:00', 2000.75, 1500, 400, 10000, 20000, 150, 6000.00);
INSERT INTO `usage_records` VALUES (3, 3, 103, '2023-10-03 09:00:00', '2023-10-03 11:00:00', 1000.25, 800, 200, 9000, 18000, 120, 4500.00);
INSERT INTO `usage_records` VALUES (4, 4, 104, '2023-10-04 10:00:00', '2023-10-04 10:30:00', 0.50, 10, 5, 5000, 8000, 30, 21000.00);
INSERT INTO `usage_records` VALUES (5, 5, 105, '2023-09-01 09:00:00', '2023-09-01 11:00:00', 500.00, 600, 150, 12000, 16000, 120, 3000.00);
INSERT INTO `usage_records` VALUES (6, 7, 106, '2023-11-01 10:00:00', '2023-11-01 12:00:00', 500.00, 800, 200, 4000, 20000, 120, 10000.00);
INSERT INTO `usage_records` VALUES (7, 7, 106, '2023-11-02 14:00:00', '2023-11-02 16:00:00', 100.00, 100, 50, 16000, 20000, 120, 20000.00);
INSERT INTO `usage_records` VALUES (8, 1, 201, '2023-11-01 09:00:00', '2023-11-01 09:06:00', 10.50, 601, 100, 16000, 16000, 6, 3000.00);
INSERT INTO `usage_records` VALUES (9, 8, 202, '2023-11-01 10:00:00', '2023-11-01 12:00:00', 100.00, 500, 100, 10000, 12000, 120, 5000.00);
INSERT INTO `usage_records` VALUES (11, 10, 204, '2023-11-05 10:00:00', '2023-11-05 12:00:00', 50.00, 300, 80, 15000, 16000, 120, 100000.00);
INSERT INTO `usage_records` VALUES (12, 1, 301, '2023-11-01 10:00:00', '2023-11-01 10:01:00', 0.00, 1201, 0, 8000, 16000, 1, 10000.00);
INSERT INTO `usage_records` VALUES (13, 1, 301, '2023-11-01 10:01:00', '2023-11-01 10:02:00', 0.00, 1201, 0, 8000, 16000, 1, 10000.00);
INSERT INTO `usage_records` VALUES (14, 1, 301, '2023-11-01 10:02:00', '2023-11-01 10:03:00', 0.00, 1201, 0, 8000, 16000, 1, 10000.00);
INSERT INTO `usage_records` VALUES (15, 1, 301, '2023-11-01 10:03:00', '2023-11-01 10:04:00', 0.00, 1201, 0, 8000, 16000, 1, 10000.00);
INSERT INTO `usage_records` VALUES (16, 1, 301, '2023-11-01 10:04:00', '2023-11-01 10:05:00', 0.00, 1201, 0, 8000, 16000, 1, 10000.00);
INSERT INTO `usage_records` VALUES (17, 12, 302, '2023-11-10 09:00:00', '2023-11-10 09:01:00', 1000.00, 100, 50, 18000, 20000, 1, 50000.00);
INSERT INTO `usage_records` VALUES (18, 13, 401, '2023-11-15 10:00:00', '2023-11-15 10:00:02', 0.00, 1024, 0, 18000, 20000, 2, 5000.00);
INSERT INTO `usage_records` VALUES (19, 13, 401, '2023-11-15 10:00:03', '2023-11-15 10:00:05', 0.00, 2048, 0, 18000, 20000, 2, 6000.00);
INSERT INTO `usage_records` VALUES (20, 14, 501, '2023-11-01 08:00:00', '2023-11-07 20:00:00', 1000.00, 1200, 300, 12000, 16000, 3420, 50000.00);
INSERT INTO `usage_records` VALUES (21, 19, 601, '2023-11-01 09:00:00', '2023-11-01 09:30:00', 500.00, 300, 50, 10000, 20000, 30, 5000.00);
INSERT INTO `usage_records` VALUES (22, 20, 801, '2023-11-01 09:00:00', '2023-11-01 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (23, 20, 801, '2023-11-02 09:00:00', '2023-11-02 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (24, 20, 801, '2023-11-03 09:00:00', '2023-11-03 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (25, 20, 801, '2023-11-04 09:00:00', '2023-11-04 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (26, 20, 801, '2023-11-05 09:00:00', '2023-11-05 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (27, 20, 801, '2023-11-06 09:00:00', '2023-11-06 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (28, 20, 801, '2023-11-07 09:00:00', '2023-11-07 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (29, 20, 801, '2023-11-08 09:00:00', '2023-11-08 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (30, 20, 801, '2023-11-09 09:00:00', '2023-11-09 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (31, 20, 801, '2023-11-10 09:00:00', '2023-11-10 09:05:00', 0.00, 100, 0, 8000, 16000, 5, 500.00);
INSERT INTO `usage_records` VALUES (32, 21, 901, '2023-11-15 08:00:00', '2023-11-15 09:01:00', 0.00, 50, 10, 10000, 12000, 61, 10000.00);
INSERT INTO `usage_records` VALUES (33, 22, 902, '2023-11-20 08:00:00', '2023-11-20 08:30:00', 0.00, 600, 50, 10000, 12000, 30, 1500.00);
INSERT INTO `usage_records` VALUES (34, 22, 902, '2023-11-21 09:00:00', '2023-11-21 09:15:00', 0.00, 300, 20, 10000, 12000, 15, 750.00);
INSERT INTO `usage_records` VALUES (35, 24, 903, '2023-11-25 10:00:00', '2023-11-25 10:10:00', 0.00, 50, 300, 15000, 16000, 10, 2000.00);
INSERT INTO `usage_records` VALUES (36, 25, 904, '2023-11-25 10:00:00', '2023-11-25 10:30:00', 0.00, 100, 50, 15000, 18000, 30, 5000.00);
INSERT INTO `usage_records` VALUES (37, 26, 905, '2023-11-25 08:00:00', '2023-11-25 08:10:00', 0.00, 10, 5, 10000, 12000, 10, 5400000.00);
INSERT INTO `usage_records` VALUES (38, 27, 906, '2023-11-25 08:00:00', '2023-11-25 15:13:00', 0.00, 10, 5, 10000, 12000, 433, 1000.00);
INSERT INTO `usage_records` VALUES (101, 101, 5001, '2023-10-05 09:00:00', '2023-10-05 17:30:00', 1500.50, 2500, 300, 4000, 4000, 510, 15000.00);
INSERT INTO `usage_records` VALUES (102, 102, 5002, '2023-10-06 10:15:00', '2023-10-06 18:45:00', 1200.80, 2000, 250, 18000, 20000, 500, 12000.00);
INSERT INTO `usage_records` VALUES (103, 103, 5003, '2023-10-07 08:30:00', '2023-10-07 16:00:00', 900.30, 1800, 200, 16000, 16000, 450, 9000.00);
INSERT INTO `usage_records` VALUES (104, 104, 5004, '2023-10-08 11:00:00', '2023-10-08 19:20:00', 800.70, 1500, 180, 12000, 12000, 500, 8000.00);
INSERT INTO `usage_records` VALUES (105, 105, 5005, '2023-10-09 13:00:00', '2023-10-09 20:00:00', 600.20, 1000, 100, 800, 800, 420, 5000.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
