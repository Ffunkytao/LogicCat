/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:30:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Addresses
-- ----------------------------
DROP TABLE IF EXISTS `Addresses`;
CREATE TABLE `Addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `line_1_number_building` varchar(80) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip_postcode` varchar(20) DEFAULT NULL,
  `state_province_county` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Addresses
-- ----------------------------
BEGIN;
INSERT INTO `Addresses` VALUES (1, '123 Main St Apt 4', 'Springfield', '12345', 'Some County', 'USA');
INSERT INTO `Addresses` VALUES (2, '456 Elm St', 'Shelbyville', '67890', 'Other County', 'USA');
INSERT INTO `Addresses` VALUES (3, '789 Oak Blvd', 'Capital City', '54321', 'Capital County', 'USA');
COMMIT;

-- ----------------------------
-- Table structure for Customers
-- ----------------------------
DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `given_name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `Customers_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `Addresses` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Customers
-- ----------------------------
BEGIN;
INSERT INTO `Customers` VALUES (1, 'John', 'Doe', 1);
INSERT INTO `Customers` VALUES (2, 'Jane', 'Smith', 2);
INSERT INTO `Customers` VALUES (3, 'Alice', 'Johnson', 3);
INSERT INTO `Customers` VALUES (8, 'Bob', 'Brown', 1);
COMMIT;

-- ----------------------------
-- Table structure for Lessons
-- ----------------------------
DROP TABLE IF EXISTS `Lessons`;
CREATE TABLE `Lessons` (
  `lesson_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `lesson_status_code` varchar(20) DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `lesson_date` datetime DEFAULT NULL,
  `lesson_time` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`lesson_id`),
  KEY `customer_id` (`customer_id`),
  KEY `staff_id` (`staff_id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `Lessons_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`),
  CONSTRAINT `Lessons_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `Staffs` (`staff_id`),
  CONSTRAINT `Lessons_ibfk_3` FOREIGN KEY (`vehicle_id`) REFERENCES `Vehicles` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Lessons
-- ----------------------------
BEGIN;
INSERT INTO `Lessons` VALUES (1, 1, 'scheduled', 1, 1, '2025-05-01 09:00:00', '2025-05-01 09:00:00', 50);
INSERT INTO `Lessons` VALUES (2, 2, 'completed', 2, 2, '2025-05-02 10:00:00', '2025-05-02 10:00:00', 60);
INSERT INTO `Lessons` VALUES (3, 3, 'cancelled', 1, 3, '2025-05-03 11:00:00', '2025-05-03 11:00:00', 0);
INSERT INTO `Lessons` VALUES (4, 8, 'pending', 3, 2, '2025-05-04 14:30:00', '2025-05-04 14:30:00', 75);
COMMIT;

-- ----------------------------
-- Table structure for Staffs
-- ----------------------------
DROP TABLE IF EXISTS `Staffs`;
CREATE TABLE `Staffs` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(50) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Staffs
-- ----------------------------
BEGIN;
INSERT INTO `Staffs` VALUES (1, 'Instructor A', 'Instructor');
INSERT INTO `Staffs` VALUES (2, 'Instructor B', 'Instructor');
INSERT INTO `Staffs` VALUES (3, 'Coordinator', 'Coordinator');
COMMIT;

-- ----------------------------
-- Table structure for Vehicles
-- ----------------------------
DROP TABLE IF EXISTS `Vehicles`;
CREATE TABLE `Vehicles` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Vehicles
-- ----------------------------
BEGIN;
INSERT INTO `Vehicles` VALUES (1, 'Car');
INSERT INTO `Vehicles` VALUES (2, 'Motorcycle');
INSERT INTO `Vehicles` VALUES (3, 'Truck');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data` (
  `device_id` int DEFAULT NULL,
  `energy_saved` decimal(10,2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SET FOREIGN_KEY_CHECKS = 1;
