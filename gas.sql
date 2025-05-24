/*
 Navicat Premium Data Transfer

 Source Server         : RemoteComplexdatabase
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : gas

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 24/05/2025 13:25:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `Company_ID` int(0) NOT NULL COMMENT '公司的唯一标识符（主键）',
  `Rank` int(0) NOT NULL COMMENT '公司的排名',
  `Company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司的名称',
  `Headquarters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司总部所在地',
  `Main_Industry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司的主要行业',
  `Sales` float NOT NULL COMMENT '公司的销售额（十亿美元）',
  `Profits` float NOT NULL COMMENT '公司的利润（十亿美元）',
  `Assets` float NOT NULL COMMENT '公司的总资产（十亿美元）',
  `Market_Value` float NOT NULL COMMENT '公司的市值（十亿美元）',
  `Founded_Year` int(0) NOT NULL COMMENT '公司成立的年份',
  `CEO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司的首席执行官（CEO）。',
  `Number_Employees` int(0) NOT NULL COMMENT '公司的员工数量。',
  `Number_Branches` int(0) NOT NULL COMMENT '公司的分支机构数量。',
  `Revenue_Growth_Rate` float NOT NULL COMMENT '公司的收入增长率（百分比）。',
  `Net_Profit_Margin` float NOT NULL COMMENT '公司的净利润率（百分比）。',
  `Debt_Equity_Ratio` float NOT NULL COMMENT '公司的债务与股东权益比率。',
  `Environmental_Score` float NOT NULL COMMENT '公司的环境评分（例如：碳排放、可持续发展）。',
  `Social_Score` float NOT NULL COMMENT '公司的社会责任评分（例如：社区贡献、员工福利）。',
  PRIMARY KEY (`Company_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for gas
-- ----------------------------
DROP TABLE IF EXISTS `gas`;
CREATE TABLE `gas`  (
  `Gas_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '燃油的唯一标识符（主键）。',
  `Station_ID` int(0) NOT NULL COMMENT '加油站 ID，引用 gas_station 表的 Station_ID 字段。',
  `Fuel_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '燃油类型（例如：汽油、柴油、液化天然气）。',
  `Brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '燃油品牌（例如：Shell、BP、ExxonMobil）。',
  `Supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '燃油供应商（例如：本地供应商、国际供应商）。',
  `Quality_Grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '燃油质量等级（例如：普通、高级、超级）。',
  `Price_Liter` float NOT NULL COMMENT '每升燃油的价格（美元）。',
  `Tax_per_Liter` float NOT NULL COMMENT '每升燃油的税收（美元）。',
  `Stock_Liters` float NOT NULL COMMENT '燃油的库存量（升）。',
  `Minimum_Stock_Liters` float NOT NULL COMMENT '燃油的最低库存量（升），用于预警。',
  `Last_Delivery_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '最后一次燃油交付的日期。',
  `Next_Delivery_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '下一次燃油交付的日期。',
  `Carbon_Emission` float NOT NULL COMMENT '每升燃油的碳排放量（克/升）。',
  `Sulfur_Content` float NOT NULL COMMENT '燃油的硫含量（百万分之一）。',
  PRIMARY KEY (`Gas_ID`) USING BTREE,
  INDEX `Station_ID`(`Station_ID`) USING BTREE,
  CONSTRAINT `gas_ibfk_1` FOREIGN KEY (`Station_ID`) REFERENCES `gas_station` (`Station_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gas
-- ----------------------------

-- ----------------------------
-- Table structure for gas_station
-- ----------------------------
DROP TABLE IF EXISTS `gas_station`;
CREATE TABLE `gas_station`  (
  `Station_ID` int(0) NOT NULL COMMENT '加油站的唯一标识符（主键）',
  `Open_Year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '加油站的开业年份',
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '加油站的位置（例如：城市、街道）',
  `Manager_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '加油站的经理姓名',
  `Vice_Manager_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '加油站的副经理姓名',
  `Representative_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '加油站的代表姓名',
  `Capacity_Liters` float NULL DEFAULT NULL COMMENT '加油站的燃油总容量（升）',
  `Service_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '加油站的服务类型（例如：自助、全服务、便利店）',
  PRIMARY KEY (`Station_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gas_station
-- ----------------------------

-- ----------------------------
-- Table structure for station_company
-- ----------------------------
DROP TABLE IF EXISTS `station_company`;
CREATE TABLE `station_company`  (
  `Station_ID` int(0) NOT NULL COMMENT '加油站ID，外键',
  `Company_ID` int(0) NOT NULL COMMENT '公司ID，外键',
  `Rank_Year` int(0) NOT NULL COMMENT '排名年份',
  PRIMARY KEY (`Station_ID`, `Company_ID`) USING BTREE,
  INDEX `Company_ID`(`Company_ID`) USING BTREE,
  CONSTRAINT `station_company_ibfk_1` FOREIGN KEY (`Station_ID`) REFERENCES `gas_station` (`Station_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `station_company_ibfk_2` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`Company_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_company
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
