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

 Date: 27/01/2025 23:04:14
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

SET FOREIGN_KEY_CHECKS = 1;
