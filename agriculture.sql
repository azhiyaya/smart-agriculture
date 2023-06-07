/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : agriculture

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 07/06/2023 16:41:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for environment_monitor
-- ----------------------------
DROP TABLE IF EXISTS `environment_monitor`;
CREATE TABLE `environment_monitor`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '环境监测数据编号',
  `air_temperature` double NULL DEFAULT NULL COMMENT '空气温度',
  `air_humidity` double NULL DEFAULT NULL COMMENT '空气湿度',
  `soil_temperature` double NULL DEFAULT NULL COMMENT '土壤温度',
  `soil_humidity` double NULL DEFAULT NULL COMMENT '土壤湿度',
  `co2_level` double NULL DEFAULT NULL COMMENT '二氧化碳含量',
  `light_level` double NULL DEFAULT NULL COMMENT '光照度',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `sensor_id` int NULL DEFAULT NULL COMMENT '传感器编号',
  `green_house_id` int NULL DEFAULT NULL COMMENT '大棚编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of environment_monitor
-- ----------------------------
INSERT INTO `environment_monitor` VALUES (1, 99.1, 100.1, 10.1, 200.1, 149.4, 800.6, '2023-06-07 16:34:28', 1, 1);

-- ----------------------------
-- Table structure for green_houses
-- ----------------------------
DROP TABLE IF EXISTS `green_houses`;
CREATE TABLE `green_houses`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '大棚编号',
  `zone_id` int NULL DEFAULT NULL COMMENT '所在区域',
  `create_time` datetime NULL DEFAULT NULL COMMENT '建造时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of green_houses
-- ----------------------------
INSERT INTO `green_houses` VALUES (1, 6, '2006-04-22 16:06:47');
INSERT INTO `green_houses` VALUES (2, 4, '2010-10-25 14:04:37');
INSERT INTO `green_houses` VALUES (3, 8, '2007-03-29 18:17:47');
INSERT INTO `green_houses` VALUES (4, 1, '2002-05-04 05:49:04');
INSERT INTO `green_houses` VALUES (5, 8, '2006-12-06 04:13:36');
INSERT INTO `green_houses` VALUES (6, 5, '2010-07-19 17:59:52');
INSERT INTO `green_houses` VALUES (7, 2, '2003-09-06 13:12:18');
INSERT INTO `green_houses` VALUES (8, 10, '2012-12-03 02:36:12');
INSERT INTO `green_houses` VALUES (9, 10, '2015-01-04 10:47:37');
INSERT INTO `green_houses` VALUES (10, 6, '2003-04-07 08:25:41');

