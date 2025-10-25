/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : rice_cooker

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:30:02
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
-- Table structure for maintenance_records
-- ----------------------------
DROP TABLE IF EXISTS `maintenance_records`;
CREATE TABLE `maintenance_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rice_cooker_id` int NOT NULL,
  `maintenance_date` varchar(255) NOT NULL,
  `maintenance_type` varchar(100) DEFAULT NULL,
  `maintenance_cost` float DEFAULT NULL,
  `maintenance_duration` float DEFAULT NULL,
  `replaced_parts` varchar(255) DEFAULT NULL,
  `maintenance_notes` text,
  `technician_name` varchar(100) DEFAULT NULL,
  `technician_contact` varchar(50) DEFAULT NULL,
  `next_maintenance_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rice_cooker_id` (`rice_cooker_id`),
  CONSTRAINT `maintenance_records_ibfk_1` FOREIGN KEY (`rice_cooker_id`) REFERENCES `rice_cooker_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of maintenance_records
-- ----------------------------
BEGIN;
INSERT INTO `maintenance_records` VALUES (1, 1, '2023-09-15', 'Cleaning', 0, 0.5, NULL, 'Routine cleaning', 'John Doe', '123-456-7890', '2024-03-15');
INSERT INTO `maintenance_records` VALUES (2, 2, '2023-08-20', 'Repair', 50, 1.5, 'Heating Element', 'Replaced heating element', 'Jane Smith', '987-654-3210', '2024-02-20');
INSERT INTO `maintenance_records` VALUES (3, 3, '2023-07-10', 'Cleaning', 0, 0.75, NULL, 'Routine cleaning', 'John Doe', '123-456-7890', '2024-01-10');
INSERT INTO `maintenance_records` VALUES (6, 9, '2023-07-15', 'Cleaning', 0, 0.5, NULL, 'Routine cleaning', 'Tech A', '123456789', '2024-01-15');
INSERT INTO `maintenance_records` VALUES (7, 15, '2022-07-15', 'Repair', 120, 2, 'Heating Element', 'Burnt heating element', 'Tech John', '123456789', '2023-01-15');
INSERT INTO `maintenance_records` VALUES (8, 15, '2023-02-10', 'Repair', 90, 1.5, 'Thermostat', 'Faulty thermostat', 'Tech John', '123456789', '2023-08-10');
INSERT INTO `maintenance_records` VALUES (9, 16, '2022-05-20', 'Repair', 150, 2.5, 'Control Board', 'Board failure', 'Tech Anna', '987654321', '2023-05-20');
INSERT INTO `maintenance_records` VALUES (10, 16, '2023-06-15', 'Repair', 180, 3, 'Inner Pot', 'Damaged inner pot', 'Tech Anna', '987654321', '2024-06-15');
INSERT INTO `maintenance_records` VALUES (11, 17, '2022-09-05', 'Repair', 100, 2, 'Lid Seal', 'Leaking lid seal', 'Tech Mike', '456789123', '2023-03-05');
INSERT INTO `maintenance_records` VALUES (12, 17, '2023-04-12', 'Repair', 80, 1.5, 'Power Cable', 'Broken cable', 'Tech Mike', '456789123', '2023-10-12');
INSERT INTO `maintenance_records` VALUES (46, 41, '2023-08-20', 'Repair', 80, 1.5, 'Thermistor Sensor', 'Sensor replacement', 'Tech John', '123456789', '2024-02-20');
INSERT INTO `maintenance_records` VALUES (47, 42, '2023-08-25', 'Cleaning', 0, 0.5, NULL, 'Routine cleaning', 'Tech Anna', '987654321', '2024-02-25');
INSERT INTO `maintenance_records` VALUES (48, 43, '2023-08-20', 'Repair', 80, 1.5, 'Thermistor Sensor', 'Sensor replacement', 'Tech John', '123456789', '2024-02-20');
INSERT INTO `maintenance_records` VALUES (49, 44, '2023-08-25', 'Cleaning', 0, 0.5, NULL, 'Routine cleaning', 'Tech Anna', '987654321', '2024-02-25');
INSERT INTO `maintenance_records` VALUES (51, 48, '2023-08-20', 'Repair', 80, 1.5, 'Thermistor Sensor', 'Sensor replacement', 'Tech John', '123456789', '2024-02-20');
INSERT INTO `maintenance_records` VALUES (52, 49, '2023-08-25', 'Cleaning', 0, 0.5, NULL, 'Routine cleaning', 'Tech Anna', '987654321', '2024-02-25');
INSERT INTO `maintenance_records` VALUES (53, 52, '2023-08-20', 'Repair', 80, 1.5, NULL, '内胆轻微变形，请注意使用量', 'Tech John', '123456789', '2024-02-20');
INSERT INTO `maintenance_records` VALUES (54, 53, '2023-08-25', 'Cleaning', 0, 0.5, NULL, 'Routine cleaning', 'Tech Anna', '987654321', '2024-02-25');
INSERT INTO `maintenance_records` VALUES (55, 54, '2023-08-20', 'Repair', 120, 2, '电磁屏蔽组件', 'EMI shielding replacement', 'Tech John', '123456789', '2024-02-20');
INSERT INTO `maintenance_records` VALUES (56, 55, '2023-08-25', 'Repair', 100, 1.5, '电磁屏蔽组件', 'EMI shielding replacement', 'Tech Anna', '987654321', '2024-02-25');
INSERT INTO `maintenance_records` VALUES (135, 63, '2024-06-01', 'Cleaning', 0, 0.5, NULL, 'Routine cleaning', 'Tech John', '123456789', '2025-06-01');
COMMIT;

-- ----------------------------
-- Table structure for performance_tests
-- ----------------------------
DROP TABLE IF EXISTS `performance_tests`;
CREATE TABLE `performance_tests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rice_cooker_id` int NOT NULL,
  `test_date` varchar(255) NOT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `initial_temperature` float DEFAULT NULL,
  `final_temperature` float DEFAULT NULL,
  `time_to_boil` float DEFAULT NULL,
  `energy_consumption` float DEFAULT NULL,
  `rice_quality_score` float DEFAULT NULL,
  `water_evaporation_rate` float DEFAULT NULL,
  `test_notes` text,
  PRIMARY KEY (`id`),
  KEY `rice_cooker_id` (`rice_cooker_id`),
  CONSTRAINT `performance_tests_ibfk_1` FOREIGN KEY (`rice_cooker_id`) REFERENCES `rice_cooker_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of performance_tests
