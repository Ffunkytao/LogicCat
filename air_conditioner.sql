/*
 Navicat Premium Data Transfer

 Source Server         : RemoteComplexdatabase
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : air_conditioner

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 24/05/2025 13:24:54
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of air_conditioner_info
-- ----------------------------
INSERT INTO `air_conditioner_info` VALUES (1, 'Daikin', 'FTXS35LVMA', 2022, 12000, 13000, 3.50, 1100.00, 'R410A', 19.00, 32.50, '800x300x200', 60);
INSERT INTO `air_conditioner_info` VALUES (2, 'Mitsubishi', 'MSZ-FH09NA', 2021, 9000, 10000, 4.00, 900.00, 'R32', 20.00, 28.00, '780x290x210', 72);
INSERT INTO `air_conditioner_info` VALUES (3, 'LG', 'LP1419IVSM', 2023, 14000, 15000, 3.80, 1200.00, 'R410A', 21.00, 34.00, '820x310x220', 60);
INSERT INTO `air_conditioner_info` VALUES (4, 'Samsung', 'AR12TXHQAWKN', 2022, 11000, 12000, 3.70, 1000.00, 'R32', 18.50, 30.00, '790x295x205', 60);
INSERT INTO `air_conditioner_info` VALUES (5, 'Panasonic', 'CS-XE9PKEW', 2023, 10000, 11000, 4.20, 950.00, 'R410A', 20.50, 29.50, '800x300x200', 72);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of energy_consumption
-- ----------------------------
INSERT INTO `energy_consumption` VALUES (1, 1, '2023-10-01', 5.50, 1100.00, 22.00, 'Cooling', 'High', 25.00, 35.00, 60.00);
INSERT INTO `energy_consumption` VALUES (2, 2, '2023-10-02', 8.00, 900.00, 24.00, 'Heating', 'Medium', 20.00, 10.00, 50.00);
INSERT INTO `energy_consumption` VALUES (3, 3, '2023-10-03', 6.00, 1200.00, 26.00, 'Cooling', 'Low', 28.00, 38.00, 65.00);
INSERT INTO `energy_consumption` VALUES (4, 4, '2023-10-04', 7.50, 1000.00, 23.00, 'Dehumidify', 'High', 26.00, 36.00, 70.00);
INSERT INTO `energy_consumption` VALUES (5, 5, '2023-10-05', 4.00, 950.00, 25.00, 'Fan', 'Medium', 27.00, 37.00, 55.00);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of humidity_records
-- ----------------------------
INSERT INTO `humidity_records` VALUES (1, 1, '2023-10-01', 60.00, 70.00, 22.00, 'Cooling', 'High', 1100.00);
INSERT INTO `humidity_records` VALUES (2, 2, '2023-10-02', 50.00, 60.00, 24.00, 'Heating', 'Medium', 900.00);
INSERT INTO `humidity_records` VALUES (3, 3, '2023-10-03', 65.00, 75.00, 26.00, 'Cooling', 'Low', 1200.00);
INSERT INTO `humidity_records` VALUES (4, 4, '2023-10-04', 70.00, 80.00, 23.00, 'Dehumidify', 'High', 1000.00);
INSERT INTO `humidity_records` VALUES (5, 5, '2023-10-05', 55.00, 65.00, 25.00, 'Fan', 'Medium', 950.00);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temperature_records
-- ----------------------------
INSERT INTO `temperature_records` VALUES (1, 1, '2023-10-01', 25.00, 35.00, 22.00, 'Cooling', 'High', 60.00, 1100.00);
INSERT INTO `temperature_records` VALUES (2, 2, '2023-10-02', 20.00, 10.00, 24.00, 'Heating', 'Medium', 50.00, 900.00);
INSERT INTO `temperature_records` VALUES (3, 3, '2023-10-03', 28.00, 38.00, 26.00, 'Cooling', 'Low', 65.00, 1200.00);
INSERT INTO `temperature_records` VALUES (4, 4, '2023-10-04', 26.00, 36.00, 23.00, 'Dehumidify', 'High', 70.00, 1000.00);
INSERT INTO `temperature_records` VALUES (5, 5, '2023-10-05', 27.00, 37.00, 25.00, 'Fan', 'Medium', 55.00, 950.00);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
INSERT INTO `usage_records` VALUES (1, 1, '2023-10-01', 5.50, 22.00, 'High', 'Cooling', 1100.00, 25.00, 35.00, 60.00);
INSERT INTO `usage_records` VALUES (2, 2, '2023-10-02', 8.00, 24.00, 'Medium', 'Heating', 900.00, 20.00, 10.00, 50.00);
INSERT INTO `usage_records` VALUES (3, 3, '2023-10-03', 6.00, 26.00, 'Low', 'Cooling', 1200.00, 28.00, 38.00, 65.00);
INSERT INTO `usage_records` VALUES (4, 4, '2023-10-04', 7.50, 23.00, 'High', 'Dehumidify', 1000.00, 26.00, 36.00, 70.00);
INSERT INTO `usage_records` VALUES (5, 5, '2023-10-05', 4.00, 25.00, 'Medium', 'Fan', 950.00, 27.00, 37.00, 55.00);

SET FOREIGN_KEY_CHECKS = 1;
