/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : printer

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 23:05:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for consumables
-- ----------------------------
DROP TABLE IF EXISTS `consumables`;
CREATE TABLE `consumables` (
  `Consumable_ID` int NOT NULL AUTO_INCREMENT COMMENT '耗材唯一标识',
  `Printer_ID` int NOT NULL COMMENT '打印机ID',
  `Type` enum('Toner','Ink','Drum','Fuser','Paper') NOT NULL COMMENT '耗材类型',
  `Model` varchar(100) NOT NULL COMMENT '耗材型号',
  `Capacity` varchar(50) NOT NULL COMMENT '容量（如 5000页）',
  `Current_Level` decimal(5,2) NOT NULL COMMENT '当前剩余量（%）',
  `Last_Replacement_Date` varchar(255) DEFAULT NULL COMMENT '上次更换日期',
  `Next_Replacement_Date` varchar(255) DEFAULT NULL COMMENT '预计更换日期',
  `Cost` decimal(10,2) NOT NULL COMMENT '耗材成本（美元）',
  PRIMARY KEY (`Consumable_ID`),
  KEY `Printer_ID` (`Printer_ID`),
  CONSTRAINT `consumables_ibfk_1` FOREIGN KEY (`Printer_ID`) REFERENCES `printers` (`Printer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for maintenance_logs
-- ----------------------------
DROP TABLE IF EXISTS `maintenance_logs`;
CREATE TABLE `maintenance_logs` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT COMMENT '维护记录唯一标识',
  `Printer_ID` int NOT NULL COMMENT '打印机ID',
  `Maintenance_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维护日期',
  `Maintenance_Type` enum('Routine','Repair','Upgrade') NOT NULL COMMENT '维护类型',
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '维护描述',
  `Cost` decimal(10,2) NOT NULL COMMENT '维护成本（美元）',
  `Technician` varchar(100) DEFAULT NULL COMMENT '技术人员姓名',
  `Next_Maintenance_Date` varchar(255) DEFAULT NULL COMMENT '下次维护日期',
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Printer_ID` (`Printer_ID`),
  CONSTRAINT `maintenance_logs_ibfk_1` FOREIGN KEY (`Printer_ID`) REFERENCES `printers` (`Printer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for print_jobs
-- ----------------------------
DROP TABLE IF EXISTS `print_jobs`;
CREATE TABLE `print_jobs` (
  `Job_ID` int NOT NULL AUTO_INCREMENT COMMENT '打印任务唯一标识',
  `Printer_ID` int NOT NULL COMMENT '打印机ID',
  `User_ID` int NOT NULL COMMENT '用户ID',
  `Job_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务日期',
  `Document_Name` varchar(255) NOT NULL COMMENT '文档名称',
  `Page_Count` int NOT NULL COMMENT '页数',
  `Color_Usage` enum('Monochrome','Color') NOT NULL COMMENT '颜色使用',
  `Paper_Size` varchar(50) NOT NULL COMMENT '纸张尺寸',
  `Duplex` tinyint(1) NOT NULL COMMENT '是否双面打印（0-否，1-是）',
  `Status` enum('Pending','Completed','Failed') NOT NULL COMMENT '任务状态',
  PRIMARY KEY (`Job_ID`),
  KEY `Printer_ID` (`Printer_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `print_jobs_ibfk_1` FOREIGN KEY (`Printer_ID`) REFERENCES `printers` (`Printer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `print_jobs_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for printers
-- ----------------------------
DROP TABLE IF EXISTS `printers`;
CREATE TABLE `printers` (
  `Printer_ID` int NOT NULL AUTO_INCREMENT COMMENT '打印机唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '型号',
  `Year` int NOT NULL COMMENT '生产年份',
  `Type` enum('Laser','Inkjet','Dot Matrix','3D') NOT NULL COMMENT '打印机类型',
  `Color_Support` enum('Monochrome','Color') NOT NULL COMMENT '颜色支持',
  `Max_Resolution` varchar(50) NOT NULL COMMENT '最大分辨率（如 1200x1200 dpi）',
  `Print_Speed` varchar(50) NOT NULL COMMENT '打印速度（如 30 ppm）',
  `Paper_Size_Support` varchar(100) NOT NULL COMMENT '支持的纸张尺寸（如 A4, Letter）',
  `Tray_Capacity` int NOT NULL COMMENT '纸盘容量（张）',
  `Weight` decimal(6,2) NOT NULL COMMENT '重量（千克）',
  `Power_Consumption` decimal(6,2) NOT NULL COMMENT '功耗（瓦）',
  `Installation_Date` varchar(255) NOT NULL COMMENT '安装日期',
  `Location` varchar(255) NOT NULL COMMENT '安装位置',
  `IP_Address` varchar(15) DEFAULT NULL COMMENT '网络IP地址',
  PRIMARY KEY (`Printer_ID`),
  KEY `Manufacturer_ID` (`Manufacturer_ID`),
  CONSTRAINT `printers_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT COMMENT '用户唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '用户姓名',
  `Email` varchar(100) NOT NULL COMMENT '用户邮箱',
  `Phone` varchar(20) DEFAULT NULL COMMENT '用户电话',
  `Department` varchar(100) DEFAULT NULL COMMENT '所属部门',
  `Role` enum('Admin','User','Guest') NOT NULL COMMENT '用户角色',
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