-- ----------------------------
-- Table structure for pest_monitor
-- ----------------------------
DROP TABLE IF EXISTS `pest_monitor`;
CREATE TABLE `pest_monitor`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '虫情监测数据编号',
  `green_house_id` int NULL DEFAULT NULL COMMENT '大棚编号',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '监测图片信息',
  `result` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '监测结果',
  `level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评估等级',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '虫害名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '虫害描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pest_monitor
-- ----------------------------
INSERT INTO `pest_monitor` VALUES (1, 2, 'ojeFmZqwIn', 'zt5aUdYbvz', 'KrdeuzJeIT', 'Joanne Mendoza', 'Rn6t8VbiJQ');
INSERT INTO `pest_monitor` VALUES (2, 9, 'NMiXBr1erD', 'bE3m6aAvbi', 'QFgsgg1xKK', 'Fong Kwok Ming', 'cjwIYmYw7z');
INSERT INTO `pest_monitor` VALUES (3, 8, 'zkLXsi10qd', 'j935gwAtyZ', 'IF58vQgQ7F', 'Shi Ziyi', 'D3EOEv7TlX');
INSERT INTO `pest_monitor` VALUES (4, 6, 'ReM4byFe1D', 'WEmzmiFe3j', 'zfMgl4iFA7', 'So Hok Yau', 'kcXUK9rcxM');
INSERT INTO `pest_monitor` VALUES (5, 9, 'cGWlacBN9X', '9WyyTGrfPu', 'oNAh3nhfYq', 'Pak On Kay', 'S46Hfb9Dz3');
INSERT INTO `pest_monitor` VALUES (6, 7, 'aeW4L9ICTs', 'BBDknJ9yFj', '0LLdsAm1h8', 'Kono Rin', 'WubSuSY56s');
INSERT INTO `pest_monitor` VALUES (7, 6, 'nub8UW160J', 'DaTo6HUdA8', 'Hk1Pagzhx2', 'Shirley Morales', 'derPUeGMxw');
INSERT INTO `pest_monitor` VALUES (8, 5, 'nu886yOjZs', 'v2vFIwQvZ7', 'FrvSTLU0tr', 'Choi Ka Keung', 'nvTWFaJ16f');
INSERT INTO `pest_monitor` VALUES (9, 4, 'WtUPNYspWW', 'W2ELkU5yyF', 'ctWISoJASs', 'Gu Jiehong', '3Kjf6BPUPE');
INSERT INTO `pest_monitor` VALUES (10, 2, '9lwMqg9cYR', 'xC2y9a5g61', 'MkfwSyygCj', 'Sakamoto Ayano', 'VcXXxlSc95');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '农产品编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '农产品名称',
  `cycle` int NULL DEFAULT NULL COMMENT '种植周期（单位：天）',
  `output` int NULL DEFAULT NULL COMMENT '预计产量',
  `area` double NULL DEFAULT NULL COMMENT '种植面积',
  `plant_time` datetime NULL DEFAULT NULL COMMENT '种植时间',
  `harvest_time` datetime NULL DEFAULT NULL COMMENT '收获时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Koyama Minato', 750, 174, 652.89, '2021-08-18 00:07:41', '2012-06-24 02:05:22');
INSERT INTO `product` VALUES (2, 'Chow Ling Ling', 84, 230, 382.37, '2000-05-01 14:15:36', '2004-02-23 07:33:45');
INSERT INTO `product` VALUES (3, 'Curtis Lewis', 699, 614, 218.73, '2009-05-13 23:35:54', '2016-06-30 01:15:53');
INSERT INTO `product` VALUES (4, 'Goto Misaki', 931, 338, 843.25, '2019-10-01 10:55:22', '2010-10-02 03:49:25');
INSERT INTO `product` VALUES (5, 'Hashimoto Mio', 323, 815, 939.49, '2008-05-22 14:02:23', '2009-09-11 20:33:14');
INSERT INTO `product` VALUES (6, 'Saito Sakura', 402, 704, 739.26, '2003-07-25 12:33:03', '2003-07-06 20:23:51');
INSERT INTO `product` VALUES (7, 'Christopher Morgan', 70, 868, 492.61, '2009-09-09 01:16:29', '2011-07-08 18:10:40');
INSERT INTO `product` VALUES (8, 'Carl Edwards', 646, 49, 253.28, '2005-07-30 07:23:56', '2000-07-07 18:46:48');
INSERT INTO `product` VALUES (9, 'Fujita Yuna', 125, 127, 377.65, '2007-06-22 18:48:08', '2010-08-11 08:08:23');
INSERT INTO `product` VALUES (10, 'Yue Ming Sze', 587, 867, 867.09, '2016-02-13 16:13:00', '2001-06-13 17:34:57');

-- ----------------------------
-- Table structure for sensor
-- ----------------------------
DROP TABLE IF EXISTS `sensor`;
CREATE TABLE `sensor`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '传感器编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '传感器名称',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '传感器类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sensor
-- ----------------------------
INSERT INTO `sensor` VALUES (1, 'Jerry Sullivan', '温度传感器');
INSERT INTO `sensor` VALUES (2, 'Cao Zhennan', '二氧化碳传感器');
INSERT INTO `sensor` VALUES (3, 'Watanabe Yuito', '光照传感器');
INSERT INTO `sensor` VALUES (4, 'Chic Tin Wing', '湿度传感器');
INSERT INTO `sensor` VALUES (5, 'Guo Yunxi', '温度传感器');
INSERT INTO `sensor` VALUES (6, 'April Peterson', '二氧化碳传感器');
INSERT INTO `sensor` VALUES (7, 'Lo Fu Shing', '二氧化碳传感器');
INSERT INTO `sensor` VALUES (8, 'Uchida Sara', '光照传感器');
INSERT INTO `sensor` VALUES (9, 'Cho Wai Man', '光照传感器');
INSERT INTO `sensor` VALUES (10, 'Cho Ka Fai', '湿度传感器');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Nishimura Takuya', 'Nishimura Takuya', 'idhSsNW4F7', 'takuyanishimura3@outlook.com', '7385 180577', '877 The Pavilion, Lammas Field, Driftway');
INSERT INTO `user` VALUES (2, 'Ogawa Daisuke', 'Ogawa Daisuke', 'GBwViaIFNy', 'ogawadaisuke@gmail.com', '(1223) 90 4239', '869 Volac Park, Grantchester Rd');
INSERT INTO `user` VALUES (3, 'John West', 'John West', 'fS7jKjGAv7', 'westjohn1111@mail.com', '139-7303-1914', '924 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `user` VALUES (4, 'Rodney Meyer', 'Rodney Meyer', 'whdOqDNkJO', 'rodneymeyer8@outlook.com', '144-3861-8400', '943 68 Qinghe Middle St, Haidian District');
INSERT INTO `user` VALUES (5, 'Yam Fat', 'Yam Fat', 'AmqfevecEK', 'fya@outlook.com', '614-840-1070', '674 Wicklow Road');

-- ----------------------------
-- Table structure for zone
-- ----------------------------
DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '区域编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `area` int NULL DEFAULT NULL COMMENT '区域面积',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone
-- ----------------------------
INSERT INTO `zone` VALUES (1, 'Ishii Mitsuki', 540, 'No. 233, Shuangqing Rd, Chenghua District');
INSERT INTO `zone` VALUES (2, 'Kao Cho Yee', 956, '367 Trafalgar Square, Charing Cross');
INSERT INTO `zone` VALUES (3, 'Kato Momoka', 973, '536 Nostrand Ave');
INSERT INTO `zone` VALUES (4, 'Ogawa Yuna', 999, '2-3-1 Yoyogi, Shibuya-ku');
INSERT INTO `zone` VALUES (5, 'Fung Ka Ming', 302, '804 Binchuan Rd, Minhang District');
INSERT INTO `zone` VALUES (6, 'Nicole Watson', 394, '423 FuXingMenNei Street, XiCheng District');
INSERT INTO `zone` VALUES (7, 'Hasegawa Yuna', 780, '9 Wicklow Road');
INSERT INTO `zone` VALUES (8, 'Gu Xiaoming', 897, '5-2-2 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `zone` VALUES (9, 'Sheh Fu Shing', 790, '175 Wyngate Dr');
INSERT INTO `zone` VALUES (10, 'Kimura Takuya', 317, '395 39 William IV St, Charing Cross');

SET FOREIGN_KEY_CHECKS = 1;
