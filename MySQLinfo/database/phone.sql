/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : phone

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:28:48
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
-- Table structure for hardware_specs
-- ----------------------------
DROP TABLE IF EXISTS `hardware_specs`;
CREATE TABLE `hardware_specs` (
  `spec_id` int NOT NULL AUTO_INCREMENT,
  `phone_id` int DEFAULT NULL,
  `cpu_clock_speed_ghz` float DEFAULT NULL,
  `gpu_cores` int DEFAULT NULL,
  `ram_gb` int DEFAULT NULL,
  `storage_gb` int DEFAULT NULL,
  `storage_read_speed_mbps` int DEFAULT NULL,
  `storage_write_speed_mbps` int DEFAULT NULL,
  `camera_main_mp` float DEFAULT NULL,
  `camera_front_mp` float DEFAULT NULL,
  `battery_life_hours` float DEFAULT NULL,
  `charging_speed_watts` float DEFAULT NULL,
  `wireless_charging_speed_watts` float DEFAULT NULL,
  PRIMARY KEY (`spec_id`),
  KEY `phone_id` (`phone_id`),
  CONSTRAINT `hardware_specs_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of hardware_specs
-- ----------------------------
BEGIN;
INSERT INTO `hardware_specs` VALUES (1, 1, 3.2, 6, 8, 128, 2100, 1200, 12, 8, 24, 25, 15);
INSERT INTO `hardware_specs` VALUES (2, 2, 3.8, 8, 12, 256, 3500, 2500, 50, 12, 30, 65, 20);
INSERT INTO `hardware_specs` VALUES (3, 3, 2.8, 4, 6, 64, 1800, 900, 16, 5, 20, 18, 10);
INSERT INTO `hardware_specs` VALUES (4, 4, 4, 12, 16, 512, 5000, 4000, 108, 16, 36, 120, 30);
INSERT INTO `hardware_specs` VALUES (5, 5, 3, 5, 8, 256, 2500, 1500, 12, 10, 22, 30, 18);
INSERT INTO `hardware_specs` VALUES (6, 22, 3.5, 8, 16, 1024, 6000, 5000, 200, 40, 1110, 100, 50);
INSERT INTO `hardware_specs` VALUES (7, 23, 4.2, 12, 24, 2048, 7000, 6000, 250, 60, 1500, 240, 80);
INSERT INTO `hardware_specs` VALUES (8, 36, 3, 6, 8, 128, 2000, 1000, 12, 8, 30, 25, 15);
INSERT INTO `hardware_specs` VALUES (9, 39, 2.5, 6, 8, 128, 2000, 1000, 12, 8, 18, 18, 10);
INSERT INTO `hardware_specs` VALUES (10, 40, 3.2, 8, 12, 256, 500, 300, 108, 16, 20, 65, 30);
INSERT INTO `hardware_specs` VALUES (11, 42, 5, 12, 1024, 2048, 100000, 50000, 200, 40, 20, 100, 50);
INSERT INTO `hardware_specs` VALUES (12, 43, 4, 8, 12, 1024, 5000, 4000, 50, 20, 50, 1000, 500);
INSERT INTO `hardware_specs` VALUES (15, 47, 4.5, 12, 24, 4096, 8000, 6000, 150, 60, 900000, 100, 50);
INSERT INTO `hardware_specs` VALUES (16, 48, 5, 12, 32, 2048, 10000, 8000, 200, 40, 1500, 1200, 600);
INSERT INTO `hardware_specs` VALUES (17, 49, 3.8, 10, 16, 512, 4500, 3000, 64, 20, 20, 65, 30);
INSERT INTO `hardware_specs` VALUES (18, 50, 3.5, 8, 12, 256, 3000, 1500, 50, 16, 18, 65, 30);
COMMIT;

-- ----------------------------
-- Table structure for network_performance
-- ----------------------------
DROP TABLE IF EXISTS `network_performance`;
CREATE TABLE `network_performance` (
  `network_id` int NOT NULL AUTO_INCREMENT,
  `phone_id` int DEFAULT NULL,
  `download_speed_mbps` float DEFAULT NULL,
  `upload_speed_mbps` float DEFAULT NULL,
  `latency_ms` float DEFAULT NULL,
  `signal_strength_dbm` float DEFAULT NULL,
  `wifi_speed_mbps` float DEFAULT NULL,
  `bluetooth_range_meters` float DEFAULT NULL,
  PRIMARY KEY (`network_id`),
  KEY `phone_id` (`phone_id`),
  CONSTRAINT `network_performance_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of network_performance
-- ----------------------------
BEGIN;
INSERT INTO `network_performance` VALUES (1, 1, 120, 50, 30, -70, 600, 10);
INSERT INTO `network_performance` VALUES (2, 2, 150, 60, 25, -65, 800, 12);
INSERT INTO `network_performance` VALUES (3, 3, 100, 40, 35, -75, 500, 8);
INSERT INTO `network_performance` VALUES (4, 4, 200, 80, 20, -60, 1000, 15);
INSERT INTO `network_performance` VALUES (5, 5, 110, 45, 32, -72, 550, 9);
INSERT INTO `network_performance` VALUES (6, 30, 2500000, 1000000, 0.1, -50, 2000000, 100);
INSERT INTO `network_performance` VALUES (7, 33, 100000, 50000, 0.05, -30, 1000000, 200);
INSERT INTO `network_performance` VALUES (8, 50, 1000, 500, 15, -60, 900, 10);
COMMIT;

-- ----------------------------
-- Table structure for performance_metrics
-- ----------------------------
DROP TABLE IF EXISTS `performance_metrics`;
CREATE TABLE `performance_metrics` (
  `metric_id` int NOT NULL AUTO_INCREMENT,
  `phone_id` int DEFAULT NULL,
  `geekbench_single_core_score` int DEFAULT NULL,
  `geekbench_multi_core_score` int DEFAULT NULL,
  `antutu_score` int DEFAULT NULL,
  `gfxbench_fps` float DEFAULT NULL,
  `pcmark_score` int DEFAULT NULL,
  `battery_life_video_playback_hours` float DEFAULT NULL,
  `battery_life_web_browsing_hours` float DEFAULT NULL,
  `thermal_throttling_percentage` float DEFAULT NULL,
  PRIMARY KEY (`metric_id`),
  KEY `phone_id` (`phone_id`),
  CONSTRAINT `performance_metrics_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of performance_metrics
-- ----------------------------
BEGIN;
INSERT INTO `performance_metrics` VALUES (1, 1, 1200, 3500, 450000, 60, 8500, 15, 12, 5);
INSERT INTO `performance_metrics` VALUES (2, 2, 1600, 4800, 750000, 90, 12000, 20, 18, 3);
INSERT INTO `performance_metrics` VALUES (3, 3, 900, 2800, 300000, 45, 6000, 12, 10, 8);
INSERT INTO `performance_metrics` VALUES (4, 4, 1800, 5500, 950000, 120, 15000, 25, 22, 2);
INSERT INTO `performance_metrics` VALUES (5, 5, 1100, 3200, 400000, 55, 8000, 14, 11, 6);
INSERT INTO `performance_metrics` VALUES (6, 24, 1300, 4000, 500000, 75, 9000, 25, 20, 4);
INSERT INTO `performance_metrics` VALUES (7, 26, 1400, 4200, 600000, 85, 10000, 150, 130, 3.5);
INSERT INTO `performance_metrics` VALUES (12, 44, 2000, 6000, 1000000, 150, 20000, 1000, 900, 1);
INSERT INTO `performance_metrics` VALUES (13, 45, 1600, 4800, 750000, 30, 12000, 148, 130, 3);
INSERT INTO `performance_metrics` VALUES (14, 46, 1000, 3000, 400000, 50, 8500, 15, 12, 200);
COMMIT;

-- ----------------------------
-- Table structure for phones
-- ----------------------------
DROP TABLE IF EXISTS `phones`;
CREATE TABLE `phones` (
  `phone_id` int NOT NULL AUTO_INCREMENT,
  `release_year` int DEFAULT NULL,
  `weight_grams` float DEFAULT NULL,
  `screen_size_inches` float DEFAULT NULL,
  `screen_resolution_width` int DEFAULT NULL,
  `screen_resolution_height` int DEFAULT NULL,
  `battery_capacity_mAh` int DEFAULT NULL,
  `price_usd` decimal(10,2) DEFAULT NULL,
  `thickness_mm` float DEFAULT NULL,
  `width_mm` float DEFAULT NULL,
  `height_mm` float DEFAULT NULL,
  `pixel_density_ppi` int DEFAULT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of phones
-- ----------------------------
BEGIN;
INSERT INTO `phones` VALUES (1, 2022, 189, 6.1, 1080, 2340, 4000, 799.99, 7.65, 71.5, 146.7, 422);
INSERT INTO `phones` VALUES (2, 2023, 203, 6.7, 1440, 3200, 5000, 1099.99, 8.1, 75.9, 160.9, 515);
INSERT INTO `phones` VALUES (3, 2021, 196, 6.4, 1080, 2400, 4500, 699.99, 8.3, 73.3, 159.8, 411);
INSERT INTO `phones` VALUES (4, 2023, 210, 6.9, 1440, 3088, 6000, 1299.99, 8.5, 77.2, 165.1, 496);
INSERT INTO `phones` VALUES (5, 2022, 174, 5.8, 1125, 2436, 3200, 899.99, 7.4, 70.9, 143.6, 458);
INSERT INTO `phones` VALUES (6, 2022, 189, 6.1, 1080, 2340, 4000, 799.99, 7.65, 71.5, 146.7, 422);
INSERT INTO `phones` VALUES (7, 2023, 203, 6.7, 1440, 3200, 5000, 1099.99, 8.1, 75.9, 160.9, 515);
INSERT INTO `phones` VALUES (8, 2021, 196, 6.4, 1080, 2400, 4500, 699.99, 8.3, 73.3, 159.8, 411);
INSERT INTO `phones` VALUES (9, 2023, 210, 6.9, 1440, 3088, 6000, 1299.99, 8.5, 77.2, 165.1, 496);
INSERT INTO `phones` VALUES (10, 2022, 174, 5.8, 1125, 2436, 3200, 899.99, 7.4, 70.9, 143.6, 458);
INSERT INTO `phones` VALUES (11, 2022, 189, 6.1, 1080, 2340, 4000, 799.99, 7.65, 71.5, 146.7, 422);
INSERT INTO `phones` VALUES (12, 2023, 203, 6.7, 1440, 3200, 5000, 1099.99, 8.1, 75.9, 160.9, 515);
INSERT INTO `phones` VALUES (13, 2021, 196, 6.4, 1080, 2400, 4500, 699.99, 8.3, 73.3, 159.8, 411);
INSERT INTO `phones` VALUES (14, 2023, 210, 6.9, 1440, 3088, 6000, 1299.99, 8.5, 77.2, 165.1, 496);
INSERT INTO `phones` VALUES (15, 2022, 174, 5.8, 1125, 2436, 3200, 899.99, 7.4, 70.9, 143.6, 458);
INSERT INTO `phones` VALUES (16, 2022, 189, 6.1, 1080, 2340, 4000, 799.99, 7.65, 71.5, 146.7, 422);
INSERT INTO `phones` VALUES (17, 2023, 203, 6.7, 1440, 3200, 5000, 1099.99, 8.1, 75.9, 160.9, 515);
INSERT INTO `phones` VALUES (18, 2021, 196, 6.4, 1080, 2400, 4500, 699.99, 8.3, 73.3, 159.8, 411);
INSERT INTO `phones` VALUES (19, 2023, 210, 6.9, 1440, 3088, 6000, 1299.99, 8.5, 77.2, 165.1, 496);
INSERT INTO `phones` VALUES (20, 2022, 174, 5.8, 1125, 2436, 3200, 899.99, 7.4, 70.9, 143.6, 458);
INSERT INTO `phones` VALUES (21, 2023, 195, 6.5, 1080, 2400, 4500, 899.99, 7.9, 72.5, 150, 430);
INSERT INTO `phones` VALUES (22, 2024, 250, 6.8, 1200, 2600, 150000, 1299.99, 9.5, 78, 162, 500);
INSERT INTO `phones` VALUES (23, 2025, 300, 6.9, 1440, 3088, 1500000, 1999.99, 10, 80, 170, 550);
INSERT INTO `phones` VALUES (24, 2023, 220, 6.5, 1080, 2400, 4500, 499.99, 8.2, 74.5, 158, 450);
INSERT INTO `phones` VALUES (25, 2024, 350, 7.2, 1440, 3088, 100000, 1499.99, 12, 85, 170, 500);
INSERT INTO `phones` VALUES (26, 2023, 280, 6.5, 1080, 2400, 80000, 899.99, 9.5, 76, 160, 450);
INSERT INTO `phones` VALUES (27, 2020, 210, 6.2, 1080, 2340, 4200, 749.99, 8, 72, 150, 400);
INSERT INTO `phones` VALUES (28, 2020, 205, 6, 720, 1600, 4050, 699.99, 8.5, 73, 148, 380);
INSERT INTO `phones` VALUES (29, 2024, 400, 7.5, 1440, 3088, 1000000, 1000000.00, 15, 90, 180, 600);
INSERT INTO `phones` VALUES (30, 2024, 150, 5, 1920, 1080, 2000, 999.99, 5, 60, 120, 400);
INSERT INTO `phones` VALUES (31, 2021, 180, 6.1, 1080, 2340, 4500, 899.99, 7.5, 70, 145, 420);
INSERT INTO `phones` VALUES (32, 2021, 190, 6.4, 1440, 3088, 5000, 1099.99, 8, 76, 160, 515);
INSERT INTO `phones` VALUES (33, 2025, 200, 6, 1920, 1080, 5000, 1499.99, 7, 75, 150, 400);
INSERT INTO `phones` VALUES (34, 2023, 185, 5.9, 1080, 2200, 4100, 799.99, 7.8, 70, 145, 430);
INSERT INTO `phones` VALUES (35, 2025, 300, 100, 100000, 50000, 2000, 1999.99, 20, 2000, 1000, 11180);
INSERT INTO `phones` VALUES (36, 2023, 220, 6.2, 1080, 2340, 4200, 499.99, 8, 72, 150, 400);
INSERT INTO `phones` VALUES (37, 2024, 149.99, 6.2, 1080, 2340, 3000, 499.99, 6.5, 68, 140, 415);
INSERT INTO `phones` VALUES (38, 2025, 200, 10, 100000, 50000, 2000, 999.99, 10, 2000, 1000, 10000);
INSERT INTO `phones` VALUES (39, 2023, 190, 6.5, 1080, 2340, 4000, 799.99, 8, 73, 155, 420);
INSERT INTO `phones` VALUES (40, 2024, 210, 6.8, 1440, 3088, 4500, 899.99, 8, 74, 158, 500);
INSERT INTO `phones` VALUES (41, 2023, 200, 6.5, 1080, 2340, 5000, 799.99, 8, 73, 155, 420);
INSERT INTO `phones` VALUES (42, 2025, 250, 6.9, 1440, 3088, 100000, 1999.99, 12, 80, 165, 550);
INSERT INTO `phones` VALUES (43, 2025, 300, 6, 1920, 1080, 100000, 999999.99, 15, 75, 150, 300);
INSERT INTO `phones` VALUES (44, 2025, 400, 7, 2000, 3000, 1000000, 999999.99, 20, 80, 180, 600);
INSERT INTO `phones` VALUES (45, 2024, 250, 6.7, 1440, 3200, 10000, 899.99, 8.5, 75.9, 160.9, 515);
INSERT INTO `phones` VALUES (46, 2023, 220, 6.2, 1080, 2340, 4000, 799.99, 7.8, 71.5, 146.7, 422);
INSERT INTO `phones` VALUES (47, 2025, 350, 5.5, 1440, 2560, 1000000, 999999.99, 18, 70, 140, 500);
INSERT INTO `phones` VALUES (48, 2025, 400, 6.8, 1440, 3088, 1200000, 999999.99, 20, 85, 170, 550);
INSERT INTO `phones` VALUES (49, 2024, 300, 7.2, 1440, 3088, 5000, 1299.99, 9, 78, 165, 450);
INSERT INTO `phones` VALUES (50, 2023, 220, 6.5, 1080, 2400, 5000, 899.99, 8.2, 74, 158, 450);
COMMIT;

-- ----------------------------
-- Table structure for sales_data
-- ----------------------------
DROP TABLE IF EXISTS `sales_data`;
CREATE TABLE `sales_data` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `phone_id` int DEFAULT NULL,
  `units_sold` int DEFAULT NULL,
  `revenue_usd` decimal(15,2) DEFAULT NULL,
  `sale_year` int DEFAULT NULL,
  `sale_month` int DEFAULT NULL,
  `discount_percentage` float DEFAULT NULL,
  `customer_satisfaction_score` float DEFAULT NULL,
  `return_rate_percentage` float DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `phone_id` (`phone_id`),
  CONSTRAINT `sales_data_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sales_data
-- ----------------------------
BEGIN;
INSERT INTO `sales_data` VALUES (1, 1, 50000, 39999500.00, 2022, 10, 0, 4.5, 2);
INSERT INTO `sales_data` VALUES (2, 2, 30000, 32999700.00, 2023, 3, 5, 4.8, 1.5);
INSERT INTO `sales_data` VALUES (3, 3, 80000, 55999200.00, 2021, 7, 10, 4.2, 3);
INSERT INTO `sales_data` VALUES (4, 4, 20000, 25999800.00, 2023, 5, 0, 4.9, 1);
INSERT INTO `sales_data` VALUES (5, 5, 60000, 53999400.00, 2022, 12, 15, 4.6, 2.5);
INSERT INTO `sales_data` VALUES (6, 27, 10000, 7499900.00, 2020, 11, 5, 3.8, 6);
INSERT INTO `sales_data` VALUES (7, 28, 15000, 10499850.00, 2020, 9, 0, 4.5, 2);
INSERT INTO `sales_data` VALUES (8, 29, 5000, 500000000.00, 2024, 1, 0, 3.5, 5);
INSERT INTO `sales_data` VALUES (9, 31, 100000, 89999000.00, 2021, 5, 5, 8.5, 4.5);
INSERT INTO `sales_data` VALUES (10, 32, 80000, 87999200.00, 2021, 8, 10, 9, 3);
INSERT INTO `sales_data` VALUES (11, 1, 5000, 3999950.00, 2022, 1, 0, 4.5, 2);
INSERT INTO `sales_data` VALUES (12, 1, 6000, 4799940.00, 2022, 2, 0, 4.5, 2);
INSERT INTO `sales_data` VALUES (13, 1, 9000, 7199910.00, 2022, 3, 0, 4.5, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
