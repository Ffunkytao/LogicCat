/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : gas

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:25:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `carbon_emissions` VALUES (1, 2.50, 15000.00);
INSERT INTO `carbon_emissions` VALUES (2, 2.80, 18000.00);
INSERT INTO `carbon_emissions` VALUES (3, 2.30, 12000.00);
INSERT INTO `carbon_emissions` VALUES (4, 2.60, 16000.00);
INSERT INTO `carbon_emissions` VALUES (5, 2.40, 14000.00);

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
INSERT INTO `company` VALUES (101, 1, '中石油', '北京', '石油与天然气', 500, 36, 5000, 8000, 1980, '张三', 120000, 500, 8, 5, 0.6, 78, 85);
INSERT INTO `company` VALUES (102, 2, '壳牌中国', '上海', '能源与化工', 320, 38.4, 4800, 7500, 1995, '李四', 90000, 300, 8, 12, 0.7, 80, 90);
INSERT INTO `company` VALUES (103, 3, 'BP中国', '广州', '能源与化工', 280, 33.6, 4500, 7000, 2000, '王五', 70000, 200, 8, 12, 0.5, 75, 88);
INSERT INTO `company` VALUES (104, 4, '埃克森美孚中国', '深圳', '石油与天然气', 350, 42, 5200, 8500, 1990, '赵六', 100000, 400, 8, 12, 0.65, 82, 92);
INSERT INTO `company` VALUES (105, 5, '道达尔能源中国', '成都', '可再生能源', 290, 34.8, 4600, 7200, 2005, '孙七', 80000, 250, 8, 12, 0.6, 79, 89);
INSERT INTO `company` VALUES (106, 6, '示例能源公司', '天津', '能源与化工', 500, 50, 6000, 9000, 2010, '陈八', 50000, 150, 10, 10, 0.8, 85, 88);
INSERT INTO `company` VALUES (107, 7, '某石油公司', '重庆', '石油与天然气', 400, 48, 5500, 8200, 2008, '刘九', 60000, 180, 7.5, 12, 0.65, 80, 87);
INSERT INTO `company` VALUES (108, 8, '指定公司名称', '南京', '能源与化工', 450, 54, 5800, 8300, 2012, '周十三', 55000, 160, 9, 11, 0.7, 83, 86);
INSERT INTO `company` VALUES (109, 9, '测试公司', '重庆', '能源与化工', 300, 36, 5000, 8000, 2020, '王十七', 60000, 180, 10, 12, 0.8, 80, 85);
INSERT INTO `company` VALUES (110, 6, '示例小公司', '天津', '能源与化工', 100, 10, 800, 1200, 2020, '陈八', 5000, 50, 5, 5, 0.5, 70, 75);
INSERT INTO `company` VALUES (111, 7, '测试公司', '杭州', '新能源', 500, 50, 6000, 9000, 2021, '测试CEO', 10000, 100, 10, 8, 0.7, 85, 90);
INSERT INTO `company` VALUES (113, 9, '测试公司', '测试城市', '能源', 750, 90, 2000, 3000, 2022, '测试CEO', 5000, 50, 5, 12, 0.6, 80, 85);
INSERT INTO `company` VALUES (120, 10, '测试公司4000', '测试总部', '能源', 4000, 1120, 10000, 15000, 2024, '测试CEO', 20000, 100, 10, 28, 4000, 85, 90);
INSERT INTO `company` VALUES (888, 8, '示例公司', '北京', '能源', 2000, 500, 6000, 9000, 2020, '示例CEO', 50000, 100, 10, 25, 2500, 85, 90);
INSERT INTO `company` VALUES (999, 99, '测试公司999', '测试总部', '能源与化工', 300, 36, 5000, 8000, 2025, '张测试', 5000, 50, 5, 12, 0.8, 85, 90);
INSERT INTO `company` VALUES (1200, 10, '测试公司', '测试总部', '能源', 1500, 300, 5000, 8000, 2020, '测试CEO', 10000, 100, 10, 20, 2000, 85, 90);
INSERT INTO `company` VALUES (1501, 99, '示例公司', '测试总部', '能源与化工', 1000, 120, 1500, 2000, 2024, '测试CEO', 5000, 50, 10, 12, 0.6, 80, 85);
INSERT INTO `company` VALUES (4002, 15, '测试公司4002', '上海', '能源', 3500, 525, 7000, 10000, 2022, '张测试', 15000, 80, 12, 15, 2, 82, 88);
INSERT INTO `company` VALUES (5001, 20, '测试公司500', '北京', '能源', 500, 75, 1000, 1500, 2023, '王测试', 5000, 50, 5, 15, 1, 80, 85);
INSERT INTO `company` VALUES (7012, 20, '测试公司7012', '测试总部', '能源', 2000, 300, 5000, 8000, 2024, '测试CEO', 10000, 50, 10, 15, 1.5, 80, 85);
INSERT INTO `company` VALUES (8188, 10, '查询测试公司', '测试总部', '能源', 1000, 150, 1500, 3000, 2022, '张测试', 1000, 10, 5, 12, 0.6, 75, 80);
INSERT INTO `company` VALUES (8881, 10, '测试公司', '测试总部', '能源', 1200, 150, 5000, 8000, 2020, '测试CEO', 10000, 50, 10, 12.5, 0.8, 85, 90);
INSERT INTO `company` VALUES (8888, 10, '测试公司', '北京', '能源', 1000, 120, 1500, 3000, 2020, '测试CEO', 10000, 50, 5, 12, 0.6, 80, 85);
INSERT INTO `company` VALUES (9992, 10, '测试能源公司', '北京', '能源', 500, 25, 1000, 1500, 2020, '测试CEO', 5000, 50, 5, 5, 0.6, 80, 85);
INSERT INTO `company` VALUES (9999, 10, '测试公司', '北京', '能源', 900, 135, 3000, 5000, 2020, '测试CEO', 10000, 100, 8, 15, 1200, 85, 90);
INSERT INTO `company` VALUES (10000, 10, '测试公司', '测试总部', '能源', 500, 50, 1000, 1500, 2024, '测试CEO', 5000, 50, 5, 10, 2, 80, 85);
INSERT INTO `company` VALUES (41401, 50, 'Oil Company A', 'Houston', 'Oil and Gas', 100, 10, 800, 1200, 1980, 'John Smith', 50000, 200, 5, 10, 0.6, 70, 80);
INSERT INTO `company` VALUES (41601, 51, 'Oil Company B', 'London', 'Energy and Chemical', 500, 40, 4000, 6000, 1975, 'David Brown', 100000, 300, 5, 8, 0.7, 75, 85);
INSERT INTO `company` VALUES (41701, 52, 'Oil Company C', 'Dubai', 'Petroleum', 1000, 500, 8000, 12000, 1990, 'Ahmed Al-Mansoor', 80000, 400, 8, 50, 0.8, 65, 75);
INSERT INTO `company` VALUES (41901, 53, 'Oil Company D', 'Singapore', 'Energy', 600, 72, 5000, 7500, 1985, 'James Wilson', 50000, 250, 8, 12, 0.7, 78, 82);
INSERT INTO `company` VALUES (42101, 54, 'Oil Company E', 'New York', 'Oil and Gas', 800, 160, 10000, 10000, 1970, 'Michael Johnson', 120000, 500, 6, 20, 0.9, 72, 78);
INSERT INTO `company` VALUES (42301, 55, 'Oil Company F', 'Tokyo', 'Energy', 800, 120, 6000, 9000, 1988, 'Yuki Tanaka', 200000, 600, 7, 15, 0.6, 80, 85);
INSERT INTO `company` VALUES (42501, 56, 'Oil Company G', 'Paris', 'Energy', 1000, 250, 12000, 50000, 1965, 'Pierre Dubois', 150000, 700, 9, 25, 1.2, 68, 82);
INSERT INTO `company` VALUES (42701, 57, 'Oil Company H', 'Moscow', 'Oil and Gas', 50, 7.5, 400, 600, 1995, 'Ivan Petrov', 100000, 350, 6, 15, 0.5, 74, 79);
INSERT INTO `company` VALUES (42801, 58, 'Oil Company I', 'Sydney', 'Energy', 30, 3, 250, 400, 2000, 'Robert Williams', 50000, 150, 5, 10, 0.4, 82, 88);
INSERT INTO `company` VALUES (42901, 59, 'Oil Company J', 'Toronto', 'Oil and Gas', 1000, 500, 8000, 12000, 1978, 'Christopher Lee', 10000000, 100000, 12, 50, 0.9, 70, 80);
INSERT INTO `company` VALUES (43101, 60, 'Oil Company K', 'Seoul', 'Energy', 80, 9.6, 600, 900, 1992, 'Kim Min-ho', 70000, 200, 7, 12, 0.8, 76, 83);
INSERT INTO `company` VALUES (43201, 61, 'Oil Company L', 'Mumbai', 'Petroleum', 40, 4.8, 350, 500, 2005, 'Raj Sharma', 40000, 120, 8, 12, 0.6, 79, 84);
INSERT INTO `company` VALUES (43301, 62, 'Oil Company M', 'Sao Paulo', 'Energy', 10000, 5000, 60000, 90000, 1960, 'Carlos Silva', 100000000, 1000000, 15, 50, 1, 65, 75);
INSERT INTO `company` VALUES (43501, 63, 'Oil Company N', 'Amsterdam', 'Energy', 300, 45, 2500, 4000, 1983, 'Jan de Vries', 150000, 450, 8, 15, 0.7, 81, 86);
INSERT INTO `company` VALUES (43601, 64, 'Oil Company O', 'Brussels', 'Oil and Gas', 60, 7.2, 500, 750, 1998, 'Thomas Moreau', 30000, 100, 6, 12, 0.5, 83, 87);
INSERT INTO `company` VALUES (43701, 65, 'Oil Company P', 'Zurich', 'Energy', 1000000, 500000, 8000000, 12000000, 1955, 'Markus Fischer', 1000000000, 100000000, 20, 50, 1.5, 60, 70);
INSERT INTO `company` VALUES (43901, 66, 'Oil Company Q', 'Oslo', 'Oil and Gas', 2000, 240, 1500, 2500, 1972, 'Lars Olsen', 80000, 300, 9, 12, 1.5, 85, 90);
INSERT INTO `company` VALUES (44001, 67, 'Oil Company R', 'Stockholm', 'Energy', 50, 6, 400, 600, 2002, 'Anders Nilsson', 25000, 80, 4, 12, 0.4, 87, 92);
INSERT INTO `company` VALUES (44301, 69, 'Oil Company T', 'Vienna', 'Energy', 2500, 400, 2000, 3500, 1968, 'Franz Huber', 120000, 400, 10, 16, 0.8, 84, 89);
INSERT INTO `company` VALUES (44401, 70, 'Oil Company U', 'Athens', 'Oil and Gas', 70, 10.5, 600, 900, 1993, 'Dimitrios Papadopoulos', 35000, 110, 5, 15, 0.6, 80, 85);
INSERT INTO `company` VALUES (44701, 72, 'Oil Company W', 'Warsaw', 'Energy', 3000, 540, 2500, 4000, 1975, 'Piotr Kowalski', 90000, 350, 11, 18, 1.8, 78, 83);
INSERT INTO `company` VALUES (44801, 73, 'Oil Company X', 'Budapest', 'Oil and Gas', 90, 13.5, 750, 1100, 1996, 'Istvan Nagy', 45000, 140, 7, 15, 0.7, 82, 87);
INSERT INTO `company` VALUES (45201, 75, 'Oil Company Z', 'Rome', 'Oil and Gas', 70, 8.4, 550, 800, 1994, 'Giuseppe Rossi', 38000, 130, 4, 12, 0.5, 85, 90);
INSERT INTO `company` VALUES (45301, 76, 'Oil Company AA', 'Madrid', 'Energy', 100000000000000, 50000000000000, 800000000000000, 100000000000000, 1910, 'Juan Garcia', 10000000, 500000, 40, 50, 5, 40, 50);
INSERT INTO `company` VALUES (45501, 77, 'Oil Company BB', 'Barcelona', 'Oil and Gas', 75, 6, 600, 900, 1997, 'Carlos Rodriguez', 42000, 160, 6, 8, 0.6, 83, 88);
INSERT INTO `company` VALUES (45901, 78, 'Oil Company CC', 'Milan', 'Energy', 5000, 600, 4000, 7000, 1963, 'Marco Bianchi', 100000, 500, 8, 12, 1.2, 79, 84);
INSERT INTO `company` VALUES (46001, 79, 'Oil Company DD', 'Helsinki', 'Oil and Gas', 200, 24, 1500, 2500, 1987, 'Mika Virtanen', 100000, 500, 9, 12, 0.8, 86, 91);
INSERT INTO `company` VALUES (50000, 50, 'Oil Company A', 'Houston', 'Oil and Gas', 100, 10, 800, 1200, 1980, 'John Smith', 50000, 200, 5, 10, 0.6, 70, 80);
INSERT INTO `company` VALUES (50001, 60, 'Oil Company K', 'Seoul', 'Energy', 80, 9.6, 600, 900, 1992, 'Kim Min-ho', 70000, 200, 7, 12, 0.8, 76, 83);
INSERT INTO `company` VALUES (50414, 50, 'Oil Company A', 'Houston', 'Oil and Gas', 100, 10, 800, 1200, 1980, 'John Smith', 50000, 200, 5, 10, 0.6, 70, 80);
INSERT INTO `company` VALUES (50416, 51, 'Oil Company B', 'London', 'Energy and Chemical', 500, 40, 4000, 6000, 1975, 'David Brown', 100000, 300, 5, 8, 0.7, 75, 85);
INSERT INTO `company` VALUES (50417, 52, 'Oil Company C', 'Dubai', 'Petroleum', 1000, 500, 8000, 12000, 1990, 'Ahmed Al-Mansoor', 80000, 400, 8, 50, 0.8, 65, 75);
INSERT INTO `company` VALUES (50419, 53, 'Oil Company D', 'Singapore', 'Energy', 600, 72, 5000, 7500, 1985, 'James Wilson', 50000, 250, 8, 12, 0.7, 78, 82);
INSERT INTO `company` VALUES (50421, 54, 'Oil Company E', 'New York', 'Oil and Gas', 800, 160, 10000, 10000, 1970, 'Michael Johnson', 120000, 500, 6, 20, 0.9, 72, 78);
INSERT INTO `company` VALUES (50423, 55, 'Oil Company F', 'Tokyo', 'Energy', 800, 120, 6000, 9000, 1988, 'Yuki Tanaka', 200000, 600, 7, 15, 0.6, 80, 85);
INSERT INTO `company` VALUES (50425, 56, 'Oil Company G', 'Paris', 'Energy', 1000, 250, 12000, 50000, 1965, 'Pierre Dubois', 150000, 700, 9, 25, 1.2, 68, 82);
INSERT INTO `company` VALUES (50427, 57, 'Oil Company H', 'Moscow', 'Oil and Gas', 50, 7.5, 400, 600, 1995, 'Ivan Petrov', 100000, 350, 6, 15, 0.5, 74, 79);
INSERT INTO `company` VALUES (50428, 58, 'Oil Company I', 'Sydney', 'Energy', 30, 3, 250, 400, 2000, 'Robert Williams', 50000, 150, 5, 10, 0.4, 82, 88);
INSERT INTO `company` VALUES (50429, 59, 'Oil Company J', 'Toronto', 'Oil and Gas', 1000, 500, 8000, 12000, 1978, 'Christopher Lee', 10000000, 100000, 12, 50, 0.9, 70, 80);
INSERT INTO `company` VALUES (50431, 60, 'Oil Company K', 'Seoul', 'Energy', 80, 9.6, 600, 900, 1992, 'Kim Min-ho', 70000, 200, 7, 12, 0.8, 76, 83);
INSERT INTO `company` VALUES (50432, 61, 'Oil Company L', 'Mumbai', 'Petroleum', 40, 4.8, 350, 500, 2005, 'Raj Sharma', 40000, 120, 8, 12, 0.6, 79, 84);
INSERT INTO `company` VALUES (50433, 62, 'Oil Company M', 'Sao Paulo', 'Energy', 10000, 5000, 60000, 90000, 1960, 'Carlos Silva', 100000000, 1000000, 15, 50, 1, 65, 75);
INSERT INTO `company` VALUES (50435, 63, 'Oil Company N', 'Amsterdam', 'Energy', 300, 45, 2500, 4000, 1983, 'Jan de Vries', 150000, 450, 8, 15, 0.7, 81, 86);
INSERT INTO `company` VALUES (50436, 64, 'Oil Company O', 'Brussels', 'Oil and Gas', 60, 7.2, 500, 750, 1998, 'Thomas Moreau', 30000, 100, 6, 12, 0.5, 83, 87);
INSERT INTO `company` VALUES (50437, 65, 'Oil Company P', 'Zurich', 'Energy', 1000000, 500000, 8000000, 12000000, 1955, 'Markus Fischer', 1000000000, 100000000, 20, 50, 1.5, 60, 70);
INSERT INTO `company` VALUES (50439, 66, 'Oil Company Q', 'Oslo', 'Oil and Gas', 2000, 240, 1500, 2500, 1972, 'Lars Olsen', 80000, 300, 9, 12, 1.5, 85, 90);
INSERT INTO `company` VALUES (50440, 67, 'Oil Company R', 'Stockholm', 'Energy', 50, 6, 400, 600, 2002, 'Anders Nilsson', 25000, 80, 4, 12, 0.4, 87, 92);
INSERT INTO `company` VALUES (50443, 69, 'Oil Company T', 'Vienna', 'Energy', 2500, 400, 2000, 3500, 1968, 'Franz Huber', 120000, 400, 10, 16, 0.8, 84, 89);
INSERT INTO `company` VALUES (50444, 70, 'Oil Company U', 'Athens', 'Oil and Gas', 70, 10.5, 600, 900, 1993, 'Dimitrios Papadopoulos', 35000, 110, 5, 15, 0.6, 80, 85);
INSERT INTO `company` VALUES (50445, 71, 'Oil Company V', 'Lisbon', 'Energy', 10000000000, 5000000000, 80000000000, 120000000000, 1935, 'Jose Santos', 1000000000, 1000000000, 30, 50, 3, 50, 60);
INSERT INTO `company` VALUES (50447, 72, 'Oil Company W', 'Warsaw', 'Energy', 3000, 540, 2500, 4000, 1975, 'Piotr Kowalski', 90000, 350, 11, 18, 1.8, 78, 83);
INSERT INTO `company` VALUES (50448, 73, 'Oil Company X', 'Budapest', 'Oil and Gas', 90, 13.5, 750, 1100, 1996, 'Istvan Nagy', 45000, 140, 7, 15, 0.7, 82, 87);
INSERT INTO `company` VALUES (50449, 74, 'Oil Company Y', 'Prague', 'Energy', 2000000000, 2000000000, 2000000000, 2000000000, 1920, 'Petr Novak', 2000000000, 2000000000, 35, 50, 4, 45, 55);
INSERT INTO `company` VALUES (50452, 75, 'Oil Company Z', 'Rome', 'Oil and Gas', 70, 8.4, 550, 800, 1994, 'Giuseppe Rossi', 38000, 130, 4, 12, 0.5, 85, 90);
INSERT INTO `company` VALUES (50453, 76, 'Oil Company AA', 'Madrid', 'Energy', 100000000000000, 50000000000000, 800000000000000, 100000000000000, 1910, 'Juan Garcia', 10000000, 500000, 40, 50, 5, 40, 50);
INSERT INTO `company` VALUES (50455, 77, 'Oil Company BB', 'Barcelona', 'Oil and Gas', 75, 6, 600, 900, 1997, 'Carlos Rodriguez', 42000, 160, 6, 8, 0.6, 83, 88);
INSERT INTO `company` VALUES (50459, 78, 'Oil Company CC', 'Milan', 'Energy', 5000, 600, 4000, 7000, 1963, 'Marco Bianchi', 100000, 500, 8, 12, 1.2, 79, 84);
INSERT INTO `company` VALUES (50460, 79, 'Oil Company DD', 'Helsinki', 'Oil and Gas', 200, 24, 1500, 2500, 1987, 'Mika Virtanen', 100000, 500, 9, 12, 0.8, 86, 91);
INSERT INTO `company` VALUES (99999, 999, 'Test Energy Corp', 'Beijing', 'Energy', 100, 10, 500, 5000, 2020, 'Test CEO', 100000, 10, 5, 10, 1, 70, 75);

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
INSERT INTO `computer_system` VALUES (85, 90, 80, 75, 82, 45, 650, 70);
INSERT INTO `computer_system` VALUES (92, 88, 85, 90, 89, 42, 720, 75);
INSERT INTO `computer_system` VALUES (78, 82, 88, 80, 82, 48, 580, 65);

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
INSERT INTO `energy_data` VALUES (101, 2500.50, '2025-08-01 10:00:00');
INSERT INTO `energy_data` VALUES (102, 1800.75, '2025-08-01 11:30:00');
INSERT INTO `energy_data` VALUES (103, 3200.25, '2025-08-01 12:45:00');
INSERT INTO `energy_data` VALUES (104, 1500.80, '2025-08-01 14:20:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 50477 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gas
-- ----------------------------
INSERT INTO `gas` VALUES (1, 1001, '柴油', 'Shell', '国际供应商', '高级', 1.5, 0.3, 100000, 10000, '2023-01-15', '2023-02-15', 2700, 50);
INSERT INTO `gas` VALUES (2, 1001, '柴油', 'BP', '本地供应商', '普通', 1.45, 0.28, 120000, 12000, '2023-02-01', '2023-03-01', 2720, 45);
INSERT INTO `gas` VALUES (3, 1001, '柴油', 'ExxonMobil', '国际供应商', '超级', 1.6, 0.35, 80000, 8000, '2023-03-10', '2023-04-10', 2680, 55);
INSERT INTO `gas` VALUES (4, 2001, '柴油', 'Total', '本地供应商', '普通', 1.4, 0.25, 150000, 15000, '2023-04-05', '2023-05-05', 2710, 40);
INSERT INTO `gas` VALUES (5, 2001, '柴油', 'Chevron', '国际供应商', '高级', 1.55, 0.32, 90000, 9000, '2023-05-20', '2023-06-20', 2690, 60);
INSERT INTO `gas` VALUES (6, 1001, '汽油', 'Shell', '本地供应商', '普通', 1.5, 0.3, 8000, 10000, '2023-05-01', '2023-06-01', 2500, 45);
INSERT INTO `gas` VALUES (7, 2001, '柴油', 'BP', '国际供应商', '高级', 1.6, 0.35, 9000, 12000, '2023-05-10', '2023-06-10', 2700, 50);
INSERT INTO `gas` VALUES (8, 1001, '汽油', 'BP', '国际供应商', '高级', 1.7, 0.35, 10000, 8000, '2025-06-24', '2025-07-24', 2600, 40);
INSERT INTO `gas` VALUES (9, 4001, '柴油', 'Shell', '国际供应商', '高级', 1.5, 0.3, 5000, 6000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (10, 5001, '柴油', 'Shell', '国际供应商', '高级', 1.5, 0.3, 80000, 10000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (11, 6001, '柴油', 'Shell', '国际供应商', '高级', 1.5, 0.3, 9500, 10000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (12, 7001, '柴油', 'BP', '国际供应商', '高级', 1.5, 0.3, 999999, 500000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (13, 8001, '柴油', 'Shell', '国际供应商', '高级', 1.5, 0.3, 5000, 1000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (14, 1001, '液化天然气', 'TestBrand', 'TestSupplier', '高级', 1.2, 0.2, 50000, 5000, '2025-06-01', '2025-07-01', 2000, 10);
INSERT INTO `gas` VALUES (15, 1001, '液化天然气', '示例品牌', '示例供应商', '高级', 1.5, 0.3, 50000, 5000, '2025-06-01', '2025-07-01', 2.5, 10);
INSERT INTO `gas` VALUES (16, 1001, '柴油', '示例品牌', '示例供应商', '普通', 1.4, 0.25, 15000, 10000, '2025-06-15', '2025-07-15', 2.5, 20);
INSERT INTO `gas` VALUES (17, 1001, '柴油', '示例品牌', '示例供应商', '普通', 1.5, 0.3, 25000, 15000, '2025-06-20', '2025-07-20', 2.5, 15);
INSERT INTO `gas` VALUES (18, 3001, '柴油', '示例品牌', '示例供应商', '高级', 1.6, 0.32, 1500000, 10000, '2025-06-25', '2025-07-25', 2.5, 10);
INSERT INTO `gas` VALUES (19, 6011, '柴油', '示例品牌', '示例供应商', '高级', 1.6, 0.32, 1500000, 10000, '2025-06-25', '2025-07-25', 2.5, 10);
INSERT INTO `gas` VALUES (20, 1001, '柴油', '测试品牌', '测试供应商', '高级', 1.5, 0.3, 40000, 25000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (21, 7011, '柴油', '测试品牌', '测试供应商', '高级', 1.5, 0.3, 3000000, 1000000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (22, 1001, '柴油', '示例品牌', '示例供应商', '高级', 1.5, 0.3, 200000, 50000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (23, 1001, '柴油', '示例品牌', '示例供应商', '高级', 1.5, 0.3, 50000, 30000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (24, 7021, '柴油', '测试品牌', '测试供应商', '高级', 1.5, 0.3, 5000000, 1000000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (25, 1001, '柴油', '示例品牌', '示例供应商', '高级', 1.5, 0.3, 300000, 50000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (26, 1001, '柴油', '示例品牌', '示例供应商', '高级', 1.5, 0.3, 70000, 40000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (27, 7031, '柴油', '示例品牌', '示例供应商', '高级', 1.6, 0.35, 10000000, 5000000, '2025-06-24', '2025-07-24', 2700, 50);
INSERT INTO `gas` VALUES (28, 8001, '柴油', '示例品牌', '示例供应商', '高级', 1.6, 0.35, 500000, 100000, '2025-06-24', '2025-07-24', 2.8, 50);
INSERT INTO `gas` VALUES (29, 8011, '柴油', '示例品牌', '示例供应商', '高级', 1.6, 0.35, 500000, 100000, '2025-06-24', '2025-07-24', 2.8, 50);
INSERT INTO `gas` VALUES (100, 1001, '柴油', '测试品牌', '本地供应商', '高级', 1.5, 0.3, 150000, 80000, '2025-06-01', '2025-07-01', 2700, 50);
INSERT INTO `gas` VALUES (200, 7051, '柴油', '测试品牌', '本地供应商', '高级', 1.6, 0.32, 20000000, 10000, '2025-06-01', '2025-07-01', 2700, 50);
INSERT INTO `gas` VALUES (300, 9021, '柴油', '示例品牌', '本地供应商', '高级', 1.5, 0.3, 20000000, 10000, '2025-06-01', '2025-07-01', 2700, 50);
INSERT INTO `gas` VALUES (999, 3001, '柴油', '测试品牌', '测试供应商', '高级', 1.5, 0.3, 20000000, 10000, '2025-06-01', '2025-07-01', 2500, 50);
INSERT INTO `gas` VALUES (1011, 3001, '柴油', '测试品牌', '本地供应商', '普通', 1.5, 0.3, 50000, 10000, '2025-06-01', '2025-07-01', 2.5, 50);
INSERT INTO `gas` VALUES (8888, 8888, '柴油', '测试品牌', '测试供应商', '高级', 1.5, 0.3, 9500, 10000, '2025-06-24', '2025-06-29', 2500, 50);
INSERT INTO `gas` VALUES (9001, 7001, '柴油', '测试品牌', '测试供应商', '高级', 1.5, 0.3, 120000, 10000, '2025-06-24', '2025-07-24', 2.5, 50);
INSERT INTO `gas` VALUES (9009, 1001, '液化天然气', '测试品牌', '测试供应商', '普通', 1.5, 0.3, 1000000000, 500000, '2025-06-24', '2025-07-24', 2.5, 10);
INSERT INTO `gas` VALUES (9101, 8201, '柴油', '示例品牌', '示例供应商', '高级', 1.5, 0.3, 120000, 10000, '2025-06-01', '2025-07-01', 2.5, 50);
INSERT INTO `gas` VALUES (10000, 9998, '柴油', '测试品牌', '测试供应商', '超级', 2.5, 0.5, 50000000000, 1000000, '2025-06-24', '2025-07-01', 2500, 50);
INSERT INTO `gas` VALUES (10001, 7777, '汽油', '示例品牌', '示例供应商', '高级', 2, 0.5, 180000, 10000, '2025-06-24', '2025-07-01', 2500, 45);
INSERT INTO `gas` VALUES (10002, 1001, '柴油', '测试品牌', '本地供应商', '普通', 1.5, 0.3, 10500, 10000, '2025-06-20', '2025-06-27', 2700, 50);
INSERT INTO `gas` VALUES (10003, 1001, '液化天然气', '测试品牌', '本地供应商', '普通', 1.5, 0.3, 100000000000, 100000000, '2025-06-24', '2025-07-24', 5, 10);
INSERT INTO `gas` VALUES (10004, 1001, '液化天然气', '测试品牌', '本地供应商', '普通', 1.5, 0.3, 100000000000, 1000000, '2025-06-24', '2025-07-24', 5, 10);
INSERT INTO `gas` VALUES (10005, 1001, '液化天然气', '测试品牌', '本地供应商', '普通', 1.5, 0.3, 100000000000, 1000000, '2025-06-24', '2025-07-24', 5, 10);
INSERT INTO `gas` VALUES (10006, 1001, '液化天然气', '测试品牌', '本地供应商', '普通', 1.5, 0.3, 100000000000, 1000000, '2025-06-24', '2025-07-24', 5, 10);
INSERT INTO `gas` VALUES (10008, 1001, 'Diesel', 'TestBrand', 'Local Supplier', 'Premium', 1.5, 0.3, 500000000, 2000000, '2025-06-01', '2025-07-01', 2700, 50);
INSERT INTO `gas` VALUES (42201, 1001, 'Diesel', 'Shell', 'International Supplier', 'Premium', 1.5, 0.3, 500000000, 10000000, '2024-06-01', '2024-07-01', 85, 50);
INSERT INTO `gas` VALUES (42402, 42401, 'Gasoline', 'BP', 'Local Supplier', 'Regular', 1.8, 0.4, 2000000, 500000, '2024-06-15', '2024-07-15', 95, 30);
INSERT INTO `gas` VALUES (43401, 2001, 'Gasoline', 'Exxon', 'International Supplier', 'Premium', 1.7, 0.35, 5000000, 1000000, '2024-06-10', '2024-07-10', 2.8, 25);
INSERT INTO `gas` VALUES (44201, 3001, 'Diesel', 'Chevron', 'International Supplier', 'Super', 1.9, 0.4, 8000000, 2000000, '2024-06-05', '2024-07-05', 3.2, 20);
INSERT INTO `gas` VALUES (44601, 4001, 'Gasoline', 'Total', 'International Supplier', 'Premium', 1.6, 0.32, 12000000, 3000000, '2024-06-12', '2024-07-12', 2.7, 15);
INSERT INTO `gas` VALUES (45701, 5001, 'Diesel', 'BP', 'International Supplier', 'Premium', 1.55, 0.33, 1000000000, 50000000, '2024-06-08', '2024-07-08', 100, 35);
INSERT INTO `gas` VALUES (46201, 6001, 'Gasoline', 'Shell', 'International Supplier', 'Super', 1.85, 0.38, 50000, 10000, '2024-06-18', '2024-07-18', 85, 20);
INSERT INTO `gas` VALUES (46501, 7001, 'Diesel', 'ExxonMobil', 'International Supplier', 'Premium', 1.65, 0.34, 10000000, 2000000, '2024-06-14', '2024-07-14', 1000, 40);
INSERT INTO `gas` VALUES (46601, 8001, 'Gasoline', 'Chevron', 'International Supplier', 'Regular', 1.45, 0.28, 20000, 5000, '2024-06-20', '2024-07-20', 90, 50);
INSERT INTO `gas` VALUES (46801, 9001, 'Diesel', 'BP', 'Local Supplier', 'Premium', 1.52, 0.31, 8000, 5000, '2024-06-22', '2024-06-25', 95, 45);
INSERT INTO `gas` VALUES (50422, 1001, 'Diesel', 'Shell', 'International Supplier', 'Premium', 1.5, 0.3, 500000000, 10000000, '2024-06-01', '2024-07-01', 85, 50);
INSERT INTO `gas` VALUES (50424, 42401, 'Gasoline', 'BP', 'Local Supplier', 'Regular', 1.8, 0.4, 2000000, 500000, '2024-06-15', '2024-07-15', 95, 30);
INSERT INTO `gas` VALUES (50434, 2001, 'Gasoline', 'Exxon', 'International Supplier', 'Premium', 1.7, 0.35, 5000000, 1000000, '2024-06-10', '2024-07-10', 2.8, 25);
INSERT INTO `gas` VALUES (50442, 3001, 'Diesel', 'Chevron', 'International Supplier', 'Super', 1.9, 0.4, 8000000, 2000000, '2024-06-05', '2024-07-05', 3.2, 20);
INSERT INTO `gas` VALUES (50446, 4001, 'Gasoline', 'Total', 'International Supplier', 'Premium', 1.6, 0.32, 12000000, 3000000, '2024-06-12', '2024-07-12', 2.7, 15);
INSERT INTO `gas` VALUES (50457, 5001, 'Diesel', 'BP', 'International Supplier', 'Premium', 1.55, 0.33, 1000000000, 50000000, '2024-06-08', '2024-07-08', 100, 35);
INSERT INTO `gas` VALUES (50462, 6001, 'Gasoline', 'Shell', 'International Supplier', 'Super', 1.85, 0.38, 50000, 10000, '2024-06-18', '2024-07-18', 85, 20);
INSERT INTO `gas` VALUES (50465, 7001, 'Diesel', 'ExxonMobil', 'International Supplier', 'Premium', 1.65, 0.34, 10000000, 2000000, '2024-06-14', '2024-07-14', 1000, 40);
INSERT INTO `gas` VALUES (50466, 8001, 'Gasoline', 'Chevron', 'International Supplier', 'Regular', 1.45, 0.28, 20000, 5000, '2024-06-20', '2024-07-20', 90, 50);
INSERT INTO `gas` VALUES (50468, 9001, 'Diesel', 'BP', 'Local Supplier', 'Premium', 1.52, 0.31, 8000, 5000, '2024-06-22', '2024-06-25', 95, 45);
INSERT INTO `gas` VALUES (50469, 1001, 'Gasoline', 'Shell', 'International Supplier', 'Super', 1.78, 0.36, 100000000, 50000000, '2024-06-16', '2024-07-16', 500, 25);
INSERT INTO `gas` VALUES (50472, 1001, 'Diesel', 'ExxonMobil', 'International Supplier', 'Premium', 1.62, 0.33, 7500, 6000, '2024-06-24', '2024-07-24', 88, 35);
INSERT INTO `gas` VALUES (50476, 2001, 'Gasoline', 'Total', 'Local Supplier', 'Regular', 1.48, 0.29, 8500, 5500, '2024-06-23', '2024-06-30', 92, 38);

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
INSERT INTO `gas_station` VALUES (1001, '2018', '北京市朝阳区建国路88号', '张伟', '李娜', '王强', 600000, '全服务');
INSERT INTO `gas_station` VALUES (2001, '2020', '上海市浦东新区世纪大道100号', '李强', '王芳', '赵敏', 50000, '全服务');
INSERT INTO `gas_station` VALUES (3001, '2025', '指定加油站位置', '刘一', '周二', '郑三', 70000, '全服务');
INSERT INTO `gas_station` VALUES (3002, '2025', '测试地点', '张三', '李四', '王五', 100000, '全服务');
INSERT INTO `gas_station` VALUES (3011, '2025', '测试位置', '张三', '李四', '王五', 100000, '全服务');
INSERT INTO `gas_station` VALUES (4001, '2025', '测试位置2', '王十', '李十一', '赵十二', 100000, '全服务');
INSERT INTO `gas_station` VALUES (5001, '2025', '新测试位置', '刘十四', '陈十五', '赵十六', 100000, '全服务');
INSERT INTO `gas_station` VALUES (6001, '2025', '插入测试位置', '测试经理', '测试副经理', '测试代表', 100000, '全服务');
INSERT INTO `gas_station` VALUES (6011, '2025', '测试位置', '张测试', '李测试', '王测试', 1500000, '全服务');
INSERT INTO `gas_station` VALUES (7001, '2025', '测试位置7001', '张经理', '李副经理', '赵代表', 1000000, '全服务');
INSERT INTO `gas_station` VALUES (7011, '2025', '测试大站', '张大', '李二', '王三', 3000000, '全服务');
INSERT INTO `gas_station` VALUES (7021, '2025', '测试位置', '张站长', '李副站', '王代表', 5000000, '全服务');
INSERT INTO `gas_station` VALUES (7031, '2025', '示例位置', '张经理', '李副经理', '王代表', 10000000, '全服务');
INSERT INTO `gas_station` VALUES (7051, '2025', '测试位置大站', '张站长', '李副站', '王代表', 20000000, '全服务');
INSERT INTO `gas_station` VALUES (7101, '2025', '测试位置', '张经理', '李副经理', '王代表', 150000, '全服务');
INSERT INTO `gas_station` VALUES (7777, '2025', '示例位置', '张三', '李四', '王五', 200000, '全服务');
INSERT INTO `gas_station` VALUES (8001, '2025', '测试位置8001', '张经理', '李副经理', '赵代表', 20000, '全服务');
INSERT INTO `gas_station` VALUES (8011, '2025', '测试位置', '张经理', '李副经理', '王代表', 600000, '全服务');
INSERT INTO `gas_station` VALUES (8101, '2025', '示例位置', '张经理', '李副经理', '王代表', 150000, '全服务');
INSERT INTO `gas_station` VALUES (8201, '2025', '示例位置', '张经理', '李副经理', '王代表', 150000, '全服务');
INSERT INTO `gas_station` VALUES (8888, '2024', '测试位置', '张三', '李四', '王五', 100000, '全服务');
INSERT INTO `gas_station` VALUES (9001, '2023', '123 Main Street, Houston', 'Robert Wilson', 'Jennifer Brown', 'Michael Davis', 800000, 'Full Service');
INSERT INTO `gas_station` VALUES (9002, '2022', '456 Oak Avenue, Dallas', 'Lisa Johnson', 'David Miller', 'Sarah Wilson', 750000, 'Self Service');
INSERT INTO `gas_station` VALUES (9003, '2024', '789 Pine Road, Austin', 'James Taylor', 'Emily Clark', 'Daniel White', 900000, 'Full Service');
INSERT INTO `gas_station` VALUES (9021, '2025', '示例位置', '张站长', '李副站', '王代表', 20000000, '全服务');
INSERT INTO `gas_station` VALUES (9998, '2025', '测试位置', '张测试', '李测试', '王测试', 50000000000, '全服务');
INSERT INTO `gas_station` VALUES (42401, '2020', 'Berlin Central', 'Hans Mueller', 'Klaus Schmidt', 'Peter Weber', 10000000, 'Full Service');
INSERT INTO `gas_station` VALUES (50424, '2020', 'Berlin Central', 'Hans Mueller', 'Klaus Schmidt', 'Peter Weber', 10000000, 'Full Service');

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
INSERT INTO `station_company` VALUES (1001, 101, 2023);
INSERT INTO `station_company` VALUES (1001, 103, 2023);
INSERT INTO `station_company` VALUES (2001, 102, 2023);
INSERT INTO `station_company` VALUES (2001, 104, 2023);
INSERT INTO `station_company` VALUES (3011, 999, 2025);

SET FOREIGN_KEY_CHECKS = 1;
