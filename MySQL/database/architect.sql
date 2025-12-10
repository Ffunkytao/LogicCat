/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : architect

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:23:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for architect
-- ----------------------------
DROP TABLE IF EXISTS `architect`;
CREATE TABLE `architect`  (
  `Archiect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Archiect_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of architect
-- ----------------------------
INSERT INTO `architect` VALUES ('1', 'Frank Lloyd Wright', 'American', 'male');
INSERT INTO `architect` VALUES ('2', 'Frank Gehry', 'Canadian', 'male');
INSERT INTO `architect` VALUES ('3', 'Zaha Hadid', 'Iraqi, British', 'female');
INSERT INTO `architect` VALUES ('4', 'Mies Van Der Rohe', 'German, American', 'male');
INSERT INTO `architect` VALUES ('5', 'Le Corbusier', 'Swiss, French', 'male');

-- ----------------------------
-- Table structure for bridge
-- ----------------------------
DROP TABLE IF EXISTS `bridge`;
CREATE TABLE `bridge`  (
  `Architect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建筑师 ID，引用 architect 表的 id 字段',
  `Bridge_ID` int(0) NOT NULL COMMENT '桥梁的唯一标识符（主键）',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '桥梁的名称',
  `Location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '桥梁的位置（例如：城市、国家）',
  `Length_Meters` float NOT NULL COMMENT '桥梁的长度（米）',
  `Length_Feet` float NOT NULL COMMENT '桥梁的长度（英尺）',
  `Material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '桥梁的主要建造材料（例如：混凝土、钢、木材）',
  `Span_Length` float NOT NULL COMMENT '桥梁的跨度长度（米），用于计算桥梁的力学性能',
  `Height_Meters` float NOT NULL COMMENT '桥梁的高度（米）',
  `Load_Capacity` float NOT NULL COMMENT '桥梁的最大承载重量（千克）',
  `Arch_Shape` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '桥梁的拱形形状（例如：抛物线、圆形、悬链线）',
  `Construction_Year` int(0) NOT NULL COMMENT '桥梁的建造年份',
  `Cost_Usd` float NOT NULL COMMENT '桥梁的建造成本（美元）',
  `Maintenance_Cost` float NOT NULL COMMENT '桥梁的年度维护成本（美元）',
  `Vibration_Frequency` float NOT NULL COMMENT '桥梁的振动频率（赫兹），用于分析桥梁的动力学特性',
  PRIMARY KEY (`Bridge_ID`) USING BTREE,
  INDEX `architect_id`(`Architect_ID`) USING BTREE,
  CONSTRAINT `bridge_ibfk_1` FOREIGN KEY (`Architect_ID`) REFERENCES `architect` (`Archiect_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bridge
-- ----------------------------
INSERT INTO `bridge` VALUES ('1', 1, 'Golden Gate Bridge', 'San Francisco, USA', 2737, 8981, 'steel', 1280, 227, 4000000, 'suspension', 1937, 35000000, 1000000, 0.2);
INSERT INTO `bridge` VALUES ('2', 2, 'Brooklyn Bridge', 'New York City, USA', 1834, 6016, 'stone', 486, 84, 2000000, 'suspension', 1883, 15000000, 500000, 0.3);
INSERT INTO `bridge` VALUES ('3', 3, 'Millau Viaduct', 'Millau, France', 2460, 8070, 'concrete', 342, 343, 5000000, 'cable-stayed', 2004, 400000000, 2000000, 0.15);
INSERT INTO `bridge` VALUES ('4', 4, 'Tower Bridge', 'London, UK', 244, 800, 'steel', 61, 65, 1000000, 'bascule', 1894, 1200000, 300000, 0.25);
INSERT INTO `bridge` VALUES ('5', 5, 'Akashi Kaikyō Bridge', 'Kobe, Japan', 3911, 12828, 'steel', 1991, 282, 10000000, 'suspension', 1998, 5000000000, 5000000, 0.1);
INSERT INTO `bridge` VALUES ('1', 6, 'Sydney Harbour Bridge', 'Sydney, Australia', 1149, 3770, 'steel', 503, 134, 3000000, 'arch', 1932, 10000000, 800000, 0.18);
INSERT INTO `bridge` VALUES ('3', 7, 'Charles Bridge', 'Prague, Czech Republic', 516, 1693, 'stone', 13, 13, 500000, 'arch', 1402, 500000, 100000, 0.4);
INSERT INTO `bridge` VALUES ('4', 8, 'Rialto Bridge', 'Venice, Italy', 48, 157, 'stone', 28, 7, 100000, 'arch', 1591, 250000, 50000, 0.5);
INSERT INTO `bridge` VALUES ('5', 9, 'Ponte Vecchio', 'Florence, Italy', 84, 276, 'stone', 30, 4, 50000, 'arch', 1345, 100000, 20000, 0.6);
INSERT INTO `bridge` VALUES ('2', 10, 'Forth Bridge', 'Edinburgh, Scotland', 2467, 8094, 'steel', 521, 110, 4000000, 'cantilever', 1890, 3500000, 700000, 0.22);

-- ----------------------------
-- Table structure for carbon_emissions
-- ----------------------------
DROP TABLE IF EXISTS `carbon_emissions`;
CREATE TABLE `carbon_emissions`  (
  `id` int(0) NOT NULL,
  `emission_factor` decimal(10, 2) NULL DEFAULT NULL,
  `annual_emissions_tonnes` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carbon_emissions
-- ----------------------------

-- ----------------------------
-- Table structure for computer_system
-- ----------------------------
DROP TABLE IF EXISTS `computer_system`;
CREATE TABLE `computer_system`  (
  `cpu_score` int(0) NULL DEFAULT NULL,
  `gpu_score` int(0) NULL DEFAULT NULL,
  `memory_score` int(0) NULL DEFAULT NULL,
  `storage_score` int(0) NULL DEFAULT NULL,
  `overall_score` int(0) NULL DEFAULT NULL,
  `test_temperature_celsius` int(0) NULL DEFAULT NULL,
  `power_consumption_watts` int(0) NULL DEFAULT NULL,
  `rated_operating_temperature_celsius` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of computer_system
-- ----------------------------

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data`  (
  `device_id` int(0) NULL DEFAULT NULL,
  `energy_saved` decimal(10, 2) NULL DEFAULT NULL,
  `timestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of energy_data
-- ----------------------------

-- ----------------------------
-- Table structure for fuzzy_membership
-- ----------------------------
DROP TABLE IF EXISTS `fuzzy_membership`;
CREATE TABLE `fuzzy_membership`  (
  `id` int(0) NOT NULL,
  `variable_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `membership_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `threshold_value` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fuzzy_membership
-- ----------------------------

-- ----------------------------
-- Table structure for mill
-- ----------------------------
DROP TABLE IF EXISTS `mill`;
CREATE TABLE `mill`  (
  `Architect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建筑师 ID，引用 architect 表的 id 字段',
  `Mill_ID` int(0) NOT NULL COMMENT '磨坊的唯一标识符（主键）',
  `Location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '磨坊的位置（例如：城市、国家）',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '磨坊的名称',
  `Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '磨坊的类型（例如：Grondzeiler、Bergmolen）',
  `Built_Year` int(0) NOT NULL COMMENT '磨坊的建造年份',
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
  INDEX `architect_id`(`Architect_ID`) USING BTREE,
  CONSTRAINT `mill_ibfk_1` FOREIGN KEY (`Architect_ID`) REFERENCES `architect` (`Archiect_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mill
-- ----------------------------
INSERT INTO `mill` VALUES ('1', 1, 'Coswarem', 'Le Vieux Molen', 'Grondzeiler', 1840, 'Molenechos (Dutch)', 'wood', 15, 10, 30, 5, 8, 0.6, 50000, 2000);
INSERT INTO `mill` VALUES ('1', 2, 'Donceel', 'Moulin Bertrand', 'Grondzeiler', 1890, 'Molenechos (Dutch)', 'stone', 20, 12, 25, 7, 7, 0.65, 70000, 2500);
INSERT INTO `mill` VALUES ('2', 3, 'Fexhe-le-haut-Clocher', 'Moulin de Fexhe', 'Grondzeiler', 1843, 'Molenechos (Dutch)', 'wood', 18, 11, 28, 6, 7.5, 0.62, 60000, 2200);
INSERT INTO `mill` VALUES ('3', 4, 'Momalle', 'Moulin de Momalle', 'Bergmolen', 1850, 'Molenechos (Dutch)', 'stone', 22, 13, 22, 8, 8.5, 0.7, 80000, 3000);
INSERT INTO `mill` VALUES ('4', 5, 'Othée', 'Moulin du Château', 'Grondzeiler', 1856, 'Molenechos (Dutch)', 'wood', 17, 10.5, 26, 5.5, 7.2, 0.63, 55000, 2100);
INSERT INTO `mill` VALUES ('4', 6, 'Pousset', 'Moulin de Pousset', 'Grondzeiler', 1819, 'Molenechos (Dutch)', 'stone', 19, 11.5, 24, 6.5, 7.8, 0.68, 65000, 2400);
INSERT INTO `mill` VALUES ('5', 7, 'Bruges', 'Moulin de Bruges', 'Tower Mill', 1780, 'Historical landmark', 'stone', 25, 14, 20, 9, 9, 0.75, 90000, 3500);
INSERT INTO `mill` VALUES ('5', 8, 'Amsterdam', 'Moulin d\'Amsterdam', 'Post Mill', 1805, 'Tourist attraction', 'wood', 16, 9.5, 27, 5.8, 7.1, 0.61, 52000, 2050);
INSERT INTO `mill` VALUES ('2', 9, 'Rotterdam', 'Moulin de Rotterdam', 'Smock Mill', 1820, 'Restored in 1990', 'wood', 21, 12.5, 23, 7.2, 7.9, 0.67, 68000, 2600);
INSERT INTO `mill` VALUES ('3', 10, 'Antwerp', 'Moulin d\'Antwerp', 'Tower Mill', 1795, 'Part of a museum', 'stone', 24, 13.5, 21, 8.5, 8.8, 0.72, 85000, 3200);

-- ----------------------------
-- Table structure for structure
-- ----------------------------
DROP TABLE IF EXISTS `structure`;
CREATE TABLE `structure`  (
  `Struct_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '结构的唯一标识符（主键）。',
  `Architect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建筑师 ID，引用 architect 表的 id 字段。',
  `Structure_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的类型（例如：mill、bridge、tower）。',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的名称。',
  `Location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的位置（例如：城市、国家）。',
  `Height_Meters` float NOT NULL COMMENT '结构的高度（米）。',
  `Material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的主要建造材料（例如：钢、混凝土、木材）。',
  `Construction_Year` int(0) NOT NULL COMMENT '结构的建造年份。',
  `Cost_Usd` float NOT NULL COMMENT '结构的建造成本（美元）。',
  `Maintenance_Cost` float NOT NULL COMMENT '结构的年度维护成本（美元）。',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结构的备注信息（例如：历史背景、设计特点）。',
  `Specific_Field_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '特定字段 1（用于存储结构类型的特定属性）。',
  `Specific_Field_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '特定字段 2（用于存储结构类型的特定属性）。',
  `Specific_Field_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '特定字段 3（用于存储结构类型的特定属性）。',
  PRIMARY KEY (`Struct_ID`) USING BTREE,
  INDEX `architect_id`(`Architect_ID`) USING BTREE,
  CONSTRAINT `structure_ibfk_1` FOREIGN KEY (`Architect_ID`) REFERENCES `architect` (`Archiect_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of structure
-- ----------------------------
INSERT INTO `structure` VALUES (1, '1', 'mill', 'Le Vieux Molen', 'Coswarem', 15, 'wood', 1840, 50000, 2000, 'Molenechos (Dutch)', 'Grondzeiler', '10', '30');
INSERT INTO `structure` VALUES (2, '1', 'mill', 'Le Vieux Molen', 'Coswarem', 15, 'wood', 1840, 50000, 2000, 'Molenechos (Dutch)', 'Grondzeiler', '10', '30');
INSERT INTO `structure` VALUES (3, '1', 'mill', 'Le Vieux Molen', 'Coswarem', 15, 'wood', 1840, 50000, 2000, 'Molenechos (Dutch)', 'Grondzeiler', '10', '30');

-- ----------------------------
-- Table structure for tower
-- ----------------------------
DROP TABLE IF EXISTS `tower`;
CREATE TABLE `tower`  (
  `Architect_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建筑师 ID，引用 architect 表的 id 字段。',
  `Tower_ID` int(0) NOT NULL COMMENT '铁塔的唯一标识符（主键）。',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的名称。',
  `Location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的位置（例如：城市、国家）。',
  `Height_meters` float NOT NULL COMMENT '铁塔的高度（米）。',
  `Height_feet` float NOT NULL COMMENT '铁塔的高度（英尺）。',
  `Material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的主要建造材料（例如：钢、混凝土、木材）。',
  `Construction_year` int(0) NOT NULL COMMENT '铁塔的建造年份。',
  `Purpose` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的用途（例如：通信、观光、输电）。',
  `Weight` float NOT NULL COMMENT '铁塔的总重量（千克）。',
  `Base_Width` float NOT NULL COMMENT '铁塔底座的宽度（米）。',
  `Wind_Resistance` float NOT NULL COMMENT '铁塔的设计抗风速度（米/秒）。',
  `Cost_Usd` float NOT NULL COMMENT '铁塔的建造成本（美元）。',
  `Maintenance_Cost` float NOT NULL COMMENT '铁塔的年度维护成本（美元）。',
  `Vibration_Frequency` float NOT NULL COMMENT '铁塔的振动频率（赫兹），用于分析铁塔的动力学特性。',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '铁塔的备注信息（例如：历史背景、设计特点）。',
  PRIMARY KEY (`Tower_ID`) USING BTREE,
  INDEX `architect_id`(`Architect_ID`) USING BTREE,
  CONSTRAINT `tower_ibfk_1` FOREIGN KEY (`Architect_ID`) REFERENCES `architect` (`Archiect_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tower
-- ----------------------------
INSERT INTO `tower` VALUES ('1', 1, 'Eiffel Tower', 'Paris, France', 300, 984, 'steel', 1889, 'Tourism', 7300000, 125, 42, 1500000, 100000, 0.1, 'Iconic landmark and cultural symbol of France.');
INSERT INTO `tower` VALUES ('2', 2, 'Tokyo Tower', 'Tokyo, Japan', 333, 1092, 'steel', 1958, 'Communication, Tourism', 4000000, 80, 45, 800000, 50000, 0.15, 'Inspired by the Eiffel Tower, used for broadcasting and observation.');
INSERT INTO `tower` VALUES ('3', 3, 'CN Tower', 'Toronto, Canada', 553, 1815, 'concrete', 1976, 'Communication, Tourism', 117910000, 33, 50, 63000000, 2000000, 0.08, 'Tallest free-standing structure in the Western Hemisphere.');
INSERT INTO `tower` VALUES ('4', 4, 'Burj Khalifa', 'Dubai, UAE', 828, 2717, 'steel, concrete', 2010, 'Mixed-use', 500000000, 50, 60, 1500000000, 10000000, 0.05, 'Tallest structure in the world, used for residential, commercial, and observation purposes.');
INSERT INTO `tower` VALUES ('5', 5, 'Shanghai Tower', 'Shanghai, China', 632, 2073, 'steel, concrete', 2015, 'Mixed-use', 850000000, 60, 55, 2400000000, 15000000, 0.07, 'Second tallest building in the world, designed for energy efficiency.');
INSERT INTO `tower` VALUES ('1', 6, 'Sample Steel Tower', 'Sample City, USA', 200, 656, 'steel', 2025, 'Observation', 500000, 40, 50, 1000000, 500000, 0.1, 'Test tower for maintenance cost analysis.');
INSERT INTO `tower` VALUES ('1', 7, 'Sample Concrete Tower', 'Sample City, USA', 200, 656, 'concrete', 2025, 'Observation', 500000, 40, 50, 1000000, 200000, 0.1, 'Test tower for maintenance cost comparison.');

SET FOREIGN_KEY_CHECKS = 1;
