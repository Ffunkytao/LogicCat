/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : Population

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:29:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carbon_emissions
-- ----------------------------
DROP TABLE IF EXISTS `carbon_emissions`;
CREATE TABLE `carbon_emissions` (
  `id` int NOT NULL,
  `emission_factor` decimal(10,2) DEFAULT NULL,
  `annual_emissions_tonnes` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CountryCode` varchar(255) DEFAULT NULL,
  `District` varchar(255) DEFAULT NULL,
  `Population` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `Code` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Continent` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `SurfaceArea` double DEFAULT NULL,
  `IdepYear` int DEFAULT NULL,
  `Population` int DEFAULT NULL,
  `LifeExpectancy` double DEFAULT NULL,
  `GNP` double DEFAULT NULL,
  `GNPOld` double DEFAULT NULL,
  `LocalName` varchar(255) DEFAULT NULL,
  `GovermentForm` varchar(255) DEFAULT NULL,
  `HeadOfState` varchar(255) DEFAULT NULL,
  `Capital` int DEFAULT NULL,
  `Code2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of country
-- ----------------------------
BEGIN;
INSERT INTO `country` VALUES ('ARB', '阿拉伯联合共和国', 'Africa', 'North Africa', 2000000, NULL, 40000000, 70, 8000, 7500, 'United Arab Republic', 'Federal Republic', 'President Y', 2, 'AR');
INSERT INTO `country` VALUES ('AUS', '澳大利亚', 'Oceania', 'Australia and New Zealand', 7692024, NULL, 25788215, NULL, 1500000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('BRA', '巴西', 'South America', 'South America', 8515767, NULL, 213993437, NULL, 1800000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('CHE', 'Switzerland', 'Europe', 'Western Europe', 41284, NULL, 8654622, 83, 700000, 690000, '瑞士联邦', 'Federal Republic', 'President Ueli Maurer', 1003, NULL);
INSERT INTO `country` VALUES ('COD', '刚果(金)', 'Africa', 'Central Africa', 2344858, NULL, 108407742, NULL, 50000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('DEU', '德国', 'Europe', 'Europe', 357022, NULL, 83240525, NULL, 4200000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('GBR', 'United Kingdom', 'Europe', 'British Islands', 242900, NULL, 67000000, 80.7, 3100000, 3000000, 'United Kingdom of Great Britain and Northern Ireland', 'Constitutional Monarchy', 'Queen Elizabeth II', 1, 'UK');
INSERT INTO `country` VALUES ('JPN', '日本', 'Asia', 'Eastern Asia', 377975, NULL, 125681543, NULL, 4900000, 10000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('MEX', '墨西哥', 'North America', 'Central America', 1964375, NULL, 127500000, NULL, 1300000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('NOR', '挪威', 'Europe', 'Nordic Countries', 385207, NULL, 5421241, NULL, 500000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('SGP', '新加坡', 'Asia', 'Southeast Asia', 725, NULL, 5704000, NULL, 360000, 30030, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('USA', '美国', 'North America', 'North America', 9833520, NULL, 331002651, NULL, 25000000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `country` VALUES ('XYZ', '幻想国', 'Asia', 'Far East', 1000000, NULL, 5000000, 75.5, 11000, 10000, 'Fantasy Land', 'Republic', 'President X', 1, 'XY');
INSERT INTO `country` VALUES ('ZMB', 'Zambia', 'Africa', 'Southern Africa', 752618, NULL, 18383955, 40, 25000, 24000, 'Republic of Zambia', 'Presidential Republic', 'President Edgar Lungu', 1001, NULL);
COMMIT;

-- ----------------------------
-- Table structure for countrylanguage
-- ----------------------------
DROP TABLE IF EXISTS `countrylanguage`;
CREATE TABLE `countrylanguage` (
  `CountryCode` varchar(255) NOT NULL,
  `Language` varchar(255) NOT NULL,
  `IsOfficial` varchar(255) DEFAULT NULL,
  `Percentage` double DEFAULT NULL,
  PRIMARY KEY (`CountryCode`,`Language`),
  CONSTRAINT `countrylanguage_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of countrylanguage
-- ----------------------------
BEGIN;
INSERT INTO `countrylanguage` VALUES ('ARB', 'Arabic', 'T', 90);
COMMIT;

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data` (
  `device_id` int DEFAULT NULL,
  `energy_saved` decimal(10,2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SET FOREIGN_KEY_CHECKS = 1;
