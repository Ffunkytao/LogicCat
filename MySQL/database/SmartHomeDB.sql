/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : SmartHomeDB

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:30:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for AutomationRules
-- ----------------------------
DROP TABLE IF EXISTS `AutomationRules`;
CREATE TABLE `AutomationRules` (
  `ruleId` int NOT NULL AUTO_INCREMENT,
  `ruleName` varchar(255) DEFAULT NULL,
  `ruleDescription` text,
  `triggerCondition` text,
  `action` text,
  `deviceId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `ruleStatus` enum('启用','禁用') DEFAULT '启用',
  PRIMARY KEY (`ruleId`),
  KEY `deviceId` (`deviceId`),
  KEY `userId` (`userId`),
  CONSTRAINT `AutomationRules_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`),
  CONSTRAINT `AutomationRules_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of AutomationRules
-- ----------------------------
BEGIN;
INSERT INTO `AutomationRules` VALUES (1, '温度控制规则', '当温度高于25°C时打开空调', '温度 > 25°C', '打开空调', 3, 1, '2023-01-01 09:00:00', '2023-10-01 10:00:00', '启用');
INSERT INTO `AutomationRules` VALUES (2, '湿度控制规则', '当湿度低于50%时打开加湿器', '湿度 < 50%', '打开加湿器', 2, 2, '2023-02-01 10:00:00', '2023-10-01 11:00:00', '启用');
INSERT INTO `AutomationRules` VALUES (3, '灯光控制规则', '当光线低于50lux时打开灯光', '光线 < 50lux', '打开灯光', 1, 3, '2023-03-01 11:00:00', '2023-10-01 12:00:00', '禁用');
COMMIT;

-- ----------------------------
-- Table structure for Devices
-- ----------------------------
DROP TABLE IF EXISTS `Devices`;
CREATE TABLE `Devices` (
  `deviceId` int NOT NULL AUTO_INCREMENT,
  `deviceName` varchar(255) NOT NULL,
  `deviceType` varchar(100) DEFAULT NULL,
  `manufacturerId` int DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `powerRating` decimal(10,2) DEFAULT NULL,
  `voltageRating` decimal(10,2) DEFAULT NULL,
  `installationDate` datetime DEFAULT NULL,
  `status` enum('在线','离线','故障') DEFAULT '在线',
  `lastMaintenanceDate` datetime DEFAULT NULL,
  `nextMaintenanceDate` datetime DEFAULT NULL,
  PRIMARY KEY (`deviceId`),
  KEY `manufacturerId` (`manufacturerId`),
  CONSTRAINT `Devices_ibfk_1` FOREIGN KEY (`manufacturerId`) REFERENCES `Manufacturers` (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Devices
-- ----------------------------
BEGIN;
INSERT INTO `Devices` VALUES (1, 'Smart Bulb 1', '照明', 1, 'SB-1000', 10.50, 120.00, '2023-01-15 10:00:00', '在线', '2023-06-15 14:00:00', '2023-12-15 14:00:00');
INSERT INTO `Devices` VALUES (2, 'Smart Plug 1', '插座', 2, 'SP-2000', 15.00, 220.00, '2023-02-20 11:00:00', '在线', '2023-07-20 15:00:00', '2024-01-20 15:00:00');
INSERT INTO `Devices` VALUES (3, 'Smart Thermostat 1', '温控', 3, 'ST-3000', 5.00, 110.00, '2023-03-10 12:00:00', '故障', '2023-08-10 16:00:00', '2024-02-10 16:00:00');
COMMIT;

-- ----------------------------
-- Table structure for EnergyConsumption
-- ----------------------------
DROP TABLE IF EXISTS `EnergyConsumption`;
CREATE TABLE `EnergyConsumption` (
  `consumptionId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `energyConsumed` decimal(10,2) DEFAULT NULL,
  `powerUsage` decimal(10,2) DEFAULT NULL,
  `voltage` decimal(10,2) DEFAULT NULL,
  `current` decimal(10,2) DEFAULT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `humidity` decimal(5,2) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`consumptionId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `EnergyConsumption_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of EnergyConsumption
-- ----------------------------
BEGIN;
INSERT INTO `EnergyConsumption` VALUES (1, 1, '2023-10-01 08:00:00', 2.50, 10.00, 120.00, 0.10, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2, 2, '2023-10-01 09:00:00', 3.00, 15.00, 220.00, 0.20, 26.00, 55.00, '中');
INSERT INTO `EnergyConsumption` VALUES (3, 3, '2023-10-01 10:00:00', 1.00, 5.00, 110.00, 0.05, 24.00, 60.00, '低');
COMMIT;

-- ----------------------------
-- Table structure for MaintenanceRecords
-- ----------------------------
DROP TABLE IF EXISTS `MaintenanceRecords`;
CREATE TABLE `MaintenanceRecords` (
  `maintenanceId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `maintenanceDate` datetime DEFAULT NULL,
  `maintenanceType` enum('定期维护','紧急维修') DEFAULT NULL,
  `technicianName` varchar(255) DEFAULT NULL,
  `technicianContact` varchar(20) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `partsReplaced` text,
  `maintenanceDescription` text,
  `nextMaintenanceDate` datetime DEFAULT NULL,
  PRIMARY KEY (`maintenanceId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `MaintenanceRecords_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of MaintenanceRecords
-- ----------------------------
BEGIN;
INSERT INTO `MaintenanceRecords` VALUES (1, 1, '2023-06-15 14:00:00', '定期维护', 'Bob Builder', '+1234567890', 50.00, '灯泡', '更换灯泡', '2023-12-15 14:00:00');
INSERT INTO `MaintenanceRecords` VALUES (2, 2, '2023-07-20 15:00:00', '定期维护', 'Alice Engineer', '+0987654321', 100.00, '插座', '清洁插座', '2024-01-20 15:00:00');
INSERT INTO `MaintenanceRecords` VALUES (3, 3, '2023-08-10 16:00:00', '紧急维修', 'Charlie Mechanic', '+1122334455', 200.00, '温控器', '修复温控器', '2024-02-10 16:00:00');
COMMIT;

-- ----------------------------
-- Table structure for Manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `Manufacturers`;
CREATE TABLE `Manufacturers` (
  `manufacturerId` int NOT NULL AUTO_INCREMENT,
  `manufacturerName` varchar(255) NOT NULL,
  `contactPerson` varchar(255) DEFAULT NULL,
  `contactEmail` varchar(255) DEFAULT NULL,
  `contactPhone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `supportEmail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `Manufacturers` VALUES (1, 'SmartHome Inc.', 'John Doe', 'john.doe@smarthome.com', '+1234567890', '123 Smart Street', 'Tech City', 'USA', 'www.smarthome.com', 'support@smarthome.com');
INSERT INTO `Manufacturers` VALUES (2, 'GadgetWorks', 'Jane Smith', 'jane.smith@gadgetworks.com', '+0987654321', '456 Gadget Avenue', 'Gadget Town', 'Canada', 'www.gadgetworks.com', 'support@gadgetworks.com');
INSERT INTO `Manufacturers` VALUES (3, 'ElectroTech', 'Alice Johnson', 'alice.johnson@electrotech.com', '+1122334455', '789 Electro Lane', 'Electro City', 'UK', 'www.electrotech.com', 'support@electrotech.com');
COMMIT;

-- ----------------------------
-- Table structure for Notifications
-- ----------------------------
DROP TABLE IF EXISTS `Notifications`;
CREATE TABLE `Notifications` (
  `notificationId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `deviceId` int DEFAULT NULL,
  `notificationType` enum('维护提醒','异常警报') DEFAULT NULL,
  `notificationMessage` text,
  `timestamp` datetime DEFAULT NULL,
  `notificationStatus` enum('已读','未读') DEFAULT '未读',
  `notificationPriority` enum('高','中','低') DEFAULT '中',
  `notificationSource` enum('系统','设备') DEFAULT NULL,
  `notificationDescription` text,
  PRIMARY KEY (`notificationId`),
  KEY `userId` (`userId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `Notifications_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`),
  CONSTRAINT `Notifications_ibfk_2` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Notifications
-- ----------------------------
BEGIN;
INSERT INTO `Notifications` VALUES (1, 1, 1, '维护提醒', '设备 Smart Bulb 1 需要维护', '2023-10-01 08:00:00', '未读', '高', '系统', '定期维护提醒');
INSERT INTO `Notifications` VALUES (2, 2, 2, '异常警报', '设备 Smart Plug 1 出现异常', '2023-10-01 09:00:00', '未读', '中', '设备', '设备异常警报');
INSERT INTO `Notifications` VALUES (3, 3, 3, '维护提醒', '设备 Smart Thermostat 1 需要维护', '2023-10-01 10:00:00', '未读', '低', '系统', '定期维护提醒');
COMMIT;

-- ----------------------------
-- Table structure for SensorData
-- ----------------------------
DROP TABLE IF EXISTS `SensorData`;
CREATE TABLE `SensorData` (
  `dataId` int NOT NULL AUTO_INCREMENT,
  `sensorId` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `dataValue` decimal(10,2) DEFAULT NULL,
  `dataStatus` enum('正常','异常') DEFAULT '正常',
  `dataUnit` varchar(50) DEFAULT NULL,
  `dataDescription` text,
  `dataSource` varchar(100) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  `environmentalConditions` text,
  PRIMARY KEY (`dataId`),
  KEY `sensorId` (`sensorId`),
  CONSTRAINT `SensorData_ibfk_1` FOREIGN KEY (`sensorId`) REFERENCES `Sensors` (`sensorId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of SensorData
-- ----------------------------
BEGIN;
INSERT INTO `SensorData` VALUES (1, 1, '2023-10-01 08:00:00', 25.00, '正常', '摄氏度', '环境温度', '传感器1', '高', '温度: 25°C, 湿度: 50%');
INSERT INTO `SensorData` VALUES (2, 2, '2023-10-01 09:00:00', 55.00, '正常', '百分比', '环境湿度', '传感器2', '中', '温度: 26°C, 湿度: 55%');
INSERT INTO `SensorData` VALUES (3, 3, '2023-10-01 10:00:00', 60.00, '异常', 'Hz', '设备震动', '传感器3', '低', '温度: 24°C, 湿度: 60%');
COMMIT;

-- ----------------------------
-- Table structure for Sensors
-- ----------------------------
DROP TABLE IF EXISTS `Sensors`;
CREATE TABLE `Sensors` (
  `sensorId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `sensorType` varchar(100) DEFAULT NULL,
  `sensorName` varchar(255) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `installationDate` datetime DEFAULT NULL,
  `status` enum('正常','故障') DEFAULT '正常',
  `lastCalibrationDate` datetime DEFAULT NULL,
  `calibrationInterval` int DEFAULT NULL,
  `sensorDescription` text,
  PRIMARY KEY (`sensorId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `Sensors_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Sensors
-- ----------------------------
BEGIN;
INSERT INTO `Sensors` VALUES (1, 1, '温度传感器', 'Temp Sensor 1', '摄氏度', '2023-01-15 10:00:00', '正常', '2023-06-15 14:00:00', 180, '监测环境温度');
INSERT INTO `Sensors` VALUES (2, 2, '湿度传感器', 'Humidity Sensor 1', '百分比', '2023-02-20 11:00:00', '正常', '2023-07-20 15:00:00', 180, '监测环境湿度');
INSERT INTO `Sensors` VALUES (3, 3, '震动传感器', 'Vibration Sensor 1', 'Hz', '2023-03-10 12:00:00', '故障', '2023-08-10 16:00:00', 180, '监测设备震动');
COMMIT;

-- ----------------------------
-- Table structure for UserPreferences
-- ----------------------------
DROP TABLE IF EXISTS `UserPreferences`;
CREATE TABLE `UserPreferences` (
  `preferenceId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `deviceId` int DEFAULT NULL,
  `preferenceName` varchar(255) DEFAULT NULL,
  `preferenceValue` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `preferenceType` enum('手动设置','自动学习') DEFAULT NULL,
  `preferenceDescription` text,
  `preferenceSource` varchar(100) DEFAULT NULL,
  `preferenceQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`preferenceId`),
  KEY `userId` (`userId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `UserPreferences_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`),
  CONSTRAINT `UserPreferences_ibfk_2` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of UserPreferences
-- ----------------------------
BEGIN;
INSERT INTO `UserPreferences` VALUES (1, 1, 1, '灯光亮度', '80%', '2023-10-01 08:00:00', '手动设置', '用户设置的灯光亮度', '用户输入', '高');
INSERT INTO `UserPreferences` VALUES (2, 2, 2, '插座开关', '开启', '2023-10-01 09:00:00', '自动学习', '系统自动学习的偏好', '系统推荐', '中');
INSERT INTO `UserPreferences` VALUES (3, 3, 3, '温度设置', '22°C', '2023-10-01 10:00:00', '手动设置', '用户设置的温度', '用户输入', '低');
COMMIT;

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `registrationDate` datetime DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `userRole` enum('管理员','普通用户') DEFAULT '普通用户',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Users
-- ----------------------------
BEGIN;
INSERT INTO `Users` VALUES (1, 'Alice', 'alice@example.com', '+1111111111', '123 Home Street', 'Home City', 'USA', '2023-01-01 09:00:00', '2023-10-01 10:00:00', '管理员');
INSERT INTO `Users` VALUES (2, 'Bob', 'bob@example.com', '+2222222222', '456 Work Avenue', 'Work Town', 'Canada', '2023-02-01 10:00:00', '2023-10-01 11:00:00', '普通用户');
INSERT INTO `Users` VALUES (3, 'Charlie', 'charlie@example.com', '+3333333333', '789 Office Lane', 'Office City', 'UK', '2023-03-01 11:00:00', '2023-10-01 12:00:00', '普通用户');
COMMIT;

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

SET FOREIGN_KEY_CHECKS = 1;
