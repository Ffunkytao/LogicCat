/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : car

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:26:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for EnergyEfficiency
-- ----------------------------
DROP TABLE IF EXISTS `EnergyEfficiency`;
CREATE TABLE `EnergyEfficiency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(50) DEFAULT NULL,
  `energySaved` decimal(10,2) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of EnergyEfficiency
-- ----------------------------
BEGIN;
INSERT INTO `EnergyEfficiency` VALUES (1, 'DeviceA', 100.50, '2025-03-24 15:14:31');
INSERT INTO `EnergyEfficiency` VALUES (2, 'DeviceA', 200.75, '2024-08-24 15:14:31');
INSERT INTO `EnergyEfficiency` VALUES (3, 'DeviceB', 150.25, '2025-04-24 15:14:31');
INSERT INTO `EnergyEfficiency` VALUES (4, 'DeviceB', 180.00, '2024-10-24 15:14:31');
INSERT INTO `EnergyEfficiency` VALUES (5, 'DeviceC', 300.00, '2024-12-24 15:14:31');
INSERT INTO `EnergyEfficiency` VALUES (6, 'DeviceD', 50.00, '2025-05-24 15:14:31');
INSERT INTO `EnergyEfficiency` VALUES (7, 'DeviceE', 400.00, '2024-07-24 15:14:31');
INSERT INTO `EnergyEfficiency` VALUES (8, 'DeviceF', 250.00, '2025-01-24 15:14:31');
INSERT INTO `EnergyEfficiency` VALUES (9, 'DeviceG', 500.00, '2025-02-24 15:14:31');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `Car_ID` int NOT NULL AUTO_INCREMENT COMMENT '汽车唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '车型',
  `Year` int NOT NULL COMMENT '生产年份',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量（kg）',
  `Fuel_Efficiency_City` decimal(5,2) NOT NULL COMMENT '城市燃油效率（km/L）',
  `Fuel_Efficiency_Highway` decimal(5,2) NOT NULL COMMENT '高速燃油效率（km/L）',
  `Fuel_Tank_Capacity` decimal(7,2) DEFAULT NULL COMMENT '油箱容量（L）',
  `Battery_Capacity` decimal(6,2) DEFAULT NULL COMMENT '电池容量（kWh，适用于电动车）',
  `Range` int DEFAULT NULL COMMENT '续航里程（km，适用于电动车）',
  `Seating_Capacity` int NOT NULL COMMENT '座位数',
  `Cargo_Capacity` decimal(5,2) NOT NULL COMMENT '载货容量（L）',
  `Production_Volume` int DEFAULT NULL COMMENT '生产数量',
  PRIMARY KEY (`Car_ID`),
  KEY `Manufacturer_ID` (`Manufacturer_ID`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cars
-- ----------------------------
BEGIN;
INSERT INTO `cars` VALUES (1, 1, 'Corolla', 2022, 1325.00, 12.50, 15.00, 50.00, NULL, NULL, 5, 370.00, 1500000);
INSERT INTO `cars` VALUES (2, 2, 'Model 3', 2023, 1611.00, 0.00, 0.00, NULL, 75.00, 500, 5, 425.00, 500000);
INSERT INTO `cars` VALUES (3, 3, 'X5', 2022, 2240.00, 8.50, 10.50, 85.00, NULL, NULL, 7, 650.00, 200000);
INSERT INTO `cars` VALUES (4, 4, 'Mustang', 2022, 1500.00, 9.00, 12.00, 60.00, NULL, NULL, 4, 382.00, 100000);
INSERT INTO `cars` VALUES (5, 5, 'Golf', 2022, 1300.00, 13.00, 16.00, 50.00, NULL, NULL, 5, 380.00, 800000);
INSERT INTO `cars` VALUES (6, 6, 'Civic', 2022, 1275.00, 12.00, 15.00, 47.00, NULL, NULL, 5, 420.00, 1200000);
INSERT INTO `cars` VALUES (7, 7, 'Altima', 2022, 1450.00, 11.00, 14.00, 55.00, NULL, NULL, 5, 435.00, 600000);
INSERT INTO `cars` VALUES (8, 8, 'Tucson', 2022, 1550.00, 10.00, 13.00, 60.00, NULL, NULL, 5, 620.00, 700000);
INSERT INTO `cars` VALUES (9, 9, 'C-Class', 2022, 1600.00, 9.50, 12.50, 66.00, NULL, NULL, 5, 455.00, 300000);
INSERT INTO `cars` VALUES (10, 10, 'A4', 2022, 1580.00, 10.00, 13.00, 58.00, NULL, NULL, 5, 460.00, 250000);
INSERT INTO `cars` VALUES (11, 1, 'Camry', 2020, 1500.00, 13.50, 16.00, 60.00, NULL, NULL, 5, 450.00, 100000);
INSERT INTO `cars` VALUES (12, 2, 'Civic', 2020, 1300.00, 15.00, 18.00, 40.00, NULL, NULL, 5, 400.00, 150000);
INSERT INTO `cars` VALUES (13, 3, 'F-150', 2020, 2200.00, 8.50, 11.00, 91.00, NULL, NULL, 5, 100.00, 200000);
INSERT INTO `cars` VALUES (14, 4, 'Model S', 2020, 2100.00, 0.00, 0.00, 0.00, 100.00, 500, 5, 300.00, 500);
INSERT INTO `cars` VALUES (15, 5, 'Golf TSI', 2020, 1400.00, 12.00, 15.00, 50.00, NULL, NULL, 5, 350.00, 80000);
INSERT INTO `cars` VALUES (16, 6, 'Corvette ZR1', 2020, 1570.00, 7.80, 10.50, 70.00, NULL, NULL, 2, 150.00, 1000);
INSERT INTO `cars` VALUES (17, 7, 'S-Class', 2020, 2000.00, 9.00, 12.00, 80.00, NULL, NULL, 5, 500.00, 12000);
INSERT INTO `cars` VALUES (18, 1, 'Model A', 2020, 1500.00, 13.50, 16.00, 60.00, NULL, NULL, 5, 450.00, 90000);
INSERT INTO `cars` VALUES (19, 1, 'Model B', 2020, 1400.00, 12.00, 15.00, 50.00, NULL, NULL, 5, 350.00, 100000);
INSERT INTO `cars` VALUES (20, 1, 'Model C', 2020, 1700.00, 9.00, 12.00, 70.00, NULL, NULL, 5, 500.00, 110000);
INSERT INTO `cars` VALUES (21, 1, 'Model D', 2020, 1600.00, 10.00, 14.00, 65.00, NULL, NULL, 5, 400.00, 120000);
INSERT INTO `cars` VALUES (22, 1, 'Model E', 2020, 1500.00, 11.00, 13.50, 60.00, NULL, NULL, 5, 300.00, 70000);
INSERT INTO `cars` VALUES (23, 1, 'Model F', 2020, 1550.00, 10.50, 13.00, 60.00, NULL, NULL, 5, 320.00, 130000);
INSERT INTO `cars` VALUES (24, 1, 'Model A', 2020, 1500.00, 13.50, 16.00, 60.00, NULL, NULL, 5, 450.00, 90000);
INSERT INTO `cars` VALUES (25, 2, 'Model B', 2020, 1400.00, 12.00, 15.00, 50.00, NULL, NULL, 5, 350.00, 100000);
INSERT INTO `cars` VALUES (26, 3, 'Model C', 2020, 1700.00, 9.00, 12.00, 70.00, NULL, NULL, 5, 500.00, 110000);
INSERT INTO `cars` VALUES (27, 4, 'Model D', 2020, 1600.00, 10.00, 14.00, 65.00, NULL, NULL, 5, 400.00, 120000);
INSERT INTO `cars` VALUES (28, 5, 'Model E', 2020, 1500.00, 11.00, 13.50, 60.00, NULL, NULL, 5, 300.00, 70000);
INSERT INTO `cars` VALUES (29, 6, 'Model F', 2020, 1550.00, 10.50, 13.00, 60.00, NULL, NULL, 5, 320.00, 130000);
INSERT INTO `cars` VALUES (30, 1, 'Toyota Camry', 2020, 1500.00, 13.50, 16.00, 60.00, NULL, NULL, 5, 450.00, 100000);
INSERT INTO `cars` VALUES (31, 2, 'Honda Civic', 2021, 1300.00, 15.00, 18.00, 40.00, NULL, NULL, 5, 400.00, 150000);
INSERT INTO `cars` VALUES (32, 3, 'Ford Explorer', 2020, 2200.00, 10.00, 12.00, 50.00, NULL, NULL, 7, 700.00, 80000);
INSERT INTO `cars` VALUES (33, 4, 'Tesla Model S', 2020, 2100.00, 0.00, 0.00, 0.00, 100.00, 500, 5, 300.00, 50000);
INSERT INTO `cars` VALUES (34, 5, 'Volkswagen Golf', 2020, 1400.00, 12.00, 15.00, 50.00, NULL, NULL, 5, 350.00, 90000);
INSERT INTO `cars` VALUES (123, 101, 'ExampleCar', 2022, 1500.00, 12.00, 15.00, 50.00, NULL, NULL, 5, 400.00, 1000);
INSERT INTO `cars` VALUES (300, 123, 'NewModelX', 2023, 1450.00, 13.00, 16.00, 55.00, NULL, NULL, 5, 420.00, 50000);
INSERT INTO `cars` VALUES (400, 123, 'FuelTestCar', 2023, 1500.00, 10.00, 15.00, 60.00, NULL, NULL, 5, 400.00, 10000);
INSERT INTO `cars` VALUES (500, 123, 'HighRPMCar', 2023, 1500.00, 12.00, 15.00, 60.00, NULL, NULL, 5, 400.00, 10000);
INSERT INTO `cars` VALUES (600, 123, 'EnergyTestCar', 2023, 1800.00, 10.00, 13.00, 60.00, NULL, NULL, 5, 450.00, 10000);
INSERT INTO `cars` VALUES (700, 123, 'RainTestCar', 2023, 1400.00, 12.00, 15.00, 50.00, NULL, NULL, 5, 400.00, 10000);
INSERT INTO `cars` VALUES (800, 123, 'SuperEngineCar', 2023, 2000.00, 5.00, 7.00, 100.00, NULL, NULL, 2, 300.00, 100);
INSERT INTO `cars` VALUES (900, 600, 'AirPowerCar', 2023, 1500.00, 0.50, 15.00, 1000.00, NULL, NULL, 5, 400.00, 10000);
INSERT INTO `cars` VALUES (950, 123, 'RangeTestCar', 2023, 1600.00, 10.00, 13.00, 60.00, NULL, NULL, 5, 450.00, 10000);
INSERT INTO `cars` VALUES (980, 123, 'LapTestEV', 2024, 2000.00, 0.00, 0.00, NULL, 85.00, 500, 5, 500.00, 1000);
INSERT INTO `cars` VALUES (990, 123, 'AbsurdCar', 2024, 3000.00, 2.00, 3.00, 2.00, NULL, NULL, 2, 100.00, 10);
INSERT INTO `cars` VALUES (995, 123, 'AccelTestCar', 2024, 1500.00, 10.00, 12.00, 55.00, NULL, NULL, 5, 400.00, 500);
INSERT INTO `cars` VALUES (999, 123, 'SuperPowerCar', 2024, 1.00, 0.00, 0.00, 1.00, NULL, NULL, 1, 10.00, 1);
INSERT INTO `cars` VALUES (1000, 1000, '指定车型', 2024, 1500.00, 10.00, 13.00, 60.00, NULL, NULL, 5, 450.00, 5000);
INSERT INTO `cars` VALUES (1100, 123, '指定SUV车型', 2024, 2000.00, 8.00, 10.00, 70.00, NULL, NULL, 7, 600.00, 5000);
INSERT INTO `cars` VALUES (1200, 123, '指定跑车型号', 2024, 1200.00, 8.00, 12.00, 60.00, NULL, NULL, 2, 300.00, 2000);
INSERT INTO `cars` VALUES (1300, 123, '某款汽车', 2024, 1500.00, 10.00, 12.00, 60.00, NULL, NULL, 5, 400.00, 5000);
INSERT INTO `cars` VALUES (1400, 1400, '某车型A', 2024, 1500.00, 10.00, 12.00, 55.00, NULL, NULL, 5, 400.00, 5000);
INSERT INTO `cars` VALUES (1401, 1400, '某车型B', 2024, 1600.00, 9.00, 11.00, 60.00, NULL, NULL, 5, 420.00, 4000);
INSERT INTO `cars` VALUES (1402, 1400, '某车型C', 2024, 1700.00, 8.00, 10.00, 65.00, NULL, NULL, 5, 450.00, 3000);
INSERT INTO `cars` VALUES (1500, 123, '2020款A车', 2020, 1400.00, 12.00, 15.00, 50.00, NULL, NULL, 5, 400.00, 10000);
INSERT INTO `cars` VALUES (1501, 123, '2020款B车', 2020, 1500.00, 10.00, 13.00, 55.00, NULL, NULL, 5, 420.00, 8000);
INSERT INTO `cars` VALUES (1600, 123, 'TestFuelMonster', 2024, 3000.00, 1.00, 2.00, 999.99, NULL, NULL, 2, 100.00, 1);
INSERT INTO `cars` VALUES (1601, 123, 'TestFuelMonster', 2024, 3000.00, 1.00, 2.00, 999.99, NULL, NULL, 2, 100.00, 1);
INSERT INTO `cars` VALUES (1700, 123, '2020安全车A', 2020, 1400.00, 12.00, 15.00, 50.00, NULL, NULL, 5, 400.00, 10000);
INSERT INTO `cars` VALUES (1800, 123, 'FuelTestMonster', 2024, 3000.00, 0.50, 1.00, 999.99, NULL, NULL, 2, 100.00, 1);
COMMIT;

-- ----------------------------
-- Table structure for dimensions
-- ----------------------------
DROP TABLE IF EXISTS `dimensions`;
CREATE TABLE `dimensions` (
  `Dimension_ID` int NOT NULL AUTO_INCREMENT COMMENT '尺寸唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Length` decimal(5,2) NOT NULL COMMENT '长度（米）',
  `Width` decimal(5,2) NOT NULL COMMENT '宽度（米）',
  `Height` decimal(5,2) NOT NULL COMMENT '高度（米）',
  `Wheelbase` decimal(5,2) NOT NULL COMMENT '轴距（米）',
  `Ground_Clearance` decimal(4,2) DEFAULT NULL COMMENT '离地间隙（米）',
  `Curb_Weight` decimal(6,2) DEFAULT NULL COMMENT '整备质量（kg）',
  `Gross_Weight` decimal(6,2) DEFAULT NULL COMMENT '总质量（kg）',
  `Trunk_Capacity` decimal(5,2) DEFAULT NULL COMMENT '后备箱容量（L）',
  `Cargo_Capacity` decimal(5,2) DEFAULT NULL COMMENT '载货容量（L）',
  PRIMARY KEY (`Dimension_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `dimensions_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dimensions
-- ----------------------------
BEGIN;
INSERT INTO `dimensions` VALUES (11, 1, 4.63, 1.78, 1.45, 2.70, 0.15, 1325.00, 1800.00, 300.00, 500.00);
INSERT INTO `dimensions` VALUES (12, 2, 4.69, 1.85, 1.44, 2.88, 0.14, 1611.00, 2100.00, 425.00, 425.00);
INSERT INTO `dimensions` VALUES (13, 3, 4.92, 2.00, 1.74, 2.97, 0.21, 2240.00, 2800.00, 650.00, 650.00);
INSERT INTO `dimensions` VALUES (14, 4, 4.79, 1.91, 1.38, 2.72, 0.13, 1700.00, 2200.00, 382.00, 382.00);
INSERT INTO `dimensions` VALUES (15, 5, 4.26, 1.79, 1.46, 2.63, 0.15, 1300.00, 1800.00, 380.00, 380.00);
INSERT INTO `dimensions` VALUES (16, 6, 4.63, 1.80, 1.41, 2.70, 0.14, 1275.00, 1800.00, 420.00, 420.00);
INSERT INTO `dimensions` VALUES (17, 7, 4.86, 1.83, 1.44, 2.77, 0.15, 1450.00, 2000.00, 435.00, 435.00);
INSERT INTO `dimensions` VALUES (18, 8, 4.63, 1.86, 1.66, 2.68, 0.18, 1550.00, 2100.00, 620.00, 620.00);
INSERT INTO `dimensions` VALUES (19, 9, 4.75, 1.82, 1.43, 2.84, 0.14, 1600.00, 2200.00, 455.00, 455.00);
INSERT INTO `dimensions` VALUES (20, 10, 4.76, 1.84, 1.43, 2.82, 0.14, 1580.00, 2100.00, 460.00, 460.00);
INSERT INTO `dimensions` VALUES (21, 123, 4.75, 1.82, 1.43, 2.84, 0.14, 1500.00, 2000.00, 450.00, 450.00);
INSERT INTO `dimensions` VALUES (22, 600, 4.80, 1.85, 1.45, 2.80, 0.14, 1800.00, 2200.00, 450.00, 450.00);
INSERT INTO `dimensions` VALUES (23, 900, 4.75, 1.82, 1.43, 2.84, 0.14, 1500.00, 2000.00, 450.00, 450.00);
INSERT INTO `dimensions` VALUES (24, 980, 4.80, 1.90, 1.50, 2.90, 0.15, 2000.00, 2500.00, 500.00, 500.00);
INSERT INTO `dimensions` VALUES (25, 995, 4.75, 1.85, 1.45, 2.85, 0.15, 1500.00, 2000.00, 400.00, 400.00);
INSERT INTO `dimensions` VALUES (26, 999, 1.00, 1.00, 1.00, 1.00, 0.01, 1.00, 2.00, 1.00, 1.00);
INSERT INTO `dimensions` VALUES (27, 1000, 4.80, 1.85, 1.45, 2.85, 0.15, 1500.00, 2000.00, 450.00, 450.00);
INSERT INTO `dimensions` VALUES (28, 1100, 4.90, 1.95, 1.75, 2.90, 0.20, 2000.00, 2500.00, 600.00, 600.00);
COMMIT;

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
-- Table structure for engine_specs
-- ----------------------------
DROP TABLE IF EXISTS `engine_specs`;
CREATE TABLE `engine_specs` (
  `Engine_ID` int NOT NULL AUTO_INCREMENT COMMENT '发动机唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Displacement` decimal(6,2) NOT NULL COMMENT '排量（L）',
  `Horsepower` int NOT NULL COMMENT '马力（HP）',
  `Torque` int NOT NULL COMMENT '扭矩（Nm）',
  `Cylinder_Count` int NOT NULL COMMENT '气缸数量',
  `Compression_Ratio` decimal(4,2) DEFAULT NULL COMMENT '压缩比',
  `Max_RPM` int DEFAULT NULL COMMENT '最大转速（RPM）',
  `Fuel_Consumption_City` decimal(5,2) DEFAULT NULL COMMENT '城市油耗（L/100km）',
  `Fuel_Consumption_Highway` decimal(5,2) DEFAULT NULL COMMENT '高速油耗（L/100km）',
  `CO2_Emissions` decimal(6,2) DEFAULT NULL COMMENT '二氧化碳排放量（g/km）',
  PRIMARY KEY (`Engine_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `engine_specs_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of engine_specs
-- ----------------------------
BEGIN;
INSERT INTO `engine_specs` VALUES (61, 1, 1.80, 139, 173, 4, 10.50, 6500, 8.00, 6.50, 120.00);
INSERT INTO `engine_specs` VALUES (62, 2, 0.00, 283, 450, 0, NULL, NULL, 0.00, 0.00, 0.00);
INSERT INTO `engine_specs` VALUES (63, 3, 4.40, 523, 750, 8, 10.00, 7000, 12.00, 9.00, 220.00);
INSERT INTO `engine_specs` VALUES (64, 4, 5.00, 450, 510, 8, 11.00, 7500, 14.00, 10.00, 250.00);
INSERT INTO `engine_specs` VALUES (65, 5, 2.00, 170, 200, 4, 10.50, 6500, 7.50, 6.00, 110.00);
INSERT INTO `engine_specs` VALUES (66, 6, 1.50, 180, 177, 4, 10.20, 6600, 7.80, 6.20, 115.00);
INSERT INTO `engine_specs` VALUES (67, 7, 2.50, 188, 180, 4, 10.00, 6500, 8.20, 6.50, 118.00);
INSERT INTO `engine_specs` VALUES (68, 8, 2.00, 185, 175, 4, 10.30, 6500, 8.50, 6.80, 120.00);
INSERT INTO `engine_specs` VALUES (69, 9, 2.00, 255, 273, 4, 10.50, 6700, 9.00, 7.00, 130.00);
INSERT INTO `engine_specs` VALUES (70, 10, 2.00, 248, 273, 4, 10.00, 8000, 8.80, 6.90, 125.00);
INSERT INTO `engine_specs` VALUES (71, 123, 2.00, 200, 250, 4, 10.50, 7000, 8.00, 6.50, 120.00);
INSERT INTO `engine_specs` VALUES (72, 123, 2.00, 200, 250, 4, 10.50, 7000, 8.00, 6.50, 120.00);
INSERT INTO `engine_specs` VALUES (76, 500, 3.00, 400, 500, 6, 11.00, 10000, 10.00, 7.00, 180.00);
INSERT INTO `engine_specs` VALUES (78, 800, 100.00, 1500, 2000, 16, 10.00, 6000, 50.00, 30.00, 500.00);
INSERT INTO `engine_specs` VALUES (79, 950, 2.00, 180, 250, 4, 10.00, 6000, 8.00, 6.50, 150.00);
INSERT INTO `engine_specs` VALUES (80, 990, 20.00, 500, 1000, 16, 8.00, 5000, 60.00, 50.00, 500.00);
INSERT INTO `engine_specs` VALUES (81, 995, 2.50, 300, 450, 6, 10.00, 6000, 10.00, 7.00, 180.00);
INSERT INTO `engine_specs` VALUES (82, 999, 100.00, 100000, 10000, 16, 10.00, 10000, 100.00, 80.00, 500.00);
INSERT INTO `engine_specs` VALUES (83, 1300, 2.00, 250, 350, 4, 10.00, 6500, 10.00, 7.00, 180.00);
INSERT INTO `engine_specs` VALUES (84, 1400, 2.00, 200, 300, 4, 10.00, 6500, 8.00, 6.50, 150.00);
INSERT INTO `engine_specs` VALUES (85, 1401, 2.50, 220, 320, 4, 10.00, 6500, 9.00, 7.00, 170.00);
INSERT INTO `engine_specs` VALUES (86, 1402, 3.00, 250, 350, 6, 10.00, 6500, 10.00, 8.00, 190.00);
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

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `Manufacturer_ID` int NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '制造商名称',
  `Revenue` decimal(15,2) DEFAULT NULL COMMENT '年收入（美元）',
  `Employee_Count` int DEFAULT NULL COMMENT '员工数量',
  `Market_Cap` decimal(15,2) DEFAULT NULL COMMENT '市值（美元）',
  `Production_Volume_Total` int DEFAULT NULL COMMENT '总生产数量',
  `R&D_Spending` decimal(15,2) DEFAULT NULL COMMENT '研发支出（美元）',
  `Profit_Margin` decimal(5,2) DEFAULT NULL COMMENT '利润率（%）',
  `Annual_Sales` int DEFAULT NULL COMMENT '年销量',
  `Average_Price` decimal(15,2) DEFAULT NULL COMMENT '平均售价（美元）',
  PRIMARY KEY (`Manufacturer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `manufacturers` VALUES (1, 'Toyota', 275000000000.00, 366283, 250000000000.00, 10000000, 10000000000.00, 8.50, 9500000, 29000.00);
INSERT INTO `manufacturers` VALUES (2, 'Tesla', 31536000000.00, 70757, 800000000000.00, 500000, 1500000000.00, 4.20, 500000, 55000.00);
INSERT INTO `manufacturers` VALUES (3, 'BMW', 111239000000.00, 133778, 60000000000.00, 2500000, 7000000000.00, 6.80, 2200000, 45000.00);
INSERT INTO `manufacturers` VALUES (4, 'Ford', 127144000000.00, 186000, 50000000000.00, 4000000, 8000000000.00, 3.50, 3900000, 35000.00);
INSERT INTO `manufacturers` VALUES (5, 'Volkswagen', 254000000000.00, 662275, 90000000000.00, 11000000, 12000000000.00, 7.00, 10000000, 40000.00);
INSERT INTO `manufacturers` VALUES (6, 'Honda', 138000000000.00, 215638, 55000000000.00, 5000000, 6000000000.00, 5.50, 4800000, 32000.00);
INSERT INTO `manufacturers` VALUES (7, 'Nissan', 78000000000.00, 136134, 30000000000.00, 3500000, 4000000000.00, 2.80, 3400000, 28000.00);
INSERT INTO `manufacturers` VALUES (8, 'Hyundai', 90000000000.00, 104731, 40000000000.00, 4500000, 5000000000.00, 4.00, 4300000, 30000.00);
INSERT INTO `manufacturers` VALUES (9, 'Mercedes-Benz', 150000000000.00, 173000, 70000000000.00, 2000000, 9000000000.00, 9.00, 1900000, 60000.00);
INSERT INTO `manufacturers` VALUES (10, 'Audi', 60000000000.00, 90000, 30000000000.00, 1800000, 3000000000.00, 6.00, 1700000, 50000.00);
INSERT INTO `manufacturers` VALUES (11, '某制造商', 10000000000.00, 10000, 50000000000.00, 1000000, 500000000.00, 5.00, 800000, 30000.00);
INSERT INTO `manufacturers` VALUES (12, '指定制造商', 1000000000.00, 10000, 50000000000.00, 1000000, 500000000.00, 12.50, 10000, 40000.00);
INSERT INTO `manufacturers` VALUES (101, 'ExampleManufacturer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `manufacturers` VALUES (123, 'NewManufacturer', NULL, NULL, NULL, NULL, NULL, 5.50, NULL, NULL);
INSERT INTO `manufacturers` VALUES (200, 'TestManufacturer', NULL, NULL, NULL, 500000, 200000000.00, 8.00, 450000, NULL);
INSERT INTO `manufacturers` VALUES (500, '某制造商', NULL, NULL, NULL, 100000, NULL, 8.00, NULL, 35000.00);
INSERT INTO `manufacturers` VALUES (600, '某制造商', NULL, NULL, NULL, NULL, NULL, 5.00, NULL, NULL);
INSERT INTO `manufacturers` VALUES (1000, '指定制造商名称', NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL);
INSERT INTO `manufacturers` VALUES (1400, '某制造商', NULL, NULL, NULL, NULL, NULL, 8.00, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for performance_metrics
-- ----------------------------
DROP TABLE IF EXISTS `performance_metrics`;
CREATE TABLE `performance_metrics` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT COMMENT '性能指标唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Top_Speed` int NOT NULL COMMENT '最高时速（km/h）',
  `Acceleration_0_to_100` decimal(4,2) NOT NULL COMMENT '0-100加速时间（秒）',
  `Braking_Distance` decimal(5,2) NOT NULL COMMENT '制动距离（米）',
  `Drag_Coefficient` decimal(3,2) DEFAULT NULL COMMENT '风阻系数',
  `Power_to_Weight_Ratio` decimal(6,2) DEFAULT NULL COMMENT '功率重量比（HP/kg）',
  `Turning_Radius` decimal(4,2) DEFAULT NULL COMMENT '转弯半径（米）',
  `Range_Electric` int DEFAULT NULL COMMENT '电动车续航里程（km）',
  `Range_Hybrid` int DEFAULT NULL COMMENT '混合动力车续航里程（km）',
  `Range_Gasoline` int DEFAULT NULL COMMENT '燃油车续航里程（km）',
  PRIMARY KEY (`Performance_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `performance_metrics_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of performance_metrics
-- ----------------------------
BEGIN;
INSERT INTO `performance_metrics` VALUES (11, 1, 180, 10.50, 38.50, 0.29, 0.10, 5.50, NULL, NULL, 750);
INSERT INTO `performance_metrics` VALUES (12, 2, 225, 3.10, 35.00, 0.23, 0.18, 5.80, 500, NULL, NULL);
INSERT INTO `performance_metrics` VALUES (13, 3, 250, 4.70, 40.00, 0.32, 0.23, 6.20, NULL, NULL, 800);
INSERT INTO `performance_metrics` VALUES (14, 4, 260, 8.00, 39.50, 0.35, 0.26, 5.90, NULL, NULL, 700);
INSERT INTO `performance_metrics` VALUES (15, 5, 210, 8.00, 37.00, 0.28, 0.13, 5.40, NULL, NULL, 800);
INSERT INTO `performance_metrics` VALUES (16, 6, 200, 8.00, 36.50, 0.27, 0.14, 5.30, NULL, NULL, 750);
INSERT INTO `performance_metrics` VALUES (17, 7, 205, 7.80, 37.20, 0.28, 0.13, 5.50, NULL, NULL, 780);
INSERT INTO `performance_metrics` VALUES (18, 8, 210, 8.20, 38.00, 0.29, 0.12, 5.60, NULL, NULL, 800);
INSERT INTO `performance_metrics` VALUES (19, 9, 250, 5.50, 39.00, 0.30, 0.16, 5.70, NULL, NULL, 850);
INSERT INTO `performance_metrics` VALUES (20, 10, 240, 5.80, 38.80, 0.29, 0.16, 5.60, NULL, NULL, 820);
INSERT INTO `performance_metrics` VALUES (21, 123, 220, 7.50, 36.00, 0.29, 0.15, 5.60, NULL, NULL, 750);
INSERT INTO `performance_metrics` VALUES (22, 600, 240, 6.00, 35.00, 0.30, 0.15, 5.50, NULL, NULL, 750);
INSERT INTO `performance_metrics` VALUES (23, 700, 220, 7.00, 40.00, 0.30, 0.15, 5.60, NULL, NULL, 750);
INSERT INTO `performance_metrics` VALUES (24, 900, 210, 7.00, 36.00, 0.28, 0.15, 5.60, NULL, NULL, 750);
INSERT INTO `performance_metrics` VALUES (25, 980, 220, 6.00, 35.00, 0.21, 0.18, 5.50, 500, NULL, NULL);
INSERT INTO `performance_metrics` VALUES (26, 1000, 220, 6.00, 35.00, 0.28, 0.15, 5.50, NULL, NULL, 750);
INSERT INTO `performance_metrics` VALUES (27, 1200, 300, 3.00, 32.00, 0.26, 0.25, 5.40, NULL, NULL, 500);
INSERT INTO `performance_metrics` VALUES (28, 1300, 220, 6.50, 35.00, 0.30, 0.15, 5.50, NULL, NULL, 700);
COMMIT;

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS `prices`;
CREATE TABLE `prices` (
  `Price_ID` int NOT NULL AUTO_INCREMENT COMMENT '价格唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Base_Price` decimal(15,2) NOT NULL COMMENT '基础价格（美元）',
  `Optional_Features_Price` decimal(15,2) DEFAULT NULL COMMENT '可选功能价格（美元）',
  `Total_Price` decimal(15,2) NOT NULL COMMENT '总价格（美元）',
  `Tax_Rate` decimal(5,2) DEFAULT NULL COMMENT '税率（%）',
  `Insurance_Cost` decimal(10,2) DEFAULT NULL COMMENT '保险费用（美元）',
  `Maintenance_Cost` decimal(10,2) DEFAULT NULL COMMENT '年均维护费用（美元）',
  `Depreciation_Rate` decimal(5,2) DEFAULT NULL COMMENT '年均折旧率（%）',
  `Resale_Value` decimal(15,2) DEFAULT NULL COMMENT '预估残值（美元）',
  PRIMARY KEY (`Price_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of prices
-- ----------------------------
BEGIN;
INSERT INTO `prices` VALUES (11, 1, 20000.00, 3000.00, 23000.00, 7.50, 1200.00, 800.00, 15.00, 17000.00);
INSERT INTO `prices` VALUES (12, 2, 55000.00, 10000.00, 65000.00, 7.50, 2500.00, 1200.00, 20.00, 45000.00);
INSERT INTO `prices` VALUES (13, 3, 70000.00, 15000.00, 85000.00, 7.50, 3000.00, 1500.00, 18.00, 60000.00);
INSERT INTO `prices` VALUES (14, 4, 45000.00, 8000.00, 53000.00, 7.50, 2000.00, 1000.00, 17.00, 40000.00);
INSERT INTO `prices` VALUES (15, 5, 30000.00, 5000.00, 35000.00, 7.50, 1500.00, 900.00, 16.00, 25000.00);
INSERT INTO `prices` VALUES (16, 6, 28000.00, 4000.00, 32000.00, 7.50, 1400.00, 850.00, 15.00, 23000.00);
INSERT INTO `prices` VALUES (17, 7, 32000.00, 6000.00, 38000.00, 7.50, 1600.00, 950.00, 16.00, 27000.00);
INSERT INTO `prices` VALUES (18, 8, 35000.00, 7000.00, 42000.00, 7.50, 1800.00, 1000.00, 17.00, 30000.00);
INSERT INTO `prices` VALUES (19, 9, 60000.00, 12000.00, 72000.00, 7.50, 2800.00, 1400.00, 18.00, 50000.00);
INSERT INTO `prices` VALUES (20, 10, 55000.00, 10000.00, 65000.00, 7.50, 2500.00, 1300.00, 17.00, 45000.00);
INSERT INTO `prices` VALUES (21, 300, 32000.00, 5000.00, 37000.00, 7.50, 1500.00, 900.00, 15.00, 25000.00);
INSERT INTO `prices` VALUES (22, 300, 32000.00, 5000.00, 37000.00, 7.50, 1500.00, 900.00, 15.00, 25000.00);
COMMIT;

-- ----------------------------
-- Table structure for safety_features
-- ----------------------------
DROP TABLE IF EXISTS `safety_features`;
CREATE TABLE `safety_features` (
  `Safety_ID` int NOT NULL AUTO_INCREMENT COMMENT '安全特性唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Airbag_Count` int NOT NULL COMMENT '安全气囊数量',
  `ABS_Effectiveness` decimal(4,2) DEFAULT NULL COMMENT 'ABS系统效率（%）',
  `ESC_Effectiveness` decimal(4,2) DEFAULT NULL COMMENT '电子稳定控制效率（%）',
  `Lane_Assist_Accuracy` decimal(4,2) DEFAULT NULL COMMENT '车道辅助准确率（%）',
  `Brake_Assist_Response_Time` decimal(4,2) DEFAULT NULL COMMENT '刹车辅助响应时间（秒）',
  `Crash_Test_Rating` decimal(3,1) DEFAULT NULL COMMENT '碰撞测试评分（满分5分）',
  `Pedestrian_Detection_Accuracy` decimal(4,2) DEFAULT NULL COMMENT '行人检测准确率（%）',
  `Night_Vision_Range` decimal(5,2) DEFAULT NULL COMMENT '夜视系统探测范围（米）',
  `Tire_Pressure_Monitoring_Accuracy` decimal(4,2) DEFAULT NULL COMMENT '胎压监测准确率（%）',
  PRIMARY KEY (`Safety_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `safety_features_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of safety_features
-- ----------------------------
BEGIN;
INSERT INTO `safety_features` VALUES (11, 1, 8, 95.00, 92.00, 85.00, 0.25, 4.5, 90.00, NULL, 98.00);
INSERT INTO `safety_features` VALUES (12, 2, 10, 98.00, 96.00, 95.00, 0.20, 5.0, 98.00, 200.00, 99.00);
INSERT INTO `safety_features` VALUES (13, 3, 12, 97.00, 95.00, 90.00, 0.22, 4.8, 92.00, 250.00, 98.00);
INSERT INTO `safety_features` VALUES (14, 4, 8, 94.00, 90.00, 80.00, 0.30, 4.2, 85.00, NULL, 95.00);
INSERT INTO `safety_features` VALUES (15, 5, 8, 93.00, 91.00, 82.00, 0.28, 4.3, 88.00, NULL, 96.00);
INSERT INTO `safety_features` VALUES (16, 6, 8, 94.00, 92.00, 85.00, 0.26, 4.5, 90.00, NULL, 97.00);
INSERT INTO `safety_features` VALUES (17, 7, 8, 93.00, 91.00, 83.00, 0.27, 4.4, 89.00, NULL, 96.00);
INSERT INTO `safety_features` VALUES (18, 8, 8, 94.00, 92.00, 84.00, 0.25, 4.5, 90.00, NULL, 97.00);
INSERT INTO `safety_features` VALUES (19, 9, 10, 96.00, 94.00, 88.00, 0.23, 4.7, 92.00, 220.00, 98.00);
INSERT INTO `safety_features` VALUES (20, 10, 10, 95.00, 93.00, 87.00, 0.24, 4.6, 91.00, 210.00, 97.00);
INSERT INTO `safety_features` VALUES (21, 700, 8, 95.00, 90.00, 85.00, 0.25, 4.5, 90.00, NULL, 98.00);
INSERT INTO `safety_features` VALUES (22, 995, 8, 95.00, 95.00, 90.00, 0.25, 4.5, 90.00, NULL, 98.00);
INSERT INTO `safety_features` VALUES (23, 1700, 8, 95.00, 92.00, 85.00, 0.25, 4.5, 90.00, NULL, 98.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
