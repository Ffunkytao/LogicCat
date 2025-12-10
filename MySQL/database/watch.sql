/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : watch

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:28:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers`  (
  `Manufacturer_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Manufacturer_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商名称',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '制造商所在国家',
  `Revenue_Usd` decimal(15, 2) NULL DEFAULT NULL COMMENT '年度营业额（美元）',
  `Profit_Usd` double NULL DEFAULT NULL,
  `Market_Share_Percent` decimal(5, 2) NULL DEFAULT NULL COMMENT '市场份额（百分比）',
  `Employees` int(0) NULL DEFAULT NULL COMMENT '员工数量',
  `Founded_Year` year NULL DEFAULT NULL COMMENT '成立年份',
  `Headquarters` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '总部地址',
  `Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '官方网站',
  `Contact_Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  PRIMARY KEY (`Manufacturer_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
INSERT INTO `manufacturers` VALUES (1, 'Apple', 'USA', 365000000000.00, 95000000000, 30.00, 147000, 1976, 'Cupertino, California, USA', 'https://www.apple.com', 'support@apple.com');
INSERT INTO `manufacturers` VALUES (2, 'Samsung', 'South Korea', 200000000000.00, 30000000000, 20.00, 287000, 1938, 'Suwon, South Korea', 'https://www.samsung.com', 'support@samsung.com');
INSERT INTO `manufacturers` VALUES (3, 'Garmin', 'USA', 5000000000.00, 1000000000, 10.00, 18000, 1989, 'Olathe, Kansas, USA', 'https://www.garmin.com', 'support@garmin.com');
INSERT INTO `manufacturers` VALUES (4, 'Fitbit', 'USA', 2000000000.00, 300000000, 4.50, 1800, 2007, 'San Francisco, California, USA', 'https://www.fitbit.com\r\n', 'support@fitbit.com\r\n');
INSERT INTO `manufacturers` VALUES (5, 'Casio', 'Japan', 3000000000.00, 500000000, 3.00, 12000, 1974, 'Tokyo, Japan', 'https://www.casio.com\r\n', 'support@casio.com\r\n');
INSERT INTO `manufacturers` VALUES (6, 'Seiko', 'Japan', 2500000000.00, 400000000, 2.50, 13000, 1937, 'Tokyo, Japan', 'https://www.seikowatches.com\r\n', 'support@seiko.com\r\n');
INSERT INTO `manufacturers` VALUES (7, 'Fossil', 'USA', 1500000000.00, 200000000, 1.50, 10000, 1984, 'Richardson, Texas, USA', 'https://www.fossil.com\r\n', 'support@fossil.com\r\n');
INSERT INTO `manufacturers` VALUES (8, 'Global Precision Time', 'Germany', 800000000.00, 100000000, 1.80, 20000, 1990, 'Berlin, Germany (CET)', 'https://www.gptime.com\r\n', 'info@gptime.com\r\n');
INSERT INTO `manufacturers` VALUES (9, 'Harbor Port Time', 'USA', 500000000.00, 60000000, 1.20, 12000, 2005, 'Harbor Port City, USA (PST)', 'https://www.harborporttime.com\r\n', 'support@harborporttime.com\r\n');
INSERT INTO `manufacturers` VALUES (10, 'Ocean Coast Watch', 'USA', 300000000.00, 25000000, 0.80, 8000, 2010, 'Ocean Coast City, USA', 'https://www.oceancoastwatch.com\r\n', 'info@oceancoastwatch.com\r\n');
INSERT INTO `manufacturers` VALUES (11, 'Mega Workforce Industries', 'USA', 500000000.00, 80000000, 2.00, 400000000, 2000, 'Dallas, Texas, USA', 'https://www.megaworkforce.com\r\n', 'contact@megaworkforce.com\r\n');
INSERT INTO `manufacturers` VALUES (12, 'Era20Alpha Watches', 'UK', 1000000000.00, 200000000, 60.00, 10000, 2003, 'London, UK', 'https://www.era20alpha.com\r\n', 'info@era20alpha.com\r\n');
INSERT INTO `manufacturers` VALUES (13, 'Era20Beta Wearables', 'France', 700000000.00, 150000000, 30.00, 8000, 2006, 'Paris, France', 'https://www.era20beta.com\r\n', 'info@era20beta.com\r\n');
INSERT INTO `manufacturers` VALUES (14, 'Era20Gamma Tech', 'Germany', 300000000.00, 50000000, 10.00, 6000, 2010, 'Munich, Germany', 'https://www.era20gamma.com\r\n', 'info@era20gamma.com\r\n');
INSERT INTO `manufacturers` VALUES (15, 'Lean Hyper Growth Labs', 'USA', 120000000.00, 9000000, 6.50, 50, 2018, 'Austin, Texas, USA', 'https://www.leanhglabs.com\r\n', 'contact@leanhglabs.com\r\n');
INSERT INTO `manufacturers` VALUES (16, 'Global Corp A', 'USA', NULL, 100000000000000, NULL, 1000, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (17, 'World Corp B', 'USA', NULL, 100000000000000, NULL, 10000, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (18, 'Asian Heavy Industry', 'China', NULL, 100000000000000, NULL, 500, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (19, 'Pacific Rail Systems', 'China', NULL, 100000000000000, NULL, 5000, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (20, 'European Transport Solutions', 'Germany', NULL, 100000000000000, NULL, 1500, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (21, 'Nippon Rail Innovators', 'Japan', NULL, 1000000000000, NULL, 10000, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (31, 'TechCorp America', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (32, 'Euro Watchworks', 'Germany', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (33, 'Asia Smart Devices', 'China', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (41, 'Watch Maker 1', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (42, 'Watch Maker 2', 'DEU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (51, 'Activity Trackers Inc', 'Global', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (56, 'Titan Dynamics', 'JPN', NULL, 100000000000000, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (57, 'Rising Sun Corp', 'JPN', NULL, 100000000000000, NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (58, 'Zenith Tech', 'KOR', NULL, 100000000000000, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (59, 'Galaxy Systems', 'KOR', NULL, 100000000000000, NULL, 5, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sensor_data
-- ----------------------------
DROP TABLE IF EXISTS `sensor_data`;
CREATE TABLE `sensor_data`  (
  `Sensor_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '传感器数据唯一标识',
  `Watch_Id` int(0) NULL DEFAULT NULL COMMENT '手表ID（外键）',
  `Heart_Rate_Sensor` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持心率传感器',
  `Gps` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持 GPS',
  `Accelerometer` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持加速度计',
  `Gyroscope` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持陀螺仪',
  `Blood_Oxygen_Sensor` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持血氧传感器',
  `Ecg_Sensor` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持心电图传感器',
  `Temperature_Sensor` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持温度传感器',
  `Altimeter` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持高度计',
  `Ambient_Light_Sensor` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持环境光传感器',
  PRIMARY KEY (`Sensor_Id`) USING BTREE,
  INDEX `watch_id`(`Watch_Id`) USING BTREE,
  CONSTRAINT `sensor_data_ibfk_1` FOREIGN KEY (`Watch_Id`) REFERENCES `watches` (`Watch_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sensor_data
-- ----------------------------
INSERT INTO `sensor_data` VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `sensor_data` VALUES (2, 2, 1, 1, 1, 1, 1, 0, 1, 1, 1);
INSERT INTO `sensor_data` VALUES (3, 3, 1, 1, 1, 1, 1, 0, 0, 1, 0);
INSERT INTO `sensor_data` VALUES (4, 4, 0, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `sensor_data` VALUES (5, 5, 0, 1, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO `sensor_data` VALUES (6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `sensor_data` VALUES (7, 9, 1, 1, 1, 1, 1, 1, 0, 0, 1);
INSERT INTO `sensor_data` VALUES (8, 10, 1, 1, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO `sensor_data` VALUES (9, 7, 1, 0, 1, 1, 0, 0, 0, 1, 0);
INSERT INTO `sensor_data` VALUES (10, 11, 1, 1, 1, 1, 1, 1, 0, 0, 1);
INSERT INTO `sensor_data` VALUES (11, 31, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sensor_data` VALUES (12, 32, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sensor_data` VALUES (13, 33, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sensor_data` VALUES (14, 34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sensor_data` VALUES (15, 35, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records`  (
  `Record_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Watch_Id` int(0) NULL DEFAULT NULL COMMENT '手表ID（外键）',
  `User_Id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime(0) NULL DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime(0) NULL DEFAULT NULL COMMENT '使用结束时间',
  `Steps` int(0) NULL DEFAULT NULL COMMENT '步数',
  `Calories_Burned` decimal(10, 2) NULL DEFAULT NULL COMMENT '消耗的卡路里（千卡）',
  `Heart_Rate_Avg_Bpm` int(0) NULL DEFAULT NULL COMMENT '平均心率（次/分钟）',
  `Sleep_Duration_Minutes` int(0) NULL DEFAULT NULL COMMENT '睡眠时长（分钟）',
  `Distance_Km` decimal(10, 2) NULL DEFAULT NULL COMMENT '运动距离（公里）',
  `Activity_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '活动类型（如跑步、游泳、骑行）',
  `Battery_Consumed_Percent` int(0) NULL DEFAULT NULL COMMENT '电池消耗百分比',
  PRIMARY KEY (`Record_Id`) USING BTREE,
  INDEX `watch_id`(`Watch_Id`) USING BTREE,
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Watch_Id`) REFERENCES `watches` (`Watch_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
INSERT INTO `usage_records` VALUES (1, 1, 101, '2023-10-01 08:00:00', '2023-10-01 20:00:00', 10000, 500.00, 75, 420, 8.50, 'Running', 30);
INSERT INTO `usage_records` VALUES (2, 2, 102, '2023-10-02 09:00:00', '2023-10-02 21:00:00', 8000, 400.00, 80, 480, 6.20, 'Cycling', 25);
INSERT INTO `usage_records` VALUES (3, 3, 103, '2023-10-03 07:00:00', '2023-10-03 19:00:00', 12000, 600.00, 70, 360, 10.00, 'Swimming', 40);
INSERT INTO `usage_records` VALUES (9, 4, 201, '2023-11-01 08:00:00', '2023-11-01 10:00:00', 150000, 99999999.99, 160, 0, 21.10, 'Running', 80);
INSERT INTO `usage_records` VALUES (10, 5, 202, '2023-11-02 06:00:00', '2023-11-02 22:00:00', 100000000, 5000.00, 120, 0, 80.00, 'Walking', 90);
INSERT INTO `usage_records` VALUES (11, 6, 203, '2023-11-03 22:00:00', '2023-11-04 08:00:00', 5000, 600.00, 65, 600, 3.00, 'Sleep', 10);
INSERT INTO `usage_records` VALUES (12, 10, 401, '2023-12-01 10:00:00', '2023-12-01 11:00:00', 5000, 600.00, 120, 0, 3.00, 'Swimming', 20);
INSERT INTO `usage_records` VALUES (13, 3, 402, '2023-12-02 23:00:00', '2023-12-03 07:00:00', 1000, 800.00, 105, 480, 1.00, 'Sleep', 10);
INSERT INTO `usage_records` VALUES (14, 10, 403, '2023-12-02 12:00:00', '2023-12-02 13:00:00', 8000, 1500.00, 150, 0, 4.00, 'Swimming', 25);
INSERT INTO `usage_records` VALUES (15, 1, 501, '2024-01-01 10:00:00', '2024-01-01 11:00:00', 8000, 1500.00, 155, 0, 6.00, '游泳', 25);
INSERT INTO `usage_records` VALUES (16, 41, NULL, '2025-01-01 10:00:00', '2025-01-01 10:00:50', NULL, NULL, NULL, NULL, 400000.00, NULL, NULL);
INSERT INTO `usage_records` VALUES (17, 42, NULL, '2025-01-01 11:00:00', '2025-01-01 11:00:40', NULL, NULL, NULL, NULL, 400000.00, NULL, NULL);
INSERT INTO `usage_records` VALUES (18, 43, NULL, '2025-01-01 12:00:00', '2025-01-01 12:00:30', NULL, NULL, NULL, NULL, 400000.00, NULL, NULL);
INSERT INTO `usage_records` VALUES (19, 51, NULL, NULL, NULL, NULL, 500.00, 150, NULL, NULL, 'Running', NULL);
INSERT INTO `usage_records` VALUES (20, 52, NULL, NULL, NULL, NULL, 500.00, 150, NULL, NULL, 'Cycling', NULL);
INSERT INTO `usage_records` VALUES (21, 53, NULL, NULL, NULL, NULL, 400.00, 150, NULL, NULL, 'Running', NULL);
INSERT INTO `usage_records` VALUES (22, 54, NULL, NULL, NULL, NULL, 500.00, 140, NULL, NULL, 'Running', NULL);

-- ----------------------------
-- Table structure for watches
-- ----------------------------
DROP TABLE IF EXISTS `watches`;
CREATE TABLE `watches`  (
  `Watch_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '手表唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手表型号',
  `Manufacturer_id` int(0) NULL DEFAULT NULL COMMENT '制造商ID（外键）',
  `Release_Date` date NULL DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格（美元）',
  `Weight_Grams` decimal(10, 2) NULL DEFAULT NULL COMMENT '重量（克）',
  `Water_Resistance_Meters` int(0) NULL DEFAULT NULL COMMENT '防水深度（米）',
  `Battery_Life_Days` int(0) NULL DEFAULT NULL COMMENT '电池续航时间（天）',
  `Screen_Size_Inches` decimal(5, 2) NULL DEFAULT NULL COMMENT '屏幕尺寸（英寸）',
  `Is_Smartwatch` tinyint(1) NULL DEFAULT NULL COMMENT '是否为智能手表',
  `Operating_System` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作系统（如 Wear OS、watchOS）',
  `Storage_Gb` int(0) NULL DEFAULT NULL COMMENT '存储容量（GB）',
  `Ram_Gb` int(0) NULL DEFAULT NULL COMMENT '内存容量（GB）',
  `Connectivity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '连接方式（如蓝牙、Wi-Fi、LTE）',
  PRIMARY KEY (`Watch_Id`) USING BTREE,
  INDEX `manufacturer_id`(`Manufacturer_id`) USING BTREE,
  CONSTRAINT `watches_ibfk_1` FOREIGN KEY (`Manufacturer_id`) REFERENCES `manufacturers` (`Manufacturer_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of watches
-- ----------------------------
INSERT INTO `watches` VALUES (1, 'Apple Watch Series 8', 1, '2022-09-07', 399.00, 42.30, 50, 1, 1.78, 1, 'watchOS', 32, 1, 'Bluetooth, Wi-Fi, LTE');
INSERT INTO `watches` VALUES (2, 'Galaxy Watch 5', 2, '2022-08-26', 279.99, 33.50, 50, 2, 1.36, 1, 'Wear OS', 16, 2, 'Bluetooth, Wi-Fi, LTE');
INSERT INTO `watches` VALUES (3, 'Forerunner 955', 3, '2022-06-01', 499.99, 52.00, 100, 14, 1.30, 1, 'Garmin OS', 32, 2, 'Bluetooth, Wi-Fi');
INSERT INTO `watches` VALUES (4, 'Cardio Pro X', 4, '2023-01-15', 299.99, 38.50, 50, 3, 1.40, 1, 'FitOS', 16, 1, 'Bluetooth, Wi-Fi');
INSERT INTO `watches` VALUES (5, 'OxyTrack Elite', 5, '2023-03-10', 349.99, 40.00, 100, 5, 1.50, 1, 'Wear OS', 32, 2, 'Bluetooth, LTE');
INSERT INTO `watches` VALUES (6, 'MedWatch 3', 6, '2023-05-20', 399.99, 45.00, 30, 2, 1.60, 1, 'MedOS', 32, 2, 'Bluetooth, Wi-Fi, LTE');
INSERT INTO `watches` VALUES (7, 'Ocean Diver 100', 7, '2023-02-15', 79.99, 65.00, 150, 3, 0.00, 0, NULL, NULL, NULL, 'None');
INSERT INTO `watches` VALUES (8, 'River Guard 200', 5, '2023-04-20', 59.99, 70.00, 200, 5, 0.00, 0, NULL, NULL, NULL, 'None');
INSERT INTO `watches` VALUES (9, 'HealthBand Lite', 4, '2023-07-01', 89.99, 25.00, 50, 45, 0.95, 1, 'FitOS', 4, 1, 'Bluetooth Low Energy');
INSERT INTO `watches` VALUES (10, 'Aqua Lite', 4, '2024-01-01', 129.99, 30.00, 0, 3, 1.20, 1, 'FitOS', 8, 1, 'Bluetooth');
INSERT INTO `watches` VALUES (11, 'Ultra Sensor Test', 8, '2024-03-01', 199.99, 40.00, 30, 7, 1.40, 1, 'TestOS', 1, 1, 'Bluetooth');
INSERT INTO `watches` VALUES (12, 'Heritage Platinum', 1, '2024-05-01', 1500.00, 80.00, 30, 5, 0.00, 0, NULL, NULL, NULL, 'None');
INSERT INTO `watches` VALUES (13, 'Entropy Giant Display', 1, '2025-01-01', 9999.99, 500.00, 10, 1, 99.99, 1, 'GiantOS', 64, 4, 'Bluetooth, Wi-Fi');
INSERT INTO `watches` VALUES (31, 'Aqua Dive 500', 31, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, 'LTE');
INSERT INTO `watches` VALUES (32, 'Sport Lite', 31, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'Wi-Fi');
INSERT INTO `watches` VALUES (33, 'Deep Sea Master', 32, NULL, NULL, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL, 'Bluetooth');
INSERT INTO `watches` VALUES (34, 'Urban Tracker', 33, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL, 'LTE');
INSERT INTO `watches` VALUES (35, 'Elite Pro', 33, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL, 'Wi-Fi');
INSERT INTO `watches` VALUES (41, 'Model A', 41, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'LTE');
INSERT INTO `watches` VALUES (42, 'Model B', 41, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'Wi-Fi');
INSERT INTO `watches` VALUES (43, 'Model C', 42, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'LTE');
INSERT INTO `watches` VALUES (51, 'Athlete A', 51, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'GPS');
INSERT INTO `watches` VALUES (52, 'Cyclist B', 51, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'GPS');
INSERT INTO `watches` VALUES (53, 'Hiker C', 51, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'GPS');
INSERT INTO `watches` VALUES (54, 'Swimmer D', 51, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'GPS');

SET FOREIGN_KEY_CHECKS = 1;
