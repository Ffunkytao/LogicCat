/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : EquipmentManagementDB

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:27:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Devices
-- ----------------------------
DROP TABLE IF EXISTS `Devices`;
CREATE TABLE `Devices` (
  `deviceId` int NOT NULL AUTO_INCREMENT,
  `deviceName` varchar(255) NOT NULL,
  `manufacturerId` int DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `serialNumber` varchar(100) DEFAULT NULL,
  `purchaseDate` datetime DEFAULT NULL,
  `warrantyExpiryDate` datetime DEFAULT NULL,
  `locationId` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `lastMaintenanceDate` datetime DEFAULT NULL,
  PRIMARY KEY (`deviceId`),
  KEY `manufacturerId` (`manufacturerId`),
  KEY `locationId` (`locationId`),
  CONSTRAINT `Devices_ibfk_1` FOREIGN KEY (`manufacturerId`) REFERENCES `Manufacturers` (`manufacturerId`),
  CONSTRAINT `Devices_ibfk_2` FOREIGN KEY (`locationId`) REFERENCES `Locations` (`locationId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Devices
-- ----------------------------
BEGIN;
INSERT INTO `Devices` VALUES (1, 'Air Conditioner 1', 1, 'AC-1000', 'SN123456', '2022-01-15 00:00:00', '2025-12-15 00:00:00', 1, 'Operational', '2023-01-15 00:00:00');
INSERT INTO `Devices` VALUES (2, 'Generator 1', 2, 'GEN-2000', 'SN654321', '2021-05-20 00:00:00', '2026-10-08 00:00:00', 2, 'Maintenance', '2023-05-20 00:00:00');
INSERT INTO `Devices` VALUES (3, 'Electric Scooter 1', 3, 'ES-3000', 'SN987654', '2023-03-10 00:00:00', '2026-03-10 00:00:00', 3, 'Operational', '2023-09-10 00:00:00');
INSERT INTO `Devices` VALUES (4, '空调', 1, 'AC-2000', 'SN123456', '2022-01-01 00:00:00', '2027-06-30 00:00:00', 1, '运行中', '2023-09-01 00:00:00');
INSERT INTO `Devices` VALUES (5, '发电机', 2, 'GEN-5000', 'SN654321', '2021-05-15 00:00:00', '2028-06-25 00:00:00', 2, '运行中', '2023-08-15 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for Locations
-- ----------------------------
DROP TABLE IF EXISTS `Locations`;
CREATE TABLE `Locations` (
  `locationId` int NOT NULL AUTO_INCREMENT,
  `locationName` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postalCode` varchar(20) DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `contactPerson` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`locationId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Locations
-- ----------------------------
BEGIN;
INSERT INTO `Locations` VALUES (1, 'Main Office', '123 Business Rd', 'Metropolis', 'New York', 'USA', '10001', 40.712776, -74.005974, 'Michael Brown');
INSERT INTO `Locations` VALUES (2, 'Warehouse 1', '456 Storage St', 'Gotham', 'New Jersey', 'USA', '07001', 40.735657, -74.172363, 'Sarah Lee');
INSERT INTO `Locations` VALUES (3, 'Branch Office', '789 Branch Ave', 'Star City', 'California', 'USA', '90001', 34.052235, -118.243683, 'Chris Green');
INSERT INTO `Locations` VALUES (4, '办公室', '北京市朝阳区XX路1号', '北京', '北京', '中国', '100000', 39.904200, 116.407400, '王五');
INSERT INTO `Locations` VALUES (5, '仓库', '上海市浦东新区XX路2号', '上海', '上海', '中国', '200000', 31.230400, 121.473700, '赵六');
COMMIT;

-- ----------------------------
-- Table structure for MaintenanceRecords
-- ----------------------------
DROP TABLE IF EXISTS `MaintenanceRecords`;
CREATE TABLE `MaintenanceRecords` (
  `maintenanceId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `maintenanceDate` datetime DEFAULT NULL,
  `maintenanceType` varchar(100) DEFAULT NULL,
  `maintenanceDescription` text,
  `technicianName` varchar(255) DEFAULT NULL,
  `technicianContact` varchar(20) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `partsReplaced` text,
  `nextMaintenanceDate` datetime DEFAULT NULL,
  PRIMARY KEY (`maintenanceId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `MaintenanceRecords_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of MaintenanceRecords
-- ----------------------------
BEGIN;
INSERT INTO `MaintenanceRecords` VALUES (1, 1, '2023-01-15 00:00:00', 'Routine', 'Regular checkup and cleaning', 'Bob Builder', '+1234567890', 150.00, 'Air filter', '2024-01-15 00:00:00');
INSERT INTO `MaintenanceRecords` VALUES (2, 2, '2023-05-20 00:00:00', 'Emergency', 'Replaced faulty wiring', 'Alice Engineer', '+0987654321', 300.00, 'Wiring set', '2024-05-20 00:00:00');
INSERT INTO `MaintenanceRecords` VALUES (3, 3, '2023-09-10 00:00:00', 'Routine', 'Battery check and tire pressure adjustment', 'Charlie Mechanic', '+1122334455', 100.00, 'None', '2024-09-10 00:00:00');
INSERT INTO `MaintenanceRecords` VALUES (4, 1, '2023-09-01 00:00:00', '定期维护', '清洁滤网和检查电路', '张三', '123-456-7890', 500.00, '滤网', '2023-12-01 00:00:00');
INSERT INTO `MaintenanceRecords` VALUES (5, 2, '2023-08-15 00:00:00', '紧急维修', '更换损坏的发电机零件', '李四', '987-654-3210', 2000.00, '发电机零件', '2023-11-15 00:00:00');
INSERT INTO `MaintenanceRecords` VALUES (6, 1, '2023-10-01 00:00:00', '极端维护', '每天10次维护，更换零件', '王五', '123-456-7890', 1000.00, '零件A', '2023-10-02 00:00:00');
INSERT INTO `MaintenanceRecords` VALUES (7, 1, '2023-10-01 00:00:00', '极端维护', '每天10次维护，更换零件', '王五', '123-456-7890', 1000.00, '零件B', '2023-10-02 00:00:00');
INSERT INTO `MaintenanceRecords` VALUES (8, 1, '2023-10-01 00:00:00', '极端维护', '每天10次维护，更换零件', '王五', '123-456-7890', 1000.00, '零件C', '2023-10-02 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `Manufacturers` VALUES (1, 'TechCorp', 'John Doe', 'john.doe@techcorp.com', '+1234567890', '123 Tech Street', 'Tech City', 'USA', 'www.techcorp.com', 'support@techcorp.com');
INSERT INTO `Manufacturers` VALUES (2, 'GadgetWorld', 'Jane Smith', 'jane.smith@gadgetworld.com', '+0987654321', '456 Gadget Avenue', 'Gadget Town', 'Canada', 'www.gadgetworld.com', 'support@gadgetworld.com');
INSERT INTO `Manufacturers` VALUES (3, 'ElectroWorks', 'Alice Johnson', 'alice.johnson@electroworks.com', '+1122334455', '789 Electro Lane', 'Electro City', 'UK', 'www.electroworks.com', 'support@electroworks.com');
INSERT INTO `Manufacturers` VALUES (4, '空调制造商A', '张三', 'zhangsan@acmaker.com', '123-456-7890', '北京市朝阳区', '北京', '中国', 'www.acmaker.com', 'support@acmaker.com');
INSERT INTO `Manufacturers` VALUES (5, '发电机制造商B', '李四', 'lisi@genmaker.com', '987-654-3210', '上海市浦东新区', '上海', '中国', 'www.genmaker.com', 'support@genmaker.com');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
