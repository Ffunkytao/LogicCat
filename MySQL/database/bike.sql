/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : bike

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:26:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Bicycle
-- ----------------------------
DROP TABLE IF EXISTS `Bicycle`;
CREATE TABLE `Bicycle` (
  `BicycleID` int NOT NULL AUTO_INCREMENT COMMENT '自行车唯一标识符',
  `Manufacturer` varchar(50) NOT NULL COMMENT '制造商',
  `Model` varchar(50) NOT NULL COMMENT '自行车型号',
  `Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '自行车类型 (Road, Mountain, Hybrid, Electric, BMX)',
  `FrameMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车架材料 (Aluminum, Carbon Fiber, Steel, Titanium)',
  `WheelSize` decimal(10,1) NOT NULL COMMENT '轮径 (英寸)',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量 (公斤)',
  `GearCount` int NOT NULL COMMENT '变速档位数',
  `BrakeType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '刹车类型 (Rim, Disc, Coaster)',
  `SuspensionType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '避震类型 (None, Front, Full)',
  `MaxLoad` decimal(10,2) NOT NULL COMMENT '最大载重 (公斤)',
  `Price` decimal(10,2) NOT NULL COMMENT '价格 (元)',
  `FrameSize` decimal(10,1) NOT NULL COMMENT '车架尺寸 (厘米)',
  `HandlebarWidth` decimal(10,1) NOT NULL COMMENT '车把宽度 (厘米)',
  `CrankLength` decimal(10,1) NOT NULL COMMENT '曲柄长度 (毫米)',
  `TirePressure` decimal(10,1) NOT NULL COMMENT '轮胎压力 (PSI)',
  PRIMARY KEY (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车基本信息表';

-- ----------------------------
-- Records of Bicycle
-- ----------------------------
BEGIN;
INSERT INTO `Bicycle` VALUES (1, 'Giant', 'TCR Advanced', 'Road', 'Carbon Fiber', 28.0, 7.50, 22, 'Disc', 'None', 120.00, 15000.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (2, 'Trek', 'Fuel EX', 'Mountain', 'Aluminum', 29.0, 13.20, 12, 'Disc', 'Full', 130.00, 12000.00, 56.0, 44.0, 175.0, 30.0);
INSERT INTO `Bicycle` VALUES (3, 'Specialized', 'Sirrus X', 'Hybrid', 'Aluminum', 28.0, 11.00, 18, 'Rim', 'None', 110.00, 8000.00, 52.0, 40.0, 170.0, 80.0);
INSERT INTO `Bicycle` VALUES (4, 'Cannondale', 'SuperSix EVO', 'Road', 'Carbon Fiber', 28.0, 7.80, 22, 'Disc', 'None', 120.00, 18000.00, 55.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (5, 'Santa Cruz', 'Hightower', 'Mountain', 'Carbon Fiber', 29.0, 14.50, 12, 'Disc', 'Full', 135.00, 25000.00, 58.0, 46.0, 175.0, 30.0);
INSERT INTO `Bicycle` VALUES (6, 'Rad Power Bikes', 'RadRover', 'Electric', 'Aluminum', 26.0, 29.00, 7, 'Disc', 'Front', 150.00, 10000.00, 54.0, 42.0, 170.0, 50.0);
INSERT INTO `Bicycle` VALUES (7, 'Cervelo', 'S5', 'Road', 'Carbon Fiber', 28.0, 7.20, 22, 'Disc', 'None', 120.00, 20000.00, 56.0, 44.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (8, 'Yeti', 'SB150', 'Mountain', 'Carbon Fiber', 29.0, 14.80, 12, 'Disc', 'Full', 130.00, 30000.00, 57.0, 45.0, 175.0, 30.0);
INSERT INTO `Bicycle` VALUES (9, 'VanMoof', 'S3', 'Electric', 'Aluminum', 28.0, 19.00, 4, 'Coaster', 'None', 110.00, 12000.00, 53.0, 41.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (10, 'Scott', 'Addict RC', 'Road', 'Carbon Fiber', 28.0, 7.10, 22, 'Disc', 'None', 120.00, 17000.00, 55.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (11, 'SPECIALIZED', 'S-Works Tarmac', '公路车', '碳纤维', 28.0, 6.70, 12, '碟刹', '无避震', 100.00, 69800.00, 54.0, 42.0, 172.0, 110.0);
INSERT INTO `Bicycle` VALUES (12, 'TREK', 'Madone SLR 9', '公路车', '碳纤维', 28.0, 7.20, 11, '碟刹', '无避震', 95.00, 75900.00, 56.0, 40.0, 175.0, 105.0);
INSERT INTO `Bicycle` VALUES (13, 'CERVELO', 'S5', '公路车', '碳纤维', 28.0, 7.80, 12, '碟刹', '无避震', 105.00, 82500.00, 58.0, 44.0, 170.0, 115.0);
INSERT INTO `Bicycle` VALUES (14, 'SPECIALIZED', 'S-Works Tarmac', '公路车', '碳纤维', 28.0, 6.70, 12, '碟刹', '无避震', 100.00, 69800.00, 54.0, 42.0, 172.0, 110.0);
INSERT INTO `Bicycle` VALUES (15, 'SPECIALIZED', 'S-Works Tarmac', '公路车', '碳纤维', 28.0, 6.70, 12, '碟刹', '无避震', 100.00, 69800.00, 54.0, 42.0, 172.0, 110.0);
INSERT INTO `Bicycle` VALUES (16, '闪电', 'S-Works Tarmac SL8', '公路车', '碳纤维', 28.0, 6.90, 12, '碟刹', '无避震', 100.00, 128000.00, 54.0, 42.0, 172.0, 110.0);
INSERT INTO `Bicycle` VALUES (17, '崔克', 'Madone SLR 9 eTap', '公路车', '碳纤维', 28.0, 7.10, 12, '碟刹', '无避震', 95.00, 135000.00, 56.0, 40.0, 175.0, 105.0);
INSERT INTO `Bicycle` VALUES (18, '皮纳瑞罗', 'Dogma F', '公路车', '碳纤维', 28.0, 7.30, 12, '碟刹', '无避震', 105.00, 142000.00, 58.0, 44.0, 170.0, 115.0);
INSERT INTO `Bicycle` VALUES (19, '闪电', 'S-Works Tarmac SL8', '公路车', '碳纤维', 28.0, 6.90, 12, '碟刹', '无避震', 100.00, 128000.00, 54.0, 42.0, 172.0, 110.0);
INSERT INTO `Bicycle` VALUES (20, '崔克', 'Madone SLR 9 eTap', '公路车', '碳纤维', 28.0, 7.10, 12, '碟刹', '无避震', 95.00, 135000.00, 56.0, 40.0, 175.0, 105.0);
INSERT INTO `Bicycle` VALUES (21, '皮纳瑞罗', 'Dogma F', '公路车', '碳纤维', 28.0, 7.30, 12, '碟刹', '无避震', 105.00, 142000.00, 58.0, 44.0, 170.0, 115.0);
INSERT INTO `Bicycle` VALUES (23, 'Redline', 'Pro 26', 'BMX', '铝合金', 20.5, 12.80, 18, '脚刹', '无避震', 110.00, 899.00, 50.0, 75.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (24, 'Haro', 'FAT 20', 'BMX', '钛合金', 20.5, 15.00, 18, '脚刹', '无避震', 120.00, 799.00, 48.0, 75.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (25, 'Mongoose', 'Loki Pro', 'BMX', '钢', 20.5, 13.00, 18, '脚刹', '无避震', 100.00, 699.00, 48.0, 78.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (26, 'Tesla', 'EBike X', '电动车', '碳纤维', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (27, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (28, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (29, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (30, 'Canyon', 'Endurace CF SLX', '公路车', '碳纤维', 28.0, 8.90, 22, '碟刹', '无避震', 110.00, 12999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (31, 'Specialized', 'Allez Sprint', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (32, 'Trek', 'FX 2', '混合车', '钢', 28.0, 14.00, 21, '碟刹', '前避震', 130.00, 3999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (33, 'GIANT', 'Escape 3', '混合车', '铝合金', 28.0, 13.50, 21, '碟刹', '无避震', 120.00, 4999.00, 50.0, 42.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (34, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (35, 'Trek', 'Fuel EX 9.8', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 10999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (36, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 16.00, 24, '碟刹', '全避震', 130.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (37, 'Tesla', 'EBike X', '电动车', '钢', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (38, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (39, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (40, 'Cervelo', 'S5', '公路车', '碳纤维', 100.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (41, 'Trek', 'FX 2', '混合车', '钢', 100.0, 13.00, 21, '碟刹', '无避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (42, 'GIANT', 'Defy 1', '公路车', '铝合金', 100.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (43, 'Canyon', 'Nerve CFR', '电动车', '碳纤维', 100.0, 17.20, 21, '碟刹', '全避震', 160.00, 15999.00, 50.0, 80.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (44, 'Specialized', 'Demo 8', '山地车', '钛合金', 100.0, 16.50, 24, '碟刹', '全避震', 150.00, 12999.00, 48.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (45, 'Redline', 'Pro 26', 'BMX', '铝合金', 20.5, 12.80, 18, '脚刹', '无避震', 110.00, 899.00, 50.0, 75.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (46, 'Haro', 'FAT 20', 'BMX', '钛合金', 20.5, 15.00, 18, '脚刹', '无避震', 120.00, 799.00, 48.0, 75.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (47, 'Mongoose', 'Loki Pro', 'BMX', '钢', 20.5, 13.00, 18, '脚刹', '无避震', 100.00, 699.00, 48.0, 78.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (48, 'Tesla', 'EBike X', '电动车', '碳纤维', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (49, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (50, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (51, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (52, 'Canyon', 'Endurace CF SLX', '公路车', '碳纤维', 28.0, 8.90, 22, '碟刹', '无避震', 110.00, 12999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (53, 'Specialized', 'Allez Sprint', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (54, 'Trek', 'FX 2', '混合车', '钢', 28.0, 14.00, 21, '碟刹', '前避震', 130.00, 3999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (55, 'GIANT', 'Escape 3', '混合车', '铝合金', 28.0, 13.50, 21, '碟刹', '无避震', 120.00, 4999.00, 50.0, 42.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (56, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (57, 'Trek', 'Fuel EX 9.8', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 10999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (58, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 16.00, 24, '碟刹', '全避震', 130.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (59, 'Tesla', 'EBike X', '电动车', '钢', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (60, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (61, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 18, '碟刹', '全避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (62, 'Cannondale', 'Trail 5', '山地车', '铝合金', 27.5, 12.80, 21, '碟刹', '无避震', 130.00, 4999.00, 48.0, 70.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (63, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '无避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 50.0);
INSERT INTO `Bicycle` VALUES (64, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (65, 'Canyon', 'Nerve CFR', '山地车', '碳纤维', 29.0, 17.20, 24, '碟刹', '全避震', 160.00, 15999.00, 50.0, 80.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (66, 'Specialized', 'Demo 8', '山地车', '钛合金', 29.0, 16.50, 24, '碟刹', '全避震', 150.00, 12999.00, 48.0, 78.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (67, 'Haro', 'FAT 20', 'BMX', '钛合金', 20.5, 7.30, 100, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (68, 'Redline', 'Pro 26', 'BMX', '铝合金', 20.5, 7.30, 100, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (69, 'Mongoose', 'Loki Pro', 'BMX', '钢', 20.5, 7.30, 100, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (70, 'Tesla', 'EBike X', '电动车', '碳纤维', 29.0, 7.30, 100, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (71, 'Ninebot', 'Max Pro', '电动车', '铝合金', 27.5, 7.30, 100, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (72, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 7.30, 100, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (73, 'Canyon', 'Endurace CF SLX', '公路车', '碳纤维', 28.0, 8.90, 100, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (74, 'Specialized', 'Allez Sprint', '公路车', '铝合金', 28.0, 9.80, 110, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (75, 'Trek', 'FX Sport', '混合车', '碳纤维', 29.0, 13.20, 130, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (76, 'GIANT', 'Escape City', '混合车', '铝合金', 28.0, 14.50, 120, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (77, 'SuperBike', 'UltraMax', '山地车', '钢', 100.0, 35.00, 250, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (78, 'BigWheels Co.', 'TitanWheel X', '山地车', '铝合金', 100.0, 45.00, 280, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (79, 'MonsterBike', 'GigaCycle Pro', '山地车', '铝合金', 100.0, 60.00, 300, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (80, 'SuperBike', 'UltraMax', '电动车', '铝合金', 100.0, 35.00, 250, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (81, 'BigWheels Co.', 'TitanWheel X', '电动车', '铝合金', 100.0, 45.00, 280, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (82, 'MonsterBike', 'GigaCycle Pro', '电动车', '铝合金', 100.0, 60.00, 300, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (83, 'HeavyDuty', 'Hulk E-Bike', '电动车', '钢', 100.0, 70.00, 300, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (84, 'FatFrame', 'XXL Cycle', '特型车', '铝合金', 100.0, 50.00, 270, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (85, 'SuperBike', 'UltraMax', '特型车', '碳纤维', 100.0, 35.00, 250, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (86, 'BigWheels Co.', 'TitanWheel X', '特型车', '钛合金', 100.0, 45.00, 280, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (87, 'MonsterBike', 'GigaCycle Pro', '特型车', '钢', 100.0, 60.00, 300, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (88, 'Custom', 'Big Load E-Bike', '电动车', '钛合金', 26.0, 40.00, 0, '碟刹', '全避震', 300.00, 24999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (89, 'Harley-Davidson', 'Serial 1', '电动车', '钢', 26.0, 35.00, 0, '碟刹', '全避震', 180.00, 19999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (90, 'Tesla', 'EBike X', '电动车', '碳纤维', 29.0, 22.00, 0, '碟刹', '前避震', 140.00, 12999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (91, 'Ninebot', 'Max Pro', '电动车', '铝合金', 27.5, 28.00, 0, '碟刹', '无避震', 160.00, 5999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (92, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 0, '碟刹', '无避震', 150.00, 4999.00, 54.0, 42.0, 172.5, 100.0);
INSERT INTO `Bicycle` VALUES (93, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 100.0, 25.00, 0, '碟刹', '无避震', 150.00, 4999.00, 58.0, 60.0, 170.0, 50.0);
INSERT INTO `Bicycle` VALUES (94, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 0, '碟刹', '无避震', 150.00, 4999.00, 58.0, 60.0, 170.0, 50.0);
INSERT INTO `Bicycle` VALUES (95, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 0, '碟刹', '无避震', 150.00, 4999.00, 58.0, 60.0, 170.0, 50.0);
INSERT INTO `Bicycle` VALUES (96, 'Canyon', 'Aeroad CF SLX', '公路车', '碳纤维', 28.0, 7.00, 22, '碟刹', '无避震', 110.00, 85000.00, 54.0, 42.0, 172.5, 120.0);
INSERT INTO `Bicycle` VALUES (97, 'Trek', 'Fuel EX 9.8', '山地车', '铝合金', 29.0, 14.20, 22, '碟刹', '全避震', 130.00, 45000.00, 48.0, 780.0, 175.0, 35.0);
INSERT INTO `Bicycle` VALUES (98, 'Specialized', 'S-Works Tarmac SL7', '公路车', '碳纤维', 28.0, 6.80, 22, '碟刹', '无避震', 110.00, 98000.00, 54.0, 42.0, 172.5, 120.0);
INSERT INTO `Bicycle` VALUES (99, 'Specialized', 'S-Works Tarmac', '公路车', '碳纤维', 28.0, 7.20, 22, '碟刹', '无避震', 110.00, 89999.00, 54.0, 42.0, 172.5, 120.0);
INSERT INTO `Bicycle` VALUES (100, 'GIANT', 'Defy 1', '公路车', '铝合金', 100.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (101, 'Trek', 'FX 2', '混合车', '钢', 100.0, 13.00, 21, '碟刹', '无避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (102, 'Cervelo', 'S5', '公路车', '碳纤维', 100.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (103, 'GIANT', 'Defy 1', '公路车', '铝合金', 100.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (104, 'Trek', 'FX 2', '混合车', '钢', 100.0, 13.00, 21, '碟刹', '无避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (105, 'Cervelo', 'S5', '公路车', '碳纤维', 100.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (110, 'GIANT', 'Escape 3', '混合车', '铝合金', 28.0, 13.50, 21, '碟刹', '无避震', 120.00, 4999.00, 50.0, 42.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (111, 'Trek', 'FX 2', '混合车', '钢', 28.0, 14.00, 21, '碟刹', '前避震', 130.00, 3999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (112, 'Specialized', 'Allez Sprint', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (113, 'Canyon', 'Endurace CF SLX', '公路车', '碳纤维', 28.0, 8.90, 22, '碟刹', '无避震', 110.00, 12999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (114, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (115, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (116, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (117, 'Tesla', 'EBike X', '电动车', '碳纤维', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (118, 'Mongoose', 'Loki Pro', 'BMX', '钢', 20.5, 13.00, 18, '脚刹', '无避震', 100.00, 699.00, 48.0, 78.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (119, 'Haro', 'FAT 20', 'BMX', '钛合金', 20.5, 15.00, 18, '脚刹', '无避震', 120.00, 799.00, 48.0, 75.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (120, 'Redline', 'Pro 26', 'BMX', '铝合金', 20.5, 12.80, 18, '脚刹', '无避震', 110.00, 899.00, 50.0, 75.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (121, 'Specialized', 'Demo 8', '山地车', '钛合金', 100.0, 16.50, 24, '碟刹', '全避震', 150.00, 12999.00, 48.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (122, 'Canyon', 'Nerve CFR', '电动车', '碳纤维', 100.0, 17.20, 21, '碟刹', '全避震', 160.00, 15999.00, 50.0, 80.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (123, 'GIANT', 'Defy 1', '公路车', '铝合金', 100.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (124, 'Trek', 'FX 2', '混合车', '钢', 100.0, 13.00, 21, '碟刹', '无避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (125, 'Cervelo', 'S5', '公路车', '碳纤维', 100.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (131, 'Specialized', 'Demo 8', '山地车', '钛合金', 100.0, 16.50, 24, '碟刹', '全避震', 150.00, 12999.00, 48.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (132, 'Canyon', 'Nerve CFR', '电动车', '碳纤维', 100.0, 17.20, 21, '碟刹', '全避震', 160.00, 15999.00, 50.0, 80.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (133, 'GIANT', 'Defy 1', '公路车', '铝合金', 100.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (134, 'Trek', 'FX 2', '混合车', '钢', 100.0, 13.00, 21, '碟刹', '无避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (135, 'Cervelo', 'S5', '公路车', '碳纤维', 100.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (136, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (137, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (138, 'Tesla', 'EBike X', '电动车', '钢', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (139, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 16.00, 24, '碟刹', '全避震', 130.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (140, 'Trek', 'Fuel EX 9.8', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 10999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (141, 'GIANT', 'Escape 3', '混合车', '铝合金', 28.0, 13.50, 21, '碟刹', '无避震', 120.00, 4999.00, 50.0, 42.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (142, 'Trek', 'FX 2', '混合车', '钢', 28.0, 14.00, 21, '碟刹', '前避震', 130.00, 3999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (143, 'Specialized', 'Allez Sprint', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (144, 'Canyon', 'Endurace CF SLX', '公路车', '碳纤维', 28.0, 8.90, 22, '碟刹', '无避震', 110.00, 12999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (145, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (146, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (147, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (148, 'Tesla', 'EBike X', '电动车', '碳纤维', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (149, 'Mongoose', 'Loki Pro', 'BMX', '钢', 20.5, 13.00, 18, '脚刹', '无避震', 100.00, 699.00, 48.0, 78.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (150, 'Haro', 'FAT 20', 'BMX', '钛合金', 20.5, 15.00, 18, '脚刹', '无避震', 120.00, 799.00, 48.0, 75.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (151, 'Redline', 'Pro 26', 'BMX', '铝合金', 20.5, 12.80, 18, '脚刹', '无避震', 110.00, 899.00, 50.0, 75.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (152, 'Specialized', 'Demo 8', '山地车', '钛合金', 27.5, 16.50, 24, '碟刹', '全避震', 150.00, 12999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (153, 'Canyon', 'Nerve CFR', '电动车', '碳纤维', 27.5, 17.20, 18, '碟刹', '全避震', 160.00, 15999.00, 52.0, 80.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (154, 'GIANT', 'Defy 1', '公路车', '铝合金', 27.5, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (155, 'Trek', 'FX 2', '混合车', '钢', 27.5, 13.00, 21, '碟刹', '无避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (156, 'Cervelo', 'S5', '公路车', '碳纤维', 27.5, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (157, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (158, 'Trek', 'Fuel EX 9.8', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 10999.00, 54.0, 42.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (159, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (160, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (161, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 16.00, 24, '碟刹', '全避震', 130.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (162, 'GIANT', 'Escape 3', '混合车', '铝合金', 28.0, 13.50, 21, '碟刹', '无避震', 120.00, 4999.00, 50.0, 42.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (163, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 12.00, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (164, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (165, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (166, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (167, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (168, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (169, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (170, 'Trek', 'FX 3', '混合车', '钛合金', 28.0, 13.50, 21, '碟刹', '无避震', 120.00, 4299.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (171, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (172, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 15.00, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 65.0);
INSERT INTO `Bicycle` VALUES (173, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (174, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (175, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (176, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (177, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (178, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (179, 'Trek', 'FX 3', '混合车', '钛合金', 28.0, 13.50, 21, '碟刹', '无避震', 120.00, 4299.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (180, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (181, 'GIANT', 'Defy Mini', '公路车', '铝合金', 28.0, 12.00, 22, '碟刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (182, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (183, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (184, 'Company A', 'Model X', '电动车', '铝合金', 28.0, 20.00, 6, '碟刹', '全避震', 100.00, 4999.00, 50.0, 42.0, 170.0, 70.0);
INSERT INTO `Bicycle` VALUES (185, 'Company B', 'Model Y', '电动车', '钢', 28.0, 20.00, 6, '碟刹', '前避震', 200.00, 5999.00, 50.0, 42.0, 170.0, 70.0);
INSERT INTO `Bicycle` VALUES (186, 'Company C', 'Model Z', '电动车', '碳纤维', 28.0, 20.00, 6, '碟刹', '无避震', 300.00, 6999.00, 50.0, 42.0, 170.0, 70.0);
INSERT INTO `Bicycle` VALUES (187, 'Company D', 'Model XX', '电动车', '钛合金', 28.0, 20.00, 6, '碟刹', '全避震', 400.00, 7999.00, 50.0, 42.0, 170.0, 70.0);
INSERT INTO `Bicycle` VALUES (188, 'Company E', 'Model YY', '电动车', '铝合金', 28.0, 20.00, 6, '碟刹', '前避震', 500.00, 8999.00, 50.0, 42.0, 170.0, 70.0);
INSERT INTO `Bicycle` VALUES (189, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (190, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (191, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (192, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 110.00, 14999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (193, 'Trek', 'FX 3', '混合车', '钛合金', 28.0, 13.50, 21, '碟刹', '无避震', 120.00, 4299.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (194, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (195, 'GIANT', 'Defy Mini', '公路车', '铝合金', 28.0, 15.00, 22, '碟刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 65.0);
INSERT INTO `Bicycle` VALUES (196, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (197, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (198, 'Specialized', 'Enduro', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (199, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (200, 'Trek', 'Fuel EX 9.8', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 10999.00, 50.0, 78.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (201, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 60.0);
INSERT INTO `Bicycle` VALUES (202, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (203, 'Specialized', 'Tarmac SL7', '公路车', '碳纤维', 28.0, 7.80, 22, '碟刹', '无避震', 90.00, 14999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (204, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 8.20, 22, '碟刹', '无避震', 95.00, 13999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (205, 'GIANT', 'Propel Advanced Pro', '公路车', '碳纤维', 28.0, 8.00, 22, '碟刹', '无避震', 90.00, 12999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (206, 'Trek', 'Madone SLR', '公路车', '碳纤维', 28.0, 8.50, 22, '碟刹', '前避震', 95.00, 16999.00, 54.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (207, 'Colnago', 'V4Rs', '公路车', '碳纤维', 28.0, 7.60, 22, '圈刹', '无避震', 85.00, 11999.00, 51.0, 40.0, 165.0, 125.0);
INSERT INTO `Bicycle` VALUES (208, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 25.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (209, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (210, 'Tesla', 'EBike X', '电动车', '钢', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (211, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (212, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (213, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (214, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 20.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (215, 'GIANT', 'Defy 1', '公路车', '铝合金', 28.0, 9.80, 22, '圈刹', '无避震', 100.00, 5999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (216, 'Trek', 'FX 2', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 3999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (217, 'Specialized', 'Enduro Carbon', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (218, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 20.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (219, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 20.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (221, 'GIANT', 'Defy Advanced Disc', '公路车', '铝合金', 28.0, 10.20, 22, '碟刹', '无避震', 100.00, 6999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (222, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (223, 'Trek', 'Domane ALR', '混合车', '钢', 28.0, 13.00, 21, '碟刹', '前避震', 120.00, 5999.00, 50.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (224, 'Trek', 'Fuel EX 9.8', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 10999.00, 50.0, 78.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (225, 'Specialized', 'Tarmac SL7', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 100.00, 14999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (226, 'Specialized', 'Venge', '公路车', '碳纤维', 28.0, 9.00, 22, '碟刹', '无避震', 100.00, 16999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (227, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.00, 22, '碟刹', '无避震', 100.00, 24999.00, 53.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (228, 'Cervelo', 'P5X', '铁三车', '碳纤维', 29.0, 9.20, 22, '碟刹', '无避震', 100.00, 28999.00, 54.0, 44.0, 175.0, 125.0);
INSERT INTO `Bicycle` VALUES (229, 'GIANT', 'Defy Advanced Disc', '公路车', '碳纤维', 28.0, 10.20, 22, '碟刹', '无避震', 100.00, 12999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (230, 'GIANT', 'Propel Advanced', '公路车', '碳纤维', 28.0, 10.00, 22, '碟刹', '无避震', 90.00, 15999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (231, 'Specialized', 'Tarmac SL7', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 95.00, 19999.00, 51.0, 40.0, 165.0, 125.0);
INSERT INTO `Bicycle` VALUES (232, 'Specialized', 'Venge', '公路车', '碳纤维', 28.0, 9.00, 22, '碟刹', '无避震', 100.00, 22999.00, 52.0, 42.0, 170.0, 120.0);
INSERT INTO `Bicycle` VALUES (233, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.00, 22, '碟刹', '无避震', 110.00, 24999.00, 53.0, 42.0, 175.0, 120.0);
INSERT INTO `Bicycle` VALUES (234, 'Cervelo', 'P5X', '铁三车', '碳纤维', 29.0, 9.20, 22, '碟刹', '无避震', 120.00, 28999.00, 54.0, 44.0, 175.0, 125.0);
INSERT INTO `Bicycle` VALUES (235, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 20.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (236, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (237, 'Tesla', 'EBike X', '电动车', '钢', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (238, 'Trek', 'Fuel EX 9.8', '山地车', '碳纤维', 27.5, 14.20, 24, '碟刹', '全避震', 120.00, 9999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (239, 'Trek', 'Session 9', '山地车', '铝合金', 26.0, 15.00, 12, '碟刹', '全避震', 130.00, 12999.00, 52.0, 80.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (240, 'Specialized', 'Enduro', '山地车', '钛合金', 29.0, 13.80, 24, '碟刹', '全避震', 120.00, 10999.00, 50.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (241, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (242, 'Canyon', 'Grand Cay 8', '山地车', '碳纤维', 27.5, 14.00, 24, '碟刹', '全避震', 120.00, 11999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (243, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 20.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (244, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (245, 'Tesla', 'EBike X', '电动车', '钢', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (246, 'GIANT', 'Defy Advanced Disc', '公路车', '碳纤维', 28.0, 9.80, 22, '碟刹', '无避震', 100.00, 12999.00, 52.0, 42.0, 170.0, 85.0);
INSERT INTO `Bicycle` VALUES (247, 'GIANT', 'Propel Advanced Pro', '公路车', '碳纤维', 28.0, 9.50, 22, '碟刹', '无避震', 100.00, 15999.00, 52.0, 42.0, 170.0, 90.0);
INSERT INTO `Bicycle` VALUES (248, 'Specialized', 'Tarmac SL7', '公路车', '碳纤维', 28.0, 9.20, 22, '碟刹', '无避震', 100.00, 19999.00, 51.0, 40.0, 165.0, 95.0);
INSERT INTO `Bicycle` VALUES (249, 'Specialized', 'Venge', '公路车', '碳纤维', 28.0, 9.00, 22, '碟刹', '无避震', 100.00, 22999.00, 52.0, 42.0, 170.0, 100.0);
INSERT INTO `Bicycle` VALUES (250, 'Cervelo', 'S5', '公路车', '碳纤维', 28.0, 9.00, 22, '碟刹', '无避震', 100.00, 24999.00, 53.0, 42.0, 175.0, 105.0);
INSERT INTO `Bicycle` VALUES (251, 'Cervelo', 'P5X', '铁三车', '碳纤维', 29.0, 9.20, 22, '碟刹', '无避震', 100.00, 28999.00, 54.0, 44.0, 175.0, 110.0);
INSERT INTO `Bicycle` VALUES (252, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 20.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (253, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (254, 'Tesla', 'EBike X', '电动车', '钢', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (255, 'Xiaomi', 'Mi Ebike Pro', '电动车', '铝合金', 27.5, 20.00, 18, '碟刹', '无避震', 150.00, 4999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (256, 'Ninebot', 'Max Pro', '电动车', '钛合金', 27.5, 28.00, 18, '碟刹', '无避震', 160.00, 5999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (257, 'Tesla', 'EBike X', '电动车', '钢', 29.0, 32.00, 18, '碟刹', '前避震', 180.00, 12999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (258, 'GIANT', 'Trance X 2', '山地车', '铝合金', 27.5, 13.80, 24, '碟刹', '全避震', 120.00, 8999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (259, 'Specialized', 'Enduro', '山地车', '碳纤维', 29.0, 14.20, 24, '碟刹', '全避震', 120.00, 10999.00, 50.0, 78.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (260, 'Trek', 'Fuel EX', '山地车', '钛合金', 27.5, 14.00, 24, '碟刹', '全避震', 120.00, 12999.00, 52.0, 76.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (261, 'GIANT', 'Anthem', '山地车', '铝合金', 27.5, 12.80, 24, '碟刹', '前避震', 120.00, 7999.00, 48.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (262, 'Canyon', 'Sedulo', '山地车', '钢', 27.5, 15.00, 24, '碟刹', '无避震', 130.00, 6999.00, 50.0, 78.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (263, 'Cube', 'Reaction', '山地车', '铝合金', 28.0, 13.50, 24, '碟刹', '无避震', 120.00, 6499.00, 50.0, 75.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (264, 'Xiaomi', 'Mi Heavy Duty', '电动车', '钢', 27.5, 45.00, 6, '碟刹', '全避震', 600.00, 18999.00, 50.0, 42.0, 170.0, 55.0);
INSERT INTO `Bicycle` VALUES (265, 'Tesla', 'EBike X Pro', '电动车', '钛合金', 29.0, 50.00, 6, '碟刹', '前避震', 700.00, 29999.00, 54.0, 46.0, 175.0, 60.0);
INSERT INTO `Bicycle` VALUES (266, 'Ninebot', 'Max XL', '电动车', '碳纤维', 27.5, 48.00, 6, '碟刹', '无避震', 550.00, 22999.00, 52.0, 44.0, 175.0, 55.0);
INSERT INTO `Bicycle` VALUES (267, 'Trek', 'Domane SLR', '公路车', '铝合金', 100.0, 9.80, 16, '碟刹', '无避震', 120.00, 10000.00, 54.0, 42.0, 170.0, 35.0);
INSERT INTO `Bicycle` VALUES (268, 'Specialized', 'Stumpjumper', '山地车', '碳纤维', 100.0, 12.00, 22, '碟刹', '全避震', 130.00, 15000.00, 44.0, 40.0, 180.0, 36.0);
INSERT INTO `Bicycle` VALUES (269, 'Giant', 'Defy', '混合车', '钢', 100.0, 10.50, 18, '圈刹', '无避震', 125.00, 8000.00, 52.0, 41.0, 175.0, 35.0);
INSERT INTO `Bicycle` VALUES (270, 'Cannondale', 'Topstone Carbon', '电动车', '钛合金', 100.0, 14.00, 11, '碟刹', '无避震', 130.00, 12000.00, 53.0, 40.0, 180.0, 34.0);
INSERT INTO `Bicycle` VALUES (271, 'Trek', 'Domane SLR', '公路车', '铝合金', 28.0, 9.80, 16, '碟刹', '无避震', 120.00, 10000.00, 54.0, 42.0, 170.0, 35.0);
INSERT INTO `Bicycle` VALUES (272, 'Specialized', 'Stumpjumper', '山地车', '碳纤维', 29.0, 12.00, 22, '碟刹', '全避震', 130.00, 15000.00, 44.0, 40.0, 180.0, 36.0);
INSERT INTO `Bicycle` VALUES (273, 'Giant', 'Defy', '混合车', '钢', 28.0, 10.50, 18, '圈刹', '无避震', 125.00, 8000.00, 52.0, 41.0, 175.0, 35.0);
INSERT INTO `Bicycle` VALUES (274, 'Cannondale', 'Topstone Carbon', '混合车', '钛合金', 29.0, 14.00, 11, '碟刹', '前避震', 130.00, 12000.00, 53.0, 40.0, 180.0, 34.0);
INSERT INTO `Bicycle` VALUES (275, 'Trek', 'Domane SLR', '公路车', '铝合金', 100.0, 9.80, 16, '碟刹', '无避震', 120.00, 10000.00, 54.0, 42.0, 170.0, 35.0);
INSERT INTO `Bicycle` VALUES (276, 'Specialized', 'Stumpjumper', '山地车', '碳纤维', 100.0, 12.00, 22, '碟刹', '全避震', 130.00, 15000.00, 44.0, 40.0, 180.0, 36.0);
INSERT INTO `Bicycle` VALUES (278, 'Giant', 'Defy', '混合车', '钢', 100.0, 10.50, 18, '圈刹', '无避震', 125.00, 8000.00, 52.0, 41.0, 175.0, 35.0);
INSERT INTO `Bicycle` VALUES (279, 'Cannondale', 'Topstone Carbon', '电动车', '钛合金', 100.0, 14.00, 11, '碟刹', '全避震', 130.00, 12000.00, 53.0, 40.0, 180.0, 34.0);
INSERT INTO `Bicycle` VALUES (280, 'Scott', 'Speedster', '公路车', '铝合金', 100.0, 8.50, 11, '圈刹', '无避震', 110.00, 9000.00, 52.0, 40.0, 170.0, 35.0);
INSERT INTO `Bicycle` VALUES (281, 'Trek', 'Domane SLR', '公路车', '铝合金', 28.0, 9.80, 16, '碟刹', '无避震', 120.00, 10000.00, 54.0, 42.0, 170.0, 35.0);
INSERT INTO `Bicycle` VALUES (282, 'Specialized', 'Stumpjumper', '山地车', '碳纤维', 29.0, 12.00, 22, '碟刹', '全避震', 130.00, 15000.00, 44.0, 40.0, 180.0, 36.0);
INSERT INTO `Bicycle` VALUES (283, 'Giant', 'Defy', '混合车', '钢', 28.0, 10.50, 18, '圈刹', '无避震', 125.00, 8000.00, 52.0, 41.0, 175.0, 35.0);
INSERT INTO `Bicycle` VALUES (284, 'Cannondale', 'e-BMX', 'BMX', '钛合金', 20.0, 14.00, 1, '脚刹', '无避震', 130.00, 12000.00, 53.0, 40.0, 180.0, 34.0);
INSERT INTO `Bicycle` VALUES (285, 'Xiaomi', 'Electric Bike Pro', '电动车', '铝合金', 27.0, 16.00, 11, '碟刹', '前避震', 140.00, 8000.00, 53.0, 40.0, 180.0, 34.0);
INSERT INTO `Bicycle` VALUES (286, 'NewBrand', 'Super Hybrid', '混合车', '钛合金', 27.0, 14.50, 10, '碟刹', '全避震', 135.00, 15000.00, 54.0, 42.0, 185.0, 36.0);
INSERT INTO `Bicycle` VALUES (287, 'NewBrand', 'Super Hybrid', '混合车', '钛合金', 27.0, 14.50, 10, '碟刹', '全避震', 135.00, 15000.00, 54.0, 42.0, 185.0, 36.0);
INSERT INTO `Bicycle` VALUES (288, 'BrandX', 'Titan Hybrid', '混合车', '钛合金', 28.0, 15.00, 10, '碟刹', '全避震', 140.00, 18000.00, 50.0, 40.0, 170.0, 35.0);
INSERT INTO `Bicycle` VALUES (289, '小米', '电动山地 Pro', '电动车', '铝合金', 27.0, 16.00, 11, '碟刹', '全避震', 140.00, 8000.00, 53.0, 40.0, 180.0, 34.0);
COMMIT;

-- ----------------------------
-- Table structure for BicycleComponents
-- ----------------------------
DROP TABLE IF EXISTS `BicycleComponents`;
CREATE TABLE `BicycleComponents` (
  `ComponentID` int NOT NULL AUTO_INCREMENT COMMENT '组件唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `FrameMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车架材料 (Aluminum, Carbon Fiber, Steel, Titanium)',
  `ForkMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '前叉材料 (Aluminum, Carbon Fiber, Steel)',
  `HandlebarMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车把材料 (Aluminum, Carbon Fiber, Steel)',
  `SaddleMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '座垫材料 (Leather, Synthetic, Gel)',
  `ChainMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '链条材料 (Steel, Nickel-Plated)',
  `TireType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '轮胎类型 (Clincher, Tubular, Tubeless)',
  `TireWidth` decimal(10,1) NOT NULL COMMENT '轮胎宽度 (毫米)',
  `RimMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '轮圈材料 (Aluminum, Carbon Fiber)',
  `SpokeCount` int NOT NULL COMMENT '辐条数量',
  `PedalType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '踏板类型 (Flat, Clipless)',
  PRIMARY KEY (`ComponentID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicycleComponents_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车组件信息表';

-- ----------------------------
-- Records of BicycleComponents
-- ----------------------------
BEGIN;
INSERT INTO `BicycleComponents` VALUES (1, 1, 'Carbon Fiber', 'Carbon Fiber', 'Carbon Fiber', 'Synthetic', 'Nickel-Plated', 'Tubeless', 25.0, 'Carbon Fiber', 24, 'Clipless');
INSERT INTO `BicycleComponents` VALUES (2, 2, 'Aluminum', 'Aluminum', 'Aluminum', 'Gel', 'Steel', 'Tubeless', 27.5, 'Aluminum', 32, 'Flat');
INSERT INTO `BicycleComponents` VALUES (3, 3, 'Aluminum', 'Steel', 'Aluminum', 'Synthetic', 'Steel', 'Clincher', 28.0, 'Aluminum', 28, 'Flat');
INSERT INTO `BicycleComponents` VALUES (4, 4, 'Carbon Fiber', 'Carbon Fiber', 'Carbon Fiber', 'Synthetic', 'Nickel-Plated', 'Tubeless', 25.0, 'Carbon Fiber', 24, 'Clipless');
INSERT INTO `BicycleComponents` VALUES (5, 5, 'Carbon Fiber', 'Carbon Fiber', 'Carbon Fiber', 'Gel', 'Nickel-Plated', 'Tubeless', 29.0, 'Carbon Fiber', 32, 'Clipless');
INSERT INTO `BicycleComponents` VALUES (6, 6, 'Aluminum', 'Aluminum', 'Aluminum', 'Synthetic', 'Steel', 'Clincher', 26.0, 'Aluminum', 36, 'Flat');
INSERT INTO `BicycleComponents` VALUES (7, 7, 'Carbon Fiber', 'Carbon Fiber', 'Carbon Fiber', 'Synthetic', 'Nickel-Plated', 'Tubeless', 25.0, 'Carbon Fiber', 24, 'Clipless');
INSERT INTO `BicycleComponents` VALUES (8, 8, 'Carbon Fiber', 'Carbon Fiber', 'Carbon Fiber', 'Gel', 'Nickel-Plated', 'Tubeless', 29.0, 'Carbon Fiber', 32, 'Clipless');
INSERT INTO `BicycleComponents` VALUES (9, 9, 'Aluminum', 'Aluminum', 'Aluminum', 'Synthetic', 'Steel', 'Clincher', 28.0, 'Aluminum', 28, 'Flat');
INSERT INTO `BicycleComponents` VALUES (10, 10, 'Carbon Fiber', 'Carbon Fiber', 'Carbon Fiber', 'Synthetic', 'Nickel-Plated', 'Tubeless', 25.0, 'Carbon Fiber', 24, 'Clipless');
INSERT INTO `BicycleComponents` VALUES (11, 72, '铝合金', '铝合金', '铝合金', '皮革', '钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (12, 71, '铝合金', '铝合金', '铝合金', '皮革', '钢', '真空胎', 45.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (13, 70, '碳纤维', '铝合金', '铝合金', '皮革', '钢', '管胎', 50.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (14, 69, '钢', '铝合金', '铝合金', '皮革', '钢', '宽口胎', 55.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (15, 68, '铝合金', '铝合金', '铝合金', '皮革', '钢', '宽口胎', 58.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (16, 67, '钛合金', '铝合金', '铝合金', '皮革', '钢', '超宽胎', 60.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (18, 61, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (19, 60, '钛合金', '钛合金', '钛合金', '皮革', '钢', '真空胎', 45.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (20, 59, '钢', '钢', '钢', '凝胶', '镀镍钢', '管胎', 50.0, '碳纤维', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (21, 58, '碳纤维', '碳纤维', '铝合金', '皮革', '镀镍钢', '管胎', 55.0, '碳纤维', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (22, 57, '碳纤维', '碳纤维', '铝合金', '皮革', '镀镍钢', '管胎', 58.0, '碳纤维', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (23, 55, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (24, 54, '钢', '钢', '钢', '凝胶', '钢', '管胎', 45.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (25, 53, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '真空胎', 25.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (26, 52, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 23.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (27, 51, '碳纤维', '碳纤维', '碳纤维', '合成材料', '钛合金', '管胎', 23.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (28, 50, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (29, 49, '钛合金', '钛合金', '钛合金', '凝胶', '钢', '真空胎', 45.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (30, 48, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 50.0, '碳纤维', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (31, 47, '钢', '钢', '钢', '皮革', '钢', '宽口胎', 55.0, '钢', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (32, 46, '钛合金', '钛合金', '钛合金', '合成材料', '钢', '超宽胎', 60.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (33, 45, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '标准胎', 50.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (34, 44, '钛合金', '钛合金', '钛合金', '皮革', '镀镍钢', '宽口胎', 55.0, '钢', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (35, 43, '碳纤维', '碳纤维', '钛合金', '合成材料', '钛合金', '管胎', 50.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (36, 42, '铝合金', '铝合金', '钛合金', '皮革', '镀镍钢', '真空胎', 25.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (37, 41, '钢', '钢', '钛合金', '凝胶', '钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (38, 40, '碳纤维', '碳纤维', '钛合金', '合成材料', '钛合金', '管胎', 23.0, '铝合金', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (39, 39, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (40, 38, '钛合金', '钛合金', '钛合金', '凝胶', '钢', '真空胎', 45.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (41, 37, '钢', '钢', '钢', '皮革', '镀镍钢', '管胎', 50.0, '碳纤维', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (42, 36, '碳纤维', '碳纤维', '铝合金', '皮革', '镀镍钢', '管胎', 55.0, '碳纤维', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (43, 35, '碳纤维', '碳纤维', '铝合金', '皮革', '镀镍钢', '管胎', 58.0, '碳纤维', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (44, 34, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '真空胎', 50.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (45, 33, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (46, 32, '钢', '钢', '钛合金', '凝胶', '钢', '管胎', 45.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (47, 31, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '真空胎', 25.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (48, 30, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 23.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (49, 29, '碳纤维', '碳纤维', '碳纤维', '合成材料', '钛合金', '管胎', 23.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (50, 28, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (51, 27, '钛合金', '钛合金', '钛合金', '凝胶', '钢', '真空胎', 45.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (52, 26, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 50.0, '碳纤维', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (53, 25, '钢', '钢', '钢', '皮革', '钢', '宽口胎', 55.0, '钢', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (54, 24, '钛合金', '钛合金', '钛合金', '合成材料', '钢', '超宽胎', 60.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (55, 23, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '标准胎', 50.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (56, 100, '钛合金', '钛合金', '钛合金', '皮革', '镀镍钢', '宽口胎', 55.0, '钢', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (57, 101, '碳纤维', '碳纤维', '钛合金', '合成材料', '钛合金', '管胎', 50.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (58, 102, '铝合金', '铝合金', '钛合金', '皮革', '镀镍钢', '真空胎', 25.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (59, 103, '钢', '钢', '钛合金', '凝胶', '钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (60, 104, '碳纤维', '碳纤维', '钛合金', '合成材料', '钛合金', '管胎', 23.0, '铝合金', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (61, 110, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (62, 111, '钢', '钢', '钛合金', '凝胶', '钢', '管胎', 45.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (63, 112, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '真空胎', 25.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (64, 113, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 23.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (65, 114, '碳纤维', '碳纤维', '碳纤维', '合成材料', '钛合金', '管胎', 23.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (66, 115, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (67, 116, '钛合金', '钛合金', '钛合金', '凝胶', '钢', '真空胎', 45.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (68, 117, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 50.0, '碳纤维', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (69, 118, '钢', '钢', '钢', '皮革', '钢', '宽口胎', 55.0, '钢', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (70, 119, '钛合金', '钛合金', '钛合金', '合成材料', '钢', '超宽胎', 60.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (71, 120, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '标准胎', 50.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (72, 131, '钛合金', '钛合金', '钛合金', '皮革', '镀镍钢', '宽口胎', 55.0, '钢', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (73, 132, '碳纤维', '碳纤维', '钛合金', '合成材料', '钛合金', '管胎', 50.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (74, 133, '铝合金', '铝合金', '钛合金', '皮革', '镀镍钢', '真空胎', 25.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (75, 134, '钢', '钢', '钛合金', '凝胶', '钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (76, 135, '碳纤维', '碳纤维', '钛合金', '合成材料', '钛合金', '管胎', 23.0, '铝合金', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (77, 136, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (78, 137, '钛合金', '钛合金', '钛合金', '凝胶', '钢', '真空胎', 45.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (79, 138, '钢', '钢', '钢', '皮革', '钛合金', '管胎', 50.0, '碳纤维', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (80, 139, '碳纤维', '碳纤维', '铝合金', '皮革', '镀镍钢', '管胎', 55.0, '碳纤维', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (81, 140, '碳纤维', '碳纤维', '铝合金', '皮革', '镀镍钢', '管胎', 58.0, '碳纤维', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (82, 141, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (83, 142, '钢', '钢', '钛合金', '凝胶', '钢', '管胎', 45.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (84, 143, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '真空胎', 25.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (85, 144, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 23.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (87, 145, '碳纤维', '碳纤维', '碳纤维', '合成材料', '钛合金', '管胎', 23.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (88, 146, '铝合金', '铝合金', '铝合金', '合成材料', '镀镍钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (89, 147, '钛合金', '钛合金', '钛合金', '凝胶', '钢', '真空胎', 45.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (90, 148, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 50.0, '碳纤维', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (91, 149, '钢', '钢', '钢', '皮革', '钢', '宽口胎', 55.0, '钢', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (92, 150, '钛合金', '钛合金', '钛合金', '合成材料', '钢', '超宽胎', 60.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (93, 151, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '标准胎', 50.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (94, 271, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 25.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (95, 272, '碳纤维', '铝合金', '碳纤维', '合成材料', '镀镍钢', '真空胎', 30.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (96, 273, '钢', '钢', '钢', '皮革', '钢', '管胎', 28.0, '钢', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (97, 274, '钛合金', '钛合金', '钛合金', '凝胶', '钛合金', '开口胎', 26.0, '碳纤维', 30, '锁踏');
INSERT INTO `BicycleComponents` VALUES (98, 275, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 25.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (99, 276, '碳纤维', '铝合金', '碳纤维', '合成材料', '镀镍钢', '真空胎', 30.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (100, 278, '钢', '钢', '钢', '皮革', '钢', '管胎', 28.0, '钢', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (101, 279, '钛合金', '钛合金', '钛合金', '凝胶', '钛合金', '开口胎', 26.0, '碳纤维', 30, '锁踏');
INSERT INTO `BicycleComponents` VALUES (102, 280, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 25.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (103, 281, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 25.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (104, 282, '碳纤维', '铝合金', '碳纤维', '合成材料', '镀镍钢', '真空胎', 30.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (105, 283, '钢', '钢', '钢', '皮革', '钢', '管胎', 28.0, '钢', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (106, 284, '钛合金', '钛合金', '钛合金', '凝胶', '钢', '开口胎', 26.0, '碳纤维', 30, '锁踏');
INSERT INTO `BicycleComponents` VALUES (107, 285, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 25.0, '铝合金', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (108, 286, '钛合金', '钛合金', '钛合金', '凝胶', '钛合金', '真空胎', 30.0, '钛合金', 30, '锁踏');
INSERT INTO `BicycleComponents` VALUES (109, 152, '钛合金', '钛合金', '钛合金', '皮革', '镀镍钢', '宽口胎', 55.0, '钢', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (110, 153, '碳纤维', '碳纤维', '钛合金', '合成材料', '钛合金', '管胎', 50.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (111, 154, '铝合金', '铝合金', '钛合金', '皮革', '镀镍钢', '真空胎', 25.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (112, 155, '钢', '钢', '钛合金', '凝胶', '钢', '开口胎', 40.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (113, 156, '碳纤维', '碳纤维', '钛合金', '合成材料', '钛合金', '管胎', 23.0, '铝合金', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (114, 163, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 28.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (115, 164, '钢', '钢', '钛合金', '凝胶', '钢', '管胎', 32.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (116, 165, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 35.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (117, 172, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 30.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (118, 173, '钢', '钢', '钛合金', '凝胶', '钢', '管胎', 32.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (119, 174, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 35.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (120, 181, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 28.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (121, 182, '钢', '钢', '钛合金', '凝胶', '钢', '管胎', 32.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (122, 183, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 35.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (123, 184, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 32.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (124, 185, '钢', '钢', '钛合金', '合成材料', '钢', '管胎', 32.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (125, 186, '碳纤维', '碳纤维', '碳纤维', '凝胶', '钛合金', '真空胎', 32.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (126, 187, '钛合金', '钛合金', '钛合金', '合成材料', '钛合金', '真空胎', 32.0, '钛合金', 30, '平踏');
INSERT INTO `BicycleComponents` VALUES (127, 188, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 32.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (128, 195, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 30.0, '铝合金', 36, '平踏');
INSERT INTO `BicycleComponents` VALUES (129, 196, '钢', '钢', '钛合金', '凝胶', '钢', '管胎', 32.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (130, 197, '碳纤维', '碳纤维', '碳纤维', '皮革', '钛合金', '管胎', 35.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (131, 238, '碳纤维', '碳纤维', '铝合金', '合成材料', '镀镍钢', '开口胎', 55.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (132, 239, '铝合金', '铝合金', '铝合金', '皮革', '钢', '管胎', 58.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (133, 240, '钛合金', '钛合金', '铝合金', '凝胶', '钛合金', '真空胎', 60.0, '铝合金', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (134, 241, '铝合金', '铝合金', '铝合金', '合成材料', '钢', '开口胎', 52.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (135, 242, '碳纤维', '碳纤维', '铝合金', '皮革', '镀镍钢', '管胎', 62.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (136, 258, '铝合金', '铝合金', '铝合金', '合成材料', '钢', '开口胎', 45.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (137, 259, '碳纤维', '碳纤维', '铝合金', '凝胶', '钛合金', '真空胎', 48.0, '碳纤维', 28, '锁踏');
INSERT INTO `BicycleComponents` VALUES (138, 260, '钛合金', '钛合金', '铝合金', '皮革', '镀镍钢', '管胎', 50.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (139, 261, '铝合金', '铝合金', '铝合金', '合成材料', '钢', '开口胎', 40.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (140, 262, '钢', '钢', '铝合金', '皮革', '钢', '开口胎', 42.0, '铝合金', 36, '锁踏');
INSERT INTO `BicycleComponents` VALUES (141, 263, '铝合金', '铝合金', '铝合金', '合成材料', '钢', '开口胎', 45.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (142, 267, '铝合金', '铝合金', '铝合金', '皮革', '钢', '开口胎', 25.0, '铝合金', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (143, 268, '碳纤维', '铝合金', '碳纤维', '合成材料', '镀镍钢', '真空胎', 30.0, '碳纤维', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (144, 269, '钢', '钢', '钢', '皮革', '钢', '管胎', 28.0, '钢', 32, '平踏');
INSERT INTO `BicycleComponents` VALUES (145, 270, '钛合金', '钛合金', '钛合金', '凝胶', '钛合金', '开口胎', 26.0, '钛合金', 30, '锁踏');
INSERT INTO `BicycleComponents` VALUES (146, 287, '钛合金', '钛合金', '钛合金', '凝胶', '钛合金', '真空胎', 30.0, '钛合金', 30, '锁踏');
INSERT INTO `BicycleComponents` VALUES (147, 288, '钛合金', '钛合金', '钛合金', '合成材料', '钛合金', '开口胎', 28.0, '铝合金', 32, '锁踏');
INSERT INTO `BicycleComponents` VALUES (148, 289, '铝合金', '铝合金', '铝合金', '皮革', '镀镍钢', '开口胎', 25.0, '铝合金', 32, '锁踏');
COMMIT;

-- ----------------------------
-- Table structure for BicycleDynamics
-- ----------------------------
DROP TABLE IF EXISTS `BicycleDynamics`;
CREATE TABLE `BicycleDynamics` (
  `DynamicsID` int NOT NULL AUTO_INCREMENT COMMENT '动力学数据唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `CenterOfGravityHeight` decimal(10,2) NOT NULL COMMENT '重心高度 (厘米)',
  `Wheelbase` decimal(10,2) NOT NULL COMMENT '轴距 (厘米)',
  `Trail` decimal(10,2) NOT NULL COMMENT '前叉偏移量 (厘米)',
  `SteeringAngle` decimal(10,2) NOT NULL COMMENT '转向角度 (度)',
  `HeadTubeAngle` decimal(10,2) NOT NULL COMMENT '头管角度 (度)',
  `BottomBracketDrop` decimal(10,2) NOT NULL COMMENT '五通下沉量 (毫米)',
  `ChainstayLength` decimal(10,2) NOT NULL COMMENT '后下叉长度 (厘米)',
  PRIMARY KEY (`DynamicsID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicycleDynamics_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车动力学数据表';

-- ----------------------------
-- Records of BicycleDynamics
-- ----------------------------
BEGIN;
INSERT INTO `BicycleDynamics` VALUES (1, 1, 60.00, 100.00, 5.00, 25.00, 72.00, 70.00, 41.00);
INSERT INTO `BicycleDynamics` VALUES (2, 2, 65.00, 110.00, 6.00, 30.00, 68.00, 65.00, 43.00);
INSERT INTO `BicycleDynamics` VALUES (3, 3, 62.00, 105.00, 5.50, 28.00, 70.00, 68.00, 42.00);
INSERT INTO `BicycleDynamics` VALUES (4, 4, 58.00, 98.00, 4.80, 24.00, 73.00, 72.00, 40.00);
INSERT INTO `BicycleDynamics` VALUES (5, 5, 67.00, 115.00, 6.50, 32.00, 67.00, 63.00, 44.00);
INSERT INTO `BicycleDynamics` VALUES (6, 6, 63.00, 108.00, 5.80, 29.00, 69.00, 66.00, 42.50);
INSERT INTO `BicycleDynamics` VALUES (7, 7, 57.00, 97.00, 4.70, 23.00, 74.00, 73.00, 39.50);
INSERT INTO `BicycleDynamics` VALUES (8, 8, 66.00, 112.00, 6.20, 31.00, 66.00, 64.00, 43.50);
INSERT INTO `BicycleDynamics` VALUES (9, 9, 70.00, 120.00, 7.00, 35.00, 65.00, 60.00, 45.00);
INSERT INTO `BicycleDynamics` VALUES (10, 10, 59.00, 99.00, 4.90, 25.00, 72.50, 71.00, 40.50);
INSERT INTO `BicycleDynamics` VALUES (11, 94, 90.00, 120.00, 6.00, 25.00, 72.00, 70.00, 41.00);
INSERT INTO `BicycleDynamics` VALUES (12, 93, 90.00, 120.00, 6.00, 25.00, 72.00, 70.00, 41.00);
INSERT INTO `BicycleDynamics` VALUES (13, 87, 90.00, 120.00, 6.00, 25.00, 72.00, 70.00, 41.00);
INSERT INTO `BicycleDynamics` VALUES (14, 86, 85.00, 130.00, 5.50, 25.00, 72.00, 70.00, 41.00);
INSERT INTO `BicycleDynamics` VALUES (15, 85, 80.00, 110.00, 6.20, 25.00, 72.00, 70.00, 41.00);
INSERT INTO `BicycleDynamics` VALUES (16, 84, 95.00, 135.00, 4.80, 25.00, 72.00, 70.00, 41.00);
INSERT INTO `BicycleDynamics` VALUES (17, 83, 100.00, 140.00, 5.00, 25.00, 72.00, 70.00, 41.00);
INSERT INTO `BicycleDynamics` VALUES (18, 66, 100.00, 120.00, 6.00, 70.00, 68.00, 40.00, 82.00);
INSERT INTO `BicycleDynamics` VALUES (19, 65, 105.00, 125.00, 5.80, 72.00, 69.00, 38.00, 85.00);
INSERT INTO `BicycleDynamics` VALUES (20, 64, 80.00, 100.00, 5.00, 71.00, 73.00, 30.00, 88.00);
INSERT INTO `BicycleDynamics` VALUES (21, 63, 85.00, 105.00, 5.20, 70.00, 72.00, 32.00, 85.00);
INSERT INTO `BicycleDynamics` VALUES (22, 62, 90.00, 110.00, 5.50, 70.00, 72.00, 35.00, 86.00);
INSERT INTO `BicycleDynamics` VALUES (23, 44, 100.00, 120.00, 6.00, 70.00, 68.00, 40.00, 82.00);
INSERT INTO `BicycleDynamics` VALUES (24, 43, 105.00, 125.00, 5.80, 72.00, 69.00, 38.00, 85.00);
INSERT INTO `BicycleDynamics` VALUES (25, 42, 80.00, 100.00, 5.00, 71.00, 73.00, 30.00, 88.00);
INSERT INTO `BicycleDynamics` VALUES (26, 41, 85.00, 105.00, 5.20, 70.00, 72.00, 32.00, 85.00);
INSERT INTO `BicycleDynamics` VALUES (27, 40, 90.00, 110.00, 5.50, 70.00, 72.00, 35.00, 86.00);
INSERT INTO `BicycleDynamics` VALUES (28, 100, 100.00, 120.00, 6.00, 70.00, 68.00, 40.00, 82.00);
INSERT INTO `BicycleDynamics` VALUES (29, 101, 105.00, 125.00, 5.80, 72.00, 69.00, 38.00, 85.00);
INSERT INTO `BicycleDynamics` VALUES (30, 102, 80.00, 100.00, 5.00, 71.00, 73.00, 30.00, 88.00);
INSERT INTO `BicycleDynamics` VALUES (31, 103, 85.00, 105.00, 5.20, 70.00, 72.00, 32.00, 85.00);
INSERT INTO `BicycleDynamics` VALUES (32, 104, 90.00, 110.00, 5.50, 70.00, 72.00, 35.00, 86.00);
INSERT INTO `BicycleDynamics` VALUES (33, 121, 100.00, 120.00, 6.00, 70.00, 68.00, 40.00, 82.00);
INSERT INTO `BicycleDynamics` VALUES (34, 122, 105.00, 125.00, 5.80, 72.00, 69.00, 38.00, 85.00);
INSERT INTO `BicycleDynamics` VALUES (35, 123, 80.00, 100.00, 5.00, 71.00, 73.00, 30.00, 88.00);
INSERT INTO `BicycleDynamics` VALUES (36, 124, 85.00, 105.00, 5.20, 70.00, 72.00, 32.00, 85.00);
INSERT INTO `BicycleDynamics` VALUES (37, 125, 90.00, 110.00, 5.50, 70.00, 72.00, 35.00, 86.00);
INSERT INTO `BicycleDynamics` VALUES (38, 131, 100.00, 120.00, 6.00, 70.00, 68.00, 40.00, 450.00);
INSERT INTO `BicycleDynamics` VALUES (39, 132, 105.00, 125.00, 5.80, 72.00, 69.00, 38.00, 460.00);
INSERT INTO `BicycleDynamics` VALUES (40, 133, 80.00, 100.00, 5.00, 71.00, 73.00, 30.00, 400.00);
INSERT INTO `BicycleDynamics` VALUES (41, 134, 85.00, 105.00, 5.20, 70.00, 72.00, 32.00, 410.00);
INSERT INTO `BicycleDynamics` VALUES (42, 135, 90.00, 110.00, 5.50, 70.00, 72.00, 35.00, 420.00);
INSERT INTO `BicycleDynamics` VALUES (43, 267, 60.00, 100.00, 4.50, 65.00, 73.00, 24.00, 42.00);
INSERT INTO `BicycleDynamics` VALUES (44, 268, 65.00, 110.00, 5.00, 70.00, 72.00, 25.00, 44.00);
INSERT INTO `BicycleDynamics` VALUES (45, 269, 62.00, 105.00, 4.80, 68.00, 72.50, 23.00, 43.00);
INSERT INTO `BicycleDynamics` VALUES (46, 270, 61.50, 103.00, 4.70, 67.00, 72.00, 22.00, 42.50);
INSERT INTO `BicycleDynamics` VALUES (47, 275, 60.00, 100.00, 4.50, 65.00, 73.00, 24.00, 42.00);
INSERT INTO `BicycleDynamics` VALUES (48, 276, 65.00, 110.00, 5.00, 70.00, 72.00, 25.00, 44.00);
INSERT INTO `BicycleDynamics` VALUES (49, 278, 62.00, 105.00, 4.80, 68.00, 72.50, 23.00, 43.00);
INSERT INTO `BicycleDynamics` VALUES (50, 279, 66.00, 112.00, 5.20, 71.00, 71.00, 26.00, 45.00);
INSERT INTO `BicycleDynamics` VALUES (51, 280, 61.50, 103.00, 4.70, 67.00, 72.00, 22.00, 42.50);
INSERT INTO `BicycleDynamics` VALUES (52, 288, 100.00, 115.00, 5.00, 70.00, 70.00, 25.00, 45.00);
COMMIT;

-- ----------------------------
-- Table structure for BicyclePerformance
-- ----------------------------
DROP TABLE IF EXISTS `BicyclePerformance`;
CREATE TABLE `BicyclePerformance` (
  `PerformanceID` int NOT NULL AUTO_INCREMENT COMMENT '性能数据唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `TopSpeed` decimal(10,2) NOT NULL COMMENT '最高速度 (公里/小时)',
  `Acceleration` decimal(10,2) NOT NULL COMMENT '加速性能 (秒/0-30公里/小时)',
  `RollingResistance` decimal(10,3) NOT NULL COMMENT '滚动阻力系数',
  `AerodynamicDrag` decimal(10,3) NOT NULL COMMENT '空气阻力系数',
  `PowerTransferEfficiency` decimal(10,2) DEFAULT NULL,
  `BrakingDistance` decimal(10,2) NOT NULL COMMENT '刹车距离 (米)',
  `ClimbingEfficiency` decimal(10,2) NOT NULL COMMENT '爬坡效率 (%)',
  `CorneringStability` decimal(10,2) NOT NULL COMMENT '转弯稳定性 (评分)',
  PRIMARY KEY (`PerformanceID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicyclePerformance_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车性能数据表';

-- ----------------------------
-- Records of BicyclePerformance
-- ----------------------------
BEGIN;
INSERT INTO `BicyclePerformance` VALUES (1, 1, 50.00, 3.50, 0.004, 0.250, 95.00, 5.00, 90.00, 9.50);
INSERT INTO `BicyclePerformance` VALUES (2, 2, 40.00, 4.20, 0.006, 0.300, 90.00, 6.00, 85.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (3, 3, 35.00, 4.50, 0.005, 0.280, 92.00, 5.50, 88.00, 9.00);
INSERT INTO `BicyclePerformance` VALUES (4, 4, 52.00, 3.40, 0.004, 0.240, 96.00, 4.80, 92.00, 9.70);
INSERT INTO `BicyclePerformance` VALUES (5, 5, 38.00, 4.00, 0.007, 0.320, 88.00, 6.20, 84.00, 8.20);
INSERT INTO `BicyclePerformance` VALUES (6, 6, 45.00, 3.80, 0.005, 0.260, 93.00, 5.20, 89.00, 9.20);
INSERT INTO `BicyclePerformance` VALUES (7, 7, 55.00, 3.20, 0.003, 0.220, 97.00, 4.50, 93.00, 9.80);
INSERT INTO `BicyclePerformance` VALUES (8, 8, 37.00, 4.10, 0.006, 0.310, 89.00, 6.00, 85.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (9, 9, 30.00, 5.00, 0.008, 0.350, 85.00, 7.00, 80.00, 7.50);
INSERT INTO `BicyclePerformance` VALUES (10, 10, 53.00, 3.30, 0.004, 0.230, 96.00, 4.70, 91.00, 9.60);
INSERT INTO `BicyclePerformance` VALUES (11, 1, 62.50, 8.20, 0.004, 0.278, 94.50, 14.20, 88.30, 92.00);
INSERT INTO `BicyclePerformance` VALUES (12, 2, 60.80, 8.50, 0.004, 0.285, 93.80, 14.80, 86.70, 89.00);
INSERT INTO `BicyclePerformance` VALUES (13, 3, 64.20, 7.90, 0.004, 0.265, 95.10, 13.70, 90.20, 95.00);
INSERT INTO `BicyclePerformance` VALUES (14, 1, 62.50, 8.20, 0.004, 0.278, 94.50, 14.20, 88.30, 92.00);
INSERT INTO `BicyclePerformance` VALUES (15, 2, 60.80, 8.50, 0.004, 0.285, 93.80, 14.80, 86.70, 89.00);
INSERT INTO `BicyclePerformance` VALUES (16, 3, 64.20, 7.90, 0.004, 0.265, 95.10, 13.70, 90.20, 95.00);
INSERT INTO `BicyclePerformance` VALUES (17, 1, 62.50, 8.20, 0.004, 0.278, 94.50, 14.20, 88.30, 92.00);
INSERT INTO `BicyclePerformance` VALUES (18, 2, 60.80, 8.50, 0.004, 0.285, 93.80, 14.80, 86.70, 89.00);
INSERT INTO `BicyclePerformance` VALUES (19, 3, 64.20, 7.90, 0.004, 0.265, 95.10, 13.70, 90.20, 95.00);
INSERT INTO `BicyclePerformance` VALUES (20, 98, 62.00, 4.20, 0.005, 0.240, 96.00, 3.10, 89.00, 9.30);
INSERT INTO `BicyclePerformance` VALUES (21, 97, 35.00, 6.80, 0.006, 0.400, 92.00, 2.80, 82.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (22, 96, 60.00, 4.50, 0.005, 0.450, 95.00, 3.20, 88.00, 9.00);
INSERT INTO `BicyclePerformance` VALUES (23, 95, 45.00, 8.00, 0.008, 0.500, 88.00, 2.50, 75.00, 7.80);
INSERT INTO `BicyclePerformance` VALUES (24, 92, 45.00, 8.00, 0.008, 0.500, 88.00, 2.50, 75.00, 7.80);
INSERT INTO `BicyclePerformance` VALUES (25, 91, 50.00, 7.50, 0.007, 0.520, 87.00, 2.80, 78.00, 8.00);
INSERT INTO `BicyclePerformance` VALUES (26, 90, 60.00, 6.80, 0.006, 0.450, 92.00, 2.30, 85.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (27, 89, 55.00, 7.20, 0.007, 0.550, 85.00, 3.00, 80.00, 8.00);
INSERT INTO `BicyclePerformance` VALUES (28, 88, 40.00, 9.00, 0.009, 0.600, 80.00, 3.20, 70.00, 7.20);
INSERT INTO `BicyclePerformance` VALUES (29, 76, 45.00, 6.50, 0.007, 0.500, 95.00, 2.60, 80.00, 8.00);
INSERT INTO `BicyclePerformance` VALUES (30, 75, 50.00, 6.00, 0.006, 0.480, 97.00, 2.40, 82.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (31, 74, 55.00, 5.80, 0.005, 0.450, 98.00, 2.20, 85.00, 9.00);
INSERT INTO `BicyclePerformance` VALUES (32, 73, 60.00, 5.50, 0.004, 0.420, 99.00, 2.00, 88.00, 9.20);
INSERT INTO `BicyclePerformance` VALUES (33, 61, 45.00, 8.00, 0.008, 0.500, 88.00, 2.50, 75.00, 7.80);
INSERT INTO `BicyclePerformance` VALUES (34, 60, 50.00, 7.50, 0.007, 0.520, 87.00, 2.80, 78.00, 8.00);
INSERT INTO `BicyclePerformance` VALUES (35, 59, 55.00, 7.00, 0.006, 0.550, 85.00, 3.00, 80.00, 8.20);
INSERT INTO `BicyclePerformance` VALUES (36, 58, 35.00, 9.00, 0.010, 0.480, 80.00, 3.20, 82.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (37, 57, 38.00, 8.50, 0.009, 0.450, 82.00, 3.00, 85.00, 9.00);
INSERT INTO `BicyclePerformance` VALUES (38, 51, 40.00, 7.50, 0.007, 0.500, 90.00, 2.80, 80.00, 8.20);
INSERT INTO `BicyclePerformance` VALUES (39, 55, 42.00, 7.00, 0.006, 0.520, 88.00, 2.60, 82.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (40, 54, 50.00, 6.00, 0.005, 0.550, 95.00, 2.20, 85.00, 9.00);
INSERT INTO `BicyclePerformance` VALUES (41, 53, 55.00, 5.80, 0.004, 0.600, 98.00, 2.00, 88.00, 9.20);
INSERT INTO `BicyclePerformance` VALUES (42, 52, 56.00, 5.50, 0.004, 0.620, 99.00, 1.90, 90.00, 9.50);
INSERT INTO `BicyclePerformance` VALUES (43, 33, 40.00, 7.50, 0.007, 0.500, 90.00, 2.80, 80.00, 8.20);
INSERT INTO `BicyclePerformance` VALUES (44, 32, 42.00, 7.00, 0.006, 0.520, 88.00, 2.60, 82.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (45, 31, 50.00, 6.00, 0.005, 0.550, 95.00, 2.20, 85.00, 9.00);
INSERT INTO `BicyclePerformance` VALUES (46, 30, 55.00, 5.80, 0.004, 0.600, 98.00, 2.00, 88.00, 9.20);
INSERT INTO `BicyclePerformance` VALUES (47, 29, 56.00, 5.50, 0.004, 0.620, 99.00, 1.90, 90.00, 9.50);
INSERT INTO `BicyclePerformance` VALUES (48, 110, 40.00, 7.50, 0.007, 0.500, 90.00, 2.80, 80.00, 8.20);
INSERT INTO `BicyclePerformance` VALUES (49, 111, 42.00, 7.00, 0.006, 0.520, 88.00, 2.60, 82.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (50, 112, 50.00, 6.00, 0.005, 0.550, 95.00, 2.20, 85.00, 9.00);
INSERT INTO `BicyclePerformance` VALUES (51, 113, 55.00, 5.80, 0.004, 0.600, 98.00, 2.00, 88.00, 9.20);
INSERT INTO `BicyclePerformance` VALUES (52, 114, 56.00, 5.50, 0.004, 0.620, 99.00, 1.90, 90.00, 9.50);
INSERT INTO `BicyclePerformance` VALUES (53, 198, 25.00, 5.20, 0.005, 0.300, 80.00, 3.50, 85.00, 88.00);
INSERT INTO `BicyclePerformance` VALUES (54, 199, 23.00, 5.50, 0.005, 0.300, 80.00, 3.70, 82.00, 85.00);
INSERT INTO `BicyclePerformance` VALUES (55, 200, 28.00, 4.80, 0.005, 0.300, 80.00, 3.90, 86.00, 90.00);
INSERT INTO `BicyclePerformance` VALUES (56, 201, 35.00, 4.00, 0.005, 0.250, 90.00, 3.00, 90.00, 95.00);
INSERT INTO `BicyclePerformance` VALUES (57, 202, 30.00, 4.50, 0.005, 0.280, 85.00, 3.20, 88.00, 92.00);
INSERT INTO `BicyclePerformance` VALUES (58, 208, 45.00, 4.50, 0.010, 0.900, 80.00, 3.50, 70.00, 85.00);
INSERT INTO `BicyclePerformance` VALUES (59, 209, 50.00, 4.20, 0.012, 0.900, 82.00, 3.70, 72.00, 88.00);
INSERT INTO `BicyclePerformance` VALUES (60, 210, 55.00, 4.00, 0.015, 0.900, 85.00, 4.00, 75.00, 90.00);
INSERT INTO `BicyclePerformance` VALUES (61, 211, 50.00, 4.50, 0.005, 0.800, 90.00, 3.00, 85.00, 90.00);
INSERT INTO `BicyclePerformance` VALUES (62, 212, 45.00, 5.00, 0.006, 0.900, 88.00, 3.50, 80.00, 88.00);
INSERT INTO `BicyclePerformance` VALUES (63, 213, 40.00, 5.50, 0.008, 1.100, 85.00, 4.00, 75.00, 85.00);
INSERT INTO `BicyclePerformance` VALUES (64, 214, 45.00, 4.50, 0.010, 0.900, 80.00, 3.50, 70.00, 85.00);
INSERT INTO `BicyclePerformance` VALUES (65, 215, 45.00, 4.50, 0.005, 0.800, 90.00, 3.00, 85.00, 90.00);
INSERT INTO `BicyclePerformance` VALUES (66, 216, 40.00, 5.00, 0.006, 0.900, 88.00, 3.50, 80.00, 88.00);
INSERT INTO `BicyclePerformance` VALUES (67, 217, 35.00, 5.50, 0.008, 1.100, 85.00, 4.00, 75.00, 85.00);
INSERT INTO `BicyclePerformance` VALUES (68, 218, 45.00, 4.50, 0.010, 0.900, 80.00, 3.50, 70.00, 85.00);
INSERT INTO `BicyclePerformance` VALUES (69, 286, 360.00, 3.00, 0.018, 0.240, 98.00, 2.90, 90.00, 9.20);
INSERT INTO `BicyclePerformance` VALUES (70, 221, 50.00, 4.50, 0.005, 0.800, 90.00, 3.80, 85.00, 90.00);
INSERT INTO `BicyclePerformance` VALUES (71, 222, 40.00, 5.20, 0.008, 1.100, 80.00, 4.50, 75.00, 85.00);
INSERT INTO `BicyclePerformance` VALUES (72, 223, 45.00, 5.00, 0.006, 0.900, 88.00, 4.00, 80.00, 88.00);
INSERT INTO `BicyclePerformance` VALUES (73, 224, 38.00, 5.50, 0.009, 1.200, 82.00, 4.60, 70.00, 80.00);
INSERT INTO `BicyclePerformance` VALUES (74, 225, 52.00, 4.20, 0.005, 0.850, 92.00, 3.60, 88.00, 92.00);
INSERT INTO `BicyclePerformance` VALUES (75, 226, 54.00, 4.00, 0.005, 0.820, 94.00, 3.50, 90.00, 94.00);
INSERT INTO `BicyclePerformance` VALUES (76, 227, 55.00, 3.90, 0.004, 0.800, 95.00, 3.40, 92.00, 95.00);
INSERT INTO `BicyclePerformance` VALUES (77, 228, 54.00, 4.00, 0.005, 0.830, 93.00, 3.50, 91.00, 93.00);
INSERT INTO `BicyclePerformance` VALUES (78, 271, 45.00, 3.50, 0.020, 0.250, 95.00, 3.00, 85.00, 8.50);
INSERT INTO `BicyclePerformance` VALUES (79, 272, 40.00, 4.00, 0.030, 0.300, 90.00, 3.50, 80.00, 8.00);
INSERT INTO `BicyclePerformance` VALUES (80, 273, 38.00, 3.80, 0.018, 0.280, 96.00, 3.20, 88.00, 8.70);
INSERT INTO `BicyclePerformance` VALUES (81, 274, 42.00, 3.60, 0.020, 0.260, 97.00, 3.10, 89.00, 9.00);
INSERT INTO `BicyclePerformance` VALUES (82, 17, 0.00, 0.00, 0.010, 0.500, 95.00, 0.00, 0.00, 0.00);
INSERT INTO `BicyclePerformance` VALUES (83, 18, 0.00, 0.00, 0.010, 0.500, 95.00, 0.00, 0.00, 0.00);
INSERT INTO `BicyclePerformance` VALUES (84, 19, 0.00, 0.00, 0.010, 0.500, 95.00, 0.00, 0.00, 0.00);
INSERT INTO `BicyclePerformance` VALUES (85, 287, 360.00, 3.00, 0.018, 0.240, 98.00, 2.90, 90.00, 9.20);
COMMIT;

-- ----------------------------
-- Table structure for BicycleRider
-- ----------------------------
DROP TABLE IF EXISTS `BicycleRider`;
CREATE TABLE `BicycleRider` (
  `RiderID` int NOT NULL AUTO_INCREMENT COMMENT '骑手唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `RiderName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '骑手姓名',
  `RiderWeight` decimal(10,2) NOT NULL COMMENT '骑手体重 (公斤)',
  `RiderHeight` decimal(10,2) NOT NULL COMMENT '骑手身高 (厘米)',
  `RidingStyle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '骑行风格 (Casual, Competitive, Off-Road)',
  `RiderAge` int NOT NULL COMMENT '骑手年龄',
  `RiderPowerOutput` decimal(10,2) DEFAULT NULL,
  `RiderCadence` decimal(10,2) NOT NULL COMMENT '骑手踏频 (RPM)',
  PRIMARY KEY (`RiderID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicycleRider_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='骑手信息表';

-- ----------------------------
-- Records of BicycleRider
-- ----------------------------
BEGIN;
INSERT INTO `BicycleRider` VALUES (1, 1, 'John Doe', 75.00, 180.00, 'Competitive', 30, 300.00, 90.00);
INSERT INTO `BicycleRider` VALUES (2, 2, 'Jane Smith', 65.00, 170.00, 'Off-Road', 28, 250.00, 85.00);
INSERT INTO `BicycleRider` VALUES (3, 3, 'Mike Johnson', 80.00, 185.00, 'Casual', 35, 200.00, 80.00);
INSERT INTO `BicycleRider` VALUES (4, 4, 'Emily Davis', 60.00, 165.00, 'Competitive', 27, 280.00, 88.00);
INSERT INTO `BicycleRider` VALUES (5, 5, 'Chris Brown', 85.00, 190.00, 'Off-Road', 32, 260.00, 84.00);
INSERT INTO `BicycleRider` VALUES (6, 6, 'Sarah Wilson', 70.00, 175.00, 'Casual', 29, 220.00, 82.00);
INSERT INTO `BicycleRider` VALUES (7, 7, 'David Lee', 78.00, 182.00, 'Competitive', 31, 310.00, 92.00);
INSERT INTO `BicycleRider` VALUES (8, 8, 'Laura White', 63.00, 168.00, 'Off-Road', 26, 240.00, 83.00);
INSERT INTO `BicycleRider` VALUES (9, 9, 'James Green', 72.00, 178.00, 'Casual', 33, 210.00, 81.00);
INSERT INTO `BicycleRider` VALUES (10, 10, 'Anna Black', 68.00, 173.00, 'Competitive', 28, 290.00, 89.00);
INSERT INTO `BicycleRider` VALUES (11, 94, 'Big Mike', 500.00, 180.00, '极限骑行', 35, 300.00, 70.00);
INSERT INTO `BicycleRider` VALUES (12, 93, 'Big Mike', 500.00, 180.00, '极限骑行', 35, 300.00, 70.00);
INSERT INTO `BicycleRider` VALUES (13, 87, 'Big Mike', 500.00, 180.00, '极限骑行', 35, 300.00, 70.00);
INSERT INTO `BicycleRider` VALUES (14, 86, 'King Kong', 500.00, 175.00, '极限表演', 40, 280.00, 65.00);
INSERT INTO `BicycleRider` VALUES (15, 85, 'Titan Tom', 500.00, 170.00, '竞速', 28, 320.00, 80.00);
INSERT INTO `BicycleRider` VALUES (16, 84, 'Chubby Chad', 500.00, 160.00, '休闲', 50, 200.00, 60.00);
INSERT INTO `BicycleRider` VALUES (17, 83, 'Iron Man', 500.00, 190.00, '电动极速', 38, 350.00, 85.00);
INSERT INTO `BicycleRider` VALUES (18, 76, '李明', 75.00, 175.00, '通勤', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (19, 75, '王强', 80.00, 180.00, '健身', 35, 280.00, 95.00);
INSERT INTO `BicycleRider` VALUES (20, 74, '张伟', 70.00, 180.00, '竞技', 28, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (21, 73, '陈浩', 65.00, 178.00, '竞速', 25, 320.00, 105.00);
INSERT INTO `BicycleRider` VALUES (22, 66, 'Mike', 500.00, 180.00, '极限骑行', 35, 300.00, 70.00);
INSERT INTO `BicycleRider` VALUES (23, 65, 'Jack', 500.00, 175.00, '极限越野', 38, 310.00, 75.00);
INSERT INTO `BicycleRider` VALUES (24, 64, 'Alex', 500.00, 170.00, '竞速', 28, 320.00, 90.00);
INSERT INTO `BicycleRider` VALUES (25, 63, 'Tom', 500.00, 165.00, '通勤', 40, 250.00, 80.00);
INSERT INTO `BicycleRider` VALUES (26, 62, 'Jerry', 500.00, 160.00, '休闲', 50, 200.00, 60.00);
INSERT INTO `BicycleRider` VALUES (27, 55, '李明', 75.00, 170.00, '通勤', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (28, 54, '王强', 80.00, 175.00, '健身', 35, 280.00, 95.00);
INSERT INTO `BicycleRider` VALUES (29, 53, 'Alex', 70.00, 180.00, '竞速', 28, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (30, 52, 'Tom', 65.00, 178.00, '竞技', 25, 320.00, 105.00);
INSERT INTO `BicycleRider` VALUES (31, 51, 'Jerry', 65.00, 178.00, '休闲', 25, 310.00, 100.00);
INSERT INTO `BicycleRider` VALUES (32, 44, 'Mike', 500.00, 180.00, '极限骑行', 35, 300.00, 70.00);
INSERT INTO `BicycleRider` VALUES (33, 43, 'Jack', 500.00, 175.00, '极限越野', 38, 310.00, 75.00);
INSERT INTO `BicycleRider` VALUES (34, 42, 'Alex', 500.00, 170.00, '竞速', 28, 320.00, 90.00);
INSERT INTO `BicycleRider` VALUES (35, 41, 'Tom', 500.00, 165.00, '通勤', 40, 250.00, 80.00);
INSERT INTO `BicycleRider` VALUES (36, 40, 'Jerry', 500.00, 160.00, '休闲', 50, 200.00, 60.00);
INSERT INTO `BicycleRider` VALUES (37, 33, '李明', 75.00, 170.00, '通勤', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (38, 32, '王强', 80.00, 175.00, '健身', 35, 280.00, 95.00);
INSERT INTO `BicycleRider` VALUES (39, 31, 'Alex', 70.00, 180.00, '竞速', 28, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (40, 30, 'Tom', 65.00, 178.00, '竞技', 25, 320.00, 105.00);
INSERT INTO `BicycleRider` VALUES (41, 29, 'Jerry', 65.00, 178.00, '休闲', 25, 310.00, 100.00);
INSERT INTO `BicycleRider` VALUES (42, 100, 'Mike', 500.00, 180.00, '极限骑行', 35, 300.00, 70.00);
INSERT INTO `BicycleRider` VALUES (43, 101, 'Jack', 500.00, 175.00, '极限越野', 38, 310.00, 75.00);
INSERT INTO `BicycleRider` VALUES (44, 102, 'Alex', 500.00, 170.00, '竞速', 28, 320.00, 100.00);
INSERT INTO `BicycleRider` VALUES (45, 103, 'Tom', 500.00, 165.00, '通勤', 40, 250.00, 80.00);
INSERT INTO `BicycleRider` VALUES (46, 104, 'Jerry', 500.00, 160.00, '休闲', 50, 200.00, 60.00);
INSERT INTO `BicycleRider` VALUES (47, 110, '李明', 75.00, 170.00, '通勤', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (48, 111, '王强', 80.00, 175.00, '健身', 35, 280.00, 95.00);
INSERT INTO `BicycleRider` VALUES (49, 112, 'Alex', 70.00, 180.00, '竞速', 28, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (50, 113, 'Tom', 65.00, 178.00, '竞技', 25, 320.00, 105.00);
INSERT INTO `BicycleRider` VALUES (51, 114, 'Jerry', 65.00, 178.00, '休闲', 25, 310.00, 100.00);
INSERT INTO `BicycleRider` VALUES (52, 18, '张伟', 70.00, 175.00, '极限通勤', 35, 500.00, 90.00);
INSERT INTO `BicycleRider` VALUES (53, 271, 'Rider A', 70.00, 170.00, '休闲', 30, 200.00, 80.00);
INSERT INTO `BicycleRider` VALUES (54, 272, 'Rider B', 75.00, 180.00, '竞技', 25, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (55, 273, 'Rider C', 80.00, 175.00, '越野', 28, 270.00, 85.00);
INSERT INTO `BicycleRider` VALUES (56, 274, 'Rider D', 85.00, 180.00, '竞技', 22, 300.00, 90.00);
INSERT INTO `BicycleRider` VALUES (57, 275, 'Rider A', 500.00, 170.00, '休闲', 30, 200.00, 80.00);
INSERT INTO `BicycleRider` VALUES (58, 276, 'Rider B', 500.00, 180.00, '竞技', 25, 300.00, 90.00);
INSERT INTO `BicycleRider` VALUES (59, 278, 'Rider C', 500.00, 175.00, '越野', 28, 250.00, 85.00);
INSERT INTO `BicycleRider` VALUES (60, 279, 'Rider D', 500.00, 180.00, '竞技', 22, 280.00, 90.00);
INSERT INTO `BicycleRider` VALUES (61, 280, 'Rider E', 500.00, 170.00, '休闲', 30, 200.00, 80.00);
INSERT INTO `BicycleRider` VALUES (62, 286, 'Rider G', 85.00, 185.00, '越野', 26, 250.00, 92.00);
INSERT INTO `BicycleRider` VALUES (63, 287, 'Rider G', 85.00, 185.00, '越野', 26, 360.00, 92.00);
INSERT INTO `BicycleRider` VALUES (77, 77, '李明', 75.00, 170.00, '通勤', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (78, 78, '王强', 80.00, 175.00, '健身', 35, 280.00, 95.00);
INSERT INTO `BicycleRider` VALUES (79, 79, 'Alex', 70.00, 180.00, '竞速', 28, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (80, 80, 'Tom', 65.00, 178.00, '竞技', 25, 320.00, 105.00);
INSERT INTO `BicycleRider` VALUES (81, 81, 'Jerry', 65.00, 178.00, '休闲', 25, 310.00, 100.00);
INSERT INTO `BicycleRider` VALUES (82, 121, 'Mike', 500.00, 180.00, '极限骑行', 35, 300.00, 70.00);
INSERT INTO `BicycleRider` VALUES (83, 122, 'Jack', 500.00, 175.00, '极限越野', 38, 310.00, 75.00);
INSERT INTO `BicycleRider` VALUES (84, 123, 'Alex', 500.00, 170.00, '竞速', 28, 320.00, 100.00);
INSERT INTO `BicycleRider` VALUES (85, 124, 'Tom', 500.00, 165.00, '通勤', 40, 250.00, 80.00);
INSERT INTO `BicycleRider` VALUES (86, 125, 'Jerry', 500.00, 160.00, '休闲', 50, 200.00, 60.00);
INSERT INTO `BicycleRider` VALUES (88, 131, 'Mike', 500.00, 180.00, '极限骑行', 35, 300.00, 70.00);
INSERT INTO `BicycleRider` VALUES (89, 132, 'Jack', 500.00, 175.00, '极限越野', 38, 310.00, 75.00);
INSERT INTO `BicycleRider` VALUES (90, 133, 'Alex', 500.00, 170.00, '竞速', 28, 320.00, 100.00);
INSERT INTO `BicycleRider` VALUES (91, 134, 'Tom', 500.00, 165.00, '通勤', 40, 250.00, 80.00);
INSERT INTO `BicycleRider` VALUES (92, 135, 'Jerry', 500.00, 160.00, '休闲', 50, 200.00, 60.00);
INSERT INTO `BicycleRider` VALUES (93, 136, '李明', 75.00, 170.00, '通勤', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (94, 137, '王强', 80.00, 175.00, '健身', 35, 280.00, 95.00);
INSERT INTO `BicycleRider` VALUES (95, 138, 'Jack', 85.00, 180.00, '极限骑行', 38, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (96, 139, 'Alex', 70.00, 180.00, '越野', 28, 320.00, 100.00);
INSERT INTO `BicycleRider` VALUES (97, 140, 'Tom', 65.00, 178.00, '竞技', 25, 310.00, 105.00);
INSERT INTO `BicycleRider` VALUES (98, 157, '张三', 70.00, 175.00, '休闲', 30, 120.00, 70.00);
INSERT INTO `BicycleRider` VALUES (99, 158, '李四', 70.00, 175.00, '越野', 30, 200.00, 80.00);
INSERT INTO `BicycleRider` VALUES (100, 159, '王五', 70.00, 175.00, '竞技', 30, 220.00, 90.00);
INSERT INTO `BicycleRider` VALUES (101, 160, '赵六', 70.00, 175.00, '休闲', 30, 130.00, 75.00);
INSERT INTO `BicycleRider` VALUES (102, 161, '孙七', 70.00, 175.00, '越野', 30, 210.00, 85.00);
INSERT INTO `BicycleRider` VALUES (103, 162, '周八', 70.00, 175.00, '竞技', 30, 230.00, 95.00);
INSERT INTO `BicycleRider` VALUES (104, 11, '张三', 75.00, 180.00, '休闲', 35, 200.00, 90.00);
INSERT INTO `BicycleRider` VALUES (105, 12, '李四', 75.00, 180.00, '竞技', 35, 250.00, 100.00);
INSERT INTO `BicycleRider` VALUES (106, 13, '王五', 75.00, 180.00, '越野', 35, 300.00, 110.00);
INSERT INTO `BicycleRider` VALUES (107, 14, '赵六', 75.00, 180.00, '休闲', 35, 210.00, 95.00);
INSERT INTO `BicycleRider` VALUES (108, 15, '周七', 75.00, 180.00, '竞技', 35, 260.00, 105.00);
INSERT INTO `BicycleRider` VALUES (109, 16, '孙八', 75.00, 180.00, '越野', 35, 310.00, 115.00);
INSERT INTO `BicycleRider` VALUES (110, 105, '张伟', 80.00, 180.00, '极限骑行', 40, 1500.00, 90.00);
INSERT INTO `BicycleRider` VALUES (111, 175, '张三', 70.00, 175.00, '休闲', 30, 200.00, 90.00);
INSERT INTO `BicycleRider` VALUES (112, 176, '李四', 70.00, 175.00, '竞技', 30, 250.00, 100.00);
INSERT INTO `BicycleRider` VALUES (113, 177, '王五', 70.00, 175.00, '越野', 30, 300.00, 110.00);
INSERT INTO `BicycleRider` VALUES (114, 178, '赵六', 70.00, 175.00, '休闲', 30, 210.00, 95.00);
INSERT INTO `BicycleRider` VALUES (115, 179, '周七', 70.00, 175.00, '竞技', 30, 260.00, 105.00);
INSERT INTO `BicycleRider` VALUES (116, 180, '孙八', 70.00, 175.00, '越野', 30, 310.00, 115.00);
INSERT INTO `BicycleRider` VALUES (117, 189, '张三', 75.00, 180.00, '休闲', 35, 200.00, 90.00);
INSERT INTO `BicycleRider` VALUES (118, 190, '李四', 75.00, 180.00, '竞技', 35, 250.00, 100.00);
INSERT INTO `BicycleRider` VALUES (119, 191, '王五', 75.00, 180.00, '越野', 35, 300.00, 110.00);
INSERT INTO `BicycleRider` VALUES (120, 192, '赵六', 75.00, 180.00, '休闲', 35, 210.00, 95.00);
INSERT INTO `BicycleRider` VALUES (121, 193, '周七', 75.00, 180.00, '竞技', 35, 260.00, 105.00);
INSERT INTO `BicycleRider` VALUES (122, 194, '孙八', 75.00, 180.00, '越野', 35, 310.00, 115.00);
INSERT INTO `BicycleRider` VALUES (123, 56, '张伟', 80.00, 180.00, '极限骑行', 40, 1500.00, 90.00);
INSERT INTO `BicycleRider` VALUES (124, 214, '张伟', 70.00, 175.00, '通勤', 35, 250.00, 75.00);
INSERT INTO `BicycleRider` VALUES (125, 235, '张伟', 70.00, 175.00, '通勤', 35, 200.00, 75.00);
INSERT INTO `BicycleRider` VALUES (126, 236, '李强', 75.00, 180.00, '竞技', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (127, 237, '王刚', 80.00, 185.00, '越野', 40, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (128, 243, '张伟', 70.00, 175.00, '通勤', 35, 200.00, 75.00);
INSERT INTO `BicycleRider` VALUES (129, 244, '李强', 75.00, 180.00, '竞技', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (130, 245, '王刚', 80.00, 185.00, '越野', 40, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (131, 255, '张伟', 70.00, 175.00, '通勤', 35, 200.00, 75.00);
INSERT INTO `BicycleRider` VALUES (132, 256, '李强', 75.00, 180.00, '竞技', 30, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (133, 257, '王刚', 80.00, 185.00, '越野', 40, 300.00, 100.00);
INSERT INTO `BicycleRider` VALUES (134, 264, '李强', 90.00, 180.00, '竞技', 30, 300.00, 90.00);
INSERT INTO `BicycleRider` VALUES (135, 265, '王刚', 100.00, 185.00, '越野', 40, 350.00, 100.00);
INSERT INTO `BicycleRider` VALUES (136, 266, '张伟', 80.00, 175.00, '通勤', 35, 250.00, 75.00);
INSERT INTO `BicycleRider` VALUES (137, 267, 'Rider A', 500.00, 170.00, '休闲', 30, 200.00, 80.00);
INSERT INTO `BicycleRider` VALUES (138, 268, 'Rider B', 500.00, 180.00, '竞技', 25, 300.00, 90.00);
INSERT INTO `BicycleRider` VALUES (139, 269, 'Rider C', 500.00, 175.00, '越野', 28, 250.00, 85.00);
INSERT INTO `BicycleRider` VALUES (140, 270, 'Rider D', 500.00, 180.00, '竞技', 22, 280.00, 90.00);
INSERT INTO `BicycleRider` VALUES (141, 17, 'Rider A', 70.00, 170.00, '休闲', 30, 200.00, 80.00);
INSERT INTO `BicycleRider` VALUES (142, 18, 'Rider B', 75.00, 180.00, '竞技', 25, 250.00, 90.00);
INSERT INTO `BicycleRider` VALUES (143, 19, 'Rider C', 80.00, 175.00, '越野', 28, 220.00, 85.00);
INSERT INTO `BicycleRider` VALUES (144, 20, 'Rider A', 70.00, 170.00, '休闲', 30, 1000.00, 80.00);
INSERT INTO `BicycleRider` VALUES (145, 21, 'Rider B', 75.00, 180.00, '竞技', 25, 2000.00, 90.00);
INSERT INTO `BicycleRider` VALUES (146, 23, 'Rider C', 80.00, 175.00, '越野', 28, 3000.00, 85.00);
INSERT INTO `BicycleRider` VALUES (147, 24, 'Rider D', 85.00, 180.00, '竞技', 22, 4000.00, 90.00);
INSERT INTO `BicycleRider` VALUES (148, 288, 'Extreme Rider', 500.00, 190.00, '极限骑行', 30, 300.00, 90.00);
COMMIT;

-- ----------------------------
-- Table structure for BicycleThermodynamics
-- ----------------------------
DROP TABLE IF EXISTS `BicycleThermodynamics`;
CREATE TABLE `BicycleThermodynamics` (
  `ThermodynamicsID` int NOT NULL AUTO_INCREMENT COMMENT '热力学数据唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `MotorEfficiency` decimal(10,2) NOT NULL COMMENT '电机效率 (%)',
  `BatteryCapacity` decimal(10,2) NOT NULL COMMENT '电池容量 (瓦时)',
  `HeatDissipationRate` decimal(10,2) NOT NULL COMMENT '散热率 (瓦)',
  `AmbientTemperature` decimal(10,2) NOT NULL COMMENT '环境温度 (°C)',
  `MotorTemperature` decimal(10,2) NOT NULL COMMENT '电机温度 (°C)',
  `BatteryTemperature` decimal(10,2) NOT NULL COMMENT '电池温度 (°C)',
  PRIMARY KEY (`ThermodynamicsID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicycleThermodynamics_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车热力学数据表';

-- ----------------------------
-- Records of BicycleThermodynamics
-- ----------------------------
BEGIN;
INSERT INTO `BicycleThermodynamics` VALUES (1, 6, 90.00, 500.00, 100.00, 25.00, 60.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (2, 9, 85.00, 450.00, 95.00, 30.00, 65.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (3, 1, 0.00, 0.00, 0.00, 20.00, 0.00, 0.00);
INSERT INTO `BicycleThermodynamics` VALUES (4, 2, 0.00, 0.00, 0.00, 22.00, 0.00, 0.00);
INSERT INTO `BicycleThermodynamics` VALUES (5, 3, 0.00, 0.00, 0.00, 21.00, 0.00, 0.00);
INSERT INTO `BicycleThermodynamics` VALUES (6, 4, 0.00, 0.00, 0.00, 23.00, 0.00, 0.00);
INSERT INTO `BicycleThermodynamics` VALUES (7, 5, 0.00, 0.00, 0.00, 24.00, 0.00, 0.00);
INSERT INTO `BicycleThermodynamics` VALUES (8, 7, 0.00, 0.00, 0.00, 26.00, 0.00, 0.00);
INSERT INTO `BicycleThermodynamics` VALUES (9, 8, 0.00, 0.00, 0.00, 25.00, 0.00, 0.00);
INSERT INTO `BicycleThermodynamics` VALUES (10, 10, 0.00, 0.00, 0.00, 27.00, 0.00, 0.00);
INSERT INTO `BicycleThermodynamics` VALUES (11, 136, 90.00, 600.00, 50.00, 25.00, 55.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (12, 137, 85.00, 700.00, 55.00, 26.00, 60.00, 50.00);
INSERT INTO `BicycleThermodynamics` VALUES (13, 138, 80.00, 800.00, 60.00, 25.00, 65.00, 55.00);
INSERT INTO `BicycleThermodynamics` VALUES (14, 139, 95.00, 500.00, 40.00, 25.00, 50.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (15, 140, 96.00, 550.00, 42.00, 26.00, 52.00, 47.00);
INSERT INTO `BicycleThermodynamics` VALUES (16, 141, 90.00, 400.00, 30.00, 25.00, 45.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (17, 142, 95.00, 450.00, 32.00, 26.00, 50.00, 42.00);
INSERT INTO `BicycleThermodynamics` VALUES (18, 143, 95.00, 300.00, 35.00, 25.00, 50.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (19, 144, 96.00, 320.00, 36.00, 26.00, 52.00, 47.00);
INSERT INTO `BicycleThermodynamics` VALUES (20, 145, 97.00, 310.00, 34.00, 25.00, 51.00, 46.00);
INSERT INTO `BicycleThermodynamics` VALUES (21, 146, 90.00, 600.00, 50.00, 25.00, 55.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (22, 147, 85.00, 700.00, 55.00, 26.00, 60.00, 50.00);
INSERT INTO `BicycleThermodynamics` VALUES (23, 148, 80.00, 800.00, 60.00, 25.00, 65.00, 55.00);
INSERT INTO `BicycleThermodynamics` VALUES (24, 149, 95.00, 500.00, 40.00, 25.00, 50.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (25, 150, 96.00, 550.00, 42.00, 26.00, 52.00, 47.00);
INSERT INTO `BicycleThermodynamics` VALUES (26, 151, 97.00, 500.00, 34.00, 25.00, 51.00, 46.00);
INSERT INTO `BicycleThermodynamics` VALUES (27, 152, 90.00, 600.00, 15.00, 50.00, 65.00, 55.00);
INSERT INTO `BicycleThermodynamics` VALUES (28, 153, 85.00, 800.00, 10.00, 50.00, 70.00, 60.00);
INSERT INTO `BicycleThermodynamics` VALUES (29, 154, 95.00, 500.00, 20.00, 50.00, 55.00, 52.00);
INSERT INTO `BicycleThermodynamics` VALUES (30, 155, 96.00, 550.00, 18.00, 50.00, 56.00, 53.00);
INSERT INTO `BicycleThermodynamics` VALUES (31, 156, 97.00, 500.00, 16.00, 50.00, 58.00, 54.00);
INSERT INTO `BicycleThermodynamics` VALUES (32, 11, 85.00, 500.00, 200.00, 10.00, 35.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (33, 12, 85.00, 500.00, 200.00, 15.00, 40.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (34, 13, 85.00, 500.00, 200.00, 20.00, 45.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (35, 14, 85.00, 500.00, 200.00, 25.00, 50.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (36, 15, 85.00, 500.00, 200.00, 30.00, 55.00, 50.00);
INSERT INTO `BicycleThermodynamics` VALUES (37, 16, 85.00, 500.00, 200.00, 35.00, 60.00, 55.00);
INSERT INTO `BicycleThermodynamics` VALUES (38, 17, 85.00, 500.00, 200.00, 40.00, 65.00, 60.00);
INSERT INTO `BicycleThermodynamics` VALUES (39, 18, 90.00, 1000.00, 500.00, 50.00, 100.00, 85.00);
INSERT INTO `BicycleThermodynamics` VALUES (40, 100, 88.00, 600.00, 250.00, 15.00, 40.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (41, 101, 88.00, 600.00, 250.00, 20.00, 45.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (42, 102, 88.00, 600.00, 250.00, 25.00, 50.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (43, 103, 88.00, 600.00, 250.00, 30.00, 55.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (44, 104, 88.00, 600.00, 250.00, 35.00, 60.00, 50.00);
INSERT INTO `BicycleThermodynamics` VALUES (45, 105, 98.00, 3000.00, 1500.00, 70.00, 200.00, 160.00);
INSERT INTO `BicycleThermodynamics` VALUES (46, 46, 88.00, 600.00, 250.00, 15.00, 40.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (47, 47, 88.00, 600.00, 250.00, 20.00, 45.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (48, 48, 88.00, 600.00, 250.00, 25.00, 50.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (49, 49, 88.00, 600.00, 250.00, 30.00, 55.00, 45.00);
INSERT INTO `BicycleThermodynamics` VALUES (50, 50, 88.00, 600.00, 250.00, 35.00, 60.00, 50.00);
INSERT INTO `BicycleThermodynamics` VALUES (51, 56, 98.00, 3000.00, 1500.00, 70.00, 200.00, 160.00);
INSERT INTO `BicycleThermodynamics` VALUES (52, 235, 90.00, 3000.00, 500.00, 25.00, 40.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (53, 236, 95.00, 3500.00, 600.00, 35.00, 50.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (54, 237, 88.00, 4000.00, 700.00, 45.00, 60.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (55, 243, 90.00, 3000.00, 500.00, 25.00, 40.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (56, 244, 95.00, 3500.00, 600.00, 35.00, 50.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (57, 245, 88.00, 4000.00, 700.00, 45.00, 60.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (58, 252, 90.00, 3000.00, 500.00, 25.00, 40.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (59, 253, 95.00, 3500.00, 600.00, 35.00, 50.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (60, 254, 88.00, 4000.00, 700.00, -50.00, 60.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (61, 255, 90.00, 3000.00, 500.00, -20.00, 40.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (62, 256, 95.00, 3500.00, 600.00, -10.00, 50.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (63, 257, 88.00, 4000.00, 700.00, 0.00, 60.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (64, 255, 90.00, 3000.00, 500.00, 10.00, 40.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (65, 256, 95.00, 3500.00, 600.00, 20.00, 50.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (66, 257, 88.00, 4000.00, 700.00, 30.00, 60.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (67, 255, 90.00, 3000.00, 500.00, 40.00, 40.00, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (68, 256, 95.00, 3500.00, 600.00, 50.00, 50.00, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (69, 257, 88.00, 4000.00, 700.00, 60.00, 60.00, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (70, 264, 90.00, 5000.00, 0.00, 60.00, 75.00, 65.00);
INSERT INTO `BicycleThermodynamics` VALUES (71, 265, 95.00, 5500.00, 0.00, 60.00, 80.00, 68.00);
INSERT INTO `BicycleThermodynamics` VALUES (72, 266, 85.00, 4800.00, 0.00, 60.00, 70.00, 62.00);
INSERT INTO `BicycleThermodynamics` VALUES (73, 281, 95.00, 500.00, 100.00, 25.00, 26.05, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (74, 282, 90.00, 500.00, 120.00, 30.00, 31.33, 35.00);
INSERT INTO `BicycleThermodynamics` VALUES (75, 283, 85.00, 400.00, 90.00, 25.00, 26.06, 30.00);
INSERT INTO `BicycleThermodynamics` VALUES (76, 284, 80.00, 300.00, 110.00, 35.00, 36.38, 40.00);
INSERT INTO `BicycleThermodynamics` VALUES (77, 285, 98.00, 600.00, 80.00, 20.00, 20.82, 25.00);
INSERT INTO `BicycleThermodynamics` VALUES (78, 20, 99.00, 5000.00, 2000.00, 80.00, 250.00, 60.00);
INSERT INTO `BicycleThermodynamics` VALUES (79, 21, 99.00, 5000.00, 2000.00, 80.00, 250.00, 60.00);
INSERT INTO `BicycleThermodynamics` VALUES (80, 23, 99.00, 5000.00, 2000.00, 80.00, 250.00, 60.00);
INSERT INTO `BicycleThermodynamics` VALUES (81, 24, 99.00, 5000.00, 2000.00, 80.00, 250.00, 60.00);
INSERT INTO `BicycleThermodynamics` VALUES (82, 289, 98.00, 600.00, 80.00, 20.00, 25.00, 30.00);
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
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data` (
  `device_id` int DEFAULT NULL,
  `energy_saved` decimal(10,2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

SET FOREIGN_KEY_CHECKS = 1;
