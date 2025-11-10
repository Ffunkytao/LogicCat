/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : watch

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:31:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  `Founded_Year` year DEFAULT NULL COMMENT '成立年份',
  `Headquarters` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '总部地址',
  `Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '官方网站',
  `Contact_Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系邮箱',
  PRIMARY KEY (`Manufacturer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `manufacturers` VALUES (1, 'Apple', 'USA', 365000000000.00, 95000000000.00, 30.00, 147000, 1976, 'Cupertino, California, USA', 'https://www.apple.com', 'support@apple.com');
INSERT INTO `manufacturers` VALUES (2, 'Samsung', 'South Korea', 200000000000.00, 30000000000.00, 20.00, 287000, 1938, 'Suwon, South Korea', 'https://www.samsung.com', 'support@samsung.com');
INSERT INTO `manufacturers` VALUES (3, 'Garmin', 'USA', 5000000000.00, 1000000000.00, 10.00, 18000, 1989, 'Olathe, Kansas, USA', 'https://www.garmin.com', 'support@garmin.com');
COMMIT;

-- ----------------------------
-- Table structure for sensor_data
-- ----------------------------
DROP TABLE IF EXISTS `sensor_data`;
CREATE TABLE `sensor_data` (
  `Sensor_Id` int NOT NULL AUTO_INCREMENT COMMENT '传感器数据唯一标识',
  `Watch_Id` int DEFAULT NULL COMMENT '手表ID（外键）',
  `Heart_Rate_Sensor` tinyint(1) DEFAULT NULL COMMENT '是否支持心率传感器',
  `Gps` tinyint(1) DEFAULT NULL COMMENT '是否支持 GPS',
  `Accelerometer` tinyint(1) DEFAULT NULL COMMENT '是否支持加速度计',
  `Gyroscope` tinyint(1) DEFAULT NULL COMMENT '是否支持陀螺仪',
  `Blood_Oxygen_Sensor` tinyint(1) DEFAULT NULL COMMENT '是否支持血氧传感器',
  `Ecg_Sensor` tinyint(1) DEFAULT NULL COMMENT '是否支持心电图传感器',
  `Temperature_Sensor` tinyint(1) DEFAULT NULL COMMENT '是否支持温度传感器',
  `Altimeter` tinyint(1) DEFAULT NULL COMMENT '是否支持高度计',
  `Ambient_Light_Sensor` tinyint(1) DEFAULT NULL COMMENT '是否支持环境光传感器',
  PRIMARY KEY (`Sensor_Id`),
  KEY `watch_id` (`Watch_Id`),
  CONSTRAINT `sensor_data_ibfk_1` FOREIGN KEY (`Watch_Id`) REFERENCES `watches` (`Watch_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sensor_data
-- ----------------------------
BEGIN;
INSERT INTO `sensor_data` VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `sensor_data` VALUES (2, 2, 1, 1, 1, 1, 1, 0, 1, 1, 1);
INSERT INTO `sensor_data` VALUES (3, 3, 1, 1, 1, 1, 1, 0, 0, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `Record_Id` int NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Watch_Id` int DEFAULT NULL COMMENT '手表ID（外键）',
  `User_Id` int DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '使用结束时间',
  `Steps` int DEFAULT NULL COMMENT '步数',
  `Calories_Burned` decimal(10,2) DEFAULT NULL COMMENT '消耗的卡路里（千卡）',
  `Heart_Rate_Avg_Bpm` int DEFAULT NULL COMMENT '平均心率（次/分钟）',
  `Sleep_Duration_Minutes` int DEFAULT NULL COMMENT '睡眠时长（分钟）',
  `Distance_Km` decimal(10,2) DEFAULT NULL COMMENT '运动距离（公里）',
  `Activity_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '活动类型（如跑步、游泳、骑行）',
  `Battery_Consumed_Percent` int DEFAULT NULL COMMENT '电池消耗百分比',
  PRIMARY KEY (`Record_Id`),
  KEY `watch_id` (`Watch_Id`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Watch_Id`) REFERENCES `watches` (`Watch_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
BEGIN;
INSERT INTO `usage_records` VALUES (1, 1, 101, '2023-10-01 08:00:00', '2023-10-01 20:00:00', 10000, 500.00, 75, 420, 8.50, 'Running', 30);
INSERT INTO `usage_records` VALUES (2, 2, 102, '2023-10-02 09:00:00', '2023-10-02 21:00:00', 8000, 400.00, 80, 480, 6.20, 'Cycling', 25);
INSERT INTO `usage_records` VALUES (3, 3, 103, '2023-10-03 07:00:00', '2023-10-03 19:00:00', 12000, 600.00, 70, 360, 10.00, 'Swimming', 40);
COMMIT;

-- ----------------------------
-- Table structure for watches
-- ----------------------------
DROP TABLE IF EXISTS `watches`;
CREATE TABLE `watches` (
  `Watch_Id` int NOT NULL AUTO_INCREMENT COMMENT '手表唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手表型号',
  `Manufacturer_id` int DEFAULT NULL COMMENT '制造商ID（外键）',
  `Release_Date` date DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10,2) DEFAULT NULL COMMENT '价格（美元）',
  `Weight_Grams` decimal(10,2) DEFAULT NULL COMMENT '重量（克）',
  `Water_Resistance_Meters` int DEFAULT NULL COMMENT '防水深度（米）',
  `Battery_Life_Days` int DEFAULT NULL COMMENT '电池续航时间（天）',
  `Screen_Size_Inches` decimal(5,2) DEFAULT NULL COMMENT '屏幕尺寸（英寸）',
  `Is_Smartwatch` tinyint(1) DEFAULT NULL COMMENT '是否为智能手表',
  `Operating_System` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '操作系统（如 Wear OS、watchOS）',
  `Storage_Gb` int DEFAULT NULL COMMENT '存储容量（GB）',
  `Ram_Gb` int DEFAULT NULL COMMENT '内存容量（GB）',
  `Connectivity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '连接方式（如蓝牙、Wi-Fi、LTE）',
  PRIMARY KEY (`Watch_Id`),
  KEY `manufacturer_id` (`Manufacturer_id`),
  CONSTRAINT `watches_ibfk_1` FOREIGN KEY (`Manufacturer_id`) REFERENCES `manufacturers` (`Manufacturer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of watches
-- ----------------------------
BEGIN;
INSERT INTO `watches` VALUES (1, 'Apple Watch Series 8', 1, '2022-09-07', 399.00, 42.30, 50, 1, 1.78, 1, 'watchOS', 32, 1, 'Bluetooth, Wi-Fi, LTE');
INSERT INTO `watches` VALUES (2, 'Galaxy Watch 5', 2, '2022-08-26', 279.99, 33.50, 50, 2, 1.36, 1, 'Wear OS', 16, 2, 'Bluetooth, Wi-Fi, LTE');
INSERT INTO `watches` VALUES (3, 'Forerunner 955', 3, '2022-06-01', 499.99, 52.00, 100, 14, 1.30, 1, 'Garmin OS', 32, 2, 'Bluetooth, Wi-Fi');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
