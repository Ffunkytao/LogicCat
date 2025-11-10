/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : ECommerce

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:27:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Discounts
-- ----------------------------
DROP TABLE IF EXISTS `Discounts`;
CREATE TABLE `Discounts` (
  `discountId` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `discountType` enum('百分比折扣','固定金额折扣') DEFAULT NULL,
  `discountValue` decimal(10,2) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `maxUsage` int DEFAULT NULL,
  `currentUsage` int DEFAULT '0',
  `status` enum('启用','禁用') DEFAULT '启用',
  `description` text,
  `creationDate` datetime NOT NULL,
  PRIMARY KEY (`discountId`),
  KEY `productId` (`productId`),
  CONSTRAINT `Discounts_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `Products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Discounts
-- ----------------------------
BEGIN;
INSERT INTO `Discounts` VALUES (1, 1, '百分比折扣', 10.00, '2023-10-01 00:00:00', '2023-10-31 23:59:59', 100, 10, '启用', '10% off on Smartphone X', '2023-09-25 12:00:00');
INSERT INTO `Discounts` VALUES (2, 2, '固定金额折扣', 100.00, '2023-10-01 00:00:00', '2023-10-31 23:59:59', 50, 5, '启用', '$100 off on Laptop Pro', '2023-09-26 12:00:00');
INSERT INTO `Discounts` VALUES (3, 3, '百分比折扣', 5.00, '2023-10-01 00:00:00', '2023-10-31 23:59:59', 200, 20, '启用', '5% off on Smartwatch 3', '2023-09-27 12:00:00');
INSERT INTO `Discounts` VALUES (4, 1, '百分比折扣', 10.00, '2023-10-01 00:00:00', '2023-10-31 23:59:59', 100, 10, '启用', '10% off on Smartphone X', '2023-09-25 12:00:00');
INSERT INTO `Discounts` VALUES (5, 2, '固定金额折扣', 100.00, '2023-10-01 00:00:00', '2023-10-31 23:59:59', 50, 5, '启用', '$100 off on Laptop Pro', '2023-09-26 12:00:00');
INSERT INTO `Discounts` VALUES (6, 3, '百分比折扣', 5.00, '2023-10-01 00:00:00', '2023-10-31 23:59:59', 200, 20, '启用', '5% off on Smartwatch 3', '2023-09-27 12:00:00');
INSERT INTO `Discounts` VALUES (7, 1, '固定金额折扣', 50.00, '2023-11-01 00:00:00', '2023-11-30 23:59:59', 150, 0, '启用', '$50 off on Smartphone X', '2023-10-25 12:00:00');
INSERT INTO `Discounts` VALUES (8, 2, '百分比折扣', 15.00, '2023-11-01 00:00:00', '2023-11-30 23:59:59', 75, 0, '启用', '15% off on Laptop Pro', '2023-10-26 12:00:00');
INSERT INTO `Discounts` VALUES (9, 3, '固定金额折扣', 20.00, '2023-11-01 00:00:00', '2023-11-30 23:59:59', 100, 0, '启用', '$20 off on Smartwatch 3', '2023-10-27 12:00:00');
COMMIT;

-- ----------------------------
-- Table structure for Manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `Manufacturers`;
CREATE TABLE `Manufacturers` (
  `manufacturerId` int NOT NULL AUTO_INCREMENT,
  `manufacturerName` varchar(255) NOT NULL,
  `contactPerson` varchar(255) DEFAULT NULL,
  `contactEmail` varchar(255) DEFAULT NULL,
  `contactPhone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `revenue` decimal(15,2) DEFAULT NULL,
  `profit` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `Manufacturers` VALUES (1, 'TechCorp', 'John Doe', 'john.doe@techcorp.com', '+1234567890', '123 Tech Street', 'Tech City', 'USA', 'www.techcorp.com', 1000000.00, 200000.00);
INSERT INTO `Manufacturers` VALUES (2, 'GadgetWorld', 'Jane Smith', 'jane.smith@gadgetworld.com', '+0987654321', '456 Gadget Avenue', 'Gadget Town', 'Canada', 'www.gadgetworld.com', 500000.00, 100000.00);
INSERT INTO `Manufacturers` VALUES (3, 'ElectroWorks', 'Alice Johnson', 'alice.johnson@electroworks.com', '+1122334455', '789 Electro Lane', 'Electro City', 'UK', 'www.electroworks.com', 750000.00, 150000.00);
COMMIT;

-- ----------------------------
-- Table structure for OrderDetails
-- ----------------------------
DROP TABLE IF EXISTS `OrderDetails`;
CREATE TABLE `OrderDetails` (
  `detailId` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `shippingFee` decimal(10,2) DEFAULT NULL,
  `status` enum('已发货','已收货') DEFAULT '已发货',
  `deliveryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`detailId`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`),
  CONSTRAINT `OrderDetails_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `Orders` (`orderId`),
  CONSTRAINT `OrderDetails_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `Products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of OrderDetails
-- ----------------------------
BEGIN;
INSERT INTO `OrderDetails` VALUES (1, 1, 1, 1, 999.99, 999.99, 0.00, 50.00, 10.00, '已收货', '2023-10-05 14:00:00');
INSERT INTO `OrderDetails` VALUES (2, 2, 2, 1, 1499.99, 1499.99, 0.00, 75.00, 15.00, '已发货', NULL);
INSERT INTO `OrderDetails` VALUES (3, 3, 3, 1, 299.99, 299.99, 0.00, 15.00, 5.00, '已发货', NULL);
COMMIT;

-- ----------------------------
-- Table structure for Orders
-- ----------------------------
DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `orderDate` datetime NOT NULL,
  `totalAmount` decimal(10,2) NOT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL,
  `paymentMethod` enum('信用卡','支付宝','微信支付') DEFAULT NULL,
  `orderStatus` enum('待支付','已发货','已完成') DEFAULT '待支付',
  `shippingFee` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `finalAmount` decimal(10,2) DEFAULT NULL,
  `maintenanceDate` date DEFAULT NULL,
  `nextMaintenanceDate` date DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `userId` (`userId`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Orders
-- ----------------------------
BEGIN;
INSERT INTO `Orders` VALUES (1, 1, '2023-10-01 08:00:00', 999.99, '123 Home Street, Home City, USA', '信用卡', '已完成', 10.00, 50.00, 0.00, 1059.99, NULL, NULL);
INSERT INTO `Orders` VALUES (2, 2, '2023-10-01 09:00:00', 1499.99, '456 Work Avenue, Work Town, Canada', '支付宝', '已发货', 15.00, 75.00, 0.00, 1589.99, NULL, NULL);
INSERT INTO `Orders` VALUES (3, 3, '2023-10-01 10:00:00', 299.99, '789 Office Lane, Office City, UK', '微信支付', '待支付', 5.00, 15.00, 0.00, 319.99, NULL, NULL);
INSERT INTO `Orders` VALUES (4, 2, '2023-10-01 09:00:00', 1499.99, '456 Work Avenue, Work Town, Canada', '支付宝', '已完成', 15.00, 75.00, 0.00, 1589.99, NULL, NULL);
INSERT INTO `Orders` VALUES (5, 3, '2023-10-01 10:00:00', 299.99, '789 Office Lane, Office City, UK', '信用卡', '待支付', 5.00, 15.00, 0.00, 319.99, NULL, NULL);
INSERT INTO `Orders` VALUES (6, 2, '2023-10-01 10:00:00', 60000.00, '789 Office Lane, Office City, UK', '支付宝', '已完成', 5.00, 15.00, 0.00, 60000.00, NULL, NULL);
INSERT INTO `Orders` VALUES (7, 2, '2023-10-01 10:00:00', 60000.00, '789 Office Lane, Office City, UK', '支付宝', '已发货', 5.00, 15.00, 0.00, 60000.00, NULL, NULL);
INSERT INTO `Orders` VALUES (1001, 1, '2024-08-01 00:00:00', 999.99, '北京市朝阳区', '支付宝', '已发货', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for Payments
-- ----------------------------
DROP TABLE IF EXISTS `Payments`;
CREATE TABLE `Payments` (
  `paymentId` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `paymentDate` datetime NOT NULL,
  `paymentMethod` enum('信用卡','支付宝','微信支付') DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `paymentStatus` enum('成功','失败') DEFAULT '成功',
  `currency` enum('人民币','美元') DEFAULT '人民币',
  `payerName` varchar(255) DEFAULT NULL,
  `payerEmail` varchar(255) DEFAULT NULL,
  `payerPhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`paymentId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `Payments_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `Orders` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Payments
-- ----------------------------
BEGIN;
INSERT INTO `Payments` VALUES (1, 1, '2023-10-01 08:05:00', '信用卡', 1059.99, 'txn_123456', '成功', '人民币', 'Alice', 'alice@example.com', '+1111111111');
INSERT INTO `Payments` VALUES (2, 2, '2023-10-01 09:05:00', '支付宝', 1589.99, 'txn_654321', '成功', '人民币', 'Bob', 'bob@example.com', '+2222222222');
INSERT INTO `Payments` VALUES (3, 3, '2023-10-01 10:05:00', '微信支付', 319.99, 'txn_987654', '成功', '人民币', 'Charlie', 'charlie@example.com', '+3333333333');
INSERT INTO `Payments` VALUES (4, 6, '2023-10-01 10:05:00', '支付宝', 60000.00, 'txn_987654', '失败', '人民币', 'Charlie', 'charlie@example.com', '+3333333333');
COMMIT;

-- ----------------------------
-- Table structure for Products
-- ----------------------------
DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `volume` decimal(10,2) DEFAULT NULL,
  `manufacturerId` int DEFAULT NULL,
  `creationDate` datetime NOT NULL,
  `status` enum('上架','下架') DEFAULT '上架',
  PRIMARY KEY (`productId`),
  KEY `manufacturerId` (`manufacturerId`),
  CONSTRAINT `Products_ibfk_1` FOREIGN KEY (`manufacturerId`) REFERENCES `Manufacturers` (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Products
-- ----------------------------
BEGIN;
INSERT INTO `Products` VALUES (1, 'Smartphone X', 'Latest model with advanced features', 999.99, 100, 'Electronics', 0.20, 0.01, 1, '2023-01-15 10:00:00', '上架');
INSERT INTO `Products` VALUES (2, 'Laptop Pro', 'High-performance laptop for professionals', 1499.99, 50, 'Electronics', 2.50, 0.05, 2, '2023-02-20 11:00:00', '上架');
INSERT INTO `Products` VALUES (3, 'Smartwatch 3', 'Fitness and health tracking smartwatch', 299.99, 200, 'Wearables', 0.10, 0.01, 3, '2023-03-10 12:00:00', '上架');
INSERT INTO `Products` VALUES (4, 'Smartphone 5', 'Latest model with advanced features', 9999.99, 5, 'Electronics', 0.20, 0.01, 1, '2023-01-15 10:00:00', '上架');
INSERT INTO `Products` VALUES (5, 'Smartphone 1', 'Latest model with advanced features', 9999.99, 5, '电子产品', 0.20, 0.01, 1, '2023-01-15 10:00:00', '上架');
INSERT INTO `Products` VALUES (6, 'Smartphone 8', 'Latest model with advanced features', 9999.99, 0, '电子产品', 0.20, 0.01, 1, '2023-01-15 10:00:00', '上架');
COMMIT;

-- ----------------------------
-- Table structure for Returns
-- ----------------------------
DROP TABLE IF EXISTS `Returns`;
CREATE TABLE `Returns` (
  `returnId` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `returnDate` datetime NOT NULL,
  `returnReason` text,
  `returnStatus` enum('待处理','已退款') DEFAULT '待处理',
  `refundAmount` decimal(10,2) DEFAULT NULL,
  `refundMethod` enum('原路退回','银行转账') DEFAULT NULL,
  `shippingFee` decimal(10,2) DEFAULT NULL,
  `description` text,
  `approvalDate` datetime DEFAULT NULL,
  PRIMARY KEY (`returnId`),
  KEY `orderId` (`orderId`),
  KEY `userId` (`userId`),
  CONSTRAINT `Returns_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `Orders` (`orderId`),
  CONSTRAINT `Returns_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Returns
-- ----------------------------
BEGIN;
INSERT INTO `Returns` VALUES (1, 1, 1, '2023-10-07 10:00:00', 'Product not as described', '已退款', 999.99, '原路退回', 10.00, 'Refund processed', '2023-10-08 12:00:00');
INSERT INTO `Returns` VALUES (2, 2, 2, '2023-10-12 11:00:00', 'Product damaged', '待处理', 1499.99, '银行转账', 15.00, 'Awaiting approval', NULL);
INSERT INTO `Returns` VALUES (3, 3, 3, '2023-10-09 12:00:00', 'Product not needed', '待处理', 299.99, '原路退回', 5.00, 'Awaiting approval', NULL);
COMMIT;

-- ----------------------------
-- Table structure for Reviews
-- ----------------------------
DROP TABLE IF EXISTS `Reviews`;
CREATE TABLE `Reviews` (
  `reviewId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `reviewText` text,
  `reviewDate` datetime NOT NULL,
  `helpfulVotes` int DEFAULT '0',
  `unhelpfulVotes` int DEFAULT '0',
  `status` enum('已审核','未审核') DEFAULT '未审核',
  `reviewTitle` varchar(255) DEFAULT NULL,
  `reviewerName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reviewId`),
  KEY `userId` (`userId`),
  KEY `productId` (`productId`),
  CONSTRAINT `Reviews_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`),
  CONSTRAINT `Reviews_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `Products` (`productId`),
  CONSTRAINT `Reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Reviews
-- ----------------------------
BEGIN;
INSERT INTO `Reviews` VALUES (1, 1, 1, 5, 'Great phone with excellent features!', '2023-10-06 15:00:00', 10, 2, '已审核', 'Excellent Product', 'Alice');
INSERT INTO `Reviews` VALUES (2, 2, 2, 4, 'Good laptop, but a bit heavy.', '2023-10-11 16:00:00', 5, 1, '已审核', 'Good but Heavy', 'Bob');
INSERT INTO `Reviews` VALUES (3, 3, 3, 3, 'Average smartwatch, battery life could be better.', '2023-10-08 17:00:00', 3, 0, '未审核', 'Average Product', 'Charlie');
COMMIT;

-- ----------------------------
-- Table structure for Shipping
-- ----------------------------
DROP TABLE IF EXISTS `Shipping`;
CREATE TABLE `Shipping` (
  `shippingId` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `shippingMethod` enum('快递','物流') DEFAULT NULL,
  `shippingDate` datetime DEFAULT NULL,
  `estimatedDeliveryDate` datetime DEFAULT NULL,
  `actualDeliveryDate` datetime DEFAULT NULL,
  `shippingStatus` enum('已发货','已签收') DEFAULT '已发货',
  `trackingNumber` varchar(255) DEFAULT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL,
  `shippingFee` decimal(10,2) DEFAULT NULL,
  `carrierName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shippingId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `Shipping_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `Orders` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Shipping
-- ----------------------------
BEGIN;
INSERT INTO `Shipping` VALUES (1, 1, '快递', '2023-10-01 08:30:00', '2023-10-05 14:00:00', '2023-10-05 14:00:00', '已签收', 'TRK123456', '123 Home Street, Home City, USA', 10.00, '顺丰速运');
INSERT INTO `Shipping` VALUES (2, 2, '物流', '2023-10-01 09:30:00', '2023-10-10 12:00:00', NULL, '已发货', 'TRK654321', '456 Work Avenue, Work Town, Canada', 15.00, '德邦物流');
INSERT INTO `Shipping` VALUES (3, 3, '快递', '2023-10-01 10:30:00', '2023-10-07 10:00:00', NULL, '已发货', 'TRK987654', '789 Office Lane, Office City, UK', 5.00, '圆通速递');
INSERT INTO `Shipping` VALUES (4, 7, '快递', '2023-10-01 10:30:00', '2023-10-07 10:00:00', NULL, '已发货', 'NULL', '789 Office Lane, Office City, UK', 5.00, '圆通速递');
INSERT INTO `Shipping` VALUES (5, 1001, '快递', '2024-08-02 00:00:00', '2024-08-05 00:00:00', NULL, '已发货', NULL, '北京市朝阳区', 20.00, NULL);
COMMIT;

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `registrationDate` datetime NOT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `userRole` enum('普通用户','管理员') DEFAULT '普通用户',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Users
-- ----------------------------
BEGIN;
INSERT INTO `Users` VALUES (1, 'Alice', 'alice@example.com', 'hashedpassword1', '+1111111111', '123 Home Street', 'Home City', 'USA', '2023-01-01 09:00:00', '2023-10-01 10:00:00', '普通用户');
INSERT INTO `Users` VALUES (2, 'Bob', 'bob@example.com', 'hashedpassword2', '+2222222222', '456 Work Avenue', 'Work Town', 'Canada', '2023-02-01 10:00:00', '2023-10-01 11:00:00', '普通用户');
INSERT INTO `Users` VALUES (3, 'Charlie', 'charlie@example.com', 'hashedpassword3', '+3333333333', '789 Office Lane', 'Office City', 'UK', '2023-03-01 11:00:00', '2023-10-01 12:00:00', '管理员');
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
