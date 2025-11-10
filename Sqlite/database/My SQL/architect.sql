/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : architect

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 20:06:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for architect
-- ----------------------------
DROP TABLE IF EXISTS `architect`;
CREATE TABLE `architect` (
  `Archiect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Archiect_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for bridge
-- ----------------------------
DROP TABLE IF EXISTS `bridge`;
CREATE TABLE `bridge` (
  `Architect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建筑师 ID，引用 architect 表的 id 字段',
  `Bridge_ID` int NOT NULL COMMENT '桥梁的唯一标识符（主键）',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '桥梁的名称',
  `Location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '桥梁的位置（例如：城市、国家）',
  `Length_Meters` float NOT NULL COMMENT '桥梁的长度（米）',
  `Length_Feet` float NOT NULL COMMENT '桥梁的长度（英尺）',
  `Material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '桥梁的主要建造材料（例如：混凝土、钢、木材）',
  `Span_Length` float NOT NULL COMMENT '桥梁的跨度长度（米），用于计算桥梁的力学性能',
  `Height_Meters` float NOT NULL COMMENT '桥梁的高度（米）',
  `Load_Capacity` float NOT NULL COMMENT '桥梁的最大承载重量（千克）',
  `Arch_Shape` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '桥梁的拱形形状（例如：抛物线、圆形、悬链线）',
  `Construction_Year` int NOT NULL COMMENT '桥梁的建造年份',
  `Cost_Usd` float NOT NULL COMMENT '桥梁的建造成本（美元）',
  `Maintenance_Cost` float NOT NULL COMMENT '桥梁的年度维护成本（美元）',
  `Vibration_Frequency` float NOT NULL COMMENT '桥梁的振动频率（赫兹），用于分析桥梁的动力学特性',
  PRIMARY KEY (`Bridge_ID`) USING BTREE,
  KEY `architect_id` (`Architect_ID`),
  CONSTRAINT `bridge_ibfk_1` FOREIGN KEY (`Architect_ID`) REFERENCES `architect` (`Archiect_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for mill
-- ----------------------------
DROP TABLE IF EXISTS `mill`;
CREATE TABLE `mill` (
  `Architect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建筑师 ID，引用 architect 表的 id 字段',
  `Mill_ID` int NOT NULL COMMENT '磨坊的唯一标识符（主键）',
  `Location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '磨坊的位置（例如：城市、国家）',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '磨坊的名称',
  `Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '磨坊的类型（例如：Grondzeiler、Bergmolen）',
  `Built_Year` int NOT NULL COMMENT '磨坊的建造年份',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '磨坊的备注信息（例如：历史背景、修复记录）',
  `Material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '磨坊的主要建造材料（例如：木材、石头）',
  `Height_Meters` float NOT NULL COMMENT '磨坊的高度（米）',
  `Blade_Length` float NOT NULL COMMENT '磨坊叶片的长度（米），用于计算风能利用率',
  `Rotation_Speed` float NOT NULL COMMENT '磨坊叶片的旋转速度（每分钟转数）',
  `Power_Output` float NOT NULL COMMENT '磨坊的功率输出（千瓦），用于计算能量效率',
  `Wind_Speed` float NOT NULL COMMENT '磨坊设计时的平均风速（米/秒）',
  `Efficiency` float NOT NULL COMMENT '磨坊的能量转换效率（百分比）',
  `Cost_Usd` float NOT NULL COMMENT '磨坊的建造成本（美元）',
  `Maintenance_Cost` float NOT NULL COMMENT '磨坊的年度维护成本（美元）',
  PRIMARY KEY (`Mill_ID`) USING BTREE,
  KEY `architect_id` (`Architect_ID`),
  CONSTRAINT `mill_ibfk_1` FOREIGN KEY (`Architect_ID`) REFERENCES `architect` (`Archiect_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for structure
-- ----------------------------
DROP TABLE IF EXISTS `structure`;
CREATE TABLE `structure` (
  `Struct_ID` int NOT NULL AUTO_INCREMENT COMMENT '结构的唯一标识符（主键）。',
  `Architect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建筑师 ID，引用 architect 表的 id 字段。',
  `Structure_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的类型（例如：mill、bridge、tower）。',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的名称。',
  `Location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的位置（例如：城市、国家）。',
  `Height_Meters` float NOT NULL COMMENT '结构的高度（米）。',
  `Material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的主要建造材料（例如：钢、混凝土、木材）。',
  `Construction_Year` int NOT NULL COMMENT '结构的建造年份。',
  `Cost_Usd` float NOT NULL COMMENT '结构的建造成本（美元）。',
  `Maintenance_Cost` float NOT NULL COMMENT '结构的年度维护成本（美元）。',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的备注信息（例如：历史背景、设计特点）。',
  `Specific_Field_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '特定字段 1（用于存储结构类型的特定属性）。',
  `Specific_Field_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '特定字段 2（用于存储结构类型的特定属性）。',
  `Specific_Field_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '特定字段 3（用于存储结构类型的特定属性）。',
  PRIMARY KEY (`Struct_ID`) USING BTREE,
  KEY `architect_id` (`Architect_ID`),
  CONSTRAINT `structure_ibfk_1` FOREIGN KEY (`Architect_ID`) REFERENCES `architect` (`Archiect_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for tower
-- ----------------------------
DROP TABLE IF EXISTS `tower`;
CREATE TABLE `tower` (
  `Architect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建筑师 ID，引用 architect 表的 id 字段。',
  `Tower_ID` int NOT NULL COMMENT '铁塔的唯一标识符（主键）。',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的名称。',
  `Location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的位置（例如：城市、国家）。',
  `Height_meters` float NOT NULL COMMENT '铁塔的高度（米）。',
  `Height_feet` float NOT NULL COMMENT '铁塔的高度（英尺）。',
  `Material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的主要建造材料（例如：钢、混凝土、木材）。',
  `Construction_year` int NOT NULL COMMENT '铁塔的建造年份。',
  `Purpose` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的用途（例如：通信、观光、输电）。',
  `Weight` float NOT NULL COMMENT '铁塔的总重量（千克）。',
  `Base_Width` float NOT NULL COMMENT '铁塔底座的宽度（米）。',
  `Wind_Resistance` float NOT NULL COMMENT '铁塔的设计抗风速度（米/秒）。',
  `Cost_Usd` float NOT NULL COMMENT '铁塔的建造成本（美元）。',
  `Maintenance_Cost` float NOT NULL COMMENT '铁塔的年度维护成本（美元）。',
  `Vibration_Frequency` float NOT NULL COMMENT '铁塔的振动频率（赫兹），用于分析铁塔的动力学特性。',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的备注信息（例如：历史背景、设计特点）。',
  PRIMARY KEY (`Tower_ID`) USING BTREE,
  KEY `architect_id` (`Architect_ID`),
  CONSTRAINT `tower_ibfk_1` FOREIGN KEY (`Architect_ID`) REFERENCES `architect` (`Archiect_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
