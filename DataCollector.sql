/*
 Navicat Premium Data Transfer

 Source Server         : RemoteComplexdatabase
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : DataCollector

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 24/05/2025 13:25:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for DataCollectionNotificationRecord
-- ----------------------------
DROP TABLE IF EXISTS `DataCollectionNotificationRecord`;
CREATE TABLE `DataCollectionNotificationRecord`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DataCollectionNotificationRecord
-- ----------------------------
INSERT INTO `DataCollectionNotificationRecord` VALUES (1, 1, '2023-10-01 14:30:00', 'Public', 100000, 'SMS', 'Heavy rainfall warning: Rainfall exceeds 50 mm. Stay safe.', 1, '2023-10-01 14:35:00', 'Success');
INSERT INTO `DataCollectionNotificationRecord` VALUES (2, 2, '2023-09-25 08:15:00', 'Government', 500, 'Email', 'Flood alert: Water levels rising rapidly in the region.', 1, '2023-09-25 08:20:00', 'Success');
INSERT INTO `DataCollectionNotificationRecord` VALUES (3, 3, '2023-08-15 12:45:00', 'Public', 20000, 'Broadcast', 'Storm warning: High winds and heavy rain expected.', 1, '2023-08-15 12:50:00', 'Success');
INSERT INTO `DataCollectionNotificationRecord` VALUES (4, 4, '2023-07-10 16:20:00', 'Enterprise', 1000, 'Email', 'Data collection complete: Rainfall data for June available.', 0, NULL, 'Pending');
INSERT INTO `DataCollectionNotificationRecord` VALUES (5, 5, '2023-06-05 09:00:00', 'Public', 50000, 'SMS', 'Drought alert: Rainfall below 5 mm for the past month.', 1, '2023-06-05 09:05:00', 'Success');
INSERT INTO `DataCollectionNotificationRecord` VALUES (6, 6, '2023-05-20 11:10:00', 'Government', 300, 'Email', 'Data collection alert: Sensor malfunction detected.', 1, '2023-05-20 11:15:00', 'Success');
INSERT INTO `DataCollectionNotificationRecord` VALUES (7, 7, '2023-04-15 18:30:00', 'Public', 15000, 'Broadcast', 'Heavy rainfall warning: Rainfall exceeds 100 mm. Evacuate if necessary.', 1, '2023-04-15 18:35:00', 'Success');

-- ----------------------------
-- Table structure for DataCollectionRecord
-- ----------------------------
DROP TABLE IF EXISTS `DataCollectionRecord`;
CREATE TABLE `DataCollectionRecord`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DataCollectionRecord
-- ----------------------------
INSERT INTO `DataCollectionRecord` VALUES (1, 1, '2023-10-01 14:30:00', 'Temperature', 25.50, 'Celsius', 24.00, 26.00, 25.20, 98.50, 'Normal temperature range observed.');
INSERT INTO `DataCollectionRecord` VALUES (2, 2, '2023-09-25 08:15:00', 'Humidity', 65.00, 'Percent', 60.00, 70.00, 65.50, 97.00, 'Humidity within acceptable limits.');
INSERT INTO `DataCollectionRecord` VALUES (3, 3, '2023-08-15 12:45:00', 'Pressure', 1013.25, 'hPa', 1012.00, 1015.00, 1013.50, 99.00, 'Stable atmospheric pressure.');
INSERT INTO `DataCollectionRecord` VALUES (4, 4, '2023-07-10 16:20:00', 'Rainfall', 12.30, 'mm', 10.00, 15.00, 12.50, 95.00, 'Moderate rainfall recorded.');
INSERT INTO `DataCollectionRecord` VALUES (5, 5, '2023-06-05 09:00:00', 'Wind Speed', 5.50, 'm/s', 4.00, 7.00, 5.20, 96.50, 'Light wind conditions.');
INSERT INTO `DataCollectionRecord` VALUES (6, 6, '2023-05-20 11:10:00', 'Temperature', 30.00, 'Celsius', 28.00, 32.00, 30.50, 97.50, 'High temperature observed.');
INSERT INTO `DataCollectionRecord` VALUES (7, 7, '2023-04-15 18:30:00', 'Humidity', 80.00, 'Percent', 75.00, 85.00, 80.50, 98.00, 'High humidity levels recorded.');

-- ----------------------------
-- Table structure for DataCollectionRule
-- ----------------------------
DROP TABLE IF EXISTS `DataCollectionRule`;
CREATE TABLE `DataCollectionRule`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DataCollectionRule
-- ----------------------------
INSERT INTO `DataCollectionRule` VALUES (1, 'High Temperature Alert', 'Temperature', 35.00, 'Celsius', '>', 'Every 10 minutes', 'Notify Operators', 'Triggered when temperature exceeds 35°C. Indicates potential overheating.', 1);
INSERT INTO `DataCollectionRule` VALUES (2, 'Low Humidity Alert', 'Humidity', 30.00, 'Percent', '<', 'Every 30 minutes', 'Activate Humidifiers', 'Triggered when humidity drops below 30%. Indicates dry conditions.', 1);
INSERT INTO `DataCollectionRule` VALUES (3, 'High Pressure Alert', 'Pressure', 1015.00, 'hPa', '>', 'Every hour', 'Notify Maintenance', 'Triggered when atmospheric pressure exceeds 1015 hPa. Indicates potential weather changes.', 1);
INSERT INTO `DataCollectionRule` VALUES (4, 'Low Rainfall Alert', 'Rainfall', 5.00, 'mm', '<', 'Every 6 hours', 'Monitor Drought', 'Triggered when rainfall drops below 5 mm. Indicates potential drought conditions.', 1);
INSERT INTO `DataCollectionRule` VALUES (5, 'High Wind Speed Alert', 'Wind Speed', 15.00, 'm/s', '>', 'Every 15 minutes', 'Issue Storm Warning', 'Triggered when wind speed exceeds 15 m/s. Indicates storm conditions.', 1);
INSERT INTO `DataCollectionRule` VALUES (6, 'Low Temperature Alert', 'Temperature', 0.00, 'Celsius', '<', 'Every 10 minutes', 'Activate Heating', 'Triggered when temperature drops below 0°C. Indicates freezing conditions.', 1);
INSERT INTO `DataCollectionRule` VALUES (7, 'High Humidity Alert', 'Humidity', 80.00, 'Percent', '>', 'Every 30 minutes', 'Notify Operators', 'Triggered when humidity exceeds 80%. Indicates potential condensation issues.', 1);

-- ----------------------------
-- Table structure for DataCollector
-- ----------------------------
DROP TABLE IF EXISTS `DataCollector`;
CREATE TABLE `DataCollector`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DataCollector
-- ----------------------------
INSERT INTO `DataCollector` VALUES (1, 'DC-100', 'Mountainside, Sichuan', '2022-03-15', '2022-04-10', 'DataTech', 'Running', 30.658601, 104.064762, 1200.50, 'Monitoring environmental data in mountainous region.');
INSERT INTO `DataCollector` VALUES (2, 'DC-200', 'Urban Area, Beijing', '2021-05-20', '2021-06-05', 'HydroSense', 'Maintenance', 39.904202, 116.407394, 50.00, 'Currently under maintenance for sensor calibration.');
INSERT INTO `DataCollector` VALUES (3, 'DC-150', 'Coastal Area, Shanghai', '2023-01-10', '2023-02-01', 'DataTech', 'Running', 31.230416, 121.473701, 10.00, 'Monitoring environmental data in coastal region.');
INSERT INTO `DataCollector` VALUES (4, 'DC-300', 'Plateau, Tibet', '2020-08-12', '2020-09-01', 'HydroSense', 'Stopped', 29.654084, 91.110221, 4500.00, 'Station temporarily stopped due to extreme weather conditions.');
INSERT INTO `DataCollector` VALUES (5, 'DC-250', 'Forest Area, Yunnan', '2022-07-18', '2022-08-05', 'DataTech', 'Running', 25.045806, 102.709999, 1800.00, 'Monitoring environmental data in forested region.');
INSERT INTO `DataCollector` VALUES (6, 'DC-400', 'Desert Area, Xinjiang', '2023-05-22', '2023-06-10', 'HydroSense', 'Running', 41.112900, 85.240104, 800.00, 'Monitoring environmental data in desert region.');
INSERT INTO `DataCollector` VALUES (7, 'DC-350', 'Rural Area, Henan', '2021-04-30', '2021-05-15', 'DataTech', 'Running', 34.747847, 113.624931, 200.00, 'Monitoring environmental data in rural region.');

SET FOREIGN_KEY_CHECKS = 1;
