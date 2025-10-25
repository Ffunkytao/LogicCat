/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : exercise_club

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:27:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE IF EXISTS `club`;
CREATE TABLE `club` (
  `Club_ID` int NOT NULL,
  `Club_name` text,
  `Region` text,
  `Start_year` int DEFAULT NULL,
  PRIMARY KEY (`Club_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of club
-- ----------------------------
BEGIN;
INSERT INTO `club` VALUES (1, 'AIK', 'USA', 2009);
INSERT INTO `club` VALUES (2, 'BK H?cken', 'UK', 1998);
INSERT INTO `club` VALUES (3, 'Djurg?rdens IF', 'USA', 2005);
INSERT INTO `club` VALUES (4, 'Gefle IF', 'Korea', 2001);
INSERT INTO `club` VALUES (5, 'Halmstads BK', 'Russia', 2000);
INSERT INTO `club` VALUES (6, 'Helsingborgs IF', 'France', 2011);
COMMIT;

-- ----------------------------
-- Table structure for coach
-- ----------------------------
DROP TABLE IF EXISTS `coach`;
CREATE TABLE `coach` (
  `Coach_ID` int NOT NULL,
  `Coach_name` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Club_ID` int DEFAULT NULL,
  `Rank` int DEFAULT NULL,
  PRIMARY KEY (`Coach_ID`),
  CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`Coach_ID`) REFERENCES `club` (`Club_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of coach
-- ----------------------------
BEGIN;
INSERT INTO `coach` VALUES (1, 'Jameson Tomas', 'M', 1, 1);
INSERT INTO `coach` VALUES (2, 'Joe Fabbri', 'F', 1, 2);
INSERT INTO `coach` VALUES (3, 'Robert Chen', 'M', 3, 3);
INSERT INTO `coach` VALUES (4, 'James Wong', 'M', 3, 4);
INSERT INTO `coach` VALUES (5, 'Smith Brown', 'M', 1, 5);
COMMIT;

-- ----------------------------
-- Table structure for match_result
-- ----------------------------
DROP TABLE IF EXISTS `match_result`;
CREATE TABLE `match_result` (
  `Rank` int NOT NULL,
  `Club_ID` int DEFAULT NULL,
  `Gold` int DEFAULT NULL,
  `Big_Silver` int DEFAULT NULL,
  `Small_Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Points` int DEFAULT NULL,
  PRIMARY KEY (`Rank`),
  KEY `Club_ID` (`Club_ID`),
  CONSTRAINT `match_result_ibfk_1` FOREIGN KEY (`Club_ID`) REFERENCES `club` (`Club_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of match_result
-- ----------------------------
BEGIN;
INSERT INTO `match_result` VALUES (1, 1, 20, 14, 9, 8, 168);
INSERT INTO `match_result` VALUES (2, 2, 13, 11, 16, 9, 139);
INSERT INTO `match_result` VALUES (3, 3, 12, 9, 4, 7, 102);
INSERT INTO `match_result` VALUES (4, 4, 5, 12, 10, 8, 89);
INSERT INTO `match_result` VALUES (5, 5, 7, 7, 9, 10, 84);
INSERT INTO `match_result` VALUES (6, 6, 6, 6, 6, 6, 66);
COMMIT;

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `Player_ID` int NOT NULL,
  `Sponsor_name` varchar(255) DEFAULT NULL,
  `Player_name` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Residence` varchar(255) DEFAULT NULL,
  `Occupation` varchar(255) DEFAULT NULL,
  `Votes` int DEFAULT NULL,
  `Rank` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Player_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of player
-- ----------------------------
BEGIN;
INSERT INTO `player` VALUES (1, 'Brandon¡ªSouris', 'Jean Luc Bouch¨¦', 'M', 'Brandon', 'Locomotive Engineer', 6055, '2nd');
INSERT INTO `player` VALUES (2, 'Charleswood¡ªSt. James¡ªAssiniboia', 'Fiona Shiells', 'F', 'Winnipeg', 'Ministerial Assistant', 7190, '3rd');
INSERT INTO `player` VALUES (3, 'Churchill', 'Niki Ashton', 'F', 'Thompson', 'Researcher', 8734, '1st');
INSERT INTO `player` VALUES (4, 'Dauphin¡ªSwan River¡ªMarquette', 'Ron Strynadka', 'M', 'Birtle', 'Retired', 4914, '2nd');
INSERT INTO `player` VALUES (5, 'Elmwood¡ªTranscona', 'Jim Maloway', 'M', 'Winnipeg', 'Small Businessman', 14355, '1st');
INSERT INTO `player` VALUES (6, 'Kildonan¡ªSt. Paul', 'Ross Eadie', 'M', 'Winnipeg', 'Self Employed / Consultant', 12093, '2nd');
INSERT INTO `player` VALUES (7, 'Portage¡ªLisgar', 'Mohamed Alli', 'M', 'Winnipeg', 'Distribution Centre Associate', 2353, '4th');
INSERT INTO `player` VALUES (8, 'Provencher', 'Ross C. Martin', 'M', 'Oakbank', 'Design Coordinator', 4947, '2nd');
INSERT INTO `player` VALUES (9, 'Saint Boniface', 'Matt Schaubroeck', 'M', 'Winnipeg', 'Student', 5502, '3rd');
INSERT INTO `player` VALUES (10, 'Selkirk¡ªInterlake', 'Patricia Cordner', 'F', 'Selkirk', 'Retired', 9506, '2nd');
INSERT INTO `player` VALUES (11, 'Winnipeg Centre', 'Pat Martin', 'M', 'Winnipeg', 'Parliamentarian', 12285, '1st');
INSERT INTO `player` VALUES (12, 'Winnipeg North', 'Judy Wasylycia-Leis', 'F', 'Winnipeg', 'Parliamentarian', 14097, '1st');
INSERT INTO `player` VALUES (13, 'Winnipeg South', 'Sean Robert', 'M', 'Winnipeg', 'Product Consultant - MLCC', 4673, '3rd');
INSERT INTO `player` VALUES (14, 'Winnipeg South Centre', 'Rachel Heinrichs', 'F', 'Winnipeg', 'Student', 5490, '3rd');
COMMIT;

-- ----------------------------
-- Table structure for player_coach
-- ----------------------------
DROP TABLE IF EXISTS `player_coach`;
CREATE TABLE `player_coach` (
  `Player_ID` int NOT NULL,
  `Coach_ID` int NOT NULL,
  `Starting_year` int DEFAULT NULL,
  PRIMARY KEY (`Player_ID`,`Coach_ID`),
  KEY `Coach_ID` (`Coach_ID`),
  CONSTRAINT `player_coach_ibfk_1` FOREIGN KEY (`Player_ID`) REFERENCES `player` (`Player_ID`),
  CONSTRAINT `player_coach_ibfk_2` FOREIGN KEY (`Coach_ID`) REFERENCES `coach` (`Coach_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of player_coach
-- ----------------------------
BEGIN;
INSERT INTO `player_coach` VALUES (1, 1, 2010);
INSERT INTO `player_coach` VALUES (2, 1, 2011);
INSERT INTO `player_coach` VALUES (3, 1, 2012);
INSERT INTO `player_coach` VALUES (4, 2, 2013);
INSERT INTO `player_coach` VALUES (6, 3, 2012);
INSERT INTO `player_coach` VALUES (10, 3, 2011);
INSERT INTO `player_coach` VALUES (14, 5, 2010);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
