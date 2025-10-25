/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : wind_turbine

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:31:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for energy_output
-- ----------------------------
DROP TABLE IF EXISTS `energy_output`;
CREATE TABLE `energy_output` (
  `Output_ID` int NOT NULL AUTO_INCREMENT COMMENT '发电量记录唯一标识',
  `Turbine_ID` int NOT NULL COMMENT '风力发电机ID',
  `Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日期',
  `Hourly_Output` decimal(10,2) NOT NULL COMMENT '每小时发电量（千瓦时）',
  `Daily_Output` decimal(10,2) NOT NULL COMMENT '每日发电量（千瓦时）',
  `Monthly_Output` decimal(10,2) NOT NULL COMMENT '每月发电量（千瓦时）',
  `Annual_Output` decimal(10,2) NOT NULL COMMENT '年发电量（千瓦时）',
  PRIMARY KEY (`Output_ID`),
  KEY `Turbine_ID` (`Turbine_ID`),
  CONSTRAINT `energy_output_ibfk_1` FOREIGN KEY (`Turbine_ID`) REFERENCES `wind_turbines` (`Turbine_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of energy_output
-- ----------------------------
BEGIN;
INSERT INTO `energy_output` VALUES (1, 1, '2023-10-01', 8000.00, 192000.00, 5760000.00, 25000000.00);
INSERT INTO `energy_output` VALUES (2, 2, '2023-10-02', 12000.00, 288000.00, 8640000.00, 40000000.00);
INSERT INTO `energy_output` VALUES (3, 3, '2023-10-03', 10000.00, 240000.00, 7200000.00, 35000000.00);
INSERT INTO `energy_output` VALUES (4, 4, '2023-10-04', 4000.00, 96000.00, 2880000.00, 15000000.00);
INSERT INTO `energy_output` VALUES (5, 5, '2023-10-05', 4200.00, 100800.00, 3024000.00, 16000000.00);
INSERT INTO `energy_output` VALUES (6, 6, '2023-10-06', 7000.00, 168000.00, 5040000.00, 25000000.00);
INSERT INTO `energy_output` VALUES (7, 7, '2023-10-07', 2000.00, 48000.00, 1440000.00, 8000000.00);
INSERT INTO `energy_output` VALUES (8, 8, '2023-10-08', 2100.00, 50400.00, 1512000.00, 9000000.00);
INSERT INTO `energy_output` VALUES (9, 9, '2023-10-09', 3000.00, 72000.00, 2160000.00, 12000000.00);
INSERT INTO `energy_output` VALUES (10, 10, '2023-10-10', 3500.00, 84000.00, 2520000.00, 14000000.00);
COMMIT;

-- ----------------------------
-- Table structure for maintenance_logs
-- ----------------------------
DROP TABLE IF EXISTS `maintenance_logs`;
CREATE TABLE `maintenance_logs` (
  `Log_ID` int NOT NULL AUTO_INCREMENT COMMENT '维护日志唯一标识',
  `Turbine_ID` int NOT NULL COMMENT '风力发电机ID',
  `Maintenance_Date` varchar(255) NOT NULL COMMENT '维护日期',
  `Maintenance_Type` enum('Routine','Repair','Replacement') NOT NULL COMMENT '维护类型',
  `Description` text COMMENT '维护描述',
  `Cost` decimal(10,2) NOT NULL COMMENT '维护成本（美元）',
  `Service_Center` varchar(100) DEFAULT NULL COMMENT '服务中心名称',
  `Technician` varchar(100) DEFAULT NULL COMMENT '技术人员姓名',
  `Next_Maintenance_Date` varchar(255) DEFAULT NULL COMMENT '下次维护日期',
  PRIMARY KEY (`Log_ID`),
  KEY `Turbine_ID` (`Turbine_ID`),
  CONSTRAINT `maintenance_logs_ibfk_1` FOREIGN KEY (`Turbine_ID`) REFERENCES `wind_turbines` (`Turbine_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of maintenance_logs
-- ----------------------------
BEGIN;
INSERT INTO `maintenance_logs` VALUES (1, 1, '2023-02-01', 'Routine', 'Routine inspection and oil change', 5000.00, 'Vestas Service Center', 'John Smith', '2024-02-01');
INSERT INTO `maintenance_logs` VALUES (2, 2, '2023-03-05', 'Repair', 'Blade repair due to minor damage', 10000.00, 'Siemens Gamesa Service Center', 'Jane Doe', '2024-03-05');
INSERT INTO `maintenance_logs` VALUES (3, 3, '2023-04-10', 'Routine', 'Routine inspection and cleaning', 6000.00, 'GE Service Center', 'Mike Johnson', '2024-04-10');
INSERT INTO `maintenance_logs` VALUES (4, 4, '2023-05-15', 'Repair', 'Gearbox replacement', 15000.00, 'Nordex Service Center', 'Sarah Lee', '2024-05-15');
INSERT INTO `maintenance_logs` VALUES (5, 5, '2023-06-20', 'Routine', 'Routine inspection and oil change', 5000.00, 'Goldwind Service Center', 'Tom Brown', '2024-06-20');
INSERT INTO `maintenance_logs` VALUES (6, 6, '2023-07-25', 'Repair', 'Generator repair', 12000.00, 'Enercon Service Center', 'Emily Davis', '2024-07-25');
INSERT INTO `maintenance_logs` VALUES (7, 7, '2023-08-30', 'Routine', 'Routine inspection and cleaning', 4000.00, 'Senvion Service Center', 'Chris Wilson', '2024-08-30');
INSERT INTO `maintenance_logs` VALUES (8, 8, '2023-09-05', 'Repair', 'Blade repair due to minor damage', 8000.00, 'MingYang Service Center', 'Laura Martinez', '2024-09-05');
INSERT INTO `maintenance_logs` VALUES (9, 9, '2023-10-10', 'Routine', 'Routine inspection and oil change', 5000.00, 'Suzlon Service Center', 'James Anderson', '2024-10-10');
INSERT INTO `maintenance_logs` VALUES (10, 10, '2023-11-15', 'Repair', 'Gearbox replacement', 15000.00, 'Acciona Service Center', 'Linda Taylor', '2024-11-15');
COMMIT;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `Manufacturer_ID` int NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '制造商名称',
  `Country` varchar(50) NOT NULL COMMENT '所属国家',
  `Founded_Year` int NOT NULL COMMENT '成立年份',
  `Revenue` decimal(15,2) DEFAULT NULL COMMENT '年收入（美元）',
  `Employee_Count` int DEFAULT NULL COMMENT '员工数量',
  `Market_Cap` decimal(15,2) DEFAULT NULL COMMENT '市值（美元）',
  `Production_Volume_Total` int DEFAULT NULL COMMENT '总生产数量',
  `R&D_Spending` decimal(15,2) DEFAULT NULL COMMENT '研发支出（美元）',
  `Profit_Margin` decimal(5,2) DEFAULT NULL COMMENT '利润率（%）',
  `Website` varchar(255) DEFAULT NULL COMMENT '官方网站',
  `Headquarters` varchar(255) DEFAULT NULL COMMENT '总部地址',
  PRIMARY KEY (`Manufacturer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `manufacturers` VALUES (1, 'Vestas', 'Denmark', 1945, 15000000000.00, 29000, 30000000000.00, 100000, 500000000.00, 12.00, 'https://www.vestas.com', 'Aarhus, Denmark');
INSERT INTO `manufacturers` VALUES (2, 'Siemens Gamesa', 'Spain', 1976, 12000000000.00, 25000, 25000000000.00, 80000, 400000000.00, 10.00, 'https://www.siemensgamesa.com', 'Zamudio, Spain');
INSERT INTO `manufacturers` VALUES (3, 'GE Renewable Energy', 'USA', 1892, 10000000000.00, 22000, 20000000000.00, 70000, 300000000.00, 9.00, 'https://www.ge.com/renewableenergy', 'Boston, USA');
INSERT INTO `manufacturers` VALUES (4, 'Nordex', 'Germany', 1985, 5000000000.00, 8000, 10000000000.00, 50000, 200000000.00, 8.00, 'https://www.nordex-online.com', 'Hamburg, Germany');
INSERT INTO `manufacturers` VALUES (5, 'Goldwind', 'China', 1998, 8000000000.00, 10000, 15000000000.00, 60000, 250000000.00, 7.50, 'https://www.goldwind.com', 'Beijing, China');
INSERT INTO `manufacturers` VALUES (6, 'Enercon', 'Germany', 1984, 4000000000.00, 7000, 8000000000.00, 40000, 150000000.00, 7.00, 'https://www.enercon.de', 'Aurich, Germany');
INSERT INTO `manufacturers` VALUES (7, 'Senvion', 'Germany', 2001, 3000000000.00, 6000, 6000000000.00, 30000, 100000000.00, 6.50, 'https://www.senvion.com', 'Hamburg, Germany');
INSERT INTO `manufacturers` VALUES (8, 'MingYang', 'China', 2006, 6000000000.00, 9000, 12000000000.00, 50000, 200000000.00, 7.00, 'https://www.mingyang.com', 'Zhongshan, China');
INSERT INTO `manufacturers` VALUES (9, 'Suzlon', 'India', 1995, 2000000000.00, 5000, 4000000000.00, 20000, 80000000.00, 6.00, 'https://www.suzlon.com', 'Pune, India');
INSERT INTO `manufacturers` VALUES (10, 'Acciona', 'Spain', 1997, 7000000000.00, 12000, 14000000000.00, 60000, 300000000.00, 8.50, 'https://www.acciona.com', 'Madrid, Spain');
COMMIT;

-- ----------------------------
-- Table structure for performance_metrics
-- ----------------------------
DROP TABLE IF EXISTS `performance_metrics`;
CREATE TABLE `performance_metrics` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT COMMENT '性能指标唯一标识',
  `Turbine_ID` int NOT NULL COMMENT '风力发电机ID',
  `Annual_Energy_Output` decimal(10,2) NOT NULL COMMENT '年发电量（千瓦时）',
  `Capacity_Factor` decimal(5,2) NOT NULL COMMENT '容量系数（%）',
  `Availability` decimal(5,2) NOT NULL COMMENT '可用率（%）',
  `Rotor_Speed` decimal(6,2) NOT NULL COMMENT '转子转速（转/分钟）',
  `Blade_Tip_Speed` decimal(6,2) NOT NULL COMMENT '叶片尖端速度（米/秒）',
  `Power_Curve` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '功率曲线（JSON格式）',
  `Noise_Level` decimal(5,2) NOT NULL COMMENT '噪音水平（分贝）',
  `Vibration_Level` decimal(5,2) NOT NULL COMMENT '振动水平（m/s²）',
  `Temperature_Rating` varchar(50) NOT NULL COMMENT '工作温度范围',
  PRIMARY KEY (`Performance_ID`),
  KEY `Turbine_ID` (`Turbine_ID`),
  CONSTRAINT `performance_metrics_ibfk_1` FOREIGN KEY (`Turbine_ID`) REFERENCES `wind_turbines` (`Turbine_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of performance_metrics
-- ----------------------------
BEGIN;
INSERT INTO `performance_metrics` VALUES (1, 1, 25000000.00, 35.00, 98.00, 12.00, 80.00, '{\"10m/s\": 8000, \"12m/s\": 10000}', 45.00, 0.50, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (2, 2, 40000000.00, 40.00, 97.00, 10.00, 90.00, '{\"10m/s\": 12000, \"12m/s\": 14000}', 50.00, 0.60, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (3, 3, 35000000.00, 38.00, 98.00, 11.00, 85.00, '{\"10m/s\": 10000, \"12m/s\": 12000}', 48.00, 0.55, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (4, 4, 15000000.00, 30.00, 96.00, 13.00, 75.00, '{\"10m/s\": 4000, \"12m/s\": 4500}', 42.00, 0.45, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (5, 5, 16000000.00, 32.00, 97.00, 12.00, 78.00, '{\"10m/s\": 4200, \"12m/s\": 4500}', 43.00, 0.47, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (6, 6, 25000000.00, 35.00, 98.00, 11.00, 82.00, '{\"10m/s\": 7000, \"12m/s\": 7500}', 46.00, 0.52, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (7, 7, 8000000.00, 25.00, 95.00, 14.00, 70.00, '{\"10m/s\": 2000, \"12m/s\": 2100}', 40.00, 0.40, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (8, 8, 9000000.00, 28.00, 96.00, 13.00, 72.00, '{\"10m/s\": 2100, \"12m/s\": 2200}', 41.00, 0.42, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (9, 9, 12000000.00, 30.00, 97.00, 12.00, 75.00, '{\"10m/s\": 3000, \"12m/s\": 3200}', 44.00, 0.48, '-20°C to 40°C');
INSERT INTO `performance_metrics` VALUES (10, 10, 14000000.00, 33.00, 98.00, 11.00, 78.00, '{\"10m/s\": 3500, \"12m/s\": 3700}', 45.00, 0.50, '-20°C to 40°C');
COMMIT;

-- ----------------------------
-- Table structure for weather_data
-- ----------------------------
DROP TABLE IF EXISTS `weather_data`;
CREATE TABLE `weather_data` (
  `Weather_ID` int NOT NULL AUTO_INCREMENT COMMENT '天气数据唯一标识',
  `Turbine_ID` int NOT NULL COMMENT '风力发电机ID',
  `Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日期',
  `Wind_Speed` decimal(5,2) NOT NULL COMMENT '风速（米/秒）',
  `Wind_Direction` decimal(5,2) NOT NULL COMMENT '风向（度）',
  `Temperature` decimal(5,2) NOT NULL COMMENT '温度（摄氏度）',
  `Humidity` decimal(5,2) NOT NULL COMMENT '湿度（%）',
  `Air_Pressure` decimal(6,2) NOT NULL COMMENT '气压（百帕）',
  `Rainfall` decimal(5,2) NOT NULL COMMENT '降雨量（毫米）',
  `Solar_Radiation` decimal(6,2) DEFAULT NULL COMMENT '太阳辐射（W/m²）',
  PRIMARY KEY (`Weather_ID`),
  KEY `Turbine_ID` (`Turbine_ID`),
  CONSTRAINT `weather_data_ibfk_1` FOREIGN KEY (`Turbine_ID`) REFERENCES `wind_turbines` (`Turbine_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of weather_data
-- ----------------------------
BEGIN;
INSERT INTO `weather_data` VALUES (1, 1, '2023-10-01', 10.00, 180.00, 15.00, 60.00, 1013.25, 0.00, 500.00);
INSERT INTO `weather_data` VALUES (2, 2, '2023-10-02', 12.00, 190.00, 16.00, 65.00, 1012.50, 0.50, 550.00);
INSERT INTO `weather_data` VALUES (3, 3, '2023-10-03', 11.00, 185.00, 14.00, 70.00, 1011.75, 1.00, 520.00);
INSERT INTO `weather_data` VALUES (4, 4, '2023-10-04', 9.00, 175.00, 13.00, 75.00, 1010.00, 2.00, 480.00);
INSERT INTO `weather_data` VALUES (5, 5, '2023-10-05', 10.50, 180.00, 15.50, 68.00, 1012.00, 0.20, 510.00);
INSERT INTO `weather_data` VALUES (6, 6, '2023-10-06', 11.50, 190.00, 16.50, 62.00, 1013.00, 0.10, 540.00);
INSERT INTO `weather_data` VALUES (7, 7, '2023-10-07', 8.50, 170.00, 12.50, 80.00, 1009.00, 3.00, 450.00);
INSERT INTO `weather_data` VALUES (8, 8, '2023-10-08', 9.50, 175.00, 13.50, 78.00, 1010.50, 1.50, 470.00);
INSERT INTO `weather_data` VALUES (9, 9, '2023-10-09', 10.00, 180.00, 14.00, 72.00, 1011.00, 0.50, 490.00);
INSERT INTO `weather_data` VALUES (10, 10, '2023-10-10', 11.00, 185.00, 15.00, 70.00, 1012.00, 0.00, 520.00);
COMMIT;

-- ----------------------------
-- Table structure for wind_turbines
-- ----------------------------
DROP TABLE IF EXISTS `wind_turbines`;
CREATE TABLE `wind_turbines` (
  `Turbine_ID` int NOT NULL AUTO_INCREMENT COMMENT '风力发电机唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '型号',
  `Year` int NOT NULL COMMENT '生产年份',
  `Rotor_Diameter` decimal(8,2) NOT NULL COMMENT '转子直径（米）',
  `Hub_Height` decimal(8,2) NOT NULL COMMENT '轮毂高度（米）',
  `Rated_Power` decimal(10,2) NOT NULL COMMENT '额定功率（千瓦）',
  `Cut_In_Wind_Speed` decimal(5,2) NOT NULL COMMENT '切入风速（米/秒）',
  `Cut_Out_Wind_Speed` decimal(5,2) NOT NULL COMMENT '切出风速（米/秒）',
  `Rated_Wind_Speed` decimal(5,2) NOT NULL COMMENT '额定风速（米/秒）',
  `Blade_Material` varchar(50) NOT NULL COMMENT '叶片材质',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量（吨）',
  `Installation_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '安装日期',
  `Location` varchar(255) NOT NULL COMMENT '安装位置',
  `Latitude` decimal(9,6) NOT NULL COMMENT '纬度',
  `Longitude` decimal(9,6) NOT NULL COMMENT '经度',
  PRIMARY KEY (`Turbine_ID`),
  KEY `Manufacturer_ID` (`Manufacturer_ID`),
  CONSTRAINT `wind_turbines_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wind_turbines
-- ----------------------------
BEGIN;
INSERT INTO `wind_turbines` VALUES (1, 1, 'V164-8.0 MW', 2023, 164.00, 105.00, 8000.00, 3.00, 25.00, 12.00, 'Fiberglass', 800.00, '2023-01-15', 'North Sea', 55.000000, 5.000000);
INSERT INTO `wind_turbines` VALUES (2, 2, 'SG 14-222 DD', 2023, 222.00, 120.00, 14000.00, 3.50, 27.00, 13.00, 'Carbon Fiber', 1200.00, '2023-02-20', 'Baltic Sea', 54.500000, 11.000000);
INSERT INTO `wind_turbines` VALUES (3, 3, 'Haliade-X 12 MW', 2023, 220.00, 110.00, 12000.00, 3.00, 25.00, 12.00, 'Fiberglass', 1000.00, '2023-03-10', 'Atlantic Ocean', 50.000000, -10.000000);
INSERT INTO `wind_turbines` VALUES (4, 4, 'N149-4.5 MW', 2023, 149.00, 100.00, 4500.00, 3.00, 25.00, 12.00, 'Fiberglass', 600.00, '2023-04-05', 'North Sea', 56.000000, 4.000000);
INSERT INTO `wind_turbines` VALUES (5, 5, 'GW155-4.5 MW', 2023, 155.00, 95.00, 4500.00, 3.00, 25.00, 12.00, 'Fiberglass', 550.00, '2023-05-12', 'East China Sea', 30.000000, 122.000000);
INSERT INTO `wind_turbines` VALUES (6, 6, 'E-126 EP3', 2023, 126.00, 135.00, 7500.00, 3.00, 25.00, 12.00, 'Carbon Fiber', 900.00, '2023-06-18', 'North Sea', 54.000000, 6.000000);
INSERT INTO `wind_turbines` VALUES (7, 7, 'MM82-2.0 MW', 2023, 82.00, 80.00, 2000.00, 3.00, 25.00, 12.00, 'Fiberglass', 300.00, '2023-07-22', 'Indian Ocean', 20.000000, 72.000000);
INSERT INTO `wind_turbines` VALUES (8, 8, 'S111-2.1 MW', 2023, 111.00, 90.00, 2100.00, 3.00, 25.00, 12.00, 'Fiberglass', 350.00, '2023-08-30', 'Arabian Sea', 22.000000, 65.000000);
INSERT INTO `wind_turbines` VALUES (9, 9, 'AW132-3.0 MW', 2023, 132.00, 100.00, 3000.00, 3.00, 25.00, 12.00, 'Fiberglass', 400.00, '2023-09-14', 'Mediterranean Sea', 40.000000, 10.000000);
INSERT INTO `wind_turbines` VALUES (10, 10, 'AW125-3.5 MW', 2023, 125.00, 95.00, 3500.00, 3.00, 25.00, 12.00, 'Fiberglass', 450.00, '2023-10-25', 'Atlantic Ocean', 45.000000, -15.000000);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