-- ----------------------------
BEGIN;
INSERT INTO `performance_tests` VALUES (1, 1, '2023-09-01', 'Boiling', 25, 100, 15, 0.8, 9, 10, 'Tested boiling performance');
INSERT INTO `performance_tests` VALUES (2, 2, '2023-09-05', 'Boiling', 20, 95, 20, 0.7, 8, 12, 'Tested boiling performance');
INSERT INTO `performance_tests` VALUES (3, 3, '2023-09-10', 'Boiling', 22, 100, 18, 0.9, 9.5, 11, 'Tested boiling performance');
INSERT INTO `performance_tests` VALUES (6, 8, '2023-08-01', 'Cooking', 25, 88, 20, 0.6, 7.5, 15, 'Undercooked');
INSERT INTO `performance_tests` VALUES (7, 8, '2023-08-05', 'Cooking', 24, 85, 22, 0.6, 7, 16, 'Undercooked');
INSERT INTO `performance_tests` VALUES (8, 8, '2023-08-10', 'Cooking', 26, 87, 21, 0.6, 7.2, 14, 'Undercooked');
INSERT INTO `performance_tests` VALUES (9, 9, '2023-08-02', 'Cooking', 25, 89, 20, 0.5, 7.8, 15, 'Soft Rice');
INSERT INTO `performance_tests` VALUES (10, 9, '2023-08-06', 'Cooking', 24, 86, 22, 0.5, 7.1, 16, 'Undercooked');
INSERT INTO `performance_tests` VALUES (11, 9, '2023-08-11', 'Cooking', 26, 84, 23, 0.5, 6.9, 17, 'Undercooked');
INSERT INTO `performance_tests` VALUES (16, 20, '2023-09-01', 'Boiling', 25, 100, 25, 0.4, 7.5, 14, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (17, 21, '2023-09-02', 'Boiling', 20, 100, 30, 0.5, 7.8, 16, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (18, 22, '2023-09-03', 'Boiling', 22, 100, 28, 0.45, 7.2, 13, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (19, 23, '2023-08-10', 'Cooking', 25, 100, 20, 0.6, 7.5, 15, 'Soft Rice');
INSERT INTO `performance_tests` VALUES (20, 23, '2023-08-20', 'Cooking', 26, 100, 21, 0.6, 7.2, 16, 'Undercooked');
INSERT INTO `performance_tests` VALUES (21, 23, '2023-08-30', 'Cooking', 24, 100, 19, 0.6, 7.8, 14, 'Good Rice');
INSERT INTO `performance_tests` VALUES (22, 24, '2023-08-12', 'Cooking', 25, 100, 22, 0.7, 8, 16, 'Excellent');
INSERT INTO `performance_tests` VALUES (23, 24, '2023-08-22', 'Cooking', 27, 100, 23, 0.7, 7.6, 17, 'Slightly Undercooked');
INSERT INTO `performance_tests` VALUES (24, 24, '2023-09-01', 'Cooking', 23, 100, 20, 0.7, 7.9, 15, 'Very Good');
INSERT INTO `performance_tests` VALUES (25, 25, '2023-08-01', 'Cooking', 25, 100, 20, 0.6, 7.5, 15, 'Test 1');
INSERT INTO `performance_tests` VALUES (26, 25, '2023-08-05', 'Cooking', 26, 100, 21, 0.6, 7.2, 16, 'Test 2');
INSERT INTO `performance_tests` VALUES (27, 25, '2023-08-10', 'Cooking', 24, 100, 19, 0.6, 7.8, 14, 'Test 3');
INSERT INTO `performance_tests` VALUES (28, 25, '2023-08-15', 'Cooking', 25, 100, 20, 0.6, 7.5, 15, 'Test 4');
INSERT INTO `performance_tests` VALUES (29, 25, '2023-08-20', 'Cooking', 26, 100, 21, 0.6, 7.2, 16, 'Test 5');
INSERT INTO `performance_tests` VALUES (30, 25, '2023-08-25', 'Cooking', 24, 100, 19, 0.6, 7.8, 14, 'Test 6');
INSERT INTO `performance_tests` VALUES (31, 26, '2023-08-02', 'Cooking', 25, 100, 22, 0.7, 8, 16, 'Test 1');
INSERT INTO `performance_tests` VALUES (32, 26, '2023-08-06', 'Cooking', 26, 100, 23, 0.7, 7.6, 17, 'Test 2');
INSERT INTO `performance_tests` VALUES (33, 26, '2023-08-11', 'Cooking', 24, 100, 20, 0.7, 7.9, 15, 'Test 3');
INSERT INTO `performance_tests` VALUES (34, 26, '2023-08-16', 'Cooking', 25, 100, 22, 0.7, 8, 16, 'Test 4');
INSERT INTO `performance_tests` VALUES (35, 26, '2023-08-21', 'Cooking', 26, 100, 23, 0.7, 7.6, 17, 'Test 5');
INSERT INTO `performance_tests` VALUES (36, 26, '2023-08-26', 'Cooking', 24, 100, 20, 0.7, 7.9, 15, 'Test 6');
INSERT INTO `performance_tests` VALUES (37, 27, '2023-09-01', 'Boiling', 25, 100, 20, 0.5, 7, 15, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (38, 28, '2023-09-02', 'Boiling', 24, 100, 22, 0.6, 7.2, 16, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (39, 29, '2023-09-01', 'Boiling', 25, 95, 25, 0.5, 7, 15, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (40, 30, '2023-09-02', 'Boiling', 24, 94, 28, 0.6, 7.2, 16, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (41, 31, '2023-09-01', 'Boiling', 25, 90, 30, 0.5, 6.5, 15, 'Low Efficiency');
INSERT INTO `performance_tests` VALUES (42, 32, '2023-09-02', 'Boiling', 24, 88, 35, 0.6, 6.8, 16, 'Low Efficiency');
INSERT INTO `performance_tests` VALUES (43, 33, '2023-08-01', 'Boiling', 25, 100, 20, 0.6, 7.5, 15, 'Test 1');
INSERT INTO `performance_tests` VALUES (44, 33, '2023-08-15', 'Cooking', 26, 98, 22, 0.5, 7.2, 14, 'Test 2');
INSERT INTO `performance_tests` VALUES (45, 34, '2023-08-05', 'Boiling', 24, 100, 21, 0.7, 7.8, 16, 'Test 1');
INSERT INTO `performance_tests` VALUES (46, 34, '2023-08-20', 'Cooking', 25, 99, 23, 0.6, 7.6, 15, 'Test 2');
INSERT INTO `performance_tests` VALUES (47, 35, '2023-08-10', 'Boiling', 26, 100, 22, 0.8, 8, 17, 'Test 1');
INSERT INTO `performance_tests` VALUES (48, 35, '2023-08-25', 'Cooking', 24, 97, 24, 0.7, 7.9, 16, 'Test 2');
INSERT INTO `performance_tests` VALUES (49, 36, '2023-08-01', 'Boiling', 25, 100, 20, 0.6, 7.5, 15, 'Test 1');
INSERT INTO `performance_tests` VALUES (50, 36, '2023-08-15', 'Cooking', 26, 98, 22, 0.5, 7.2, 14, 'Test 2');
INSERT INTO `performance_tests` VALUES (51, 37, '2023-08-05', 'Boiling', 24, 100, 21, 0.7, 7.8, 16, 'Test 1');
INSERT INTO `performance_tests` VALUES (52, 37, '2023-08-20', 'Cooking', 25, 99, 23, 0.6, 7.6, 15, 'Test 2');
INSERT INTO `performance_tests` VALUES (53, 38, '2023-08-10', 'Boiling', 26, 100, 22, 0.8, 8, 17, 'Test 1');
INSERT INTO `performance_tests` VALUES (54, 38, '2023-08-25', 'Cooking', 24, 97, 24, 0.7, 7.9, 16, 'Test 2');
INSERT INTO `performance_tests` VALUES (55, 39, '2023-09-01', 'Cooking', 25, 100, 20, 0.6, 7, 15, 'Low ratio');
INSERT INTO `performance_tests` VALUES (56, 40, '2023-09-02', 'Cooking', 26, 100, 21, 0.6, 6.5, 16, 'High ratio');
INSERT INTO `performance_tests` VALUES (57, 41, '2023-09-01', 'Boiling', 25, 95, 20, 0.5, 7, 15, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (58, 42, '2023-09-02', 'Boiling', 24, 94, 21, 0.6, 7.2, 16, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (59, 43, '2023-09-01', 'Boiling', 25, 95, 20, 0.5, 7, 15, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (60, 44, '2023-09-02', 'Boiling', 24, 94, 21, 0.6, 7.2, 16, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (61, 45, '2023-09-01', 'Boiling', 25, 95, 20, 0.5, 7, 15, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (62, 46, '2023-09-02', 'Boiling', 24, 94, 21, 0.6, 7.2, 16, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (63, 47, '2023-09-01', 'Boiling', 25, 95, 20, 0.5, 7, 15, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (64, 48, '2023-09-01', 'Boiling', 25, 95, 20, 0.5, 7, 15, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (65, 49, '2023-09-02', 'Boiling', 24, 94, 21, 0.6, 7.2, 16, 'Low efficiency');
INSERT INTO `performance_tests` VALUES (66, 54, '2023-09-01', 'Boiling', 25, 100, 12, 0.6, 8, 15, 'Fast boil');
INSERT INTO `performance_tests` VALUES (67, 55, '2023-09-02', 'Boiling', 24, 100, 14, 0.5, 7.5, 14, 'Fast boil');
INSERT INTO `performance_tests` VALUES (68, 56, '2023-08-01', 'Cooking', 25, 100, 20, 0.6, 6, 15, 'Low quality');
INSERT INTO `performance_tests` VALUES (69, 56, '2023-08-05', 'Cooking', 26, 100, 21, 0.6, 8, 14, 'Good quality');
INSERT INTO `performance_tests` VALUES (70, 56, '2023-08-10', 'Cooking', 24, 100, 19, 0.6, 5.5, 16, 'Undercooked');
INSERT INTO `performance_tests` VALUES (71, 56, '2023-08-15', 'Cooking', 25, 100, 20, 0.6, 8.5, 15, 'Excellent');
INSERT INTO `performance_tests` VALUES (72, 56, '2023-08-20', 'Cooking', 26, 100, 21, 0.6, 6, 14, 'Inconsistent');
INSERT INTO `performance_tests` VALUES (73, 57, '2023-08-02', 'Cooking', 25, 100, 22, 0.7, 7.8, 16, 'Good');
INSERT INTO `performance_tests` VALUES (74, 57, '2023-08-06', 'Cooking', 26, 100, 23, 0.7, 7.6, 17, 'Slightly undercooked');
INSERT INTO `performance_tests` VALUES (75, 57, '2023-08-11', 'Cooking', 24, 100, 20, 0.7, 7.9, 15, 'Very good');
INSERT INTO `performance_tests` VALUES (76, 57, '2023-08-16', 'Cooking', 25, 100, 22, 0.7, 7.7, 16, 'Consistent');
INSERT INTO `performance_tests` VALUES (77, 57, '2023-08-21', 'Cooking', 26, 100, 23, 0.7, 7.5, 17, 'Slight variation');
INSERT INTO `performance_tests` VALUES (78, 58, '2023-08-01', 'Cooking', 25, 100, 20, 0.6, 5, 15, 'Poor quality');
INSERT INTO `performance_tests` VALUES (79, 58, '2023-08-05', 'Cooking', 26, 100, 21, 0.6, 8.5, 14, 'Excellent');
INSERT INTO `performance_tests` VALUES (80, 58, '2023-08-10', 'Cooking', 24, 100, 19, 0.6, 6, 16, 'Undercooked');
INSERT INTO `performance_tests` VALUES (81, 58, '2023-08-15', 'Cooking', 25, 100, 20, 0.6, 9, 15, 'Best ever');
INSERT INTO `performance_tests` VALUES (82, 58, '2023-08-20', 'Cooking', 26, 100, 21, 0.6, 5.5, 14, 'Inconsistent');
INSERT INTO `performance_tests` VALUES (83, 59, '2023-08-02', 'Cooking', 25, 100, 22, 0.7, 7.8, 16, 'Good');
INSERT INTO `performance_tests` VALUES (84, 59, '2023-08-06', 'Cooking', 26, 100, 23, 0.7, 7.6, 17, 'Slight undercooked');
INSERT INTO `performance_tests` VALUES (85, 59, '2023-08-11', 'Cooking', 24, 100, 20, 0.7, 7.9, 15, 'Very good');
INSERT INTO `performance_tests` VALUES (86, 59, '2023-08-16', 'Cooking', 25, 100, 22, 0.7, 7.7, 16, 'Consistent');
INSERT INTO `performance_tests` VALUES (87, 59, '2023-08-21', 'Cooking', 26, 100, 23, 0.7, 7.5, 17, 'Slight variation');
COMMIT;

-- ----------------------------
-- Table structure for rice_cooker_info
-- ----------------------------
DROP TABLE IF EXISTS `rice_cooker_info`;
CREATE TABLE `rice_cooker_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `capacity` float NOT NULL,
  `power_rating` float NOT NULL,
  `voltage_rating` float NOT NULL,
  `weight` float NOT NULL,
  `material` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `warranty_period` int DEFAULT NULL,
  `production_date` date DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of rice_cooker_info
-- ----------------------------
BEGIN;
INSERT INTO `rice_cooker_info` VALUES (1, 'RC-1001', 'BrandA', 5, 800, 220, 3.5, 'Non-stick', 'White', 12, '2022-01-15', 299.99);
INSERT INTO `rice_cooker_info` VALUES (2, 'RC-2002', 'BrandB', 3.5, 700, 220, 2.8, 'Ceramic', 'Black', 24, '2021-11-20', 399.99);
INSERT INTO `rice_cooker_info` VALUES (3, 'RC-3003', 'BrandC', 6, 900, 220, 4, 'Stainless Steel', 'Silver', 18, '2023-03-10', 499.99);
INSERT INTO `rice_cooker_info` VALUES (6, 'RC-High1', 'HighPowerBrand', 6.5, 5000, 220, 4.2, 'Stainless Steel', 'Black', 36, '2023-08-10', 799.99);
INSERT INTO `rice_cooker_info` VALUES (7, 'RC-High2', 'UltraCook', 5, 4500, 220, 3.9, 'Ceramic', 'Silver', 24, '2023-09-01', 699.99);
INSERT INTO `rice_cooker_info` VALUES (8, 'RC-Defect1', 'BadBrand', 4, 700, 220, 3, 'Aluminum', 'White', 12, '2022-01-01', 299.99);
INSERT INTO `rice_cooker_info` VALUES (9, 'RC-Defect2', 'LowQualityTech', 5, 650, 220, 3.2, 'Ceramic', 'Gray', 12, '2022-02-01', 349.99);
INSERT INTO `rice_cooker_info` VALUES (10, 'RC-LowPower1', 'EcoCook', 4, 910, 220, 2.8, 'Aluminum', 'White', 12, '2023-01-15', 249.99);
INSERT INTO `rice_cooker_info` VALUES (11, 'RC-LowPower2', 'GreenRice', 4.5, 905, 220, 2.9, 'Ceramic', 'Gray', 12, '2023-02-20', 279.99);
INSERT INTO `rice_cooker_info` VALUES (12, 'RC-LowPower3', 'SlowHeat', 5, 902, 220, 3, 'Stainless Steel', 'Black', 12, '2023-03-10', 299.99);
INSERT INTO `rice_cooker_info` VALUES (15, 'RC-Maint1', 'MaintBrandA', 4, 700, 220, 2.9, 'Aluminum', 'White', 12, '2021-06-01', 299.99);
INSERT INTO `rice_cooker_info` VALUES (16, 'RC-Maint2', 'MaintBrandB', 5, 650, 220, 3.1, 'Ceramic', 'Gray', 24, '2020-10-01', 349.99);
INSERT INTO `rice_cooker_info` VALUES (17, 'RC-Maint3', 'MaintBrandC', 5.5, 750, 220, 3.3, 'Stainless Steel', 'Black', 18, '2021-03-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (18, 'RC-Small1', 'MiniBrandA', 3.5, 600, 220, 2.7, 'Aluminum', 'White', 12, '2022-03-15', 249.99);
INSERT INTO `rice_cooker_info` VALUES (19, 'RC-Small2', 'MiniBrandB', 3, 550, 220, 2.5, 'Ceramic', 'Gray', 18, '2022-05-10', 279.99);
INSERT INTO `rice_cooker_info` VALUES (20, 'RC-Eta1', 'EtaBrandA', 4, 700, 220, 2.9, 'Aluminum', 'White', 12, '2022-06-01', 299.99);
INSERT INTO `rice_cooker_info` VALUES (21, 'RC-Eta2', 'EtaBrandB', 5, 650, 220, 3.1, 'Ceramic', 'Gray', 18, '2022-08-15', 349.99);
INSERT INTO `rice_cooker_info` VALUES (22, 'RC-Eta3', 'EtaBrandC', 4.5, 600, 220, 2.8, 'Stainless Steel', 'Black', 24, '2023-01-10', 399.99);
INSERT INTO `rice_cooker_info` VALUES (23, 'RC-Big1', 'BigBrandA', 5.5, 900, 220, 3.8, 'Stainless Steel', 'Black', 24, '2022-06-01', 499.99);
INSERT INTO `rice_cooker_info` VALUES (24, 'RC-Big2', 'BigBrandB', 6, 950, 220, 4, 'Ceramic', 'Silver', 36, '2022-08-15', 599.99);
INSERT INTO `rice_cooker_info` VALUES (25, 'RC-Benefit1', 'BenefitBrandA', 5, 750, 220, 3.5, 'Stainless Steel', 'Black', 24, '2022-06-01', 499.99);
INSERT INTO `rice_cooker_info` VALUES (26, 'RC-Benefit2', 'BenefitBrandB', 5.5, 800, 220, 3.8, 'Ceramic', 'Gray', 36, '2022-08-15', 599.99);
INSERT INTO `rice_cooker_info` VALUES (27, 'RC-Thermal1', 'ThermalBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-09-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (28, 'RC-Thermal2', 'ThermalBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-11-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (29, 'RC-Efficiency1', 'EfficiencyBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-09-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (30, 'RC-Efficiency2', 'EfficiencyBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-11-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (31, 'RC-LowEff1', 'LowEffBrandA', 4.5, 600, 220, 3, 'Ceramic', 'White', 12, '2022-01-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (32, 'RC-LowEff2', 'LowEffBrandB', 5, 550, 220, 3.2, 'Aluminum', 'Gray', 18, '2022-02-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (33, 'RC-Daily1', 'DailyBrandA', 5, 700, 220, 3.5, 'Stainless Steel', 'Black', 24, '2022-06-01', 499.99);
INSERT INTO `rice_cooker_info` VALUES (34, 'RC-Daily2', 'DailyBrandA', 5.5, 750, 220, 3.8, 'Ceramic', 'Gray', 36, '2022-08-15', 599.99);
INSERT INTO `rice_cooker_info` VALUES (35, 'RC-Daily3', 'DailyBrandB', 6, 800, 220, 4, 'Aluminum', 'White', 18, '2022-07-10', 699.99);
INSERT INTO `rice_cooker_info` VALUES (36, 'RC-DailyA1', 'BrandX', 5, 700, 220, 3.5, 'Stainless Steel', 'Black', 24, '2022-06-01', 499.99);
INSERT INTO `rice_cooker_info` VALUES (37, 'RC-DailyA2', 'BrandX', 5.5, 750, 220, 3.8, 'Ceramic', 'Gray', 36, '2022-08-15', 599.99);
INSERT INTO `rice_cooker_info` VALUES (38, 'RC-DailyB1', 'BrandY', 6, 800, 220, 4, 'Aluminum', 'White', 18, '2022-07-10', 699.99);
INSERT INTO `rice_cooker_info` VALUES (39, 'RC-Ratio1', 'RatioBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (40, 'RC-Ratio2', 'RatioBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-08-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (41, 'RC-Thermal1', 'ThermalBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (42, 'RC-Thermal2', 'ThermalBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-08-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (43, 'RC-Query1', 'QueryBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (44, 'RC-Query2', 'QueryBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-08-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (45, 'RC-JoinTest1', 'JoinBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (46, 'RC-JoinTest2', 'JoinBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-08-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (47, 'RC-JoinTest3', 'JoinBrandC', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (48, 'RC-FullTest1', 'FullBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (49, 'RC-FullTest2', 'FullBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-08-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (50, 'RC-Quantum1', 'QuantumBrandA', 5, 10000, 220, 10, 'Exotic Matter', 'Black', 1000000, '2023-01-01', 10000000);
INSERT INTO `rice_cooker_info` VALUES (51, 'RC-Quantum2', 'QuantumBrandB', 5.5, 12000, 220, 12, 'Dark Energy', 'Purple', 1000000, '2023-02-01', 10000000);
INSERT INTO `rice_cooker_info` VALUES (52, 'RC-Overload1', 'OverBrandA', 4, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (53, 'RC-Overload2', 'OverBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-08-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (54, 'RC-Shield1', 'ShieldBrandA', 5, 1200, 220, 3.5, 'Stainless Steel', 'Black', 24, '2022-06-01', 599.99);
INSERT INTO `rice_cooker_info` VALUES (55, 'RC-Shield2', 'ShieldBrandB', 5.5, 800, 220, 3.8, 'Ceramic', 'Gray', 18, '2022-08-15', 499.99);
INSERT INTO `rice_cooker_info` VALUES (56, 'RC-CV1', 'CVBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (57, 'RC-CV2', 'CVBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-08-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (58, 'RC-CV1', 'CVBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2022-06-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (59, 'RC-CV2', 'CVBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2022-08-15', 449.99);
INSERT INTO `rice_cooker_info` VALUES (62, 'RC-CleanNow1', 'CleanBrandA', 4.5, 700, 220, 3.2, 'Ceramic', 'White', 24, '2023-01-01', 399.99);
INSERT INTO `rice_cooker_info` VALUES (63, 'RC-CleanNow2', 'CleanBrandB', 5, 650, 220, 3.5, 'Aluminum', 'Gray', 18, '2023-02-15', 449.99);
COMMIT;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rice_cooker_id` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `duration` float NOT NULL,
  `temperature_setting` float DEFAULT NULL,
  `actual_max_temperature` float DEFAULT NULL,
  `energy_consumption` float DEFAULT NULL,
  `rice_type` varchar(50) DEFAULT NULL,
  `rice_quantity` float DEFAULT NULL,
  `water_quantity` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rice_cooker_id` (`rice_cooker_id`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`rice_cooker_id`) REFERENCES `rice_cooker_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
BEGIN;
INSERT INTO `usage_records` VALUES (1, 1, '2023-10-01 12:00:00', '2023-10-01 12:45:00', 45, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (2, 2, '2023-10-02 18:00:00', '2023-10-02 18:50:00', 50, 95, 93, 0.5, 'Brown Rice', 0.8, 1.2);
INSERT INTO `usage_records` VALUES (3, 3, '2023-10-03 07:00:00', '2023-10-03 07:40:00', 40, 100, 97, 0.7, 'White Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (6, 18, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 98, 0.5, 'White Rice', 1.6, 2.4);
INSERT INTO `usage_records` VALUES (7, 18, '2023-09-05 12:00:00', '2023-09-05 12:45:00', 45, 100, 97, 0.6, 'Brown Rice', 1.8, 2.7);
INSERT INTO `usage_records` VALUES (8, 19, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 95, 96, 0.4, 'White Rice', 1.5, 2.3);
INSERT INTO `usage_records` VALUES (9, 19, '2023-09-06 18:00:00', '2023-09-06 18:40:00', 40, 100, 99, 0.5, 'Jasmine Rice', 1.6, 2.5);
INSERT INTO `usage_records` VALUES (10, 23, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 98, 0.5, 'White Rice', 0.4, 0.6);
INSERT INTO `usage_records` VALUES (11, 24, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 100, 99, 0.6, 'Jasmine Rice', 0.3, 0.5);
INSERT INTO `usage_records` VALUES (12, 25, '2023-08-01 08:00:00', '2023-08-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 0.4, 0.6);
INSERT INTO `usage_records` VALUES (13, 25, '2023-08-05 12:00:00', '2023-08-05 12:45:00', 45, 100, 97, 0.6, 'Brown Rice', 0.5, 0.7);
INSERT INTO `usage_records` VALUES (14, 25, '2023-08-10 07:30:00', '2023-08-10 08:15:00', 45, 95, 96, 0.6, 'White Rice', 0.4, 0.6);
INSERT INTO `usage_records` VALUES (15, 25, '2023-08-15 18:00:00', '2023-08-15 18:40:00', 40, 100, 99, 0.6, 'Jasmine Rice', 0.5, 0.7);
INSERT INTO `usage_records` VALUES (16, 25, '2023-08-20 09:00:00', '2023-08-20 09:40:00', 40, 100, 98, 0.6, 'White Rice', 0.4, 0.6);
INSERT INTO `usage_records` VALUES (17, 25, '2023-08-25 13:00:00', '2023-08-25 13:45:00', 45, 100, 97, 0.6, 'Brown Rice', 0.5, 0.7);
INSERT INTO `usage_records` VALUES (18, 26, '2023-08-02 08:00:00', '2023-08-02 08:40:00', 40, 100, 98, 0.7, 'White Rice', 0.4, 0.6);
INSERT INTO `usage_records` VALUES (19, 26, '2023-08-06 12:00:00', '2023-08-06 12:45:00', 45, 100, 97, 0.7, 'Brown Rice', 0.5, 0.7);
INSERT INTO `usage_records` VALUES (20, 26, '2023-08-11 07:30:00', '2023-08-11 08:15:00', 45, 95, 96, 0.7, 'White Rice', 0.4, 0.6);
INSERT INTO `usage_records` VALUES (21, 26, '2023-08-16 18:00:00', '2023-08-16 18:40:00', 40, 100, 99, 0.7, 'Jasmine Rice', 0.5, 0.7);
INSERT INTO `usage_records` VALUES (22, 26, '2023-08-21 09:00:00', '2023-08-21 09:40:00', 40, 100, 98, 0.7, 'White Rice', 0.4, 0.6);
INSERT INTO `usage_records` VALUES (23, 26, '2023-08-26 13:00:00', '2023-08-26 13:45:00', 45, 100, 97, 0.7, 'Brown Rice', 0.5, 0.7);
INSERT INTO `usage_records` VALUES (24, 27, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 98, 0.5, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (25, 28, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 95, 99, 0.6, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (26, 29, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 92, 0.5, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (27, 30, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 100, 90, 0.6, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (28, 31, '2023-09-01 08:00:00', '2023-09-01 08:50:00', 50, 100, 85, 0.5, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (29, 32, '2023-09-02 07:30:00', '2023-09-02 08:30:00', 60, 100, 82, 0.6, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (30, 33, '2023-08-01 08:00:00', '2023-08-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (31, 33, '2023-08-30 12:00:00', '2023-08-30 12:45:00', 45, 100, 97, 0.6, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (32, 34, '2023-08-05 07:30:00', '2023-08-05 08:15:00', 45, 95, 96, 0.7, 'White Rice', 1.1, 1.6);
INSERT INTO `usage_records` VALUES (33, 34, '2023-09-05 18:00:00', '2023-09-05 18:40:00', 40, 100, 99, 0.7, 'Jasmine Rice', 1.3, 1.9);
INSERT INTO `usage_records` VALUES (34, 35, '2023-08-10 09:00:00', '2023-08-10 09:40:00', 40, 100, 98, 0.8, 'White Rice', 1.2, 1.7);
INSERT INTO `usage_records` VALUES (35, 35, '2023-09-10 13:00:00', '2023-09-10 13:45:00', 45, 100, 97, 0.8, 'Brown Rice', 1.4, 2);
INSERT INTO `usage_records` VALUES (36, 36, '2023-08-01 08:00:00', '2023-08-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (37, 36, '2023-09-01 12:00:00', '2023-09-01 12:45:00', 45, 100, 97, 0.6, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (38, 37, '2023-06-01 07:30:00', '2023-08-05 08:15:00', 45, 95, 96, 0.7, 'White Rice', 1.1, 1.6);
INSERT INTO `usage_records` VALUES (39, 37, '2023-07-01 18:00:00', '2023-09-05 18:40:00', 40, 100, 99, 0.7, 'Jasmine Rice', 1.3, 1.9);
INSERT INTO `usage_records` VALUES (40, 38, '2023-07-12 09:00:00', '2023-08-10 09:40:00', 40, 100, 98, 0.8, 'White Rice', 1.2, 1.7);
INSERT INTO `usage_records` VALUES (41, 38, '2023-08-18 13:00:00', '2023-09-10 13:45:00', 45, 100, 97, 0.8, 'Brown Rice', 1.4, 2);
INSERT INTO `usage_records` VALUES (42, 39, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1);
INSERT INTO `usage_records` VALUES (43, 40, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 95, 96, 0.7, 'Brown Rice', 1, 2);
INSERT INTO `usage_records` VALUES (44, 41, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 92, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (45, 42, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 100, 90, 0.7, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (48, 43, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 92, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (49, 44, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 100, 90, 0.7, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (50, 45, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 92, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (51, 46, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 100, 90, 0.7, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (52, 47, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 92, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (53, 48, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 92, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (54, 49, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 100, 90, 0.7, 'Brown Rice', 1.2, 1.8);
INSERT INTO `usage_records` VALUES (55, 50, '2023-09-01 08:00:00', '2023-09-01 08:30:00', 30, 1.4e32, 1.3e32, 100000, 'Cosmic Rice', 1, 1);
INSERT INTO `usage_records` VALUES (56, 51, '2023-09-02 08:00:00', '2023-09-02 08:30:00', 30, 1.5e32, 1.4e32, 120000, 'Primordial Rice', 1.2, 1.2);
INSERT INTO `usage_records` VALUES (57, 52, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 5, 6);
INSERT INTO `usage_records` VALUES (58, 53, '2023-09-02 07:30:00', '2023-09-02 08:15:00', 45, 95, 96, 0.7, 'Brown Rice', 6.5, 7);
INSERT INTO `usage_records` VALUES (112, 62, '2023-06-20 08:00:00', '2023-06-20 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (113, 62, '2023-07-01 08:00:00', '2023-07-01 08:40:00', 40, 100, 98, 0.6, 'Brown Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (114, 62, '2023-08-01 08:00:00', '2023-08-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (115, 62, '2023-09-01 08:00:00', '2023-09-01 08:40:00', 40, 100, 98, 0.6, 'Jasmine Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (116, 62, '2023-10-01 08:00:00', '2023-10-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (117, 62, '2023-11-01 08:00:00', '2023-11-01 08:40:00', 40, 100, 98, 0.6, 'Brown Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (118, 62, '2023-12-01 08:00:00', '2023-12-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (119, 62, '2024-01-01 08:00:00', '2024-01-01 08:40:00', 40, 100, 98, 0.6, 'Jasmine Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (120, 62, '2024-02-01 08:00:00', '2024-02-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (121, 62, '2024-03-01 08:00:00', '2024-03-01 08:40:00', 40, 100, 98, 0.6, 'Brown Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (122, 62, '2024-04-01 08:00:00', '2024-04-01 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (123, 62, '2024-05-01 08:00:00', '2024-05-01 08:40:00', 40, 100, 98, 0.6, 'Brown Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (124, 63, '2023-06-25 08:00:00', '2023-06-25 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (125, 63, '2023-07-10 08:00:00', '2023-07-10 08:40:00', 40, 100, 98, 0.6, 'Brown Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (126, 63, '2023-08-15 08:00:00', '2023-08-15 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (127, 63, '2023-09-20 08:00:00', '2023-09-20 08:40:00', 40, 100, 98, 0.6, 'Jasmine Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (128, 63, '2023-10-25 08:00:00', '2023-10-25 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (129, 63, '2023-11-30 08:00:00', '2023-11-30 08:40:00', 40, 100, 98, 0.6, 'Brown Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (130, 63, '2024-01-05 08:00:00', '2024-01-05 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (131, 63, '2024-02-10 08:00:00', '2024-02-10 08:40:00', 40, 100, 98, 0.6, 'Jasmine Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (132, 63, '2024-03-15 08:00:00', '2024-03-15 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (133, 63, '2024-04-20 08:00:00', '2024-04-20 08:40:00', 40, 100, 98, 0.6, 'Brown Rice', 1, 1.5);
INSERT INTO `usage_records` VALUES (134, 63, '2024-05-25 08:00:00', '2024-05-25 08:40:00', 40, 100, 98, 0.6, 'White Rice', 1, 1.5);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
