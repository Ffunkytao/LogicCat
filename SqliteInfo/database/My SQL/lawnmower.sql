/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : lawnmower

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 22:11:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT COMMENT '客户唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '客户姓名',
  `Email` varchar(100) DEFAULT NULL COMMENT '客户邮箱',
  `Phone` varchar(20) DEFAULT NULL COMMENT '客户电话',
  `Address` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `City` varchar(100) DEFAULT NULL COMMENT '客户所在城市',
  `State` varchar(100) DEFAULT NULL COMMENT '客户所在州',
  `Country` varchar(100) DEFAULT NULL COMMENT '客户所在国家',
  `Postal_Code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `Registration_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '注册日期',
  `Customer_Type` enum('Individual','Business') NOT NULL COMMENT '客户类型',
  `Annual_Purchase_Volume` decimal(15,2) DEFAULT NULL COMMENT '年采购额（美元）',
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for lawn_mowers
-- ----------------------------
DROP TABLE IF EXISTS `lawn_mowers`;
CREATE TABLE `lawn_mowers` (
  `Mower_ID` int NOT NULL AUTO_INCREMENT COMMENT '除草机唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '型号',
  `Year` int NOT NULL COMMENT '生产年份',
  `Weight` decimal(6,2) NOT NULL COMMENT '重量（kg）',
  `Cutting_Width` decimal(5,2) NOT NULL COMMENT '割草宽度（cm）',
  `Cutting_Height_Adjustment` varchar(50) NOT NULL COMMENT '割草高度调节方式',
  `Power_Source` enum('Gasoline','Electric','Battery','Manual') NOT NULL COMMENT '动力来源',
  `Engine_Power` decimal(6,2) DEFAULT NULL COMMENT '发动机功率（HP，适用于汽油机）',
  `Battery_Capacity` decimal(6,2) DEFAULT NULL COMMENT '电池容量（Ah，适用于电动或电池驱动）',
  `Run_Time` int DEFAULT NULL COMMENT '运行时间（分钟，适用于电动或电池驱动）',
  `Wheel_Size` decimal(5,2) NOT NULL COMMENT '轮子尺寸（英寸）',
  `Price` decimal(10,2) NOT NULL COMMENT '价格（美元）',
  `Blade_Material` varchar(50) NOT NULL COMMENT '刀片材质',
  `Blade_Length` decimal(5,2) NOT NULL COMMENT '刀片长度（cm）',
  `Blade_Weight` decimal(5,2) NOT NULL COMMENT '刀片重量（kg）',
  `Blade_Angle` decimal(5,2) NOT NULL COMMENT '刀片角度（度）',
  `Ground_Clearance` decimal(5,2) NOT NULL COMMENT '离地间隙（cm）',
  `Turning_Radius` decimal(5,2) NOT NULL COMMENT '转弯半径（m）',
  PRIMARY KEY (`Mower_ID`),
  KEY `fk_lawn_mowers_manufacturers` (`Manufacturer_ID`),
  CONSTRAINT `fk_lawn_mowers_manufacturers` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for maintenance
-- ----------------------------
DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE `maintenance` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT COMMENT '维护记录唯一标识',
  `Mower_ID` int NOT NULL COMMENT '除草机ID',
  `Maintenance_Date` varchar(255) NOT NULL COMMENT '维护日期',
  `Maintenance_Type` enum('Routine','Repair','Replacement') NOT NULL COMMENT '维护类型',
  `Cost` decimal(10,2) NOT NULL COMMENT '维护成本（美元）',
  `Description` text COMMENT '维护描述',
  `Service_Center` varchar(100) DEFAULT NULL COMMENT '服务中心名称',
  `Technician` varchar(100) DEFAULT NULL COMMENT '技术人员姓名',
  `Next_Maintenance_Date` varchar(255) DEFAULT NULL COMMENT '下次维护日期',
  `Labor_Cost` decimal(10,2) DEFAULT NULL COMMENT '人工成本（美元）',
  `Parts_Cost` decimal(10,2) DEFAULT NULL COMMENT '零件成本（美元）',
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Mower_ID` (`Mower_ID`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`Mower_ID`) REFERENCES `lawn_mowers` (`Mower_ID`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `CEO` varchar(100) DEFAULT NULL COMMENT '现任CEO',
  PRIMARY KEY (`Manufacturer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for performance_metrics
-- ----------------------------
DROP TABLE IF EXISTS `performance_metrics`;
CREATE TABLE `performance_metrics` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT COMMENT '性能指标唯一标识',
  `Mower_ID` int NOT NULL COMMENT '除草机ID',
  `Cutting_Efficiency` decimal(5,2) NOT NULL COMMENT '割草效率（平方米/小时）',
  `Noise_Level` decimal(5,2) NOT NULL COMMENT '噪音水平（分贝）',
  `Fuel_Consumption` decimal(5,2) DEFAULT NULL COMMENT '油耗（L/小时，适用于汽油机）',
  `Battery_Life` int DEFAULT NULL COMMENT '电池寿命（充电次数，适用于电动或电池驱动）',
  `Vibration_Level` decimal(5,2) NOT NULL COMMENT '振动水平（m/s²）',
  `Blade_Speed` int NOT NULL COMMENT '刀片转速（RPM）',
  `Mulching_Capability` tinyint(1) NOT NULL COMMENT '是否支持碎草功能（0-否，1-是）',
  `Self_Propelled` tinyint(1) NOT NULL COMMENT '是否自走式（0-否，1-是）',
  `Slope_Handling` decimal(5,2) DEFAULT NULL COMMENT '最大坡度处理能力（度）',
  `Energy_Efficiency` decimal(5,2) DEFAULT NULL COMMENT '能源效率（%，适用于电动或电池驱动）',
  `Torque` decimal(6,2) DEFAULT NULL COMMENT '扭矩（Nm，适用于汽油机）',
  `Acceleration` decimal(5,2) DEFAULT NULL COMMENT '加速度（m/s²）',
  `Deceleration` decimal(5,2) DEFAULT NULL COMMENT '减速度（m/s²）',
  PRIMARY KEY (`Performance_ID`),
  KEY `Mower_ID` (`Mower_ID`),
  CONSTRAINT `performance_metrics_ibfk_1` FOREIGN KEY (`Mower_ID`) REFERENCES `lawn_mowers` (`Mower_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `Sale_ID` int NOT NULL AUTO_INCREMENT COMMENT '销售记录唯一标识',
  `Mower_ID` int NOT NULL COMMENT '除草机ID',
  `Sale_Date` varchar(255) NOT NULL COMMENT '销售日期',
  `Sale_Price` decimal(10,2) NOT NULL COMMENT '销售价格（美元）',
  `Quantity` int NOT NULL COMMENT '销售数量',
  `Customer_ID` int NOT NULL COMMENT '客户ID',
  `Discount` decimal(5,2) DEFAULT NULL COMMENT '折扣（%）',
  `Tax_Rate` decimal(5,2) DEFAULT NULL COMMENT '税率（%）',
  `Total_Price` decimal(10,2) NOT NULL COMMENT '总价格（美元）',
  `Payment_Method` enum('Cash','Credit Card','Bank Transfer') NOT NULL COMMENT '支付方式',
  `Shipping_Cost` decimal(10,2) DEFAULT NULL COMMENT '运输成本（美元）',
  `Warranty_Period` int DEFAULT NULL COMMENT '保修期（月）',
  PRIMARY KEY (`Sale_ID`),
  KEY `Mower_ID` (`Mower_ID`),
  KEY `fk_sales_customers` (`Customer_ID`),
  CONSTRAINT `fk_sales_customers` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`Mower_ID`) REFERENCES `lawn_mowers` (`Mower_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
