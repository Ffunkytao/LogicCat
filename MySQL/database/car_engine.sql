/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : car_engine

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:26:45
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
-- Table structure for engine
-- ----------------------------
DROP TABLE IF EXISTS `engine`;
CREATE TABLE `engine` (
  `Engine_ID` int NOT NULL AUTO_INCREMENT COMMENT '发动机唯一标识符',
  `Manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '发动机型号',
  `Displacement` decimal(10,2) NOT NULL COMMENT '排量 (升)',
  `Cylinders` int NOT NULL COMMENT '气缸数',
  `Configuration` enum('Inline','V','Boxer','W','Rotary') NOT NULL COMMENT '气缸排列',
  `Valves_Cylinder` int NOT NULL COMMENT '每缸气门数',
  `Compression_Ratio` decimal(10,1) NOT NULL COMMENT '压缩比',
  `Fuel_Type` enum('Gasoline','Diesel','Electric','Hybrid') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '燃油类型',
  `Aspiration` enum('Naturally Aspirated','Turbocharged','Supercharged') NOT NULL COMMENT '进气方式',
  `Horsepower` int NOT NULL COMMENT '马力',
  `Torque` int NOT NULL COMMENT '扭矩 (牛米)',
  `Redline` int NOT NULL COMMENT '红线转速 (RPM)',
  `Bore` decimal(10,2) NOT NULL COMMENT '缸径 (毫米)',
  `Stroke` decimal(10,2) NOT NULL COMMENT '行程 (毫米)',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量 (公斤)',
  PRIMARY KEY (`Engine_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机基本信息表';

-- ----------------------------
-- Records of engine
-- ----------------------------
BEGIN;
INSERT INTO `engine` VALUES (1, 'Toyota', '2JZ-GTE', 3.00, 6, 'Inline', 4, 10.5, 'Gasoline', 'Turbocharged', 320, 427, 7000, 86.00, 86.00, 200.00);
INSERT INTO `engine` VALUES (2, 'Honda', 'K20A', 2.00, 4, 'Inline', 4, 11.7, 'Gasoline', 'Naturally Aspirated', 220, 206, 8000, 86.00, 86.00, 150.00);
INSERT INTO `engine` VALUES (3, 'Ford', 'EcoBoost 2.3', 2.30, 4, 'Inline', 4, 9.5, 'Gasoline', 'Turbocharged', 310, 350, 6500, 87.50, 94.00, 180.00);
INSERT INTO `engine` VALUES (4, 'BMW', 'S55B30', 3.00, 6, 'Inline', 4, 10.2, 'Gasoline', 'Turbocharged', 425, 550, 7500, 84.00, 89.60, 190.00);
INSERT INTO `engine` VALUES (5, 'Chevrolet', 'LT4', 6.20, 8, 'V', 2, 10.0, 'Gasoline', 'Supercharged', 650, 650, 6500, 105.00, 104.00, 250.00);
INSERT INTO `engine` VALUES (6, 'Audi', 'EA888', 2.00, 4, 'Inline', 4, 9.6, 'Gasoline', 'Turbocharged', 310, 400, 6800, 82.50, 92.80, 170.00);
INSERT INTO `engine` VALUES (7, 'Mercedes-Benz', 'M139', 2.00, 4, 'Inline', 4, 9.0, 'Gasoline', 'Turbocharged', 416, 500, 7200, 83.00, 92.00, 160.00);
INSERT INTO `engine` VALUES (8, 'Subaru', 'FA24', 2.40, 4, 'Boxer', 4, 10.6, 'Gasoline', 'Turbocharged', 260, 277, 6500, 94.00, 86.00, 175.00);
INSERT INTO `engine` VALUES (9, 'Porsche', 'M97/01', 3.80, 6, 'Boxer', 4, 12.5, 'Gasoline', 'Naturally Aspirated', 355, 400, 7800, 102.00, 76.40, 210.00);
INSERT INTO `engine` VALUES (10, 'Ferrari', 'F140', 6.50, 12, 'V', 4, 11.8, 'Gasoline', 'Naturally Aspirated', 800, 718, 8500, 94.00, 77.00, 300.00);
INSERT INTO `engine` VALUES (11, 'Toyota', '2ZR-FXE', 1.80, 4, 'Inline', 4, 13.0, 'Gasoline', 'Naturally Aspirated', 98, 142, 5500, 80.50, 88.30, 112.50);
INSERT INTO `engine` VALUES (12, 'Toyota', '2GR-FKS', 3.50, 6, 'V', 4, 11.8, 'Gasoline', 'Naturally Aspirated', 295, 356, 6600, 94.00, 83.00, 185.00);
INSERT INTO `engine` VALUES (13, 'Honda', 'L15B7', 1.50, 4, 'Inline', 4, 10.6, 'Gasoline', 'Turbocharged', 174, 220, 6500, 73.00, 89.40, 98.70);
INSERT INTO `engine` VALUES (14, 'Honda', 'J35Y4', 3.50, 6, 'V', 4, 11.5, 'Gasoline', 'Naturally Aspirated', 280, 355, 6200, 89.00, 93.00, 192.00);
INSERT INTO `engine` VALUES (15, 'Ford', 'EcoBoost 2.0', 2.00, 4, 'Inline', 4, 9.7, 'Gasoline', 'Turbocharged', 250, 373, 6500, 87.50, 83.00, 148.20);
INSERT INTO `engine` VALUES (16, 'Ford', 'Coyote V8', 5.00, 8, 'V', 4, 12.0, 'Gasoline', 'Naturally Aspirated', 450, 510, 7500, 94.00, 92.70, 220.00);
INSERT INTO `engine` VALUES (17, 'BMW', 'B48B20', 2.00, 4, 'Inline', 4, 11.0, 'Gasoline', 'Turbocharged', 248, 350, 7000, 82.00, 94.60, 132.50);
INSERT INTO `engine` VALUES (18, 'BMW', 'S63B44', 4.40, 8, 'V', 4, 10.5, 'Gasoline', 'Supercharged', 625, 750, 7200, 89.00, 88.30, 245.00);
INSERT INTO `engine` VALUES (19, 'Subaru', 'FA24', 2.40, 4, 'Boxer', 4, 10.6, 'Gasoline', 'Turbocharged', 260, 375, 6500, 94.00, 86.00, 152.30);
INSERT INTO `engine` VALUES (20, 'Mazda', 'SkyActiv-G 2.0', 2.00, 4, 'Inline', 4, 13.0, 'Gasoline', 'Naturally Aspirated', 155, 200, 6500, 83.50, 91.20, 117.80);
INSERT INTO `engine` VALUES (21, 'Mercedes', 'M256', 3.00, 6, 'Inline', 4, 10.5, 'Gasoline', 'Turbocharged', 435, 520, 6500, 83.00, 92.40, 198.00);
INSERT INTO `engine` VALUES (22, 'Volkswagen', 'EA888', 2.00, 4, 'Inline', 4, 9.6, 'Gasoline', 'Turbocharged', 220, 350, 6500, 82.50, 92.80, 135.40);
INSERT INTO `engine` VALUES (23, 'Toyota', '4A-GE', 1.60, 4, 'Inline', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 170, 150, 8200, 82.00, 93.00, 120.00);
INSERT INTO `engine` VALUES (24, 'Honda', 'K20C', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 270, 380, 7000, 85.00, 90.00, 135.00);
INSERT INTO `engine` VALUES (25, 'Ford', 'Voodoo V8', 5.20, 8, 'V', 4, 12.0, 'Gasoline', 'Naturally Aspirated', 526, 550, 7500, 94.00, 95.00, 200.00);
INSERT INTO `engine` VALUES (26, 'BMW', 'S55', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 550, 7600, 88.00, 90.00, 160.00);
INSERT INTO `engine` VALUES (27, 'Ferrari', 'F140 EB', 6.30, 12, 'V', 4, 13.3, 'Gasoline', 'Naturally Aspirated', 740, 510, 8250, 92.00, 86.00, 180.00);
INSERT INTO `engine` VALUES (28, 'Porsche', '911 GT3 RS', 4.00, 6, 'Boxer', 4, 14.8, 'Gasoline', 'Naturally Aspirated', 520, 470, 8250, 96.00, 76.00, 150.00);
INSERT INTO `engine` VALUES (29, 'GM', 'LS7', 1.60, 4, 'Inline', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 170, 150, 8200, 82.00, 93.00, 250.00);
INSERT INTO `engine` VALUES (30, 'GM', 'LS7', 6.20, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 450, 600, 6500, 100.00, 100.00, 250.00);
INSERT INTO `engine` VALUES (31, 'Chevrolet', 'Big Block', 8.00, 8, 'V', 4, 10.0, 'Gasoline', 'Naturally Aspirated', 400, 650, 6000, 105.00, 100.00, 300.00);
INSERT INTO `engine` VALUES (32, 'Dodge', 'Hemi V8', 6.40, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 450, 600, 6000, 100.00, 95.00, 1000.00);
INSERT INTO `engine` VALUES (33, 'Toyota', '4A-GE', 1.60, 4, 'Inline', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 170, 150, 8200, 82.00, 93.00, 120.00);
INSERT INTO `engine` VALUES (34, 'Honda', 'K20C', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 270, 380, 7000, 85.00, 90.00, 135.00);
INSERT INTO `engine` VALUES (35, 'Ford', 'Voodoo V8', 5.20, 8, 'V', 4, 12.0, 'Gasoline', 'Naturally Aspirated', 526, 550, 7500, 94.00, 95.00, 180.00);
INSERT INTO `engine` VALUES (36, 'BMW', 'S55', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 550, 7600, 88.00, 90.00, 160.00);
INSERT INTO `engine` VALUES (37, 'Ferrari', 'F140 EB', 6.30, 12, 'V', 4, 13.3, 'Gasoline', 'Naturally Aspirated', 740, 510, 8250, 92.00, 86.00, 180.00);
INSERT INTO `engine` VALUES (38, 'Dodge', 'Hellcat V8', 6.20, 8, 'V', 4, 9.8, 'Gasoline', 'Turbocharged', 700, 900, 9600, 100.00, 95.00, 220.00);
INSERT INTO `engine` VALUES (39, 'Toyota', '4A-GE', 1.60, 4, 'Inline', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 170, 150, 8200, 82.00, 93.00, 120.00);
INSERT INTO `engine` VALUES (40, 'Honda', 'K20C', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 270, 380, 7000, 85.00, 90.00, 135.00);
INSERT INTO `engine` VALUES (41, 'Ford', 'Voodoo V8', 5.20, 8, 'V', 4, 12.0, 'Gasoline', 'Naturally Aspirated', 526, 550, 7500, 94.00, 95.00, 180.00);
INSERT INTO `engine` VALUES (42, 'BMW', 'S55', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 550, 7600, 88.00, 90.00, 160.00);
INSERT INTO `engine` VALUES (43, 'Ferrari', 'F140 EB', 6.30, 12, 'V', 4, 13.3, 'Gasoline', 'Naturally Aspirated', 740, 510, 8250, 92.00, 86.00, 180.00);
INSERT INTO `engine` VALUES (44, 'Porsche', '911 GT3 RS', 4.00, 6, 'Boxer', 4, 14.8, 'Gasoline', 'Naturally Aspirated', 520, 470, 8250, 96.00, 76.00, 150.00);
INSERT INTO `engine` VALUES (45, 'Lamborghini', 'Huracán', 5.20, 10, 'V', 4, 13.0, 'Gasoline', 'Naturally Aspirated', 640, 600, 8500, 86.00, 90.00, 170.00);
INSERT INTO `engine` VALUES (46, 'Subaru', 'FA20', 2.00, 4, 'Boxer', 4, 12.5, 'Gasoline', 'Naturally Aspirated', 220, 200, 7000, 86.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (47, 'Nissan', 'VR38DETT', 3.80, 6, 'V', 4, 9.8, 'Gasoline', 'Supercharged', 600, 650, 8000, 90.00, 92.00, 160.00);
INSERT INTO `engine` VALUES (48, 'Toyota', 'D4D 3.0L', 3.00, 4, 'Inline', 2, 18.0, 'Diesel', 'Turbocharged', 170, 400, 4500, 85.00, 90.00, 160.00);
INSERT INTO `engine` VALUES (49, 'Ford', 'PowerStroke 3.2L', 3.20, 5, 'Inline', 2, 17.5, 'Diesel', 'Turbocharged', 200, 500, 4000, 90.00, 95.00, 180.00);
INSERT INTO `engine` VALUES (50, 'Mercedes-Benz', 'OM651 2.1L', 2.10, 4, 'Inline', 2, 16.2, 'Diesel', 'Supercharged', 204, 400, 4200, 88.00, 92.00, 170.00);
INSERT INTO `engine` VALUES (51, 'Volvo', 'D5 2.4L', 2.40, 5, 'Inline', 2, 17.0, 'Diesel', 'Turbocharged', 215, 420, 4800, 86.00, 90.00, 175.00);
INSERT INTO `engine` VALUES (52, 'Isuzu', '4HK1 2.4L', 2.40, 4, 'Inline', 2, 18.0, 'Diesel', 'Naturally Aspirated', 150, 350, 4000, 80.00, 90.00, 165.00);
INSERT INTO `engine` VALUES (53, 'Mazda', '13B-MSP Renesis', 1.30, 2, 'Rotary', 3, 9.0, 'Gasoline', 'Naturally Aspirated', 235, 210, 9000, 80.00, 60.00, 100.00);
INSERT INTO `engine` VALUES (54, 'Mazda', '13B-REW', 1.30, 2, 'Rotary', 3, 9.4, 'Gasoline', 'Supercharged', 280, 220, 8000, 80.00, 60.00, 105.00);
INSERT INTO `engine` VALUES (55, 'NSU', 'Wankel', 0.50, 1, 'Rotary', 2, 10.0, 'Gasoline', 'Naturally Aspirated', 110, 75, 7000, 60.00, 60.00, 80.00);
INSERT INTO `engine` VALUES (56, 'Toyota', '2ZZ-GE', 1.80, 4, 'Inline', 4, 11.5, 'Gasoline', 'Naturally Aspirated', 190, 180, 8200, 79.00, 80.00, 120.00);
INSERT INTO `engine` VALUES (57, 'Honda', 'K20C', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 270, 380, 7000, 85.00, 90.00, 135.00);
INSERT INTO `engine` VALUES (58, 'Mazda', 'Experimental RX-10', 2.00, 2, 'Rotary', 3, 9.5, 'Gasoline', 'Turbocharged', 300, 220, 100000, 90.00, 75.00, 110.00);
INSERT INTO `engine` VALUES (59, 'Mazda', '13B-MSP Renesis', 1.30, 2, 'Rotary', 3, 9.0, 'Gasoline', 'Naturally Aspirated', 235, 210, 9000, 80.00, 60.00, 100.00);
INSERT INTO `engine` VALUES (60, 'NSU', 'Wankel-X', 1.00, 1, 'Rotary', 2, 10.0, 'Gasoline', 'Naturally Aspirated', 200, 180, 100000, 70.00, 80.00, 120.00);
INSERT INTO `engine` VALUES (61, 'Mazda', '13B-MSP Renesis', 1.30, 2, 'Rotary', 3, 9.0, 'Gasoline', 'Naturally Aspirated', 235, 210, 9000, 80.00, 60.00, 100.00);
INSERT INTO `engine` VALUES (62, 'Honda', 'K20C', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 270, 380, 7000, 85.00, 90.00, 135.00);
INSERT INTO `engine` VALUES (63, 'Ford', 'Voodoo V8', 5.20, 8, 'V', 4, 12.0, 'Gasoline', 'Naturally Aspirated', 526, 550, 7500, 94.00, 95.00, 180.00);
INSERT INTO `engine` VALUES (64, 'BMW', 'S55', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 160.00);
INSERT INTO `engine` VALUES (65, 'Ferrari', 'F140 EB', 6.30, 12, 'V', 4, 13.3, 'Gasoline', 'Naturally Aspirated', 740, 510, 8250, 92.00, 86.00, 180.00);
INSERT INTO `engine` VALUES (66, 'McLaren', 'M838T', 4.00, 8, 'V', 4, 9.0, 'Gasoline', 'Supercharged', 600, 540, 8000, 85.00, 93.00, 150.00);
INSERT INTO `engine` VALUES (67, 'Bugatti', 'W16', 8.00, 16, 'W', 4, 10.0, 'Gasoline', 'Supercharged', 1000, 1500, 6000, 90.00, 90.00, 250.00);
INSERT INTO `engine` VALUES (68, 'Toyota', '4A-GE', 1.60, 4, 'Inline', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 170, 150, 8200, 82.00, 93.00, 120.00);
INSERT INTO `engine` VALUES (69, 'Honda', 'K20C', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 270, 380, 7000, 85.00, 90.00, 135.00);
INSERT INTO `engine` VALUES (70, 'Mazda', 'RX-Vision', 1.60, 2, 'Rotary', 3, 9.5, 'Gasoline', 'Naturally Aspirated', 250, 220, 10000, 80.00, 80.00, 0.00);
INSERT INTO `engine` VALUES (71, 'McLaren', 'M838T', 4.00, 8, 'V', 4, 9.0, 'Gasoline', 'Supercharged', 600, 540, 8000, 85.00, 93.00, 0.00);
INSERT INTO `engine` VALUES (72, 'Bugatti', 'W16', 8.00, 16, 'W', 4, 10.0, 'Gasoline', 'Supercharged', 1000, 1500, 6000, 90.00, 90.00, 0.00);
INSERT INTO `engine` VALUES (73, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Turbocharged', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (74, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (75, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (76, 'BMW', 'S55 TwinPower', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 150.00);
INSERT INTO `engine` VALUES (77, 'Mazda', 'Skyactiv-G', 2.00, 4, 'Inline', 4, 14.0, 'Gasoline', 'Naturally Aspirated', 150, 210, 6000, 85.00, 90.00, 120.00);
INSERT INTO `engine` VALUES (78, 'Volvo', 'D5 Diesel', 2.00, 4, 'Inline', 4, 16.0, 'Diesel', 'Turbocharged', 190, 400, 4500, 80.00, 90.00, 180.00);
INSERT INTO `engine` VALUES (79, 'Tesla', 'Electric Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Turbocharged', 300, 500, 10000, 0.00, 0.00, 100.00);
INSERT INTO `engine` VALUES (80, 'Chevrolet', 'Volt Hybrid', 1.40, 4, 'Inline', 4, 10.0, 'Hybrid', 'Naturally Aspirated', 140, 190, 6000, 82.00, 85.00, 150.00);
INSERT INTO `engine` VALUES (81, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Turbocharged', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (82, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (83, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (84, 'BMW', 'S55 TwinPower', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 150.00);
INSERT INTO `engine` VALUES (85, 'Mazda', 'Skyactiv-G', 2.00, 4, 'Inline', 4, 14.0, 'Gasoline', 'Naturally Aspirated', 150, 210, 6000, 85.00, 90.00, 120.00);
INSERT INTO `engine` VALUES (86, 'Volvo', 'D5 Diesel', 2.00, 4, 'Inline', 4, 16.0, 'Diesel', 'Turbocharged', 190, 400, 4500, 80.00, 90.00, 180.00);
INSERT INTO `engine` VALUES (87, 'Tesla', 'Electric Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Turbocharged', 300, 500, 10000, 0.00, 0.00, 100.00);
INSERT INTO `engine` VALUES (88, 'Chevrolet', 'Volt Hybrid', 1.40, 4, 'Inline', 4, 10.0, 'Hybrid', 'Naturally Aspirated', 140, 190, 6000, 82.00, 85.00, 150.00);
INSERT INTO `engine` VALUES (89, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Turbocharged', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (90, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (91, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (92, 'BMW', 'S55 TwinPower', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 150.00);
INSERT INTO `engine` VALUES (93, 'Mazda', 'Skyactiv-G', 2.00, 4, 'Inline', 4, 14.0, 'Gasoline', 'Naturally Aspirated', 150, 210, 6000, 85.00, 90.00, 120.00);
INSERT INTO `engine` VALUES (94, 'Volvo', 'D5 Diesel', 2.00, 4, 'Inline', 4, 16.0, 'Diesel', 'Turbocharged', 190, 400, 4500, 80.00, 90.00, 180.00);
INSERT INTO `engine` VALUES (95, 'Ferrari', 'F140 EB', 6.30, 12, 'V', 4, 13.3, 'Gasoline', 'Naturally Aspirated', 740, 510, 8250, 92.00, 86.00, 180.00);
INSERT INTO `engine` VALUES (96, 'Chevrolet', 'LS7', 6.20, 8, 'V', 4, 9.8, 'Gasoline', 'Naturally Aspirated', 400, 550, 6000, 100.00, 100.00, 220.00);
INSERT INTO `engine` VALUES (97, 'Tesla', 'Model S Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Naturally Aspirated', 300, 600, 10000, 0.00, 0.00, 100.00);
INSERT INTO `engine` VALUES (98, 'Lucid', 'Air Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Naturally Aspirated', 800, 900, 12000, 0.00, 0.00, 90.00);
INSERT INTO `engine` VALUES (99, 'Nissan', 'Leaf Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Naturally Aspirated', 150, 300, 8000, 0.00, 0.00, 80.00);
INSERT INTO `engine` VALUES (100, 'Fake_Electric', 'EVX-1000', 2.00, 0, 'Inline', 0, 0.0, 'Electric', 'Naturally Aspirated', 500, 700, 6000, 0.00, 0.00, 150.00);
INSERT INTO `engine` VALUES (101, 'Hyundai', 'IONIQ 5 Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Naturally Aspirated', 200, 400, 10000, 0.00, 0.00, 120.00);
INSERT INTO `engine` VALUES (102, 'Toyota', '2AR-FE', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Naturally Aspirated', 150, 200, 6000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (103, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (104, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (105, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (106, 'BMW', 'S55 TwinPower', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 150.00);
INSERT INTO `engine` VALUES (107, 'Mazda', 'Skyactiv-G', 2.00, 4, 'Inline', 4, 14.0, 'Gasoline', 'Naturally Aspirated', 150, 210, 6000, 85.00, 90.00, 120.00);
INSERT INTO `engine` VALUES (108, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (109, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (110, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (111, 'BMW', 'S55 TwinPower', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 150.00);
INSERT INTO `engine` VALUES (112, 'Mazda', 'Skyactiv-G', 2.00, 4, 'Inline', 4, 14.0, 'Gasoline', 'Naturally Aspirated', 150, 210, 6000, 85.00, 90.00, 120.00);
INSERT INTO `engine` VALUES (113, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (114, 'FutureTech', 'Hyper W24', 100.00, 24, 'W', 4, 12.0, 'Hybrid', 'Supercharged', 5000, 8000, 10000, 5000.00, 3000.00, 500.00);
INSERT INTO `engine` VALUES (115, 'Ford', 'Voodoo V8', 5.20, 8, 'V', 4, 12.0, 'Gasoline', 'Naturally Aspirated', 526, 550, 7500, 94.00, 95.00, 180.00);
INSERT INTO `engine` VALUES (116, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (117, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (118, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (119, 'BMW', 'S55 TwinPower', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 150.00);
INSERT INTO `engine` VALUES (120, 'Mazda', 'Skyactiv-G', 2.00, 4, 'Inline', 4, 14.0, 'Gasoline', 'Naturally Aspirated', 150, 210, 6000, 85.00, 90.00, 120.00);
INSERT INTO `engine` VALUES (121, 'Ferrari', 'F140 EB', 6.30, 12, 'V', 4, 13.3, 'Gasoline', 'Naturally Aspirated', 740, 510, 8250, 92.00, 86.00, 180.00);
INSERT INTO `engine` VALUES (122, 'Tesla', 'Electric Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Supercharged', 300, 500, 10000, 0.00, 0.00, 100.00);
INSERT INTO `engine` VALUES (123, 'Chevrolet', 'LS7', 6.20, 8, 'V', 4, 9.8, 'Gasoline', 'Naturally Aspirated', 400, 550, 6000, 100.00, 100.00, 220.00);
INSERT INTO `engine` VALUES (124, 'Tesla', 'Model S Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Turbocharged', 300, 600, 10000, 0.00, 0.00, 100.00);
INSERT INTO `engine` VALUES (125, 'Lucid', 'Air Motor', 0.00, 0, 'V', 0, 0.0, 'Electric', 'Turbocharged', 800, 900, 12000, 0.00, 0.00, 90.00);
INSERT INTO `engine` VALUES (126, 'Nissan', 'Leaf Motor', 0.00, 0, 'Boxer', 0, 0.0, 'Electric', 'Turbocharged', 150, 300, 8000, 0.00, 0.00, 80.00);
INSERT INTO `engine` VALUES (127, 'Toyota', 'Hybrid VVT-i', 2.00, 4, 'Inline', 4, 10.0, 'Hybrid', 'Naturally Aspirated', 150, 200, 6000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (128, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (129, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (130, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (131, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (132, 'BMW', 'S55 TwinPower', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 150.00);
INSERT INTO `engine` VALUES (133, 'Mazda', 'Skyactiv-G', 2.00, 4, 'Inline', 4, 14.0, 'Gasoline', 'Naturally Aspirated', 150, 210, 6000, 85.00, 90.00, 120.00);
INSERT INTO `engine` VALUES (134, 'Ferrari', 'F140 EB', 6.30, 12, 'V', 4, 13.3, 'Gasoline', 'Naturally Aspirated', 740, 510, 8250, 92.00, 86.00, 180.00);
INSERT INTO `engine` VALUES (135, 'Tesla', 'Electric Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Naturally Aspirated', 300, 500, 10000, 0.00, 0.00, 100.00);
INSERT INTO `engine` VALUES (136, 'Chevrolet', 'Volt Hybrid', 1.40, 4, 'Inline', 4, 10.0, 'Hybrid', 'Naturally Aspirated', 140, 190, 6000, 82.00, 85.00, 150.00);
INSERT INTO `engine` VALUES (137, 'Honda', 'K20C Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (138, 'Honda', 'K20C Turbo', 2.00, 4, 'Inline', 4, 11.5, 'Gasoline', 'Turbocharged', 250, 350, 7000, 84.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (139, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (140, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (141, 'Mazda', 'Skyactiv-G', 2.00, 4, 'Inline', 4, 14.0, 'Gasoline', 'Naturally Aspirated', 150, 210, 6000, 85.00, 90.00, 120.00);
INSERT INTO `engine` VALUES (142, 'Ford', 'Modular V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 300, 500, 6500, 90.00, 86.00, 200.00);
INSERT INTO `engine` VALUES (143, 'Chevrolet', 'LS3', 6.20, 8, 'V', 4, 10.7, 'Gasoline', 'Naturally Aspirated', 427, 550, 6000, 100.00, 90.00, 220.00);
INSERT INTO `engine` VALUES (144, 'Dodge', 'Hemi V8', 6.40, 8, 'V', 4, 10.0, 'Gasoline', 'Naturally Aspirated', 425, 600, 6200, 102.00, 95.00, 230.00);
INSERT INTO `engine` VALUES (145, 'Toyota', 'D4-Diesel', 2.80, 4, 'Inline', 2, 16.0, 'Diesel', 'Naturally Aspirated', 150, 300, 4000, 90.00, 100.00, 200.00);
INSERT INTO `engine` VALUES (146, 'Ford', 'PowerStroke V8', 6.70, 8, 'V', 4, 17.0, 'Diesel', 'Turbocharged', 250, 600, 3800, 100.00, 110.00, 300.00);
INSERT INTO `engine` VALUES (147, 'BMW', 'B57 TwinPower', 3.00, 6, 'Inline', 4, 18.0, 'Diesel', 'Turbocharged', 265, 620, 4400, 85.00, 90.00, 220.00);
INSERT INTO `engine` VALUES (148, 'Mercedes', 'OM654', 2.00, 4, 'Inline', 4, 16.2, 'Diesel', 'Supercharged', 200, 400, 4200, 80.00, 85.00, 180.00);
INSERT INTO `engine` VALUES (149, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (150, 'FutureTech', 'Hyper W24', 25.00, 24, 'W', 4, 16.0, 'Diesel', 'Supercharged', 5000, 8000, 30000, 200.00, 500.00, 1000.00);
INSERT INTO `engine` VALUES (151, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (152, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (153, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (154, 'BMW', 'S63 V8', 4.40, 8, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 600, 750, 7200, 88.00, 80.00, 220.00);
INSERT INTO `engine` VALUES (155, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (156, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (157, 'BMW', 'S63 Inline6', 3.00, 6, 'Inline', 4, 10.0, 'Gasoline', 'Supercharged', 370, 500, 7200, 84.00, 90.00, 180.00);
INSERT INTO `engine` VALUES (158, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (159, 'FutureTech', 'Hyper W24', 25.00, 24, 'W', 4, 16.0, 'Diesel', 'Supercharged', 5000, 8000, 30000, 200.00, 5000.00, 1000.00);
INSERT INTO `engine` VALUES (160, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 86.00, 200.00);
INSERT INTO `engine` VALUES (161, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (162, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (163, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (164, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (165, 'BMW', 'S55 TwinPower', 3.00, 6, 'Inline', 4, 10.7, 'Gasoline', 'Supercharged', 425, 470, 7600, 88.00, 90.00, 150.00);
INSERT INTO `engine` VALUES (166, 'Ford', 'EcoBoost V6', 3.50, 6, 'V', 4, 10.0, 'Gasoline', 'Supercharged', 300, 400, 6000, 90.00, 88.00, 160.00);
INSERT INTO `engine` VALUES (167, 'Mazda', 'RX-8 RENESIS', 1.30, 2, 'Inline', 3, 9.0, 'Gasoline', 'Naturally Aspirated', 230, 210, 9000, 650.00, 590.00, 140.00);
INSERT INTO `engine` VALUES (168, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (169, 'Detroit Diesel', 'DD13', 13.00, 6, 'Inline', 2, 17.5, 'Diesel', 'Turbocharged', 500, 1800, 2100, 130.00, 150.00, 1000.00);
INSERT INTO `engine` VALUES (170, 'Cummins', 'X15', 15.00, 6, 'Inline', 2, 16.8, 'Diesel', 'Supercharged', 600, 2600, 2000, 140.00, 160.00, 1200.00);
INSERT INTO `engine` VALUES (171, 'Tesla', 'Model S Motor', 0.00, 0, 'Inline', 0, 0.0, 'Electric', 'Naturally Aspirated', 300, 600, 10000, 0.00, 0.00, 100.00);
INSERT INTO `engine` VALUES (172, 'Honda', 'K20X Turbo', 2.00, 4, 'Inline', 4, 10.0, 'Gasoline', 'Turbocharged', 250, 350, 7000, 85.00, 90.00, 130.00);
INSERT INTO `engine` VALUES (173, 'FutureTech', 'Hyper Electric V8', 0.00, 8, 'V', 4, 10.0, 'Electric', 'Naturally Aspirated', 1000, 900, 12000, 100.00, 200.00, 220.00);
INSERT INTO `engine` VALUES (174, 'Toyota', 'Extreme V8', 5.00, 8, 'V', 4, 10.5, 'Gasoline', 'Naturally Aspirated', 400, 500, 6500, 90.00, 85.00, 200.00);
INSERT INTO `engine` VALUES (175, 'MAN', 'D2676', 12.80, 6, 'Inline', 4, 18.5, 'Diesel', 'Turbocharged', 540, 2600, 2500, 130.00, 150.00, 1000.00);
INSERT INTO `engine` VALUES (176, 'Cummins', 'X15', 15.00, 6, 'Inline', 4, 17.3, 'Diesel', 'Turbocharged', 600, 2950, 2100, 140.00, 160.00, 1200.00);
INSERT INTO `engine` VALUES (177, 'Detroit Diesel', 'DD13', 13.00, 6, 'Inline', 4, 17.0, 'Diesel', 'Turbocharged', 500, 1800, 2200, 130.00, 150.00, 950.00);
COMMIT;

-- ----------------------------
-- Table structure for enginedimensions
-- ----------------------------
DROP TABLE IF EXISTS `enginedimensions`;
CREATE TABLE `enginedimensions` (
  `Dimension_ID` int NOT NULL AUTO_INCREMENT COMMENT '尺寸数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Length` decimal(10,2) NOT NULL COMMENT '长度 (毫米)',
  `Width` decimal(10,2) NOT NULL COMMENT '宽度 (毫米)',
  `Height` decimal(10,2) NOT NULL COMMENT '高度 (毫米)',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量 (公斤)',
  `Cylinder_Spacing` decimal(10,2) NOT NULL COMMENT '气缸间距 (毫米)',
  `DeckHeight` decimal(10,2) NOT NULL COMMENT '缸体高度 (毫米)',
  `Main_Bore_Diameter` decimal(10,2) NOT NULL COMMENT '主轴承孔径 (毫米)',
  `Rod_Journal_Diameter` decimal(10,2) NOT NULL COMMENT '连杆轴颈直径 (毫米)',
  PRIMARY KEY (`Dimension_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginedimensions_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机尺寸信息表';

-- ----------------------------
-- Records of enginedimensions
-- ----------------------------
BEGIN;
INSERT INTO `enginedimensions` VALUES (1, 1, 600.00, 700.00, 800.00, 200.00, 100.00, 200.00, 60.00, 50.00);
INSERT INTO `enginedimensions` VALUES (2, 2, 550.00, 650.00, 750.00, 150.00, 90.00, 180.00, 55.00, 45.00);
INSERT INTO `enginedimensions` VALUES (3, 3, 580.00, 680.00, 780.00, 180.00, 95.00, 190.00, 58.00, 48.00);
INSERT INTO `enginedimensions` VALUES (4, 4, 620.00, 720.00, 820.00, 190.00, 100.00, 200.00, 62.00, 52.00);
INSERT INTO `enginedimensions` VALUES (5, 5, 650.00, 750.00, 850.00, 250.00, 110.00, 220.00, 65.00, 55.00);
INSERT INTO `enginedimensions` VALUES (6, 6, 570.00, 670.00, 770.00, 170.00, 92.00, 185.00, 57.00, 47.00);
INSERT INTO `enginedimensions` VALUES (7, 7, 590.00, 690.00, 790.00, 160.00, 94.00, 188.00, 59.00, 49.00);
INSERT INTO `enginedimensions` VALUES (8, 8, 610.00, 710.00, 810.00, 175.00, 98.00, 195.00, 61.00, 51.00);
INSERT INTO `enginedimensions` VALUES (9, 9, 630.00, 730.00, 830.00, 210.00, 105.00, 210.00, 63.00, 53.00);
INSERT INTO `enginedimensions` VALUES (10, 10, 670.00, 770.00, 870.00, 300.00, 115.00, 230.00, 67.00, 57.00);
INSERT INTO `enginedimensions` VALUES (11, 23, 500.00, 400.00, 400.00, 120.00, 100.00, 300.00, 80.00, 50.00);
INSERT INTO `enginedimensions` VALUES (12, 24, 600.00, 450.00, 450.00, 135.00, 110.00, 320.00, 85.00, 55.00);
INSERT INTO `enginedimensions` VALUES (13, 25, 700.00, 500.00, 500.00, 200.00, 120.00, 350.00, 90.00, 60.00);
INSERT INTO `enginedimensions` VALUES (14, 26, 650.00, 550.00, 500.00, 160.00, 130.00, 340.00, 92.00, 65.00);
INSERT INTO `enginedimensions` VALUES (15, 27, 800.00, 600.00, 550.00, 180.00, 140.00, 360.00, 100.00, 70.00);
INSERT INTO `enginedimensions` VALUES (16, 28, 750.00, 600.00, 500.00, 150.00, 120.00, 350.00, 95.00, 65.00);
INSERT INTO `enginedimensions` VALUES (17, 29, 600.00, 500.00, 400.00, 250.00, 120.00, 350.00, 95.00, 65.00);
INSERT INTO `enginedimensions` VALUES (18, 30, 600.00, 500.00, 400.00, 250.00, 120.00, 300.00, 90.00, 60.00);
INSERT INTO `enginedimensions` VALUES (19, 31, 800.00, 600.00, 500.00, 300.00, 150.00, 400.00, 100.00, 70.00);
INSERT INTO `enginedimensions` VALUES (20, 32, 600.00, 500.00, 400.00, 1000.00, 120.00, 300.00, 90.00, 60.00);
INSERT INTO `enginedimensions` VALUES (21, 89, 1200.00, 600.00, 700.00, 200.00, 100.00, 300.00, 80.00, 50.00);
INSERT INTO `enginedimensions` VALUES (22, 90, 800.00, 500.00, 600.00, 130.00, 90.00, 280.00, 75.00, 45.00);
INSERT INTO `enginedimensions` VALUES (23, 91, 1100.00, 600.00, 650.00, 160.00, 110.00, 300.00, 85.00, 55.00);
INSERT INTO `enginedimensions` VALUES (24, 92, 1050.00, 550.00, 600.00, 150.00, 130.00, 340.00, 92.00, 65.00);
INSERT INTO `enginedimensions` VALUES (25, 93, 900.00, 500.00, 550.00, 120.00, 100.00, 280.00, 80.00, 50.00);
INSERT INTO `enginedimensions` VALUES (26, 94, 1150.00, 650.00, 700.00, 180.00, 120.00, 320.00, 90.00, 60.00);
INSERT INTO `enginedimensions` VALUES (27, 95, 1250.00, 700.00, 750.00, 180.00, 140.00, 360.00, 100.00, 70.00);
INSERT INTO `enginedimensions` VALUES (28, 96, 1300.00, 700.00, 800.00, 220.00, 150.00, 350.00, 95.00, 65.00);
INSERT INTO `enginedimensions` VALUES (29, 53, 600.00, 400.00, 300.00, 200.00, 100.00, 250.00, 100.00, 80.00);
INSERT INTO `enginedimensions` VALUES (30, 54, 700.00, 500.00, 400.00, 180.00, 120.00, 300.00, 90.00, 60.00);
INSERT INTO `enginedimensions` VALUES (31, 55, 800.00, 600.00, 500.00, 150.00, 140.00, 350.00, 110.00, 90.00);
INSERT INTO `enginedimensions` VALUES (32, 56, 850.00, 600.00, 550.00, 220.00, 150.00, 375.00, 120.00, 95.00);
INSERT INTO `enginedimensions` VALUES (33, 103, 600.00, 500.00, 300.00, 200.00, 50.00, 250.00, 100.00, 80.00);
INSERT INTO `enginedimensions` VALUES (34, 104, 700.00, 600.00, 400.00, 180.00, 50.00, 300.00, 90.00, 60.00);
INSERT INTO `enginedimensions` VALUES (35, 105, 800.00, 550.00, 500.00, 150.00, 50.00, 350.00, 110.00, 90.00);
INSERT INTO `enginedimensions` VALUES (36, 33, 600.00, 500.00, 400.00, 120.00, 100.00, 300.00, 80.00, 50.00);
INSERT INTO `enginedimensions` VALUES (37, 34, 700.00, 600.00, 500.00, 99999.00, 110.00, 320.00, 90.00, 60.00);
INSERT INTO `enginedimensions` VALUES (38, 35, 800.00, 700.00, 600.00, 150.00, 120.00, 350.00, 100.00, 70.00);
INSERT INTO `enginedimensions` VALUES (39, 113, 600.00, 500.00, 400.00, 200.00, 100.00, 300.00, 100.00, 80.00);
INSERT INTO `enginedimensions` VALUES (40, 114, 2000.00, 1500.00, 1000.00, 500.00, 120.00, 320.00, 150.00, 100.00);
INSERT INTO `enginedimensions` VALUES (41, 115, 700.00, 600.00, 500.00, 180.00, 120.00, 350.00, 90.00, 60.00);
INSERT INTO `enginedimensions` VALUES (42, 152, 600.00, 500.00, 300.00, 200.00, 100.00, 250.00, 80.00, 60.00);
INSERT INTO `enginedimensions` VALUES (43, 153, 700.00, 600.00, 400.00, 180.00, 120.00, 320.00, 90.00, 70.00);
INSERT INTO `enginedimensions` VALUES (44, 154, 800.00, 700.00, 500.00, 220.00, 140.00, 350.00, 95.00, 75.00);
INSERT INTO `enginedimensions` VALUES (45, 155, 600.00, 500.00, 300.00, 200.00, 100.00, 250.00, 80.00, 60.00);
INSERT INTO `enginedimensions` VALUES (46, 156, 700.00, 600.00, 400.00, 180.00, 120.00, 320.00, 90.00, 70.00);
INSERT INTO `enginedimensions` VALUES (47, 157, 600.00, 500.00, 400.00, 180.00, 105.00, 300.00, 85.00, 75.00);
INSERT INTO `enginedimensions` VALUES (48, 158, 600.00, 500.00, 300.00, 200.00, 100.00, 250.00, 80.00, 60.00);
INSERT INTO `enginedimensions` VALUES (49, 159, 30000.00, 10000.00, 2000.00, 1000.00, 5000.00, 300.00, 85.00, 75.00);
INSERT INTO `enginedimensions` VALUES (50, 39, 600.00, 500.00, 400.00, 200.00, 100.00, 300.00, 100.00, 80.00);
INSERT INTO `enginedimensions` VALUES (51, 40, 700.00, 600.00, 500.00, 180.00, 120.00, 320.00, 90.00, 600.00);
INSERT INTO `enginedimensions` VALUES (52, 41, 800.00, 700.00, 600.00, 160.00, 140.00, 350.00, 95.00, 450.00);
INSERT INTO `enginedimensions` VALUES (53, 42, 900.00, 800.00, 700.00, 150.00, 160.00, 380.00, 100.00, 520.00);
INSERT INTO `enginedimensions` VALUES (101, 11, 610.50, 645.00, 635.00, 112.50, 96.00, 220.50, 72.00, 53.00);
INSERT INTO `enginedimensions` VALUES (102, 12, 725.00, 780.00, 690.00, 185.00, 108.50, 245.00, 85.00, 55.00);
INSERT INTO `enginedimensions` VALUES (103, 13, 585.00, 630.00, 610.00, 98.70, 94.50, 215.00, 70.00, 50.00);
INSERT INTO `enginedimensions` VALUES (104, 14, 710.00, 765.00, 680.00, 192.00, 107.00, 240.00, 84.00, 54.00);
INSERT INTO `enginedimensions` VALUES (105, 15, 620.00, 655.00, 640.00, 148.20, 97.50, 225.00, 73.00, 52.00);
INSERT INTO `enginedimensions` VALUES (106, 16, 850.00, 900.00, 760.00, 220.00, 115.00, 260.00, 90.00, 58.00);
INSERT INTO `enginedimensions` VALUES (107, 17, 630.00, 670.00, 650.00, 132.50, 98.00, 228.00, 74.00, 53.00);
INSERT INTO `enginedimensions` VALUES (108, 18, 880.00, 920.00, 780.00, 245.00, 120.00, 270.00, 95.00, 60.00);
INSERT INTO `enginedimensions` VALUES (109, 19, 680.00, 720.00, 710.00, 152.30, 102.00, 235.00, 76.00, 54.00);
INSERT INTO `enginedimensions` VALUES (110, 20, 595.00, 640.00, 620.00, 117.80, 95.00, 218.00, 71.00, 51.00);
INSERT INTO `enginedimensions` VALUES (111, 21, 750.00, 800.00, 700.00, 198.00, 110.00, 250.00, 86.00, 56.00);
INSERT INTO `enginedimensions` VALUES (112, 22, 615.00, 660.00, 635.00, 135.40, 96.50, 222.00, 72.50, 52.50);
COMMIT;

-- ----------------------------
-- Table structure for enginedynamics
-- ----------------------------
DROP TABLE IF EXISTS `enginedynamics`;
CREATE TABLE `enginedynamics` (
  `Dynamics_ID` int NOT NULL AUTO_INCREMENT COMMENT '动态数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Max_turn` int NOT NULL COMMENT '最大转速 (RPM)',
  `Idle_turn` int NOT NULL COMMENT '怠速转速 (RPM)',
  `Peak_Torque` int NOT NULL COMMENT '峰值扭矩转速 (RPM)',
  `Peak_Power` int NOT NULL COMMENT '峰值功率转速 (RPM)',
  `Piston_Speed` decimal(10,2) NOT NULL COMMENT '活塞速度 (米/秒)',
  `Mean_Piston_Speed` decimal(10,2) NOT NULL COMMENT '平均活塞速度 (米/秒)',
  `Angular_Velocity` decimal(10,2) NOT NULL COMMENT '角速度 (弧度/秒)',
  PRIMARY KEY (`Dynamics_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginedynamics_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机动态性能数据表';

-- ----------------------------
-- Records of enginedynamics
-- ----------------------------
BEGIN;
INSERT INTO `enginedynamics` VALUES (1, 1, 7000, 800, 4000, 6000, 20.00, 15.00, 733.04);
INSERT INTO `enginedynamics` VALUES (2, 2, 8000, 750, 5000, 7000, 22.00, 16.00, 837.76);
INSERT INTO `enginedynamics` VALUES (3, 3, 6500, 700, 3500, 5500, 18.00, 14.00, 680.68);
INSERT INTO `enginedynamics` VALUES (4, 4, 7500, 800, 4500, 6500, 21.00, 15.50, 785.40);
INSERT INTO `enginedynamics` VALUES (5, 5, 6500, 750, 3000, 5000, 17.00, 13.00, 680.68);
INSERT INTO `enginedynamics` VALUES (6, 6, 6800, 780, 4000, 6000, 19.00, 14.50, 712.96);
INSERT INTO `enginedynamics` VALUES (7, 7, 7200, 800, 4500, 6500, 20.50, 15.20, 753.98);
INSERT INTO `enginedynamics` VALUES (8, 8, 6500, 750, 3500, 5500, 18.50, 14.20, 680.68);
INSERT INTO `enginedynamics` VALUES (9, 9, 7800, 850, 5000, 7000, 22.50, 16.50, 816.81);
INSERT INTO `enginedynamics` VALUES (10, 10, 8500, 900, 5500, 7500, 24.00, 17.50, 890.12);
INSERT INTO `enginedynamics` VALUES (11, 33, 8200, 750, 5200, 6200, 20.00, 15.00, 863.94);
INSERT INTO `enginedynamics` VALUES (12, 34, 7000, 800, 4800, 5500, 22.00, 16.00, 733.04);
INSERT INTO `enginedynamics` VALUES (13, 35, 7500, 700, 4000, 5000, 25.00, 18.00, 785.40);
INSERT INTO `enginedynamics` VALUES (14, 36, 7600, 800, 5800, 6600, 28.00, 20.00, 795.87);
INSERT INTO `enginedynamics` VALUES (15, 37, 8250, 900, 6000, 7000, 30.00, 22.00, 863.94);
INSERT INTO `enginedynamics` VALUES (16, 38, 9600, 800, 6000, 7000, 32.00, 30.00, 1005.31);
INSERT INTO `enginedynamics` VALUES (17, 39, 8200, 700, 6000, 7000, 28.00, 25.00, 863.94);
INSERT INTO `enginedynamics` VALUES (18, 40, 7000, 800, 4800, 5500, 22.00, 20.00, 733.04);
INSERT INTO `enginedynamics` VALUES (19, 41, 7500, 850, 5000, 6000, 30.00, 28.00, 785.40);
INSERT INTO `enginedynamics` VALUES (20, 42, 7600, 800, 5800, 6600, 28.00, 26.00, 795.87);
INSERT INTO `enginedynamics` VALUES (21, 43, 8250, 900, 6000, 7000, 32.00, 30.00, 863.94);
INSERT INTO `enginedynamics` VALUES (22, 44, 8250, 900, 6000, 7000, 30.00, 28.00, 863.94);
INSERT INTO `enginedynamics` VALUES (23, 45, 8500, 950, 6000, 7200, 32.00, 30.00, 889.00);
INSERT INTO `enginedynamics` VALUES (24, 46, 7000, 700, 5000, 6000, 25.00, 24.00, 733.04);
INSERT INTO `enginedynamics` VALUES (25, 47, 8000, 800, 6000, 7000, 28.00, 26.00, 837.76);
INSERT INTO `enginedynamics` VALUES (26, 48, 4500, 800, 1800, 3000, 10.00, 9.50, 471.24);
INSERT INTO `enginedynamics` VALUES (27, 49, 4000, 750, 1600, 2800, 9.80, 9.00, 418.88);
INSERT INTO `enginedynamics` VALUES (28, 50, 4200, 800, 1500, 3200, 10.20, 9.80, 439.82);
INSERT INTO `enginedynamics` VALUES (29, 51, 4800, 850, 1900, 4000, 11.00, 10.50, 502.65);
INSERT INTO `enginedynamics` VALUES (30, 52, 4000, 700, 1700, 3500, 9.00, 8.50, 418.88);
INSERT INTO `enginedynamics` VALUES (31, 89, 6500, 800, 5000, 6000, 26.00, 24.00, 680.68);
INSERT INTO `enginedynamics` VALUES (32, 90, 7000, 800, 4800, 5500, 22.00, 20.00, 733.04);
INSERT INTO `enginedynamics` VALUES (33, 91, 7500, 850, 5000, 6000, 28.00, 26.00, 785.40);
INSERT INTO `enginedynamics` VALUES (34, 92, 7600, 800, 5800, 6600, 25.00, 24.00, 795.87);
INSERT INTO `enginedynamics` VALUES (35, 93, 7000, 700, 5000, 6000, 23.00, 22.00, 733.04);
INSERT INTO `enginedynamics` VALUES (36, 94, 4500, 700, 3000, 4000, 18.00, 17.00, 471.24);
INSERT INTO `enginedynamics` VALUES (37, 95, 8250, 900, 6000, 7000, 30.00, 28.00, 863.94);
INSERT INTO `enginedynamics` VALUES (38, 96, 6000, 700, 4000, 5000, 24.00, 22.00, 628.32);
INSERT INTO `enginedynamics` VALUES (39, 53, 6000, 800, 4000, 5000, 15.00, 14.00, 628.32);
INSERT INTO `enginedynamics` VALUES (40, 54, 7000, 900, 4500, 5500, 18.00, 16.00, 733.04);
INSERT INTO `enginedynamics` VALUES (41, 55, 8000, 1000, 5000, 6000, 20.00, 18.00, 837.76);
INSERT INTO `enginedynamics` VALUES (42, 56, 8500, 800, 6000, 7500, 22.00, 20.00, 890.00);
INSERT INTO `enginedynamics` VALUES (43, 142, 6500, 800, 4000, 6000, 20.00, 18.00, 400.00);
INSERT INTO `enginedynamics` VALUES (44, 143, 6000, 700, 4500, 5500, 22.00, 20.00, 380.00);
INSERT INTO `enginedynamics` VALUES (45, 144, 6200, 850, 5000, 6000, 24.00, 22.00, 390.00);
INSERT INTO `enginedynamics` VALUES (46, 152, 8000, 800, 4000, 6000, 20.00, 18.00, 837.76);
INSERT INTO `enginedynamics` VALUES (47, 153, 7000, 900, 4500, 5500, 18.00, 16.00, 733.04);
INSERT INTO `enginedynamics` VALUES (48, 154, 7200, 700, 5000, 6000, 22.00, 20.00, 754.00);
INSERT INTO `enginedynamics` VALUES (49, 160, 6800, 800, 4000, 6000, 25.50, 25.40, 712.30);
INSERT INTO `enginedynamics` VALUES (50, 161, 7000, 900, 4500, 5500, 18.00, 17.50, 733.00);
INSERT INTO `enginedynamics` VALUES (51, 162, 7200, 700, 5000, 6000, 22.00, 21.80, 754.00);
INSERT INTO `enginedynamics` VALUES (52, 163, 6500, 800, 1500, 6000, 20.00, 18.00, 680.68);
INSERT INTO `enginedynamics` VALUES (53, 164, 7000, 900, 1500, 5500, 22.00, 20.00, 733.04);
INSERT INTO `enginedynamics` VALUES (54, 165, 7600, 700, 2000, 7000, 24.00, 22.00, 795.87);
INSERT INTO `enginedynamics` VALUES (55, 166, 7500, 800, 1800, 6500, 23.00, 21.00, 785.40);
COMMIT;

-- ----------------------------
-- Table structure for enginematerials
-- ----------------------------
DROP TABLE IF EXISTS `enginematerials`;
CREATE TABLE `enginematerials` (
  `Material_ID` int NOT NULL AUTO_INCREMENT COMMENT '材料数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Block_Material` enum('Cast Iron','Aluminum','Magnesium') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缸体材料',
  `Head_Material` enum('Aluminum','Cast Iron','Titanium') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缸盖材料',
  `Piston_Material` enum('Aluminum','Forged Aluminum','Steel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活塞材料',
  `Crankshaft_Material` enum('Forged Steel','Cast Iron','Billet Steel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '曲轴材料',
  `Connecting_Rod_Material` enum('Steel','Titanium','Aluminum') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '连杆材料',
  `Valve_Material` enum('Stainless Steel','Titanium','Inconel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '气门材料',
  `Coating_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '涂层类型',
  `Heat_Treatment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '热处理方式',
  PRIMARY KEY (`Material_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginematerials_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机材料信息表';

-- ----------------------------
-- Records of enginematerials
-- ----------------------------
BEGIN;
INSERT INTO `enginematerials` VALUES (1, 33, 'Cast Iron', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (2, 34, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (3, 35, 'Cast Iron', 'Cast Iron', 'Steel', 'Cast Iron', 'Steel', 'Inconel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (4, 36, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (5, 37, 'Magnesium', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (6, 38, 'Cast Iron', 'Cast Iron', 'Steel', 'Cast Iron', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (7, 81, 'Cast Iron', 'Aluminum', 'Steel', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (8, 82, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (9, 83, 'Cast Iron', 'Cast Iron', 'Steel', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (10, 84, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (11, 85, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Aluminum', 'Inconel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (12, 86, 'Cast Iron', 'Aluminum', 'Steel', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (13, 87, 'Magnesium', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (14, 88, 'Cast Iron', 'Cast Iron', 'Steel', 'Forged Steel', 'Steel', 'Stainless Steel', 'Ceramic Coating', 'Tempered');
INSERT INTO `enginematerials` VALUES (15, 53, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (16, 54, 'Cast Iron', 'Aluminum', 'Steel', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (17, 55, 'Cast Iron', 'Cast Iron', 'Steel', 'Cast Iron', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (18, 56, 'Cast Iron', 'Aluminum', 'Steel', 'Forged Steel', 'Titanium', 'Titanium', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (21, 1, 'Cast Iron', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (22, 2, 'Aluminum', 'Aluminum', 'Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'None', 'Tempered');
INSERT INTO `enginematerials` VALUES (23, 3, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (24, 4, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (25, 5, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Inconel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (26, 6, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'None', 'Tempered');
INSERT INTO `enginematerials` VALUES (27, 7, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Inconel', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (28, 8, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'None', 'Tempered');
INSERT INTO `enginematerials` VALUES (29, 9, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (30, 10, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Inconel', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (31, 108, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (32, 109, 'Magnesium', 'Cast Iron', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (33, 110, 'Cast Iron', 'Cast Iron', 'Steel', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (34, 111, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (35, 112, 'Aluminum', 'Cast Iron', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Ceramic Coating', 'Tempered');
INSERT INTO `enginematerials` VALUES (36, 11, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Billet Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (37, 12, 'Cast Iron', 'Cast Iron', 'Steel', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (38, 13, 'Magnesium', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Aluminum', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (39, 168, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (40, 169, 'Cast Iron', 'Cast Iron', 'Steel', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (41, 170, 'Magnesium', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (42, 174, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (43, 175, 'Cast Iron', 'Cast Iron', 'Steel', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (44, 176, 'Cast Iron', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (45, 177, 'Magnesium', 'Cast Iron', 'Steel', 'Forged Steel', 'Aluminum', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (46, 39, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials` VALUES (47, 40, 'Cast Iron', 'Cast Iron', 'Steel', 'Forged Steel', 'Steel', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials` VALUES (48, 41, 'Magnesium', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials` VALUES (49, 42, 'Aluminum', 'Cast Iron', 'Steel', 'Forged Steel', 'Steel', 'Titanium', 'Thermal Barrier', 'Tempered');
COMMIT;

-- ----------------------------
-- Table structure for enginematerials_copy1
-- ----------------------------
DROP TABLE IF EXISTS `enginematerials_copy1`;
CREATE TABLE `enginematerials_copy1` (
  `Material_ID` int NOT NULL AUTO_INCREMENT COMMENT '材料数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Block_Material` enum('Cast Iron','Aluminum','Magnesium') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缸体材料',
  `Head_Material` enum('Aluminum','Cast Iron','Titanium') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缸盖材料',
  `Piston_Material` enum('Aluminum','Forged Aluminum','Steel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活塞材料',
  `Crankshaft_Material` enum('Forged Steel','Cast Iron','Billet Steel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '曲轴材料',
  `Connecting_Rod_Material` enum('Steel','Titanium','Aluminum') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '连杆材料',
  `Valve_Material` enum('Stainless Steel','Titanium','Inconel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '气门材料',
  `Coating_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '涂层类型',
  `Heat_Treatment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '热处理方式',
  PRIMARY KEY (`Material_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginematerials_copy1_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机材料信息表';

-- ----------------------------
-- Records of enginematerials_copy1
-- ----------------------------
BEGIN;
INSERT INTO `enginematerials_copy1` VALUES (21, 1, 'Cast Iron', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials_copy1` VALUES (22, 2, 'Aluminum', 'Aluminum', 'Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'None', 'Tempered');
INSERT INTO `enginematerials_copy1` VALUES (23, 3, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials_copy1` VALUES (24, 4, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials_copy1` VALUES (25, 5, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Inconel', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials_copy1` VALUES (26, 6, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'None', 'Tempered');
INSERT INTO `enginematerials_copy1` VALUES (27, 7, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Inconel', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials_copy1` VALUES (28, 8, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Steel', 'Stainless Steel', 'None', 'Tempered');
INSERT INTO `enginematerials_copy1` VALUES (29, 9, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Titanium', 'Thermal Barrier', 'Quenched');
INSERT INTO `enginematerials_copy1` VALUES (30, 10, 'Aluminum', 'Aluminum', 'Forged Aluminum', 'Forged Steel', 'Titanium', 'Inconel', 'Ceramic Coating', 'Quenched');
INSERT INTO `enginematerials_copy1` VALUES (31, 8, 'Magnesium', 'Aluminum', 'Aluminum', 'Cast Iron', 'Steel', 'Stainless Steel', 'None', 'Tempered');
INSERT INTO `enginematerials_copy1` VALUES (32, 5, 'Cast Iron', 'Aluminum', 'Aluminum', 'Cast Iron', 'Steel', 'Stainless Steel', 'Thermal Barrier', 'Tempered');
INSERT INTO `enginematerials_copy1` VALUES (33, 4, 'Cast Iron', 'Aluminum', 'Aluminum', 'Cast Iron', 'Steel', 'Stainless Steel', 'Ceramic Coating', 'Quenched');
COMMIT;

-- ----------------------------
-- Table structure for engineperformance
-- ----------------------------
DROP TABLE IF EXISTS `engineperformance`;
CREATE TABLE `engineperformance` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT COMMENT '性能数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Power_To_Weight_Ratio` decimal(10,2) NOT NULL COMMENT '功率重量比 (马力/公斤)',
  `BMEP` decimal(10,2) NOT NULL COMMENT '平均有效压力 (Bar)',
  `Specific_Power` decimal(10,2) NOT NULL COMMENT '比功率 (马力/升)',
  `Specific_Torque` decimal(10,2) NOT NULL COMMENT '比扭矩 (牛米/升)',
  `Thermal_Efficiency` decimal(10,2) NOT NULL COMMENT '热效率 (%)',
  `Fuel_Consumption` decimal(10,2) NOT NULL COMMENT '燃油消耗率 (升/100公里)',
  PRIMARY KEY (`Performance_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `engineperformance_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机性能数据表';

-- ----------------------------
-- Records of engineperformance
-- ----------------------------
BEGIN;
INSERT INTO `engineperformance` VALUES (1, 68, 1.42, 10.00, 106.25, 93.75, 35.00, 8.00);
INSERT INTO `engineperformance` VALUES (2, 69, 2.00, 12.00, 135.00, 190.00, 30.00, 7.50);
INSERT INTO `engineperformance` VALUES (3, 70, 250.00, 11.00, 156.25, 137.50, 32.00, 6.80);
INSERT INTO `engineperformance` VALUES (4, 71, 600.00, 12.50, 150.00, 135.00, 38.00, 7.20);
INSERT INTO `engineperformance` VALUES (5, 72, 1000.00, 14.00, 125.00, 187.50, 40.00, 6.00);
INSERT INTO `engineperformance` VALUES (6, 11, 1.42, 10.00, 106.25, 93.75, 35.00, 8.00);
INSERT INTO `engineperformance` VALUES (7, 12, 2.00, 12.00, 135.00, 190.00, 28.00, 7.50);
INSERT INTO `engineperformance` VALUES (8, 13, 2.50, 16.00, 150.00, 200.00, 25.00, 6.80);
INSERT INTO `engineperformance` VALUES (9, 14, 3.00, 14.00, 156.25, 137.50, 22.00, 6.50);
INSERT INTO `engineperformance` VALUES (10, 15, 3.50, 17.00, 160.00, 210.00, 20.00, 7.20);
INSERT INTO `engineperformance` VALUES (11, 16, 1.42, 1000.00, 106.25, 1000000.00, 89.00, 8.00);
INSERT INTO `engineperformance` VALUES (12, 17, 2.00, 1050.00, 135.00, 1000000.00, 90.00, 7.50);
INSERT INTO `engineperformance` VALUES (13, 18, 2.50, 1100.00, 150.00, 1000000.00, 91.00, 6.80);
INSERT INTO `engineperformance` VALUES (14, 19, 3.00, 1150.00, 156.25, 1000000.00, 92.00, 6.50);
INSERT INTO `engineperformance` VALUES (15, 20, 3.50, 1200.00, 160.00, 1000000.00, 93.00, 7.20);
INSERT INTO `engineperformance` VALUES (16, 21, 2.00, 12.00, 135.00, 190.00, 30.00, 7.00);
INSERT INTO `engineperformance` VALUES (17, 22, 2.50, 16.00, 150.00, 200.00, 35.00, 6.00);
INSERT INTO `engineperformance` VALUES (18, 73, 2.00, 100.00, 80.00, 100.00, 35.00, -5.00);
INSERT INTO `engineperformance` VALUES (19, 74, 1.90, 120.00, 125.00, 175.00, 38.00, 500.00);
INSERT INTO `engineperformance` VALUES (20, 75, 1.80, 130.00, 85.00, 114.00, 36.00, 600.00);
INSERT INTO `engineperformance` VALUES (21, 76, 2.83, 140.00, 141.00, 156.00, 40.00, 700.00);
INSERT INTO `engineperformance` VALUES (22, 77, 1.25, 12.50, 75.00, 105.00, 40.00, 5.50);
INSERT INTO `engineperformance` VALUES (23, 78, 1.05, 15.00, 95.00, 200.00, 42.00, 1000.00);
INSERT INTO `engineperformance` VALUES (24, 79, 3.00, 0.00, 214.00, 0.00, 95.00, -10.00);
INSERT INTO `engineperformance` VALUES (25, 80, 0.93, 12.00, 100.00, 135.00, 38.00, 500.00);
INSERT INTO `engineperformance` VALUES (31, 1, 1.60, 12.50, 106.67, 142.33, 35.00, 9.50);
INSERT INTO `engineperformance` VALUES (32, 2, 1.47, 10.80, 110.00, 103.00, 38.00, 8.00);
INSERT INTO `engineperformance` VALUES (33, 3, 1.72, 11.20, 134.78, 152.17, 37.00, 9.00);
INSERT INTO `engineperformance` VALUES (34, 4, 2.24, 13.00, 141.67, 183.33, 36.00, 10.00);
INSERT INTO `engineperformance` VALUES (35, 5, 2.60, 14.50, 104.84, 104.84, 34.00, 12.00);
INSERT INTO `engineperformance` VALUES (36, 6, 1.82, 12.00, 155.00, 200.00, 36.50, 8.50);
INSERT INTO `engineperformance` VALUES (37, 7, 2.60, 13.80, 208.00, 250.00, 37.50, 9.20);
INSERT INTO `engineperformance` VALUES (38, 8, 1.49, 11.50, 108.33, 115.42, 35.50, 9.80);
INSERT INTO `engineperformance` VALUES (39, 9, 1.69, 12.20, 93.42, 105.26, 38.50, 10.50);
INSERT INTO `engineperformance` VALUES (40, 10, 2.67, 15.00, 123.08, 110.46, 36.00, 14.00);
INSERT INTO `engineperformance` VALUES (41, 81, 2.00, 100.00, 80.00, 100.00, 36.00, 8.00);
INSERT INTO `engineperformance` VALUES (42, 82, 1.90, 120.00, 125.00, 175.00, 34.00, 7.50);
INSERT INTO `engineperformance` VALUES (43, 83, 1.80, 130.00, 85.00, 114.00, 37.00, 6.80);
INSERT INTO `engineperformance` VALUES (44, 84, 2.83, 140.00, 141.00, 156.00, 38.00, 6.50);
INSERT INTO `engineperformance` VALUES (45, 85, 1.25, 12.50, 75.00, 105.00, 40.00, 5.50);
INSERT INTO `engineperformance` VALUES (46, 86, 1.05, 15.00, 95.00, 200.00, 39.00, 7.00);
INSERT INTO `engineperformance` VALUES (47, 87, 3.00, 0.00, 214.00, 0.00, 95.00, 10.00);
INSERT INTO `engineperformance` VALUES (48, 88, 0.93, 12.00, 100.00, 135.00, 32.00, 12.00);
INSERT INTO `engineperformance` VALUES (49, 33, 1.42, 10.00, 106.25, 93.75, 35.00, 8.00);
INSERT INTO `engineperformance` VALUES (50, 34, 1.50, 12.00, 110.00, 95.00, 30.00, 7.50);
INSERT INTO `engineperformance` VALUES (51, 174, 2.00, 12.00, 1.50, 9.80, 35.00, 8.00);
INSERT INTO `engineperformance` VALUES (52, 175, 0.42, 18.00, 4.20, 22.10, 42.00, 7.50);
INSERT INTO `engineperformance` VALUES (53, 176, 0.40, 20.00, 4.00, 20.00, 45.00, 7.00);
INSERT INTO `engineperformance` VALUES (54, 177, 0.38, 19.00, 3.80, 18.00, 39.00, 6.50);
COMMIT;

-- ----------------------------
-- Table structure for enginethermodynamics
-- ----------------------------
DROP TABLE IF EXISTS `enginethermodynamics`;
CREATE TABLE `enginethermodynamics` (
  `Thermodynamics_ID` int NOT NULL AUTO_INCREMENT COMMENT '热力学数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Combustion_Efficiency` decimal(10,2) NOT NULL COMMENT '燃烧效率 (%)',
  `Exhaust_Gas_Temperature` decimal(10,2) NOT NULL COMMENT '排气温度 (°C)',
  `Coolant_Temperature` decimal(10,2) NOT NULL COMMENT '冷却液温度 (°C)',
  `Oil_Temperature` decimal(10,2) NOT NULL COMMENT '机油温度 (°C)',
  `Heat_Rejection_Rate` decimal(10,2) NOT NULL COMMENT '热排放率 (千瓦)',
  `Specific_Heat_Capacity` decimal(10,2) NOT NULL COMMENT '比热容 (焦耳/千克·K)',
  `Thermal_Conductivity` decimal(10,2) NOT NULL COMMENT '热导率 (瓦/米·K)',
  PRIMARY KEY (`Thermodynamics_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginethermodynamics_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机热力学数据表';

-- ----------------------------
-- Records of enginethermodynamics
-- ----------------------------
BEGIN;
INSERT INTO `enginethermodynamics` VALUES (1, 1, 35.00, 850.00, 90.00, 100.00, 50.00, 0.90, 150.00);
INSERT INTO `enginethermodynamics` VALUES (2, 2, 38.00, 800.00, 85.00, 95.00, 45.00, 0.92, 155.00);
INSERT INTO `enginethermodynamics` VALUES (3, 3, 37.00, 820.00, 88.00, 98.00, 48.00, 0.91, 152.00);
INSERT INTO `enginethermodynamics` VALUES (4, 4, 36.00, 830.00, 89.00, 99.00, 49.00, 0.90, 153.00);
INSERT INTO `enginethermodynamics` VALUES (5, 5, 34.00, 870.00, 92.00, 102.00, 52.00, 0.89, 148.00);
INSERT INTO `enginethermodynamics` VALUES (6, 6, 36.50, 840.00, 90.00, 100.00, 50.50, 0.91, 151.00);
INSERT INTO `enginethermodynamics` VALUES (7, 7, 37.50, 850.00, 91.00, 101.00, 51.00, 0.92, 154.00);
INSERT INTO `enginethermodynamics` VALUES (8, 8, 35.50, 830.00, 89.00, 99.00, 49.50, 0.90, 152.00);
INSERT INTO `enginethermodynamics` VALUES (9, 9, 38.50, 810.00, 87.00, 97.00, 47.00, 0.93, 156.00);
INSERT INTO `enginethermodynamics` VALUES (10, 10, 36.00, 880.00, 93.00, 103.00, 53.00, 0.88, 147.00);
INSERT INTO `enginethermodynamics` VALUES (11, 108, 95.00, 600.00, 90.00, 85.00, 50.00, 480.00, 21.90);
INSERT INTO `enginethermodynamics` VALUES (12, 109, 92.00, 620.00, 95.00, 80.00, 55.00, 500.00, 80.00);
INSERT INTO `enginethermodynamics` VALUES (13, 110, 90.00, 640.00, 90.00, 80.00, 60.00, 510.00, 50.00);
INSERT INTO `enginethermodynamics` VALUES (14, 111, 91.00, 610.00, 85.00, 85.00, 52.00, 520.00, 22.10);
INSERT INTO `enginethermodynamics` VALUES (15, 112, 93.00, 630.00, 88.00, 80.00, 58.00, 530.00, 80.00);
INSERT INTO `enginethermodynamics` VALUES (16, 116, 95.00, 600.00, 90.00, 85.00, 50.00, 480.00, 21.90);
INSERT INTO `enginethermodynamics` VALUES (17, 117, 92.00, 620.00, 105.00, 80.00, 55.00, 500.00, 22.10);
INSERT INTO `enginethermodynamics` VALUES (18, 118, 90.00, 640.00, 110.00, 80.00, 60.00, 510.00, 22.50);
INSERT INTO `enginethermodynamics` VALUES (19, 119, 91.00, 610.00, 102.00, 85.00, 52.00, 520.00, 23.00);
INSERT INTO `enginethermodynamics` VALUES (20, 120, 93.00, 630.00, 100.00, 80.00, 58.00, 530.00, 23.50);
INSERT INTO `enginethermodynamics` VALUES (21, 121, 94.00, 650.00, 110.00, 85.00, 60.00, 540.00, 24.00);
INSERT INTO `enginethermodynamics` VALUES (22, 122, 99.00, 700.00, 80.00, 70.00, 50.00, 550.00, 24.50);
INSERT INTO `enginethermodynamics` VALUES (23, 123, 94.00, 640.00, 105.00, 80.00, 60.00, 530.00, 23.00);
INSERT INTO `enginethermodynamics` VALUES (24, 124, 95.00, 600.00, 90.00, 85.00, 50.00, 480.00, 21.90);
INSERT INTO `enginethermodynamics` VALUES (25, 125, 92.00, 620.00, 95.00, 80.00, 55.00, 500.00, 22.10);
INSERT INTO `enginethermodynamics` VALUES (26, 126, 90.00, 640.00, 100.00, 80.00, 60.00, 510.00, 22.50);
INSERT INTO `enginethermodynamics` VALUES (27, 127, 91.00, 610.00, 85.00, 85.00, 52.00, 520.00, 23.00);
INSERT INTO `enginethermodynamics` VALUES (28, 128, 93.00, 630.00, 88.00, 80.00, 58.00, 530.00, 23.50);
INSERT INTO `enginethermodynamics` VALUES (29, 129, 95.00, 600.00, 125.00, 85.00, 50.00, 480.00, 21.90);
INSERT INTO `enginethermodynamics` VALUES (30, 130, 92.00, 620.00, 130.00, 80.00, 55.00, 500.00, 22.10);
INSERT INTO `enginethermodynamics` VALUES (31, 131, 90.00, 640.00, 110.00, 80.00, 60.00, 510.00, 22.50);
INSERT INTO `enginethermodynamics` VALUES (32, 132, 91.00, 610.00, 135.00, 85.00, 52.00, 520.00, 23.00);
INSERT INTO `enginethermodynamics` VALUES (33, 133, 93.00, 630.00, 115.00, 80.00, 58.00, 530.00, 23.50);
INSERT INTO `enginethermodynamics` VALUES (34, 134, 94.00, 650.00, 140.00, 85.00, 60.00, 540.00, 24.00);
INSERT INTO `enginethermodynamics` VALUES (35, 135, 99.00, 700.00, 122.00, 70.00, 50.00, 550.00, 24.50);
INSERT INTO `enginethermodynamics` VALUES (36, 136, 94.00, 640.00, 125.00, 80.00, 60.00, 530.00, 23.00);
INSERT INTO `enginethermodynamics` VALUES (37, 11, 35.00, 600.00, 90.00, 85.00, 1750.00, 1000.00, 21.90);
INSERT INTO `enginethermodynamics` VALUES (38, 137, 35.00, 620.00, 95.00, 80.00, 1750.00, 4200.00, 22.10);
INSERT INTO `enginethermodynamics` VALUES (39, 12, 35.00, 600.00, 90.00, 85.00, 1750.00, 1000.00, 21.90);
INSERT INTO `enginethermodynamics` VALUES (40, 13, 200.00, 620.00, 95.00, 80.00, 1000.00, 1050.00, 22.10);
INSERT INTO `enginethermodynamics` VALUES (41, 14, 30.00, 640.00, 90.00, 80.00, -1000.00, 1100.00, 22.50);
INSERT INTO `enginethermodynamics` VALUES (42, 168, 35.00, 600.00, 90.00, 85.00, 50.00, 480.00, 21.90);
INSERT INTO `enginethermodynamics` VALUES (43, 169, 32.00, 950.00, 100.00, 80.00, 1750.00, 500.00, 22.10);
INSERT INTO `enginethermodynamics` VALUES (44, 170, 30.00, 800.00, 90.00, 80.00, 160.00, 510.00, 22.50);
COMMIT;

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

SET FOREIGN_KEY_CHECKS = 1;
