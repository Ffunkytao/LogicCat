/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : PhysicsLabDB

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:28:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Calculations
-- ----------------------------
DROP TABLE IF EXISTS `Calculations`;
CREATE TABLE `Calculations` (
  `calculationId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `formula` text NOT NULL,
  `inputData` text,
  `result` decimal(10,2) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`calculationId`),
  KEY `experimentId` (`experimentId`),
  CONSTRAINT `Calculations_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`)
) ENGINE=InnoDB AUTO_INCREMENT=4273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Calculations
-- ----------------------------
BEGIN;
INSERT INTO `Calculations` VALUES (1, 1, 'V = IR', 'I=2A, R=6Ω', 12.00, 'V', '高');
INSERT INTO `Calculations` VALUES (2, 2, 'E = hν', 'h=6.626e-34, ν=1e14', 0.00, 'J', '中');
INSERT INTO `Calculations` VALUES (3, 3, 'F = qvB', 'q=1.6e-19, v=1e6, B=0.5', 0.00, 'N', '高');
INSERT INTO `Calculations` VALUES (4, 4, 'Q = mcΔT', 'm=1kg, c=4200, ΔT=10', 42000.00, 'J', '中');
INSERT INTO `Calculations` VALUES (5, 1013, '并联电阻公式: 1/Req = Σ(1/Ri)', 'R1=10.00Ω, R2=20.00Ω, R3=30.00Ω, R4=40.00Ω, R5=50.00Ω', 4.38, 'Ω', '高');
INSERT INTO `Calculations` VALUES (6, 1015, 'F = m × a', '质量=5.00kg, 加速度=9.81m/s²', 49.05, 'N', '高');
INSERT INTO `Calculations` VALUES (7, 4, 'Q = mcΔT', 'm=1kg, c=4200, ΔT=10', 42000.00, 'J', '高');
INSERT INTO `Calculations` VALUES (119, NULL, '1/Req = 1/R1 + 1/R2 + 1/R3 + 1/R4 + 1/R5', 'R1=10Ω, R2=20Ω, R3=30Ω, R4=40Ω, R5=50Ω', 4.38, 'Ω', '高');
INSERT INTO `Calculations` VALUES (4001, 1014, 'P = V * I (I=2A)', '电压=12.80V, 电流=2A', 25.60, 'W', '高');
INSERT INTO `Calculations` VALUES (4002, 1014, 'P = V * I (I=2A)', '电压=24.20V, 电流=2A', 48.40, 'W', '高');
INSERT INTO `Calculations` VALUES (4003, 1014, 'P = V * I (I=2A)', '电压=5.10V, 电流=2A', 10.20, 'W', '高');
INSERT INTO `Calculations` VALUES (4004, 1, 'F = m * a', 'm=5kg, a=9.8m/s²', 49.00, 'N', '高');
COMMIT;

-- ----------------------------
-- Table structure for Constraints
-- ----------------------------
DROP TABLE IF EXISTS `Constraints`;
CREATE TABLE `Constraints` (
  `constraintId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `constraintText` text NOT NULL,
  `constraintType` enum('等式','不等式') DEFAULT '等式',
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`constraintId`),
  KEY `experimentId` (`experimentId`),
  CONSTRAINT `Constraints_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Constraints
-- ----------------------------
BEGIN;
INSERT INTO `Constraints` VALUES (1, 1, '光强 >= 50 lux', '不等式', '高');
INSERT INTO `Constraints` VALUES (2, 2, '量子态总和 = 1', '等式', '中');
INSERT INTO `Constraints` VALUES (3, 3, '磁场强度 <= 1 T', '不等式', '高');
INSERT INTO `Constraints` VALUES (4, 4, '温差 >= 5 °C', '不等式', '中');
COMMIT;

-- ----------------------------
-- Table structure for DeviceTypes
-- ----------------------------
DROP TABLE IF EXISTS `DeviceTypes`;
CREATE TABLE `DeviceTypes` (
  `deviceType` varchar(255) NOT NULL,
  `maintenanceCost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`deviceType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of DeviceTypes
-- ----------------------------
BEGIN;
INSERT INTO `DeviceTypes` VALUES ('光设备', 1000.00);
INSERT INTO `DeviceTypes` VALUES ('光谱仪', 800.00);
INSERT INTO `DeviceTypes` VALUES ('其他', 300.00);
INSERT INTO `DeviceTypes` VALUES ('示波器', 500.00);
COMMIT;

-- ----------------------------
-- Table structure for Devices
-- ----------------------------
DROP TABLE IF EXISTS `Devices`;
CREATE TABLE `Devices` (
  `deviceId` int NOT NULL AUTO_INCREMENT,
  `deviceName` varchar(255) NOT NULL,
  `deviceType` enum('示波器','光谱仪','其他') DEFAULT '其他',
  `calibrationDate` datetime DEFAULT NULL,
  `status` enum('正常','故障') DEFAULT '正常',
  `labId` int DEFAULT NULL,
  `supplierId` int DEFAULT NULL,
  `warrantyEndDate` date DEFAULT NULL,
  `purchaseDate` date DEFAULT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `specifications` varchar(255) DEFAULT NULL,
  `storageLocation` varchar(255) DEFAULT NULL,
  `itemId` int DEFAULT NULL,
  `placeId` int DEFAULT NULL,
  `serialNumber` varchar(255) DEFAULT NULL,
  `warrantyPeriod` int DEFAULT NULL,
  `energyConsumption` decimal(10,2) DEFAULT NULL,
  `power` int DEFAULT NULL,
  `powerRating` int DEFAULT NULL,
  `current` decimal(10,2) DEFAULT NULL,
  `installationDate` date DEFAULT NULL,
  `locationId` int DEFAULT NULL,
  `weightKg` decimal(10,2) DEFAULT NULL,
  `lastMaintenanceDate` date DEFAULT NULL,
  `flemId` int DEFAULT NULL,
  PRIMARY KEY (`deviceId`),
  KEY `labId` (`labId`),
  KEY `supplierId` (`supplierId`),
  KEY `fk_place` (`placeId`),
  CONSTRAINT `Devices_ibfk_1` FOREIGN KEY (`labId`) REFERENCES `Labs` (`labId`),
  CONSTRAINT `Devices_ibfk_2` FOREIGN KEY (`supplierId`) REFERENCES `Suppliers` (`supplierId`),
  CONSTRAINT `fk_place` FOREIGN KEY (`placeId`) REFERENCES `Places` (`placeId`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Devices
-- ----------------------------
BEGIN;
INSERT INTO `Devices` VALUES (1, '示波器1', '示波器', '2023-01-01 00:00:00', '正常', 1, NULL, NULL, '2025-07-01', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2030-07-01', 1, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (2, '光谱仪1', '光谱仪', '2023-02-01 00:00:00', '故障', 2, 1, '2035-06-17', '2030-03-17', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (3, '电磁场测量仪1', '其他', '2023-03-01 00:00:00', '正常', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (4, '温度传感器1', '其他', '2023-04-01 00:00:00', '正常', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (5, '示波器1', '示波器', '2024-01-01 00:00:00', '正常', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (100, 'SpectroMax Pro光谱仪', '光谱仪', '2023-06-15 00:00:00', '正常', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (101, '超精密光速测量仪', '其他', '2023-11-30 00:00:00', '正常', 3, NULL, '2025-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (102, '光谱仪-A1', '其他', '2022-01-01 00:00:00', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (103, '光谱仪', '其他', '2020-01-01 00:00:00', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (104, '光密仪 A1', '光谱仪', '2010-06-17 22:46:42', '正常', 111, NULL, '2025-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL, '2019-06-17', NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (105, '光密仪 A2', '其他', NULL, '正常', NULL, 502, '2025-06-15', '2023-06-15', '光密仪 A1', NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (1001, '光密仪 A1', '其他', '2023-01-15 00:00:00', '故障', 1, 501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Devices` VALUES (1002, '未来设备X', '其他', NULL, '故障', NULL, NULL, NULL, '2028-12-31', NULL, NULL, NULL, NULL, NULL, 'SN-FUT2025XYZ', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-12-01', NULL);
COMMIT;

-- ----------------------------
-- Table structure for EnergyConsumption
-- ----------------------------
DROP TABLE IF EXISTS `EnergyConsumption`;
CREATE TABLE `EnergyConsumption` (
  `deviceId` int DEFAULT NULL,
  `energyConsumed` decimal(10,2) DEFAULT NULL,
  `consumptionDate` date DEFAULT NULL,
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `EnergyConsumption_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for ExperimentData
-- ----------------------------
DROP TABLE IF EXISTS `ExperimentData`;
CREATE TABLE `ExperimentData` (
  `dataId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `deviceId` int DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `measurementValue` decimal(10,2) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  `environmentalConditions` text,
  PRIMARY KEY (`dataId`),
  KEY `experimentId` (`experimentId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `ExperimentData_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`),
  CONSTRAINT `ExperimentData_ibfk_2` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=3058 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ExperimentData
-- ----------------------------
BEGIN;
INSERT INTO `ExperimentData` VALUES (1, 1, 1, '2023-03-02 10:30:00', 12.34, 'V', '高', '温度: 25°C, 湿度: 50%');
INSERT INTO `ExperimentData` VALUES (2, 2, 2, '2023-04-02 11:00:00', 56.78, 'nm', '中', '温度: 22°C, 湿度: 45%');
INSERT INTO `ExperimentData` VALUES (3, 3, 3, '2023-05-02 09:30:00', 0.45, 'T', '高', '温度: 20°C, 湿度: 40%');
INSERT INTO `ExperimentData` VALUES (4, 4, 4, '2023-06-02 10:00:00', 98.76, '°C', '中', '温度: 23°C, 湿度: 55%');
INSERT INTO `ExperimentData` VALUES (2001, 1002, 3, '2023-09-15 14:30:00', 1.75, 'mV', '高', '温度25°C,湿度40%');
INSERT INTO `ExperimentData` VALUES (2002, 1, 100, '2023-10-10 14:30:00', 500.00, '纳米', '高', '温度:23.5°C,湿度:45%,气压:101.3kPa');
INSERT INTO `ExperimentData` VALUES (3001, 1004, 2, '2024-03-01 10:00:00', 700.50, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3002, 1004, 2, '2024-03-01 10:01:00', 650.20, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3003, 1004, 2, '2024-03-01 10:02:00', 600.80, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3004, 1004, 2, '2024-03-01 10:03:00', 550.30, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3005, 1004, 2, '2024-03-01 10:04:00', 520.70, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3006, 1004, 2, '2024-03-01 10:05:00', 450.10, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3007, 1004, 2, '2024-03-01 10:06:00', 420.90, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3008, 1004, 2, '2024-03-01 10:07:00', 380.40, 'nm', '中', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3009, 1004, 2, '2024-03-01 10:08:00', 350.60, 'nm', '中', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3010, 1004, 2, '2024-03-01 10:09:00', 320.20, 'nm', '中', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3011, 1004, 2, '2024-03-01 10:10:00', 800.30, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3012, 1004, 2, '2024-03-01 10:11:00', 850.70, 'nm', '高', '温度:25°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3013, 1005, 1, '2023-09-05 14:00:00', 35000.00, 'K', '高', '温度:35°C,湿度:45%');
INSERT INTO `ExperimentData` VALUES (3014, 1005, 2, '2023-09-07 10:30:00', 9500.00, 'kPa', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3015, 1006, 3, '2023-08-18 09:15:00', 550.00, 'T', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3016, 1006, 4, '2023-08-19 11:20:00', 5200.00, 'μSv/h', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3017, 1007, 1, '2023-11-02 10:00:00', 15000.00, 'T', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3018, 1007, 2, '2023-11-02 15:30:00', 9800.00, 'K', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3019, 1007, 3, '2023-11-03 09:15:00', 12500.00, 'T', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3020, 1008, 4, '2023-09-10 11:00:00', 9.78, 'm/s²', '高', '温度24°C,湿度44%');
INSERT INTO `ExperimentData` VALUES (3021, 1008, 4, '2023-09-10 14:00:00', 9.79, 'm/s²', '高', '温度25°C,湿度42%');
INSERT INTO `ExperimentData` VALUES (3022, 1009, 2, '2023-11-15 10:00:00', 5.00, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3023, 1009, 2, '2023-11-15 10:00:00', 0.05, 'A', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3024, 1009, 2, '2023-11-15 11:30:00', 10.01, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3025, 1009, 2, '2023-11-15 11:30:00', 0.05, 'A', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3026, 1009, 2, '2023-11-15 13:45:00', 2.50, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3027, 1009, 2, '2023-11-15 13:45:00', 0.05, 'A', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3028, 1009, 2, '2023-11-15 15:15:00', 7.50, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3029, 1009, 2, '2023-11-15 15:15:00', 0.05, 'A', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3030, 1010, 4, '2023-12-05 09:30:00', 25.20, 'Celsius', '高', '温度25°C,湿度40%');
INSERT INTO `ExperimentData` VALUES (3031, 1010, 4, '2023-12-05 10:00:00', 26.00, 'Celsius', '高', '温度26°C,湿度38%');
INSERT INTO `ExperimentData` VALUES (3032, 1010, 4, '2023-12-05 11:15:00', 85.00, 'Celsius', '高', '温度85°C,湿度25%');
INSERT INTO `ExperimentData` VALUES (3033, 1010, 4, '2023-12-05 12:45:00', 120.50, 'Celsius', '高', '温度120°C,湿度15%');
INSERT INTO `ExperimentData` VALUES (3034, 1010, 4, '2023-12-05 14:00:00', 150.00, 'Celsius', '高', '温度150°C,湿度10%');
INSERT INTO `ExperimentData` VALUES (3035, 1010, 4, '2023-12-05 15:30:00', 175.30, 'Celsius', '高', '温度175°C,湿度8%');
INSERT INTO `ExperimentData` VALUES (3036, 1010, 4, '2023-12-05 16:00:00', 180.00, 'Celsius', '高', '温度180°C,湿度5%');
INSERT INTO `ExperimentData` VALUES (3037, 1010, 4, '2023-12-05 16:45:00', 95.50, 'Celsius', '高', '温度95°C,湿度20%');
INSERT INTO `ExperimentData` VALUES (3038, 1011, 101, '2023-12-12 09:30:00', 1250000.42, 'm/s', '高', '真空度1e-7Pa,温度21°C');
INSERT INTO `ExperimentData` VALUES (3039, 1011, 101, '2023-12-12 11:15:00', 1520000.37, 'm/s', '高', '真空度5e-8Pa,温度20.5°C');
INSERT INTO `ExperimentData` VALUES (3040, 1011, 101, '2023-12-12 14:00:00', 2100000.15, 'm/s', '高', '真空度2e-8Pa,温度20°C');
INSERT INTO `ExperimentData` VALUES (3041, 1011, 101, '2023-12-12 16:30:00', 980000.88, 'm/s', '中', '真空度1e-6Pa,温度22°C');
INSERT INTO `ExperimentData` VALUES (3042, 1011, 101, '2023-12-12 18:45:00', 1750000.64, 'm/s', '高', '真空度1e-7Pa,温度21°C');
INSERT INTO `ExperimentData` VALUES (3043, 1012, 100, '2023-12-15 10:30:00', 5.00, '10^14 Hz', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3044, 1014, 4, '2023-12-25 10:15:00', 12.80, 'V', '高', '温度25°C,湿度45%');
INSERT INTO `ExperimentData` VALUES (3045, 1014, 4, '2023-12-25 11:30:00', 24.20, 'V', '高', '温度25°C,湿度43%');
INSERT INTO `ExperimentData` VALUES (3046, 1014, 4, '2023-12-25 13:45:00', 5.10, 'V', '高', '温度25°C,湿度47%');
INSERT INTO `ExperimentData` VALUES (3047, 1014, 4, '2023-12-25 15:00:00', 36.50, 'V', '高', '温度28°C,湿度40%');
INSERT INTO `ExperimentData` VALUES (3048, 1016, 4, '2024-01-05 10:00:00', 220.50, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3049, 1016, 4, '2024-01-05 14:30:00', 230.10, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3050, 1017, 4, '2024-01-07 11:15:00', 8500.00, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3051, 1017, 4, '2024-01-07 15:45:00', 9200.00, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3052, 1018, 4, '2024-01-09 09:30:00', 15000.00, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3053, 1018, 4, '2024-01-09 13:15:00', 12500.00, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3054, 1018, 4, '2024-01-09 16:45:00', 18000.00, 'V', '高', NULL);
INSERT INTO `ExperimentData` VALUES (3055, 1016, 1, '2025-06-15 21:04:18', 5.00, 'V', '高', '温度25°C，湿度50%，气压1013hPa');
INSERT INTO `ExperimentData` VALUES (3056, 1016, 1, '2025-06-15 21:04:18', 3.00, 'V', '高', '温度30°C，湿度60%');
INSERT INTO `ExperimentData` VALUES (3057, 1010, 1, '2025-06-15 21:04:18', 3.00, 'V', '低', '温度30°C，湿度60%');
COMMIT;

-- ----------------------------
-- Table structure for Experiments
-- ----------------------------
DROP TABLE IF EXISTS `Experiments`;
CREATE TABLE `Experiments` (
  `experimentId` int NOT NULL AUTO_INCREMENT,
  `experimentName` varchar(255) NOT NULL,
  `description` text,
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `status` enum('进行中','已完成') DEFAULT '进行中',
  `hypothesis` text,
  `objective` text,
  `researcherId` int DEFAULT NULL,
  `labId` int DEFAULT NULL,
  PRIMARY KEY (`experimentId`),
  KEY `researcherId` (`researcherId`),
  KEY `labId` (`labId`),
  CONSTRAINT `Experiments_ibfk_1` FOREIGN KEY (`researcherId`) REFERENCES `Researchers` (`researcherId`),
  CONSTRAINT `Experiments_ibfk_2` FOREIGN KEY (`labId`) REFERENCES `Labs` (`labId`)
) ENGINE=InnoDB AUTO_INCREMENT=8002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Experiments
-- ----------------------------
BEGIN;
INSERT INTO `Experiments` VALUES (1, '双缝实验', '研究光的波动性', '2023-03-01 10:00:00', '2023-03-15 18:00:00', '已完成', '光具有波动性', '验证光的波动性', 1, 1);
INSERT INTO `Experiments` VALUES (2, '量子纠缠实验', '研究量子纠缠现象', '2023-04-01 09:00:00', NULL, '进行中', '量子纠缠存在', '验证量子纠缠', 2, 2);
INSERT INTO `Experiments` VALUES (3, '电磁感应实验', '研究电磁感应现象', '2023-05-01 08:00:00', '2023-05-10 17:00:00', '已完成', '电磁感应与磁场变化相关', '验证法拉第定律', 3, 3);
INSERT INTO `Experiments` VALUES (4, '热传导实验', '研究热传导规律', '2023-06-01 09:00:00', NULL, '进行中', '热传导速率与温差成正比', '验证傅里叶定律', 4, 4);
INSERT INTO `Experiments` VALUES (101, '极端条件模拟实验', NULL, '2023-01-15 00:00:00', '2023-12-31 00:00:00', '进行中', NULL, NULL, 1, 1);
INSERT INTO `Experiments` VALUES (1001, '暗物质探测实验', '使用新型探测器寻找暗物质粒子', '2023-06-01 00:00:00', NULL, '进行中', '新型探测器灵敏度更高', '验证暗物质存在', 2, 101);
INSERT INTO `Experiments` VALUES (1002, '量子缠实验', '验证量子纠缠现象', '2023-09-01 00:00:00', '2023-12-31 00:00:00', '已完成', '量子态可被远距离保持', '验证量子通信理论', 1, 1);
INSERT INTO `Experiments` VALUES (1003, '某个实验', '变量A和B相互计算的实验', '2024-01-01 00:00:00', '2024-01-31 00:00:00', '已完成', '变量A和B存在相互依赖关系', '研究变量间的数学关系', 1, 1);
INSERT INTO `Experiments` VALUES (1004, '光谱分析实验', '使用光谱仪测量不同波长的光强数据', '2024-03-01 00:00:00', '2024-03-31 00:00:00', '已完成', '不同波长具有不同的光强特征', '分析光谱特性并计算能量值', 1, 1);
INSERT INTO `Experiments` VALUES (1005, '超常条件验证实验', NULL, '2023-09-01 00:00:00', NULL, '进行中', NULL, NULL, NULL, NULL);
INSERT INTO `Experiments` VALUES (1006, '极端压力测试', NULL, '2023-08-15 00:00:00', '2024-06-17 23:13:11', '已完成', NULL, 'energy', NULL, NULL);
INSERT INTO `Experiments` VALUES (1007, '超导材料极限测试', NULL, '2023-11-01 00:00:00', NULL, '进行中', NULL, NULL, NULL, 102);
INSERT INTO `Experiments` VALUES (1008, '测量重力加速度', '使用自由落体法测量本地重力加速度', '2023-09-10 09:00:00', '2023-09-10 17:00:00', '已完成', NULL, NULL, 1, 1);
INSERT INTO `Experiments` VALUES (1009, '精密电阻测量实验', '使用四线法测量标准电阻器的电压电流特性', '2023-11-15 09:00:00', '2023-11-15 17:00:00', '已完成', NULL, NULL, 1, 1);
INSERT INTO `Experiments` VALUES (1010, '材料高温性能测试', '测量材料在升温过程中的性能变化，使用设备ID4的温度传感器', '2023-12-05 09:00:00', '2023-12-05 17:00:00', '已完成', NULL, NULL, 1, 1);
INSERT INTO `Experiments` VALUES (1011, '测量光速实验', '使用设备ID101测量异常光速值', '2023-12-12 08:00:00', '2023-12-12 20:00:00', '已完成', NULL, NULL, 3, 3);
INSERT INTO `Experiments` VALUES (1012, '光谱仪测量实验', '使用高分辨率光谱仪测量光波特性', '2023-12-15 09:00:00', '2023-12-15 17:00:00', '已完成', NULL, NULL, 4, 2);
INSERT INTO `Experiments` VALUES (1013, '精密电阻网络实验', '测量五电阻并联电路的等效电阻', '2023-12-20 09:00:00', '2023-12-20 15:00:00', '已完成', NULL, NULL, 2, 2);
INSERT INTO `Experiments` VALUES (1014, '电路功率特性分析', '使用设备ID4测量电压并计算功率', '2023-12-25 09:00:00', '2023-12-25 17:00:00', '已完成', NULL, NULL, 3, 2);
INSERT INTO `Experiments` VALUES (1015, '基础力学实验', '牛顿第二定律验证实验', '2023-12-28 09:00:00', '2023-12-28 12:00:00', '已完成', NULL, NULL, NULL, NULL);
INSERT INTO `Experiments` VALUES (1016, '标准电压测试', '常规电路电压测量', '2024-01-05 00:00:00', '2024-01-06 00:00:00', '已完成', NULL, NULL, 1, 1);
INSERT INTO `Experiments` VALUES (1017, '高压绝缘实验', '绝缘材料耐压测试', '2024-01-07 00:00:00', '2024-01-08 00:00:00', '已完成', NULL, NULL, 2, 1);
INSERT INTO `Experiments` VALUES (1018, '超高压极限测试', '设备极限电压测试', '2024-01-09 00:00:00', '2024-01-10 00:00:00', '已完成', NULL, NULL, 3, 2);
INSERT INTO `Experiments` VALUES (1019, '基因编辑效果验证', NULL, '2021-01-15 00:00:00', '2021-06-30 00:00:00', '已完成', NULL, NULL, 5, 1);
COMMIT;

-- ----------------------------
-- Table structure for Hypotheses
-- ----------------------------
DROP TABLE IF EXISTS `Hypotheses`;
CREATE TABLE `Hypotheses` (
  `hypothesisId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `hypothesisText` text NOT NULL,
  `status` enum('已验证','未验证') DEFAULT '未验证',
  `verificationDate` datetime DEFAULT NULL,
  `verificationResult` enum('真','假') DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`hypothesisId`),
  KEY `experimentId` (`experimentId`),
  CONSTRAINT `Hypotheses_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Hypotheses
-- ----------------------------
BEGIN;
INSERT INTO `Hypotheses` VALUES (1, 1, '光具有波动性', '已验证', '2023-03-15 18:00:00', '真', '高');
INSERT INTO `Hypotheses` VALUES (2, 2, '量子纠缠存在', '未验证', NULL, NULL, '中');
INSERT INTO `Hypotheses` VALUES (3, 3, '电磁感应与磁场变化相关', '已验证', '2023-05-10 17:00:00', '真', '高');
INSERT INTO `Hypotheses` VALUES (4, 4, '热传导速率与温差成正比', '未验证', NULL, NULL, '中');
INSERT INTO `Hypotheses` VALUES (5, 1005, '温度超过30000K时材料会汽化', '已验证', '2023-09-10 00:00:00', '假', '高');
INSERT INTO `Hypotheses` VALUES (6, 1005, '压力超过10000kPa时结构会坍塌', '已验证', '2023-09-12 00:00:00', '真', '高');
INSERT INTO `Hypotheses` VALUES (7, 1006, '磁场超过500T时会出现超导现象', '已验证', '2023-08-20 00:00:00', '假', '中');
INSERT INTO `Hypotheses` VALUES (8, 1006, '辐射超过5000μSv/h会破坏样本', '已验证', '2023-08-22 00:00:00', '假', '高');
INSERT INTO `Hypotheses` VALUES (9, 1011, '光速在真空中是恒定不变的', '已验证', '2023-10-01 00:00:00', '真', '高');
INSERT INTO `Hypotheses` VALUES (10, 1019, 'CRISPR能精确编辑目标基因', '未验证', NULL, '真', '高');
COMMIT;

-- ----------------------------
-- Table structure for Labs
-- ----------------------------
DROP TABLE IF EXISTS `Labs`;
CREATE TABLE `Labs` (
  `labId` int NOT NULL AUTO_INCREMENT,
  `labName` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `equipmentCount` int DEFAULT NULL,
  `status` enum('开放','关闭') DEFAULT '开放',
  PRIMARY KEY (`labId`)
) ENGINE=InnoDB AUTO_INCREMENT=5002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Labs
-- ----------------------------
BEGIN;
INSERT INTO `Labs` VALUES (1, '光学实验室', '物理楼101', 20, 15, '开放');
INSERT INTO `Labs` VALUES (2, '量子物理实验室', '物理楼202', 10, 8, '关闭');
INSERT INTO `Labs` VALUES (3, '电磁学实验室', '物理楼303', 15, 12, '开放');
INSERT INTO `Labs` VALUES (4, '热力学实验室', '物理楼404', 12, 10, '开放');
INSERT INTO `Labs` VALUES (101, '高级物理实验室', '科学楼5层', 50, 100, '开放');
INSERT INTO `Labs` VALUES (102, '国家高能物理实验室', '科研中心东区', 1000, 1200, '开放');
INSERT INTO `Labs` VALUES (103, '量子物理实验室', '北京', 1500, 40, '开放');
INSERT INTO `Labs` VALUES (104, '国家级物理实验室', '北京', 150, 2500, '开放');
INSERT INTO `Labs` VALUES (105, '人工智能研究中心', '北京', 114, 1800, '开放');
INSERT INTO `Labs` VALUES (106, '国家超级计算中心', '北京', 1500000, 50, '开放');
INSERT INTO `Labs` VALUES (107, '量子研究基地', '上海', 1200000, 30, '开放');
INSERT INTO `Labs` VALUES (108, '高能物理园区', '合肥', 1100000, 22, '开放');
INSERT INTO `Labs` VALUES (109, '人工智能实验城', '深圳', 1050000, 44, '开放');
INSERT INTO `Labs` VALUES (110, '生物科技综合体', '广州', 1020000, 22, '开放');
INSERT INTO `Labs` VALUES (111, '物理实验室', '特定区域', 454, 55, '开放');
COMMIT;

-- ----------------------------
-- Table structure for MaintenanceRecords
-- ----------------------------
DROP TABLE IF EXISTS `MaintenanceRecords`;
CREATE TABLE `MaintenanceRecords` (
  `maintenanceId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `maintenanceDate` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`maintenanceId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `MaintenanceRecords_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Places
-- ----------------------------
DROP TABLE IF EXISTS `Places`;
CREATE TABLE `Places` (
  `placeId` int NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`placeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Researchers
-- ----------------------------
DROP TABLE IF EXISTS `Researchers`;
CREATE TABLE `Researchers` (
  `researcherId` int NOT NULL AUTO_INCREMENT,
  `researcherName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `role` enum('实验员','数据分析师') DEFAULT '实验员',
  `joinDate` datetime NOT NULL,
  PRIMARY KEY (`researcherId`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Researchers
-- ----------------------------
BEGIN;
INSERT INTO `Researchers` VALUES (1, '张三', 'zhangsan@example.com', '1234567890', '物理系', '实验员', '2023-01-01 08:00:00');
INSERT INTO `Researchers` VALUES (2, '李四', 'lisi@example.com', '0987654321', '物理系', '数据分析师', '2023-02-15 09:00:00');
INSERT INTO `Researchers` VALUES (3, '王五', 'wangwu@example.com', '1122334455', '物理系', '实验员', '2023-03-10 10:00:00');
INSERT INTO `Researchers` VALUES (4, '赵六', 'zhaoliu@example.com', '5566778899', '物理系', '数据分析师', '2023-04-20 11:00:00');
INSERT INTO `Researchers` VALUES (5, '王研究员', '11@qq.com', '111100000', '物理系', '实验员', '2025-06-15 21:02:45');
COMMIT;

-- ----------------------------
-- Table structure for SensitivityAnalysis
-- ----------------------------
DROP TABLE IF EXISTS `SensitivityAnalysis`;
CREATE TABLE `SensitivityAnalysis` (
  `analysisId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `variableId` int DEFAULT NULL,
  `sensitivityValue` decimal(10,2) NOT NULL,
  `impact` enum('高','中','低') DEFAULT '中',
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`analysisId`),
  KEY `experimentId` (`experimentId`),
  KEY `variableId` (`variableId`),
  CONSTRAINT `SensitivityAnalysis_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`),
  CONSTRAINT `SensitivityAnalysis_ibfk_2` FOREIGN KEY (`variableId`) REFERENCES `Variables` (`variableId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of SensitivityAnalysis
-- ----------------------------
BEGIN;
INSERT INTO `SensitivityAnalysis` VALUES (1, 1, 1, 0.75, '高', '高');
INSERT INTO `SensitivityAnalysis` VALUES (2, 2, 2, 0.25, '中', '中');
INSERT INTO `SensitivityAnalysis` VALUES (3, 3, 3, 0.60, '高', '高');
INSERT INTO `SensitivityAnalysis` VALUES (4, 4, 4, 0.40, '中', '中');
INSERT INTO `SensitivityAnalysis` VALUES (5, NULL, 24, 1000.00, '高', '高');
INSERT INTO `SensitivityAnalysis` VALUES (6, NULL, 24, 800.00, '中', '高');
COMMIT;

-- ----------------------------
-- Table structure for Sensors
-- ----------------------------
DROP TABLE IF EXISTS `Sensors`;
CREATE TABLE `Sensors` (
  `sensorId` int NOT NULL AUTO_INCREMENT,
  `sensorType` varchar(255) DEFAULT NULL,
  `dataCollectionFrequency` int DEFAULT NULL COMMENT '单位：次/天',
  PRIMARY KEY (`sensorId`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Sensors
-- ----------------------------
BEGIN;
INSERT INTO `Sensors` VALUES (101, '环境温度传感器', 24);
COMMIT;

-- ----------------------------
-- Table structure for Suppliers
-- ----------------------------
DROP TABLE IF EXISTS `Suppliers`;
CREATE TABLE `Suppliers` (
  `supplierId` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(255) NOT NULL,
  `contactInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplierId`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Suppliers
-- ----------------------------
BEGIN;
INSERT INTO `Suppliers` VALUES (1, '光学设备公司', NULL);
INSERT INTO `Suppliers` VALUES (501, '华科仪器有限公司', '联系人：张经理，电话：13800001111');
INSERT INTO `Suppliers` VALUES (502, '某供应商', '联系人：张经理，电话：13800001111');
COMMIT;

-- ----------------------------
-- Table structure for TemperatureReadings
-- ----------------------------
DROP TABLE IF EXISTS `TemperatureReadings`;
CREATE TABLE `TemperatureReadings` (
  `recordId` int NOT NULL AUTO_INCREMENT,
  `sensorId` int DEFAULT NULL,
  `recordedAt` datetime DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  KEY `sensorId` (`sensorId`),
  CONSTRAINT `TemperatureReadings_ibfk_1` FOREIGN KEY (`sensorId`) REFERENCES `Sensors` (`sensorId`)
) ENGINE=InnoDB AUTO_INCREMENT=2003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of TemperatureReadings
-- ----------------------------
BEGIN;
INSERT INTO `TemperatureReadings` VALUES (1, NULL, NULL, NULL);
INSERT INTO `TemperatureReadings` VALUES (2001, 101, '2025-06-17 23:44:59', 65);
INSERT INTO `TemperatureReadings` VALUES (2002, 101, '2025-06-17 23:44:59', -25);
COMMIT;

-- ----------------------------
-- Table structure for Variables
-- ----------------------------
DROP TABLE IF EXISTS `Variables`;
CREATE TABLE `Variables` (
  `variableId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `variableName` varchar(255) NOT NULL,
  `initialValue` decimal(10,2) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`variableId`),
  KEY `experimentId` (`experimentId`),
  CONSTRAINT `Variables_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Variables
-- ----------------------------
BEGIN;
INSERT INTO `Variables` VALUES (1, 1, '光强', 100.00, 'lux', '高');
INSERT INTO `Variables` VALUES (2, 2, '量子态', 0.50, 'probability', '中');
INSERT INTO `Variables` VALUES (3, 3, '磁场强度', 0.50, 'T', '高');
INSERT INTO `Variables` VALUES (4, 4, '温差', 10.00, '°C', '中');
INSERT INTO `Variables` VALUES (5, 1003, 'A', 10.00, '无量纲', '高');
INSERT INTO `Variables` VALUES (6, 1003, 'B', 20.00, '无量纲', '高');
INSERT INTO `Variables` VALUES (7, 101, '超高温', 28750.00, 'K', '高');
INSERT INTO `Variables` VALUES (8, 101, '超高压', 21500.00, 'GPa', '高');
INSERT INTO `Variables` VALUES (9, 101, '等离子体流', 18500.00, 'A/m²', '高');
INSERT INTO `Variables` VALUES (10, 101, '强磁场', 16200.00, 'T', '高');
INSERT INTO `Variables` VALUES (11, 101, 'X射线强度', 14200.00, 'W/m²', '中');
INSERT INTO `Variables` VALUES (12, 101, '中子通量', 12500.00, 'n/cm²s', '高');
INSERT INTO `Variables` VALUES (13, 101, '临界压力', 11200.00, 'MPa', '中');
INSERT INTO `Variables` VALUES (14, 1005, '正常温度', 300.00, 'K', '高');
INSERT INTO `Variables` VALUES (15, 1005, '正常压力', 100.00, 'kPa', '高');
INSERT INTO `Variables` VALUES (16, 1006, '正常磁场', 5.00, 'T', '高');
INSERT INTO `Variables` VALUES (17, 1006, '正常辐射', 50.00, 'μSv/h', '高');
INSERT INTO `Variables` VALUES (18, 1013, 'R1', 10.00, 'Ω', '高');
INSERT INTO `Variables` VALUES (19, 1013, 'R2', 20.00, 'Ω', '高');
INSERT INTO `Variables` VALUES (20, 1013, 'R3', 30.00, 'Ω', '高');
INSERT INTO `Variables` VALUES (21, 1013, 'R4', 40.00, 'Ω', '高');
INSERT INTO `Variables` VALUES (22, 1013, 'R5', 50.00, 'Ω', '高');
INSERT INTO `Variables` VALUES (23, 4, '温度梯度', 1500.50, 'K/m', '高');
INSERT INTO `Variables` VALUES (24, 1, '地震波振幅', 1000.00, '米(m)', '高');
INSERT INTO `Variables` VALUES (25, 1, '海啸高度', 500.00, '米(m)', '高');
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
