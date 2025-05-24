/*
 Navicat Premium Data Transfer

 Source Server         : RemoteComplexdatabase
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : earphone

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 24/05/2025 13:25:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audio_data
-- ----------------------------
DROP TABLE IF EXISTS `audio_data`;
CREATE TABLE `audio_data`  (
  `Audio_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '音频数据唯一标识',
  `Headphone_Id` int(0) NULL DEFAULT NULL COMMENT '耳机ID（外键）',
  `Driver_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '驱动单元类型（如动圈、动铁）',
  `Frequency_Response_Hz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '频率响应范围（赫兹）',
  `Total_Harmonic_Distortion_Percent` decimal(5, 2) NULL DEFAULT NULL COMMENT '总谐波失真（百分比）',
  `Sound_Pressure_Level_Db` decimal(5, 1) NULL DEFAULT NULL COMMENT '声压级（分贝）',
  `Impedance_Ohms` int(0) NULL DEFAULT NULL COMMENT '阻抗（欧姆）',
  `Sensitivity_Db` decimal(5, 1) NULL DEFAULT NULL COMMENT '灵敏度（分贝）',
  `Max_Input_Power_Mw` int(0) NULL DEFAULT NULL COMMENT '最大输入功率（毫瓦）',
  `Audio_Jack_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '音频接口类型（如 3.5mm、USB-C）',
  `Bluetooth_Version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '蓝牙版本（如 5.0）',
  `Audio_Codec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支持的音频编解码器（如 SBC、AAC、LDAC）',
  PRIMARY KEY (`Audio_Id`) USING BTREE,
  INDEX `headphone_id`(`Headphone_Id`) USING BTREE,
  CONSTRAINT `audio_data_ibfk_1` FOREIGN KEY (`Headphone_Id`) REFERENCES `headphones` (`Headphone_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audio_data
-- ----------------------------
INSERT INTO `audio_data` VALUES (1, 1, 'Dynamic', '4-40000', 0.02, 104.5, 32, 104.5, 1500, '3.5mm', '5.0', 'LDAC');
INSERT INTO `audio_data` VALUES (2, 2, 'Dynamic', '10-24000', 0.01, 110.0, 20, 110.0, 1000, '3.5mm', '5.1', 'AAC');
INSERT INTO `audio_data` VALUES (3, 3, 'Dynamic', '10-41000', 0.05, 104.0, 150, 104.0, 200, '6.35mm', NULL, NULL);

-- ----------------------------
-- Table structure for headphones
-- ----------------------------
DROP TABLE IF EXISTS `headphones`;
CREATE TABLE `headphones`  (
  `Headphone_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '耳机唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '耳机型号',
  `Manufacturer_Id` int(0) NULL DEFAULT NULL COMMENT '制造商ID（外键）',
  `Driver_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '驱动单元类型（如动圈、动铁）',
  `Ompedance_Ohms` int(0) NULL DEFAULT NULL COMMENT '阻抗（欧姆）',
  `Sensitivity_Db` decimal(5, 1) NULL DEFAULT NULL COMMENT '灵敏度（分贝）',
  `Frequency_Response_Hz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '频率响应范围（赫兹）',
  `Weight_Grams` decimal(10, 2) NULL DEFAULT NULL COMMENT '重量（克）',
  `Is_Wireless` tinyint(1) NULL DEFAULT NULL COMMENT '是否无线',
  `Battery_Life_Hours` int(0) NULL DEFAULT NULL COMMENT '电池续航时间（小时）',
  `Release_Date` date NULL DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格（美元）',
  `Noise_Cancellation` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持主动降噪',
  `Microphone` tinyint(1) NULL DEFAULT NULL COMMENT '是否内置麦克风',
  `Water_Resistance` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防水等级（如 IPX4）',
  `Impedance_Ohms` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Headphone_Id`) USING BTREE,
  INDEX `manufacturer_id`(`Manufacturer_Id`) USING BTREE,
  CONSTRAINT `headphones_ibfk_1` FOREIGN KEY (`Manufacturer_Id`) REFERENCES `manufacturers` (`Manufacturer_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of headphones
-- ----------------------------
INSERT INTO `headphones` VALUES (1, 'WH-1000XM4', 1, 'Dynamic', 32, 104.5, '4-40000', 254.00, 1, 30, '2020-08-06', 349.99, 1, 1, NULL, NULL);
INSERT INTO `headphones` VALUES (2, 'QuietComfort 45', 2, 'Dynamic', 20, 110.0, '10-24000', 240.00, 1, 24, '2021-09-23', 329.00, 1, 1, NULL, NULL);
INSERT INTO `headphones` VALUES (3, 'HD 660 S', 3, 'Dynamic', 150, 104.0, '10-41000', 260.00, 0, NULL, '2017-02-01', 499.95, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers`  (
  `Manufacturer_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Manufacturer_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商名称',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '制造商所在国家',
  `Revenue_Usd` decimal(15, 2) NULL DEFAULT NULL COMMENT '年度营业额（美元）',
  `Profit_Usd` decimal(15, 2) NULL DEFAULT NULL COMMENT '年度利润（美元）',
  `Market_Share_Percent` decimal(5, 2) NULL DEFAULT NULL COMMENT '市场份额（百分比）',
  `Employees` int(0) NULL DEFAULT NULL COMMENT '员工数量',
  `Founded_Year` year NULL DEFAULT NULL COMMENT '成立年份',
  `Headquarters` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '总部地址',
  `Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '官方网站',
  `Contact_Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  PRIMARY KEY (`Manufacturer_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
INSERT INTO `manufacturers` VALUES (1, 'Sony', 'Japan', 80000000000.00, 6000000000.00, 20.50, 110000, 1946, 'Tokyo, Japan', 'https://www.sony.com', 'support@sony.com');
INSERT INTO `manufacturers` VALUES (2, 'Bose', 'USA', 3000000000.00, 500000000.00, 15.00, 9000, 1964, 'Framingham, Massachusetts, USA', 'https://www.bose.com', 'support@bose.com');
INSERT INTO `manufacturers` VALUES (3, 'Sennheiser', 'Germany', 700000000.00, 100000000.00, 10.00, 2800, 1945, 'Wedemark, Germany', 'https://www.sennheiser.com', 'support@sennheiser.com');

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records`  (
  `Record_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Headphone_Id` int(0) NULL DEFAULT NULL COMMENT '耳机ID（外键）',
  `User_Id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime(0) NULL DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime(0) NULL DEFAULT NULL COMMENT '使用结束时间',
  `Usage_Duration_Minutes` int(0) NULL DEFAULT NULL COMMENT '使用时长（分钟）',
  `Volume_Level_Percent` int(0) NULL DEFAULT NULL COMMENT '平均音量水平（百分比）',
  `Battery_Consumed_Percent` int(0) NULL DEFAULT NULL COMMENT '电池消耗百分比',
  `Noise_Cancellation_Used` tinyint(1) NULL DEFAULT NULL COMMENT '是否使用了主动降噪功能',
  `Microphone_Used` tinyint(1) NULL DEFAULT NULL COMMENT '是否使用了麦克风',
  `Audio_Quality_Rating` int(0) NULL DEFAULT NULL COMMENT '用户对音质的评分（1-5 分）',
  `Comfort_Rating` int(0) NULL DEFAULT NULL COMMENT '用户对舒适度的评分（1-5 分）',
  PRIMARY KEY (`Record_Id`) USING BTREE,
  INDEX `headphone_id`(`Headphone_Id`) USING BTREE,
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Headphone_Id`) REFERENCES `headphones` (`Headphone_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
INSERT INTO `usage_records` VALUES (1, 1, 101, '2023-10-01 10:00:00', '2023-10-01 12:00:00', 120, 70, 20, 1, 1, 5, 4);
INSERT INTO `usage_records` VALUES (2, 2, 102, '2023-10-02 14:00:00', '2023-10-02 16:30:00', 150, 80, 30, 1, 0, 4, 5);
INSERT INTO `usage_records` VALUES (3, 3, 103, '2023-10-03 09:00:00', '2023-10-03 11:00:00', 120, 60, NULL, 0, 0, 5, 5);

SET FOREIGN_KEY_CHECKS = 1;
