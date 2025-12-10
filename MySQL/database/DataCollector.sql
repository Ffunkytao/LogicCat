/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : datacollector

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 17:59:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
-- Table structure for datacollectionnotificationrecord
-- ----------------------------
DROP TABLE IF EXISTS `datacollectionnotificationrecord`;
CREATE TABLE `datacollectionnotificationrecord`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `TriggerId` int(0) NULL DEFAULT NULL,
  `NotificationTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RecipientType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RecipientCount` int(0) NULL DEFAULT NULL,
  `NotificationMethod` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NotificationContent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `IsAcknowledged` tinyint(1) NULL DEFAULT NULL,
  `AcknowledgedTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NotificationStatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datacollectionnotificationrecord
-- ----------------------------
INSERT INTO `datacollectionnotificationrecord` VALUES (1, 1, '2023-10-01 14:30:00', 'Public', 100000, 'SMS', 'Heavy rainfall warning: Rainfall exceeds 50 mm. Stay safe.', 1, '2023-10-01 14:35:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (2, 2, '2023-09-25 08:15:00', 'Government', 500, 'Email', 'Flood alert: Water levels rising rapidly in the region.', 1, '2023-09-25 08:20:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (3, 3, '2023-08-15 12:45:00', 'Public', 20000, 'Broadcast', 'Storm warning: High winds and heavy rain expected.', 1, '2023-08-15 12:50:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (4, 4, '2023-07-10 16:20:00', 'Enterprise', 1000, 'Email', 'Data collection complete: Rainfall data for June available.', 0, NULL, 'Pending');
INSERT INTO `datacollectionnotificationrecord` VALUES (5, 5, '2023-06-05 09:00:00', 'Public', 50000, 'SMS', 'Drought alert: Rainfall below 5 mm for the past month.', 1, '2023-06-05 09:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (6, 6, '2023-05-20 11:10:00', 'Government', 300, 'Email', 'Data collection alert: Sensor malfunction detected.', 1, '2023-05-20 11:15:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (7, 7, '2023-04-15 18:30:00', 'Public', 15000, 'Broadcast', 'Heavy rainfall warning: Rainfall exceeds 100 mm. Evacuate if necessary.', 1, '2023-04-15 18:35:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (26, 1, '2024-01-30 15:00:00', 'Public', 10000, 'Broadcast', 'Temperature data exceeds threshold of 30°C', 1, '2024-01-30 15:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (27, 2, '2024-01-30 16:00:00', 'Government', 1000, 'SMS', 'Humidity data exceeds threshold of 80%', 1, '2024-01-30 16:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (28, 3, '2024-01-30 17:00:00', 'Enterprise', 500, 'Email', 'Pressure data exceeds threshold of 110 kPa', 1, '2024-01-30 17:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (29, 4, '2024-01-30 18:00:00', 'Public', 100000000, 'Broadcast', 'Temperature data exceeds threshold of 1000°C', 1, '2024-01-30 18:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (30, 5, '2024-01-30 19:00:00', 'Public', 1000, 'SMS', 'Temperature data exceeds threshold of 30°C', 1, '2024-01-30 19:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (31, 6, '2024-01-30 20:00:00', 'Public', 10000, 'SMS', 'Weather alert notification', 1, '2024-01-30 20:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (32, 7, '2024-01-30 21:00:00', 'Agricultural Producers', 500, 'SMS', 'Humidity data exceeds threshold of 80%', 1, '2024-01-30 21:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (33, 8, '2024-01-30 22:00:00', 'Public', 1000000000, 'Broadcast', 'Temperature data exceeds threshold of 1000°C', 1, '2024-01-30 22:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (34, 9, '2024-01-30 23:00:00', 'Public', 500000, 'Broadcast', 'Temperature data exceeds threshold of 30°C', 1, '2024-01-30 23:05:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (45, NULL, NULL, 'Warehouse Manager', 1000, 'SMS', 'Temperature data exceeds threshold 30°C', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (46, NULL, NULL, 'Warehouse Manager', 1000, 'SMS', 'Humidity data exceeds threshold 80%', NULL, '2023-10-01 12:00:00', 'Failed');
INSERT INTO `datacollectionnotificationrecord` VALUES (47, NULL, NULL, 'Warehouse Manager', 500, 'Email', 'Humidity data exceeds threshold 80%', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (48, NULL, NULL, 'Chemical Plant Operator', 1000000, 'Broadcast', 'Temperature data exceeds threshold 1000°C', NULL, '2023-10-01 12:00:00', 'Failed');
INSERT INTO `datacollectionnotificationrecord` VALUES (49, NULL, NULL, 'Warehouse Manager', 100000, 'Broadcast', 'Temperature data exceeds threshold 1000°C', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (50, NULL, NULL, 'Warehouse Manager', 1000, 'SMS', 'Temperature data exceeds threshold 30°C', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (51, NULL, NULL, 'Warehouse Manager', 800, 'Email', 'Humidity data exceeds threshold 80%', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (52, NULL, NULL, 'Chemical Plant Operator', 150000, 'Broadcast', 'Temperature data exceeds threshold 1000°C', NULL, '2023-10-01 12:00:00', 'Failed');
INSERT INTO `datacollectionnotificationrecord` VALUES (53, NULL, NULL, 'Chemical Plant Operator', 1200, 'SMS', 'Pressure data exceeds threshold 110 kPa', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (54, NULL, NULL, 'Warehouse Manager', 600, 'Email', 'Humidity data exceeds threshold 80%', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (55, NULL, NULL, NULL, 1000000000, NULL, 'Temperature data exceeds threshold 1000°C', NULL, '9999-12-31 23:59:59', NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (56, NULL, '9999-12-31 23:59:59', NULL, 1000000000, NULL, 'Temperature data exceeds threshold 1000°C', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (57, NULL, '2023-10-01 12:00:00', NULL, 1000, NULL, 'Temperature data exceeds threshold 30°C', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (58, 1, '2023-10-01 12:00:00', NULL, 1000, NULL, 'Temperature data exceeds threshold 30°C', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (59, NULL, '2023-10-01 12:00:00', NULL, 1000, NULL, 'Humidity data exceeds threshold 80%', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (60, NULL, '2023-10-01 12:00:00', NULL, NULL, NULL, 'Pressure data exceeds threshold 110kPa', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (61, NULL, NULL, 'Warehouse Manager', 1000, 'SMS', 'Temperature data exceeds threshold 30°C', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (62, NULL, NULL, 'Warehouse Manager', 1000, 'SMS', 'Humidity data exceeds threshold 80%', NULL, '2023-10-01 12:00:00', 'Failed');
INSERT INTO `datacollectionnotificationrecord` VALUES (63, NULL, NULL, 'Warehouse Manager', 500, 'Email', 'Humidity data exceeds threshold 80%', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (64, NULL, NULL, 'Chemical Plant Operator', 1000000, 'Broadcast', 'Temperature data exceeds threshold 1000°C', NULL, '2023-10-01 12:00:00', 'Failed');
INSERT INTO `datacollectionnotificationrecord` VALUES (65, NULL, NULL, 'Warehouse Manager', 100000, 'Broadcast', 'Temperature data exceeds threshold 1000°C', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (66, NULL, NULL, 'Warehouse Manager', 1000, 'SMS', 'Temperature data exceeds threshold 30°C', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (67, NULL, NULL, 'Warehouse Manager', 800, 'Email', 'Humidity data exceeds threshold 80%', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (68, NULL, NULL, 'Chemical Plant Operator', 150000, 'Broadcast', 'Temperature data exceeds threshold 1000°C', NULL, '2023-10-01 12:00:00', 'Failed');
INSERT INTO `datacollectionnotificationrecord` VALUES (69, NULL, NULL, 'Chemical Plant Operator', 1200, 'SMS', 'Pressure data exceeds threshold 110 kPa', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (70, NULL, NULL, 'Warehouse Manager', 600, 'Email', 'Humidity data exceeds threshold 80%', NULL, '2023-10-01 12:00:00', 'Success');
INSERT INTO `datacollectionnotificationrecord` VALUES (71, NULL, NULL, NULL, 1000000000, NULL, 'Temperature data exceeds threshold 1000°C', NULL, '9999-12-31 23:59:59', NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (72, NULL, '9999-12-31 23:59:59', NULL, 1000000000, NULL, 'Temperature data exceeds threshold 1000°C', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (73, NULL, '2023-10-01 12:00:00', NULL, 1000, NULL, 'Temperature data exceeds threshold 30°C', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (74, 1, '2023-10-01 12:00:00', NULL, 1000, NULL, 'Temperature data exceeds threshold 30°C', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (75, NULL, '2023-10-01 12:00:00', NULL, 1000, NULL, 'Humidity data exceeds threshold 80%', NULL, NULL, NULL);
INSERT INTO `datacollectionnotificationrecord` VALUES (76, NULL, '2023-10-01 12:00:00', NULL, NULL, NULL, 'Pressure data exceeds threshold 110kPa', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for datacollectionrecord
-- ----------------------------
DROP TABLE IF EXISTS `datacollectionrecord`;
CREATE TABLE `datacollectionrecord`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `CollectorId` int(0) NULL DEFAULT NULL,
  `CollectionTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DataType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DataValue` decimal(15, 2) NULL DEFAULT NULL,
  `DataUnit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MinValue` decimal(15, 2) NULL DEFAULT NULL,
  `MaxValues` decimal(15, 2) NULL DEFAULT NULL,
  `AverageValue` decimal(15, 2) NULL DEFAULT NULL,
  `DataAccuracy` decimal(5, 2) NULL DEFAULT NULL,
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datacollectionrecord
-- ----------------------------
INSERT INTO `datacollectionrecord` VALUES (1, 1, '2023-10-01 14:30:00', 'Temperature', 25.50, 'Celsius', 24.00, 26.00, 25.20, 98.50, 'Normal temperature range observed.');
INSERT INTO `datacollectionrecord` VALUES (2, 2, '2023-09-25 08:15:00', 'Humidity', 65.00, 'Percent', 60.00, 70.00, 65.50, 97.00, 'Humidity within acceptable limits.');
INSERT INTO `datacollectionrecord` VALUES (3, 3, '2023-08-15 12:45:00', 'Pressure', 1013.25, 'hPa', 1012.00, 1015.00, 1013.50, 99.00, 'Stable atmospheric pressure.');
INSERT INTO `datacollectionrecord` VALUES (4, 4, '2023-07-10 16:20:00', 'Rainfall', 12.30, 'mm', 10.00, 15.00, 12.50, 95.00, 'Moderate rainfall recorded.');
INSERT INTO `datacollectionrecord` VALUES (5, 5, '2023-06-05 09:00:00', 'Wind Speed', 5.50, 'm/s', 4.00, 7.00, 5.20, 96.50, 'Light wind conditions.');
INSERT INTO `datacollectionrecord` VALUES (6, 6, '2023-05-20 11:10:00', 'Temperature', 30.00, 'Celsius', 28.00, 32.00, 30.50, 97.50, 'High temperature observed.');
INSERT INTO `datacollectionrecord` VALUES (7, 7, '2023-04-15 18:30:00', 'Humidity', 80.00, 'Percent', 75.00, 85.00, 80.50, 98.00, 'High humidity levels recorded.');
INSERT INTO `datacollectionrecord` VALUES (14, 12, '2024-01-30 12:00:00', 'Pressure', 500.00, 'hPa', 490.00, 510.00, 500.50, 98.00, 'High altitude pressure measurement');
INSERT INTO `datacollectionrecord` VALUES (15, 13, '2024-01-30 12:00:00', 'Pressure', 500.00, 'hPa', 490.00, 510.00, 500.50, 98.00, 'High altitude pressure measurement');
INSERT INTO `datacollectionrecord` VALUES (16, 15, '2024-01-30 10:00:00', 'Data Volume', 1.00, 'KB', 0.80, 1.20, 1.00, 99.50, 'Sample data collection');
INSERT INTO `datacollectionrecord` VALUES (17, 16, '2024-01-29 18:00:00', 'Temperature', -10.00, 'Celsius', -12.00, -8.00, -10.50, 97.00, 'Last recorded temperature before shutdown');
INSERT INTO `datacollectionrecord` VALUES (18, 20, '2024-01-30 14:00:00', 'Temperature', -20.00, 'Celsius', -25.00, -15.00, -20.50, 98.00, 'Extreme low temperature recording');
INSERT INTO `datacollectionrecord` VALUES (19, 24, '2024-01-30 12:00:00', 'Temperature', 15.00, 'Celsius', 14.00, 16.00, 15.20, 98.50, 'Noon temperature recording');
INSERT INTO `datacollectionrecord` VALUES (20, 28, '2024-01-30 12:00:00', 'Pressure', 500.00, 'hPa', 490.00, 510.00, 500.50, 98.00, 'High altitude pressure measurement');
INSERT INTO `datacollectionrecord` VALUES (21, 32, '2024-01-30 15:00:00', 'Temperature', 25.00, 'Celsius', 24.00, 26.00, 25.20, 98.50, 'Standard temperature recording');
INSERT INTO `datacollectionrecord` VALUES (22, 33, '2024-01-30 16:00:00', 'Temperature', 30.00, 'Celsius', 29.00, 31.00, 30.20, 98.00, 'Warm temperature recording');
INSERT INTO `datacollectionrecord` VALUES (23, 34, '2024-01-30 08:00:00', 'Temperature', -10.00, 'Celsius', -12.00, -8.00, -10.50, 97.00, 'Freezing temperature recording');
INSERT INTO `datacollectionrecord` VALUES (24, 35, '2024-01-30 10:00:00', 'Temperature', 1000.00, 'Celsius', 950.00, 1050.00, 1000.50, 95.00, 'Extreme high temperature recording');
INSERT INTO `datacollectionrecord` VALUES (25, 36, '2024-01-30 14:00:00', 'Humidity', 80.00, 'Percent', 75.00, 85.00, 80.50, 98.00, 'High humidity recording');
INSERT INTO `datacollectionrecord` VALUES (26, 36, '2024-01-30 14:00:00', 'Temperature', 25.00, 'Celsius', 24.00, 26.00, 25.20, 98.50, 'Ambient temperature recording');
INSERT INTO `datacollectionrecord` VALUES (27, 37, '2024-01-30 16:00:00', 'Humidity', 60.00, 'Percent', 58.00, 62.00, 60.50, 98.50, 'Moderate humidity recording');
INSERT INTO `datacollectionrecord` VALUES (28, 38, '2024-01-30 18:00:00', 'Humidity', 95.00, 'Percent', 92.00, 98.00, 95.50, 97.50, 'Very high humidity recording');
INSERT INTO `datacollectionrecord` VALUES (29, 39, '2024-01-30 20:00:00', 'Humidity', 200.00, 'Percent', 180.00, 220.00, 200.50, 90.00, 'Abnormally high humidity reading - sensor verification needed');
INSERT INTO `datacollectionrecord` VALUES (30, 40, '2024-01-30 12:00:00', 'Pressure', 1013.00, 'hPa', 1012.00, 1014.00, 1013.20, 99.00, 'Standard atmospheric pressure recording');
INSERT INTO `datacollectionrecord` VALUES (31, 41, '2024-01-30 10:00:00', 'Pressure', 500.00, 'hPa', 495.00, 505.00, 500.50, 98.00, 'Low pressure recording at high altitude');
INSERT INTO `datacollectionrecord` VALUES (32, 42, '2024-01-30 14:00:00', 'Pressure', 2000.00, 'hPa', 1950.00, 2050.00, 2000.50, 97.00, 'High pressure recording in deep sea environment');
INSERT INTO `datacollectionrecord` VALUES (33, 43, '2024-01-30 16:00:00', 'Pressure', 100000.00, 'hPa', 95000.00, 105000.00, 100000.50, 95.00, 'Extreme high pressure recording in industrial environment');
INSERT INTO `datacollectionrecord` VALUES (34, 44, '2024-01-30 18:00:00', 'Temperature', -273.15, 'Celsius', -273.15, -273.15, -273.15, 99.90, 'Absolute zero temperature recording in laboratory conditions');
INSERT INTO `datacollectionrecord` VALUES (35, 45, '2024-01-30 20:00:00', 'Humidity', 0.00, 'Percent', 0.00, 0.00, 0.00, 99.00, 'Absolute zero humidity recording in controlled environment');
INSERT INTO `datacollectionrecord` VALUES (36, 46, '2024-01-30 22:00:00', 'Pressure', 0.00, 'hPa', 0.00, 0.00, 0.00, 99.90, 'Absolute vacuum pressure recording in space environment');
INSERT INTO `datacollectionrecord` VALUES (37, 47, '2024-01-30 23:00:00', 'Temperature', -1000.00, 'Celsius', -1000.00, -1000.00, -1000.00, 95.00, 'Extreme low temperature recording in laboratory conditions');
INSERT INTO `datacollectionrecord` VALUES (38, 48, '2024-01-30 15:00:00', 'Temperature', 1000.00, 'Celsius', 950.00, 1050.00, 1000.50, 96.00, 'Extreme high temperature recording in industrial environment');
INSERT INTO `datacollectionrecord` VALUES (39, 49, '2024-01-30 18:00:00', 'Humidity', 100.00, 'Percent', 98.00, 100.00, 99.50, 98.50, 'Maximum humidity recording at saturation point');
INSERT INTO `datacollectionrecord` VALUES (40, 50, '2024-01-30 12:00:00', 'Pressure', 1013.00, 'hPa', 1012.00, 1014.00, 1013.20, 99.00, 'Standard sea level pressure recording');
INSERT INTO `datacollectionrecord` VALUES (41, 51, '2024-01-30 14:00:00', 'Temperature', 1000000.00, 'Celsius', 900000.00, 1100000.00, 1000000.50, 90.00, 'Extreme high temperature recording in plasma environment');
INSERT INTO `datacollectionrecord` VALUES (42, 52, '2024-01-30 12:00:00', 'Temperature', 15.00, 'Celsius', 14.00, 16.00, 15.20, 98.50, 'Average temperature at 3000m');
INSERT INTO `datacollectionrecord` VALUES (43, 53, '2024-01-30 12:00:00', 'Temperature', 16.00, 'Celsius', 15.00, 17.00, 16.20, 98.50, 'Average temperature at 2900m');
INSERT INTO `datacollectionrecord` VALUES (44, 54, '2024-01-30 00:00:00', 'Temperature', 20.00, 'Celsius', 18.00, 22.00, 20.00, 98.00, 'Temperature recording with 2°C standard deviation');
INSERT INTO `datacollectionrecord` VALUES (45, 54, '2024-01-30 01:00:00', 'Temperature', 19.50, 'Celsius', 17.50, 21.50, 19.50, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (46, 54, '2024-01-30 02:00:00', 'Temperature', 20.50, 'Celsius', 18.50, 22.50, 20.50, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (47, 54, '2024-01-30 03:00:00', 'Temperature', 21.00, 'Celsius', 19.00, 23.00, 21.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (48, 55, '2024-01-30 14:00:00', 'Temperature', 25.00, 'Celsius', 24.00, 26.00, 25.20, 98.50, 'City center temperature recording');
INSERT INTO `datacollectionrecord` VALUES (49, 56, '2024-01-30 14:00:00', 'Temperature', 20.00, 'Celsius', 19.00, 21.00, 20.20, 98.50, 'Suburban temperature recording');
INSERT INTO `datacollectionrecord` VALUES (50, 57, '2024-01-30 10:00:00', 'Temperature', 1000.00, 'Celsius', 950.00, 1050.00, 1000.50, 96.00, 'High temperature recording in industrial environment');
INSERT INTO `datacollectionrecord` VALUES (51, 57, '2024-01-30 11:00:00', 'Temperature', 1200.00, 'Celsius', 1150.00, 1250.00, 1200.50, 96.00, 'High temperature recording');
INSERT INTO `datacollectionrecord` VALUES (52, 57, '2024-01-30 12:00:00', 'Temperature', 1400.00, 'Celsius', 1350.00, 1450.00, 1400.50, 96.00, 'High temperature recording');
INSERT INTO `datacollectionrecord` VALUES (53, 58, '2024-01-30 12:00:00', 'Temperature', 25.00, 'Celsius', 24.00, 26.00, 25.00, 95.00, 'Temperature recording with 95% accuracy');
INSERT INTO `datacollectionrecord` VALUES (54, 58, '2024-01-30 13:00:00', 'Temperature', 24.80, 'Celsius', 23.80, 25.80, 24.80, 95.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (55, 58, '2024-01-30 14:00:00', 'Temperature', 25.20, 'Celsius', 24.20, 26.20, 25.20, 95.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (56, 58, '2024-01-30 15:00:00', 'Temperature', 25.10, 'Celsius', 24.10, 26.10, 25.10, 95.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (57, 59, '2024-01-30 00:00:00', 'Humidity', 60.00, 'Percent', 59.00, 61.00, 60.00, 98.00, 'Humidity recording with 98% accuracy');
INSERT INTO `datacollectionrecord` VALUES (58, 59, '2024-01-30 01:00:00', 'Humidity', 59.80, 'Percent', 58.80, 60.80, 59.80, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (59, 59, '2024-01-30 02:00:00', 'Humidity', 60.20, 'Percent', 59.20, 61.20, 60.20, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (60, 59, '2024-01-30 03:00:00', 'Humidity', 60.10, 'Percent', 59.10, 61.10, 60.10, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (61, 60, '2024-01-30 12:00:00', 'Pressure', 101.30, 'kPa', 101.20, 101.40, 101.30, 99.00, 'High accuracy pressure recording at sea level');
INSERT INTO `datacollectionrecord` VALUES (62, 61, '2024-01-30 14:00:00', 'Humidity', 80.00, 'Percent', 75.00, 85.00, 80.00, 200.00, 'Humidity recording with abnormal 200% accuracy');
INSERT INTO `datacollectionrecord` VALUES (63, 62, '2024-01-30 10:00:00', 'Temperature', 95.00, 'Celsius', 90.00, 100.00, 95.00, 98.00, 'Temperature recording for probability calculation');
INSERT INTO `datacollectionrecord` VALUES (64, 62, '2024-01-30 11:00:00', 'Temperature', 98.00, 'Celsius', 93.00, 103.00, 98.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (65, 62, '2024-01-30 12:00:00', 'Temperature', 102.00, 'Celsius', 97.00, 107.00, 102.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (66, 62, '2024-01-30 13:00:00', 'Temperature', 97.00, 'Celsius', 92.00, 102.00, 97.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (67, 63, '2024-01-30 08:00:00', 'Humidity', 75.00, 'Percent', 72.00, 78.00, 75.00, 98.00, 'Humidity recording for threshold analysis');
INSERT INTO `datacollectionrecord` VALUES (68, 63, '2024-01-30 09:00:00', 'Humidity', 78.00, 'Percent', 75.00, 81.00, 78.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (69, 63, '2024-01-30 10:00:00', 'Humidity', 82.00, 'Percent', 79.00, 85.00, 82.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (70, 63, '2024-01-30 11:00:00', 'Humidity', 79.00, 'Percent', 76.00, 82.00, 79.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (71, 64, '2024-01-30 12:00:00', 'Pressure', 105.00, 'kPa', 103.00, 107.00, 105.00, 98.00, 'Pressure recording near threshold at 500m altitude');
INSERT INTO `datacollectionrecord` VALUES (72, 65, '2024-01-30 14:00:00', 'Temperature', 25.00, 'Celsius', 23.00, 27.00, 25.00, 98.00, 'Temperature recording for probability calculation');
INSERT INTO `datacollectionrecord` VALUES (73, 65, '2024-01-30 15:00:00', 'Temperature', 27.00, 'Celsius', 25.00, 29.00, 27.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (74, 65, '2024-01-30 16:00:00', 'Temperature', 32.00, 'Celsius', 30.00, 34.00, 32.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (75, 65, '2024-01-30 17:00:00', 'Temperature', 28.00, 'Celsius', 26.00, 30.00, 28.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (76, 66, '2024-01-30 10:00:00', 'Humidity', 65.00, 'Percent', 62.00, 68.00, 65.00, 98.00, 'Humidity recording for threshold analysis');
INSERT INTO `datacollectionrecord` VALUES (77, 66, '2024-01-30 11:00:00', 'Humidity', 62.00, 'Percent', 59.00, 65.00, 62.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (78, 66, '2024-01-30 12:00:00', 'Humidity', 58.00, 'Percent', 55.00, 61.00, 58.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (79, 66, '2024-01-30 13:00:00', 'Humidity', 63.00, 'Percent', 60.00, 66.00, 63.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (80, 67, '2024-01-30 12:00:00', 'Pressure', 101.30, 'kPa', 100.80, 101.80, 101.30, 99.00, 'Standard atmospheric pressure recording at sea level');
INSERT INTO `datacollectionrecord` VALUES (81, 68, '2024-01-30 10:00:00', 'Temperature', 25.00, 'Celsius', 23.00, 27.00, 25.00, 98.00, 'High frequency temperature recording');
INSERT INTO `datacollectionrecord` VALUES (82, 68, '2024-01-30 10:00:01', 'Temperature', 24.80, 'Celsius', 22.80, 26.80, 24.80, 98.00, 'High frequency temperature recording');
INSERT INTO `datacollectionrecord` VALUES (83, 68, '2024-01-30 10:00:02', 'Temperature', 25.20, 'Celsius', 23.20, 27.20, 25.20, 98.00, 'High frequency temperature recording');
INSERT INTO `datacollectionrecord` VALUES (84, 69, '2024-01-30 14:00:00', 'Temperature', 30.00, 'Celsius', 28.00, 32.00, 30.00, 98.00, 'Temperature recording for notification analysis');
INSERT INTO `datacollectionrecord` VALUES (85, 69, '2024-01-30 15:00:00', 'Temperature', 32.00, 'Celsius', 30.00, 34.00, 32.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (86, 69, '2024-01-30 16:00:00', 'Temperature', 31.00, 'Celsius', 29.00, 33.00, 31.00, 98.00, 'Temperature recording');
INSERT INTO `datacollectionrecord` VALUES (87, 70, '2024-01-30 10:00:00', 'Humidity', 70.00, 'Percent', 67.00, 73.00, 70.00, 98.00, 'Humidity recording for process analysis');
INSERT INTO `datacollectionrecord` VALUES (88, 70, '2024-01-30 11:00:00', 'Humidity', 73.00, 'Percent', 70.00, 76.00, 73.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (89, 70, '2024-01-30 12:00:00', 'Humidity', 78.00, 'Percent', 75.00, 81.00, 78.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (90, 70, '2024-01-30 13:00:00', 'Humidity', 72.00, 'Percent', 69.00, 75.00, 72.00, 98.00, 'Humidity recording');
INSERT INTO `datacollectionrecord` VALUES (91, 71, '2024-01-30 12:00:00', 'Pressure', 101.30, 'kPa', 100.80, 101.80, 101.30, 99.00, 'Standard atmospheric pressure recording at sea level');
INSERT INTO `datacollectionrecord` VALUES (92, NULL, '2023-10-01 11:55:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datacollectionrecord` VALUES (93, NULL, '2023-10-01 11:55:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for datacollectionrule
-- ----------------------------
DROP TABLE IF EXISTS `datacollectionrule`;
CREATE TABLE `datacollectionrule`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `RuleName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DataType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ThresholdValue` decimal(15, 2) NULL DEFAULT NULL,
  `ThresholdUnit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ConditionOperator` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CollectionFrequency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ActionType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RuleDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `IsActive` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datacollectionrule
-- ----------------------------
INSERT INTO `datacollectionrule` VALUES (1, 'High Temperature Alert', 'Temperature', 35.00, 'Celsius', '>', 'Every 10 minutes', 'Notify Operators', 'Triggered when temperature exceeds 35°C. Indicates potential overheating.', 1);
INSERT INTO `datacollectionrule` VALUES (2, 'Low Humidity Alert', 'Humidity', 30.00, 'Percent', '<', 'Every 30 minutes', 'Activate Humidifiers', 'Triggered when humidity drops below 30%. Indicates dry conditions.', 1);
INSERT INTO `datacollectionrule` VALUES (3, 'High Pressure Alert', 'Pressure', 1015.00, 'hPa', '>', 'Every hour', 'Notify Maintenance', 'Triggered when atmospheric pressure exceeds 1015 hPa. Indicates potential weather changes.', 1);
INSERT INTO `datacollectionrule` VALUES (4, 'Low Rainfall Alert', 'Rainfall', 5.00, 'mm', '<', 'Every 6 hours', 'Monitor Drought', 'Triggered when rainfall drops below 5 mm. Indicates potential drought conditions.', 1);
INSERT INTO `datacollectionrule` VALUES (5, 'High Wind Speed Alert', 'Wind Speed', 15.00, 'm/s', '>', 'Every 15 minutes', 'Issue Storm Warning', 'Triggered when wind speed exceeds 15 m/s. Indicates storm conditions.', 1);
INSERT INTO `datacollectionrule` VALUES (6, 'Low Temperature Alert', 'Temperature', 0.00, 'Celsius', '<', 'Every 10 minutes', 'Activate Heating', 'Triggered when temperature drops below 0°C. Indicates freezing conditions.', 1);
INSERT INTO `datacollectionrule` VALUES (7, 'High Humidity Alert', 'Humidity', 80.00, 'Percent', '>', 'Every 30 minutes', 'Notify Operators', 'Triggered when humidity exceeds 80%. Indicates potential condensation issues.', 1);
INSERT INTO `datacollectionrule` VALUES (8, 'High Temperature Alert', 'Temperature', 100.00, 'Celsius', '>', 'Every 10 minutes', 'Notify Operators', 'Triggered when temperature exceeds 100°C', 1);
INSERT INTO `datacollectionrule` VALUES (9, 'High Humidity Alert', 'Humidity', 80.00, 'Percent', '>', 'Every 30 minutes', 'Notify Operators', 'Triggered when humidity exceeds 80%', 1);
INSERT INTO `datacollectionrule` VALUES (10, 'High Pressure Alert', 'Pressure', 110.00, 'kPa', '>', 'Every hour', 'Notify Maintenance', 'Triggered when pressure exceeds 110 kPa', 1);
INSERT INTO `datacollectionrule` VALUES (11, 'Temperature Threshold Alert', 'Temperature', 30.00, 'Celsius', '>', 'Every 15 minutes', 'Notify Operators', 'Triggered when temperature exceeds 30°C', 1);
INSERT INTO `datacollectionrule` VALUES (12, 'Low Humidity Alert', 'Humidity', 60.00, 'Percent', '<', 'Every 30 minutes', 'Activate Humidifiers', 'Triggered when humidity drops below 60%', 1);
INSERT INTO `datacollectionrule` VALUES (13, 'Standard Pressure Alert', 'Pressure', 101.30, 'kPa', '=', 'Every hour', 'Notify Operators', 'Triggered when pressure equals standard atmospheric pressure', 1);
INSERT INTO `datacollectionrule` VALUES (14, 'High Frequency Temperature', 'Temperature', 25.00, 'Celsius', '>', 'Every second', 'Monitor Performance', 'Continuous high frequency temperature monitoring', 1);
INSERT INTO `datacollectionrule` VALUES (15, 'Temperature Notification', 'Temperature', 35.00, 'Celsius', '>', 'Every 10 minutes', 'Notification', 'Send notification when temperature exceeds 35°C', 1);
INSERT INTO `datacollectionrule` VALUES (16, 'Humidity Process', 'Humidity', 75.00, 'Percent', '>', 'Every 30 minutes', 'Process', 'Process data when humidity exceeds 75%', 1);
INSERT INTO `datacollectionrule` VALUES (17, 'Pressure Notification', 'Pressure', 101.30, 'kPa', '!=', 'Every hour', 'Notification', 'Send notification when pressure deviates from standard', 1);

-- ----------------------------
-- Table structure for datacollector
-- ----------------------------
DROP TABLE IF EXISTS `datacollector`;
CREATE TABLE `datacollector`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `CollectorModel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `InstallationLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ManufactureDate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `InstallationDate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Latitude` decimal(10, 6) NULL DEFAULT NULL,
  `Longitude` decimal(10, 6) NULL DEFAULT NULL,
  `ElevationMeters` decimal(10, 2) NULL DEFAULT NULL,
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datacollector
-- ----------------------------
INSERT INTO `datacollector` VALUES (1, 'DC-100', 'Mountainside, Sichuan', '2022-03-15', '2022-04-10', 'DataTech', 'Running', 30.658601, 104.064762, 1200.50, 'Monitoring environmental data in mountainous region.');
INSERT INTO `datacollector` VALUES (2, 'DC-200', 'Urban Area, Beijing', '2021-05-20', '2021-06-05', 'HydroSense', 'Maintenance', 39.904202, 116.407394, 50.00, 'Currently under maintenance for sensor calibration.');
INSERT INTO `datacollector` VALUES (3, 'DC-150', 'Coastal Area, Shanghai', '2023-01-10', '2023-02-01', 'DataTech', 'Running', 31.230416, 121.473701, 10.00, 'Monitoring environmental data in coastal region.');
INSERT INTO `datacollector` VALUES (4, 'DC-300', 'Plateau, Tibet', '2020-08-12', '2020-09-01', 'HydroSense', 'Stopped', 29.654084, 91.110221, 4500.00, 'Station temporarily stopped due to extreme weather conditions.');
INSERT INTO `datacollector` VALUES (5, 'DC-250', 'Forest Area, Yunnan', '2022-07-18', '2022-08-05', 'DataTech', 'Running', 25.045806, 102.709999, 1800.00, 'Monitoring environmental data in forested region.');
INSERT INTO `datacollector` VALUES (6, 'DC-400', 'Desert Area, Xinjiang', '2023-05-22', '2023-06-10', 'HydroSense', 'Running', 41.112900, 85.240104, 800.00, 'Monitoring environmental data in desert region.');
INSERT INTO `datacollector` VALUES (7, 'DC-350', 'Rural Area, Henan', '2021-04-30', '2021-05-15', 'DataTech', 'Running', 34.747847, 113.624931, 200.00, 'Monitoring environmental data in rural region.');
INSERT INTO `datacollector` VALUES (12, 'DC-5000', 'High Altitude Station', '2023-01-15', '2023-02-01', 'DataTech', 'Running', 28.000000, 86.000000, 5000.00, 'Monitoring environmental data at high altitude');
INSERT INTO `datacollector` VALUES (13, 'DC-5000', 'High Altitude Station', '2023-01-15', '2023-02-01', 'DataTech', 'Running', 28.000000, 86.000000, 5000.00, 'Monitoring environmental data at high altitude');
INSERT INTO `datacollector` VALUES (14, 'DC-300', 'Factory A', '2022-05-20', '2022-06-10', 'DataTech', 'Under Maintenance', 40.712800, -74.006000, 50.00, 'Sensor calibration required due to harsh factory environment');
INSERT INTO `datacollector` VALUES (15, 'High Frequency Collector', 'Data Center', '2023-03-15', '2023-04-01', 'DataTech', 'Running', 34.052200, -118.243700, 100.00, 'High frequency data collection device');
INSERT INTO `datacollector` VALUES (16, 'DC-3000', 'Mountain Station', '2022-08-10', '2022-09-05', 'DataTech', 'Shutdown', 35.000000, 102.000000, 3000.00, 'Collector shutdown due to extreme weather conditions');
INSERT INTO `datacollector` VALUES (17, 'DC-100', 'Urban Monitoring Station', '2023-02-20', '2023-03-10', 'DataTech', 'Running', 40.758900, -73.985100, 50.00, 'Continuous data collection operation');
INSERT INTO `datacollector` VALUES (18, 'DC-400', 'Chemical Plant', '2022-11-15', '2022-12-01', 'DataTech', 'Under Maintenance', 41.878100, -87.629800, 200.00, 'Corrosion protection maintenance required due to chemical exposure');
INSERT INTO `datacollector` VALUES (19, 'DC-500', 'High Frequency Station', '2023-04-10', '2023-05-01', 'DataTech', 'Running', 34.052200, -118.243700, 150.00, 'High frequency data collection for research purposes');
INSERT INTO `datacollector` VALUES (20, 'DC-600', 'Arctic Station', '2022-12-05', '2023-01-15', 'DataTech', 'Running', 60.000000, 30.000000, 100.00, 'Monitoring station in high latitude region');
INSERT INTO `datacollector` VALUES (21, 'DC-450', 'Mid Latitude Station', '2023-03-20', '2023-04-05', 'DataTech', 'Running', 45.000000, 90.000000, 300.00, 'Moderate frequency data collection');
INSERT INTO `datacollector` VALUES (22, 'DC-300', 'Subtropical Station', '2023-01-10', '2023-02-01', 'DataTech', 'Running', 30.000000, 120.000000, 200.00, 'Operating in subtropical climate conditions');
INSERT INTO `datacollector` VALUES (23, 'DC-900', 'North Pole Station', '2022-06-15', '2022-07-01', 'DataTech', 'Running', 90.000000, 0.000000, 10.00, 'Arctic research data collection');
INSERT INTO `datacollector` VALUES (24, 'DC-000', 'Greenwich Station', '2023-02-15', '2023-03-01', 'DataTech', 'Running', 51.477900, 0.000000, 50.00, 'Prime meridian monitoring station');
INSERT INTO `datacollector` VALUES (25, 'DC-120', 'Eastern Station', '2023-04-05', '2023-04-20', 'DataTech', 'Running', 30.000000, 120.000000, 100.00, 'Data collection at 120 degrees longitude');
INSERT INTO `datacollector` VALUES (26, 'DC-W90', 'Western Station', '2023-05-10', '2023-05-25', 'DataTech', 'Running', 40.000000, -90.000000, 250.00, 'Data collection at -90 degrees longitude');
INSERT INTO `datacollector` VALUES (27, 'DC-180', 'Date Line Station', '2023-06-15', '2023-07-01', 'DataTech', 'Running', 0.000000, 180.000000, 5.00, 'Data collection at International Date Line');
INSERT INTO `datacollector` VALUES (28, 'DC-5000', 'High Altitude Station', '2023-01-15', '2023-02-01', 'DataTech', 'Running', 28.000000, 86.000000, 5000.00, 'Monitoring environmental data at high altitude');
INSERT INTO `datacollector` VALUES (29, 'DC-3000', 'Mountain Station', '2023-03-10', '2023-03-25', 'DataTech', 'Running', 35.000000, 102.000000, 3000.00, 'Data collection at 3000 meters elevation');
INSERT INTO `datacollector` VALUES (30, 'DC-1000', 'Highland Station', '2023-04-15', '2023-05-01', 'DataTech', 'Running', 25.000000, 105.000000, 1000.00, 'Operating at moderate high altitude conditions');
INSERT INTO `datacollector` VALUES (31, 'DC-8848', 'Everest Summit Station', '2023-07-20', '2023-08-05', 'DataTech', 'Running', 27.988100, 86.925000, 8848.00, 'Extreme altitude data collection at Mount Everest summit');
INSERT INTO `datacollector` VALUES (32, 'DC-TEMP', 'Temperature Station', '2023-08-10', '2023-08-25', 'DataTech', 'Running', 40.000000, 116.000000, 100.00, 'Temperature monitoring station');
INSERT INTO `datacollector` VALUES (33, 'DC-TEMP30', 'Temperature Monitoring', '2023-09-05', '2023-09-20', 'DataTech', 'Running', 35.000000, 110.000000, 150.00, 'Temperature data collection at 30°C');
INSERT INTO `datacollector` VALUES (34, 'DC-COLD', 'Cold Region Station', '2023-10-15', '2023-11-01', 'DataTech', 'Running', 45.000000, 100.000000, 2000.00, 'Operating in cold climate conditions');
INSERT INTO `datacollector` VALUES (35, 'DC-HOT', 'High Temperature Station', '2023-11-20', '2023-12-05', 'DataTech', 'Running', 20.000000, 50.000000, 500.00, 'Monitoring extreme high temperature conditions');
INSERT INTO `datacollector` VALUES (36, 'DC-HUMID', 'Humidity Station', '2023-12-10', '2023-12-25', 'DataTech', 'Running', 30.000000, 120.000000, 100.00, 'Humidity monitoring station');
INSERT INTO `datacollector` VALUES (37, 'DC-HUM60', 'Humidity Monitor', '2024-01-05', '2024-01-20', 'DataTech', 'Running', 35.000000, 115.000000, 200.00, 'Moderate humidity data collection');
INSERT INTO `datacollector` VALUES (38, 'DC-HUM95', 'High Humidity Station', '2024-01-15', '2024-02-01', 'DataTech', 'Running', 25.000000, 125.000000, 50.00, 'Operating in high humidity tropical environment');
INSERT INTO `datacollector` VALUES (39, 'DC-HUM200', 'Extreme Humidity Station', '2024-02-05', '2024-02-20', 'DataTech', 'Running', 10.000000, 130.000000, 20.00, 'Monitoring abnormal humidity conditions');
INSERT INTO `datacollector` VALUES (40, 'DC-PRESSURE', 'Standard Pressure Station', '2024-01-10', '2024-01-25', 'DataTech', 'Running', 40.000000, 116.000000, 100.00, 'Standard atmospheric pressure monitoring');
INSERT INTO `datacollector` VALUES (41, 'DC-PRES500', 'Low Pressure Station', '2023-03-15', '2023-04-01', 'DataTech', 'Running', 28.000000, 86.000000, 5000.00, 'Low pressure monitoring at high altitude');
INSERT INTO `datacollector` VALUES (42, 'DC-PRES2000', 'High Pressure Station', '2023-05-20', '2023-06-05', 'DataTech', 'Running', 20.000000, 150.000000, -1000.00, 'High pressure monitoring in deep sea environment');
INSERT INTO `datacollector` VALUES (43, 'DC-PRES100K', 'Extreme Pressure Station', '2023-07-10', '2023-07-25', 'DataTech', 'Running', 0.000000, 0.000000, -10000.00, 'Extreme high pressure monitoring in specialized industrial environment');
INSERT INTO `datacollector` VALUES (44, 'DC-ABSOLUTE', 'Cryogenic Station', '2023-08-15', '2023-09-01', 'DataTech', 'Running', 90.000000, 0.000000, 10.00, 'Ultra-low temperature monitoring in cryogenic research');
INSERT INTO `datacollector` VALUES (45, 'DC-HUM0', 'Zero Humidity Station', '2023-09-20', '2023-10-05', 'DataTech', 'Running', 25.000000, 55.000000, 500.00, 'Extremely dry environment monitoring');
INSERT INTO `datacollector` VALUES (46, 'DC-VACUUM', 'Vacuum Station', '2023-10-25', '2023-11-10', 'DataTech', 'Running', 0.000000, 0.000000, 100000.00, 'Vacuum environment monitoring in space simulation');
INSERT INTO `datacollector` VALUES (47, 'DC-ULTRA', 'Ultra Low Temp Station', '2023-11-30', '2023-12-15', 'DataTech', 'Running', 90.000000, 0.000000, 10.00, 'Ultra-low temperature monitoring in cryogenic research');
INSERT INTO `datacollector` VALUES (48, 'DC-HIGHTEMP', 'High Temperature Station', '2023-12-20', '2024-01-05', 'DataTech', 'Running', 20.000000, 40.000000, 200.00, 'High temperature monitoring in industrial furnace');
INSERT INTO `datacollector` VALUES (49, 'DC-MAXHUM', 'Saturation Station', '2024-01-10', '2024-01-25', 'DataTech', 'Running', 10.000000, 120.000000, 50.00, 'Maximum humidity monitoring in tropical environment');
INSERT INTO `datacollector` VALUES (50, 'DC-STDPRES', 'Sea Level Station', '2024-02-01', '2024-02-15', 'DataTech', 'Running', 40.000000, 116.000000, 0.00, 'Standard atmospheric pressure monitoring at sea level');
INSERT INTO `datacollector` VALUES (51, 'DC-EXTREME', 'Plasma Research Station', '2024-02-10', '2024-02-25', 'DataTech', 'Running', 35.000000, 139.000000, 100.00, 'Extreme temperature monitoring in plasma physics research');
INSERT INTO `datacollector` VALUES (52, 'DC-3000A', 'Mountain Station A', '2024-01-15', '2024-02-01', 'DataTech', 'Running', 35.000000, 102.000000, 3000.00, 'High altitude temperature monitoring');
INSERT INTO `datacollector` VALUES (53, 'DC-2900A', 'Mountain Station B', '2024-01-15', '2024-02-01', 'DataTech', 'Running', 35.000000, 102.000000, 2900.00, 'High altitude temperature monitoring');
INSERT INTO `datacollector` VALUES (54, 'DC-TEMP24', '24H Temperature Station', '2024-02-05', '2024-02-20', 'DataTech', 'Running', 40.000000, 116.000000, 100.00, '24-hour continuous temperature monitoring');
INSERT INTO `datacollector` VALUES (55, 'DC-URBAN', 'City Center', '2024-01-20', '2024-02-05', 'DataTech', 'Running', 40.758900, -73.985100, 50.00, 'Urban temperature monitoring in city center');
INSERT INTO `datacollector` VALUES (56, 'DC-SUBURB', 'Suburban Area', '2024-01-20', '2024-02-05', 'DataTech', 'Running', 40.800000, -74.000000, 80.00, 'Suburban temperature monitoring');
INSERT INTO `datacollector` VALUES (57, 'DC-HIGHTEMP', 'High Temperature Facility', '2024-01-25', '2024-02-10', 'DataTech', 'Running', 35.000000, 139.000000, 200.00, 'High temperature industrial monitoring');
INSERT INTO `datacollector` VALUES (58, 'DC-ACCURATE', 'Precision Temperature Station', '2024-02-01', '2024-02-15', 'DataTech', 'Running', 40.000000, 116.000000, 100.00, 'High accuracy temperature monitoring');
INSERT INTO `datacollector` VALUES (59, 'DC-HUMACC', 'High Accuracy Humidity Station', '2024-02-08', '2024-02-22', 'DataTech', 'Running', 35.000000, 115.000000, 150.00, 'High accuracy humidity monitoring');
INSERT INTO `datacollector` VALUES (60, 'DC-PRESACC', 'High Accuracy Pressure Station', '2024-02-12', '2024-02-27', 'DataTech', 'Running', 40.000000, 116.000000, 0.00, 'High accuracy sea level pressure monitoring');
INSERT INTO `datacollector` VALUES (61, 'DC-HUM200P', 'Abnormal Accuracy Station', '2024-02-15', '2024-03-01', 'DataTech', 'Running', 30.000000, 120.000000, 100.00, 'Monitoring station with abnormal accuracy reading');
INSERT INTO `datacollector` VALUES (62, 'DC-TEMPSTAT', 'Temperature Statistics Station', '2024-02-18', '2024-03-05', 'DataTech', 'Running', 40.000000, 116.000000, 100.00, 'Temperature data collection for statistical analysis');
INSERT INTO `datacollector` VALUES (63, 'DC-HUMSTAT', 'Humidity Statistics Station', '2024-02-20', '2024-03-07', 'DataTech', 'Running', 35.000000, 115.000000, 150.00, 'Humidity data collection for statistical analysis');
INSERT INTO `datacollector` VALUES (64, 'DC-PRESSTAT', 'Pressure Statistics Station', '2024-02-22', '2024-03-08', 'DataTech', 'Running', 35.000000, 102.000000, 500.00, 'Pressure data collection at 500m altitude');
INSERT INTO `datacollector` VALUES (65, 'DC-TEMPTHRESH', 'Temperature Threshold Station', '2024-02-25', '2024-03-12', 'DataTech', 'Running', 40.000000, 116.000000, 100.00, 'Temperature data collection for threshold analysis');
INSERT INTO `datacollector` VALUES (66, 'DC-HUMBELOW', 'Low Humidity Station', '2024-02-28', '2024-03-15', 'DataTech', 'Running', 35.000000, 115.000000, 200.00, 'Humidity data collection for low threshold analysis');
INSERT INTO `datacollector` VALUES (67, 'DC-STDPRESSURE', 'Standard Pressure Station', '2024-03-01', '2024-03-18', 'DataTech', 'Running', 40.000000, 116.000000, 0.00, 'Sea level pressure monitoring');
INSERT INTO `datacollector` VALUES (68, 'DC-HIGHFREQ', 'High Frequency Station', '2024-03-05', '2024-03-22', 'DataTech', 'Running', 40.000000, 116.000000, 100.00, 'High frequency temperature data collection');
INSERT INTO `datacollector` VALUES (69, 'DC-TEMPNOTIFY', 'Temperature Notification Station', '2024-03-08', '2024-03-25', 'DataTech', 'Running', 40.000000, 116.000000, 100.00, 'Temperature monitoring for notification system');
INSERT INTO `datacollector` VALUES (70, 'DC-HUMPROCESS', 'Humidity Process Station', '2024-03-12', '2024-03-29', 'DataTech', 'Running', 35.000000, 115.000000, 150.00, 'Humidity monitoring for data processing');
INSERT INTO `datacollector` VALUES (71, 'DC-PRESNOTIFY', 'Pressure Notification Station', '2024-03-15', '2024-04-01', 'DataTech', 'Running', 40.000000, 116.000000, 0.00, 'Sea level pressure monitoring for notification');

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

SET FOREIGN_KEY_CHECKS = 1;
