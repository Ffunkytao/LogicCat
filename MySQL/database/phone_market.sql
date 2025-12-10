/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : phone_market

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:26:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for conventionaltrains
-- ----------------------------
DROP TABLE IF EXISTS `conventionaltrains`;
CREATE TABLE `conventionaltrains`  (
  `Train_ID` int(0) NOT NULL AUTO_INCREMENT,
  `Train_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Passenger_Capacity_Open` int(0) NOT NULL,
  `Design_Speed` int(0) NOT NULL,
  `Weight_Tons` decimal(10, 2) NULL DEFAULT NULL,
  `Passenger_Capacity_Closed` int(0) NOT NULL,
  PRIMARY KEY (`Train_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conventionaltrains
-- ----------------------------
INSERT INTO `conventionaltrains` VALUES (1, 'Regional Express 100', 'CRRC', 100, 120, 400.00, 0);
INSERT INTO `conventionaltrains` VALUES (2, 'Regional Express 200', 'CRRC', 200, 120, 600.00, 0);
INSERT INTO `conventionaltrains` VALUES (3, 'Capacity Test Model', 'CRRC', 100, 120, 500.00, 150);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `Customer_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '客户唯一标识',
  `First_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名字',
  `Last_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓氏',
  `Gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `Date_Of_Birth` date NOT NULL COMMENT '出生日期',
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电子邮件',
  `Phone_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `City` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市',
  `Province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '省份',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '国家',
  `Postal_Code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮政编码',
  `Membership_Level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Customer_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '张', '伟', 'Male', '1990-05-15', 'zhangwei@example.com', '13800138000', '北京市朝阳区', '北京', '北京', '中国', '100000', '黄金', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `customer` VALUES (2, '李', '娜', 'Female', '1985-08-20', 'lina@example.com', '13900139000', '上海市浦东新区', '上海', '上海', '中国', '200000', '钻石', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `customer` VALUES (3, '王', '强', 'Male', '1992-03-10', 'wangqiang@example.com', '13700137000', '深圳市南山区', '深圳', '广东', '中国', '518000', '白银', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `customer` VALUES (4, '赵', '敏', 'Female', '1988-11-25', 'zhaomin@example.com', '13600136000', '成都市武侯区', '成都', '四川', '中国', '610000', '普通', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `customer` VALUES (5, '刘', '洋', 'Male', '1995-07-05', 'liuyang@example.com', '13500135000', '西安市雁塔区', '西安', '陕西', '中国', '710000', '黄金', '2025-01-23 22:28:07', '2025-01-23 22:28:07');
INSERT INTO `customer` VALUES (6, 'Alice', 'Johnson', 'Female', '1990-05-15', 'alice.johnson@example.com', '+1-555-1234', '123 Main St', 'New York', 'New York', 'USA', '10001', '黄金', '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `customer` VALUES (7, 'Bob', 'Smith', 'Male', '1985-08-22', 'bob.smith@example.com', '+1-555-5678', '456 Oak Ave', 'Los Angeles', 'California', 'USA', '90210', '钻石', '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `customer` VALUES (8, 'Charlie', 'Brown', 'Male', '1995-12-03', 'charlie.brown@example.com', '+1-555-9012', '789 Pine Rd', 'Chicago', 'Illinois', 'USA', '60601', '白银', '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `customer` VALUES (16, 'Margaret', 'Wilson', 'Female', '1955-03-12', 'margaret.wilson@example.com', '+1-555-2345', '101 Elm St', 'Boston', 'Massachusetts', 'USA', '02101', '钻石', '2025-11-26 21:27:38', '2025-11-26 21:27:38');
INSERT INTO `customer` VALUES (17, 'Robert', 'Taylor', 'Male', '1958-07-22', 'robert.taylor@example.com', '+1-555-3456', '202 Maple Ave', 'Seattle', 'Washington', 'USA', '98101', '钻石', '2025-11-26 21:27:38', '2025-11-26 21:27:38');
INSERT INTO `customer` VALUES (18, 'Helen', 'Brown', 'Female', '1963-11-30', 'helen.brown@example.com', '+1-555-4567', '303 Cedar Rd', 'Portland', 'Oregon', 'USA', '97201', '钻石', '2025-11-26 21:27:38', '2025-11-26 21:27:38');
INSERT INTO `customer` VALUES (19, 'Margaret', 'Wilson', 'Female', '1955-03-12', 'margaret.wilson@example.com', '+1-555-2345', '101 Elm St', 'Boston', 'Massachusetts', 'USA', '02101', '钻石', '2025-11-26 21:29:24', '2025-11-26 21:29:24');
INSERT INTO `customer` VALUES (20, 'Robert', 'Taylor', 'Male', '1958-07-22', 'robert.taylor@example.com', '+1-555-3456', '202 Maple Ave', 'Seattle', 'Washington', 'USA', '98101', '钻石', '2025-11-26 21:29:24', '2025-11-26 21:29:24');
INSERT INTO `customer` VALUES (21, 'Helen', 'Brown', 'Female', '1963-11-30', 'helen.brown@example.com', '+1-555-4567', '303 Cedar Rd', 'Portland', 'Oregon', 'USA', '97201', '钻石', '2025-11-26 21:29:24', '2025-11-26 21:29:24');
INSERT INTO `customer` VALUES (22, 'Margaret', 'Wilson', 'Female', '1955-03-12', 'margaret.wilson@example.com', '+1-555-2345', '101 Elm St', 'Boston', 'Massachusetts', 'USA', '02101', 'Diamond', '2025-11-26 21:31:08', '2025-11-26 21:31:08');
INSERT INTO `customer` VALUES (23, 'Robert', 'Taylor', 'Male', '1958-07-22', 'robert.taylor@example.com', '+1-555-3456', '202 Maple Ave', 'Seattle', 'Washington', 'USA', '98101', 'Diamond', '2025-11-26 21:31:08', '2025-11-26 21:31:08');
INSERT INTO `customer` VALUES (24, 'Helen', 'Brown', 'Female', '1963-11-30', 'helen.brown@example.com', '+1-555-4567', '303 Cedar Rd', 'Portland', 'Oregon', 'USA', '97201', 'Diamond', '2025-11-26 21:31:08', '2025-11-26 21:31:08');
INSERT INTO `customer` VALUES (25, 'Emily', 'Davis', 'Female', '1990-04-18', 'emily.davis@example.com', '+1-555-6789', '404 Ocean Blvd', 'San Diego', 'California', 'USA', '92101', 'Gold', '2025-11-26 21:32:49', '2025-11-26 21:32:49');
INSERT INTO `customer` VALUES (26, 'James', 'Miller', 'Male', '1988-09-05', 'james.miller@example.com', '+1-555-7890', '505 Harbor Dr', 'Seattle', 'Washington', 'USA', '98101', 'Diamond', '2025-11-26 21:32:49', '2025-11-26 21:32:49');
INSERT INTO `customer` VALUES (27, 'Sophia', 'Garcia', 'Female', '1992-12-20', 'sophia.garcia@example.com', '+1-555-8901', '606 Bay St', 'Miami', 'Florida', 'USA', '33101', 'Gold', '2025-11-26 21:32:49', '2025-11-26 21:32:49');
INSERT INTO `customer` VALUES (28, 'Alice', 'Lopez', 'Female', '1990-02-14', 'alice.lopez@example.com', '+1-555-1111', '101 Alpha St', 'Austin', 'Texas', 'USA', '73301', '普通', '2025-11-26 21:35:13', '2025-11-26 21:35:13');
INSERT INTO `customer` VALUES (29, 'Andrew', 'Martinez', 'Male', '1985-07-23', 'andrew.martinez@example.com', '+1-555-2222', '202 Beta Ave', 'Boston', 'Massachusetts', 'USA', '02101', '白银', '2025-11-26 21:35:13', '2025-11-26 21:35:13');
INSERT INTO `customer` VALUES (30, 'Amanda', 'Gonzalez', 'Female', '1993-11-05', 'amanda.gonzalez@example.com', '+1-555-3333', '303 Gamma Rd', 'Chicago', 'Illinois', 'USA', '60601', '黄金', '2025-11-26 21:35:13', '2025-11-26 21:35:13');
INSERT INTO `customer` VALUES (31, 'Aaron', 'Rodriguez', 'Male', '1988-04-17', 'aaron.rodriguez@example.com', '+1-555-4444', '404 Delta Ln', 'Denver', 'Colorado', 'USA', '80201', '钻石', '2025-11-26 21:35:13', '2025-11-26 21:35:13');
INSERT INTO `customer` VALUES (32, 'Ava', 'Hernandez', 'Female', '1995-09-30', 'ava.hernandez@example.com', '+1-555-5555', '505 Epsilon Blvd', 'Miami', 'Florida', 'USA', '33101', '黄金', '2025-11-26 21:35:13', '2025-11-26 21:35:13');
INSERT INTO `customer` VALUES (33, 'Wei', 'Zhang', 'Male', '1992-05-14', 'zhangwei@gmail.com', '13800138001', '1101 Haidian St', 'Beijing', 'Beijing', 'China', '100080', '黄金', '2025-11-26 21:36:07', '2025-11-26 21:36:07');
INSERT INTO `customer` VALUES (34, 'Min', 'Li', 'Female', '1988-09-23', 'limin@gmail.com', '13800138002', '2202 Pudong Ave', 'Shanghai', 'Shanghai', 'China', '200120', '钻石', '2025-11-26 21:36:07', '2025-11-26 21:36:07');
INSERT INTO `customer` VALUES (35, 'Tao', 'Chen', 'Male', '1995-12-07', 'chentao@gmail.com', '13800138003', '3303 Nanshan Rd', 'Shenzhen', 'Guangdong', 'China', '518050', '白银', '2025-11-26 21:36:07', '2025-11-26 21:36:07');
INSERT INTO `customer` VALUES (36, 'Fiona', 'Chen', 'Female', '1995-10-10', 'fiona.chen@example.com', '+1-555-9999', '888 Test Ave', 'San Jose', 'California', 'USA', '95101', 'Gold', '2025-11-26 21:50:02', '2025-11-26 21:50:02');
INSERT INTO `customer` VALUES (37, 'Fiona', 'Chen', 'Female', '1995-10-10', 'fiona.chen@example.com', '+1-555-9999', '888 Test Ave', 'San Jose', 'California', 'USA', '95101', 'Gold', '2025-11-26 21:51:28', '2025-11-26 21:51:28');
INSERT INTO `customer` VALUES (38, 'Fiona', 'Chen', 'Female', '1995-10-10', 'fiona.chen@example.com', '+1-555-9999', '888 Test Ave', 'San Jose', 'California', 'USA', '95101', 'Gold', '2025-11-26 21:52:24', '2025-11-26 21:52:24');
INSERT INTO `customer` VALUES (39, 'Fiona', 'Chen', 'Female', '1995-10-10', 'fiona.chen@example.com', '+1-555-9999', '888 Test Ave', 'San Jose', 'California', 'USA', '95101', 'Gold', '2025-11-26 21:55:29', '2025-11-26 21:55:29');
INSERT INTO `customer` VALUES (40, 'Fiona', 'Chen', 'Female', '1995-10-10', 'fiona.chen@example.com', '+1-555-9999', '888 Test Ave', 'San Jose', 'California', 'USA', '95101', 'Gold', '2025-11-26 21:56:50', '2025-11-26 21:56:50');
INSERT INTO `customer` VALUES (41, 'Fiona', 'Chen', 'Female', '1995-10-10', 'fiona.chen@example.com', '+1-555-9999', '888 Test Ave', 'San Jose', 'California', 'USA', '95101', 'Gold', '2025-11-26 21:57:41', '2025-11-26 21:57:41');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `Order_Detail_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单详情唯一标识',
  `Order_ID` int(0) NOT NULL COMMENT '订单ID（外键）',
  `Phone_ID` int(0) NOT NULL COMMENT '手机ID（外键）',
  `Quantity` int(0) NOT NULL COMMENT '购买数量',
  `Unit_Price` decimal(10, 2) NOT NULL COMMENT '单价',
  `Total_Price` decimal(10, 2) NOT NULL COMMENT '总价',
  `Discount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '折扣金额',
  `Tax` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '税费',
  `Warranty_Period` int(0) NULL DEFAULT NULL COMMENT '保修期（月）',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Order_Detail_ID`) USING BTREE,
  INDEX `Order_ID`(`Order_ID`) USING BTREE,
  INDEX `Phone_ID`(`Phone_ID`) USING BTREE,
  CONSTRAINT `Order_Detail_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Order_Detail_ibfk_2` FOREIGN KEY (`Phone_ID`) REFERENCES `phone` (`Phone_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 1, 1, 1, 5999.00, 5999.00, 0.00, 0.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `order_detail` VALUES (2, 2, 2, 1, 4999.00, 4999.00, 100.00, 200.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `order_detail` VALUES (3, 3, 3, 1, 3699.00, 3699.00, 0.00, 0.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `order_detail` VALUES (4, 4, 4, 1, 4999.00, 4999.00, 50.00, 100.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `order_detail` VALUES (5, 5, 5, 1, 5299.00, 5299.00, 0.00, 0.00, 12, '无', '2025-01-23 22:28:42', '2025-01-23 22:28:42');
INSERT INTO `order_detail` VALUES (6, 6, 1, 1, 5999.00, 5999.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `order_detail` VALUES (7, 7, 2, 1, 4999.00, 4999.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `order_detail` VALUES (8, 8, 3, 1, 3699.00, 3699.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `order_detail` VALUES (9, 9, 5, 1, 5299.00, 5299.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `order_detail` VALUES (10, 10, 4, 1, 4999.00, 4999.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `order_detail` VALUES (11, 11, 1, 1, 5999.00, 5999.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `order_detail` VALUES (17, 6, 22, 20, 2999.00, 59980.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:39:11', '2025-11-26 21:39:11');
INSERT INTO `order_detail` VALUES (18, 7, 21, 20, 3499.00, 69980.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:39:11', '2025-11-26 21:39:11');
INSERT INTO `order_detail` VALUES (20, 4, 5, 6, 799.00, 4794.00, 0.00, 0.00, NULL, NULL, '2025-11-26 21:41:28', '2025-11-26 21:41:28');
INSERT INTO `order_detail` VALUES (22, 1, 1, 1, 999.00, 999.00, 0.00, 0.00, 18, NULL, '2025-11-26 21:42:34', '2025-05-15 00:00:00');
INSERT INTO `order_detail` VALUES (23, 2, 2, 2, 499.00, 998.00, 0.00, 0.00, 24, NULL, '2025-11-26 21:42:34', '2024-10-20 00:00:00');
INSERT INTO `order_detail` VALUES (24, 3, 3, 3, 199.00, 597.00, 0.00, 0.00, 15, NULL, '2025-11-26 21:42:34', '2025-01-01 00:00:00');
INSERT INTO `order_detail` VALUES (26, 29, 34, 1, 300.00, 300.00, 0.00, 0.00, 24, NULL, '2025-11-26 21:52:24', '2025-11-26 21:52:24');
INSERT INTO `order_detail` VALUES (27, 29, 34, 1, 300.00, 300.00, 0.00, 0.00, 24, NULL, '2025-11-26 21:55:29', '2025-11-26 21:55:29');
INSERT INTO `order_detail` VALUES (28, 31, 37, 1, 300.00, 300.00, 0.00, 0.00, 24, NULL, '2025-11-26 21:56:40', '2025-11-26 21:56:40');
INSERT INTO `order_detail` VALUES (29, 29, 34, 1, 300.00, 300.00, 0.00, 0.00, 24, NULL, '2025-11-26 21:56:50', '2025-11-26 21:56:50');
INSERT INTO `order_detail` VALUES (30, 32, 38, 1, 300.00, 300.00, 0.00, 0.00, 24, NULL, '2025-11-26 21:56:50', '2025-11-26 21:56:50');
INSERT INTO `order_detail` VALUES (31, 29, 34, 1, 300.00, 300.00, 0.00, 0.00, 24, NULL, '2025-11-26 21:57:41', '2025-11-26 21:57:41');
INSERT INTO `order_detail` VALUES (32, 33, 39, 1, 300.00, 300.00, 0.00, 0.00, 24, NULL, '2025-11-26 21:57:41', '2025-11-26 21:57:41');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `Order_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单唯一标识',
  `Customer_ID` int(0) NOT NULL COMMENT '客户ID（外键）',
  `Order_Date` datetime(0) NOT NULL COMMENT '订单日期',
  `Total_Amount` decimal(10, 2) NOT NULL COMMENT '订单总金额',
  `Payment_Method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Payment_Status` enum('Paid','Pending','Failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '支付状态',
  `Shipping_Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配送地址',
  `Shipping_Method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Order_Status` enum('Processing','Shipped','Delivered','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单状态',
  `Discount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '折扣金额',
  `Tax` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '税费',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Order_ID`) USING BTREE,
  INDEX `Customer_ID`(`Customer_ID`) USING BTREE,
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 1, '2023-10-01 10:00:00', 5999.00, '支付宝', 'Paid', '北京市朝阳区', '快递', 'Delivered', 0.00, 0.00, '无', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `orders` VALUES (2, 2, '2023-10-02 11:00:00', 4999.00, '微信支付', 'Paid', '上海市浦东新区', '快递', 'Shipped', 100.00, 200.00, '尽快发货', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `orders` VALUES (3, 3, '2023-10-03 12:00:00', 3699.00, '信用卡', 'Pending', '深圳市南山区', '自提', 'Processing', 0.00, 0.00, '自提', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `orders` VALUES (4, 4, '2023-10-04 13:00:00', 4999.00, '支付宝', 'Paid', '成都市武侯区', '物流', 'Delivered', 50.00, 100.00, '无', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `orders` VALUES (5, 5, '2023-10-05 14:00:00', 5299.00, '微信支付', 'Failed', '西安市雁塔区', '快递', 'Cancelled', 0.00, 0.00, '支付失败', '2025-01-23 22:28:35', '2025-01-23 22:28:35');
INSERT INTO `orders` VALUES (6, 6, '2024-01-10 09:00:00', 5999.00, '信用卡', 'Paid', '123 Main St', '快递', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `orders` VALUES (7, 6, '2024-01-20 10:30:00', 4999.00, '支付宝', 'Paid', '123 Main St', '快递', 'Shipped', 0.00, 0.00, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `orders` VALUES (8, 7, '2024-02-01 14:15:00', 3699.00, '微信支付', 'Paid', '456 Oak Ave', '物流', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `orders` VALUES (9, 7, '2024-02-15 11:45:00', 5299.00, '支付宝', 'Paid', '456 Oak Ave', '快递', 'Processing', 0.00, 0.00, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `orders` VALUES (10, 8, '2024-01-05 16:20:00', 4999.00, '信用卡', 'Pending', '789 Pine Rd', '自提', 'Processing', 0.00, 0.00, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `orders` VALUES (11, 8, '2024-01-25 13:10:00', 5999.00, '信用卡', 'Paid', '789 Pine Rd', '快递', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `orders` VALUES (12, 1, '2025-03-01 10:00:00', 59980.00, '支付宝', 'Paid', '北京市朝阳区', '快递', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:36:50', '2025-11-26 21:36:50');
INSERT INTO `orders` VALUES (13, 2, '2025-03-05 14:30:00', 69980.00, '微信支付', 'Paid', '上海市浦东新区', '快递', 'Shipped', 0.00, 0.00, NULL, '2025-11-26 21:36:50', '2025-11-26 21:36:50');
INSERT INTO `orders` VALUES (14, 1, '2025-03-01 10:00:00', 59980.00, '支付宝', 'Paid', '北京市朝阳区', '快递', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:37:59', '2025-11-26 21:37:59');
INSERT INTO `orders` VALUES (15, 2, '2025-03-05 14:30:00', 69980.00, '微信支付', 'Paid', '上海市浦东新区', '快递', 'Shipped', 0.00, 0.00, NULL, '2025-11-26 21:37:59', '2025-11-26 21:37:59');
INSERT INTO `orders` VALUES (16, 1, '2025-03-01 10:00:00', 59980.00, '支付宝', 'Paid', '北京市朝阳区', '快递', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:39:11', '2025-11-26 21:39:11');
INSERT INTO `orders` VALUES (17, 2, '2025-03-05 14:30:00', 69980.00, '微信支付', 'Paid', '上海市浦东新区', '快递', 'Shipped', 0.00, 0.00, NULL, '2025-11-26 21:39:11', '2025-11-26 21:39:11');
INSERT INTO `orders` VALUES (18, 1, '2025-04-10 09:15:00', 4794.00, '支付宝', 'Paid', '北京市朝阳区', '快递', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:40:02', '2025-11-26 21:40:02');
INSERT INTO `orders` VALUES (19, 1, '2025-04-10 09:15:00', 4794.00, '支付宝', 'Paid', '北京市朝阳区', '快递', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:41:28', '2025-11-26 21:41:28');
INSERT INTO `orders` VALUES (20, 1, '2025-01-10 11:00:00', 17998.00, '支付宝', 'Paid', '北京市朝阳区', '快递', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:42:05', '2025-11-26 21:42:05');
INSERT INTO `orders` VALUES (21, 1, '2025-01-10 10:00:00', 1200.00, 'Credit Card', 'Paid', '101 Oak St, City A', 'Standard Shipping', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:43:51', '2025-11-26 21:43:51');
INSERT INTO `orders` VALUES (22, 2, '2025-05-20 14:30:00', 350.50, 'PayPal', 'Paid', '202 Pine Ave, City B', 'Express Shipping', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:43:51', '2025-11-26 21:43:51');
INSERT INTO `orders` VALUES (23, 3, '2025-11-01 09:00:00', 89.99, 'AliPay', 'Paid', '303 Maple Rd, City C', 'Standard Shipping', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:43:51', '2025-11-26 21:43:51');
INSERT INTO `orders` VALUES (24, 1, '2025-06-01 11:00:00', 1500.00, 'Credit Card', 'Paid', '404 Beach Blvd, LA', 'Standard Shipping', 'Delivered', 120.00, 45.00, NULL, '2025-11-26 21:45:22', '2025-11-26 21:45:22');
INSERT INTO `orders` VALUES (25, 2, '2025-07-15 15:30:00', 800.00, 'PayPal', 'Paid', '505 Mountain View, SF', 'Express Shipping', 'Shipped', 200.00, 20.00, NULL, '2025-11-26 21:45:22', '2025-11-26 21:45:22');
INSERT INTO `orders` VALUES (26, 3, '2025-09-20 19:00:00', 3000.00, 'Bank Transfer', 'Paid', '606 River Walk, Chicago', 'Standard Shipping', 'Processing', 350.00, 35.00, NULL, '2025-11-26 21:45:22', '2025-11-26 21:45:22');
INSERT INTO `orders` VALUES (29, 36, '2021-06-01 12:00:00', 300.00, 'Credit Card', 'Paid', '10 Elm St, NY', 'Standard Shipping', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:51:28', '2025-11-26 21:51:28');
INSERT INTO `orders` VALUES (30, 36, '2021-06-01 12:00:00', 300.00, 'Credit Card', 'Paid', '10 Elm St, NY', 'Standard Shipping', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:52:24', '2025-11-26 21:52:24');
INSERT INTO `orders` VALUES (31, 36, '2021-06-01 12:00:00', 300.00, 'Credit Card', 'Paid', '10 Elm St, NY', 'Standard Shipping', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:55:29', '2025-11-26 21:55:29');
INSERT INTO `orders` VALUES (32, 36, '2021-06-01 12:00:00', 300.00, 'Credit Card', 'Paid', '10 Elm St, NY', 'Standard Shipping', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:56:50', '2025-11-26 21:56:50');
INSERT INTO `orders` VALUES (33, 36, '2021-06-01 00:00:00', 300.00, 'Credit Card', 'Paid', '10 Elm St, NY', 'Standard Shipping', 'Delivered', 0.00, 0.00, NULL, '2025-11-26 21:57:41', '2025-11-26 21:57:41');
INSERT INTO `orders` VALUES (34, 1, '2023-10-01 10:00:00', 1500.00, 'WeChat Pay', 'Paid', '北京市朝阳区', 'express delivery', 'Shipped', 0.00, 0.00, NULL, '2023-10-01 10:00:00', '2025-11-26 22:13:57');
INSERT INTO `orders` VALUES (35, 1, '2023-10-01 00:00:00', 1500.00, 'WeChat Pay', 'Paid', '北京市朝阳区', 'express delivery', 'Shipped', 0.00, 0.00, NULL, '2023-10-01 00:00:00', '2025-11-26 22:14:28');
INSERT INTO `orders` VALUES (36, 1, '2023-10-01 00:00:00', 1500.00, 'WeChat Pay', 'Paid', 'BeiJing', 'express delivery', 'Shipped', 0.00, 0.00, NULL, '2023-10-01 00:00:00', '2025-11-26 22:14:50');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone`  (
  `Phone_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '手机唯一标识',
  `Phone_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机名称',
  `Brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '品牌',
  `Model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '型号',
  `Release_Date` date NOT NULL COMMENT '发布日期',
  `Operating_System` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作系统',
  `Screen_Size` decimal(4, 2) NOT NULL COMMENT '屏幕尺寸（英寸）',
  `Screen_Resolution` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '屏幕分辨率',
  `Storage_Capacity` int(0) NOT NULL COMMENT '存储容量（GB）',
  `RAM_Capacity` int(0) NOT NULL COMMENT '内存容量（GB）',
  `Battery_Capacity` int(0) NOT NULL COMMENT '电池容量（mAh）',
  `Camera_Resolution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '摄像头分辨率',
  `Processor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '处理器',
  `Color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '颜色',
  `Weight` decimal(5, 2) NOT NULL COMMENT '重量（克）',
  `Price` decimal(10, 2) NOT NULL COMMENT '价格',
  `Stock_Quantity` int(0) NOT NULL COMMENT '库存数量',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Phone_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES (1, 'iPhone 14', 'Apple', 'A2884', '2022-09-16', 'iOS 16', 6.10, '2532x1170', 128, 6, 3279, '12MP+12MP', 'A15 Bionic', '黑色', 172.00, 5999.00, 100, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `phone` VALUES (2, 'Galaxy S22', 'Samsung', 'SM-S9010', '2022-02-25', 'Android 12', 6.10, '2340x1080', 256, 8, 3700, '50MP+12MP+10MP', 'Snapdragon 8 Gen 1', '白色', 167.00, 4999.00, 150, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `phone` VALUES (3, 'Xiaomi 12', 'Xiaomi', '2201123C', '2021-12-28', 'Android 12', 6.28, '2400x1080', 128, 8, 4500, '50MP+13MP+5MP', 'Snapdragon 8 Gen 1', '蓝色', 180.00, 3699.00, 200, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `phone` VALUES (4, 'Mate 50', 'Huawei', 'NOH-AN00', '2022-09-21', 'HarmonyOS 3', 6.70, '2700x1224', 256, 8, 4460, '50MP+13MP+12MP', 'Snapdragon 8+ Gen 1', '银色', 202.00, 4999.00, 120, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `phone` VALUES (5, 'OnePlus 10 Pro', 'OnePlus', 'NE2210', '2022-01-11', 'Android 12', 6.70, '3216x1440', 256, 12, 5000, '48MP+50MP+8MP', 'Snapdragon 8 Gen 1', '绿色', 200.00, 5299.00, 80, '2025-01-23 22:27:50', '2025-01-23 22:27:50');
INSERT INTO `phone` VALUES (6, 'Pixel 7', 'Google', 'GR1YH', '2022-10-13', 'Android 13', 6.30, '2400x1080', 128, 8, 4355, '50MP+12MP', 'Google Tensor G2', 'Lemongrass', 197.00, 4499.00, 90, '2025-11-26 21:26:39', '2025-11-26 21:26:39');
INSERT INTO `phone` VALUES (19, 'LightPhone X', 'TechBrand', 'TB-2025', '2025-01-15', 'Android 14', 6.10, '2400x1080', 256, 8, 4000, '50MP+12MP', 'Snapdragon 8 Gen 2', 'White', 185.00, 2999.00, 200, '2025-11-26 21:36:50', '2025-11-26 21:36:50');
INSERT INTO `phone` VALUES (20, 'SlimPro', 'NextGen', 'NG-S1', '2024-11-10', 'Android 13', 6.30, '2340x1080', 512, 12, 4500, '64MP+16MP+8MP', 'Dimensity 9200', 'Black', 195.50, 3499.00, 150, '2025-11-26 21:36:50', '2025-11-26 21:36:50');
INSERT INTO `phone` VALUES (21, 'LightPhone X', 'TechBrand', 'TB-2025', '2025-01-15', 'Android 14', 6.10, '2400x1080', 256, 8, 4000, '50MP+12MP', 'Snapdragon 8 Gen 2', 'White', 185.00, 2999.00, 200, '2025-11-26 21:37:59', '2025-11-26 21:37:59');
INSERT INTO `phone` VALUES (22, 'SlimPro', 'NextGen', 'NG-S1', '2024-11-10', 'Android 13', 6.30, '2340x1080', 512, 12, 4500, '64MP+16MP+8MP', 'Dimensity 9200', 'Black', 195.50, 3499.00, 150, '2025-11-26 21:37:59', '2025-11-26 21:37:59');
INSERT INTO `phone` VALUES (23, 'LightPhone X', 'TechBrand', 'TB-2025', '2025-01-15', 'Android 14', 6.10, '2400x1080', 256, 8, 4000, '50MP+12MP', 'Snapdragon 8 Gen 2', 'White', 185.00, 2999.00, 200, '2025-11-26 21:39:11', '2025-11-26 21:39:11');
INSERT INTO `phone` VALUES (24, 'SlimPro', 'NextGen', 'NG-S1', '2024-11-10', 'Android 13', 6.30, '2340x1080', 512, 12, 4500, '64MP+16MP+8MP', 'Dimensity 9200', 'Black', 195.50, 3499.00, 150, '2025-11-26 21:39:11', '2025-11-26 21:39:11');
INSERT INTO `phone` VALUES (25, 'BudgetPhone A1', 'EcoMobile', 'EM-A1', '2025-02-01', 'Android 13', 6.00, '1600x720', 64, 4, 5000, '13MP', 'MediaTek Helio G35', 'Black', 190.00, 799.00, 300, '2025-11-26 21:40:02', '2025-11-26 21:40:02');
INSERT INTO `phone` VALUES (26, 'BudgetPhone A1', 'EcoMobile', 'EM-A1', '2025-02-01', 'Android 13', 6.00, '1600x720', 64, 4, 5000, '13MP', 'MediaTek Helio G35', 'Black', 190.00, 799.00, 300, '2025-11-26 21:41:28', '2025-11-26 21:41:28');
INSERT INTO `phone` VALUES (27, 'ProPhone Elite', 'TechGlobal', 'TGE-2025', '2024-06-15', 'Android 14', 6.70, '3200x1440', 512, 16, 6000, '200MP+50MP+12MP', 'Snapdragon 8 Gen 3', 'Titanium Gray', 210.00, 8999.00, 100, '2025-11-26 21:42:05', '2025-11-26 21:42:05');
INSERT INTO `phone` VALUES (28, 'iPhone 15 Pro Max', 'Apple', 'A2890', '2023-09-22', 'iOS 17', 6.70, '2796x1290', 512, 8, 4422, '48MP', 'A17 Bionic', 'Titanium Black', 221.00, 1199.00, 150, '2025-11-26 21:45:55', '2025-11-26 21:45:55');
INSERT INTO `phone` VALUES (29, 'iPhone SE (3rd Gen)', 'Apple', 'A2783', '2022-03-18', 'iOS 15', 4.70, '1334x750', 64, 4, 2018, '12MP', 'A15 Bionic', 'Midnight', 144.00, 429.00, 250, '2025-11-26 21:45:55', '2025-11-26 21:45:55');
INSERT INTO `phone` VALUES (30, 'Samsung Galaxy S24 Ultra', 'Samsung', 'SM-S928B', '2024-01-31', 'Android 14', 6.80, '3120x1440', 256, 12, 5000, '200MP', 'Snapdragon 8 Gen 3', 'Titanium Gray', 232.00, 1299.00, 100, '2025-11-26 21:45:55', '2025-11-26 21:45:55');
INSERT INTO `phone` VALUES (31, 'Example Battery Phone', 'TechCorp', 'SpecificPhoneModel', '2025-06-01', 'Android 15', 6.50, '2400x1080', 128, 8, 4000, '48MP', 'PowerEfficient Chip', 'Gray', 180.00, 899.00, 100, '2025-11-26 21:47:13', '2025-11-26 21:47:13');
INSERT INTO `phone` VALUES (32, 'Luxury Model X', 'EliteMobile', 'SpecificPhoneModel', '2025-01-01', 'ProprietaryOS', 6.80, '3088x1440', 1024, 16, 5000, '108MP', 'A-Power Z1', 'Silver', 210.00, 5000.00, 50, '2025-11-26 21:48:06', '2025-11-26 21:48:06');
INSERT INTO `phone` VALUES (33, 'Vintage X', 'ClassicTech', 'SpecificPhoneModel', '2020-01-01', 'OldOS 10', 5.50, '1920x1080', 64, 4, 3000, '12MP', 'Snapdragon 650', 'Silver', 160.00, 300.00, 50, '2025-11-26 21:48:52', '2025-11-26 21:48:52');
INSERT INTO `phone` VALUES (34, 'SpecificPhoneModel', 'TechBrand', 'SpecificPhoneModel', '2020-01-01', 'OldOS 10', 5.50, '1920x1080', 64, 4, 3000, '12MP', 'Snapdragon 650', 'Silver', 160.00, 300.00, 50, '2025-11-26 21:50:02', '2025-11-26 21:50:02');
INSERT INTO `phone` VALUES (35, 'SpecificPhoneModel', 'TechBrand', 'SpecificPhoneModel', '2020-01-01', 'OldOS 10', 5.50, '1920x1080', 64, 4, 3000, '12MP', 'Snapdragon 650', 'Silver', 160.00, 300.00, 50, '2025-11-26 21:51:28', '2025-11-26 21:51:28');
INSERT INTO `phone` VALUES (36, 'SpecificPhoneModel', 'TechBrand', 'SpecificPhoneModel', '2020-01-01', 'OldOS 10', 5.50, '1920x1080', 64, 4, 3000, '12MP', 'Snapdragon 650', 'Silver', 160.00, 300.00, 50, '2025-11-26 21:52:24', '2025-11-26 21:52:24');
INSERT INTO `phone` VALUES (37, 'SpecificPhoneModel', 'TechBrand', 'SpecificPhoneModel', '2020-01-01', 'OldOS 10', 5.50, '1920x1080', 64, 4, 3000, '12MP', 'Snapdragon 650', 'Silver', 160.00, 300.00, 50, '2025-11-26 21:55:29', '2025-11-26 21:55:29');
INSERT INTO `phone` VALUES (38, 'SpecificPhoneModel', 'TechBrand', 'SpecificPhoneModel', '2020-01-01', 'OldOS 10', 5.50, '1920x1080', 64, 4, 3000, '12MP', 'Snapdragon 650', 'Silver', 160.00, 300.00, 50, '2025-11-26 21:56:50', '2025-11-26 21:56:50');
INSERT INTO `phone` VALUES (39, 'SpecificPhoneModel', 'TechBrand', 'SpecificPhoneModel', '2020-01-01', 'OldOS 10', 5.50, '1920x1080', 64, 4, 3000, '12MP', 'Snapdragon 650', 'Silver', 160.00, 300.00, 50, '2025-11-26 21:57:41', '2025-11-26 21:57:41');
INSERT INTO `phone` VALUES (40, 'Phone X Base', 'Apple', 'A15', '2023-09-01', 'iOS', 6.10, '2556x1179', 64, 6, 3279, '12MP', 'A16 Bionic', 'Starlight', 172.00, 799.00, 400, '2025-11-26 22:05:41', '2025-11-26 22:05:41');
INSERT INTO `phone` VALUES (41, 'UltraCam 200', 'GlobalTech', 'UC-200', '2025-08-01', 'Android', 6.90, '3200x1440', 1024, 16, 5500, '200MP', 'Snapdragon 8 Gen 4', 'Cosmic Gray', 230.00, 1499.00, 50, '2025-11-26 22:06:16', '2025-11-26 22:06:16');
INSERT INTO `phone` VALUES (42, 'Model A2884 Black', 'Apple', 'A2884', '2025-01-01', 'iOS', 6.10, '2556x1179', 128, 6, 3000, '48MP', 'A18 Bionic', 'Black', 180.00, 999.00, 100, '2025-11-26 22:06:48', '2025-11-26 22:06:48');
INSERT INTO `phone` VALUES (43, 'Flagship Model Z', 'PremiumTech', 'ModelZ1', '2025-10-01', 'Android 16', 6.70, '3088x1440', 512, 16, 5000, '50MP', '100000', 'Black', 200.00, 5000.00, 200, '2025-11-26 22:07:45', '2025-11-26 22:07:45');
INSERT INTO `phone` VALUES (44, 'Premium Phone A', 'BrandX', 'A2884', '2025-01-01', 'iOS', 6.50, '2532x1170', 256, 8, 4000, '50MP', 'High-End Model', 'Black', 200.00, 6000.00, 100, '2025-11-26 22:08:49', '2025-11-26 22:08:49');
INSERT INTO `phone` VALUES (45, 'Thermal Test Model', 'ExtremeTech', 'TestModelX', '2026-03-01', 'Android 16', 7.00, '3840x2160', 1024, 32, 8000, '150MP', '1000000', 'Black', 250.00, 10000.00, 10, '2025-11-26 22:10:08', '2025-11-26 22:10:08');
INSERT INTO `phone` VALUES (46, 'Thermal Test Model - Rainbow', 'ExtremeTech', 'TestModelX', '2026-03-01', 'Android 16', 7.00, '3840x2160', 1024, 32, 8000, '150MP', '1000000', 'rainbow color', 250.00, 15000.00, 10, '2025-11-26 22:10:08', '2025-11-26 22:10:08');

SET FOREIGN_KEY_CHECKS = 1;
