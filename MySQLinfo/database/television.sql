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

 Date: 11/08/2025 12:31:07
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
-- Records of display_data
-- ----------------------------
BEGIN;
INSERT INTO `display_data` VALUES (1, 1, '4K', 120, 'QLED', 1500, '1000000:1', 98.50, 5.00, 178, 1, 1);
INSERT INTO `display_data` VALUES (2, 2, '4K', 120, 'OLED', 800, 'Infinite:1', 99.00, 1.00, 178, 1, 0);
INSERT INTO `display_data` VALUES (3, 3, '4K', 120, 'LED', 1000, '5000:1', 95.00, 8.00, 178, 1, 1);
COMMIT;

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
-- Records of manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `manufacturers` VALUES (1, 'Samsung', 'South Korea', 200000000000.00, 30000000000.00, 30.00, 287000, 1938, 'Suwon, South Korea', 'https://www.samsung.com', 'support@samsung.com');
INSERT INTO `manufacturers` VALUES (2, 'LG', 'South Korea', 60000000000.00, 5000000000.00, 20.00, 75000, 1947, 'Seoul, South Korea', 'https://www.lg.com', 'support@lg.com');
INSERT INTO `manufacturers` VALUES (3, 'Sony', 'Japan', 80000000000.00, 6000000000.00, 15.00, 110000, 1946, 'Tokyo, Japan', 'https://www.sony.com', 'support@sony.com');
COMMIT;

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
-- Records of televisions
-- ----------------------------
BEGIN;
INSERT INTO `televisions` VALUES (1, 'QN90A', 1, 65.00, '4K', 120, 'QLED', 1, 1, '2021-03-01', 1999.99, 28.50, 'A++', 4, 2);
INSERT INTO `televisions` VALUES (2, 'C1', 2, 55.00, '4K', 120, 'OLED', 1, 1, '2021-04-15', 1499.99, 18.20, 'A+', 4, 3);
INSERT INTO `televisions` VALUES (3, 'X90J', 3, 75.00, '4K', 120, 'LED', 1, 1, '2021-05-01', 2499.99, 35.00, 'A++', 4, 2);
COMMIT;

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

-- ----------------------------
-- Records of usage_records
-- ----------------------------
BEGIN;
INSERT INTO `usage_records` VALUES (1, 1, 101, '2023-10-01 18:00:00', '2023-10-01 20:30:00', 150, 70, 1.50, 'Netflix', 'Movie', 5);
INSERT INTO `usage_records` VALUES (2, 2, 102, '2023-10-02 19:00:00', '2023-10-02 21:00:00', 120, 60, 1.20, 'YouTube', 'Sports', 4);
INSERT INTO `usage_records` VALUES (3, 3, 103, '2023-10-03 20:00:00', '2023-10-03 22:00:00', 120, 80, 1.80, 'Disney+', 'Movie', 5);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
