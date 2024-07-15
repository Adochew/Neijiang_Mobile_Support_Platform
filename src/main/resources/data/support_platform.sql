/*
 Navicat Premium Data Transfer

 Source Server         : 1931663610
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : support_platform

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 15/07/2024 13:53:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for group_history
-- ----------------------------
DROP TABLE IF EXISTS `group_history`;
CREATE TABLE `group_history`  (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NULL DEFAULT NULL,
  `group_id` int NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`history_id`) USING BTREE,
  INDEX `group_id`(`group_id` ASC) USING BTREE,
  INDEX `account_id`(`account_id` ASC) USING BTREE,
  CONSTRAINT `group_history_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_info` (`group_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `group_history_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_history
-- ----------------------------
INSERT INTO `group_history` VALUES (1, 2, 1, 'create', '群组创建', '2024-07-11 15:08:54');
INSERT INTO `group_history` VALUES (2, 4, 1, 'add', '添加了用户', '2024-07-11 15:08:54');
INSERT INTO `group_history` VALUES (3, 2, 2, 'create', '群组创建', '2024-07-11 15:08:54');
INSERT INTO `group_history` VALUES (8, 5, 1, 'add', '添加成员', '2024-07-12 08:21:57');
INSERT INTO `group_history` VALUES (9, 6, 1, 'add', '添加成员', '2024-07-12 09:05:10');
INSERT INTO `group_history` VALUES (70, 2, 37, 'add', '添加成员', '2024-07-12 14:40:17');
INSERT INTO `group_history` VALUES (71, 2, 37, 'create', '群组创建', '2024-07-12 14:40:17');

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info`  (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `owner_id` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`) USING BTREE,
  INDEX `owner_id`(`owner_id` ASC) USING BTREE,
  CONSTRAINT `group_info_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES (1, '饭友群1', 2, '饭友交流讨论群9122', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/895e6255-6a77-4432-8eca-c284909a05d1.png', '2024-07-11 15:08:53');
INSERT INTO `group_info` VALUES (2, '零售折扣群', 3, '通知零售店打折信息', 'group.jpg', '2024-07-11 15:08:53');
INSERT INTO `group_info` VALUES (37, 'zzz', 2, 'zzzzz', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/77f17ab8-d090-41c1-bfd7-12f75cb6b6ab.png', '2024-07-12 14:40:17');

-- ----------------------------
-- Table structure for group_member
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member`  (
  `group_id` int NOT NULL,
  `account_id` int NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`, `account_id`) USING BTREE,
  INDEX `account_id`(`account_id` ASC) USING BTREE,
  CONSTRAINT `group_member_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_info` (`group_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `group_member_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_member
-- ----------------------------
INSERT INTO `group_member` VALUES (1, 2, '管理员', '2024-07-11 15:08:54');
INSERT INTO `group_member` VALUES (1, 4, '成员', '2024-07-11 15:08:54');
INSERT INTO `group_member` VALUES (1, 5, '成员', '2024-07-12 08:21:57');
INSERT INTO `group_member` VALUES (1, 6, '成员', '2024-07-12 09:05:10');
INSERT INTO `group_member` VALUES (2, 3, '管理员', '2024-07-11 15:08:54');
INSERT INTO `group_member` VALUES (2, 5, '成员', '2024-07-11 15:08:54');
INSERT INTO `group_member` VALUES (37, 2, '管理员', '2024-07-12 14:40:17');

-- ----------------------------
-- Table structure for merchant_category
-- ----------------------------
DROP TABLE IF EXISTS `merchant_category`;
CREATE TABLE `merchant_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_category
-- ----------------------------
INSERT INTO `merchant_category` VALUES (1, '美食');
INSERT INTO `merchant_category` VALUES (2, '休闲娱乐');
INSERT INTO `merchant_category` VALUES (3, '结婚');
INSERT INTO `merchant_category` VALUES (4, '电影演出赛事');
INSERT INTO `merchant_category` VALUES (5, '丽人');
INSERT INTO `merchant_category` VALUES (6, '酒店');

-- ----------------------------
-- Table structure for merchant_comment
-- ----------------------------
DROP TABLE IF EXISTS `merchant_comment`;
CREATE TABLE `merchant_comment`  (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `merchant_id` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `rating` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `merchant_id`(`merchant_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `merchant_comment_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `merchant_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_comment
-- ----------------------------
INSERT INTO `merchant_comment` VALUES (1, 1, 1, '非常好的商户！', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (2, 1, 2, '服务态度很好', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (3, 2, 1, '食物非常美味', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (4, 2, 2, '环境不错', 4, '2024-07-11 15:08:53');

-- ----------------------------
-- Table structure for merchant_info
-- ----------------------------
DROP TABLE IF EXISTS `merchant_info`;
CREATE TABLE `merchant_info`  (
  `merchant_id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `category_id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `business_environment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `business_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `product_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `coordinates` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`merchant_id`) USING BTREE,
  INDEX `owner_id`(`owner_id` ASC) USING BTREE,
  CONSTRAINT `merchant_info_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_info
-- ----------------------------
INSERT INTO `merchant_info` VALUES (1, 2, 4, '君诗烘焙', '四川省  成都市  郫都区  红光街道  高店路  41号', '028-87878147', '87878147@example.com', '零售', '线上', '中国', '电子产品', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/d930ced2-34c9-4e23-88d9-45545353dc4a.jpg', '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (2, 3, 2, '商户二', '四川省 成都市 郫都区 红光街道 高店路 39号', '0987654321', 'merchant2@example.com', '餐饮', '线下', '中国', '食品', 'image2.jpg', '2024-07-11 15:08:53', '103.943060,30.790416');

-- ----------------------------
-- Table structure for merchant_product
-- ----------------------------
DROP TABLE IF EXISTS `merchant_product`;
CREATE TABLE `merchant_product`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `merchant_id` int NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_id` int NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `merchant_id`(`merchant_id` ASC) USING BTREE,
  INDEX `category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `merchant_product_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `merchant_product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `merchant_product_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_product
-- ----------------------------
INSERT INTO `merchant_product` VALUES (1, 1, '榴莲千层', 2, 35.00, '难得的甜点诶~', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/d075c0dc-0b35-4f84-bf6e-15392bf21a3b.jpg', '2024-07-11 15:08:53');
INSERT INTO `merchant_product` VALUES (2, 1, '生日蛋糕', 2, 300.00, '生日必备哦~', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/12ce2022-7465-47dd-8256-42a539ee7ebc.jpg', '2024-07-11 15:08:53');
INSERT INTO `merchant_product` VALUES (3, 2, '牛仔裤', 2, 200.00, '舒适牛仔裤', 'jeans.jpg', '2024-07-11 15:08:53');
INSERT INTO `merchant_product` VALUES (4, 2, 'T恤', 2, 100.00, '纯棉T恤', 'tshirt.jpg', '2024-07-11 15:08:53');

-- ----------------------------
-- Table structure for merchant_product_category
-- ----------------------------
DROP TABLE IF EXISTS `merchant_product_category`;
CREATE TABLE `merchant_product_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_product_category
-- ----------------------------
INSERT INTO `merchant_product_category` VALUES (1, '火锅');
INSERT INTO `merchant_product_category` VALUES (2, '面包甜点');
INSERT INTO `merchant_product_category` VALUES (3, '小吃快餐');
INSERT INTO `merchant_product_category` VALUES (4, '川菜');
INSERT INTO `merchant_product_category` VALUES (5, '粤菜');
INSERT INTO `merchant_product_category` VALUES (6, '湘菜');
INSERT INTO `merchant_product_category` VALUES (7, '足疗');
INSERT INTO `merchant_product_category` VALUES (8, 'KTV');
INSERT INTO `merchant_product_category` VALUES (9, '婚纱摄影');
INSERT INTO `merchant_product_category` VALUES (10, '婚礼策划');
INSERT INTO `merchant_product_category` VALUES (11, '电影院');
INSERT INTO `merchant_product_category` VALUES (12, '演出场馆');
INSERT INTO `merchant_product_category` VALUES (13, '艺术文化中心');
INSERT INTO `merchant_product_category` VALUES (14, '美发');
INSERT INTO `merchant_product_category` VALUES (15, '医学美容');
INSERT INTO `merchant_product_category` VALUES (16, '亲子摄影');
INSERT INTO `merchant_product_category` VALUES (17, '早教中心');

-- ----------------------------
-- Table structure for merchant_product_comment
-- ----------------------------
DROP TABLE IF EXISTS `merchant_product_comment`;
CREATE TABLE `merchant_product_comment`  (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `rating` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `merchant_product_comment_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `merchant_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `merchant_product_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_product_comment
-- ----------------------------
INSERT INTO `merchant_product_comment` VALUES (1, 1, 1, '这台笔记本电脑非常好用！', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_product_comment` VALUES (2, 1, 2, '智能手机功能很强大', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_product_comment` VALUES (3, 2, 1, '牛仔裤穿着很舒服', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_product_comment` VALUES (4, 2, 2, 'T恤质量不错', 4, '2024-07-11 15:08:53');

-- ----------------------------
-- Table structure for merchant_promotion
-- ----------------------------
DROP TABLE IF EXISTS `merchant_promotion`;
CREATE TABLE `merchant_promotion`  (
  `promotion_id` int NOT NULL AUTO_INCREMENT,
  `merchant_id` int NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`promotion_id`) USING BTREE,
  INDEX `merchant_id`(`merchant_id` ASC) USING BTREE,
  CONSTRAINT `merchant_promotion_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_promotion
-- ----------------------------
INSERT INTO `merchant_promotion` VALUES (1, 1, '2024-01-01', '2024-01-31', '新年促销活动', '2024-07-11 15:08:53');
INSERT INTO `merchant_promotion` VALUES (2, 2, '2024-02-01', '2024-02-28', '春节特惠', '2024-07-11 15:08:53');

-- ----------------------------
-- Table structure for system_account
-- ----------------------------
DROP TABLE IF EXISTS `system_account`;
CREATE TABLE `system_account`  (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_account
-- ----------------------------
INSERT INTO `system_account` VALUES (1, '管理员', 'admin', 1);
INSERT INTO `system_account` VALUES (2, '君诗烘焙', '1234', 2);
INSERT INTO `system_account` VALUES (3, 'merchant2', '1234', 2);
INSERT INTO `system_account` VALUES (4, 'test', '1234', 3);
INSERT INTO `system_account` VALUES (5, 'user2', 'userpass2', 3);
INSERT INTO `system_account` VALUES (6, 'user3', 'userpass2', 3);
INSERT INTO `system_account` VALUES (7, 'user4', 'userpass2', 3);

-- ----------------------------
-- Table structure for system_article
-- ----------------------------
DROP TABLE IF EXISTS `system_article`;
CREATE TABLE `system_article`  (
  `article_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_id` int NULL DEFAULT NULL,
  `author_id` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`article_id`) USING BTREE,
  INDEX `category_id`(`category_id` ASC) USING BTREE,
  INDEX `author_id`(`author_id` ASC) USING BTREE,
  CONSTRAINT `system_article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `system_article_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `system_article_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_article
-- ----------------------------
INSERT INTO `system_article` VALUES (1, '2024年技术趋势', '# This is the Title of the Article\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\n\r\n## Subheading\r\nMore content here...\r\n\r\n- First item\r\n- Second item\r\n- Third item\r\n\r\nAnother paragraph with an image:\r\n\r\n![Placeholder Image](https://via.placeholder.com/150)', 1, 1, '2024-07-11 15:08:53');
INSERT INTO `system_article` VALUES (2, '瑜伽的健康益处', '关于瑜伽的内容', 2, 1, '2024-07-11 15:08:53');
INSERT INTO `system_article` VALUES (3, '投资理财技巧', '关于投资理财的内容', 3, 1, '2024-07-11 15:08:53');
INSERT INTO `system_article` VALUES (4, '在线教育的未来', '关于在线教育的内容', 4, 1, '2024-07-11 15:08:53');

-- ----------------------------
-- Table structure for system_article_category
-- ----------------------------
DROP TABLE IF EXISTS `system_article_category`;
CREATE TABLE `system_article_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_article_category
-- ----------------------------
INSERT INTO `system_article_category` VALUES (1, '技术');
INSERT INTO `system_article_category` VALUES (2, '健康');
INSERT INTO `system_article_category` VALUES (3, '金融');
INSERT INTO `system_article_category` VALUES (4, '教育');

-- ----------------------------
-- Table structure for user_favorite_merchant
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_merchant`;
CREATE TABLE `user_favorite_merchant`  (
  `favorite_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `merchant_id` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favorite_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `merchant_id`(`merchant_id` ASC) USING BTREE,
  CONSTRAINT `user_favorite_merchant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_favorite_merchant_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_favorite_merchant
-- ----------------------------
INSERT INTO `user_favorite_merchant` VALUES (1, 1, 1, '2024-07-11 15:08:53');
INSERT INTO `user_favorite_merchant` VALUES (2, 1, 2, '2024-07-11 15:08:53');
INSERT INTO `user_favorite_merchant` VALUES (3, 2, 1, '2024-07-11 15:08:53');
INSERT INTO `user_favorite_merchant` VALUES (4, 2, 2, '2024-07-11 15:08:53');

-- ----------------------------
-- Table structure for user_favorite_product
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_product`;
CREATE TABLE `user_favorite_product`  (
  `favorite_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favorite_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `user_favorite_product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_favorite_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `merchant_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_favorite_product
-- ----------------------------
INSERT INTO `user_favorite_product` VALUES (1, 1, 1, '2024-07-11 15:08:53');
INSERT INTO `user_favorite_product` VALUES (2, 1, 2, '2024-07-11 15:08:53');
INSERT INTO `user_favorite_product` VALUES (3, 2, 3, '2024-07-11 15:08:53');
INSERT INTO `user_favorite_product` VALUES (4, 2, 4, '2024-07-11 15:08:53');

-- ----------------------------
-- Table structure for user_friend
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend`  (
  `user_id` int NOT NULL,
  `friend_id` int NOT NULL,
  `category_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `friend_id`) USING BTREE,
  INDEX `friend_id`(`friend_id` ASC) USING BTREE,
  INDEX `category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `user_friend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_friend_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_friend_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `user_friend_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_friend
-- ----------------------------
INSERT INTO `user_friend` VALUES (1, 2, 1);
INSERT INTO `user_friend` VALUES (2, 1, 1);
INSERT INTO `user_friend` VALUES (1, 3, 2);
INSERT INTO `user_friend` VALUES (3, 1, 2);
INSERT INTO `user_friend` VALUES (2, 4, 4);
INSERT INTO `user_friend` VALUES (4, 2, 4);

-- ----------------------------
-- Table structure for user_friend_application
-- ----------------------------
DROP TABLE IF EXISTS `user_friend_application`;
CREATE TABLE `user_friend_application`  (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `friend_id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`application_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `friend_id`(`friend_id` ASC) USING BTREE,
  INDEX `category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `user_friend_application_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_friend_application_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_friend_application_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `user_friend_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_friend_application
-- ----------------------------
INSERT INTO `user_friend_application` VALUES (1, 1, 2, 1);
INSERT INTO `user_friend_application` VALUES (2, 1, 3, 2);
INSERT INTO `user_friend_application` VALUES (3, 2, 4, 4);
INSERT INTO `user_friend_application` VALUES (4, 1, 4, 1);

-- ----------------------------
-- Table structure for user_friend_category
-- ----------------------------
DROP TABLE IF EXISTS `user_friend_category`;
CREATE TABLE `user_friend_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `user_friend_category_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_friend_category
-- ----------------------------
INSERT INTO `user_friend_category` VALUES (1, 1, '好友');
INSERT INTO `user_friend_category` VALUES (2, 1, '饭友');
INSERT INTO `user_friend_category` VALUES (3, 2, '好友');
INSERT INTO `user_friend_category` VALUES (4, 2, '同事');
INSERT INTO `user_friend_category` VALUES (5, 3, '饭友');
INSERT INTO `user_friend_category` VALUES (6, 4, '同事');
INSERT INTO `user_friend_category` VALUES (7, 3, '好友');
INSERT INTO `user_friend_category` VALUES (8, 4, '好友');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `account_id`(`account_id` ASC) USING BTREE,
  CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 3, '用户一', 'user1@example.com', '0987654321', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/59c827f3-90b5-4e3b-8b29-fe431977246a.png', '2024-07-11 15:08:53');
INSERT INTO `user_info` VALUES (2, 4, '用户二', 'user2@example.com', '1234567890', 'cat.png', '2024-07-11 15:08:53');
INSERT INTO `user_info` VALUES (3, 5, '用户三', 'user3@example.com', '1122334455', 'panda.png', '2024-07-11 15:08:53');
INSERT INTO `user_info` VALUES (4, 6, '用户四', 'user4@example.com', '6677889900', 'user.png', '2024-07-11 15:08:53');

SET FOREIGN_KEY_CHECKS = 1;
