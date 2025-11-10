/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : television

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/01/2025 00:41:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for display_data
-- ----------------------------
DROP TABLE IF EXISTS `display_data`;
CREATE TABLE `display_data` (
  `Display_Id` int NOT NULL AUTO_INCREMENT COMMENT '显示数据唯一标识',
  `Television_Id` int DEFAULT NULL COMMENT '电视ID（外键）',
  `Resolution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '分辨率（如 4K、1080p）',
  `Refresh_Rate_Hz` int DEFAULT NULL COMMENT '刷新率（Hz）',
  `Panel_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '面板类型（如 LED、OLED、QLED）',
  `Brightness_Nits` int DEFAULT NULL COMMENT '亮度（尼特）',
  `Contrast_Ratio` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '对比度（如 1000:1）',
  `Color_Gamut_Percent` decimal(5,2) DEFAULT NULL COMMENT '色域覆盖率（百分比）',
  `Response_Time_Ms` decimal(5,2) DEFAULT NULL COMMENT '响应时间（毫秒）',
  `Viewing_Angle_Degrees` int DEFAULT NULL COMMENT '可视角度（度）',
  `Hdr_Support` tinyint(1) DEFAULT NULL COMMENT '是否支持 HDR',
  `Local_Dimming` tinyint(1) DEFAULT NULL COMMENT '是否支持局部调光',
  PRIMARY KEY (`Display_Id`),
  KEY `television_id` (`Television_Id`),
  CONSTRAINT `display_data_ibfk_1` FOREIGN KEY (`Television_Id`) REFERENCES `televisions` (`Television_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `Manufacturer_Id` int NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Manufacturer_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商名称',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '制造商所在国家',
  `Revenue_Usd` decimal(15,2) DEFAULT NULL COMMENT '年度营业额（美元）',
  `Profit_Usd` decimal(15,2) DEFAULT NULL COMMENT '年度利润（美元）',
  `Market_Share_Percent` decimal(5,2) DEFAULT NULL COMMENT '市场份额（百分比）',
  `Employees` int DEFAULT NULL COMMENT '员工数量',
  `Founded_Year` year DEFAULT NULL COMMENT '成立年份',
  `Headquarters` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '总部地址',
  `Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '官方网站',
  `Contact_Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系邮箱',
  PRIMARY KEY (`Manufacturer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for televisions
-- ----------------------------
DROP TABLE IF EXISTS `televisions`;
CREATE TABLE `televisions` (
  `Television_Id` int NOT NULL AUTO_INCREMENT COMMENT '电视唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电视型号',
  `Manufacturer_Id` int DEFAULT NULL COMMENT '制造商ID（外键）',
  `Screen_Size_Inches` decimal(5,2) DEFAULT NULL COMMENT '屏幕尺寸（英寸）',
  `Resolution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '分辨率（如 4K、1080p）',
  `Refresh_Rate_Hz` int DEFAULT NULL COMMENT '刷新率（Hz）',
  `Panel_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '面板类型（如 LED、OLED、QLED）',
  `Smart_Tv` tinyint(1) DEFAULT NULL COMMENT '是否支持智能电视功能',
  `Hdr_Support` tinyint(1) DEFAULT NULL COMMENT '是否支持 HDR',
  `Release_Date` date DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10,2) DEFAULT NULL COMMENT '价格（美元）',
  `Weight_Kg` decimal(10,2) DEFAULT NULL COMMENT '重量（千克）',
  `Energy_Rating` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '能效等级（如 A++、B）',
  `Hdmi_Ports` int DEFAULT NULL COMMENT 'HDMI 接口数量',
  `Usb_Ports` int DEFAULT NULL COMMENT 'USB 接口数量',
  PRIMARY KEY (`Television_Id`),
  KEY `manufacturer_id` (`Manufacturer_Id`),
  CONSTRAINT `televisions_ibfk_1` FOREIGN KEY (`Manufacturer_Id`) REFERENCES `manufacturers` (`Manufacturer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `Record_Id` int NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Television_Id` int DEFAULT NULL COMMENT '电视ID（外键）',
  `User_Id` int DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '使用结束时间',
  `Usage_Duration_Minutes` int DEFAULT NULL COMMENT '使用时长（分钟）',
  `Average_Brightness_Percent` int DEFAULT NULL COMMENT '平均亮度（百分比）',
  `Energy_Consumed_Kwh` decimal(10,2) DEFAULT NULL COMMENT '消耗电量（千瓦时）',
  `App_Used` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '使用的应用程序（如 Netflix、YouTube）',
  `Content_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '观看的内容类型（如电影、体育、新闻）',
  `User_Rating` int DEFAULT NULL COMMENT '用户评分（1-5 分）',
  PRIMARY KEY (`Record_Id`),
  KEY `television_id` (`Television_Id`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Television_Id`) REFERENCES `televisions` (`Television_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
