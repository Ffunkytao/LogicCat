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

 Date: 27/01/2025 21:09:10
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
  PRIMARY KEY (`orderId`),
  KEY `userId` (`userId`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

SET FOREIGN_KEY_CHECKS = 1;
