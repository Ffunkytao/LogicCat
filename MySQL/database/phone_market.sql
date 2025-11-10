/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : phone_market

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:28:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Customer
-- ----------------------------
DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT COMMENT '客户唯一标识',
  `First_Name` varchar(50) NOT NULL COMMENT '名字',
  `Last_Name` varchar(50) NOT NULL COMMENT '姓氏',
  `Gender` enum('Male','Female','Other') NOT NULL COMMENT '性别',
  `Date_Of_Birth` date NOT NULL COMMENT '出生日期',
  `Email` varchar(100) NOT NULL COMMENT '电子邮件',
  `Phone_Number` varchar(20) NOT NULL COMMENT '联系电话',
  `Address` varchar(255) NOT NULL COMMENT '地址',
  `City` varchar(100) NOT NULL COMMENT '城市',
  `Province` varchar(100) NOT NULL COMMENT '省份',
  `Country` varchar(100) NOT NULL COMMENT '国家',
  `Postal_Code` varchar(20) NOT NULL COMMENT '邮政编码',
  `Membership_Level` enum('普通','白银','黄金','钻石') NOT NULL COMMENT '会员等级',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Customer
-- ----------------------------
BEGIN;
INSERT INTO `Customer` VALUES (1, '张', '伟', 'Male', '1990-05-15', 'zhangwei@example.com', '13800138000', '北京市朝阳区', '北京', '北京', '中国', '100000', '黄金', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `Customer` VALUES (2, '李', '娜', 'Female', '1985-08-20', 'lina@example.com', '13900139000', '上海市浦东新区', '上海', '上海', '中国', '200000', '钻石', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `Customer` VALUES (3, '王', '强', 'Male', '1992-03-10', 'wangqiang@example.com', '13700137000', '深圳市南山区', '深圳', '广东', '中国', '518000', '白银', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `Customer` VALUES (4, '赵', '敏', 'Female', '1988-11-25', 'zhaomin@example.com', '13600136000', '成都市武侯区', '成都', '四川', '中国', '610000', '普通', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `Customer` VALUES (5, '刘', '洋', 'Male', '1995-07-05', 'liuyang@example.com', '13500135000', '西安市雁塔区', '西安', '陕西', '中国', '710000', '黄金', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
COMMIT;

-- ----------------------------
-- Table structure for Order_Detail
-- ----------------------------
DROP TABLE IF EXISTS `Order_Detail`;
CREATE TABLE `Order_Detail` (
  `Order_Detail_ID` int NOT NULL AUTO_INCREMENT COMMENT '订单详情唯一标识',
  `Order_ID` int NOT NULL COMMENT '订单ID（外键）',
  `Phone_ID` int NOT NULL COMMENT '手机ID（外键）',
  `Quantity` int NOT NULL COMMENT '购买数量',
  `Unit_Price` decimal(10,2) NOT NULL COMMENT '单价',
  `Total_Price` decimal(10,2) NOT NULL COMMENT '总价',
  `Discount` decimal(10,2) DEFAULT '0.00' COMMENT '折扣金额',
  `Tax` decimal(10,2) DEFAULT '0.00' COMMENT '税费',
  `Warranty_Period` int DEFAULT NULL COMMENT '保修期（月）',
  `Notes` text COMMENT '备注',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Order_Detail_ID`),
  KEY `Order_ID` (`Order_ID`),
  KEY `Phone_ID` (`Phone_ID`),
  CONSTRAINT `Order_Detail_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `Orders` (`Order_ID`),
  CONSTRAINT `Order_Detail_ibfk_2` FOREIGN KEY (`Phone_ID`) REFERENCES `Phone` (`Phone_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Order_Detail
-- ----------------------------
BEGIN;
INSERT INTO `Order_Detail` VALUES (1, 1, 1, 1, 5999.00, 5999.00, 0.00, 0.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `Order_Detail` VALUES (2, 2, 2, 1, 4999.00, 4999.00, 100.00, 200.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `Order_Detail` VALUES (3, 3, 3, 1, 3699.00, 3699.00, 0.00, 0.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `Order_Detail` VALUES (4, 4, 4, 1, 4999.00, 4999.00, 50.00, 100.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `Order_Detail` VALUES (5, 5, 5, 1, 5299.00, 5299.00, 0.00, 0.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
COMMIT;

-- ----------------------------
-- Table structure for Orders
-- ----------------------------
DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT COMMENT '订单唯一标识',
  `Customer_ID` int NOT NULL COMMENT '客户ID（外键）',
  `Order_Date` datetime NOT NULL COMMENT '订单日期',
  `Total_Amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `Payment_Method` enum('支付宝','微信支付','信用卡','银行卡') NOT NULL COMMENT '支付方式',
  `Payment_Status` enum('Paid','Pending','Failed') NOT NULL COMMENT '支付状态',
  `Shipping_Address` varchar(255) NOT NULL COMMENT '配送地址',
  `Shipping_Method` enum('快递','自提','物流') NOT NULL COMMENT '配送方式',
  `Order_Status` enum('Processing','Shipped','Delivered','Cancelled') NOT NULL COMMENT '订单状态',
  `Discount` decimal(10,2) DEFAULT '0.00' COMMENT '折扣金额',
  `Tax` decimal(10,2) DEFAULT '0.00' COMMENT '税费',
  `Notes` text COMMENT '备注',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Order_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Orders
-- ----------------------------
BEGIN;
INSERT INTO `Orders` VALUES (1, 1, '2023-10-01 10:00:00', 5999.00, '支付宝', 'Paid', '北京市朝阳区', '快递', 'Delivered', 0.00, 0.00, '无', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `Orders` VALUES (2, 2, '2023-10-02 11:00:00', 4999.00, '微信支付', 'Paid', '上海市浦东新区', '快递', 'Shipped', 100.00, 200.00, '尽快发货', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `Orders` VALUES (3, 3, '2023-10-03 12:00:00', 3699.00, '信用卡', 'Pending', '深圳市南山区', '自提', 'Processing', 0.00, 0.00, '自提', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `Orders` VALUES (4, 4, '2023-10-04 13:00:00', 4999.00, '支付宝', 'Paid', '成都市武侯区', '物流', 'Delivered', 50.00, 100.00, '无', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `Orders` VALUES (5, 5, '2023-10-05 14:00:00', 5299.00, '微信支付', 'Failed', '西安市雁塔区', '快递', 'Cancelled', 0.00, 0.00, '支付失败', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
COMMIT;

-- ----------------------------
-- Table structure for Phone
-- ----------------------------
DROP TABLE IF EXISTS `Phone`;
CREATE TABLE `Phone` (
  `Phone_ID` int NOT NULL AUTO_INCREMENT COMMENT '手机唯一标识',
  `Phone_Name` varchar(100) NOT NULL COMMENT '手机名称',
  `Brand` varchar(50) NOT NULL COMMENT '品牌',
  `Model` varchar(50) NOT NULL COMMENT '型号',
  `Release_Date` date NOT NULL COMMENT '发布日期',
  `Operating_System` varchar(50) NOT NULL COMMENT '操作系统',
  `Screen_Size` decimal(4,2) NOT NULL COMMENT '屏幕尺寸（英寸）',
  `Screen_Resolution` varchar(20) NOT NULL COMMENT '屏幕分辨率',
  `Storage_Capacity` int NOT NULL COMMENT '存储容量（GB）',
  `RAM_Capacity` int NOT NULL COMMENT '内存容量（GB）',
  `Battery_Capacity` int NOT NULL COMMENT '电池容量（mAh）',
  `Camera_Resolution` varchar(50) NOT NULL COMMENT '摄像头分辨率',
  `Processor` varchar(100) NOT NULL COMMENT '处理器',
  `Color` varchar(50) NOT NULL COMMENT '颜色',
  `Weight` decimal(5,2) NOT NULL COMMENT '重量（克）',
  `Price` decimal(10,2) NOT NULL COMMENT '价格',
  `Stock_Quantity` int NOT NULL COMMENT '库存数量',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Phone_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Phone
-- ----------------------------
BEGIN;
INSERT INTO `Phone` VALUES (1, 'iPhone 14', 'Apple', 'A2884', '2022-09-16', 'iOS 16', 6.10, '2532x1170', 128, 6, 3279, '12MP+12MP', 'A15 Bionic', '黑色', 172.00, 5999.00, 100, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `Phone` VALUES (2, 'Galaxy S22', 'Samsung', 'SM-S9010', '2022-02-25', 'Android 12', 6.10, '2340x1080', 256, 8, 3700, '50MP+12MP+10MP', 'Snapdragon 8 Gen 1', '白色', 167.00, 4999.00, 150, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `Phone` VALUES (3, 'Xiaomi 12', 'Xiaomi', '2201123C', '2021-12-28', 'Android 12', 6.28, '2400x1080', 128, 8, 4500, '50MP+13MP+5MP', 'Snapdragon 8 Gen 1', '蓝色', 180.00, 3699.00, 200, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `Phone` VALUES (4, 'Mate 50', 'Huawei', 'NOH-AN00', '2022-09-21', 'HarmonyOS 3', 6.70, '2700x1224', 256, 8, 4460, '50MP+13MP+12MP', 'Snapdragon 8+ Gen 1', '银色', 202.00, 4999.00, 120, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `Phone` VALUES (5, 'OnePlus 10 Pro', 'OnePlus', 'NE2210', '2022-01-11', 'Android 12', 6.70, '3216x1440', 256, 12, 5000, '48MP+50MP+8MP', 'Snapdragon 8 Gen 1', '绿色', 200.00, 5299.00, 80, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
