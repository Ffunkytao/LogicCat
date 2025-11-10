/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : earphone

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 21:09:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audio_data
-- ----------------------------
DROP TABLE IF EXISTS `audio_data`;
CREATE TABLE `audio_data` (
  `Audio_Id` int NOT NULL AUTO_INCREMENT COMMENT '音频数据唯一标识',
  `Headphone_Id` int DEFAULT NULL COMMENT '耳机ID（外键）',
  `Driver_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '驱动单元类型（如动圈、动铁）',
  `Frequency_Response_Hz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '频率响应范围（赫兹）',
  `Total_Harmonic_Distortion_Percent` decimal(5,2) DEFAULT NULL COMMENT '总谐波失真（百分比）',
  `Sound_Pressure_Level_Db` decimal(5,1) DEFAULT NULL COMMENT '声压级（分贝）',
  `Impedance_Ohms` int DEFAULT NULL COMMENT '阻抗（欧姆）',
  `Sensitivity_Db` decimal(5,1) DEFAULT NULL COMMENT '灵敏度（分贝）',
  `Max_Input_Power_Mw` int DEFAULT NULL COMMENT '最大输入功率（毫瓦）',
  `Audio_Jack_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '音频接口类型（如 3.5mm、USB-C）',
  `Bluetooth_Version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '蓝牙版本（如 5.0）',
  `Audio_Codec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '支持的音频编解码器（如 SBC、AAC、LDAC）',
  PRIMARY KEY (`Audio_Id`),
  KEY `headphone_id` (`Headphone_Id`),
  CONSTRAINT `audio_data_ibfk_1` FOREIGN KEY (`Headphone_Id`) REFERENCES `headphones` (`Headphone_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for headphones
-- ----------------------------
DROP TABLE IF EXISTS `headphones`;
CREATE TABLE `headphones` (
  `Headphone_Id` int NOT NULL AUTO_INCREMENT COMMENT '耳机唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '耳机型号',
  `Manufacturer_Id` int DEFAULT NULL COMMENT '制造商ID（外键）',
  `Driver_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '驱动单元类型（如动圈、动铁）',
  `Ompedance_Ohms` int DEFAULT NULL COMMENT '阻抗（欧姆）',
  `Sensitivity_Db` decimal(5,1) DEFAULT NULL COMMENT '灵敏度（分贝）',
  `Frequency_Response_Hz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '频率响应范围（赫兹）',
  `Weight_Grams` decimal(10,2) DEFAULT NULL COMMENT '重量（克）',
  `Is_Wireless` tinyint(1) DEFAULT NULL COMMENT '是否无线',
  `Battery_Life_Hours` int DEFAULT NULL COMMENT '电池续航时间（小时）',
  `Release_Date` date DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10,2) DEFAULT NULL COMMENT '价格（美元）',
  `Noise_Cancellation` tinyint(1) DEFAULT NULL COMMENT '是否支持主动降噪',
  `Microphone` tinyint(1) DEFAULT NULL COMMENT '是否内置麦克风',
  `Water_Resistance` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '防水等级（如 IPX4）',
  PRIMARY KEY (`Headphone_Id`),
  KEY `manufacturer_id` (`Manufacturer_Id`),
  CONSTRAINT `headphones_ibfk_1` FOREIGN KEY (`Manufacturer_Id`) REFERENCES `manufacturers` (`Manufacturer_Id`)
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
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `Record_Id` int NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Headphone_Id` int DEFAULT NULL COMMENT '耳机ID（外键）',
  `User_Id` int DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '使用结束时间',
  `Usage_Duration_Minutes` int DEFAULT NULL COMMENT '使用时长（分钟）',
  `Volume_Level_Percent` int DEFAULT NULL COMMENT '平均音量水平（百分比）',
  `Battery_Consumed_Percent` int DEFAULT NULL COMMENT '电池消耗百分比',
  `Noise_Cancellation_Used` tinyint(1) DEFAULT NULL COMMENT '是否使用了主动降噪功能',
  `Microphone_Used` tinyint(1) DEFAULT NULL COMMENT '是否使用了麦克风',
  `Audio_Quality_Rating` int DEFAULT NULL COMMENT '用户对音质的评分（1-5 分）',
  `Comfort_Rating` int DEFAULT NULL COMMENT '用户对舒适度的评分（1-5 分）',
  PRIMARY KEY (`Record_Id`),
  KEY `headphone_id` (`Headphone_Id`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Headphone_Id`) REFERENCES `headphones` (`Headphone_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
