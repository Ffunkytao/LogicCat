/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : printer

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:29:10
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
-- Table structure for consumables
-- ----------------------------
DROP TABLE IF EXISTS `consumables`;
CREATE TABLE `consumables` (
  `Consumable_ID` int NOT NULL AUTO_INCREMENT COMMENT '耗材唯一标识',
  `Printer_ID` int NOT NULL COMMENT '打印机ID',
  `Type` enum('Toner','Ink','Drum','Fuser','Paper') NOT NULL COMMENT '耗材类型',
  `Model` varchar(100) NOT NULL COMMENT '耗材型号',
  `Capacity` varchar(50) NOT NULL COMMENT '容量（如 5000页）',
  `Current_Level` decimal(5,2) NOT NULL COMMENT '当前剩余量（%）',
  `Last_Replacement_Date` varchar(255) DEFAULT NULL COMMENT '上次更换日期',
  `Next_Replacement_Date` varchar(255) DEFAULT NULL COMMENT '预计更换日期',
  `Cost` decimal(10,2) NOT NULL COMMENT '耗材成本（美元）',
  PRIMARY KEY (`Consumable_ID`),
  KEY `Printer_ID` (`Printer_ID`),
  CONSTRAINT `consumables_ibfk_1` FOREIGN KEY (`Printer_ID`) REFERENCES `printers` (`Printer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of consumables
-- ----------------------------
BEGIN;
INSERT INTO `consumables` VALUES (1, 1, 'Toner', 'HP 414A', '5000 pages', 80.00, '2023-01-15', '2023-07-15', 100.00);
INSERT INTO `consumables` VALUES (2, 2, 'Toner', 'Canon 057H', '6000 pages', 70.00, '2023-02-20', '2023-08-20', 120.00);
INSERT INTO `consumables` VALUES (3, 3, 'Ink', 'Epson 212', '3000 pages', 60.00, '2023-03-10', '2023-09-10', 80.00);
INSERT INTO `consumables` VALUES (4, 4, 'Toner', 'Brother TN-760', '5000 pages', 75.00, '2023-04-05', '2023-10-05', 90.00);
INSERT INTO `consumables` VALUES (5, 5, 'Toner', 'Xerox 106R01359', '6000 pages', 65.00, '2023-05-12', '2023-11-12', 110.00);
INSERT INTO `consumables` VALUES (6, 6, 'Toner', 'Lexmark CX725', '5000 pages', 70.00, '2023-06-18', '2023-12-18', 100.00);
INSERT INTO `consumables` VALUES (7, 7, 'Toner', 'Ricoh 407739', '7000 pages', 80.00, '2023-07-22', '2024-01-22', 130.00);
INSERT INTO `consumables` VALUES (8, 8, 'Toner', 'Kyocera TK-1140', '6000 pages', 75.00, '2023-08-30', '2024-02-28', 120.00);
INSERT INTO `consumables` VALUES (9, 9, 'Toner', 'Samsung MLT-D111S', '5000 pages', 70.00, '2023-09-14', '2024-03-14', 100.00);
INSERT INTO `consumables` VALUES (10, 10, 'Toner', 'Dell 593-10697', '6000 pages', 65.00, '2023-10-25', '2024-04-25', 110.00);
INSERT INTO `consumables` VALUES (11, 11, 'Toner', 'TN-5000X', '5000', 85.00, '2023-06-01', '2023-12-01', 150.00);
INSERT INTO `consumables` VALUES (12, 11, 'Toner', 'TN-5000X', '5000', 5.00, '2023-06-01', '2023-12-01', 150.00);
INSERT INTO `consumables` VALUES (13, 11, 'Paper', 'A4-Premium', '5000', 100.00, '2023-07-01', '2023-12-01', 50.00);
INSERT INTO `consumables` VALUES (14, 11, 'Paper', 'A4-Standard', '3000', 100.00, '2023-07-01', '2023-12-01', 30.00);
INSERT INTO `consumables` VALUES (15, 11, 'Paper', 'Letter-Glossy', '2500', 100.00, '2023-07-01', '2023-12-01', 45.00);
INSERT INTO `consumables` VALUES (16, 11, 'Paper', 'Legal-Bond', '4000', 100.00, '2023-07-01', '2023-12-01', 40.00);
INSERT INTO `consumables` VALUES (17, 11, 'Paper', 'A3-Photo', '2000', 100.00, '2023-07-01', '2023-12-01', 60.00);
INSERT INTO `consumables` VALUES (18, 11, 'Toner', 'TN-5000X', '5000', 80.00, '2023-06-01', '2023-07-20', 150.00);
INSERT INTO `consumables` VALUES (19, 11, 'Ink', 'IC-1000C', '1000', 70.00, '2023-06-10', '2023-07-18', 80.00);
INSERT INTO `consumables` VALUES (20, 11, 'Toner', 'DR-2000', '2000', 50.00, '2023-05-15', '2023-07-17', 200.00);
INSERT INTO `consumables` VALUES (21, 11, 'Toner', 'FU-3000', '3000', 95.00, '2023-06-01', '2023-12-01', 180.00);
INSERT INTO `consumables` VALUES (22, 11, 'Toner', 'A4-5000', '5000', 90.00, '2023-07-01', '2023-09-01', 50.00);
INSERT INTO `consumables` VALUES (30, 11, 'Toner', 'TN-2025X', '5000', 30.00, '2025-06-01', '2025-06-20', 150.00);
INSERT INTO `consumables` VALUES (31, 11, 'Ink', 'IC-2025C', '1000', 20.00, '2025-06-10', '2025-06-18', 80.00);
INSERT INTO `consumables` VALUES (32, 11, 'Drum', 'DR-2025', '2000', 10.00, '2025-05-15', '2025-06-17', 200.00);
INSERT INTO `consumables` VALUES (33, 11, 'Fuser', 'FU-2025', '3000', 95.00, '2025-06-01', '2025-12-01', 180.00);
INSERT INTO `consumables` VALUES (34, 11, 'Paper', 'A4-2025', '5000', 90.00, '2025-06-01', '2025-09-01', 50.00);
INSERT INTO `consumables` VALUES (35, 11, 'Toner', 'TN-OVER100', '5000', 120.00, '2025-06-01', '2025-12-01', 150.00);
INSERT INTO `consumables` VALUES (36, 11, 'Ink', 'IC-OVER100', '1000', 150.00, '2025-06-10', '2025-09-10', 80.00);
INSERT INTO `consumables` VALUES (37, 11, 'Drum', 'DR-OVER100', '2000', 110.00, '2025-05-15', '2025-11-15', 200.00);
INSERT INTO `consumables` VALUES (38, 11, 'Fuser', 'FU-NORMAL', '3000', 80.00, '2025-06-01', '2025-12-01', 180.00);
INSERT INTO `consumables` VALUES (39, 11, 'Paper', 'A4-NORMAL', '5000', 90.00, '2025-06-01', '2025-09-01', 50.00);
INSERT INTO `consumables` VALUES (40, 12, 'Toner', 'TN-IND-X', '10000', 25.00, '2025-05-01', '2025-11-01', 300.00);
INSERT INTO `consumables` VALUES (41, 12, 'Toner', 'TN-IND-X', '10000', 15.00, '2025-05-01', '2025-11-01', 300.00);
INSERT INTO `consumables` VALUES (46, 13, 'Drum', 'DR-1M-X', '1000000', 0.01, '2025-06-01', '2025-12-01', 250.00);
INSERT INTO `consumables` VALUES (47, 14, 'Drum', 'DR-1M-X', '1000000', 0.01, '2025-06-01', '2025-12-01', 250.00);
INSERT INTO `consumables` VALUES (49, 16, 'Fuser', 'FU-5000X', '5000', 10.00, '2022-06-01', '2023-12-01', 200.00);
INSERT INTO `consumables` VALUES (50, 17, 'Fuser', 'FU-5000X', '5000', 12.00, '2022-08-15', '2023-12-15', 200.00);
INSERT INTO `consumables` VALUES (51, 16, 'Toner', 'TN-100M', '100000001', 80.00, '2025-01-15', '2026-01-15', 500.00);
INSERT INTO `consumables` VALUES (52, 17, 'Drum', 'DR-200PCT', '50000', 205.00, '2025-03-20', '2026-03-20', 600.00);
INSERT INTO `consumables` VALUES (53, 16, 'Fuser', 'FU-NORM', '5000', 50.00, '2025-05-10', '2026-05-10', 300.00);
INSERT INTO `consumables` VALUES (58, 18, 'Toner', 'TN-MEGAVOL', '100000001', 80.00, '2025-01-01', '2026-01-01', 500.00);
INSERT INTO `consumables` VALUES (59, 19, 'Drum', 'DR-HEAVY', '50000000', 250.00, '2025-01-02', '2026-01-02', 800.00);
INSERT INTO `consumables` VALUES (60, 18, 'Fuser', 'FU-MEGA', '100000002', 80.00, '2025-01-01', '2026-01-01', 700.00);
INSERT INTO `consumables` VALUES (61, 19, 'Toner', 'TN-SUPER', '50000000', 300.00, '2025-01-02', '2026-01-02', 600.00);
INSERT INTO `consumables` VALUES (70, 23, 'Ink', 'IC-100', '100', 60.00, '2023-01-01', '2023-07-01', 50.00);
INSERT INTO `consumables` VALUES (71, 24, 'Ink', 'IC-100', '100', 19.00, '2023-01-15', '2023-07-15', 50.00);
INSERT INTO `consumables` VALUES (72, 25, 'Toner', 'TN-200', '500', 80.00, '2023-02-01', '2023-08-01', 100.00);
INSERT INTO `consumables` VALUES (73, 26, 'Ink', 'IC-200', '200', 30.00, '2023-02-15', '2023-08-15', 80.00);
INSERT INTO `consumables` VALUES (90, 1, 'Toner', 'TN-5000X', '5000', 80.00, NULL, NULL, 150.00);
INSERT INTO `consumables` VALUES (91, 2, 'Toner', 'TN-3000X', '3000', 70.00, NULL, NULL, 120.00);
INSERT INTO `consumables` VALUES (92, 3, 'Ink', 'IC-100', '100', 60.00, NULL, NULL, 50.00);
INSERT INTO `consumables` VALUES (100, 1, 'Drum', 'DR-5000', '50000', 80.00, NULL, NULL, 200.00);
INSERT INTO `consumables` VALUES (101, 1, 'Fuser', 'FU-3000', '30000', 70.00, NULL, NULL, 500.00);
INSERT INTO `consumables` VALUES (102, 2, 'Toner', 'TN-5000', '5000', 90.00, NULL, NULL, 150.00);
INSERT INTO `consumables` VALUES (110, 1, 'Toner', 'TN-5000X', '5000', 5.00, '2023-01-01', '2023-07-01', 150.00);
INSERT INTO `consumables` VALUES (111, 2, 'Toner', 'TN-3000', '3000', 10.00, '2023-03-15', '2023-09-15', 120.00);
INSERT INTO `consumables` VALUES (112, 3, 'Toner', 'TN-5000X', '5000', 15.00, '2023-11-01', '2024-05-01', 150.00);
INSERT INTO `consumables` VALUES (113, 4, 'Toner', 'TN-3000', '3000', 30.00, '2023-01-01', '2023-07-01', 120.00);
INSERT INTO `consumables` VALUES (114, 5, 'Ink', 'IC-100', '100', 10.00, '2023-01-01', '2023-07-01', 50.00);
INSERT INTO `consumables` VALUES (115, 50, 'Toner', 'TN-5000X', '5000', 60.00, '2023-10-01', '2024-04-01', 150.00);
INSERT INTO `consumables` VALUES (116, 51, 'Toner', 'TN-3000', '3000', 40.00, '2023-10-15', '2024-04-15', 120.00);
INSERT INTO `consumables` VALUES (117, 50, 'Toner', 'TN-5000X-New', '5000', 80.00, '2023-11-01', '2024-05-01', 150.00);
INSERT INTO `consumables` VALUES (200, 100, 'Drum', 'X-DrumUltra', '100000', 80.00, '2023-06-01', '2024-06-01', 300.00);
INSERT INTO `consumables` VALUES (201, 100, 'Toner', 'TN-5000', '5000', 60.00, '2023-07-01', '2023-12-01', 100.00);
COMMIT;

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
-- Table structure for maintenance_logs
-- ----------------------------
DROP TABLE IF EXISTS `maintenance_logs`;
CREATE TABLE `maintenance_logs` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT COMMENT '维护记录唯一标识',
  `Printer_ID` int NOT NULL COMMENT '打印机ID',
  `Maintenance_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维护日期',
  `Maintenance_Type` enum('Routine','Repair','Upgrade') NOT NULL COMMENT '维护类型',
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '维护描述',
  `Cost` decimal(10,2) NOT NULL COMMENT '维护成本（美元）',
  `Technician` varchar(100) DEFAULT NULL COMMENT '技术人员姓名',
  `Next_Maintenance_Date` varchar(255) DEFAULT NULL COMMENT '下次维护日期',
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Printer_ID` (`Printer_ID`),
  CONSTRAINT `maintenance_logs_ibfk_1` FOREIGN KEY (`Printer_ID`) REFERENCES `printers` (`Printer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of maintenance_logs
-- ----------------------------
BEGIN;
INSERT INTO `maintenance_logs` VALUES (1, 1, '2023-02-01', 'Routine', 'Routine inspection and cleaning', 50.00, 'John Smith', '2024-02-01');
INSERT INTO `maintenance_logs` VALUES (2, 2, '2023-03-05', 'Repair', 'Replaced faulty toner cartridge', 100.00, 'Jane Doe', '2024-03-05');
INSERT INTO `maintenance_logs` VALUES (3, 3, '2023-04-10', 'Upgrade', 'Upgraded firmware to latest version', 80.00, 'Mike Johnson', '2024-04-10');
INSERT INTO `maintenance_logs` VALUES (4, 4, '2023-05-15', 'Routine', 'Routine inspection and cleaning', 50.00, 'Sarah Lee', '2024-05-15');
INSERT INTO `maintenance_logs` VALUES (5, 5, '2023-06-20', 'Repair', 'Replaced paper tray', 70.00, 'Tom Brown', '2024-06-20');
INSERT INTO `maintenance_logs` VALUES (6, 6, '2023-07-25', 'Routine', 'Routine inspection and cleaning', 50.00, 'Emily Davis', '2024-07-25');
INSERT INTO `maintenance_logs` VALUES (7, 7, '2023-08-30', 'Repair', 'Fixed paper jam issue', 60.00, 'Chris Wilson', '2024-08-30');
INSERT INTO `maintenance_logs` VALUES (8, 8, '2023-09-14', 'Routine', 'Routine inspection and cleaning', 50.00, 'Laura Martinez', '2024-09-14');
INSERT INTO `maintenance_logs` VALUES (9, 9, '2023-10-25', 'Repair', 'Replaced fuser unit', 120.00, 'James Anderson', '2024-10-25');
INSERT INTO `maintenance_logs` VALUES (10, 10, '2023-11-15', 'Routine', 'Routine inspection and cleaning', 50.00, 'Linda Taylor', '2024-11-15');
INSERT INTO `maintenance_logs` VALUES (41, 16, '2023-01-10', 'Routine', 'Routine cleaning and inspection', 120.00, 'Technician Zhang', '2023-07-10');
INSERT INTO `maintenance_logs` VALUES (42, 17, '2023-02-15', 'Routine', 'Full system maintenance', 150.00, 'Technician Li', '2023-08-15');
INSERT INTO `maintenance_logs` VALUES (43, 16, '2023-06-01', 'Routine', 'Normal maintenance', 100.00, 'Tech A', '2023-12-01');
INSERT INTO `maintenance_logs` VALUES (44, 16, '2025-06-01', 'Routine', 'Regular check', 120.00, 'Tech Zhang', '2025-12-01');
INSERT INTO `maintenance_logs` VALUES (48, 16, '2023-01-01', 'Routine', 'Initial maintenance', 100.00, 'Tech A', '2024-01-01');
INSERT INTO `maintenance_logs` VALUES (49, 16, '2024-01-01', 'Repair', 'Replacement of worn parts', 200.00, 'Tech B', '2025-01-01');
INSERT INTO `maintenance_logs` VALUES (50, 16, '2025-01-01', 'Routine', 'Delayed maintenance', 150.00, 'Tech C', '2026-01-01');
INSERT INTO `maintenance_logs` VALUES (51, 17, '2023-01-01', 'Routine', 'First maintenance', 120.00, 'Tech A', '2023-10-01');
INSERT INTO `maintenance_logs` VALUES (52, 17, '2023-10-01', 'Upgrade', 'Firmware update', 80.00, 'Tech B', '2024-07-01');
INSERT INTO `maintenance_logs` VALUES (53, 17, '2024-07-01', 'Routine', 'Standard check', 100.00, 'Tech C', '2025-04-01');
INSERT INTO `maintenance_logs` VALUES (54, 17, '2025-04-01', 'Repair', 'Component replacement', 180.00, 'Tech D', '2026-01-01');
INSERT INTO `maintenance_logs` VALUES (55, 1, '2023-01-01', 'Routine', 'Monthly maintenance', 50.00, 'Tech A', '2023-02-01');
INSERT INTO `maintenance_logs` VALUES (56, 1, '2023-02-01', 'Routine', 'Monthly maintenance', 50.00, 'Tech B', '2023-03-01');
INSERT INTO `maintenance_logs` VALUES (57, 1, '2023-03-01', 'Routine', 'Monthly maintenance', 50.00, 'Tech C', '2023-04-01');
INSERT INTO `maintenance_logs` VALUES (110, 21, '2023-05-15', 'Repair', 'Maintenance before installation (anomaly)', 200.00, 'Tech Anomaly', '2023-11-15');
INSERT INTO `maintenance_logs` VALUES (111, 22, '2023-06-20', 'Routine', 'Normal maintenance', 150.00, 'Tech Normal', '2023-12-20');
INSERT INTO `maintenance_logs` VALUES (112, 21, '2023-04-01', 'Routine', 'Pre-installation service (anomaly)', 300.00, 'Tech Anomaly', '2023-10-01');
INSERT INTO `maintenance_logs` VALUES (113, 22, '2023-07-01', 'Routine', 'Pre-installation check (anomaly)', 100.00, 'Tech Anomaly', '2024-01-01');
INSERT INTO `maintenance_logs` VALUES (114, 21, '2023-06-15', 'Routine', 'First maintenance after install', 80.00, 'Tech Normal', '2023-12-15');
INSERT INTO `maintenance_logs` VALUES (115, 22, '2023-08-01', 'Routine', 'Post-installation service', 90.00, 'Tech Normal', '2024-02-01');
INSERT INTO `maintenance_logs` VALUES (200, 1, '2025-01-01', 'Repair', 'Quantum printer repair (extreme cost)', 1000000.00, 'Tech Future', '3001-01-01');
INSERT INTO `maintenance_logs` VALUES (201, 1, '2025-02-01', 'Upgrade', 'Nanotech upgrade (extreme cost)', 1200000.00, 'Tech Future', '3002-01-01');
INSERT INTO `maintenance_logs` VALUES (203, 81, '2023-06-01', 'Routine', 'Routine', 100.00, '王技师', '2023-12-01');
COMMIT;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `Manufacturer_ID` int NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '制造商名称',
  `Country` varchar(50) NOT NULL COMMENT '所属国家',
  `Founded_Year` int NOT NULL COMMENT '成立年份',
  `Revenue` decimal(15,2) DEFAULT NULL COMMENT '年收入（美元）',
  `Employee_Count` int DEFAULT NULL COMMENT '员工数量',
  `Market_Cap` decimal(15,2) DEFAULT NULL COMMENT '市值（美元）',
  `Production_Volume_Total` int DEFAULT NULL COMMENT '总生产数量',
  `R&D_Spending` decimal(15,2) DEFAULT NULL COMMENT '研发支出（美元）',
  `Profit_Margin` decimal(5,2) DEFAULT NULL COMMENT '利润率（%）',
  `Website` varchar(255) DEFAULT NULL COMMENT '官方网站',
  `Headquarters` varchar(255) DEFAULT NULL COMMENT '总部地址',
  PRIMARY KEY (`Manufacturer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `manufacturers` VALUES (1, 'HP', 'USA', 1939, 50000000000.00, 55000, 400000000000.00, 10000000, 2000000000.00, 10.00, 'https://www.hp.com', 'Palo Alto, USA');
INSERT INTO `manufacturers` VALUES (2, 'Canon', 'Japan', 1937, 30000000000.00, 200000, 300000000000.00, 8000000, 1500000000.00, 8.00, 'https://www.canon.com', 'Tokyo, Japan');
INSERT INTO `manufacturers` VALUES (3, 'Epson', 'Japan', 1942, 10000000000.00, 80000, 100000000000.00, 5000000, 800000000.00, 6.00, 'https://www.epson.com', 'Suwa, Japan');
INSERT INTO `manufacturers` VALUES (4, 'Brother', 'Japan', 1908, 6000000000.00, 30000, 80000000000.00, 3000000, 400000000.00, 7.00, 'https://www.brother.com', 'Nagoya, Japan');
INSERT INTO `manufacturers` VALUES (5, 'Xerox', 'USA', 1906, 7000000000.00, 25000, 90000000000.00, 4000000, 500000000.00, 6.50, 'https://www.xerox.com', 'Norwalk, USA');
INSERT INTO `manufacturers` VALUES (6, 'Lexmark', 'USA', 1991, 3000000000.00, 12000, 40000000000.00, 2000000, 200000000.00, 5.00, 'https://www.lexmark.com', 'Lexington, USA');
INSERT INTO `manufacturers` VALUES (7, 'Ricoh', 'Japan', 1936, 10000000000.00, 90000, 120000000000.00, 6000000, 700000000.00, 7.50, 'https://www.ricoh.com', 'Tokyo, Japan');
INSERT INTO `manufacturers` VALUES (8, 'Kyocera', 'Japan', 1959, 12000000000.00, 80000, 150000000000.00, 7000000, 900000000.00, 8.00, 'https://www.kyocera.com', 'Kyoto, Japan');
INSERT INTO `manufacturers` VALUES (9, 'Samsung', 'South Korea', 1938, 200000000000.00, 300000, 500000000000.00, 15000000, 5000000000.00, 12.00, 'https://www.samsung.com', 'Seoul, South Korea');
INSERT INTO `manufacturers` VALUES (10, 'Dell', 'USA', 1984, 90000000000.00, 150000, 800000000000.00, 10000000, 3000000000.00, 10.00, 'https://www.dell.com', 'Round Rock, USA');
INSERT INTO `manufacturers` VALUES (12, 'TechPrint Innovations', 'USA', 2000, 5000000000.00, 10000, 7500000000.00, 15000000, 8.00, 15.00, 'www.techprint.com', '456 Innovation Drive, Silicon Valley');
INSERT INTO `manufacturers` VALUES (13, 'EcoPrint Inc.', 'USA', 1990, 500000000.00, 5000, 750000000.00, 10000, 50000000.00, 12.00, 'https://www.ecoprint.com', 'California, USA');
INSERT INTO `manufacturers` VALUES (14, 'TechInnovate Corp', 'USA', 2000, 5000000000.00, 10000, 7500000000.00, 50000, 800000000.00, 15.00, 'https://www.techinnovate.com', 'Silicon Valley, USA');
INSERT INTO `manufacturers` VALUES (19, 'AncientTech', 'UK', 1700, 1000000000.00, 5000, 2000000000.00, 10000, 500000000.00, 10.00, 'https://ancienttech.com', 'London, UK');
INSERT INTO `manufacturers` VALUES (22, 'BorderlineCase', 'Germany', 1899, 1000000000.00, 5000, 2000000000.00, 10000, 500000001.00, 10.00, 'https://borderline.de', 'Berlin, Germany');
INSERT INTO `manufacturers` VALUES (23, 'JustReasonable', 'Netherlands', 1900, 1000000000.00, 5000, 2000000000.00, 10000, 500000000.00, 10.00, 'https://justreasonable.nl', 'Amsterdam, Netherlands');
INSERT INTO `manufacturers` VALUES (26, 'VictorianTech', 'UK', 1890, 500000000.00, 2000, 1000000000.00, 20000, 50000000.00, 18.00, 'https://victoriantech.com', 'London, UK');
INSERT INTO `manufacturers` VALUES (27, 'GildedAgeInc', 'USA', 1920, 800000000.00, 3000, 1500000000.00, 30000, 60000000.00, 16.50, 'https://gildedage.com', 'New York, USA');
INSERT INTO `manufacturers` VALUES (28, 'PostWarTech', 'Japan', 1955, 1000000000.00, 4000, 2000000000.00, 40000, 80000000.00, 20.00, 'https://postwartech.jp', 'Tokyo, Japan');
INSERT INTO `manufacturers` VALUES (29, 'EarlyButLowMargin', 'Germany', 1900, 600000000.00, 2500, 1200000000.00, 25000, 40000000.00, 10.00, 'https://earlylowmargin.de', 'Berlin, Germany');
INSERT INTO `manufacturers` VALUES (32, 'OldUSATech', 'USA', 1970, 1000000000.00, 5000, 1500000000.00, 20000, 100000000.00, 10.00, 'https://oldusatech.com', 'Chicago, USA');
INSERT INTO `manufacturers` VALUES (33, 'ShowaEraTech', 'Japan', 1965, 800000000.00, 4000, 1500000000.00, 15000, 80000000.00, 12.00, 'https://showaeratech.jp', 'Osaka, Japan');
INSERT INTO `manufacturers` VALUES (34, 'PostWarGerman', 'Germany', 1955, 500000000.00, 3000, 900000000.00, 10000, 50000000.00, 15.00, 'https://postwargerman.de', 'Munich, Germany');
INSERT INTO `manufacturers` VALUES (35, 'ModernUSACorp', 'USA', 1980, 2000000000.00, 8000, 5000000000.00, 40000, 200000000.00, 20.00, 'https://modernusacorp.com', 'San Francisco, USA');
INSERT INTO `manufacturers` VALUES (36, 'HealthyJapanese', 'Japan', 1970, 1000000000.00, 6000, 2500000000.00, 30000, 150000000.00, 18.00, 'https://healthyjapanese.jp', 'Tokyo, Japan');
INSERT INTO `manufacturers` VALUES (37, 'NewGermanTech', 'Germany', 2000, 1500000000.00, 7000, 4000000000.00, 50000, 300000000.00, 22.00, 'https://newgermantech.de', 'Berlin, Germany');
INSERT INTO `manufacturers` VALUES (40, 'VintageTech', 'USA', 1970, 50000000.00, 800, 100000000.00, 5000, 5000000.00, 10.00, 'https://vintagetech.com', 'Boston, USA');
INSERT INTO `manufacturers` VALUES (41, 'ClassicInnovations', 'UK', 1965, 40000000.00, 950, 80000000.00, 4000, 4000000.00, 12.00, 'https://classicinnovations.co.uk', 'London, UK');
INSERT INTO `manufacturers` VALUES (42, 'OldWorldPrecision', 'Switzerland', 1950, 30000000.00, 500, 60000000.00, 3000, 3000000.00, 15.00, 'https://oldworldprecision.ch', 'Zurich, Switzerland');
INSERT INTO `manufacturers` VALUES (43, 'YoungStartup', 'USA', 2010, 20000000.00, 50, 50000000.00, 2000, 2000000.00, 5.00, 'https://youngstartup.com', 'Austin, USA');
INSERT INTO `manufacturers` VALUES (44, 'LargeOldCompany', 'Germany', 1960, 100000000.00, 5000, 200000000.00, 10000, 10000000.00, 8.00, 'https://largeoldcompany.de', 'Berlin, Germany');
INSERT INTO `manufacturers` VALUES (45, 'BorderlineCase', 'Japan', 1973, 60000000.00, 999, 120000000.00, 6000, 6000000.00, 11.00, 'https://borderlinecase.jp', 'Tokyo, Japan');
INSERT INTO `manufacturers` VALUES (111, 'HP Inc.', 'USA', 2015, 58800000000.00, 58000, 35000000000.00, 50000000, 1200000000.00, 8.50, 'www.hp.com', 'Palo Alto, California');
INSERT INTO `manufacturers` VALUES (112, 'HP Inc.', 'USA', 2016, 60000000000.00, 60000, 36000000000.00, 55000000, 1250000000.00, 8.70, 'www.hp.com', 'Palo Alto, California');
COMMIT;

-- ----------------------------
-- Table structure for print_jobs
-- ----------------------------
DROP TABLE IF EXISTS `print_jobs`;
CREATE TABLE `print_jobs` (
  `Job_ID` int NOT NULL AUTO_INCREMENT COMMENT '打印任务唯一标识',
  `Printer_ID` int NOT NULL COMMENT '打印机ID',
  `User_ID` int NOT NULL COMMENT '用户ID',
  `Job_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务日期',
  `Document_Name` varchar(255) NOT NULL COMMENT '文档名称',
  `Page_Count` int NOT NULL COMMENT '页数',
  `Color_Usage` enum('Monochrome','Color') NOT NULL COMMENT '颜色使用',
  `Paper_Size` varchar(50) NOT NULL COMMENT '纸张尺寸',
  `Duplex` tinyint(1) NOT NULL COMMENT '是否双面打印（0-否，1-是）',
  `Status` enum('Pending','Completed','Failed') NOT NULL COMMENT '任务状态',
  PRIMARY KEY (`Job_ID`),
  KEY `Printer_ID` (`Printer_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `print_jobs_ibfk_1` FOREIGN KEY (`Printer_ID`) REFERENCES `printers` (`Printer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `print_jobs_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=805 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of print_jobs
-- ----------------------------
BEGIN;
INSERT INTO `print_jobs` VALUES (1, 1, 1, '2023-01-16 10:00:00', 'Quarterly Report.pdf', 50, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (2, 2, 2, '2023-02-21 11:00:00', 'Employee Handbook.docx', 100, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (3, 3, 3, '2023-03-11 12:00:00', 'Financial Statement.xlsx', 30, 'Color', 'A4', 1, 'Pending');
INSERT INTO `print_jobs` VALUES (4, 4, 4, '2023-04-06 09:00:00', 'Marketing Plan.pdf', 40, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (5, 5, 5, '2023-05-13 10:00:00', 'Sales Report.docx', 20, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (6, 6, 6, '2023-06-19 11:00:00', 'IT Policy.pdf', 60, 'Color', 'A4', 1, 'Pending');
INSERT INTO `print_jobs` VALUES (7, 7, 7, '2023-07-23 12:00:00', 'Operations Manual.docx', 80, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (8, 8, 8, '2023-08-31 09:00:00', 'HR Handbook.pdf', 70, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (9, 9, 9, '2023-09-15 10:00:00', 'Budget Plan.xlsx', 25, 'Color', 'A4', 1, 'Pending');
INSERT INTO `print_jobs` VALUES (10, 10, 10, '2023-10-26 11:00:00', 'Marketing Report.pdf', 35, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (11, 11, 1, '2023-07-01 14:30:00', '年度技术报告.pdf', 150, 'Monochrome', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (20, 1, 1, '2023-11-01 09:00:00', 'TestDocument1.pdf', 7, 'Monochrome', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (21, 2, 2, '2023-11-01 10:00:00', 'TestDocument2.pdf', 7, 'Color', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (22, 3, 3, '2023-11-01 11:00:00', 'TestDocument3.pdf', 8, 'Monochrome', 'A4', 1, 'Pending');
INSERT INTO `print_jobs` VALUES (23, 4, 4, '2023-11-01 12:00:00', 'TestDocument4.pdf', 6, 'Color', 'Letter', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (30, 1, 1, '2023-11-01 09:00:00', 'Annual_Report.pdf', 100, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (31, 1, 2, '2023-11-01 10:30:00', 'Marketing_Brochure.pdf', 50, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (32, 2, 3, '2023-11-02 08:45:00', 'Contract_Agreement.pdf', 200, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (33, 2, 4, '2023-11-02 11:15:00', 'Policy_Manual.pdf', 150, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (34, 3, 5, '2023-11-03 14:00:00', 'Product_Catalog.pdf', 80, 'Color', 'A4', 1, 'Pending');
INSERT INTO `print_jobs` VALUES (35, 3, 6, '2023-11-03 15:30:00', 'Internal_Memo.pdf', 20, 'Monochrome', 'A4', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (36, 4, 7, '2023-11-04 09:20:00', 'Archived_Documents.pdf', 300, 'Monochrome', 'Legal', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (100, 1, 20, '2023-10-15 09:00:00', 'Q4_Report.pdf', 50, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (101, 2, 21, '2023-11-20 10:00:00', 'Client_Proposal.pdf', 35, 'Monochrome', 'Letter', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (102, 1, 20, '2023-12-05 14:00:00', 'Year_End_Summary.pdf', 41, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (200, 50, 1, '2025-05-22', 'Report1.pdf', 100, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (201, 50, 2, '2025-05-27', 'Report2.pdf', 150, 'Color', 'A4', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (202, 50, 3, '2025-06-11', 'Report3.pdf', 200, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (203, 51, 4, '2025-05-25', 'Doc1.pdf', 80, 'Monochrome', 'Letter', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (204, 51, 5, '2025-06-06', 'Doc2.pdf', 120, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (500, 1, 100, '2023-11-01 09:00:00', 'ConferenceMaterials.pdf', 120, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (501, 2, 101, '2023-11-05 10:00:00', 'ResearchPaper.pdf', 85, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (502, 1, 100, '2023-11-10 14:00:00', 'TrainingManual.pdf', 75, 'Color', 'A4', 1, 'Pending');
INSERT INTO `print_jobs` VALUES (503, 3, 102, '2023-11-02 11:00:00', 'Report.pdf', 60, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (504, 1, 100, '2023-11-03 15:00:00', 'Memo.pdf', 30, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (505, 2, 101, '2023-11-07 16:00:00', 'Notes.pdf', 45, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (600, 1, 200, '2023-01-10 09:00:00', 'ResearchData.pdf', 1500000, 'Monochrome', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (601, 2, 201, '2023-02-15 10:00:00', 'Thesis.pdf', 1200000, 'Monochrome', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (602, 3, 202, '2023-03-20 11:00:00', 'HistoricalRecords.pdf', 2500000, 'Monochrome', 'A3', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (603, 1, 203, '2023-04-25 14:00:00', 'ArchiveBackup.pdf', 1800000, 'Monochrome', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (604, 2, 204, '2023-05-30 15:00:00', 'AnnualReport.pdf', 999999, 'Color', 'Letter', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (605, 3, 200, '2023-06-05 16:00:00', 'Notes.pdf', 500000, 'Monochrome', 'A4', 1, 'Pending');
INSERT INTO `print_jobs` VALUES (700, 80, 300, '2023-11-01 09:00:00', '销售报告.pdf', 150, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (701, 80, 300, '2023-11-05 14:00:00', '客户资料.pdf', 80, 'Color', 'A4', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (702, 81, 301, '2023-11-10 10:30:00', '技术文档.pdf', 200, 'Monochrome', 'Letter', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (800, 100, 1, '2023-06-10 09:00:00', 'Doc1.pdf', 5000, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (801, 100, 2, '2023-07-15 10:00:00', 'Doc2.pdf', 8000, 'Color', 'A4', 0, 'Completed');
INSERT INTO `print_jobs` VALUES (802, 100, 3, '2023-08-20 11:00:00', 'Doc3.pdf', 6000, 'Monochrome', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (803, 100, 1, '2023-09-25 14:00:00', 'Doc4.pdf', 7000, 'Color', 'A4', 1, 'Completed');
INSERT INTO `print_jobs` VALUES (804, 100, 2, '2023-10-30 15:00:00', 'Doc5.pdf', 9000, 'Monochrome', 'A4', 0, 'Completed');
COMMIT;

-- ----------------------------
-- Table structure for printers
-- ----------------------------
DROP TABLE IF EXISTS `printers`;
CREATE TABLE `printers` (
  `Printer_ID` int NOT NULL AUTO_INCREMENT COMMENT '打印机唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '型号',
  `Year` int NOT NULL COMMENT '生产年份',
  `Type` enum('Laser','Inkjet','Dot Matrix','3D') NOT NULL COMMENT '打印机类型',
  `Color_Support` enum('Monochrome','Color') NOT NULL COMMENT '颜色支持',
  `Max_Resolution` varchar(50) NOT NULL COMMENT '最大分辨率（如 1200x1200 dpi）',
  `Print_Speed` varchar(50) NOT NULL COMMENT '打印速度（如 30 ppm）',
  `Paper_Size_Support` varchar(100) NOT NULL COMMENT '支持的纸张尺寸（如 A4, Letter）',
  `Tray_Capacity` int NOT NULL COMMENT '纸盘容量（张）',
  `Weight` decimal(6,2) NOT NULL COMMENT '重量（千克）',
  `Power_Consumption` decimal(6,2) NOT NULL COMMENT '功耗（瓦）',
  `Installation_Date` varchar(255) NOT NULL COMMENT '安装日期',
  `Location` varchar(255) NOT NULL COMMENT '安装位置',
  `IP_Address` varchar(15) DEFAULT NULL COMMENT '网络IP地址',
  PRIMARY KEY (`Printer_ID`),
  KEY `Manufacturer_ID` (`Manufacturer_ID`),
  CONSTRAINT `printers_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of printers
-- ----------------------------
BEGIN;
INSERT INTO `printers` VALUES (1, 1, 'HP LaserJet Pro MFP M428fdw', 2023, 'Laser', 'Color', '1200x1200 dpi', '30 ppm', 'A4, Letter', 250, 25.00, 500.00, '2023-01-15', 'Office A', '192.168.1.101');
INSERT INTO `printers` VALUES (2, 2, 'Canon imageCLASS MF644Cdw', 2023, 'Laser', 'Color', '1200x1200 dpi', '28 ppm', 'A4, Letter', 300, 28.00, 550.00, '2023-02-20', 'Office B', '192.168.1.102');
INSERT INTO `printers` VALUES (3, 3, 'Epson WorkForce Pro WF-4740', 2023, 'Inkjet', 'Color', '4800x1200 dpi', '25 ppm', 'A4, Letter', 150, 20.00, 400.00, '2023-03-10', 'Office C', '192.168.1.103');
INSERT INTO `printers` VALUES (4, 4, 'Brother HL-L8360CDW', 2023, 'Laser', 'Color', '2400x600 dpi', '33 ppm', 'A4, Letter', 250, 26.00, 520.00, '2023-04-05', 'Office D', '192.168.1.104');
INSERT INTO `printers` VALUES (5, 5, 'Xerox VersaLink C405', 2023, 'Laser', 'Color', '1200x2400 dpi', '35 ppm', 'A4, Letter', 300, 30.00, 600.00, '2023-05-12', 'Office E', '192.168.1.105');
INSERT INTO `printers` VALUES (6, 6, 'Lexmark CX725de', 2023, 'Laser', 'Color', '1200x1200 dpi', '30 ppm', 'A4, Letter', 250, 27.00, 550.00, '2023-06-18', 'Office F', '192.168.1.106');
INSERT INTO `printers` VALUES (7, 7, 'Ricoh IM C4500', 2023, 'Laser', 'Color', '1200x1200 dpi', '40 ppm', 'A4, Letter', 350, 32.00, 650.00, '2023-07-22', 'Office G', '192.168.1.107');
INSERT INTO `printers` VALUES (8, 8, 'Kyocera ECOSYS M5526cdw', 2023, 'Laser', 'Color', '1200x1200 dpi', '32 ppm', 'A4, Letter', 300, 29.00, 580.00, '2023-08-30', 'Office H', '192.168.1.108');
INSERT INTO `printers` VALUES (9, 9, 'Samsung Xpress C1860FW', 2023, 'Laser', 'Color', '1200x1200 dpi', '30 ppm', 'A4, Letter', 250, 25.00, 500.00, '2023-09-14', 'Office I', '192.168.1.109');
INSERT INTO `printers` VALUES (10, 10, 'Dell C3765dnf', 2023, 'Laser', 'Color', '1200x1200 dpi', '35 ppm', 'A4, Letter', 300, 28.00, 550.00, '2023-10-25', 'Office J', '192.168.1.110');
INSERT INTO `printers` VALUES (11, 1, 'LaserMaster 5000', 2023, 'Laser', 'Color', '1200x1200dpi', '30', 'A4,Letter', 500, 28.50, 500.00, '2023-06-01', '3楼实验室', '192.168.10.150');
INSERT INTO `printers` VALUES (12, 7, 'IndustrialPro-X', 2025, 'Laser', 'Monochrome', '1200x1200dpi', '45', 'A3,A4,Letter', 1000, 45.50, 1500.00, '2025-01-15', 'Main Production', '192.168.20.40');
INSERT INTO `printers` VALUES (13, 5, 'DrumCheck-13', 2025, 'Laser', 'Monochrome', '1200x1200dpi', '40', 'A4,Letter', 50, 25.50, 1000.00, '2025-01-15', 'Lab 1', '192.168.1.13');
INSERT INTO `printers` VALUES (14, 5, 'DrumCheck-14', 2025, 'Laser', 'Color', '2400x600dpi', '35', 'A3,A4,Letter', 2000, 32.00, 1200.00, '2025-01-20', 'Lab 2', '192.168.1.14');
INSERT INTO `printers` VALUES (16, 5, 'OldLaser-16', 2019, 'Laser', 'Monochrome', '1200x1200dpi', '30', 'A4,Letter', 250, 28.50, 800.00, '2019-05-15', 'Lab A', '192.168.1.16');
INSERT INTO `printers` VALUES (17, 5, 'OldLaser-17', 2019, 'Laser', 'Color', '2400x600dpi', '35', 'A3,A4,Letter', 300, 32.00, 900.00, '2019-08-20', 'Lab B', '192.168.1.17');
INSERT INTO `printers` VALUES (18, 5, 'Xerox MegaVolume', 2025, 'Laser', 'Color', '1200x1200dpi', '20', 'A3', 500, 150.00, 800.00, '2025-01-01', 'Warehouse', '192.168.1.18');
INSERT INTO `printers` VALUES (19, 12, 'TechPrint HeavyDuty', 2025, 'Laser', 'Monochrome', '600x600dpi', '10', 'A2', 1000, 300.00, 1200.00, '2025-01-02', 'Factory', '192.168.1.19');
INSERT INTO `printers` VALUES (20, 5, 'Xerox EnergyCalc', 2025, 'Laser', 'Color', '1200x1200dpi', '25', 'A3', 500, 45.00, 1500.00, '2025-01-10', 'Eco Lab', '192.168.1.120');
INSERT INTO `printers` VALUES (21, 1, 'HP AnomalyTest1', 2023, 'Laser', 'Color', '1200x1200dpi', '30', 'A4', 250, 25.00, 500.00, '2023-06-01', 'Test Lab', '192.168.1.121');
INSERT INTO `printers` VALUES (22, 2, 'Canon AnomalyTest2', 2023, 'Laser', 'Color', '1200x1200dpi', '28', 'A4', 300, 28.00, 550.00, '2023-07-15', 'Test Lab', '192.168.1.122');
INSERT INTO `printers` VALUES (23, 5, 'EcoLaser Pro', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '30', 'A4', 300, 25.00, 800.00, '2023-01-15', 'Office A', '192.168.1.123');
INSERT INTO `printers` VALUES (24, 6, 'FastLaser', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '40', 'A4', 350, 28.00, 800.00, '2023-02-20', 'Office B', '192.168.1.124');
INSERT INTO `printers` VALUES (25, 7, 'ColorLaser', 2023, 'Laser', 'Color', '1200x1200dpi', '30', 'A4', 300, 26.00, 800.00, '2023-03-10', 'Office C', '192.168.1.125');
INSERT INTO `printers` VALUES (26, 8, 'InkjetPro', 2023, 'Inkjet', 'Monochrome', '4800x1200dpi', '30', 'A4', 200, 20.00, 800.00, '2023-04-05', 'Office D', '192.168.1.126');
INSERT INTO `printers` VALUES (27, 10, 'Industrial3D-500', 2023, '3D', 'Color', '100x100x100microns', '50', 'Custom', 500, 150.00, 1000.00, '2023-07-01', 'Lab X', '192.168.1.129');
INSERT INTO `printers` VALUES (28, 12, 'Industrial3D-300', 2023, '3D', 'Color', '100x100x100microns', '50', 'Custom', 300, 120.00, 800.00, '2023-07-15', 'Lab Y', '192.168.1.130');
INSERT INTO `printers` VALUES (29, 13, 'ProLaser-500', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '30', 'A4', 500, 25.00, 500.00, '2023-08-01', 'Office X', '192.168.1.131');
INSERT INTO `printers` VALUES (30, 10, 'Industrial3D-X', 2023, '3D', 'Color', '100x100x100microns', '50', 'Custom', 500, 150.00, 1500.00, '2023-07-01', 'Lab A', '192.168.1.150');
INSERT INTO `printers` VALUES (31, 12, 'ProLaser-5000', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '30', 'A4', 500, 25.00, 500.00, '2023-08-01', 'Office A', '192.168.1.151');
INSERT INTO `printers` VALUES (32, 1, 'LaserJet-Pro', 2023, 'Laser', 'Color', '1200x1200dpi', '30', 'A4', 250, 25.00, 500.00, '2023-01-15', 'Office A', '192.168.1.132');
INSERT INTO `printers` VALUES (33, 2, 'OfficeLaser-X', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '35', 'Letter', 300, 28.00, 400.00, '2023-03-01', 'Office B', '192.168.1.133');
INSERT INTO `printers` VALUES (34, 3, 'EcoLaser-200', 2023, 'Laser', 'Color', '1200x1200dpi', '25', 'A4', 200, 22.00, 300.00, '2023-06-01', 'Office C', '192.168.1.134');
INSERT INTO `printers` VALUES (35, 4, 'OldLaser-100', 2022, 'Laser', 'Monochrome', '1200x1200dpi', '20', 'Letter', 150, 20.00, 600.00, '2022-11-01', 'Storage', '192.168.1.135');
INSERT INTO `printers` VALUES (36, 5, 'Inkjet-Pro', 2023, 'Inkjet', 'Color', '4800x1200dpi', '15', 'A4', 100, 15.00, 100.00, '2023-02-01', 'Office D', '192.168.1.136');
INSERT INTO `printers` VALUES (44, 1, 'LaserJet-Pro', 2023, 'Laser', 'Color', '1200x1200dpi', '30', 'A4', 250, 25.00, 500.00, '2023-01-15', 'Office A', '192.168.1.144');
INSERT INTO `printers` VALUES (45, 2, 'OfficeLaser-X', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '35', 'Letter', 300, 28.00, 400.00, '2023-03-01', 'Office B', '192.168.1.145');
INSERT INTO `printers` VALUES (46, 3, 'Inkjet-Pro', 2023, 'Laser', 'Color', '4800x1200dpi', '15', 'A4', 100, 15.00, 100.00, '2023-02-01', 'Office C', '192.168.1.146');
INSERT INTO `printers` VALUES (50, 1, 'LaserJet-Pro', 2023, 'Laser', 'Color', '1200x1200dpi', '30', 'A4', 250, 25.00, 500.00, '2023-01-15', 'Office A', '192.168.1.150');
INSERT INTO `printers` VALUES (51, 2, 'OfficeLaser-X', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '35', 'Letter', 300, 28.00, 400.00, '2023-03-01', 'Office B', '192.168.1.151');
INSERT INTO `printers` VALUES (60, 1, 'LaserJet-800', 2023, 'Laser', 'Color', '1200x1200dpi', '30', 'A4', 250, 25.00, 800.00, '2023-01-15', 'Office A', '192.168.1.160');
INSERT INTO `printers` VALUES (61, 2, 'LaserJet-600', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '35', 'Letter', 300, 28.00, 600.00, '2023-03-01', 'Office B', '192.168.1.161');
INSERT INTO `printers` VALUES (62, 3, 'Inkjet-Pro', 2023, 'Inkjet', 'Color', '4800x1200dpi', '15', 'A4', 100, 15.00, 100.00, '2023-02-01', 'Office C', '192.168.1.162');
INSERT INTO `printers` VALUES (80, 1, 'HighPower-Laser', 2022, 'Laser', 'Color', '1200x1200dpi', '10', 'A4', 300, 28.50, 800.00, '2022-01-15', '办公室A', '192.168.1.80');
INSERT INTO `printers` VALUES (81, 2, 'EcoLaser-200', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '30', 'Letter', 250, 25.00, 400.00, '2023-03-01', '办公室B', '192.168.1.81');
INSERT INTO `printers` VALUES (90, 1, 'LaserJet-Pro-Mono', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '30ppm', 'A4', 250, 25.00, 500.00, '2023-01-15', '办公室A', '192.168.1.90');
INSERT INTO `printers` VALUES (91, 2, 'OfficeLaser-X-Mono', 2023, 'Laser', 'Monochrome', '1200x1200dpi', '45ppm', 'Letter', 300, 28.00, 600.00, '2023-03-01', '办公室B', '192.168.1.91');
INSERT INTO `printers` VALUES (92, 3, 'ColorLaser-Pro', 2023, 'Laser', 'Color', '1200x1200dpi', '25ppm', 'A4', 250, 25.00, 550.00, '2023-02-01', '办公室C', '192.168.1.92');
INSERT INTO `printers` VALUES (100, 1, 'DrumPrinter-Pro', 2023, 'Laser', 'Color', '1200x1200dpi', '30ppm', 'A4', 250, 25.00, 500.00, '2023-01-15', 'Lab A', '192.168.1.100');
INSERT INTO `printers` VALUES (101, 111, 'LaserJet Pro M404n', 2020, 'Laser', 'Monochrome', '1200x1200dpi', '40ppm', 'A4,Letter', 250, 12.50, 350.00, '2021-03-15', 'Office A', '192.168.1.101');
INSERT INTO `printers` VALUES (102, 112, 'LaserJet Pro M405n', 2021, 'Laser', 'Monochrome', '1200x1200dpi', '42ppm', 'A4,Letter', 250, 12.60, 355.00, '2021-06-20', 'Office B', '192.168.1.102');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT COMMENT '用户唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '用户姓名',
  `Email` varchar(100) NOT NULL COMMENT '用户邮箱',
  `Phone` varchar(20) DEFAULT NULL COMMENT '用户电话',
  `Department` varchar(100) DEFAULT NULL COMMENT '所属部门',
  `Role` enum('Admin','User','Guest') NOT NULL COMMENT '用户角色',
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'John Doe', 'john.doe@example.com', '+1234567890', 'IT', 'Admin');
INSERT INTO `users` VALUES (2, 'Jane Smith', 'jane.smith@example.com', '+1987654321', 'HR', 'User');
INSERT INTO `users` VALUES (3, 'Mike Johnson', 'mike.johnson@example.com', '+1122334455', 'Finance', 'User');
INSERT INTO `users` VALUES (4, 'Sarah Lee', 'sarah.lee@example.com', '+1555666777', 'Marketing', 'User');
INSERT INTO `users` VALUES (5, 'Tom Brown', 'tom.brown@example.com', '+1444333222', 'Sales', 'User');
INSERT INTO `users` VALUES (6, 'Emily Davis', 'emily.davis@example.com', '+1666777888', 'IT', 'Admin');
INSERT INTO `users` VALUES (7, 'Chris Wilson', 'chris.wilson@example.com', '+1777888999', 'Operations', 'User');
INSERT INTO `users` VALUES (8, 'Laura Martinez', 'laura.martinez@example.com', '+1888999000', 'HR', 'User');
INSERT INTO `users` VALUES (9, 'James Anderson', 'james.anderson@example.com', '+1999000111', 'Finance', 'User');
INSERT INTO `users` VALUES (10, 'Linda Taylor', 'linda.taylor@example.com', '+1222333444', 'Marketing', 'User');
INSERT INTO `users` VALUES (20, '销售员1', 'sales1@example.com', '12345678901', 'Marketing', 'User');
INSERT INTO `users` VALUES (21, '销售员2', 'sales2@example.com', '12345678902', 'Marketing', 'User');
INSERT INTO `users` VALUES (22, '技术员1', 'tech1@example.com', '12345678903', 'IT', 'Admin');
INSERT INTO `users` VALUES (100, 'Guest1', 'guest1@example.com', '10000000001', NULL, 'Guest');
INSERT INTO `users` VALUES (101, 'Guest2', 'guest2@example.com', '10000000002', NULL, 'Guest');
INSERT INTO `users` VALUES (102, 'Regular1', 'regular1@example.com', '10000000003', 'IT', 'User');
INSERT INTO `users` VALUES (200, 'UserA', 'user.a@example.com', '20000000001', 'Research', 'User');
INSERT INTO `users` VALUES (201, 'UserB', 'user.b@example.com', '20000000002', 'Research', 'Admin');
INSERT INTO `users` VALUES (202, 'UserC', 'user.c@example.com', '20000000003', 'Archives', 'User');
INSERT INTO `users` VALUES (203, 'UserD', 'user.d@example.com', '20000000004', 'Archives', 'User');
INSERT INTO `users` VALUES (204, 'UserE', 'user.e@example.com', '20000000005', 'Finance', 'User');
INSERT INTO `users` VALUES (300, '张伟', 'zhang.wei@example.com', '13800138001', '销售部', 'User');
INSERT INTO `users` VALUES (301, '李娜', 'li.na@example.com', '13800138002', '技术部', 'User');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
