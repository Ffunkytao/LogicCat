/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : contract

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:27:04
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Addresses
-- ----------------------------
BEGIN;
INSERT INTO `Addresses` VALUES (1, '4315 Kerluke Canyon Apt. 800', 'Hertafurt', '740', 'Nevada', 'USA');
INSERT INTO `Addresses` VALUES (2, '319 Kozey Highway Suite 973', 'Edgardoberg', '282', 'Colorado', 'USA');
INSERT INTO `Addresses` VALUES (3, '592 Frederique Ridge', 'Gilbertmouth', '167', 'Virginia', 'USA');
INSERT INTO `Addresses` VALUES (4, '01868 Laverna Green', 'Lake Floyd', '041', 'Oklahoma', 'USA');
INSERT INTO `Addresses` VALUES (5, '6017 Price Greens', 'Gibsonfurt', '873', 'District of Columbia', 'USA');
INSERT INTO `Addresses` VALUES (6, '037 Luella Path', 'North Jairo', '126', 'Maryland', 'USA');
INSERT INTO `Addresses` VALUES (7, '044 Greenfelder Fort', 'East Rickey', '564', 'Louisiana', 'USA');
INSERT INTO `Addresses` VALUES (8, '2676 Connelly Islands Apt. 199', 'West Kaiatown', '770', 'Oregon', 'USA');
INSERT INTO `Addresses` VALUES (9, '6830 Alexanne Forks Apt. 925', 'Agustinstad', '248', 'Illinois', 'USA');
INSERT INTO `Addresses` VALUES (10, '918 Lauren Drive', 'Gleasonland', '116', 'Kentucky', 'USA');
INSERT INTO `Addresses` VALUES (11, '70345 Marvin Glens Apt. 669', 'Lake Katheryn', '505', 'Kentucky', 'USA');
INSERT INTO `Addresses` VALUES (12, '65854 McKenzie Tunnel', 'North Lisandroport', '202', 'Maine', 'USA');
INSERT INTO `Addresses` VALUES (13, '494 Bruen Radial Apt. 723', 'Estaland', '381', 'Idaho', 'USA');
INSERT INTO `Addresses` VALUES (14, '794 Doyle Lake Apt. 531', 'West Muriel', '571', 'Vermont', 'USA');
INSERT INTO `Addresses` VALUES (15, '9590 Rogahn Point Apt. 466', 'Port Montytown', '037', 'SouthDakota', 'USA');
COMMIT;

-- ----------------------------
-- Table structure for Contacts
-- ----------------------------
DROP TABLE IF EXISTS `Contacts`;
CREATE TABLE `Contacts` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `contact_phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Customer_Address_History
-- ----------------------------
DROP TABLE IF EXISTS `Customer_Address_History`;
CREATE TABLE `Customer_Address_History` (
  `customer_id` int NOT NULL,
  `address_id` int NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime DEFAULT NULL,
  KEY `idx_cah_customer_id` (`customer_id`),
  KEY `idx_cah_address_id` (`address_id`),
  CONSTRAINT `fk_cah_address` FOREIGN KEY (`address_id`) REFERENCES `Addresses` (`address_id`),
  CONSTRAINT `fk_cah_customer` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Customer_Orders
-- ----------------------------
DROP TABLE IF EXISTS `Customer_Orders`;
CREATE TABLE `Customer_Orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status_code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_co_customer_id` (`customer_id`),
  CONSTRAINT `fk_co_customer` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Customers
-- ----------------------------
DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `payment_method_code` varchar(15) DEFAULT NULL,
  `customer_number` varchar(20) DEFAULT NULL,
  `customer_name` varchar(80) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(80) DEFAULT NULL,
  `customer_email` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Order_Items
-- ----------------------------
DROP TABLE IF EXISTS `Order_Items`;
CREATE TABLE `Order_Items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `order_quantity` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `idx_oi_order_id` (`order_id`),
  KEY `idx_oi_product_id` (`product_id`),
  CONSTRAINT `fk_oi_order` FOREIGN KEY (`order_id`) REFERENCES `Customer_Orders` (`order_id`),
  CONSTRAINT `fk_oi_product` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Products
-- ----------------------------
DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_type_code` varchar(15) DEFAULT NULL,
  `product_name` varchar(80) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
