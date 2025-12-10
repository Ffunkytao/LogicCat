/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : computer

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:24:14
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
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battery_usage
-- ----------------------------
INSERT INTO `battery_usage` VALUES (1, 1, '2023-10-01', 4.00, 95.00, 52.00, 45.00, 35.00);
INSERT INTO `battery_usage` VALUES (2, 2, '2023-10-02', 6.00, 90.00, 100.00, 50.00, 40.00);
INSERT INTO `battery_usage` VALUES (3, 3, '2023-10-03', 5.00, 85.00, 57.00, 35.00, 38.00);
INSERT INTO `battery_usage` VALUES (4, 4, '2023-10-04', 7.00, 80.00, 66.00, 42.00, 42.00);
INSERT INTO `battery_usage` VALUES (5, 5, '2023-10-05', 3.00, 75.00, 76.00, 55.00, 45.00);
INSERT INTO `battery_usage` VALUES (6, 8, '2025-11-26', 0.00, 90.00, 60.00, 45.00, 30.00);
INSERT INTO `battery_usage` VALUES (15, 15, '2025-11-26', 3.00, 90.00, 60.00, 50.00, 25.00);
INSERT INTO `battery_usage` VALUES (16, 16, '2024-11-26', 2.00, 200.00, 100.00, 500.00, 35.00);
INSERT INTO `battery_usage` VALUES (17, 17, '2025-11-26', 0.00, 200.00, 100.00, 500.00, 40.00);
INSERT INTO `battery_usage` VALUES (18, 18, '2024-01-01', 10.00, 200.00, 100.00, 500.00, 40.00);
INSERT INTO `battery_usage` VALUES (20, 18, '2025-11-26', 3.00, 90.00, 60.00, 50.00, 30.00);
INSERT INTO `battery_usage` VALUES (24, 15, '2025-11-26', 3.00, 90.00, 60.00, 50.00, 25.00);
INSERT INTO `battery_usage` VALUES (101, 100, '2025-11-26', 3.00, 90.00, 60.00, 50.00, 25.00);
INSERT INTO `battery_usage` VALUES (107, 1, '2025-11-26', 4.00, 100.00, 56.00, 14.00, 35.00);
INSERT INTO `battery_usage` VALUES (108, 1, '2025-11-26', 4.00, 100.00, 56.00, 14.00, 35.00);
INSERT INTO `battery_usage` VALUES (115, 1, '2023-11-26', 1.50, 85.00, 60.00, 30.00, 25.00);
INSERT INTO `battery_usage` VALUES (118, 116, '2025-11-26', 4.00, 100.00, 56.00, 14.00, 35.00);
INSERT INTO `battery_usage` VALUES (120, 333, '2023-12-10', 8.00, 68.57, 70.00, 60.00, 45.00);
INSERT INTO `battery_usage` VALUES (121, 337, '2023-11-15', 10.00, 83.33, 60.00, 50.00, 40.00);
INSERT INTO `battery_usage` VALUES (122, 338, '2023-12-05', 8.00, 85.00, 70.00, 45.00, 42.00);
INSERT INTO `battery_usage` VALUES (123, 339, '2023-11-25', 6.00, 75.00, 50.00, 40.00, 38.00);
INSERT INTO `battery_usage` VALUES (124, 340, '2023-12-20', 24.00, 200.00, 100.00, 200.00, 85.00);
INSERT INTO `battery_usage` VALUES (125, 359, '2024-01-30', 3.50, 65.00, 48.00, 55.00, 45.00);
INSERT INTO `battery_usage` VALUES (126, 365, '2024-01-30', 3.50, 65.00, 48.00, 55.00, 45.00);

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
) ENGINE = InnoDB AUTO_INCREMENT = 367 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of computer_info
-- ----------------------------
INSERT INTO `computer_info` VALUES (1, 'Dell', 'XPS 13', 2022, 'Intel Core i7-1165G7', 4, 8, 2.80, 4.70, 16, 'DDR4', 512, 'SSD', 'Intel Iris Xe', 4, 13.40, '1920x1200', 1.27, 52.00);
INSERT INTO `computer_info` VALUES (2, 'Apple', 'MacBook Pro 16', 2021, 'Apple M1 Pro', 10, 10, 3.20, 3.20, 32, 'LPDDR5', 1024, 'SSD', 'Apple M1 Pro GPU', 16, 16.20, '3456x2234', 2.15, 100.00);
INSERT INTO `computer_info` VALUES (3, 'Lenovo', 'ThinkPad X1 Carbon', 2023, 'Intel Core i5-1240P', 12, 16, 1.70, 4.40, 16, 'DDR5', 512, 'SSD', 'Intel Iris Xe', 4, 14.00, '1920x1200', 1.13, 57.00);
INSERT INTO `computer_info` VALUES (4, 'HP', 'Spectre x360', 2022, 'Intel Core i7-1260P', 12, 16, 2.10, 4.70, 16, 'DDR4', 1024, 'SSD', 'Intel Iris Xe', 4, 13.50, '3000x2000', 1.34, 66.00);
INSERT INTO `computer_info` VALUES (5, 'Asus', 'ROG Zephyrus G14', 2023, 'AMD Ryzen 9 7940HS', 8, 16, 4.00, 5.20, 32, 'DDR5', 1024, 'SSD', 'NVIDIA RTX 4060', 8, 14.00, '2560x1600', 1.72, 76.00);
INSERT INTO `computer_info` VALUES (6, 'Generic', 'Workstation Pro', 2024, 'Intel Core i7-13700K', 8, 16, 3.50, 4.20, 16, 'DDR5', 512, 'SSD', 'NVIDIA RTX 4070', 8, 15.60, '1920x1080', 2.10, 85.00);
INSERT INTO `computer_info` VALUES (7, 'Generic', 'MemoryTest PC', 2024, 'Intel Core i5-12400', 6, 12, 2.50, 4.40, 16, 'DDR4', 512, 'SSD', 'Intel UHD Graphics 730', 2, 14.00, '1920x1080', 1.50, 60.00);
INSERT INTO `computer_info` VALUES (8, 'Generic', 'BatteryTest PC', 2024, 'Intel Core i5-12400', 6, 12, 2.50, 4.40, 16, 'DDR4', 512, 'SSD', 'Intel UHD Graphics 730', 2, 14.00, '1920x1080', 1.50, 60.00);
INSERT INTO `computer_info` VALUES (9, 'SuperCompute', 'MegaCPU Station', 2025, 'Xeon Ultra', 128, 256, 1.00, 10.00, 1024, 'DDR5', 4096, 'SSD', 'NVIDIA A100', 80, 27.00, '7680x4320', 25.00, 500.00);
INSERT INTO `computer_info` VALUES (10, 'SuperCompute', 'MegaCPU Station', 2025, 'Xeon Ultra', 128, 256, 1.00, 10.00, 1024, 'DDR5', 4096, 'SSD', 'NVIDIA A100', 80, 27.00, '7680x4320', 25.00, 500.00);
INSERT INTO `computer_info` VALUES (11, 'NvidiaWorks', 'GPUPro 9000', 2025, 'Ryzen 9 7950X', 16, 32, 3.50, 5.00, 64, 'DDR5', 2048, 'SSD', 'NVIDIA RTX 4090', 8, 24.00, '3840x2160', 3.50, 200.00);
INSERT INTO `computer_info` VALUES (15, 'MSI', 'Stealth 15M', 2023, 'Intel Core i9-12900H', 16, 32, 2.50, 5.00, 32, 'DDR5', 1024, 'SSD', 'NVIDIA RTX 3070', 8, 15.60, '2560x1440', 2.10, 80.00);
INSERT INTO `computer_info` VALUES (16, 'MSI', 'Stealth 15M', 2023, 'Intel Core i9-12900H', 16, 32, 2.50, 5.00, 32, 'DDR5', 1024, 'SSD', 'NVIDIA RTX 3070', 8, 15.60, '2560x1440', 2.10, 80.00);
INSERT INTO `computer_info` VALUES (17, 'Generic', 'UltraPower 17', 2025, 'Intel Xeon Platinum 8380', 128, 256, 3.00, 5.00, 512, 'DDR5', 4096, 'SSD', 'NVIDIA RTX 9000', 128, 17.00, '3840x2160', 15.00, 100.00);
INSERT INTO `computer_info` VALUES (18, 'Supermicro', 'UltraServer X', 2024, 'AMD EPYC 9654', 128, 256, 1.00, 5.00, 512, 'DDR5', 8192, 'SSD', 'NVIDIA H100', 256, 17.00, '3840x2160', 25.00, 100.00);
INSERT INTO `computer_info` VALUES (22, 'Generic', 'MegaComp 16', 2024, 'Intel Xeon X999', 64, 128, 2.50, 5.00, 256, 'DDR5', 2048, 'SSD', 'NVIDIA RTX 8000', 64, 15.60, '1920x1080', 10.00, 100.00);
INSERT INTO `computer_info` VALUES (23, 'TestBrand', 'TestModel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60.00);
INSERT INTO `computer_info` VALUES (24, 'TestBrand', 'TestModel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60.00);
INSERT INTO `computer_info` VALUES (100, 'TestBrand', 'TestModel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60.00);
INSERT INTO `computer_info` VALUES (107, 'ExtremeTech', 'X200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00);
INSERT INTO `computer_info` VALUES (116, 'Generic', 'Model56', 2025, 'Intel i5-12400', 6, 12, 2.50, 4.00, 16, 'DDR4', 512, 'SSD', 'Intel UHD', 4, 15.60, '1920x1080', 1.80, 56.00);
INSERT INTO `computer_info` VALUES (200, 'ExtremeTech', 'X1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200.00);
INSERT INTO `computer_info` VALUES (324, 'TestBrand', 'TestModel', 2025, 'TestCPU', 4, 8, 2.50, 4.00, 16, 'DDR4', 512, 'SSD', 'TestGPU', 4, 15.60, '1920x1080', 1.50, 60.00);
INSERT INTO `computer_info` VALUES (326, 'TestBrand2', 'TestModel2', 2025, 'TestCPU2', 4, 8, 2.50, 4.00, 16, 'DDR4', 512, 'SSD', 'TestGPU2', 4, 15.60, '1920x1080', 1.50, 50.00);
INSERT INTO `computer_info` VALUES (328, 'TestBrand3', 'TestModel3', 2025, 'TestCPU3', 4, 8, 2.60, 4.20, 16, 'DDR4', 512, 'SSD', 'TestGPU3', 4, 15.60, '1920x1080', 1.60, 80.00);
INSERT INTO `computer_info` VALUES (329, 'Custom', 'Test Model', 2023, 'Test CPU', 8, 16, 2.00, 4.50, 16, 'DDR4', 512, 'SSD', 'Test GPU', 4, 15.00, '1920x1080', 2.00, 60.00);
INSERT INTO `computer_info` VALUES (330, 'HighPerformance', 'Server Edition', 2024, 'Server CPU', 128, 256, 1.00, 10.00, 512, 'DDR5', 2048, 'NVMe SSD', 'Server GPU', 32, 17.00, '3840x2160', 3.50, 200.00);
INSERT INTO `computer_info` VALUES (331, 'MemoryTest', 'Bandwidth Pro', 2023, 'Standard CPU', 8, 16, 2.50, 4.00, 32, 'DDR4', 1000, 'SSD', 'Integrated GPU', 2, 15.60, '1920x1080', 2.10, 60.00);
INSERT INTO `computer_info` VALUES (332, 'BatteryTest', 'Power Saver', 2023, 'Efficient CPU', 4, 8, 1.80, 3.50, 16, 'DDR4', 512, 'SSD', 'Integrated GPU', 2, 14.00, '1920x1080', 1.50, 70.00);
INSERT INTO `computer_info` VALUES (333, 'BatteryTest', 'Power Saver', 2023, 'Efficient CPU', 4, 8, 1.80, 3.50, 16, 'DDR4', 512, 'SSD', 'Integrated GPU', 2, 14.00, '1920x1080', 1.50, 70.00);
INSERT INTO `computer_info` VALUES (334, 'ExtremePerformance', 'Super Computer', 2024, 'High-End Server CPU', 64, 128, 0.50, 20.00, 256, 'DDR5', 4096, 'NVMe SSD', 'High-End GPU', 48, 19.00, '5120x2880', 5.00, 500.00);
INSERT INTO `computer_info` VALUES (335, 'ExtremePerformance', 'Super Computer', 2024, 'High-End Server CPU', 64, 128, 0.50, 20.00, 256, 'DDR5', 4096, 'NVMe SSD', 'High-End GPU', 48, 19.00, '5120x2880', 5.00, 500.00);
INSERT INTO `computer_info` VALUES (336, 'ExtremePerformance', 'Super Computer', 2024, 'High-End Server CPU', 64, 128, 0.50, 20.00, 256, 'DDR5', 4096, 'NVMe SSD', 'High-End GPU', 48, 19.00, '5120x2880', 5.00, 500.00);
INSERT INTO `computer_info` VALUES (337, 'BatteryHealth', 'Efficiency Pro', 2023, 'Low Power CPU', 4, 8, 1.50, 3.00, 8, 'DDR4', 256, 'SSD', 'Integrated GPU', 1, 13.30, '1920x1080', 1.20, 60.00);
INSERT INTO `computer_info` VALUES (338, 'BatteryAnalysis', 'Capacity Tester', 2023, 'Standard CPU', 6, 12, 2.00, 4.00, 16, 'DDR4', 512, 'SSD', 'Integrated GPU', 2, 15.60, '1920x1080', 1.80, 70.00);
INSERT INTO `computer_info` VALUES (339, 'BatteryReplacement', 'Health Monitor', 2023, 'Efficient CPU', 4, 8, 1.80, 3.50, 8, 'DDR4', 256, 'SSD', 'Integrated GPU', 1, 14.00, '1920x1080', 1.50, 50.00);
INSERT INTO `computer_info` VALUES (340, 'BatteryAbnormal', 'Faulty Unit', 2023, 'Standard CPU', 8, 16, 2.50, 4.50, 16, 'DDR4', 512, 'SSD', 'Dedicated GPU', 4, 15.60, '1920x1080', 2.00, 100.00);
INSERT INTO `computer_info` VALUES (341, 'PerformanceTest', 'Power Efficiency Pro', 2023, 'High Performance CPU', 12, 24, 3.00, 5.00, 32, 'DDR5', 1000, 'NVMe SSD', 'High End GPU', 8, 16.00, '2560x1600', 2.30, 90.00);
INSERT INTO `computer_info` VALUES (342, 'ComponentAnalysis', 'Balance Pro', 2023, 'Multi Core CPU', 8, 16, 2.80, 4.70, 16, 'DDR4', 512, 'SSD', 'Mid Range GPU', 6, 15.60, '1920x1080', 1.90, 70.00);
INSERT INTO `computer_info` VALUES (343, 'CoolingTest', 'Thermal Pro', 2023, 'High Power CPU', 16, 32, 3.50, 5.50, 64, 'DDR5', 2000, 'NVMe SSD', 'High End GPU', 16, 17.30, '3840x2160', 3.20, 99.00);
INSERT INTO `computer_info` VALUES (344, 'ExtremePerformance', 'Super Computer Pro', 2024, 'Ultra High End CPU', 128, 256, 4.00, 6.00, 512, 'DDR5', 8192, 'NVMe SSD', 'Ultra High End GPU', 64, 27.00, '7680x4320', 15.00, 100.00);
INSERT INTO `computer_info` VALUES (345, 'ExtremePerformance', 'Super Computer Pro', 2024, 'Ultra High End CPU', 128, 256, 4.00, 6.00, 512, 'DDR5', 8192, 'NVMe SSD', 'Ultra High End GPU', 64, 27.00, '7680x4320', 15.00, 999.99);
INSERT INTO `computer_info` VALUES (346, 'HighPower', 'PowerMax 1000', 2024, 'Extreme CPU', 32, 64, 3.80, 5.80, 128, 'DDR5', 4096, 'NVMe SSD', 'Extreme GPU', 32, 18.00, '3840x2160', 4.50, 250.00);
INSERT INTO `computer_info` VALUES (347, 'PowerGaming', 'GameMaster Pro', 2024, 'Gaming CPU', 16, 32, 3.50, 5.50, 64, 'DDR5', 2048, 'NVMe SSD', 'Gaming GPU', 16, 17.30, '2560x1440', 3.80, 180.00);
INSERT INTO `computer_info` VALUES (348, 'WorkstationPro', 'WorkStation 5000', 2024, 'Workstation CPU', 24, 48, 3.20, 5.00, 96, 'DDR5', 3072, 'NVMe SSD', 'Workstation GPU', 24, 21.50, '3840x2160', 6.20, 300.00);
INSERT INTO `computer_info` VALUES (349, 'ServerMax', 'Server Pro 9000', 2024, 'Server CPU', 48, 96, 3.00, 4.80, 256, 'DDR5', 8192, 'NVMe SSD', 'Server GPU', 48, 24.00, '1920x1080', 12.50, 500.00);
INSERT INTO `computer_info` VALUES (350, 'UltraGaming', 'GameUltra X', 2024, 'Extreme Gaming CPU', 12, 24, 4.00, 6.00, 32, 'DDR5', 1024, 'NVMe SSD', 'Extreme Gaming GPU', 12, 15.60, '3840x2160', 2.80, 150.00);
INSERT INTO `computer_info` VALUES (351, 'EnergySaver', 'Eco Pro 100', 2023, 'Low Power CPU', 4, 8, 1.50, 3.00, 8, 'DDR4', 256, 'SSD', 'Integrated GPU', 2, 13.30, '1920x1080', 1.10, 45.00);
INSERT INTO `computer_info` VALUES (352, 'OfficePro', 'Business Plus', 2023, 'Office CPU', 6, 12, 2.00, 4.00, 16, 'DDR4', 512, 'SSD', 'Integrated GPU', 2, 15.60, '1920x1080', 1.80, 60.00);
INSERT INTO `computer_info` VALUES (353, 'GamingElite', 'GameMaster X', 2023, 'Gaming CPU', 8, 16, 3.50, 5.00, 32, 'DDR5', 1024, 'NVMe SSD', 'Gaming GPU', 8, 17.30, '2560x1440', 2.50, 80.00);
INSERT INTO `computer_info` VALUES (354, 'WorkstationPro', 'Design Master', 2023, 'Workstation CPU', 16, 32, 3.20, 4.80, 64, 'DDR5', 2048, 'NVMe SSD', 'Workstation GPU', 16, 21.50, '3840x2160', 4.20, 120.00);
INSERT INTO `computer_info` VALUES (355, 'ServerMax', 'Data Center Pro', 2023, 'Server CPU', 32, 64, 2.80, 4.20, 128, 'DDR5', 4096, 'NVMe SSD', 'Server GPU', 32, 24.00, '1920x1080', 8.50, 200.00);
INSERT INTO `computer_info` VALUES (356, 'SuperComputer', 'Extreme Performance', 2024, 'Ultra CPU', 64, 128, 4.50, 6.00, 512, 'DDR5', 8192, 'NVMe SSD', 'Ultra GPU', 128, 27.00, '7680x4320', 12.00, 800.00);
INSERT INTO `computer_info` VALUES (357, 'HeatGenerator', 'Thermal Extreme', 2024, 'High Heat CPU', 32, 64, 4.00, 5.80, 256, 'DDR5', 4096, 'NVMe SSD', 'High Heat GPU', 64, 24.00, '3840x2160', 8.50, 400.00);
INSERT INTO `computer_info` VALUES (358, 'PowerHungry', 'Energy Max Pro', 2024, 'High Power CPU', 24, 48, 3.80, 5.50, 128, 'DDR5', 2048, 'NVMe SSD', 'High Power GPU', 32, 21.50, '3840x2160', 5.80, 350.00);
INSERT INTO `computer_info` VALUES (359, 'OldTech', 'Vintage Pro 2017', 2017, 'Legacy CPU', 2, 4, 2.20, 3.20, 4, 'DDR3', 128, 'HDD', 'Integrated GPU', 1, 15.60, '1366x768', 2.50, 48.00);
INSERT INTO `computer_info` VALUES (360, 'SuperComputer', 'Theoretical Max', 2024, 'Ultra High CPU', 128, 256, 99.99, 99.99, 999, 'DDR5', 9999, 'NVMe SSD', 'Ultra High GPU', 255, 32.00, '7680x4320', 99.99, 999.99);
INSERT INTO `computer_info` VALUES (361, 'SuperComputer', 'Theoretical Max', 2024, 'Ultra High CPU', 128, 256, 50.00, 100.00, 512, 'DDR5', 8192, 'NVMe SSD', 'Ultra High GPU', 256, 32.00, '7680x4320', 25.00, 999.99);
INSERT INTO `computer_info` VALUES (362, 'SuperComputer', 'Theoretical Max', 2024, 'Ultra High CPU', 128, 256, 300.00, 600.00, 1024, 'DDR5', 16384, 'NVMe SSD', 'Ultra High GPU', 512, 32.00, '7680x4320', 25.00, 999.99);
INSERT INTO `computer_info` VALUES (363, 'FastDischarge', 'Power Drain Pro', 2024, 'High Drain CPU', 16, 32, 3.80, 5.20, 64, 'DDR5', 1024, 'NVMe SSD', 'High Drain GPU', 16, 17.30, '2560x1440', 2.80, 80.00);
INSERT INTO `computer_info` VALUES (364, 'LongRunning', 'Workhorse Pro', 2023, 'Server Grade CPU', 24, 48, 2.80, 4.20, 128, 'DDR4', 2048, 'SSD', 'Workstation GPU', 8, 21.50, '1920x1080', 5.20, 150.00);
INSERT INTO `computer_info` VALUES (365, 'OldTech', 'Vintage Pro 2017', 2017, 'Legacy CPU', 2, 4, 2.20, 3.20, 4, 'DDR3', 128, 'HDD', 'Integrated GPU', 1, 15.60, '1366x768', 2.50, 48.00);
INSERT INTO `computer_info` VALUES (366, 'UltraBattery', 'LongLife Pro', 2024, 'Efficient CPU', 8, 16, 2.00, 3.50, 16, 'DDR4', 512, 'SSD', 'Integrated GPU', 2, 14.00, '1920x1080', 1.80, 999.99);

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
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of performance_tests
-- ----------------------------
INSERT INTO `performance_tests` VALUES (1, 1, '2023-10-01', 'Cinebench R23', 12345.00, 6789.00, 9876.00, 5432.00, 8500.00, 75.50, 45.00);
INSERT INTO `performance_tests` VALUES (2, 2, '2023-10-02', 'Geekbench 5', 15000.00, 12000.00, 11000.00, 10000.00, 12000.00, 68.00, 50.00);
INSERT INTO `performance_tests` VALUES (3, 3, '2023-10-03', '3DMark', 8000.00, 9000.00, 7000.00, 6000.00, 7500.00, 72.30, 40.50);
INSERT INTO `performance_tests` VALUES (4, 4, '2023-10-04', 'PCMark 10', 9500.00, 8500.00, 9000.00, 8000.00, 8800.00, 70.00, 42.00);
INSERT INTO `performance_tests` VALUES (5, 5, '2023-10-05', 'Cinebench R23', 14000.00, 11000.00, 10000.00, 9500.00, 11000.00, 78.00, 55.00);
INSERT INTO `performance_tests` VALUES (101, 1, '2025-11-26', 'Extreme Stress Test', 100000.00, 80000.00, 60000.00, 40000.00, 90000.00, 500.00, 200.00);
INSERT INTO `performance_tests` VALUES (102, 2, '2025-11-26', 'Extreme Stress Test', 100000.00, 80000.00, 60000.00, 40000.00, 90000.00, 500.00, 200.00);
INSERT INTO `performance_tests` VALUES (103, 2, '2025-11-26', 'Extreme Stress Test', 100000.00, 80000.00, 60000.00, 40000.00, 90000.00, 500.00, 200.00);
INSERT INTO `performance_tests` VALUES (105, 2, '2025-11-26', 'High Load Test', 100000.00, 80000.00, 60000.00, 40000.00, 90000.00, 500.00, 500.00);
INSERT INTO `performance_tests` VALUES (106, 1, '2025-11-26', 'Long Load Test', 12000.00, 11000.00, 10000.00, 9000.00, 11500.00, 80.00, 900.00);
INSERT INTO `performance_tests` VALUES (111, 1, '2023-11-26', 'Stress Test', 12000.00, 11000.00, 10000.00, 9500.00, 11500.00, 75.00, 300.00);
INSERT INTO `performance_tests` VALUES (112, 2, '2023-11-26', 'Stress Test', 12500.00, 11500.00, 10500.00, 9800.00, 11800.00, 78.00, 400.00);
INSERT INTO `performance_tests` VALUES (113, 1, '2025-11-26', 'Extreme Load Test', 12000.00, 11000.00, 10000.00, 9000.00, 11500.00, 80.00, 55.00);
INSERT INTO `performance_tests` VALUES (115, 1, '2023-11-26', 'Custom Test', 1000.00, 700.00, 500.00, 400.00, 800.00, 80.00, 150.00);
INSERT INTO `performance_tests` VALUES (116, 1, '2023-11-26', 'Extreme Test', 100000.00, 80000.00, 60000.00, 40000.00, 90000.00, 500.00, 200.00);
INSERT INTO `performance_tests` VALUES (201, 1, NULL, NULL, 1200.00, 800.00, NULL, NULL, 950.00, 75.00, 150.00);
INSERT INTO `performance_tests` VALUES (202, 2, NULL, NULL, 1500.00, 1000.00, 800.00, 600.00, 1200.00, NULL, NULL);
INSERT INTO `performance_tests` VALUES (203, 341, '2023-11-30', 'Comprehensive Test', 1200.00, 1500.00, 1800.00, 2000.00, 1625.00, 75.00, 200.00);
INSERT INTO `performance_tests` VALUES (204, 342, '2023-12-15', 'Component Test', 1000.00, 1200.00, 800.00, 600.00, 3600.00, 65.00, 120.00);
INSERT INTO `performance_tests` VALUES (205, 343, '2023-12-18', 'Thermal Test', 1500.00, 1800.00, 1200.00, 900.00, 3000.00, 80.00, 180.00);
INSERT INTO `performance_tests` VALUES (206, 345, '2024-01-20', 'Extreme Test', 10000.00, 15000.00, 8000.00, 7000.00, 25000.00, 200.00, 999.99);

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
) ENGINE = InnoDB AUTO_INCREMENT = 361 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
INSERT INTO `usage_records` VALUES (1, 1, '2023-10-01', 5.50, 'Gaming', 85.00, 90.00, 70.00, 50.00, 60.00, 75.00);
INSERT INTO `usage_records` VALUES (2, 2, '2023-10-02', 8.00, 'Video Editing', 95.00, 80.00, 85.00, 60.00, 70.00, 80.00);
INSERT INTO `usage_records` VALUES (3, 3, '2023-10-03', 6.00, 'Programming', 50.00, 20.00, 40.00, 30.00, 35.00, 65.00);
INSERT INTO `usage_records` VALUES (4, 4, '2023-10-04', 7.50, 'Graphic Design', 75.00, 70.00, 60.00, 55.00, 50.00, 72.00);
INSERT INTO `usage_records` VALUES (5, 5, '2023-10-05', 4.00, 'Gaming', 90.00, 95.00, 80.00, 70.00, 65.00, 78.00);
INSERT INTO `usage_records` VALUES (6, 6, '2025-11-26', 4.00, 'Programming', 80.00, 50.00, 60.00, 40.00, 65.00, 70.00);
INSERT INTO `usage_records` VALUES (7, 7, '2025-11-26', 3.50, 'Programming', 50.00, 40.00, 75.00, 35.00, 55.00, 65.00);
INSERT INTO `usage_records` VALUES (10, 10, '2025-11-26', 2.00, 'High Performance Compute', 200.00, 50.00, 60.00, 40.00, 999.99, 70.00);
INSERT INTO `usage_records` VALUES (11, 11, '2025-11-26', 3.00, 'Rendering Task', 75.00, 90.00, 50.00, 40.00, 450.00, 65.00);
INSERT INTO `usage_records` VALUES (15, 15, '2023-11-02', 7.00, 'Gaming', 85.00, 90.00, 75.00, 60.00, 120.00, 78.00);
INSERT INTO `usage_records` VALUES (16, 16, '2023-11-02', 7.00, 'Gaming', 85.00, 90.00, 75.00, 60.00, 120.00, 78.00);
INSERT INTO `usage_records` VALUES (18, 17, '2025-11-26', 4.00, 'Standard Use', 50.00, 40.00, 60.00, 50.00, 75.00, 25.00);
INSERT INTO `usage_records` VALUES (19, 18, '2025-11-26', 5.00, 'Mixed Workload', 80.00, 60.00, 50.00, 30.00, 65.00, 70.00);
INSERT INTO `usage_records` VALUES (23, 15, '2025-11-26', 3.00, 'Testing', 80.00, 60.00, 50.00, 30.00, 50.00, 25.00);
INSERT INTO `usage_records` VALUES (24, 15, '2025-11-26', 3.00, 'Testing', 80.00, 60.00, 50.00, 30.00, 50.00, 25.00);
INSERT INTO `usage_records` VALUES (102, 100, '2025-11-26', 3.00, 'Testing', 80.00, 60.00, 50.00, 30.00, 50.00, 25.00);
INSERT INTO `usage_records` VALUES (106, 1, '2025-11-26', 2.00, 'Simulation', 80.00, 50.00, 60.00, 40.00, 95.00, 45.00);
INSERT INTO `usage_records` VALUES (108, 107, '2025-11-26', 24.00, 'StressTest', 100.00, 80.00, 90.00, 80.00, 100.00, 100.00);
INSERT INTO `usage_records` VALUES (115, 1, '2023-11-26', 1.50, 'General Use', 50.00, 40.00, 30.00, 20.00, 30.00, 25.00);
INSERT INTO `usage_records` VALUES (200, 200, NULL, 24.00, NULL, NULL, NULL, NULL, NULL, 100.00, NULL);
INSERT INTO `usage_records` VALUES (325, 324, '2025-11-26', 1.50, 'TestUsage', 50.00, 50.00, 50.00, 50.00, 30.00, 35.00);
INSERT INTO `usage_records` VALUES (327, 326, '2025-11-26', 2.00, 'TestUsage2', 50.00, 50.00, 50.00, 50.00, 20.00, 35.00);
INSERT INTO `usage_records` VALUES (329, 328, '2025-11-26', 4.00, 'TestUsage3', 60.00, 55.00, 50.00, 45.00, 18.00, 36.00);
INSERT INTO `usage_records` VALUES (330, 329, '2023-10-06', 5.00, 'Testing', 90.00, 80.00, 70.00, 50.00, 120.00, 75.00);
INSERT INTO `usage_records` VALUES (331, 330, '2024-01-15', 24.00, 'Server Operations', 200.00, 60.00, 85.00, 40.00, 450.00, 65.00);
INSERT INTO `usage_records` VALUES (332, 331, '2023-11-20', 6.50, 'Memory Intensive', 65.00, 45.00, 80.00, 35.00, 85.00, 68.00);
INSERT INTO `usage_records` VALUES (333, 332, '2023-12-10', 8.00, 'Office Work', 40.00, 20.00, 50.00, 25.00, 60.00, 45.00);
INSERT INTO `usage_records` VALUES (334, 333, '2023-12-10', 8.00, 'Office Work', 40.00, 20.00, 50.00, 25.00, 60.00, 45.00);
INSERT INTO `usage_records` VALUES (335, 335, '2024-02-01', 2.00, 'Heavy Computing', 500.00, 95.00, 90.00, 60.00, 999.99, 95.00);
INSERT INTO `usage_records` VALUES (336, 336, '2024-02-01', 2.00, 'Heavy Computing', 500.00, 95.00, 90.00, 60.00, 999.99, 95.00);
INSERT INTO `usage_records` VALUES (337, 346, '2024-01-25', 3.00, 'Full Load Test', 100.00, 100.00, 100.00, 100.00, 350.00, 85.00);
INSERT INTO `usage_records` VALUES (338, 347, '2024-01-25', 4.00, 'Gaming', 100.00, 100.00, 100.00, 100.00, 320.00, 82.00);
INSERT INTO `usage_records` VALUES (339, 348, '2024-01-25', 6.00, 'Rendering', 100.00, 100.00, 100.00, 100.00, 380.00, 78.00);
INSERT INTO `usage_records` VALUES (340, 349, '2024-01-25', 24.00, 'Server Operations', 100.00, 100.00, 100.00, 100.00, 450.00, 72.00);
INSERT INTO `usage_records` VALUES (341, 350, '2024-01-25', 5.00, 'Extreme Gaming', 100.00, 100.00, 100.00, 100.00, 400.00, 88.00);
INSERT INTO `usage_records` VALUES (342, 351, '2024-01-20', 8.00, 'Office Work', 30.00, 15.00, 40.00, 20.00, 25.00, 42.00);
INSERT INTO `usage_records` VALUES (343, 351, '2024-01-21', 7.50, 'Web Browsing', 25.00, 10.00, 35.00, 15.00, 22.00, 40.00);
INSERT INTO `usage_records` VALUES (344, 352, '2024-01-20', 9.00, 'Business Apps', 45.00, 20.00, 50.00, 30.00, 40.00, 48.00);
INSERT INTO `usage_records` VALUES (345, 352, '2024-01-21', 8.50, 'Video Calls', 50.00, 25.00, 55.00, 25.00, 45.00, 50.00);
INSERT INTO `usage_records` VALUES (346, 353, '2024-01-20', 6.00, 'Gaming', 85.00, 95.00, 70.00, 40.00, 180.00, 75.00);
INSERT INTO `usage_records` VALUES (347, 353, '2024-01-21', 5.00, 'Streaming', 70.00, 80.00, 60.00, 35.00, 150.00, 68.00);
INSERT INTO `usage_records` VALUES (348, 354, '2024-01-20', 10.00, '3D Rendering', 95.00, 90.00, 80.00, 50.00, 280.00, 82.00);
INSERT INTO `usage_records` VALUES (349, 354, '2024-01-21', 9.00, 'Video Editing', 90.00, 85.00, 75.00, 45.00, 250.00, 78.00);
INSERT INTO `usage_records` VALUES (350, 355, '2024-01-20', 24.00, 'Server Operations', 65.00, 50.00, 70.00, 60.00, 320.00, 65.00);
INSERT INTO `usage_records` VALUES (351, 355, '2024-01-21', 24.00, 'Data Processing', 70.00, 55.00, 75.00, 65.00, 340.00, 68.00);
INSERT INTO `usage_records` VALUES (352, 357, '2024-01-30', 12.00, 'Full Load Stress Test', 100.00, 100.00, 100.00, 100.00, 450.00, 95.00);
INSERT INTO `usage_records` VALUES (353, 358, '2024-01-30', 16.00, 'High Performance Computing', 95.00, 90.00, 85.00, 70.00, 380.00, 88.00);
INSERT INTO `usage_records` VALUES (354, 358, '2024-01-29', 14.00, 'Data Analysis', 85.00, 75.00, 80.00, 65.00, 320.00, 82.00);
INSERT INTO `usage_records` VALUES (355, 358, '2024-01-28', 18.00, 'Scientific Computing', 98.00, 92.00, 88.00, 75.00, 420.00, 92.00);
INSERT INTO `usage_records` VALUES (356, 363, '2024-02-01', 2.50, 'Full Load Gaming', 100.00, 100.00, 100.00, 100.00, 180.00, 85.00);
INSERT INTO `usage_records` VALUES (357, 364, '2024-01-15', 24.00, 'Server Operations', 65.00, 40.00, 70.00, 55.00, 120.00, 58.00);
INSERT INTO `usage_records` VALUES (358, 364, '2024-01-16', 24.00, 'Data Processing', 70.00, 45.00, 75.00, 60.00, 130.00, 62.00);
INSERT INTO `usage_records` VALUES (359, 364, '2024-01-17', 24.00, 'Web Services', 60.00, 35.00, 65.00, 50.00, 110.00, 55.00);
INSERT INTO `usage_records` VALUES (360, 366, '2024-02-01', 5.00, 'Full Load Test', 100.00, 100.00, 100.00, 100.00, 0.50, 45.00);

SET FOREIGN_KEY_CHECKS = 1;
