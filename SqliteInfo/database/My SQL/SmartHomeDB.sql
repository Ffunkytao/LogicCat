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

 Date: 27/01/2025 23:32:45
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

SET FOREIGN_KEY_CHECKS = 1;
