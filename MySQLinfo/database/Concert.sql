/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : Concert

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:26:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for concert
-- ----------------------------
DROP TABLE IF EXISTS `concert`;
CREATE TABLE `concert` (
  `concert_ID` int NOT NULL,
  `concert_Name` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `Stadium_ID` varchar(255) DEFAULT NULL,
  `Year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`concert_ID`),
  KEY `Stadium_ID` (`Stadium_ID`),
  CONSTRAINT `concert_ibfk_1` FOREIGN KEY (`Stadium_ID`) REFERENCES `stadium` (`Stadium_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of concert
-- ----------------------------
BEGIN;
INSERT INTO `concert` VALUES (1, 'Auditions', 'Free choice', '1', '2014');
INSERT INTO `concert` VALUES (2, 'Super bootcamp', 'Free choice 2', '2', '2014');
INSERT INTO `concert` VALUES (3, 'Home Visits', 'Bleeding Love', '2', '2015');
INSERT INTO `concert` VALUES (4, 'Week 1', 'Wide Awake', '10', '2014');
INSERT INTO `concert` VALUES (5, 'Week 1', 'Happy Tonight', '9', '2015');
INSERT INTO `concert` VALUES (6, 'Week 2', 'Party All Night', '7', '2015');
COMMIT;

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `Singer_ID` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Song_Name` varchar(255) DEFAULT NULL,
  `Song_release_year` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Is_male` int DEFAULT NULL,
  PRIMARY KEY (`Singer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of singer
-- ----------------------------
BEGIN;
INSERT INTO `singer` VALUES ('1', 'Joe Sharp', 'Netherlands', 'You', '1992', 52, 0);
INSERT INTO `singer` VALUES ('2', 'Timbaland', 'United States', 'Dangerous', '2008', 32, 1);
INSERT INTO `singer` VALUES ('3', 'Justin Brown', 'France', 'Hey Oh', '2013', 29, 1);
INSERT INTO `singer` VALUES ('4', 'Rose White', 'France', 'Sun', '2003', 41, 0);
INSERT INTO `singer` VALUES ('5', 'John Nizinik', 'France', 'Gentleman', '2014', 43, 1);
INSERT INTO `singer` VALUES ('6', 'Tribal King', 'France', 'Love', '2016', 25, 1);
COMMIT;

-- ----------------------------
-- Table structure for singer_in_concert
-- ----------------------------
DROP TABLE IF EXISTS `singer_in_concert`;
CREATE TABLE `singer_in_concert` (
  `concert_ID` int NOT NULL,
  `Singer_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`concert_ID`),
  KEY `Singer_ID` (`Singer_ID`),
  CONSTRAINT `singer_in_concert_ibfk_1` FOREIGN KEY (`concert_ID`) REFERENCES `concert` (`concert_ID`),
  CONSTRAINT `singer_in_concert_ibfk_2` FOREIGN KEY (`Singer_ID`) REFERENCES `singer` (`Singer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of singer_in_concert
-- ----------------------------
BEGIN;
INSERT INTO `singer_in_concert` VALUES (1, '2');
COMMIT;

-- ----------------------------
-- Table structure for stadium
-- ----------------------------
DROP TABLE IF EXISTS `stadium`;
CREATE TABLE `stadium` (
  `Stadium_ID` varchar(255) NOT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Capacity` int DEFAULT NULL,
  `Highest` int DEFAULT NULL,
  `Lowest` int DEFAULT NULL,
  `Average` int DEFAULT NULL,
  PRIMARY KEY (`Stadium_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of stadium
-- ----------------------------
BEGIN;
INSERT INTO `stadium` VALUES ('1', 'Raith Rovers', 'Stark\'s Park', 10104, 4812, 1294, 2106);
INSERT INTO `stadium` VALUES ('10', 'Brechin City', 'Glebe Park', 3960, 780, 315, 552);
INSERT INTO `stadium` VALUES ('2', 'Ayr United', 'Somerset Park', 11998, 2363, 1057, 1477);
INSERT INTO `stadium` VALUES ('3', 'East Fife', 'Bayview Stadium', 2000, 1980, 533, 864);
INSERT INTO `stadium` VALUES ('4', 'Queen\'s Park', 'Hampden Park', 52500, 1763, 466, 730);
INSERT INTO `stadium` VALUES ('5', 'Stirling Albion', 'Forthbank Stadium', 3808, 1125, 404, 642);
INSERT INTO `stadium` VALUES ('6', 'Arbroath', 'Gayfield Park', 4125, 921, 411, 638);
INSERT INTO `stadium` VALUES ('7', 'Alloa Athletic', 'Recreation Park', 3100, 1057, 331, 637);
INSERT INTO `stadium` VALUES ('9', 'Peterhead', 'Balmoor', 4000, 837, 400, 615);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
