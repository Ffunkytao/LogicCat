/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : television

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:28:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for display_data
-- ----------------------------
DROP TABLE IF EXISTS `display_data`;
CREATE TABLE `display_data`  (
  `Display_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '显示数据唯一标识',
  `Television_Id` int(0) NULL DEFAULT NULL COMMENT '电视ID（外键）',
  `Resolution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分辨率（如 4K、1080p）',
  `Refresh_Rate_Hz` int(0) NULL DEFAULT NULL COMMENT '刷新率（Hz）',
  `Panel_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '面板类型（如 LED、OLED、QLED）',
  `Brightness_Nits` int(0) NULL DEFAULT NULL COMMENT '亮度（尼特）',
  `Contrast_Ratio` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '对比度（如 1000:1）',
  `Color_Gamut_Percent` decimal(5, 2) NULL DEFAULT NULL COMMENT '色域覆盖率（百分比）',
  `Response_Time_Ms` decimal(5, 2) NULL DEFAULT NULL COMMENT '响应时间（毫秒）',
  `Viewing_Angle_Degrees` int(0) NULL DEFAULT NULL COMMENT '可视角度（度）',
  `Hdr_Support` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持 HDR',
  `Local_Dimming` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持局部调光',
  PRIMARY KEY (`Display_Id`) USING BTREE,
  INDEX `television_id`(`Television_Id`) USING BTREE,
  CONSTRAINT `display_data_ibfk_1` FOREIGN KEY (`Television_Id`) REFERENCES `televisions` (`Television_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of display_data
-- ----------------------------
INSERT INTO `display_data` VALUES (1, 1, '4K', 120, 'QLED', 1500, '1000000:1', 98.50, 5.00, 178, 1, 1);
INSERT INTO `display_data` VALUES (2, 2, '4K', 120, 'OLED', 800, 'Infinite:1', 99.00, 1.00, 178, 1, 0);
INSERT INTO `display_data` VALUES (3, 3, '4K', 120, 'LED', 1000, '5000:1', 95.00, 8.00, 178, 1, 1);
INSERT INTO `display_data` VALUES (4, 4, '8K', 1000000, 'QLED', 2000, '1000000:1', 99.50, 1.00, 178, 1, 1);
INSERT INTO `display_data` VALUES (7, 1, '1080p', 60, 'LED', 600, '3000:1', 90.00, 10.00, 170, 1, 1);
INSERT INTO `display_data` VALUES (8, 2, '1080p', 120, 'LED', 900, '4000:1', 92.00, 5.00, 170, 1, 1);
INSERT INTO `display_data` VALUES (9, 3, '8K', 1000000, 'QLED', 1500, '1000000:1', 99.00, 1.00, 178, 1, 0);
INSERT INTO `display_data` VALUES (10, 4, '8K', 2147483647, 'QLED', 2000, '1000000:1', 99.50, 0.01, 178, 0, 1);
INSERT INTO `display_data` VALUES (11, 5, '4K', 120, 'LED', 700, '3000:1', 85.00, 10.00, 80, 1, 1);
INSERT INTO `display_data` VALUES (12, 6, '4K', 144, 'QLED', 750, '5000:1', 88.00, 5.00, 75, 1, 0);
INSERT INTO `display_data` VALUES (13, 7, '8K', 2147483647, 'LED', 1200, '8000:1', 95.00, 2.00, 85, 0, 1);
INSERT INTO `display_data` VALUES (14, 8, '8K', 2147483647, 'QLED', 1300, '9000:1', 94.00, 1.50, 90, 0, 1);
INSERT INTO `display_data` VALUES (15, 5, '4K', 120, 'LED', 700, '3000:1', 85.00, 10.00, 80, 1, 1);
INSERT INTO `display_data` VALUES (16, 6, '4K', 144, 'QLED', 750, '5000:1', 88.00, 5.00, 75, 1, 0);
INSERT INTO `display_data` VALUES (17, 7, '8K', 2147483647, 'LED', 1200, '8000:1', 95.00, 2.00, 85, 0, 1);
INSERT INTO `display_data` VALUES (18, 8, '8K', 2147483647, 'QLED', 1300, '9000:1', 94.00, 1.50, 90, 0, 1);
INSERT INTO `display_data` VALUES (19, 1, '4K', 120, 'QLED', 600, '5000:1', 92.00, 8.00, 178, 1, 1);
INSERT INTO `display_data` VALUES (20, 1, '4K', 120, 'QLED', 600, '5000:1', 92.00, 8.00, 178, 1, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
INSERT INTO `manufacturers` VALUES (1, 'Samsung', 'South Korea', 200000000000.00, 30000000000.00, 30.00, 287000, 1938, 'Suwon, South Korea', 'https://www.samsung.com', 'support@samsung.com');
INSERT INTO `manufacturers` VALUES (2, 'LG', 'South Korea', 60000000000.00, 5000000000.00, 20.00, 75000, 1947, 'Seoul, South Korea', 'https://www.lg.com', 'support@lg.com');
INSERT INTO `manufacturers` VALUES (3, 'Sony', 'Japan', 80000000000.00, 6000000000.00, 15.00, 110000, 1946, 'Tokyo, Japan', 'https://www.sony.com', 'support@sony.com');
INSERT INTO `manufacturers` VALUES (4, 'UltraProfit Corp', 'N/A', 2000000000000.00, 1000000000000.00, 0.10, 1, 2025, 'Nowhere City', 'https://www.ultraprofit.example\r\n', 'contact@ultraprofit.example\r\n');
INSERT INTO `manufacturers` VALUES (5, 'USABigOne', 'USA', 50000000000.00, 5000000000.00, 30.00, 10000, 2000, 'New York, USA', 'https://www.usabigone.com', 'contact@usabigone.com');
INSERT INTO `manufacturers` VALUES (6, 'USAMidCorp', 'USA', 10000000000.00, 4000000000.00, 20.00, 50000, 2010, 'San Francisco, USA', 'https://www.usamidcorp.com', 'contact@usamidcorp.com');
INSERT INTO `manufacturers` VALUES (7, 'USASmallInc', 'USA', 5000000000.00, 3000000000.00, 10.00, 100000, 2015, 'Austin, USA', 'https://www.usasmallinc.com', 'contact@usasmallinc.com');
INSERT INTO `manufacturers` VALUES (8, 'OldLowShareDE', 'Germany', 1000000000.00, 50000000.00, 4.00, 5000, 1980, 'Berlin, Germany', 'https://www.oldlowsharede.com', 'contact@oldlowsharede.com');
INSERT INTO `manufacturers` VALUES (9, 'MegaInefficient', 'Canada', 300000000000.00, 120000000000.00, 8.00, 20000000, 2010, 'Toronto, Canada', 'https://www.megainefficient.com', 'contact@megainefficient.com');
INSERT INTO `manufacturers` VALUES (10, 'HyperProfitNoSite', 'Nowhere', 9000000000000.00, 8000000000000.00, 40.00, 100000, 2010, 'Nowhere City', NULL, 'contact@hyperprofitnosite.com');
INSERT INTO `manufacturers` VALUES (11, 'SkewLandSmall1', 'SkewLand', 100000000.00, 10000000.00, 1.00, 500, 1990, 'Capital City, SkewLand', 'https://small1.skew\r\n', 'contact@small1.skew\r\n');
INSERT INTO `manufacturers` VALUES (12, 'SkewLandBigA', 'SkewLand', 900000000.00, 90000000.00, 9.00, 800, 1995, 'Capital City, SkewLand', 'https://biga.skew\r\n', 'contact@biga.skew\r\n');
INSERT INTO `manufacturers` VALUES (13, 'SkewLandBigB', 'SkewLand', 950000000.00, 95000000.00, 9.00, 900, 2000, 'Capital City, SkewLand', 'https://bigb.skew\r\n', 'contact@bigb.skew\r\n');
INSERT INTO `manufacturers` VALUES (14, 'SkewLandBigC', 'SkewLand', 970000000.00, 97000000.00, 9.00, 950, 2005, 'Capital City, SkewLand', 'https://bigc.skew\r\n', 'contact@bigc.skew\r\n');
INSERT INTO `manufacturers` VALUES (15, 'RapidGiant2022', 'SkewLand', 5000000000.00, 300000000.00, 9.00, 5000, 2022, 'New City, SkewLand', 'https://rapidgiant.skew\r\n', 'contact@rapidgiant.skew\r\n');
INSERT INTO `manufacturers` VALUES (16, 'NegStaffCorpA', 'USA', 500000000000.00, 200000000000.00, 5.00, -500, 2015, 'New York, USA', 'https://www.negstaffa.com\r\n', 'contact@negstaffa.com\r\n');
INSERT INTO `manufacturers` VALUES (17, 'NegStaffCorpB', 'Japan', 300000000000.00, 150000000000.00, 4.00, -1000, 2018, 'Tokyo, Japan', 'https://www.negstaffb.jp\r\n', 'contact@negstaffb.jp\r\n');
INSERT INTO `manufacturers` VALUES (18, 'NegStaffCorpC', 'Germany', 100000000000.00, 50000000000.00, 3.00, -200, 2020, 'Berlin, Germany', 'https://www.negstaffc.de\r\n', 'contact@negstaffc.de\r\n');
INSERT INTO `manufacturers` VALUES (19, 'LowMarginGiantA', 'USA', 100000000000.00, 1500000000.00, 10.00, 2000, 1990, 'New York, USA', 'https://lowmga.com', 'contact@lowmga.com');
INSERT INTO `manufacturers` VALUES (20, 'LowMarginGiantB', 'Japan', 200000000000.00, 3000000000.00, 8.00, 5000, 1985, 'Tokyo, Japan', 'https://lowmgb.jp', 'contact@lowmgb.jp');
INSERT INTO `manufacturers` VALUES (21, 'LowMarginGiantC', 'Germany', 150000000000.00, 2000000000.00, 7.00, 3000, 2000, 'Berlin, Germany', 'https://lowmgc.de', 'contact@lowmgc.de');
INSERT INTO `manufacturers` VALUES (22, 'LowMarginGiantA', 'USA', 100000000000.00, 1500000000.00, 10.00, 2000, 1990, 'New York, USA', 'https://lowmga.com', 'contact@lowmga.com');
INSERT INTO `manufacturers` VALUES (23, 'LowMarginGiantB', 'Japan', 200000000000.00, 3000000000.00, 8.00, 5000, 1985, 'Tokyo, Japan', 'https://lowmgb.jp', 'contact@lowmgb.jp');
INSERT INTO `manufacturers` VALUES (24, 'LowMarginGiantC', 'Germany', 150000000000.00, 2000000000.00, 7.00, 3000, 2000, 'Berlin, Germany', 'https://lowmgc.de', 'contact@lowmgc.de');
INSERT INTO `manufacturers` VALUES (25, 'PhantomProfitX', 'Nowhere', 9999999999999.00, 9999999999999.00, 20.00, 0, 2022, 'Phantom City', NULL, 'contact@phantomx.com');
INSERT INTO `manufacturers` VALUES (26, 'PhantomProfitY', 'Nowhere', 8888888888888.00, 8888888888888.00, 18.00, 0, 2023, 'Ghost Town', NULL, 'contact@phantomy.com');
INSERT INTO `manufacturers` VALUES (27, 'VolLandCorp1', 'VolLand', 1000000000.00, 10000000.00, 5.00, 5000, 2000, 'Capital City, VolLand', 'https://volcorp1.example\r\n', 'contact1@volcorp.example\r\n');
INSERT INTO `manufacturers` VALUES (28, 'VolLandCorp2', 'VolLand', 1000000000.00, 20000000.00, 6.00, 6000, 2005, 'Capital City, VolLand', 'https://volcorp2.example\r\n', 'contact2@volcorp.example\r\n');
INSERT INTO `manufacturers` VALUES (29, 'VolLandCorp3', 'VolLand', 1000000000.00, 500000000.00, 7.00, 7000, 2010, 'Capital City, VolLand', 'https://volcorp3.example\r\n', 'contact3@volcorp.example\r\n');
INSERT INTO `manufacturers` VALUES (30, 'OldTinyShareA', 'USA', 5000000000.00, 200000000.00, 0.50, 3000, 1960, 'New York, USA', 'https://oldtinyA.example\r\n', 'contact@oldtinyA.example\r\n');
INSERT INTO `manufacturers` VALUES (31, 'OldTinyShareB', 'UK', 4000000000.00, 150000000.00, 0.80, 2500, 1965, 'London, UK', 'https://oldtinyB.example\r\n', 'contact@oldtinyB.example\r\n');
INSERT INTO `manufacturers` VALUES (32, 'OldTinyShareC', 'France', 3000000000.00, 100000000.00, 0.90, 2000, 1970, 'Paris, France', 'https://oldtinyC.example\r\n', 'contact@oldtinyC.example\r\n');
INSERT INTO `manufacturers` VALUES (33, 'OverShareA', 'MarketLand', 1000000000.00, 100000000.00, 999.99, 1000, 2015, 'City A, MarketLand', 'https://oversharea.example\r\n', NULL);
INSERT INTO `manufacturers` VALUES (34, 'OverShareB', 'MarketLand', 800000000.00, 80000000.00, 999.99, 800, 2016, 'City B, MarketLand', 'https://overshareb.example\r\n', NULL);
INSERT INTO `manufacturers` VALUES (35, 'OverShareC', 'MarketLand', 600000000.00, 60000000.00, 999.99, 600, 2017, 'City C, MarketLand', 'https://oversharec.example\r\n', NULL);
INSERT INTO `manufacturers` VALUES (36, 'LegacyMinorA', 'USA', 2000000000.00, 50000000.00, 3.50, 1500, 1960, 'New York, USA', 'https://legacyminora.example', 'contact@legacyminora.example');
INSERT INTO `manufacturers` VALUES (37, 'LegacyMinorB', 'UK', 1500000000.00, 30000000.00, 2.00, 1200, 1965, 'London, UK', 'https://legacyminorb.example', 'contact@legacyminorb.example');
INSERT INTO `manufacturers` VALUES (38, 'UltraEnergyCorp', 'Nowhere', 9000000000000.00, 9000000000000.00, 10.00, 10, 2020, 'Nowhere City', 'https://ultraenergy.example', 'contact@ultraenergy.example');

-- ----------------------------
-- Table structure for televisions
-- ----------------------------
DROP TABLE IF EXISTS `televisions`;
CREATE TABLE `televisions`  (
  `Television_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '电视唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电视型号',
  `Manufacturer_Id` int(0) NULL DEFAULT NULL COMMENT '制造商ID（外键）',
  `Screen_Size_Inches` decimal(5, 2) NULL DEFAULT NULL COMMENT '屏幕尺寸（英寸）',
  `Resolution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分辨率（如 4K、1080p）',
  `Refresh_Rate_Hz` int(0) NULL DEFAULT NULL COMMENT '刷新率（Hz）',
  `Panel_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '面板类型（如 LED、OLED、QLED）',
  `Smart_Tv` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持智能电视功能',
  `Hdr_Support` tinyint(1) NULL DEFAULT NULL COMMENT '是否支持 HDR',
  `Release_Date` date NULL DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格（美元）',
  `Weight_Kg` decimal(10, 2) NULL DEFAULT NULL COMMENT '重量（千克）',
  `Energy_Rating` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '能效等级（如 A++、B）',
  `Hdmi_Ports` int(0) NULL DEFAULT NULL COMMENT 'HDMI 接口数量',
  `Usb_Ports` int(0) NULL DEFAULT NULL COMMENT 'USB 接口数量',
  PRIMARY KEY (`Television_Id`) USING BTREE,
  INDEX `manufacturer_id`(`Manufacturer_Id`) USING BTREE,
  CONSTRAINT `televisions_ibfk_1` FOREIGN KEY (`Manufacturer_Id`) REFERENCES `manufacturers` (`Manufacturer_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of televisions
-- ----------------------------
INSERT INTO `televisions` VALUES (1, 'QN90A', 1, 65.00, '4K', 120, 'QLED', 1, 1, '2021-03-01', 1999.99, 28.50, 'A++', 4, 2);
INSERT INTO `televisions` VALUES (2, 'C1', 2, 55.00, '4K', 120, 'OLED', 1, 1, '2021-04-15', 1499.99, 18.20, 'A+', 4, 3);
INSERT INTO `televisions` VALUES (3, 'X90J', 3, 75.00, '4K', 120, 'LED', 1, 1, '2021-05-01', 2499.99, 35.00, 'A++', 4, 2);
INSERT INTO `televisions` VALUES (4, 'TEST10000HZ', 1, 55.00, '4K', 10000, 'LED', 1, 1, '2025-01-01', 4999.99, 15.00, 'A++', 4, 2);
INSERT INTO `televisions` VALUES (5, 'PLASMA_CORR_1', 1, 40.00, '4K', 60, 'PLASMA', 1, 1, '2022-01-01', 3000.00, 15.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (6, 'PLASMA_CORR_2', 1, 60.00, '4K', 60, 'PLASMA', 1, 1, '2022-01-01', 2000.00, 20.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (7, 'PLASMA_CORR_3', 1, 80.00, '4K', 60, 'PLASMA', 1, 1, '2022-01-01', 1000.00, 25.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (8, '4K_LOW_HDMI', 2, 50.00, '4K', 60, 'LED', 1, 1, '2023-01-01', 800.00, 12.00, 'A', 2, 2);
INSERT INTO `televisions` VALUES (9, 'ULTRA_LIGHT', 3, 999.99, '8K', 120, 'WEIRD', 1, 1, '2025-01-01', 100000.00, 0.01, 'A', 1, 0);
INSERT INTO `televisions` VALUES (10, 'KURT_PANEL_1', 1, 55.00, '4K', 60, 'KURT_PANEL', 1, 1, '2023-01-01', 1000.00, 20.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (11, 'KURT_PANEL_2', 1, 65.00, '4K', 60, 'KURT_PANEL', 1, 1, '2023-01-01', 1000.00, 22.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (12, 'KURT_PANEL_3', 1, 75.00, '4K', 60, 'KURT_PANEL', 1, 1, '2023-01-01', 1000.00, 25.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (13, 'KURT_PANEL_4', 1, 85.00, '4K', 60, 'KURT_PANEL', 1, 1, '2023-01-01', 100000.00, 30.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (14, 'BUDGET120', 2, 50.00, '4K', 120, 'LED', 1, 1, '2024-06-01', 399.99, 12.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (15, 'BUDGET144', 2, 55.00, '4K', 144, 'LED', 1, 1, '2024-07-01', 449.99, 13.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (16, '8K_D_EFFIC_1', 3, 65.00, '8K', 120, 'LED', 1, 1, '2024-03-01', 4999.99, 30.00, 'D', 4, 2);
INSERT INTO `televisions` VALUES (17, '8K_D_EFFIC_2', 3, 75.00, '8K', 120, 'QLED', 1, 1, '2024-04-01', 5999.99, 35.00, 'D', 4, 2);
INSERT INTO `televisions` VALUES (18, 'CV_PANEL_LOW1', 1, 55.00, '4K', 60, 'CV_PANEL', 1, 1, '2023-01-01', 500.00, 18.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (19, 'CV_PANEL_LOW2', 1, 65.00, '4K', 60, 'CV_PANEL', 1, 1, '2023-01-01', 550.00, 20.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (20, 'CV_PANEL_HIGH1', 1, 75.00, '4K', 60, 'CV_PANEL', 1, 1, '2023-01-01', 20000.00, 25.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (21, 'CV_PANEL_HIGH2', 1, 85.00, '4K', 60, 'CV_PANEL', 1, 1, '2023-01-01', 25000.00, 30.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (22, '4K_ULTRA_CHEAP_120', 2, 50.00, '4K', 120, 'LED', 1, 1, '2024-08-01', 299.99, 11.00, 'A', 2, 2);
INSERT INTO `televisions` VALUES (23, '8K_NO_USB_BIG', 3, 900.00, '8K', 120, 'LED', 1, 1, '2025-02-01', 150000.00, 1000.00, 'A', 2, 0);
INSERT INTO `televisions` VALUES (24, '8K_NO_USB_MED', 3, 600.00, '8K', 120, 'QLED', 1, 1, '2025-02-01', 80000.00, 600.00, 'A', 2, 0);
INSERT INTO `televisions` VALUES (25, 'TEST_RES_A', 1, 50.00, 'TEST_RES', 60, 'LED', 1, 1, '2023-01-01', 1000.00, 10.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (26, 'TEST_RES_B', 1, 60.00, 'TEST_RES', 60, 'LED', 1, 1, '2023-01-01', 1000.00, 20.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (27, 'TEST_RES_C', 1, 70.00, 'TEST_RES', 60, 'LED', 1, 1, '2023-01-01', 1000.00, 30.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (28, 'SAMSUNG_EXTRA_1', 1, 50.00, '4K', 60, 'LED', 1, 1, '2024-01-01', 799.99, 15.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (29, 'SAMSUNG_EXTRA_2', 1, 55.00, '4K', 60, 'LED', 1, 1, '2024-02-01', 899.99, 16.00, 'A', 3, 2);
INSERT INTO `televisions` VALUES (30, 'SAMSUNG_EXTRA_3', 1, 65.00, '4K', 60, 'LED', 1, 1, '2024-03-01', 1099.99, 18.00, 'A', 3, 2);

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records`  (
  `Record_Id` int(0) NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Television_Id` int(0) NULL DEFAULT NULL COMMENT '电视ID（外键）',
  `User_Id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime(0) NULL DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime(0) NULL DEFAULT NULL COMMENT '使用结束时间',
  `Usage_Duration_Minutes` int(0) NULL DEFAULT NULL COMMENT '使用时长（分钟）',
  `Average_Brightness_Percent` int(0) NULL DEFAULT NULL COMMENT '平均亮度（百分比）',
  `Energy_Consumed_Kwh` decimal(10, 2) NULL DEFAULT NULL COMMENT '消耗电量（千瓦时）',
  `App_Used` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '使用的应用程序（如 Netflix、YouTube）',
  `Content_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观看的内容类型（如电影、体育、新闻）',
  `User_Rating` int(0) NULL DEFAULT NULL COMMENT '用户评分（1-5 分）',
  PRIMARY KEY (`Record_Id`) USING BTREE,
  INDEX `television_id`(`Television_Id`) USING BTREE,
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Television_Id`) REFERENCES `televisions` (`Television_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
INSERT INTO `usage_records` VALUES (1, 1, 101, '2023-10-01 18:00:00', '2023-10-01 20:30:00', 150, 70, 1.50, 'Netflix', 'Movie', 5);
INSERT INTO `usage_records` VALUES (2, 2, 102, '2023-10-02 19:00:00', '2023-10-02 21:00:00', 120, 60, 1.20, 'YouTube', 'Sports', 4);
INSERT INTO `usage_records` VALUES (3, 3, 103, '2023-10-03 20:00:00', '2023-10-03 22:00:00', 120, 80, 1.80, 'Disney+', 'Movie', 5);
INSERT INTO `usage_records` VALUES (16, 1, 201, '2023-10-05 20:00:00', '2023-10-05 21:00:00', 60, 70, 0.60, 'Netflix', 'Movie', 3);
INSERT INTO `usage_records` VALUES (17, 1, 201, '2023-10-06 20:00:00', '2023-10-06 22:00:00', 120, 75, 1.20, 'Netflix', 'Movie', 4);
INSERT INTO `usage_records` VALUES (18, 1, 201, '2023-10-07 20:00:00', '2023-10-07 23:00:00', 180, 80, 1.80, 'Netflix', 'Movie', 5);
INSERT INTO `usage_records` VALUES (19, 1, 202, '2023-10-05 19:00:00', '2023-10-05 19:30:00', 30, 65, 0.30, 'YouTube', 'Movie', 5);
INSERT INTO `usage_records` VALUES (20, 1, 202, '2023-10-06 19:00:00', '2023-10-06 20:00:00', 60, 65, 0.60, 'YouTube', 'Movie', 4);
INSERT INTO `usage_records` VALUES (21, 1, 202, '2023-10-07 19:00:00', '2023-10-07 20:30:00', 90, 65, 0.90, 'YouTube', 'Movie', 3);
INSERT INTO `usage_records` VALUES (22, 1, 203, '2023-10-05 21:00:00', '2023-10-05 21:45:00', 45, 60, 0.45, 'DisneyPlus', 'Movie', 2);
INSERT INTO `usage_records` VALUES (23, 1, 203, '2023-10-06 21:00:00', '2023-10-06 22:30:00', 90, 65, 0.90, 'DisneyPlus', 'Movie', 3);
INSERT INTO `usage_records` VALUES (24, 1, 203, '2023-10-07 21:00:00', '2023-10-07 23:15:00', 135, 70, 1.35, 'DisneyPlus', 'Movie', 4);
INSERT INTO `usage_records` VALUES (25, 1, 204, '2023-10-05 18:00:00', '2023-10-05 20:00:00', 120, 55, 1.20, 'PrimeVideo', 'Movie', 2);
INSERT INTO `usage_records` VALUES (26, 1, 204, '2023-10-06 18:00:00', '2023-10-06 20:30:00', 150, 60, 1.50, 'PrimeVideo', 'Movie', 2);
INSERT INTO `usage_records` VALUES (27, 1, 204, '2023-10-07 18:00:00', '2023-10-07 21:00:00', 180, 60, 1.80, 'PrimeVideo', 'Movie', 3);
INSERT INTO `usage_records` VALUES (28, 1, 205, '2023-10-05 17:00:00', '2023-10-05 20:20:00', 200, 75, 2.00, 'Hulu', 'Movie', 4);
INSERT INTO `usage_records` VALUES (29, 1, 205, '2023-10-06 17:00:00', '2023-10-06 20:40:00', 220, 75, 2.20, 'Hulu', 'Movie', 4);
INSERT INTO `usage_records` VALUES (30, 1, 205, '2023-10-07 17:00:00', '2023-10-07 21:00:00', 240, 80, 2.40, 'Hulu', 'Movie', 5);
INSERT INTO `usage_records` VALUES (31, 1, 301, '2023-10-01 10:00:00', '2023-10-01 20:00:00', 600, 70, 6.00, 'YouTube', 'News', 4);
INSERT INTO `usage_records` VALUES (32, 1, 301, '2023-10-02 10:00:00', '2023-10-02 20:00:00', 600, 70, 6.00, 'YouTube', 'News', 4);
INSERT INTO `usage_records` VALUES (33, 1, 401, '2023-10-10 00:00:00', '2023-10-10 01:00:00', 60, 50, 1000000.00, 'Other', 'Documentary', 5);
INSERT INTO `usage_records` VALUES (34, 1, 9001, '2023-10-10 18:00:00', '2023-10-10 19:00:00', 60, 70, 0.50, 'WeirdApp', 'Movie', 5);
INSERT INTO `usage_records` VALUES (35, 1, 9001, '2023-10-11 18:00:00', '2023-10-11 20:00:00', 120, 70, 1.00, 'WeirdApp', 'Movie', 3);
INSERT INTO `usage_records` VALUES (36, 1, 9001, '2023-10-12 18:00:00', '2023-10-12 21:00:00', 180, 70, 1.50, 'WeirdApp', 'Movie', 1);
INSERT INTO `usage_records` VALUES (37, 1, 8000, '2023-10-01 08:00:00', '2023-10-01 21:20:00', 800, 70, 8.00, 'Netflix', 'Movie', 5);
INSERT INTO `usage_records` VALUES (38, 1, 8000, '2023-10-01 21:20:00', '2023-10-01 23:00:00', 100, 70, 1.00, 'Netflix', 'Movie', 4);
INSERT INTO `usage_records` VALUES (39, 1, 9000, '2015-01-01 00:00:00', '2024-12-31 23:59:00', 5256000, 50, 0.00, 'AlwaysOn', 'Movie', 3);
INSERT INTO `usage_records` VALUES (40, 1, 9999, '1964-01-01 00:00:00', '2024-01-01 00:00:00', 31536000, 50, 1.00, 'Unknown', 'Movie', 3);
INSERT INTO `usage_records` VALUES (41, 1, 9999, '1964-01-01 00:00:00', '2024-01-01 00:00:00', 31536000, 50, 1.00, 'Unknown', 'Movie', 3);
INSERT INTO `usage_records` VALUES (42, 1, 9100, '2023-10-10 08:00:00', '2023-10-10 21:00:00', 780, 60, 0.20, 'HeavyUseApp', 'Movie', 5);
INSERT INTO `usage_records` VALUES (43, 1, 9100, '2023-10-11 08:00:00', '2023-10-11 21:00:00', 780, 60, 0.20, 'HeavyUseApp', 'Movie', 5);
INSERT INTO `usage_records` VALUES (44, 1, 9200, '2023-10-01 18:00:00', '2023-10-01 19:00:00', 60, 70, 0.50, 'NegApp', 'Movie', 5);
INSERT INTO `usage_records` VALUES (45, 1, 9200, '2023-10-02 18:00:00', '2023-10-02 21:00:00', 180, 70, 0.50, 'NegApp', 'Movie', 3);
INSERT INTO `usage_records` VALUES (46, 1, 9200, '2023-10-03 18:00:00', '2023-10-03 23:00:00', 300, 70, 0.50, 'NegApp', 'Movie', 1);
INSERT INTO `usage_records` VALUES (47, 1, 9300, '2015-01-01 00:00:00', '2024-12-31 23:59:00', 5256000, 50, 0.00, 'system testing', 'Movie', 3);
INSERT INTO `usage_records` VALUES (48, 2, 104, '2023-10-04 18:00:00', '2023-10-04 20:30:00', 150, 60, 1.50, 'Netflix', 'Movie', 4);
INSERT INTO `usage_records` VALUES (49, 1, 9501, '2023-10-10 18:00:00', '2023-10-10 19:00:00', 60, 10, 0.50, 'FitnessApp', 'Exercise', 1);
INSERT INTO `usage_records` VALUES (50, 1, 9501, '2023-10-11 18:00:00', '2023-10-11 19:00:00', 60, 20, 0.50, 'FitnessApp', 'Exercise', 2);
INSERT INTO `usage_records` VALUES (51, 1, 9501, '2023-10-12 18:00:00', '2023-10-12 19:00:00', 60, 30, 0.50, 'FitnessApp', 'Exercise', 3);
INSERT INTO `usage_records` VALUES (52, 1, 9501, '2023-10-13 18:00:00', '2023-10-13 19:00:00', 60, 40, 0.50, 'FitnessApp', 'Exercise', 4);
INSERT INTO `usage_records` VALUES (53, 1, 9501, '2023-10-14 18:00:00', '2023-10-14 19:00:00', 60, 50, 0.50, 'FitnessApp', 'Exercise', 5);

SET FOREIGN_KEY_CHECKS = 1;
