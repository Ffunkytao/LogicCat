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

 Date: 28/01/2025 00:42:29
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

SET FOREIGN_KEY_CHECKS = 1;
