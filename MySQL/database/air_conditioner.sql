/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : air_conditioner

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:23:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for air_conditioner_info
-- ----------------------------
DROP TABLE IF EXISTS `air_conditioner_info`;
CREATE TABLE `air_conditioner_info`  (
  `ac_id` int(0) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `production_year` year NULL DEFAULT NULL,
  `cooling_capacity_btu` int(0) NULL DEFAULT NULL,
  `heating_capacity_btu` int(0) NULL DEFAULT NULL,
  `energy_efficiency_ratio` decimal(5, 2) NULL DEFAULT NULL,
  `power_consumption_watts` decimal(10, 2) NULL DEFAULT NULL,
  `refrigerant_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `noise_level_db` decimal(5, 2) NULL DEFAULT NULL,
  `weight_kg` decimal(5, 2) NULL DEFAULT NULL,
  `dimensions` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_period_months` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ac_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of air_conditioner_info
-- ----------------------------
INSERT INTO `air_conditioner_info` VALUES (1, 'Daikin', 'FTXS35LVMA', 2022, 12000, 13000, 3.50, 1100.00, 'R410A', 19.00, 32.50, '800x300x200', 60);
INSERT INTO `air_conditioner_info` VALUES (2, 'Mitsubishi', 'MSZ-FH09NA', 2021, 9000, 10000, 4.00, 900.00, 'R32', 20.00, 28.00, '780x290x210', 72);
INSERT INTO `air_conditioner_info` VALUES (3, 'LG', 'LP1419IVSM', 2023, 14000, 15000, 3.80, 1200.00, 'R410A', 21.00, 34.00, '820x310x220', 60);
INSERT INTO `air_conditioner_info` VALUES (4, 'Samsung', 'AR12TXHQAWKN', 2022, 11000, 12000, 3.70, 1000.00, 'R32', 18.50, 30.00, '790x295x205', 60);
INSERT INTO `air_conditioner_info` VALUES (5, 'Panasonic', 'CS-XE9PKEW', 2023, 10000, 11000, 4.20, 950.00, 'R410A', 20.50, 29.50, '800x300x200', 72);
INSERT INTO `air_conditioner_info` VALUES (6, 'GenericBrand', 'AC-1234', 2024, 15000, 16000, 3.80, 1200.00, 'R32', 19.50, 30.00, '800x300x200', 60);
INSERT INTO `air_conditioner_info` VALUES (7, 'FrostTech', 'FT-2000', 2022, 10000, 12000, 3.20, 950.00, 'R410A', 24.00, 30.00, '750x280x190', 18);
INSERT INTO `air_conditioner_info` VALUES (111, 'TestBrand', 'AC-Dehumid1', NULL, 18000, NULL, NULL, 850.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (112, 'TestBrand', 'AC-AirSupply1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (113, 'TestBrand', 'AC-ExtremeDehumid1', NULL, 18000, NULL, NULL, 6000.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (114, 'TestBrand', 'AC-Usage1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (115, 'TestBrand', 'AC-Heating1', NULL, 18000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (116, 'TestBrand', 'AC-Blow1', NULL, 18000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (117, 'TestBrand', 'AC-ExtremeHeat', NULL, 25000, NULL, NULL, 12000.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (221, 'TestBrand', 'AC-LowTemp1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, 55.00, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (222, 'ExtremeBrand', 'AC-Extreme1', NULL, 1000000, NULL, 100.00, 10000.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (223, 'ThermoBrand', 'SpecificModel', NULL, 20000, NULL, NULL, 800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (225, 'TestBrand', 'AC-Extreme', NULL, 18000, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (226, 'TestBrand', 'Model-X', NULL, 20000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (227, 'HeatMaster', 'AC-Extreme1', NULL, 25000, NULL, NULL, 950.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (228, 'TestBrand', 'AC-R410A-18000', NULL, 18000, NULL, NULL, 2000.00, 'R-410A', NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (331, 'TestBrand', 'AC-Heat1800', NULL, NULL, NULL, NULL, 1800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (332, 'TestBrand', 'AC-Heat1800', NULL, NULL, NULL, NULL, 1800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (334, 'TestBrand', 'AC-Heat1800', NULL, NULL, NULL, NULL, 1800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (336, 'TestBrand', 'AC-Quiet50', NULL, NULL, NULL, NULL, NULL, NULL, 50.00, 30.00, '80x20x50', NULL);
INSERT INTO `air_conditioner_info` VALUES (338, 'TestBrand', 'AC-Extreme', NULL, 1000000, NULL, NULL, 1000000.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (1001, 'BrandX', 'Model-A', NULL, 22000, NULL, NULL, 950.00, 'R410A', NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (1002, 'BrandY', 'Model-B', NULL, 25000, NULL, NULL, 900.00, 'R32', NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (1003, 'BrandZ', 'Model-C', NULL, 23000, NULL, NULL, 970.00, 'R410A', NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (1004, 'BrandX', 'Model-D', NULL, 26000, NULL, NULL, 920.00, 'R32', NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (1005, 'BrandY', 'Model-E', NULL, 24000, NULL, NULL, 980.00, 'R32', NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (2001, 'TestBrand', 'Dehumidifier1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (2002, 'TestBrand', 'Dehumidifier2', NULL, 20000, NULL, NULL, 850.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (2003, 'TestBrand', 'Dehumidifier3', NULL, 22000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (2222, 'CoolMaster', 'CM-5678', 2023, 12000, 13000, 4.00, 1100.00, 'R410A', 23.00, 32.00, '820x310x210', 24);
INSERT INTO `air_conditioner_info` VALUES (3001, 'TestBrand', 'Dehumidifier1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (3002, 'TestBrand', 'Dehumidifier2', NULL, 20000, NULL, NULL, 850.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (3003, 'TestBrand', 'Dehumidifier3', NULL, 22000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (4001, 'TestBrand', 'AC1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (4002, 'TestBrand', 'AC2', NULL, 20000, NULL, NULL, 850.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (4003, 'TestBrand', 'AC3', NULL, 22000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (5001, 'TestBrand', 'AC-Humidity1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (5002, 'TestBrand', 'AC-Humidity2', NULL, 20000, NULL, NULL, 850.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (5003, 'TestBrand', 'AC-Humidity3', NULL, 22000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (5678, 'TestBrand', 'TB-AC30000', 2025, 25000, 20000, 4.00, 900.00, 'R32', 25.00, 35.00, '850x350x250', 60);
INSERT INTO `air_conditioner_info` VALUES (5679, 'ACME', 'Model-X', 2023, 12000, 13000, 3.50, 1100.00, 'R410A', 22.00, 33.00, '800x300x200', 24);
INSERT INTO `air_conditioner_info` VALUES (5680, 'ACME', 'AC-5680', 2023, 12000, 13000, 3.50, 1100.00, 'R410A', 22.00, 33.00, '800x300x200', 24);
INSERT INTO `air_conditioner_info` VALUES (5681, 'Hitachi', 'RAS-EK24K', 2023, 12000, 13000, 4.00, 1100.00, 'R32', 21.00, 33.00, '800x300x200', 60);
INSERT INTO `air_conditioner_info` VALUES (6001, 'TestBrand', 'AC-Extreme1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (6002, 'TestBrand', 'AC-Extreme2', NULL, 20000, NULL, NULL, 850.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (6003, 'TestBrand', 'AC-Extreme3', NULL, 22000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (7001, 'TestBrand', 'AC-Model1', NULL, 18000, NULL, NULL, 800.00, NULL, NULL, 55.00, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (7002, 'TestBrand', 'AC-Model2', NULL, 20000, NULL, NULL, 950.00, NULL, NULL, 60.00, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (7003, 'AnotherBrand', 'AC-Model3', NULL, 22000, NULL, NULL, 900.00, NULL, NULL, 52.00, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (7004, 'Unknown', 'AC-Model4', NULL, 21000, NULL, NULL, 850.00, NULL, NULL, 58.00, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (7005, 'TestBrand', 'AC-Model5', NULL, 19000, NULL, NULL, 980.00, NULL, NULL, 49.00, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (8001, 'TestBrand', 'AC-Dehumid', NULL, 20000, NULL, NULL, 850.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (9001, 'TestBrand', 'AC-SupplyAir1', NULL, 15000, NULL, NULL, 500.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (9002, 'TestBrand', 'ExtremeAC1', 2025, 25000, 18000, 4.50, 950.00, 'R32', 22.00, 35.00, '850x320x220', 60);
INSERT INTO `air_conditioner_info` VALUES (9003, 'TestBrand', 'ExtremeAC2', 2025, 30000, 20000, 4.20, 900.00, 'R410A', 24.00, 38.00, '900x330x230', 60);
INSERT INTO `air_conditioner_info` VALUES (9004, 'TestBrand', 'ExtremeAC3', 2025, 28000, 19000, 4.30, 1000.00, 'R32', 23.00, 36.00, '870x325x225', 60);
INSERT INTO `air_conditioner_info` VALUES (9008, 'TestBrand', 'AC-CoolHumid', NULL, 20000, NULL, NULL, 900.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `air_conditioner_info` VALUES (9101, 'TestBrand', 'AC-SupplyAir2', NULL, 16000, NULL, NULL, 500.00, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for energy_consumption
-- ----------------------------
DROP TABLE IF EXISTS `energy_consumption`;
CREATE TABLE `energy_consumption`  (
  `energy_id` int(0) NOT NULL AUTO_INCREMENT,
  `ac_id` int(0) NULL DEFAULT NULL,
  `record_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `energy_consumption_kwh` decimal(10, 2) NULL DEFAULT NULL,
  `power_consumption_watts` decimal(10, 2) NULL DEFAULT NULL,
  `temperature_setting_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fan_speed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `indoor_temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `outdoor_temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `humidity_percent` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`energy_id`) USING BTREE,
  INDEX `ac_id`(`ac_id`) USING BTREE,
  CONSTRAINT `energy_consumption_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `air_conditioner_info` (`ac_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of energy_consumption
-- ----------------------------
INSERT INTO `energy_consumption` VALUES (1, 1, '2023-10-01', 5.50, 1100.00, 22.00, 'Cooling', 'High', 25.00, 35.00, 60.00);
INSERT INTO `energy_consumption` VALUES (2, 2, '2023-10-02', 8.00, 900.00, 24.00, 'Heating', 'Medium', 20.00, 10.00, 50.00);
INSERT INTO `energy_consumption` VALUES (3, 3, '2023-10-03', 6.00, 1200.00, 26.00, 'Cooling', 'Low', 28.00, 38.00, 65.00);
INSERT INTO `energy_consumption` VALUES (4, 4, '2023-10-04', 7.50, 1000.00, 23.00, 'Dehumidify', 'High', 26.00, 36.00, 70.00);
INSERT INTO `energy_consumption` VALUES (5, 5, '2023-10-05', 4.00, 950.00, 25.00, 'Fan', 'Medium', 27.00, 37.00, 55.00);
INSERT INTO `energy_consumption` VALUES (32, 5681, '2025-11-26', NULL, 1100.00, 24.00, 'Cooling', 'High', 32.00, 44.00, 60.00);
INSERT INTO `energy_consumption` VALUES (33, 5678, '2025-11-26', 2.86, 1100.00, 24.00, 'Cooling', 'High', 32.00, 44.00, 60.00);
INSERT INTO `energy_consumption` VALUES (34, 5678, '2025-11-26', 2.86, 1100.00, 24.00, 'Cooling', 'High', 32.00, 44.00, 60.00);
INSERT INTO `energy_consumption` VALUES (35, 5678, '2025-11-26', 3.50, 1200.00, 20.00, 'Heating', 'High', -10.00, -15.00, 50.00);
INSERT INTO `energy_consumption` VALUES (36, 5678, '2025-11-26', 2.86, 1200.00, 25.00, 'Cooling', 'High', 32.00, 40.00, 60.00);
INSERT INTO `energy_consumption` VALUES (37, 5678, '2025-11-26', 3.50, 1200.00, 20.00, 'Heating', 'High', -10.00, -15.00, 50.00);
INSERT INTO `energy_consumption` VALUES (38, 3001, '2025-11-26', 1.20, NULL, NULL, 'dehumidification', 'High', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (39, 3002, '2025-11-26', 1.50, NULL, NULL, 'dehumidification', 'Medium', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (40, 3003, '2025-11-26', 2.00, NULL, NULL, 'dehumidification', 'Low', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (41, 4001, '2025-11-26', 1.20, NULL, NULL, 'cooling', 'High', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (42, 4002, '2025-11-26', 1.50, NULL, NULL, 'cooling', 'Medium', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (43, 4003, '2025-11-26', 2.00, NULL, NULL, 'cooling', 'Low', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (44, 5001, '2025-11-26', 1.50, NULL, NULL, 'cooling', 'High', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (45, 5002, '2025-11-26', 1.80, NULL, NULL, 'cooling', 'Medium', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (46, 5003, '2025-11-26', 2.00, NULL, NULL, 'cooling', 'Low', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (47, 8001, '2025-11-26', 0.80, NULL, NULL, 'dehumidification', 'High', NULL, NULL, 75.00);
INSERT INTO `energy_consumption` VALUES (49, 9001, '2025-11-26', 0.00, 0.00, NULL, 'supply_air', '10', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (50, 9101, '2025-11-26', 0.00, 0.00, NULL, 'supply_air', '10', NULL, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (51, 8001, '2025-11-26', 1.00, 750.00, 22.00, 'air_supply', 'High', 28.00, 20.00, NULL);
INSERT INTO `energy_consumption` VALUES (52, 9001, '2025-11-26', 5.00, 15000.00, -5.00, 'extreme_cooling', 'High', -15.00, -40.00, NULL);
INSERT INTO `energy_consumption` VALUES (53, 9008, '2025-11-26', 2.00, 850.00, NULL, 'cooling', 'High', NULL, NULL, 75.00);
INSERT INTO `energy_consumption` VALUES (54, 111, '2025-11-26', 1.80, 900.00, 28.00, 'dehumidification', 'Medium', NULL, NULL, 65.00);
INSERT INTO `energy_consumption` VALUES (55, 8001, '2025-11-26', NULL, 900.00, 28.00, 'dehumidification', 'Medium', 25.00, 30.00, 65.00);
INSERT INTO `energy_consumption` VALUES (56, 9001, '2025-11-26', 2.50, 900.00, 25.00, 'dehumidification', 'Medium', NULL, NULL, 65.00);
INSERT INTO `energy_consumption` VALUES (57, 9001, '2025-11-26', 2.00, 800.00, 25.00, 'dehumidification', 'Medium', NULL, NULL, 65.00);
INSERT INTO `energy_consumption` VALUES (58, 9002, '2025-11-26', 2.50, 900.00, 28.00, 'dehumidification', 'Medium', NULL, NULL, 70.00);
INSERT INTO `energy_consumption` VALUES (59, 112, '2025-11-26', 1.20, NULL, NULL, 'air_supply', 'Low', NULL, NULL, 70.00);
INSERT INTO `energy_consumption` VALUES (60, 113, '2025-11-26', 3.00, 5500.00, NULL, 'extreme_dehumidification', 'High', NULL, NULL, 5.00);
INSERT INTO `energy_consumption` VALUES (61, 114, '2025-11-26', 6.00, 750.00, NULL, 'cooling', 'High', NULL, 15.00, NULL);
INSERT INTO `energy_consumption` VALUES (62, 115, '2025-11-26', 5.00, 950.00, NULL, 'heating', 'Medium', 22.00, NULL, NULL);
INSERT INTO `energy_consumption` VALUES (63, 116, '2025-11-26', NULL, 850.00, NULL, 'blow', NULL, NULL, 30.00, NULL);
INSERT INTO `energy_consumption` VALUES (64, 117, '2025-11-26', NULL, 12000.00, NULL, 'extreme_heating', NULL, NULL, 45.00, NULL);
INSERT INTO `energy_consumption` VALUES (65, 226, '2025-11-26', NULL, 900.00, 24.00, 'cooling', NULL, 30.00, NULL, 50.00);
INSERT INTO `energy_consumption` VALUES (66, 226, '2025-11-26', NULL, 900.00, 28.00, 'heating', NULL, 20.00, NULL, 40.00);
INSERT INTO `energy_consumption` VALUES (67, 226, '2025-11-26', NULL, 900.00, 26.00, 'dehumidification', NULL, 25.00, NULL, 70.00);
INSERT INTO `energy_consumption` VALUES (68, 226, '2025-11-26', NULL, 900.00, 25.00, 'fan', NULL, 24.00, NULL, 50.00);
INSERT INTO `energy_consumption` VALUES (69, 227, '2025-11-26', 5.50, 950.00, 24.00, 'cooling', NULL, 35.00, 40.00, 85.00);
INSERT INTO `energy_consumption` VALUES (70, 227, '2025-11-26', 3.50, 950.00, 25.00, 'air_supply', NULL, 28.00, 40.00, 85.00);

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

-- ----------------------------
-- Table structure for fuzzy_membership
-- ----------------------------
DROP TABLE IF EXISTS `fuzzy_membership`;
CREATE TABLE `fuzzy_membership`  (
  `id` int(0) NOT NULL,
  `variable_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `membership_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `threshold_value` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fuzzy_membership
-- ----------------------------

-- ----------------------------
-- Table structure for humidity_records
-- ----------------------------
DROP TABLE IF EXISTS `humidity_records`;
CREATE TABLE `humidity_records`  (
  `humidity_id` int(0) NOT NULL AUTO_INCREMENT,
  `ac_id` int(0) NULL DEFAULT NULL,
  `record_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `indoor_humidity_percent` decimal(5, 2) NULL DEFAULT NULL,
  `outdoor_humidity_percent` decimal(5, 2) NULL DEFAULT NULL,
  `temperature_setting_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fan_speed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `power_consumption_watts` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`humidity_id`) USING BTREE,
  INDEX `ac_id`(`ac_id`) USING BTREE,
  CONSTRAINT `humidity_records_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `air_conditioner_info` (`ac_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of humidity_records
-- ----------------------------
INSERT INTO `humidity_records` VALUES (1, 1, '2023-10-01', 60.00, 70.00, 22.00, 'Cooling', 'High', 1100.00);
INSERT INTO `humidity_records` VALUES (2, 2, '2023-10-02', 50.00, 60.00, 24.00, 'Heating', 'Medium', 900.00);
INSERT INTO `humidity_records` VALUES (3, 3, '2023-10-03', 65.00, 75.00, 26.00, 'Cooling', 'Low', 1200.00);
INSERT INTO `humidity_records` VALUES (4, 4, '2023-10-04', 70.00, 80.00, 23.00, 'Dehumidify', 'High', 1000.00);
INSERT INTO `humidity_records` VALUES (5, 5, '2023-10-05', 55.00, 65.00, 25.00, 'Fan', 'Medium', 950.00);
INSERT INTO `humidity_records` VALUES (11, 5678, '2025-11-26', 60.00, 70.00, 24.00, 'Cooling', 'High', 1100.00);
INSERT INTO `humidity_records` VALUES (12, 5678, '2025-11-26', 60.00, 70.00, 25.00, 'Cooling', 'High', 1200.00);
INSERT INTO `humidity_records` VALUES (13, 5678, '2025-11-26', 50.00, 55.00, 20.00, 'Heating', 'High', 1200.00);
INSERT INTO `humidity_records` VALUES (14, 5678, '2025-11-26', 60.00, 70.00, 25.00, 'Cooling', 'High', 1200.00);
INSERT INTO `humidity_records` VALUES (15, 5678, '2025-11-26', 40.00, 70.00, 25.00, 'Cooling', 'High', 1200.00);
INSERT INTO `humidity_records` VALUES (16, 5678, '2025-11-26', 60.00, 70.00, 25.00, 'Cooling', 'High', 1200.00);
INSERT INTO `humidity_records` VALUES (17, 5678, '2025-11-27', 40.00, 70.00, 25.00, 'Cooling', 'High', 1200.00);
INSERT INTO `humidity_records` VALUES (18, 5678, '2025-11-26', 35.00, 50.00, 24.00, 'Cooling', 'Medium', 1000.00);
INSERT INTO `humidity_records` VALUES (19, 5678, '2025-11-27', 37.00, 52.00, 25.00, 'Heating', 'High', 1200.00);
INSERT INTO `humidity_records` VALUES (20, 5678, '2025-11-28', 33.00, 48.00, 23.00, 'Fan', 'Low', 950.00);
INSERT INTO `humidity_records` VALUES (21, 5678, '2025-11-29', 36.00, 51.00, 24.50, 'Cooling', 'High', 1050.00);
INSERT INTO `humidity_records` VALUES (22, 5678, '2025-11-30', 34.00, 49.00, 24.00, 'Heating', 'Medium', 1100.00);
INSERT INTO `humidity_records` VALUES (23, 5678, '2025-11-26', 0.00, 100.00, 24.00, 'Cooling', 'High', 1500.00);
INSERT INTO `humidity_records` VALUES (24, 3001, '2025-11-26', 25.00, 70.00, NULL, 'dehumidification', NULL, NULL);
INSERT INTO `humidity_records` VALUES (25, 3002, '2025-11-26', 50.00, 75.00, NULL, 'dehumidification', NULL, NULL);
INSERT INTO `humidity_records` VALUES (26, 3003, '2025-11-26', 80.00, 85.00, NULL, 'dehumidification', NULL, NULL);
INSERT INTO `humidity_records` VALUES (27, 4001, '2025-11-26', 25.00, 70.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (28, 4002, '2025-11-26', 50.00, 75.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (29, 4003, '2025-11-26', 80.00, 85.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (30, 5001, '2025-11-26', 200.00, 100.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (31, 5002, '2025-11-26', 200.00, 105.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (32, 5003, '2025-11-26', 200.00, 110.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (33, 6001, '2025-11-26', 25.00, 70.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (34, 6002, '2025-11-26', 50.00, 75.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (35, 6003, '2025-11-26', 80.00, 85.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (36, 8001, '2025-11-26', 75.00, 70.00, NULL, 'dehumidification', NULL, NULL);
INSERT INTO `humidity_records` VALUES (37, 9008, '2025-11-26', 75.00, 25.00, NULL, 'cooling', NULL, NULL);
INSERT INTO `humidity_records` VALUES (38, 111, '2025-11-26', 65.00, 50.00, NULL, 'dehumidification', NULL, NULL);
INSERT INTO `humidity_records` VALUES (39, 8001, '2025-11-26', 65.00, 25.00, NULL, 'dehumidification', NULL, NULL);
INSERT INTO `humidity_records` VALUES (40, 112, '2025-11-26', 70.00, 30.00, NULL, 'air_supply', NULL, NULL);
INSERT INTO `humidity_records` VALUES (41, 113, '2025-11-26', 5.00, 85.00, NULL, 'extreme_dehumidification', NULL, NULL);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `product_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for programming_questions
-- ----------------------------
DROP TABLE IF EXISTS `programming_questions`;
CREATE TABLE `programming_questions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '问题的唯一标识符',
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '问题的内容',
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '对应的问题答案',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of programming_questions
-- ----------------------------

-- ----------------------------
-- Table structure for refrigerant_properties
-- ----------------------------
DROP TABLE IF EXISTS `refrigerant_properties`;
CREATE TABLE `refrigerant_properties`  (
  `refrigerant_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phase_change_heat_kj_per_kg` float NULL DEFAULT NULL,
  `refrigerant_flow_rate_kg_per_s` float NULL DEFAULT NULL,
  PRIMARY KEY (`refrigerant_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of refrigerant_properties
-- ----------------------------

-- ----------------------------
-- Table structure for temperature_records
-- ----------------------------
DROP TABLE IF EXISTS `temperature_records`;
CREATE TABLE `temperature_records`  (
  `temperature_id` int(0) NOT NULL AUTO_INCREMENT,
  `ac_id` int(0) NULL DEFAULT NULL,
  `record_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `indoor_temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `outdoor_temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `temperature_setting_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fan_speed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `humidity_percent` decimal(5, 2) NULL DEFAULT NULL,
  `power_consumption_watts` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`temperature_id`) USING BTREE,
  INDEX `ac_id`(`ac_id`) USING BTREE,
  CONSTRAINT `temperature_records_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `air_conditioner_info` (`ac_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temperature_records
-- ----------------------------
INSERT INTO `temperature_records` VALUES (1, 1, '2023-10-01', 25.00, 35.00, 22.00, 'Cooling', 'High', 60.00, 1100.00);
INSERT INTO `temperature_records` VALUES (2, 2, '2023-10-02', 20.00, 10.00, 24.00, 'Heating', 'Medium', 50.00, 900.00);
INSERT INTO `temperature_records` VALUES (3, 3, '2023-10-03', 28.00, 38.00, 26.00, 'Cooling', 'Low', 65.00, 1200.00);
INSERT INTO `temperature_records` VALUES (4, 4, '2023-10-04', 26.00, 36.00, 23.00, 'Dehumidify', 'High', 70.00, 1000.00);
INSERT INTO `temperature_records` VALUES (5, 5, '2023-10-05', 27.00, 37.00, 25.00, 'Fan', 'Medium', 55.00, 950.00);
INSERT INTO `temperature_records` VALUES (11, 5678, '2025-11-26', 35.00, 40.00, 25.00, 'Cooling', 'High', 60.00, 1500.00);
INSERT INTO `temperature_records` VALUES (12, 5678, '2025-11-26', 35.00, 40.00, 25.00, 'Cooling', 'High', 60.00, 1500.00);
INSERT INTO `temperature_records` VALUES (13, 5678, '2025-11-26', 25.00, 35.00, 25.00, 'Cooling', 'High', 60.00, 1200.00);
INSERT INTO `temperature_records` VALUES (14, 5678, '2025-11-27', 25.00, 35.00, 25.00, 'Cooling', 'High', 40.00, 1200.00);
INSERT INTO `temperature_records` VALUES (15, 5678, '2025-11-26', 18.00, 30.00, 22.00, 'Heating', 'High', 50.00, 1200.00);
INSERT INTO `temperature_records` VALUES (16, 5678, '2025-11-27', 19.50, 32.00, 23.00, 'Fan', 'Medium', 55.00, 1100.00);
INSERT INTO `temperature_records` VALUES (17, 5678, '2025-11-28', 17.00, 28.00, 21.00, 'Heating', 'Low', 48.00, 1150.00);
INSERT INTO `temperature_records` VALUES (18, 5678, '2025-11-29', 20.00, 31.00, 24.00, 'Fan', 'Medium', 52.00, 1000.00);
INSERT INTO `temperature_records` VALUES (19, 5678, '2025-11-30', 16.50, 29.00, 22.50, 'Heating', 'High', 50.00, 1250.00);
INSERT INTO `temperature_records` VALUES (20, 5678, '2025-11-26', 40.00, -30.00, 24.00, 'Heating', 'High', 50.00, 1500.00);
INSERT INTO `temperature_records` VALUES (21, 6001, '2025-11-26', 25.00, 60.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `temperature_records` VALUES (22, 6002, '2025-11-26', 28.00, 60.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `temperature_records` VALUES (23, 6003, '2025-11-26', 30.00, 60.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `temperature_records` VALUES (24, 221, '2025-11-26', 5.00, 15.00, NULL, NULL, NULL, 20.00, NULL);
INSERT INTO `temperature_records` VALUES (25, 222, '2025-11-26', 50.00, -50.00, NULL, NULL, NULL, 50.00, NULL);
INSERT INTO `temperature_records` VALUES (26, 225, '2025-11-26', 100.00, -50.00, NULL, 'cooling', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records`  (
  `usage_id` int(0) NOT NULL AUTO_INCREMENT,
  `ac_id` int(0) NULL DEFAULT NULL,
  `usage_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `usage_duration_hours` decimal(5, 2) NULL DEFAULT NULL,
  `temperature_setting_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `fan_speed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `power_consumption_watts` decimal(10, 2) NULL DEFAULT NULL,
  `indoor_temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `outdoor_temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `humidity_percent` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`usage_id`) USING BTREE,
  INDEX `ac_id`(`ac_id`) USING BTREE,
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `air_conditioner_info` (`ac_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9020 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
INSERT INTO `usage_records` VALUES (1, 1, '2023-10-01', 5.50, 22.00, 'High', 'Cooling', 1100.00, 25.00, 35.00, 60.00);
INSERT INTO `usage_records` VALUES (2, 2, '2023-10-02', 8.00, 24.00, 'Medium', 'Heating', 900.00, 20.00, 10.00, 50.00);
INSERT INTO `usage_records` VALUES (3, 3, '2023-10-03', 6.00, 26.00, 'Low', 'Cooling', 1200.00, 28.00, 38.00, 65.00);
INSERT INTO `usage_records` VALUES (4, 4, '2023-10-04', 7.50, 23.00, 'High', 'Dehumidify', 1000.00, 26.00, 36.00, 70.00);
INSERT INTO `usage_records` VALUES (5, 5, '2023-10-05', 4.00, 25.00, 'Medium', 'Fan', 950.00, 27.00, 37.00, 55.00);
INSERT INTO `usage_records` VALUES (6, 6, '2025-01-01', 3.00, 25.00, 'Medium', 'cooling', 1200.00, 30.00, 35.00, 55.00);
INSERT INTO `usage_records` VALUES (7, 5678, '2025-11-26', 2.00, 20.00, 'High', 'Heating', 1500.00, 10.00, 0.00, 50.00);
INSERT INTO `usage_records` VALUES (8, 5678, '2025-11-26', 3.00, 24.00, 'Medium', 'Cooling', 1000.00, 26.00, 35.00, 45.00);
INSERT INTO `usage_records` VALUES (9, 5678, '2025-11-27', 2.50, 25.00, 'High', 'Heating', 1200.00, 20.00, 10.00, 50.00);
INSERT INTO `usage_records` VALUES (10, 5678, '2025-11-28', 4.00, 23.00, 'Low', 'Cooling', 950.00, 27.00, 36.00, 42.00);
INSERT INTO `usage_records` VALUES (11, 5678, '2025-11-29', 1.50, 22.00, 'Medium', 'Heating', 1100.00, 19.00, 12.00, 48.00);
INSERT INTO `usage_records` VALUES (12, 5678, '2025-11-30', 3.50, 24.50, 'High', 'Cooling', 1050.00, 25.00, 34.00, 40.00);
INSERT INTO `usage_records` VALUES (13, 5678, '2025-11-26', 5.00, 24.00, 'High', 'Heating', 1500.00, 40.00, -30.00, 50.00);
INSERT INTO `usage_records` VALUES (14, 5678, '2025-11-26', 5.00, 24.00, 'High', 'Cooling', 1500.00, 25.00, 35.00, 0.00);
INSERT INTO `usage_records` VALUES (15, 5678, '2025-11-26', 10.00, 24.00, 'High', 'Heating', 1500.00, 20.00, -5.00, 50.00);
INSERT INTO `usage_records` VALUES (16, 5678, '2025-11-27', 8.50, 25.00, 'Medium', 'Fan', 1200.00, 22.00, 0.00, 55.00);
INSERT INTO `usage_records` VALUES (17, 5678, '2025-11-28', 9.00, 23.00, 'High', 'Heating', 1500.00, 21.00, -3.00, 52.00);
INSERT INTO `usage_records` VALUES (18, 5678, '2025-11-29', 7.50, 24.50, 'Medium', 'Fan', 1200.00, 23.00, 2.00, 54.00);
INSERT INTO `usage_records` VALUES (19, 5678, '2025-11-30', 11.00, 24.00, 'High', 'Heating', 1500.00, 20.00, -2.00, 51.00);
INSERT INTO `usage_records` VALUES (20, 5678, '2025-11-26', 8.00, 22.00, 'High', 'Cooling', 1200.00, 10.00, 60.00, 50.00);
INSERT INTO `usage_records` VALUES (21, 5678, '2025-11-27', 9.50, 23.00, 'Medium', 'Cooling', 1100.00, 10.00, 60.00, 55.00);
INSERT INTO `usage_records` VALUES (22, 5678, '2025-11-28', 7.00, 21.50, 'High', 'Cooling', 1250.00, 10.00, 60.00, 52.00);
INSERT INTO `usage_records` VALUES (23, 5678, '2025-11-29', 8.50, 22.50, 'Medium', 'Cooling', 1150.00, 10.00, 60.00, 54.00);
INSERT INTO `usage_records` VALUES (24, 5678, '2025-11-30', 10.00, 22.00, 'High', 'Cooling', 1300.00, 10.00, 60.00, 51.00);
INSERT INTO `usage_records` VALUES (9002, 9002, '2025-11-26', 10.00, 22.00, 'High', 'Cooling', 950.00, 10.00, 60.00, 50.00);
INSERT INTO `usage_records` VALUES (9003, 9003, '2025-11-26', 8.00, 22.00, 'Medium', 'Cooling', 900.00, 10.00, 60.00, 55.00);
INSERT INTO `usage_records` VALUES (9004, 9004, '2025-11-26', 12.00, 22.00, 'Low', 'Cooling', 1000.00, 10.00, 60.00, 45.00);
INSERT INTO `usage_records` VALUES (9005, 6001, '2025-11-26', 5.00, NULL, 'High', 'cooling', NULL, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9006, 6002, '2025-11-26', 4.00, NULL, 'Medium', 'cooling', NULL, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9007, 6003, '2025-11-26', 6.00, NULL, 'Low', 'cooling', NULL, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9008, 114, '2025-11-26', 6.00, NULL, NULL, 'cooling', NULL, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9009, 115, '2025-11-26', 4.00, NULL, NULL, 'heating', NULL, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9010, 116, '2025-11-26', 0.50, NULL, 'High', 'blow', NULL, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9011, 117, '2025-11-26', 25.00, NULL, 'High', 'extreme_heating', 12000.00, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9012, 221, '2025-11-26', 2.00, NULL, 'Medium', 'cooling', 750.00, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9013, 8001, '2025-11-26', 1.00, NULL, 'Medium', 'heating', 800.00, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9014, 8001, '2025-11-26', 3.00, NULL, 'Medium', 'dehumidification', 700.00, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9015, 8001, '2025-11-26', 1.50, NULL, 'Medium', 'fan', 100.00, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9016, 223, '2025-11-26', 5.00, 30.00, 'Medium', 'cooling', 950.00, NULL, NULL, NULL);
INSERT INTO `usage_records` VALUES (9017, 223, '2025-11-26', 2.50, 8.00, 'Medium', 'cooling', 500.00, 5.00, NULL, 20.00);
INSERT INTO `usage_records` VALUES (9019, 334, '2025-11-26', 8.00, 22.00, NULL, 'heating', NULL, NULL, -5.00, NULL);

-- ----------------------------
-- View structure for air_conditioner_info_views
-- ----------------------------
DROP VIEW IF EXISTS `air_conditioner_info_views`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `air_conditioner_info_views` AS select `air_conditioner_info`.`ac_id` AS `ac_id`,`air_conditioner_info`.`manufacturer` AS `manufacturer`,`air_conditioner_info`.`model` AS `model`,`air_conditioner_info`.`production_year` AS `production_year`,`air_conditioner_info`.`cooling_capacity_btu` AS `cooling_capacity_btu`,`air_conditioner_info`.`heating_capacity_btu` AS `heating_capacity_btu`,`air_conditioner_info`.`energy_efficiency_ratio` AS `energy_efficiency_ratio`,`air_conditioner_info`.`power_consumption_watts` AS `power_consumption_watts`,`air_conditioner_info`.`refrigerant_type` AS `refrigerant_type`,`air_conditioner_info`.`noise_level_db` AS `noise_level_db`,`air_conditioner_info`.`weight_kg` AS `weight_kg`,`air_conditioner_info`.`dimensions` AS `dimensions`,`air_conditioner_info`.`warranty_period_months` AS `warranty_period_months` from `air_conditioner_info`;

SET FOREIGN_KEY_CHECKS = 1;
