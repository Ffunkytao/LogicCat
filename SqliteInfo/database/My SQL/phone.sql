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

 Date: 27/01/2025 23:04:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
