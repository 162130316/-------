/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : foodcardms

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 31/12/2023 11:30:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for card_info
-- ----------------------------
DROP TABLE IF EXISTS `card_info`;
CREATE TABLE `card_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `balance` double NOT NULL,
  `cardlock` int NOT NULL,
  `cardId` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ManageSystem_card_cardId_4ae7fc55_fk_ManageSystem_holder_cardId`(`cardId`) USING BTREE,
  CONSTRAINT `card_info_ibfk_1` FOREIGN KEY (`cardId`) REFERENCES `cardholder_info` (`cardId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of card_info
-- ----------------------------
INSERT INTO `card_info` VALUES (1, 141, 0, 162130316);
INSERT INTO `card_info` VALUES (3, 123, 0, 162130314);
INSERT INTO `card_info` VALUES (14, 0, 0, 12311);
INSERT INTO `card_info` VALUES (25, 5, 0, 123);
INSERT INTO `card_info` VALUES (26, 22, 1, 162130315);
INSERT INTO `card_info` VALUES (27, 0, 0, 111);
INSERT INTO `card_info` VALUES (28, 33, 1, 162130313);

-- ----------------------------
-- Table structure for cardhistory_info
-- ----------------------------
DROP TABLE IF EXISTS `cardhistory_info`;
CREATE TABLE `cardhistory_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cardId` int NOT NULL,
  `opear_time` datetime NOT NULL,
  `money` double NOT NULL,
  `operation` int NOT NULL,
  `info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ManageSystem_history_cardId_e6e78fab_fk_ManageSys`(`cardId`) USING BTREE,
  CONSTRAINT `cardhistory_info_ibfk_1` FOREIGN KEY (`cardId`) REFERENCES `cardholder_info` (`cardId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cardhistory_info
-- ----------------------------
INSERT INTO `cardhistory_info` VALUES (7, 162130316, '2023-12-03 00:31:14', 12, 0, '充值方式是：+支付宝');
INSERT INTO `cardhistory_info` VALUES (8, 162130316, '2023-12-03 00:37:49', 10, 0, '充值方式是：+微信');
INSERT INTO `cardhistory_info` VALUES (9, 162130316, '2023-12-03 00:41:32', 8, 0, '充值方式是：+微信');
INSERT INTO `cardhistory_info` VALUES (10, 162130316, '2023-12-03 00:41:43', 70, 0, '充值方式是：+银行卡');
INSERT INTO `cardhistory_info` VALUES (12, 162130316, '2023-12-03 23:18:36', 30, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (19, 162130314, '2023-12-04 00:10:45', 122, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (21, 162130314, '2023-12-04 00:11:11', 1, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (25, 162130316, '2023-12-05 01:15:56', 1, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (26, 162130316, '2023-12-05 01:15:58', 2, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (27, 162130316, '2023-12-05 01:16:00', 3, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (28, 162130316, '2023-12-05 01:16:14', 4, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (29, 162130316, '2023-12-05 01:16:46', 5, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (30, 162130316, '2023-12-05 01:16:48', 6, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (31, 162130316, '2023-12-05 01:17:05', 7, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (32, 162130316, '2023-12-05 01:17:09', 8, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (33, 162130316, '2023-12-05 01:17:11', 9, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (43, 162130316, '2023-12-13 01:22:35', 10, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (47, 162130316, '2023-12-14 17:31:07', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (48, 162130316, '2023-12-14 17:31:09', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (49, 162130316, '2023-12-14 17:31:10', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (50, 162130316, '2023-12-14 17:31:11', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (51, 162130316, '2023-12-14 17:31:12', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (52, 162130316, '2023-12-14 17:31:13', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (53, 162130316, '2023-12-14 17:31:32', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (54, 162130316, '2023-12-14 17:31:33', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (55, 162130316, '2023-12-14 17:31:34', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (56, 162130316, '2023-12-14 17:35:56', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (57, 162130316, '2023-12-14 17:35:58', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (58, 162130316, '2023-12-14 17:35:59', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (59, 162130316, '2023-12-14 17:36:00', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (60, 162130316, '2023-12-14 17:36:01', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (61, 162130316, '2023-12-14 17:36:02', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (62, 162130316, '2023-12-14 17:36:03', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (63, 162130316, '2023-12-14 17:36:04', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (69, 162130316, '2023-12-16 10:38:24', 123, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (70, 162130316, '2023-12-16 10:45:10', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (71, 162130316, '2023-12-16 10:45:14', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (72, 162130316, '2023-12-16 10:45:21', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (73, 162130316, '2023-12-16 10:45:23', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (76, 123, '2023-12-16 11:16:53', 15, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (77, 123, '2023-12-16 11:16:58', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (78, 162130316, '2023-11-20 16:22:19', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (79, 162130316, '2023-11-20 16:22:22', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (80, 162130316, '2023-11-20 18:13:00', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (81, 162130316, '2023-12-17 13:30:38', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (82, 162130316, '2023-12-20 15:51:32', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (83, 162130316, '2023-12-21 15:12:10', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (84, 162130316, '2023-12-21 15:12:14', 123, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (85, 162130316, '2023-12-21 15:12:24', -10, 1, '模拟消费');
INSERT INTO `cardhistory_info` VALUES (86, 162130315, '2023-12-30 15:37:14', 22, 0, '充值方式是：微信');
INSERT INTO `cardhistory_info` VALUES (87, 162130315, '2023-12-30 15:37:51', 22, 2, '不知道忘哪里了。。。');

-- ----------------------------
-- Table structure for cardholder_info
-- ----------------------------
DROP TABLE IF EXISTS `cardholder_info`;
CREATE TABLE `cardholder_info`  (
  `cardId` int NOT NULL,
  `sId` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `gender` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phoneNum` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`cardId`) USING BTREE,
  INDEX `sId`(`sId`) USING BTREE,
  CONSTRAINT `sId` FOREIGN KEY (`sId`) REFERENCES `user_info` (`user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cardholder_info
-- ----------------------------
INSERT INTO `cardholder_info` VALUES (111, 111, 'qwe', '男', '11122233344', 'nuaa');
INSERT INTO `cardholder_info` VALUES (123, 123, 'eeeee', '男', '12312312312', '123');
INSERT INTO `cardholder_info` VALUES (162130313, 162130313, '陈昀', '男', '12332112321', 'nuaa');
INSERT INTO `cardholder_info` VALUES (162130314, 162130314, '高致', '男', '13213213223', 'nuaa');
INSERT INTO `cardholder_info` VALUES (162130315, 162130315, '王苏扬', '男', '11111111111', 'nuaa');
INSERT INTO `cardholder_info` VALUES (162130316, 162130316, 'jh', '男', '13777777788', 'nuaa');
INSERT INTO `cardholder_info` VALUES (2023031562, 2023031562, 'user', '男', '12345678910', 'nuaa');
INSERT INTO `cardholder_info` VALUES (2023031563, 2023031563, 'qqq', '男', '12112312322', '123');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `pwd` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` int NOT NULL,
  `cardHolder` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user`(`user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (17, 162130316, '123', 1, 0);
INSERT INTO `user_info` VALUES (26, 162130314, '123', 1, 0);
INSERT INTO `user_info` VALUES (53, 2023031562, '123123', 0, 0);
INSERT INTO `user_info` VALUES (70, 123, '123123', 0, 0);
INSERT INTO `user_info` VALUES (71, 162130315, '000000', 1, 0);
INSERT INTO `user_info` VALUES (72, 111, '111', 1, 0);
INSERT INTO `user_info` VALUES (73, 162130313, '123', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
