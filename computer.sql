/*
 Navicat Premium Data Transfer

 Source Server         : RemoteComplexdatabase
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : computer

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 24/05/2025 13:24:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audio_data
-- ----------------------------
DROP TABLE IF EXISTS `audio_data`;
CREATE TABLE `audio_data`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `Bluetooth_Version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Frequency_Response_Hz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Total_Harmonic_Distortion_Percent` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audio_data
-- ----------------------------

-- ----------------------------
-- Table structure for battery_usage
-- ----------------------------
DROP TABLE IF EXISTS `battery_usage`;
CREATE TABLE `battery_usage`  (
  `battery_usage_id` int(0) NOT NULL AUTO_INCREMENT,
  `computer_id` int(0) NULL DEFAULT NULL,
  `usage_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `usage_duration_hours` decimal(5, 2) NULL DEFAULT NULL,
  `battery_health_percent` decimal(5, 2) NULL DEFAULT NULL,
  `battery_capacity_wh` decimal(5, 2) NULL DEFAULT NULL,
  `power_consumption_watts` decimal(5, 2) NULL DEFAULT NULL,
  `temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`battery_usage_id`) USING BTREE,
  INDEX `computer_id`(`computer_id`) USING BTREE,
  CONSTRAINT `battery_usage_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `computer_info` (`computer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battery_usage
-- ----------------------------
INSERT INTO `battery_usage` VALUES (1, 1, '2023-10-01', 4.00, 95.00, 52.00, 45.00, 35.00);
INSERT INTO `battery_usage` VALUES (2, 2, '2023-10-02', 6.00, 90.00, 100.00, 50.00, 40.00);
INSERT INTO `battery_usage` VALUES (3, 3, '2023-10-03', 5.00, 85.00, 57.00, 35.00, 38.00);
INSERT INTO `battery_usage` VALUES (4, 4, '2023-10-04', 7.00, 80.00, 66.00, 42.00, 42.00);
INSERT INTO `battery_usage` VALUES (5, 5, '2023-10-05', 3.00, 75.00, 76.00, 55.00, 45.00);

-- ----------------------------
-- Table structure for computer_info
-- ----------------------------
DROP TABLE IF EXISTS `computer_info`;
CREATE TABLE `computer_info`  (
  `computer_id` int(0) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `production_year` int(0) NULL DEFAULT NULL,
  `cpu_model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cpu_cores` int(0) NULL DEFAULT NULL,
  `cpu_threads` int(0) NULL DEFAULT NULL,
  `cpu_base_frequency_ghz` decimal(5, 2) NULL DEFAULT NULL,
  `cpu_max_frequency_ghz` decimal(5, 2) NULL DEFAULT NULL,
  `ram_size_gb` int(0) NULL DEFAULT NULL,
  `ram_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `storage_size_gb` int(0) NULL DEFAULT NULL,
  `storage_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gpu_model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gpu_vram_gb` int(0) NULL DEFAULT NULL,
  `screen_size_inches` decimal(5, 2) NULL DEFAULT NULL,
  `screen_resolution` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `weight_kg` decimal(5, 2) NULL DEFAULT NULL,
  `battery_capacity_wh` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`computer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of computer_info
-- ----------------------------
INSERT INTO `computer_info` VALUES (1, 'Dell', 'XPS 13', 2022, 'Intel Core i7-1165G7', 4, 8, 2.80, 4.70, 16, 'DDR4', 512, 'SSD', 'Intel Iris Xe', 4, 13.40, '1920x1200', 1.27, 52.00);
INSERT INTO `computer_info` VALUES (2, 'Apple', 'MacBook Pro 16', 2021, 'Apple M1 Pro', 10, 10, 3.20, 3.20, 32, 'LPDDR5', 1024, 'SSD', 'Apple M1 Pro GPU', 16, 16.20, '3456x2234', 2.15, 100.00);
INSERT INTO `computer_info` VALUES (3, 'Lenovo', 'ThinkPad X1 Carbon', 2023, 'Intel Core i5-1240P', 12, 16, 1.70, 4.40, 16, 'DDR5', 512, 'SSD', 'Intel Iris Xe', 4, 14.00, '1920x1200', 1.13, 57.00);
INSERT INTO `computer_info` VALUES (4, 'HP', 'Spectre x360', 2022, 'Intel Core i7-1260P', 12, 16, 2.10, 4.70, 16, 'DDR4', 1024, 'SSD', 'Intel Iris Xe', 4, 13.50, '3000x2000', 1.34, 66.00);
INSERT INTO `computer_info` VALUES (5, 'Asus', 'ROG Zephyrus G14', 2023, 'AMD Ryzen 9 7940HS', 8, 16, 4.00, 5.20, 32, 'DDR5', 1024, 'SSD', 'NVIDIA RTX 4060', 8, 14.00, '2560x1600', 1.72, 76.00);

-- ----------------------------
-- Table structure for performance_tests
-- ----------------------------
DROP TABLE IF EXISTS `performance_tests`;
CREATE TABLE `performance_tests`  (
  `test_id` int(0) NOT NULL AUTO_INCREMENT,
  `computer_id` int(0) NULL DEFAULT NULL,
  `test_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `test_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cpu_score` decimal(10, 2) NULL DEFAULT NULL,
  `gpu_score` decimal(10, 2) NULL DEFAULT NULL,
  `ram_score` decimal(10, 2) NULL DEFAULT NULL,
  `storage_score` decimal(10, 2) NULL DEFAULT NULL,
  `overall_score` decimal(10, 2) NULL DEFAULT NULL,
  `temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  `power_consumption_watts` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`test_id`) USING BTREE,
  INDEX `computer_id`(`computer_id`) USING BTREE,
  CONSTRAINT `performance_tests_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `computer_info` (`computer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of performance_tests
-- ----------------------------
INSERT INTO `performance_tests` VALUES (1, 1, '2023-10-01', 'Cinebench R23', 12345.00, 6789.00, 9876.00, 5432.00, 8500.00, 75.50, 45.00);
INSERT INTO `performance_tests` VALUES (2, 2, '2023-10-02', 'Geekbench 5', 15000.00, 12000.00, 11000.00, 10000.00, 12000.00, 68.00, 50.00);
INSERT INTO `performance_tests` VALUES (3, 3, '2023-10-03', '3DMark', 8000.00, 9000.00, 7000.00, 6000.00, 7500.00, 72.30, 40.50);
INSERT INTO `performance_tests` VALUES (4, 4, '2023-10-04', 'PCMark 10', 9500.00, 8500.00, 9000.00, 8000.00, 8800.00, 70.00, 42.00);
INSERT INTO `performance_tests` VALUES (5, 5, '2023-10-05', 'Cinebench R23', 14000.00, 11000.00, 10000.00, 9500.00, 11000.00, 78.00, 55.00);

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records`  (
  `usage_id` int(0) NOT NULL AUTO_INCREMENT,
  `computer_id` int(0) NULL DEFAULT NULL,
  `usage_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `usage_duration_hours` decimal(5, 2) NULL DEFAULT NULL,
  `usage_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cpu_usage_percent` decimal(5, 2) NULL DEFAULT NULL,
  `gpu_usage_percent` decimal(5, 2) NULL DEFAULT NULL,
  `ram_usage_percent` decimal(5, 2) NULL DEFAULT NULL,
  `storage_usage_percent` decimal(5, 2) NULL DEFAULT NULL,
  `power_consumption_watts` decimal(5, 2) NULL DEFAULT NULL,
  `temperature_celsius` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`usage_id`) USING BTREE,
  INDEX `computer_id`(`computer_id`) USING BTREE,
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `computer_info` (`computer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
INSERT INTO `usage_records` VALUES (1, 1, '2023-10-01', 5.50, 'Gaming', 85.00, 90.00, 70.00, 50.00, 60.00, 75.00);
INSERT INTO `usage_records` VALUES (2, 2, '2023-10-02', 8.00, 'Video Editing', 95.00, 80.00, 85.00, 60.00, 70.00, 80.00);
INSERT INTO `usage_records` VALUES (3, 3, '2023-10-03', 6.00, 'Programming', 50.00, 20.00, 40.00, 30.00, 35.00, 65.00);
INSERT INTO `usage_records` VALUES (4, 4, '2023-10-04', 7.50, 'Graphic Design', 75.00, 70.00, 60.00, 55.00, 50.00, 72.00);
INSERT INTO `usage_records` VALUES (5, 5, '2023-10-05', 4.00, 'Gaming', 90.00, 95.00, 80.00, 70.00, 65.00, 78.00);

SET FOREIGN_KEY_CHECKS = 1;
