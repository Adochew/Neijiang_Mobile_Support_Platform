-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: support_platform
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

drop database if exists support_platform;
create database support_platform;
use support_platform;

--
-- Table structure for table `group_history`
--

DROP TABLE IF EXISTS `group_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_history` (-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: support_platform
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `group_history`
--

DROP TABLE IF EXISTS `group_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_history` (
                                 `history_id` int NOT NULL AUTO_INCREMENT,
                                 `account_id` int DEFAULT NULL,
                                 `group_id` int DEFAULT NULL,
                                 `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                 `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                 PRIMARY KEY (`history_id`) USING BTREE,
                                 KEY `group_id` (`group_id`) USING BTREE,
                                 KEY `account_id` (`account_id`) USING BTREE,
                                 CONSTRAINT `group_history_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_info` (`group_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                 CONSTRAINT `group_history_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_history`
--

INSERT INTO `group_history` (`history_id`, `account_id`, `group_id`, `action`, `details`, `created_at`) VALUES (223,2,135,'create','群组创建','2024-07-15 10:43:14'),(229,3,141,'create','群组创建','2024-07-15 10:43:14'),(235,4,147,'create','群组创建','2024-07-15 10:43:14'),(241,5,153,'create','群组创建','2024-07-15 10:43:14'),(247,6,159,'create','群组创建','2024-07-15 10:43:14'),(248,7,160,'create','群组创建','2024-07-15 10:43:14'),(253,8,165,'create','群组创建','2024-07-15 10:43:14'),(256,8,168,'create','群组创建','2024-07-15 10:43:14'),(258,9,170,'create','群组创建','2024-07-15 10:43:14'),(262,9,174,'create','群组创建','2024-07-15 10:43:14'),(263,10,175,'create','群组创建','2024-07-15 10:43:14'),(265,10,177,'create','群组创建','2024-07-15 10:43:14'),(268,2,135,'add','添加成员','2024-07-15 10:51:15'),(274,3,141,'add','添加成员','2024-07-15 10:51:15'),(280,4,147,'add','添加成员','2024-07-15 10:51:15'),(286,5,153,'add','添加成员','2024-07-15 10:51:15'),(292,6,159,'add','添加成员','2024-07-15 10:51:15'),(293,7,160,'add','添加成员','2024-07-15 10:51:15'),(298,8,165,'add','添加成员','2024-07-15 10:51:15'),(301,8,168,'add','添加成员','2024-07-15 10:51:15'),(303,9,170,'add','添加成员','2024-07-15 10:51:15'),(307,9,174,'add','添加成员','2024-07-15 10:51:15'),(308,10,175,'add','添加成员','2024-07-15 10:51:15'),(310,10,177,'add','添加成员','2024-07-15 10:51:15'),(313,32,135,'add','添加成员','2024-07-15 10:59:39'),(314,33,135,'add','添加成员','2024-07-15 10:59:39'),(315,34,135,'add','添加成员','2024-07-15 10:59:39'),(331,33,141,'add','添加成员','2024-07-15 10:59:39'),(332,34,141,'add','添加成员','2024-07-15 10:59:39'),(333,35,141,'add','添加成员','2024-07-15 10:59:39'),(349,34,147,'add','添加成员','2024-07-15 10:59:39'),(350,35,147,'add','添加成员','2024-07-15 10:59:39'),(351,36,147,'add','添加成员','2024-07-15 10:59:39'),(367,32,153,'add','添加成员','2024-07-15 10:59:39'),(368,35,153,'add','添加成员','2024-07-15 10:59:39'),(369,36,153,'add','添加成员','2024-07-15 10:59:39'),(385,32,159,'add','添加成员','2024-07-15 10:59:39'),(386,33,159,'add','添加成员','2024-07-15 10:59:39'),(387,36,159,'add','添加成员','2024-07-15 10:59:39'),(388,32,160,'add','添加成员','2024-07-15 10:59:39'),(389,33,160,'add','添加成员','2024-07-15 10:59:39'),(390,34,160,'add','添加成员','2024-07-15 10:59:39'),(403,32,165,'add','添加成员','2024-07-15 10:59:39'),(404,33,165,'add','添加成员','2024-07-15 10:59:39'),(405,34,165,'add','添加成员','2024-07-15 10:59:39'),(412,32,168,'add','添加成员','2024-07-15 10:59:39'),(413,35,168,'add','添加成员','2024-07-15 10:59:39'),(414,36,168,'add','添加成员','2024-07-15 10:59:39'),(418,32,170,'add','添加成员','2024-07-15 10:59:39'),(419,33,170,'add','添加成员','2024-07-15 10:59:39'),(420,34,170,'add','添加成员','2024-07-15 10:59:39'),(430,32,174,'add','添加成员','2024-07-15 10:59:39'),(431,33,174,'add','添加成员','2024-07-15 10:59:39'),(432,36,174,'add','添加成员','2024-07-15 10:59:39'),(433,32,175,'add','添加成员','2024-07-15 10:59:39'),(434,33,175,'add','添加成员','2024-07-15 10:59:39'),(435,34,175,'add','添加成员','2024-07-15 10:59:39'),(439,34,177,'add','添加成员','2024-07-15 10:59:39'),(440,35,177,'add','添加成员','2024-07-15 10:59:39'),(441,36,177,'add','添加成员','2024-07-15 10:59:39'),(448,2,135,'common','大家好，欢迎来到折扣优惠分享群！','2024-07-15 11:03:25'),(449,32,135,'common','很高兴加入这个群，希望能找到一些好的折扣信息。','2024-07-15 11:03:25'),(450,33,135,'common','我也是，期待和大家一起分享购物经验。','2024-07-15 11:03:25'),(451,34,135,'common','我已经在这里发现了一些不错的优惠，大家有需要可以问我。','2024-07-15 11:03:25'),(452,2,135,'common','今天有谁看到什么好的折扣吗？','2024-07-15 11:03:25'),(453,32,135,'common','我看到一家店的衣服打五折，很划算。','2024-07-15 11:03:25'),(454,33,135,'common','我刚买了一些家居用品，折扣力度也很大。','2024-07-15 11:03:25'),(455,34,135,'common','我推荐大家去看看电子产品，最近有很多优惠活动。','2024-07-15 11:03:25'),(456,2,135,'common','感谢大家的分享，希望大家都能买到心仪的商品。','2024-07-15 11:03:25'),(457,32,135,'common','不客气，大家互相帮助。','2024-07-15 11:03:25'),(458,33,135,'common','是的，我们群就是要这样互相分享。','2024-07-15 11:03:25'),(459,34,135,'common','如果有新的优惠信息，我会第一时间分享给大家。','2024-07-15 11:03:25'),(460,2,135,'common','太好了，期待你的分享。','2024-07-15 11:03:25'),(461,32,135,'common','我也会继续关注的。','2024-07-15 11:03:25'),(462,33,135,'common','我也是，大家一起努力。','2024-07-15 11:03:25'),(463,34,135,'common','好的，我们一起寻找更多优惠。','2024-07-15 11:03:25'),(464,2,135,'common','大家周末愉快，记得关注周末的特别优惠哦。','2024-07-15 11:03:25'),(465,32,135,'common','周末愉快，我会留意的。','2024-07-15 11:03:25'),(466,33,135,'common','周末愉快，谢谢提醒。','2024-07-15 11:03:25'),(467,34,135,'common','周末愉快，大家一起享受购物的乐趣吧。','2024-07-15 11:03:25');

--
-- Table structure for table `group_info`
--

DROP TABLE IF EXISTS `group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_info` (
                              `group_id` int NOT NULL AUTO_INCREMENT,
                              `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                              `owner_id` int DEFAULT NULL,
                              `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                              `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                              `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                              PRIMARY KEY (`group_id`) USING BTREE,
                              KEY `owner_id` (`owner_id`) USING BTREE,
                              CONSTRAINT `group_info_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_info`
--

INSERT INTO `group_info` (`group_id`, `group_name`, `owner_id`, `description`, `image_url`, `created_at`) VALUES (135,'折扣优惠分享群',2,'分享各类商品折扣信息','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/QQ20240716101721.jpg','2024-07-15 10:40:03'),(141,'美食爱好者交流群',3,'交流各地美食心得','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/group1.jpg','2024-07-15 10:40:03'),(147,'旅行攻略分享群',4,'分享旅行中的精彩瞬间','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/4cdc0159-c1eb-44c0-a9b8-3d5c89fd5563.png','2024-07-15 10:40:03'),(153,'健康生活讨论群',5,'探讨健康生活方式','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/21dee1d9-b2c6-4d25-bb01-e3f3160df0ce.jpg','2024-07-15 10:40:03'),(159,'科技新品体验群',6,'体验最新科技产品','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/751f220b-9847-4884-b99d-0a51aca5ab18.png','2024-07-15 10:40:03'),(160,'折扣优惠分享群',7,'分享各类商品折扣信息','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/QQ20240716101648.jpg','2024-07-15 10:40:03'),(165,'折扣优惠分享群',8,'分享各类商品折扣信息','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/d1a00e52-f54f-44f8-b1c3-2863b7060b13.png','2024-07-15 10:40:03'),(168,'健康生活讨论群',8,'探讨健康生活方式','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/21dee1d9-b2c6-4d25-bb01-e3f3160df0ce.jpg','2024-07-15 10:40:03'),(170,'折扣优惠分享群',9,'分享各类商品折扣信息','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/group1.jpg','2024-07-15 10:40:03'),(174,'科技新品体验群',9,'体验最新科技产品','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/ff929c36-c267-4301-b921-54cd775ece20.png','2024-07-15 10:40:03'),(175,'折扣优惠分享群',10,'分享各类商品折扣信息','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/d1a00e52-f54f-44f8-b1c3-2863b7060b13.png','2024-07-15 10:40:03'),(177,'旅行攻略分享群',10,'分享旅行中的精彩瞬间','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/group/ff929c36-c267-4301-b921-54cd775ece20.png','2024-07-15 10:40:03');

--
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_member` (
                                `group_id` int NOT NULL,
                                `account_id` int NOT NULL,
                                `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                PRIMARY KEY (`group_id`,`account_id`) USING BTREE,
                                KEY `account_id` (`account_id`) USING BTREE,
                                CONSTRAINT `group_member_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_info` (`group_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                CONSTRAINT `group_member_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_member`
--

INSERT INTO `group_member` (`group_id`, `account_id`, `role`, `created_at`) VALUES (135,2,'管理员','2024-07-15 10:45:23'),(135,32,'成员','2024-07-15 10:55:52'),(135,33,'成员','2024-07-15 10:55:52'),(135,34,'成员','2024-07-15 10:55:52'),(141,3,'管理员','2024-07-15 10:45:23'),(141,33,'成员','2024-07-15 10:55:52'),(141,34,'成员','2024-07-15 10:55:52'),(141,35,'成员','2024-07-15 10:55:52'),(147,4,'管理员','2024-07-15 10:45:23'),(147,34,'成员','2024-07-15 10:55:52'),(147,35,'成员','2024-07-15 10:55:52'),(147,36,'成员','2024-07-15 10:55:52'),(153,5,'管理员','2024-07-15 10:45:23'),(153,32,'成员','2024-07-15 10:55:52'),(153,35,'成员','2024-07-15 10:55:52'),(153,36,'成员','2024-07-15 10:55:52'),(159,6,'管理员','2024-07-15 10:45:23'),(159,32,'成员','2024-07-15 10:55:52'),(159,33,'成员','2024-07-15 10:55:52'),(159,36,'成员','2024-07-15 10:55:52'),(160,7,'管理员','2024-07-15 10:45:23'),(160,32,'成员','2024-07-15 10:55:52'),(160,33,'成员','2024-07-15 10:55:52'),(160,34,'成员','2024-07-15 10:55:52'),(165,8,'管理员','2024-07-15 10:45:23'),(165,32,'成员','2024-07-15 10:55:52'),(165,33,'成员','2024-07-15 10:55:52'),(165,34,'成员','2024-07-15 10:55:52'),(168,8,'管理员','2024-07-15 10:45:23'),(168,32,'成员','2024-07-15 10:55:52'),(168,35,'成员','2024-07-15 10:55:52'),(168,36,'成员','2024-07-15 10:55:52'),(170,9,'管理员','2024-07-15 10:45:23'),(170,32,'成员','2024-07-15 10:55:52'),(170,33,'成员','2024-07-15 10:55:52'),(170,34,'成员','2024-07-15 10:55:52'),(174,9,'管理员','2024-07-15 10:45:23'),(174,32,'成员','2024-07-15 10:55:52'),(174,33,'成员','2024-07-15 10:55:52'),(174,36,'成员','2024-07-15 10:55:52'),(175,10,'管理员','2024-07-15 10:45:23'),(175,32,'成员','2024-07-15 10:55:52'),(175,33,'成员','2024-07-15 10:55:52'),(175,34,'成员','2024-07-15 10:55:52'),(177,10,'管理员','2024-07-15 10:45:23'),(177,34,'成员','2024-07-15 10:55:52'),(177,35,'成员','2024-07-15 10:55:52'),(177,36,'成员','2024-07-15 10:55:52');

--
-- Table structure for table `merchant_category`
--

DROP TABLE IF EXISTS `merchant_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_category` (
                                     `category_id` int NOT NULL AUTO_INCREMENT,
                                     `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                     PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_category`
--

INSERT INTO `merchant_category` (`category_id`, `category_name`) VALUES (1,'美食'),(2,'休闲'),(3,'结婚'),(4,'影视'),(5,'丽人');

--
-- Table structure for table `merchant_comment`
--

DROP TABLE IF EXISTS `merchant_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_comment` (
                                    `comment_id` int NOT NULL AUTO_INCREMENT,
                                    `merchant_id` int DEFAULT NULL,
                                    `user_id` int DEFAULT NULL,
                                    `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                    `rating` int DEFAULT NULL,
                                    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                    PRIMARY KEY (`comment_id`) USING BTREE,
                                    KEY `merchant_id` (`merchant_id`) USING BTREE,
                                    KEY `user_id` (`user_id`) USING BTREE,
                                    CONSTRAINT `merchant_comment_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                    CONSTRAINT `merchant_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_comment`
--

INSERT INTO `merchant_comment` (`comment_id`, `merchant_id`, `user_id`, `content`, `rating`, `created_at`) VALUES (1,1,1,'非常好的商户！',5,'2024-07-11 07:08:53'),(2,1,2,'服务态度很好',4,'2024-07-11 07:08:53'),(3,2,1,'食物非常美味',5,'2024-07-11 07:08:53'),(4,2,2,'环境不错',3,'2024-07-11 07:08:53'),(5,1,1,'非常好的商户！',5,'2024-07-11 07:08:53'),(6,1,2,'服务态度很好',4,'2024-07-11 07:08:53'),(7,1,3,'甜点非常好吃',5,'2024-07-11 07:08:53'),(8,1,4,'价格有点高',3,'2024-07-11 07:08:53'),(9,2,1,'食物非常美味',5,'2024-07-11 07:08:53'),(10,2,2,'环境不错',4,'2024-07-11 07:08:53'),(11,2,3,'服务态度很好',5,'2024-07-11 07:08:53'),(12,2,4,'等待时间有点长',2,'2024-07-11 07:08:53'),(13,3,1,'火锅味道正宗，服务周到',5,'2024-07-11 07:08:53'),(14,3,2,'环境干净整洁，推荐！',4,'2024-07-11 07:08:53'),(15,3,3,'菜品新鲜，非常满意',5,'2024-07-11 07:08:53'),(16,3,4,'价格有点高',2,'2024-07-11 07:08:53'),(17,4,1,'火锅味道正宗，服务周到',5,'2024-07-11 07:08:53'),(18,4,2,'环境干净整洁，推荐！',4,'2024-07-11 07:08:53'),(19,4,3,'菜品新鲜，非常满意',5,'2024-07-11 07:08:53'),(20,4,4,'等待时间有点长',2,'2024-07-11 07:08:53'),(21,5,1,'甜点非常好吃，服务态度好',5,'2024-07-11 07:08:53'),(22,5,2,'环境优雅，适合约会',4,'2024-07-11 07:08:53'),(23,5,3,'价格合理，性价比高',5,'2024-07-11 07:08:53'),(24,5,4,'服务有点慢',3,'2024-07-11 07:08:53'),(25,6,1,'甜点非常好吃，服务态度好',5,'2024-07-11 07:08:53'),(26,6,2,'环境优雅，适合约会',4,'2024-07-11 07:08:53'),(27,6,3,'价格合理，性价比高',5,'2024-07-11 07:08:53'),(28,6,4,'价格有点高',2,'2024-07-11 07:08:53'),(29,7,1,'小吃种类多，味道不错',4,'2024-07-11 07:08:53'),(30,7,2,'服务快捷，体验良好',5,'2024-07-11 07:08:53'),(31,7,3,'环境一般，但味道弥补了',1,'2024-07-11 07:08:53'),(32,7,4,'服务有点慢',2,'2024-07-11 07:08:53'),(33,8,1,'小吃种类多，味道不错',4,'2024-07-11 07:08:53'),(34,8,2,'服务快捷，体验良好',5,'2024-07-11 07:08:53'),(35,8,3,'环境一般，但味道弥补了',2,'2024-07-11 07:08:53'),(36,8,4,'价格有点高',3,'2024-07-11 07:08:53'),(37,9,1,'川菜正宗，辣得过瘾',5,'2024-07-11 07:08:53'),(38,9,2,'服务热情，上菜快',4,'2024-07-11 07:08:53'),(39,9,3,'环境有特色，推荐尝试',5,'2024-07-11 07:08:53'),(40,9,4,'服务有点慢',3,'2024-07-11 07:08:53'),(41,10,1,'川菜正宗，辣得过瘾',5,'2024-07-11 07:08:53'),(42,10,2,'服务热情，上菜快',4,'2024-07-11 07:08:53'),(43,10,3,'环境有特色，推荐尝试',5,'2024-07-11 07:08:53'),(44,10,4,'价格有点高',3,'2024-07-11 07:08:53'),(45,11,1,'湘菜味道地道，服务周到',5,'2024-07-11 07:08:53'),(46,11,2,'环境舒适，适合家庭聚餐',4,'2024-07-11 07:08:53'),(47,11,3,'价格公道，性价比高',5,'2024-07-11 07:08:53'),(48,11,4,'服务有点慢',3,'2024-07-11 07:08:53'),(49,12,1,'湘菜味道地道，服务周到',5,'2024-07-11 07:08:53'),(50,12,2,'环境舒适，适合家庭聚餐',4,'2024-07-11 07:08:53'),(51,12,3,'价格公道，性价比高',5,'2024-07-11 07:08:53'),(52,12,4,'价格有点高',3,'2024-07-11 07:08:53'),(53,13,1,'足疗技术好，放松效果佳',5,'2024-07-11 07:08:53'),(54,13,2,'环境安静，服务专业',4,'2024-07-11 07:08:53'),(55,13,3,'价格合理，体验满意',5,'2024-07-11 07:08:53'),(56,13,4,'服务有点慢',3,'2024-07-11 07:08:53'),(57,14,1,'足疗技术好，放松效果佳',5,'2024-07-11 07:08:53'),(58,14,2,'环境安静，服务专业',4,'2024-07-11 07:08:53'),(59,14,3,'价格合理，体验满意',5,'2024-07-11 07:08:53'),(60,14,4,'价格有点高',3,'2024-07-11 07:08:53'),(61,15,1,'KTV音响效果好，服务热情',5,'2024-07-11 07:08:53'),(62,15,2,'环境时尚，适合朋友聚会',4,'2024-07-11 07:08:53'),(63,15,3,'价格适中，性价比不错',5,'2024-07-11 07:08:53'),(64,15,4,'服务有点慢',2,'2024-07-11 07:08:53'),(65,16,1,'KTV音响效果好，服务热情',5,'2024-07-11 07:08:53'),(66,16,2,'环境时尚，适合朋友聚会',4,'2024-07-11 07:08:53'),(67,16,3,'价格适中，性价比不错',5,'2024-07-11 07:08:53'),(68,16,4,'价格有点高',2,'2024-07-11 07:08:53'),(69,17,1,'摄影技术专业，服务周到',5,'2024-07-11 07:08:53'),(70,17,2,'环境优雅，拍摄效果好',4,'2024-07-11 07:08:53'),(71,17,3,'价格合理，服务满意',5,'2024-07-11 07:08:53'),(72,17,4,'服务有点慢',3,'2024-07-11 07:08:53'),(73,18,1,'摄影技术专业，服务周到',5,'2024-07-11 07:08:53'),(74,18,2,'环境优雅，拍摄效果好',4,'2024-07-11 07:08:53'),(75,18,3,'价格合理，服务满意',5,'2024-07-11 07:08:53'),(76,18,4,'价格有点高',3,'2024-07-11 07:08:53'),(77,19,1,'策划专业，服务细致',5,'2024-07-11 07:08:53'),(78,19,2,'环境布置精美，体验良好',4,'2024-07-11 07:08:53'),(79,19,3,'价格透明，性价比高',5,'2024-07-11 07:08:53'),(80,19,4,'服务有点慢',3,'2024-07-11 07:08:53'),(81,20,1,'策划专业，服务细致',5,'2024-07-11 07:08:53'),(82,20,2,'环境布置精美，体验良好',4,'2024-07-11 07:08:53');

--
-- Table structure for table `merchant_info`
--

DROP TABLE IF EXISTS `merchant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_info` (
                                 `merchant_id` int NOT NULL AUTO_INCREMENT,
                                 `owner_id` int NOT NULL,
                                 `category_id` int DEFAULT NULL,
                                 `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                 `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                 `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `business_environment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `business_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `product_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                 `coordinates` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 PRIMARY KEY (`merchant_id`) USING BTREE,
                                 KEY `owner_id` (`owner_id`) USING BTREE,
                                 CONSTRAINT `merchant_info_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_info`
--

INSERT INTO `merchant_info` (`merchant_id`, `owner_id`, `category_id`, `name`, `address`, `phone`, `email`, `business_type`, `business_environment`, `business_location`, `product_category`, `image_url`, `created_at`, `coordinates`) VALUES (1,2,1,'君诗烘焙','四川省 成都市 郫都区 红光街道 高店路 41号','028-87878147','87878147@example.com','餐饮','线下','中国','甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/angelina-yan-2o_G7UQliOI-unsplash.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(2,3,1,'爱达乐','四川省 成都市 郫都区 红光街道 高店路 39号','0987654321','merchant2@example.com','餐饮','线下','中国','甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/smallAida.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(3,4,1,'老码头火锅','四川省 成都市 郫都区 红光街道 高店路 43号','028-87878148','87878148@example.com','餐饮','线下','中国','火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/hotpot1.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(4,5,1,'小龙坎老火锅','四川省 成都市 郫都区 红光街道 高店路 45号','028-87878149','87878149@example.com','餐饮','线下','中国','火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/hotpot2.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(5,6,1,'君诗烘焙(旗舰)','四川省 成都市 郫都区 红光街道 高店路 47号','028-87878150','87878150@example.com','餐饮','线下','中国','甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/sera-iZgQKxuMRHc-unsplash.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(6,7,1,'爱达乐(旗舰)','四川省 成都市 郫都区 红光街道 高店路 49号','028-87878151','87878151@example.com','餐饮','线下','中国','甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/aidale.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(7,8,1,'串串香','四川省 成都市 郫都区 红光街道 高店路 51号','028-87878152','87878152@example.com','餐饮','线下','中国','小吃','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/chuanchaunxiang.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(8,9,1,'廖记棒棒鸡','四川省 成都市 郫都区 红光街道 高店路 53号','028-87878153','87878153@example.com','餐饮','线下','中国','小吃','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/liaojibangbangji.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(9,10,1,'川西坝子','四川省 成都市 郫都区 红光街道 高店路 55号','028-87878154','87878154@example.com','餐饮','线下','中国','川菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/chuanxibazi.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(10,11,1,'眉州东坡','四川省 成都市 郫都区 红光街道 高店路 57号','028-87878155','87878155@example.com','餐饮','线下','中国','川菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/meizhoudongpo.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(11,12,1,'毛家饭店','四川省 成都市 郫都区 红光街道 高店路 59号','028-87878156','87878156@example.com','餐饮','线下','中国','湘菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/maojiafandian.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(12,13,1,'湘西部落','四川省 成都市 郫都区 红光街道 高店路 61号','028-87878157','87878157@example.com','餐饮','线下','中国','湘菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/xiangxibuluo.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(13,14,2,'富侨足浴','四川省 成都市 郫都区 红光街道 高店路 63号','028-87878158','87878158@example.com','休闲','线下','中国','足疗','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/qiaofuzuyu.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(14,15,2,'大桶大足浴','四川省 成都市 郫都区 红光街道 高店路 65号','028-87878159','87878159@example.com','休闲','线下','中国','足疗','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/datongdazuyu.jpeg','2024-07-11 07:08:53','103.943060,30.790416'),(15,16,2,'好乐迪KTV','四川省 成都市 郫都区 红光街道 高店路 67号','028-87878160','87878160@example.com','娱乐','线下','中国','KTV','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/haoledi.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(16,17,2,'钱柜KTV','四川省 成都市 郫都区 红光街道 高店路 69号','028-87878161','87878161@example.com','娱乐','线下','中国','KTV','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/qiangui.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(17,18,3,'薇拉摄影','四川省 成都市 郫都区 红光街道 高店路 71号','028-87878162','87878162@example.com','摄影','线下','中国','摄影','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/weilasheyin.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(18,19,3,'金夫人婚纱摄影','四川省 成都市 郫都区 红光街道 高店路 73号','028-87878163','87878163@example.com','摄影','线下','中国','摄影','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/jinfuren.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(19,20,3,'婚礼纪','四川省 成都市 郫都区 红光街道 高店路 75号','028-87878164','87878164@example.com','婚庆','线下','中国','策划','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/hunliji.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(20,21,3,'喜铺','四川省 成都市 郫都区 红光街道 高店路 77号','028-87878165','87878165@example.com','婚庆','线下','中国','策划','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/xipu.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(21,22,4,'万达影城','四川省 成都市 郫都区 红光街道 高店路 79号','028-87878166','87878166@example.com','娱乐','线下','中国','电影院','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/wandayingcheng.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(22,23,4,'CGV影城','四川省 成都市 郫都区 红光街道 高店路 81号','028-87878167','87878167@example.com','娱乐','线下','中国','电影院','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/CGVyingcheng.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(23,24,5,'Tony美发','四川省 成都市 郫都区 红光街道 高店路 83号','028-87878168','87878168@example.com','美容','线下','中国','美发','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/adam-winger-FkAZqQJTbXM-unsplash.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(24,25,5,'阿玛尼美发','四川省 成都市 郫都区 红光街道 高店路 85号','028-87878169','87878169@example.com','美容','线下','中国','美发','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/amanimeifa.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(25,26,5,'美丽田园','四川省 成都市 郫都区 红光街道 高店路 87号','028-87878170','87878170@example.com','美容','线下','中国','美容','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/meilitianyuan.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(26,27,5,'克丽缇娜','四川省 成都市 郫都区 红光街道 高店路 89号','028-87878171','87878171@example.com','美容','线下','中国','美容','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/kelitina.jpg','2024-07-11 07:08:53','103.943060,30.790416');

--
-- Table structure for table `merchant_product`
--

DROP TABLE IF EXISTS `merchant_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_product` (
                                    `product_id` int NOT NULL AUTO_INCREMENT,
                                    `merchant_id` int DEFAULT NULL,
                                    `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                    `category_id` int DEFAULT NULL,
                                    `price` decimal(10,2) DEFAULT NULL,
                                    `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                    `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                    PRIMARY KEY (`product_id`) USING BTREE,
                                    KEY `merchant_id` (`merchant_id`) USING BTREE,
                                    KEY `category_id` (`category_id`) USING BTREE,
                                    CONSTRAINT `merchant_product_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                    CONSTRAINT `merchant_product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `merchant_product_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_product`
--

INSERT INTO `merchant_product` (`product_id`, `merchant_id`, `product_name`, `category_id`, `price`, `description`, `image_url`, `created_at`) VALUES (1,1,'榴莲千层',2,35.00,'难得的甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/d075c0dc-0b35-4f84-bf6e-15392bf21a3b.jpg','2024-07-11 07:08:53'),(2,1,'生日蛋糕',2,300.00,'生日必备','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/12ce2022-7465-47dd-8256-42a539ee7ebc.jpg','2024-07-11 07:08:53'),(5,1,'豆乳盒子',2,25.00,'清香的豆乳','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/0235c128-c4a8-4720-b531-a97768669759.jpg','2024-07-15 05:55:44'),(6,1,'奥利奥雪胖子',2,10.00,'浓郁的奥利奥味道','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/490ff422-aded-4bb1-b783-c975b314ce43.jpg','2024-07-15 05:58:33'),(11,2,'芒果慕斯',2,40.00,'新鲜的芒果慕斯','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/shree-iyer-ufmEG5h07DA-unsplash.jpg','2024-07-15 07:47:42'),(12,2,'草莓蛋糕',2,280.00,'草莓季限定蛋糕','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/swapnil-dwivedi-Nl8Oa6ZuNcA-unsplash.jpg','2024-07-15 07:47:42'),(13,2,'巧克力布朗尼',2,30.00,'浓郁的巧克力味道','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/david-holifield-kPxsqUGneXQ-unsplash.jpg','2024-07-15 07:47:42'),(14,2,'抹茶蛋糕卷',2,15.00,'清新的抹茶口味','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/vicky-ng-o0vMlQ0BX9M-unsplash.jpg','2024-07-15 07:47:42'),(15,3,'麻辣火锅',1,120.00,'正宗四川麻辣火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/peijia-li-AIWSvNU38H8-unsplash.jpg','2024-07-15 07:47:42'),(16,3,'清汤火锅',1,100.00,'清淡养生的清汤火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/subagus-indra-zpYpAotCIkA-unsplash.jpg','2024-07-15 07:47:42'),(17,3,'鸳鸯火锅',1,130.00,'一半麻辣一半清汤','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/luna-wang-1KVGE4yryCY-unsplash.jpg','2024-07-15 07:47:42'),(18,3,'菌汤火锅',1,110.00,'鲜美的菌汤火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/you-le-R_eO1SjCm2Q-unsplash.jpg','2024-07-15 07:47:42'),(19,4,'麻辣火锅',1,120.00,'正宗四川麻辣火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/peijia-li-AIWSvNU38H8-unsplash.jpg','2024-07-15 07:47:42'),(20,4,'清汤火锅',1,100.00,'清淡养生的清汤火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/subagus-indra-zpYpAotCIkA-unsplash.jpg','2024-07-15 07:47:42'),(21,4,'鸳鸯火锅',1,130.00,'一半麻辣一半清汤','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/luna-wang-1KVGE4yryCY-unsplash.jpg','2024-07-15 07:47:42'),(22,4,'菌汤火锅',1,110.00,'鲜美的菌汤火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/you-le-R_eO1SjCm2Q-unsplash.jpg','2024-07-15 07:47:42'),(23,5,'榴莲千层',2,35.00,'难得的甜点诶~','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/amirali-mirhashemian-ZYtbCrOoiDU-unsplash.jpg','2024-07-15 07:47:42'),(24,5,'生日蛋糕',2,300.00,'生日必备哦~','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/takuya-nagaoka-fENvSZUzbzU-unsplash.jpg','2024-07-15 07:47:42'),(25,5,'豆乳盒子',2,25.00,'又臭又香哦~','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/8290-2003e0961ae44ebf1f8d483f4853e98a.png','2024-07-15 07:47:42'),(26,5,'奥利奥雪胖子',2,10.00,'好好吃诶~','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/b8b923ae66dff0396c41fd71d5e8c411.jpeg','2024-07-15 07:47:42'),(27,6,'芒果慕斯',2,40.00,'新鲜的芒果慕斯','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/shree-iyer-ufmEG5h07DA-unsplash.jpg','2024-07-15 07:47:42'),(28,6,'草莓蛋糕',2,280.00,'草莓季限定蛋糕','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/swapnil-dwivedi-Nl8Oa6ZuNcA-unsplash.jpg','2024-07-15 07:47:42'),(29,6,'巧克力布朗尼',2,30.00,'浓郁的巧克力味道','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/david-holifield-kPxsqUGneXQ-unsplash.jpg','2024-07-15 07:47:42'),(30,6,'抹茶蛋糕卷',2,15.00,'清新的抹茶口味','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/vicky-ng-o0vMlQ0BX9M-unsplash.jpg','2024-07-15 07:47:42'),(31,7,'麻辣串串',3,50.00,'四川特色串串香','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/chuan1.jpg','2024-07-15 07:47:42'),(32,7,'清汤串串',3,40.00,'清淡养生的串串香','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/ella-olsson-Pb9aFVR9-Bk-unsplash.jpg','2024-07-15 07:47:42'),(33,7,'鸳鸯串串',3,60.00,'一半麻辣一半清汤','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/sam-moghadam-khamseh-hIOnaAscoj0-unsplash.jpg','2024-07-15 07:47:42'),(34,7,'菌汤串串',3,50.00,'鲜美的菌汤串串','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/tuan-nguy-n-minh-vK6B4fBR464-unsplash.jpg','2024-07-15 07:47:42'),(35,8,'棒棒鸡',3,30.00,'四川特色棒棒鸡','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/bangbangji.jpg','2024-07-15 07:47:42'),(36,8,'口水鸡',3,35.00,'麻辣鲜香的口水鸡','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/koushuiji.jpg','2024-07-15 07:47:42'),(37,8,'红油抄手',3,25.00,'四川特色红油抄手','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/chaoshou.jpg','2024-07-15 07:47:42'),(38,8,'夫妻肺片',3,40.00,'经典的夫妻肺片','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/fuqifeipian.jpg','2024-07-15 07:47:42'),(39,9,'宫保鸡丁',4,50.00,'经典的川菜宫保鸡丁','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/gongbaojiding.jpeg','2024-07-15 07:47:42'),(40,9,'麻婆豆腐',4,30.00,'麻辣鲜香的麻婆豆腐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/mapodoufu.jpg','2024-07-15 07:47:42'),(41,9,'水煮鱼',4,80.00,'鲜美的水煮鱼','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/shuizhuyu.jpg','2024-07-15 07:47:42'),(42,9,'回锅肉',4,45.00,'经典的回锅肉','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/huiguorou.jpg','2024-07-15 07:47:42'),(43,10,'东坡肉',4,60.00,'肥而不腻的东坡肉','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/dongporou.jpg','2024-07-15 07:47:42'),(44,10,'鱼香肉丝',4,40.00,'酸甜可口的鱼香肉丝','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/yuxiangrousi.jpg','2024-07-15 07:47:42'),(45,10,'干煸四季豆',4,35.00,'香辣的干煸四季豆','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/ganbiansijidou.jpg','2024-07-15 07:47:42'),(46,10,'辣子鸡',4,55.00,'麻辣的辣子鸡','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/laziji.jpg','2024-07-15 07:47:42'),(47,11,'毛氏红烧肉',5,60.00,'经典的毛氏红烧肉','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/maoshihongshorou.jpg','2024-07-15 07:47:42'),(48,11,'剁椒鱼头',5,70.00,'湘菜代表剁椒鱼头','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/duojioayutou.jpg','2024-07-15 07:47:42'),(49,11,'农家小炒肉',5,45.00,'家常的农家小炒肉','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/nongjiaxiaochaorou.jpeg','2024-07-15 07:47:42'),(50,11,'腊味合蒸',5,50.00,'湖南特色腊味合蒸','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/laweihezheng.jpg','2024-07-15 07:47:42'),(51,12,'湘西外婆菜',5,40.00,'湘西特色的外婆菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/xiangxiwaipocai.jpg','2024-07-15 07:47:42'),(52,12,'口味虾',5,80.00,'湖南特色口味虾','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/kouweixia.jpg','2024-07-15 07:47:42'),(53,12,'辣椒炒肉',5,45.00,'经典的辣椒炒肉','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/lajiaochaorou.jpg','2024-07-15 07:47:42'),(54,12,'酸辣土豆丝',5,30.00,'酸辣开胃的土豆丝','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/suanlatudousi.jpg','2024-07-15 07:47:42'),(55,13,'足浴套餐A',6,120.00,'放松身心的足浴套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/v2-a561574f374042dde5624249db1236e9_r.jpg','2024-07-15 07:47:42'),(56,13,'足浴套餐B',6,150.00,'高级足浴体验','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/20200225003848.jpg','2024-07-15 07:47:42'),(57,13,'足浴套餐C',6,180.00,'豪华足浴享受','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/zuyu1.jpg','2024-07-15 07:47:42'),(58,13,'足浴套餐D',6,200.00,'至尊足浴服务','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/zuyu2.jpg','2024-07-15 07:47:42'),(59,14,'足浴套餐A',6,120.00,'放松身心的足浴套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/v2-a561574f374042dde5624249db1236e9_r.jpg','2024-07-15 07:47:42'),(60,14,'足浴套餐B',6,150.00,'高级足浴体验','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/20200225003848.jpg','2024-07-15 07:47:42'),(61,14,'足浴套餐C',6,180.00,'豪华足浴享受','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/zuyu1.jpg','2024-07-15 07:47:42'),(62,14,'足浴套餐D',6,200.00,'至尊足浴服务','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/zuyu2.jpg','2024-07-15 07:47:42'),(63,15,'KTV包厢A',7,300.00,'小型KTV包厢','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/01eacb5df1ef71a801219ccef18051.jpg%401280w_1l_2o_100sh.jpg','2024-07-15 07:47:42'),(64,15,'KTV包厢B',7,500.00,'中型KTV包厢','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/R.jpg','2024-07-15 07:47:42'),(65,15,'KTV包厢C',7,800.00,'大型KTV包厢','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/OIP.jpg','2024-07-15 07:47:42'),(66,15,'KTV包厢D',7,1000.00,'豪华KTV包厢','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/0115a05df1ef71a8012097b33dc3e4.jpg%401280w_1l_2o_100sh.jpg','2024-07-15 07:47:42'),(67,16,'KTV包厢A',7,300.00,'小型KTV包厢','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/01eacb5df1ef71a801219ccef18051.jpg%401280w_1l_2o_100sh.jpg','2024-07-15 07:47:42'),(68,16,'KTV包厢B',7,500.00,'中型KTV包厢','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/R.jpg','2024-07-15 07:47:42'),(69,16,'KTV包厢C',7,800.00,'大型KTV包厢','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/OIP.jpg','2024-07-15 07:47:42'),(70,16,'KTV包厢D',7,1000.00,'豪华KTV包厢','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/0115a05df1ef71a8012097b33dc3e4.jpg%401280w_1l_2o_100sh.jpg','2024-07-15 07:47:42'),(71,17,'婚纱摄影套餐A',8,3000.00,'基础婚纱摄影套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/hunsha1.jpg','2024-07-15 07:47:42'),(72,17,'婚纱摄影套餐B',8,5000.00,'高级婚纱摄影套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/b538b35af1d3c88832c4a6369fb6abe1.jpg','2024-07-15 07:47:42'),(73,17,'婚纱摄影套餐C',8,8000.00,'豪华婚纱摄影套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/98a932cb866a5f8f0d35c565bf6dbda8.jpg','2024-07-15 07:47:42'),(74,17,'婚纱摄影套餐D',8,10000.00,'至尊婚纱摄影套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/8b0a83d12848effc44ce9b70d5438ae9.jpg','2024-07-15 07:47:42'),(75,18,'婚纱摄影套餐A',8,3000.00,'基础婚纱摄影套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/hunsha1.jpg','2024-07-15 07:47:42'),(76,18,'婚纱摄影套餐B',8,5000.00,'高级婚纱摄影套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/b538b35af1d3c88832c4a6369fb6abe1.jpg','2024-07-15 07:47:42'),(77,18,'婚纱摄影套餐C',8,8000.00,'豪华婚纱摄影套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/98a932cb866a5f8f0d35c565bf6dbda8.jpg','2024-07-15 07:47:42'),(78,18,'婚纱摄影套餐D',8,10000.00,'至尊婚纱摄影套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/8b0a83d12848effc44ce9b70d5438ae9.jpg','2024-07-15 07:47:42'),(79,19,'婚礼策划套餐A',9,5000.00,'基础婚礼策划套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/hunsha1.jpg','2024-07-15 07:47:42'),(80,19,'婚礼策划套餐B',9,8000.00,'高级婚礼策划套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/b538b35af1d3c88832c4a6369fb6abe1.jpg','2024-07-15 07:47:42'),(81,19,'婚礼策划套餐C',9,12000.00,'豪华婚礼策划套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/98a932cb866a5f8f0d35c565bf6dbda8.jpg','2024-07-15 07:47:42'),(82,19,'婚礼策划套餐D',9,15000.00,'至尊婚礼策划套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/8b0a83d12848effc44ce9b70d5438ae9.jpg','2024-07-15 07:47:42'),(83,20,'婚礼策划套餐A',9,5000.00,'基础婚礼策划套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/hunsha1.jpg','2024-07-15 07:47:42'),(84,20,'婚礼策划套餐B',9,8000.00,'高级婚礼策划套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/b538b35af1d3c88832c4a6369fb6abe1.jpg','2024-07-15 07:47:42'),(85,20,'婚礼策划套餐C',9,12000.00,'豪华婚礼策划套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/98a932cb866a5f8f0d35c565bf6dbda8.jpg','2024-07-15 07:47:42'),(86,20,'婚礼策划套餐D',9,15000.00,'至尊婚礼策划套餐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/8b0a83d12848effc44ce9b70d5438ae9.jpg','2024-07-15 07:47:42'),(87,21,'电影票A',10,50.00,'普通电影票','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/ahib.jpg','2024-07-15 07:47:42'),(88,21,'电影票B',10,80.00,'3D电影票','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/haobao2.jpg','2024-07-15 07:47:42'),(89,21,'电影票C',10,120.00,'IMAX电影票','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/0128255966e88fa8012193a3081d0c.jpg%402o.jpg','2024-07-15 07:47:42'),(90,21,'电影票D',10,150.00,'4D电影票','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/haob3.jpg','2024-07-15 07:47:42'),(91,22,'电影票A',10,50.00,'普通电影票','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/ahib.jpg','2024-07-15 07:47:42'),(92,22,'电影票B',10,80.00,'3D电影票','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/haobao2.jpg','2024-07-15 07:47:42'),(93,22,'电影票C',10,120.00,'IMAX电影票','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/0128255966e88fa8012193a3081d0c.jpg%402o.jpg','2024-07-15 07:47:42'),(94,22,'电影票D',10,150.00,'4D电影票','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/haob3.jpg','2024-07-15 07:47:42'),(95,23,'男士剪发',11,50.00,'基础男士剪发','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/nanlifa1.jpg','2024-07-15 07:47:42'),(96,23,'男士烫发',11,200.00,'男士烫发服务','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/4662.jpg_wh860.jpg','2024-07-15 07:47:42'),(97,23,'男士染发',11,150.00,'男士染发服务','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/RZgydbhwjQ_small.jpg','2024-07-15 07:47:42'),(98,23,'男士护理',11,100.00,'男士头发护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/1972.jpg_wh860.jpg','2024-07-15 07:47:42'),(99,24,'女士剪发',11,80.00,'基础女士剪发','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/nvliafa3.jpg','2024-07-15 07:47:42'),(100,24,'女士烫发',11,300.00,'女士烫发服务','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/nvlifa4.jpg','2024-07-15 07:47:42'),(101,24,'女士染发',11,250.00,'女士染发服务','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/nvlifa2.jpg','2024-07-15 07:47:42'),(102,24,'女士护理',11,150.00,'女士头发护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/nvlifa1.jpg','2024-07-15 07:47:42'),(103,25,'面部护理A',12,200.00,'基础面部护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/mianbu1.jpg','2024-07-15 07:47:42'),(104,25,'面部护理B',12,300.00,'高级面部护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/mianbu2.png','2024-07-15 07:47:42'),(105,25,'身体护理A',12,400.00,'基础身体护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/YSzBQHRhhf_small.jpg','2024-07-15 07:47:42'),(106,25,'身体护理B',12,500.00,'高级身体护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/10519375_160555863000_2.jpg','2024-07-15 07:47:42'),(107,26,'面部护理A',12,200.00,'基础面部护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/mianbu1.jpg','2024-07-15 07:47:42'),(108,26,'面部护理B',12,300.00,'高级面部护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/mianbu2.png','2024-07-15 07:47:42'),(109,26,'身体护理A',12,400.00,'基础身体护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/YSzBQHRhhf_small.jpg','2024-07-15 07:47:42'),(110,26,'身体护理B',12,500.00,'高级身体护理','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/10519375_160555863000_2.jpg','2024-07-15 07:47:42');

--
-- Table structure for table `merchant_product_category`
--

DROP TABLE IF EXISTS `merchant_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_product_category` (
                                             `category_id` int NOT NULL AUTO_INCREMENT,
                                             `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                             PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_product_category`
--

INSERT INTO `merchant_product_category` (`category_id`, `category_name`) VALUES (1,'火锅'),(2,'甜点'),(3,'小吃'),(4,'川菜'),(5,'湘菜'),(6,'足疗'),(7,'KTV'),(8,'摄影'),(9,'策划'),(10,'电影院'),(11,'美发'),(12,'美容'),(13,'粤菜'),(14,'台湾菜'),(15,'海鲜'),(16,'洗浴'),(17,'酒吧'),(18,'轰趴'),(19,'首饰'),(20,'跟拍'),(21,'舞蹈'),(22,'美甲');

--
-- Table structure for table `merchant_product_comment`
--

DROP TABLE IF EXISTS `merchant_product_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_product_comment` (
                                            `comment_id` int NOT NULL AUTO_INCREMENT,
                                            `product_id` int DEFAULT NULL,
                                            `user_id` int DEFAULT NULL,
                                            `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                            `rating` int DEFAULT NULL,
                                            `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                            PRIMARY KEY (`comment_id`) USING BTREE,
                                            KEY `product_id` (`product_id`) USING BTREE,
                                            KEY `user_id` (`user_id`) USING BTREE,
                                            CONSTRAINT `merchant_product_comment_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `merchant_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                            CONSTRAINT `merchant_product_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_product_comment`
--

INSERT INTO `merchant_product_comment` (`comment_id`, `product_id`, `user_id`, `content`, `rating`, `created_at`) VALUES (155,1,1,'非常美味的榴莲千层，强烈推荐！',5,'2024-07-15 08:00:00'),(156,1,2,'口感很好，榴莲味道浓郁。',4,'2024-07-15 08:01:00'),(157,1,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:02:00'),(158,2,1,'生日蛋糕非常漂亮，味道也很好。',5,'2024-07-15 08:05:00'),(159,2,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:06:00'),(160,2,3,'蛋糕有点干，不太喜欢。',2,'2024-07-15 08:07:00'),(161,5,1,'豆乳盒子味道独特，很喜欢。',5,'2024-07-15 08:10:00'),(162,5,2,'豆乳味道很浓，但有点腻。',3,'2024-07-15 08:11:00'),(163,5,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:12:00'),(164,6,1,'奥利奥雪胖子非常好吃，甜而不腻。',5,'2024-07-15 08:15:00'),(165,6,2,'口感很好，奥利奥味道很浓。',4,'2024-07-15 08:16:00'),(166,6,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:17:00'),(179,11,1,'芒果慕斯非常新鲜，口感很好。',5,'2024-07-15 08:20:00'),(180,11,2,'芒果味道很浓，但有点腻。',3,'2024-07-15 08:21:00'),(181,11,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:22:00'),(182,12,1,'草莓蛋糕非常漂亮，味道也很好。',5,'2024-07-15 08:25:00'),(183,12,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:26:00'),(184,12,3,'蛋糕有点干，不太喜欢。',2,'2024-07-15 08:27:00'),(185,13,1,'巧克力布朗尼非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(186,13,2,'口感很好，巧克力味道很浓。',4,'2024-07-15 08:31:00'),(187,13,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(188,14,1,'抹茶蛋糕卷非常新鲜，口感很好。',5,'2024-07-15 08:35:00'),(189,14,2,'抹茶味道很浓，但有点腻。',3,'2024-07-15 08:36:00'),(190,14,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:37:00'),(191,15,1,'麻辣火锅非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(192,15,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(193,15,3,'火锅有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(194,16,1,'清汤火锅非常清淡，适合养生。',5,'2024-07-15 08:45:00'),(195,16,2,'清汤味道很淡，但很健康。',4,'2024-07-15 08:46:00'),(196,16,3,'不太喜欢这种清淡口味，感觉一般。',2,'2024-07-15 08:47:00'),(197,17,1,'鸳鸯火锅非常特别，一半麻辣一半清汤。',5,'2024-07-15 08:50:00'),(198,17,2,'两种口味都很不错，推荐尝试。',4,'2024-07-15 08:51:00'),(199,17,3,'不太能接受这种混合口味，感觉一般。',2,'2024-07-15 08:52:00'),(200,18,1,'菌汤火锅非常鲜美，味道很好。',5,'2024-07-15 08:55:00'),(201,18,2,'菌汤味道很浓，但有点腻。',3,'2024-07-15 08:56:00'),(202,18,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:57:00'),(203,19,1,'麻辣火锅非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(204,19,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(205,19,3,'火锅有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(206,20,1,'清汤火锅非常清淡，适合养生。',5,'2024-07-15 08:45:00'),(207,20,2,'清汤味道很淡，但很健康。',4,'2024-07-15 08:46:00'),(208,20,3,'不太喜欢这种清淡口味，感觉一般。',2,'2024-07-15 08:47:00'),(209,21,1,'鸳鸯火锅非常特别，一半麻辣一半清汤。',5,'2024-07-15 08:50:00'),(210,21,2,'两种口味都很不错，推荐尝试。',4,'2024-07-15 08:51:00'),(211,21,3,'不太能接受这种混合口味，感觉一般。',2,'2024-07-15 08:52:00'),(212,22,1,'菌汤火锅非常鲜美，味道很好。',5,'2024-07-15 08:55:00'),(213,22,2,'菌汤味道很浓，但有点腻。',3,'2024-07-15 08:56:00'),(214,22,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:57:00'),(215,23,1,'榴莲千层非常新鲜，口感很好。',5,'2024-07-15 08:35:00'),(216,23,2,'榴莲味道很浓，但有点腻。',3,'2024-07-15 08:36:00'),(217,23,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:37:00'),(218,24,1,'生日蛋糕非常漂亮，味道也很好。',5,'2024-07-15 08:25:00'),(219,24,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:26:00'),(220,24,3,'蛋糕有点干，不太喜欢。',2,'2024-07-15 08:27:00'),(221,25,1,'豆乳盒子味道独特，很喜欢。',5,'2024-07-15 08:10:00'),(222,25,2,'豆乳味道很浓，但有点腻。',3,'2024-07-15 08:11:00'),(223,25,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:12:00'),(224,26,1,'奥利奥雪胖子非常好吃，甜而不腻。',5,'2024-07-15 08:15:00'),(225,26,2,'口感很好，奥利奥味道很浓。',4,'2024-07-15 08:16:00'),(226,26,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:17:00'),(227,27,1,'芒果慕斯非常新鲜，口感很好。',5,'2024-07-15 08:20:00'),(228,27,2,'芒果味道很浓，但有点腻。',3,'2024-07-15 08:21:00'),(229,27,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:22:00'),(230,28,1,'草莓蛋糕非常漂亮，味道也很好。',5,'2024-07-15 08:25:00'),(231,28,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:26:00'),(232,28,3,'蛋糕有点干，不太喜欢。',2,'2024-07-15 08:27:00'),(233,29,1,'巧克力布朗尼非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(234,29,2,'口感很好，巧克力味道很浓。',4,'2024-07-15 08:31:00'),(235,29,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(236,30,1,'抹茶蛋糕卷非常新鲜，口感很好。',5,'2024-07-15 08:35:00'),(237,30,2,'抹茶味道很浓，但有点腻。',3,'2024-07-15 08:36:00'),(238,30,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:37:00'),(239,31,1,'麻辣串串非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(240,31,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(241,31,3,'串串有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(242,32,1,'清汤串串非常清淡，适合养生。',5,'2024-07-15 08:45:00'),(243,32,2,'清汤味道很淡，但很健康。',4,'2024-07-15 08:46:00'),(244,32,3,'不太喜欢这种清淡口味，感觉一般。',2,'2024-07-15 08:47:00'),(245,33,1,'鸳鸯串串非常特别，一半麻辣一半清汤。',5,'2024-07-15 08:50:00'),(246,33,2,'两种口味都很不错，推荐尝试。',4,'2024-07-15 08:51:00'),(247,33,3,'不太能接受这种混合口味，感觉一般。',2,'2024-07-15 08:52:00'),(248,34,1,'菌汤串串非常鲜美，味道很好。',5,'2024-07-15 08:55:00'),(249,34,2,'菌汤味道很浓，但有点腻。',3,'2024-07-15 08:56:00'),(250,34,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:57:00'),(251,35,1,'棒棒鸡非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(252,35,2,'口感很好，鸡肉很嫩。',4,'2024-07-15 08:31:00'),(253,35,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(254,36,1,'口水鸡非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(255,36,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(256,36,3,'鸡肉有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(257,37,1,'红油抄手非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(258,37,2,'口感很好，抄手很嫩。',4,'2024-07-15 08:31:00'),(259,37,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(260,38,1,'夫妻肺片非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(261,38,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(262,38,3,'肺片有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(263,39,1,'宫保鸡丁非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(264,39,2,'口感很好，鸡肉很嫩。',4,'2024-07-15 08:31:00'),(265,39,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(266,40,1,'麻婆豆腐非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(267,40,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(268,40,3,'豆腐有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(269,41,1,'水煮鱼非常鲜美，辣度适中。',5,'2024-07-15 09:00:00'),(270,41,2,'鱼肉很嫩，味道很好。',4,'2024-07-15 09:01:00'),(271,41,3,'有点太辣了，不太适合我。',2,'2024-07-15 09:02:00'),(272,42,4,'回锅肉非常经典，味道很好。',5,'2024-07-15 09:03:00'),(273,42,5,'肉片很薄，口感很好。',4,'2024-07-15 09:04:00'),(274,42,1,'有点太油腻了，不太适合我。',2,'2024-07-15 09:05:00'),(275,43,2,'东坡肉肥而不腻，非常好吃。',5,'2024-07-15 09:06:00'),(276,43,3,'肉炖得很烂，味道很好。',4,'2024-07-15 09:07:00'),(277,43,4,'有点太甜了，不太适合我。',2,'2024-07-15 09:08:00'),(278,44,5,'鱼香肉丝酸甜可口，非常下饭。',5,'2024-07-15 09:09:00'),(279,44,1,'肉丝很嫩，味道很好。',4,'2024-07-15 09:10:00'),(280,44,2,'有点太酸了，不太适合我。',2,'2024-07-15 09:11:00'),(281,45,3,'干煸四季豆香辣可口，非常好吃。',5,'2024-07-15 09:12:00'),(282,45,4,'四季豆很脆，味道很好。',4,'2024-07-15 09:13:00'),(283,45,5,'有点太辣了，不太适合我。',2,'2024-07-15 09:14:00'),(284,46,1,'辣子鸡麻辣可口，非常下饭。',5,'2024-07-15 09:15:00'),(285,46,2,'鸡肉很嫩，味道很好。',4,'2024-07-15 09:16:00'),(286,46,3,'有点太麻了，不太适合我。',2,'2024-07-15 09:17:00'),(287,47,4,'毛氏红烧肉非常经典，味道很好。',5,'2024-07-15 09:18:00'),(288,47,5,'肉炖得很烂，口感很好。',4,'2024-07-15 09:19:00'),(289,47,1,'有点太甜了，不太适合我。',2,'2024-07-15 09:20:00'),(290,48,2,'剁椒鱼头非常鲜美，辣度适中。',5,'2024-07-15 09:21:00'),(291,48,3,'鱼头很嫩，味道很好。',4,'2024-07-15 09:22:00'),(292,48,4,'有点太辣了，不太适合我。',2,'2024-07-15 09:23:00'),(293,49,5,'农家小炒肉非常下饭，味道很好。',5,'2024-07-15 09:24:00'),(294,49,1,'肉片很薄，口感很好。',4,'2024-07-15 09:25:00'),(295,49,2,'有点太油腻了，不太适合我。',2,'2024-07-15 09:26:00'),(296,50,3,'腊味合蒸非常经典，味道很好。',5,'2024-07-15 09:27:00'),(297,50,4,'腊味很香，口感很好。',4,'2024-07-15 09:28:00'),(298,50,5,'有点太咸了，不太适合我。',2,'2024-07-15 09:29:00'),(299,51,1,'湘西外婆菜非常地道，味道很好。',5,'2024-07-15 09:30:00'),(300,51,2,'菜很入味，口感很好。',4,'2024-07-15 09:31:00'),(301,51,3,'有点太辣了，不太适合我。',2,'2024-07-15 09:32:00'),(302,52,4,'口味虾非常鲜美，辣度适中。',5,'2024-07-15 09:33:00'),(303,52,5,'虾很新鲜，味道很好。',4,'2024-07-15 09:34:00'),(304,52,1,'有点太辣了，不太适合我。',2,'2024-07-15 09:35:00'),(305,53,2,'辣椒炒肉非常下饭，味道很好。',5,'2024-07-15 09:36:00'),(306,53,3,'肉片很薄，口感很好。',4,'2024-07-15 09:37:00'),(307,53,4,'有点太油腻了，不太适合我。',2,'2024-07-15 09:38:00'),(308,54,5,'酸辣土豆丝非常开胃，味道很好。',5,'2024-07-15 09:39:00'),(309,54,1,'土豆丝很脆，口感很好。',4,'2024-07-15 09:40:00'),(310,54,2,'有点太酸了，不太适合我。',2,'2024-07-15 09:41:00'),(311,55,3,'足浴套餐A非常放松，服务很好。',5,'2024-07-15 09:42:00'),(312,55,4,'环境很好，体验很棒。',4,'2024-07-15 09:43:00'),(313,55,5,'价格有点贵，性价比一般。',2,'2024-07-15 09:44:00'),(314,56,1,'足浴套餐B非常高级，服务很好。',5,'2024-07-15 09:45:00'),(315,56,2,'环境很好，体验很棒。',4,'2024-07-15 09:46:00'),(316,56,3,'价格有点贵，性价比一般。',2,'2024-07-15 09:47:00'),(317,57,4,'足浴套餐C非常豪华，服务很好。',5,'2024-07-15 09:48:00'),(318,57,5,'环境很好，体验很棒。',4,'2024-07-15 09:49:00'),(319,57,1,'价格有点贵，性价比一般。',2,'2024-07-15 09:50:00'),(320,58,2,'足浴套餐D非常至尊，服务很好。',5,'2024-07-15 09:51:00'),(321,58,3,'环境很好，体验很棒。',4,'2024-07-15 09:52:00'),(322,58,4,'价格有点贵，性价比一般。',2,'2024-07-15 09:53:00'),(323,59,5,'足浴套餐A非常放松，服务很好。',5,'2024-07-15 09:54:00'),(324,59,1,'环境很好，体验很棒。',4,'2024-07-15 09:55:00'),(325,59,2,'价格有点贵，性价比一般。',2,'2024-07-15 09:56:00'),(326,60,3,'足浴套餐B非常高级，服务很好。',5,'2024-07-15 09:57:00'),(327,60,4,'环境很好，体验很棒。',4,'2024-07-15 09:58:00'),(328,60,5,'价格有点贵，性价比一般。',2,'2024-07-15 09:59:00'),(329,61,1,'足浴套餐C非常豪华，服务很好。',5,'2024-07-15 10:00:00'),(330,61,2,'环境很好，体验很棒。',4,'2024-07-15 10:01:00'),(331,61,3,'价格有点贵，性价比一般。',2,'2024-07-15 10:02:00'),(332,62,4,'足浴套餐D非常至尊，服务很好。',5,'2024-07-15 10:03:00'),(333,62,5,'环境很好，体验很棒。',4,'2024-07-15 10:04:00'),(334,62,1,'价格有点贵，性价比一般。',2,'2024-07-15 10:05:00'),(335,63,2,'KTV包厢A非常舒适，音响效果很好。',5,'2024-07-15 10:06:00'),(336,63,3,'环境很好，服务很周到。',4,'2024-07-15 10:07:00'),(337,63,4,'价格有点贵，性价比一般。',2,'2024-07-15 10:08:00'),(338,64,5,'KTV包厢B非常宽敞，音响效果很好。',5,'2024-07-15 10:09:00'),(339,64,1,'环境很好，服务很周到。',4,'2024-07-15 10:10:00'),(340,64,2,'价格有点贵，性价比一般。',2,'2024-07-15 10:11:00'),(341,65,3,'KTV包厢C非常豪华，音响效果很好。',5,'2024-07-15 10:12:00'),(342,65,4,'环境很好，服务很周到。',4,'2024-07-15 10:13:00'),(343,65,5,'价格有点贵，性价比一般。',2,'2024-07-15 10:14:00'),(344,66,1,'KTV包厢D非常至尊，音响效果很好。',5,'2024-07-15 10:15:00'),(345,66,2,'环境很好，服务很周到。',4,'2024-07-15 10:16:00'),(346,66,3,'价格有点贵，性价比一般。',2,'2024-07-15 10:17:00'),(347,67,4,'KTV包厢A非常舒适，音响效果很好。',5,'2024-07-15 10:18:00'),(348,67,5,'环境很好，服务很周到。',4,'2024-07-15 10:19:00'),(349,67,1,'价格有点贵，性价比一般。',2,'2024-07-15 10:20:00'),(350,68,2,'KTV包厢B非常宽敞，音响效果很好。',5,'2024-07-15 10:21:00'),(351,68,3,'环境很好，服务很周到。',4,'2024-07-15 10:22:00'),(352,68,4,'价格有点贵，性价比一般。',2,'2024-07-15 10:23:00'),(353,69,5,'KTV包厢C非常豪华，音响效果很好。',5,'2024-07-15 10:24:00'),(354,69,1,'环境很好，服务很周到。',4,'2024-07-15 10:25:00'),(355,69,2,'价格有点贵，性价比一般。',2,'2024-07-15 10:26:00'),(356,70,3,'KTV包厢D非常至尊，音响效果很好。',5,'2024-07-15 10:27:00'),(357,70,4,'环境很好，服务很周到。',4,'2024-07-15 10:28:00'),(358,70,5,'价格有点贵，性价比一般。',2,'2024-07-15 10:29:00'),(359,71,1,'婚纱摄影套餐A非常基础，服务很好。',5,'2024-07-15 10:30:00'),(360,71,2,'摄影师很专业，体验很棒。',4,'2024-07-15 10:31:00'),(361,71,3,'价格有点贵，性价比一般。',2,'2024-07-15 10:32:00'),(362,72,4,'婚纱摄影套餐B非常高级，服务很好。',5,'2024-07-15 10:33:00'),(363,72,5,'摄影师很专业，体验很棒。',4,'2024-07-15 10:34:00'),(364,72,1,'价格有点贵，性价比一般。',2,'2024-07-15 10:35:00'),(365,73,2,'婚纱摄影套餐C非常豪华，服务很好。',5,'2024-07-15 10:36:00'),(366,73,3,'摄影师很专业，体验很棒。',4,'2024-07-15 10:37:00'),(367,73,4,'价格有点贵，性价比一般。',2,'2024-07-15 10:38:00'),(368,74,5,'婚纱摄影套餐D非常至尊，服务很好。',5,'2024-07-15 10:39:00'),(369,74,1,'摄影师很专业，体验很棒。',4,'2024-07-15 10:40:00'),(370,74,2,'价格有点贵，性价比一般。',2,'2024-07-15 10:41:00'),(371,75,3,'婚纱摄影套餐A非常基础，服务很好。',5,'2024-07-15 10:42:00'),(372,75,4,'摄影师很专业，体验很棒。',4,'2024-07-15 10:43:00'),(373,75,5,'价格有点贵，性价比一般。',2,'2024-07-15 10:44:00'),(374,76,1,'婚纱摄影套餐B非常高级，服务很好。',5,'2024-07-15 10:45:00'),(375,76,2,'摄影师很专业，体验很棒。',4,'2024-07-15 10:46:00'),(376,76,3,'价格有点贵，性价比一般。',2,'2024-07-15 10:47:00'),(377,77,4,'婚纱摄影套餐C非常豪华，服务很好。',5,'2024-07-15 10:48:00'),(378,77,5,'摄影师很专业，体验很棒。',4,'2024-07-15 10:49:00'),(379,77,1,'价格有点贵，性价比一般。',2,'2024-07-15 10:50:00'),(380,78,2,'婚纱摄影套餐D非常至尊，服务很好。',5,'2024-07-15 10:51:00'),(381,78,3,'摄影师很专业，体验很棒。',4,'2024-07-15 10:52:00'),(382,78,4,'价格有点贵，性价比一般。',2,'2024-07-15 10:53:00'),(383,79,5,'婚礼策划套餐A非常基础，服务很好。',5,'2024-07-15 10:54:00'),(384,79,1,'策划师很专业，体验很棒。',4,'2024-07-15 10:55:00'),(385,79,2,'价格有点贵，性价比一般。',2,'2024-07-15 10:56:00'),(386,80,3,'婚礼策划套餐B非常高级，服务很好。',5,'2024-07-15 10:57:00'),(387,80,4,'策划师很专业，体验很棒。',4,'2024-07-15 10:58:00'),(388,80,5,'价格有点贵，性价比一般。',2,'2024-07-15 10:59:00'),(389,81,1,'婚礼策划套餐C非常豪华，服务很好。',5,'2024-07-15 11:00:00'),(390,81,2,'策划师很专业，体验很棒。',4,'2024-07-15 11:01:00'),(391,81,3,'价格有点贵，性价比一般。',2,'2024-07-15 11:02:00'),(392,82,4,'婚礼策划套餐D非常至尊，服务很好。',5,'2024-07-15 11:03:00'),(393,82,5,'策划师很专业，体验很棒。',4,'2024-07-15 11:04:00'),(394,82,1,'价格有点贵，性价比一般。',2,'2024-07-15 11:05:00'),(395,83,2,'婚礼策划套餐A非常基础，服务很好。',5,'2024-07-15 11:06:00'),(396,83,3,'策划师很专业，体验很棒。',4,'2024-07-15 11:07:00'),(397,83,4,'价格有点贵，性价比一般。',2,'2024-07-15 11:08:00'),(398,84,5,'婚礼策划套餐B非常高级，服务很好。',5,'2024-07-15 11:09:00'),(399,84,1,'策划师很专业，体验很棒。',4,'2024-07-15 11:10:00'),(400,84,2,'价格有点贵，性价比一般。',2,'2024-07-15 11:11:00'),(401,85,3,'婚礼策划套餐C非常豪华，服务很好。',5,'2024-07-15 11:12:00'),(402,85,4,'策划师很专业，体验很棒。',4,'2024-07-15 11:13:00'),(403,85,5,'价格有点贵，性价比一般。',2,'2024-07-15 11:14:00'),(404,86,1,'这个婚礼策划套餐非常棒，服务周到，推荐！',5,'2024-07-15 08:30:00'),(405,86,2,'工作人员非常专业，整个过程非常顺利。',5,'2024-07-15 08:31:00'),(406,86,3,'有点小失望，服务没有预期的好。',2,'2024-07-15 08:32:00'),(407,87,4,'电影票性价比很高，下次还会购买。',5,'2024-07-15 08:33:00'),(408,87,5,'观影效果不错，推荐给大家。',5,'2024-07-15 08:34:00'),(409,88,1,'3D效果很棒，非常满意。',5,'2024-07-15 08:35:00'),(410,88,2,'座位有点不舒服，其他都还好。',4,'2024-07-15 08:36:00'),(411,89,3,'IMAX体验非常震撼，强烈推荐。',5,'2024-07-15 08:37:00'),(412,89,4,'价格有点高，但体验值得。',4,'2024-07-15 08:38:00'),(413,90,5,'4D效果一般，没有想象中的好。',2,'2024-07-15 08:39:00'),(414,90,1,'观影体验很特别，推荐尝试。',4,'2024-07-15 08:40:00'),(415,91,2,'普通电影票价格实惠，不错。',5,'2024-07-15 08:41:00'),(416,91,3,'影院环境很好，服务也不错。',5,'2024-07-15 08:42:00'),(417,92,4,'3D电影票效果很好，推荐购买。',5,'2024-07-15 08:43:00'),(418,92,5,'观影体验不错，下次还会来。',5,'2024-07-15 08:44:00'),(419,93,1,'IMAX电影票非常震撼，值得一看。',5,'2024-07-15 08:45:00'),(420,93,2,'价格有点贵，但体验很好。',4,'2024-07-15 08:46:00'),(421,94,3,'4D电影票效果一般，不太推荐。',2,'2024-07-15 08:47:00'),(422,94,4,'观影体验很特别，可以尝试。',4,'2024-07-15 08:48:00'),(423,95,5,'男士剪发服务很好，发型师很专业。',5,'2024-07-15 08:49:00'),(424,95,1,'价格实惠，服务也不错。',5,'2024-07-15 08:50:00'),(425,96,2,'男士烫发效果很好，非常满意。',5,'2024-07-15 08:51:00'),(426,96,3,'烫发效果一般，没有预期的好。',2,'2024-07-15 08:52:00'),(427,97,4,'男士染发颜色很满意，推荐。',5,'2024-07-15 08:53:00'),(428,97,5,'染发效果不错，服务也很好。',5,'2024-07-15 08:54:00'),(429,98,1,'男士护理服务很专业，推荐。',5,'2024-07-15 08:55:00'),(430,98,2,'护理效果一般，没有特别的感觉。',3,'2024-07-15 08:56:00'),(431,99,3,'女士剪发很满意，发型师很专业。',5,'2024-07-15 08:57:00'),(432,99,4,'剪发效果不错，服务也很好。',5,'2024-07-15 08:58:00'),(433,100,5,'女士烫发效果很好，非常满意。',5,'2024-07-15 08:59:00'),(434,100,1,'烫发效果一般，没有预期的好。',2,'2024-07-15 09:00:00'),(435,101,2,'女士染发颜色很满意，推荐。',5,'2024-07-15 09:01:00'),(436,101,3,'染发效果不错，服务也很好。',5,'2024-07-15 09:02:00'),(437,102,4,'女士护理服务很专业，推荐。',5,'2024-07-15 09:03:00'),(438,102,5,'护理效果一般，没有特别的感觉。',3,'2024-07-15 09:04:00'),(439,103,1,'面部护理效果很好，非常满意。',5,'2024-07-15 09:05:00'),(440,103,2,'护理效果一般，没有预期的好。',2,'2024-07-15 09:06:00'),(441,104,3,'高级面部护理效果很好，推荐。',5,'2024-07-15 09:07:00'),(442,104,4,'护理效果不错，服务也很好。',5,'2024-07-15 09:08:00'),(443,105,5,'身体护理效果很好，非常满意。',5,'2024-07-15 09:09:00'),(444,105,1,'护理效果一般，没有预期的好。',2,'2024-07-15 09:10:00'),(445,106,2,'高级身体护理效果很好，推荐。',5,'2024-07-15 09:11:00'),(446,106,3,'护理效果不错，服务也很好。',5,'2024-07-15 09:12:00'),(447,107,4,'面部护理效果很好，非常满意。',5,'2024-07-15 09:13:00'),(448,107,5,'护理效果一般，没有预期的好。',2,'2024-07-15 09:14:00'),(449,108,1,'高级面部护理效果很好，推荐。',5,'2024-07-15 09:15:00'),(450,108,2,'护理效果不错，服务也很好。',5,'2024-07-15 09:16:00'),(451,109,3,'身体护理效果很好，非常满意。',5,'2024-07-15 09:17:00'),(452,109,4,'护理效果一般，没有预期的好。',2,'2024-07-15 09:18:00'),(453,110,5,'高级身体护理效果很好，推荐。',5,'2024-07-15 09:19:00'),(454,110,1,'护理效果不错，服务也很好。',5,'2024-07-15 09:20:00');

--
-- Table structure for table `merchant_promotion`
--

DROP TABLE IF EXISTS `merchant_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_promotion` (
                                      `promotion_id` int NOT NULL AUTO_INCREMENT,
                                      `merchant_id` int DEFAULT NULL,
                                      `start_date` date DEFAULT NULL,
                                      `end_date` date DEFAULT NULL,
                                      `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                      `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                      PRIMARY KEY (`promotion_id`) USING BTREE,
                                      KEY `merchant_id` (`merchant_id`) USING BTREE,
                                      CONSTRAINT `merchant_promotion_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_promotion`
--

INSERT INTO `merchant_promotion` (`promotion_id`, `merchant_id`, `start_date`, `end_date`, `details`, `created_at`) VALUES (1,1,'2024-01-01','2024-01-31','新年促销活动','2024-07-11 07:08:53'),(2,2,'2024-02-01','2024-02-28','春节特惠','2024-07-11 07:08:53');

--
-- Table structure for table `system_account`
--

DROP TABLE IF EXISTS `system_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_account` (
                                  `account_id` int NOT NULL AUTO_INCREMENT,
                                  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1234',
                                  `role_id` int NOT NULL DEFAULT '2',
                                  PRIMARY KEY (`account_id`) USING BTREE,
                                  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_account`
--

INSERT INTO `system_account` (`account_id`, `username`, `password`, `role_id`) VALUES (1,'admin','1234',1),(2,'merchant1','1234',2),(3,'merchant2','1234',2),(4,'merchant3','1234',2),(5,'merchant4','1234',2),(6,'mercahnt5','1234',2),(7,'mercahnt6','1234',2),(8,'merchant7','1234',2),(9,'merchant8','1234',2),(10,'merchant9','1234',2),(11,'merchant10','1234',2),(12,'merchant11','1234',2),(13,'merchant12','1234',2),(14,'merchant13','1234',2),(15,'merchant14','1234',2),(16,'merchant15','1234',2),(17,'merchant16','1234',2),(18,'merchant17','1234',2),(19,'merchant18','1234',2),(20,'merchant19','1234',2),(21,'merchant20','1234',2),(22,'merchant21','1234',2),(23,'merchant22','1234',2),(24,'merchant23','1234',2),(25,'merchant24','1234',2),(26,'merchant25','1234',2),(27,'merchant26','1234',2),(28,'merchant27','1234',2),(29,'merchant28','1234',2),(30,'merchant29','1234',2),(31,'merchant30','1234',2),(32,'user1','1234',3),(33,'user2','1234',3),(34,'user3','1234',3),(35,'user4','1234',3),(36,'user5','1234',3),(37,'user6','1234',3),(38,'user7','1234',3),(39,'user8','1234',3),(40,'user9','1234',3),(41,'user10','1234',3);

--
-- Table structure for table `system_article`
--

DROP TABLE IF EXISTS `system_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_article` (
                                  `article_id` int NOT NULL AUTO_INCREMENT,
                                  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                  `category_id` int DEFAULT NULL,
                                  `author_id` int DEFAULT NULL,
                                  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                  PRIMARY KEY (`article_id`) USING BTREE,
                                  KEY `category_id` (`category_id`) USING BTREE,
                                  KEY `author_id` (`author_id`) USING BTREE,
                                  CONSTRAINT `system_article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `system_article_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                  CONSTRAINT `system_article_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_article`
--

INSERT INTO `system_article` (`article_id`, `title`, `content`, `category_id`, `author_id`, `created_at`) VALUES (1,'2024年技术趋势','# This is the Title of the Article\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\n\r\n## Subheading\r\nMore content here...\r\n\r\n- First item\r\n- Second item\r\n- Third item\r\n\r\nAnother paragraph with an image:\r\n\r\n![Placeholder Image](https://via.placeholder.com/150)',1,1,'2024-07-11 07:08:53'),(2,'瑜伽的健康益处','关于瑜伽的内容',2,1,'2024-07-11 07:08:53'),(3,'投资理财技巧','关于投资理财的内容',3,1,'2024-07-11 07:08:53'),(4,'在线教育的未来','关于在线教育的内容',4,1,'2024-07-11 07:08:53');

--
-- Table structure for table `system_article_category`
--

DROP TABLE IF EXISTS `system_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_article_category` (
                                           `category_id` int NOT NULL AUTO_INCREMENT,
                                           `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                           PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_article_category`
--

INSERT INTO `system_article_category` (`category_id`, `category_name`) VALUES (1,'技术'),(2,'健康'),(3,'金融'),(4,'教育');

--
-- Table structure for table `user_favorite_merchant`
--

DROP TABLE IF EXISTS `user_favorite_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorite_merchant` (
                                          `favorite_id` int NOT NULL AUTO_INCREMENT,
                                          `user_id` int DEFAULT NULL,
                                          `merchant_id` int DEFAULT NULL,
                                          `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                          PRIMARY KEY (`favorite_id`) USING BTREE,
                                          KEY `user_id` (`user_id`) USING BTREE,
                                          KEY `merchant_id` (`merchant_id`) USING BTREE,
                                          CONSTRAINT `user_favorite_merchant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                          CONSTRAINT `user_favorite_merchant_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorite_merchant`
--


--
-- Table structure for table `user_favorite_product`
--

DROP TABLE IF EXISTS `user_favorite_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorite_product` (
                                         `favorite_id` int NOT NULL AUTO_INCREMENT,
                                         `user_id` int DEFAULT NULL,
                                         `product_id` int DEFAULT NULL,
                                         `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                         PRIMARY KEY (`favorite_id`) USING BTREE,
                                         KEY `user_id` (`user_id`) USING BTREE,
                                         KEY `product_id` (`product_id`) USING BTREE,
                                         CONSTRAINT `user_favorite_product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                         CONSTRAINT `user_favorite_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `merchant_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorite_product`
--


--
-- Table structure for table `user_friend`
--

DROP TABLE IF EXISTS `user_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_friend` (
                               `user_id` int NOT NULL,
                               `friend_id` int NOT NULL,
                               `category_id` int DEFAULT NULL,
                               PRIMARY KEY (`user_id`,`friend_id`) USING BTREE,
                               KEY `friend_id` (`friend_id`) USING BTREE,
                               KEY `category_id` (`category_id`) USING BTREE,
                               CONSTRAINT `user_friend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                               CONSTRAINT `user_friend_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                               CONSTRAINT `user_friend_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `user_friend_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_friend`
--

INSERT INTO `user_friend` (`user_id`, `friend_id`, `category_id`) VALUES (1,2,1),(1,4,1),(1,5,1),(2,1,1),(5,1,1),(1,3,2),(3,1,2),(2,5,3),(5,2,3),(2,3,4),(2,4,4),(4,2,4),(3,4,5),(3,2,7),(3,5,7),(4,3,7),(5,3,7),(4,1,8),(4,5,8),(5,4,8);

--
-- Table structure for table `user_friend_application`
--

DROP TABLE IF EXISTS `user_friend_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_friend_application` (
                                           `application_id` int NOT NULL AUTO_INCREMENT,
                                           `user_id` int DEFAULT NULL,
                                           `friend_id` int DEFAULT NULL,
                                           `category_id` int DEFAULT NULL,
                                           PRIMARY KEY (`application_id`) USING BTREE,
                                           KEY `user_id` (`user_id`) USING BTREE,
                                           KEY `friend_id` (`friend_id`) USING BTREE,
                                           KEY `category_id` (`category_id`) USING BTREE,
                                           CONSTRAINT `user_friend_application_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                           CONSTRAINT `user_friend_application_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                           CONSTRAINT `user_friend_application_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `user_friend_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_friend_application`
--


--
-- Table structure for table `user_friend_category`
--

DROP TABLE IF EXISTS `user_friend_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_friend_category` (
                                        `category_id` int NOT NULL AUTO_INCREMENT,
                                        `user_id` int DEFAULT NULL,
                                        `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                        PRIMARY KEY (`category_id`) USING BTREE,
                                        KEY `user_id` (`user_id`) USING BTREE,
                                        CONSTRAINT `user_friend_category_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_friend_category`
--

INSERT INTO `user_friend_category` (`category_id`, `user_id`, `category_name`) VALUES (1,1,'好友'),(2,1,'饭友'),(3,2,'好友'),(4,2,'同事'),(5,3,'饭友'),(6,4,'同事'),(7,3,'好友'),(8,4,'好友'),(9,1,'家人'),(10,2,'家人'),(11,3,'家人'),(12,4,'家人'),(13,1,'同学'),(14,2,'同学'),(15,3,'同学'),(16,4,'同学');

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
                             `user_id` int NOT NULL AUTO_INCREMENT,
                             `account_id` int NOT NULL,
                             `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                             PRIMARY KEY (`user_id`) USING BTREE,
                             KEY `account_id` (`account_id`) USING BTREE,
                             CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `account_id`, `name`, `email`, `phone`, `image_url`, `created_at`) VALUES (1,32,'Adochew','35Sxhs4554@example.com','17865321457','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/bird1.gif','2024-07-11 07:08:53'),(2,33,'rayo','5656698622sxhs@example.com','12586453254','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/IMG_3888.JPG','2024-07-11 07:08:53'),(3,34,'zecy','44551752shwj@example.com','13694265735','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/IMG_2159.JPG','2024-07-11 07:08:53'),(4,35,'WDHYDW','shjs5628968@example.com','16935649874','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/IMG_3945.JPG','2024-07-11 07:08:53'),(5,36,'半夏','shwh553286315@example.com','18856885289','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/IMG_4233.JPG','2024-07-15 08:05:56');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 10:58:53

`history_id` int NOT NULL AUTO_INCREMENT,
                                 `account_id` int DEFAULT NULL,
                                 `group_id` int DEFAULT NULL,
                                 `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                 `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                 PRIMARY KEY (`history_id`) USING BTREE,
                                 KEY `group_id` (`group_id`) USING BTREE,
                                 KEY `account_id` (`account_id`) USING BTREE,
                                 CONSTRAINT `group_history_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_info` (`group_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                 CONSTRAINT `group_history_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_history`
--

INSERT INTO `group_history` (`history_id`, `account_id`, `group_id`, `action`, `details`, `created_at`) VALUES (223,2,135,'create','群组创建','2024-07-15 10:43:14'),(224,2,136,'create','群组创建','2024-07-15 10:43:14'),(225,2,137,'create','群组创建','2024-07-15 10:43:14'),(226,2,138,'create','群组创建','2024-07-15 10:43:14'),(227,2,139,'create','群组创建','2024-07-15 10:43:14'),(228,3,140,'create','群组创建','2024-07-15 10:43:14'),(229,3,141,'create','群组创建','2024-07-15 10:43:14'),(230,3,142,'create','群组创建','2024-07-15 10:43:14'),(231,3,143,'create','群组创建','2024-07-15 10:43:14'),(232,3,144,'create','群组创建','2024-07-15 10:43:14'),(233,4,145,'create','群组创建','2024-07-15 10:43:14'),(234,4,146,'create','群组创建','2024-07-15 10:43:14'),(235,4,147,'create','群组创建','2024-07-15 10:43:14'),(236,4,148,'create','群组创建','2024-07-15 10:43:14'),(237,4,149,'create','群组创建','2024-07-15 10:43:14'),(238,5,150,'create','群组创建','2024-07-15 10:43:14'),(239,5,151,'create','群组创建','2024-07-15 10:43:14'),(240,5,152,'create','群组创建','2024-07-15 10:43:14'),(241,5,153,'create','群组创建','2024-07-15 10:43:14'),(242,5,154,'create','群组创建','2024-07-15 10:43:14'),(243,6,155,'create','群组创建','2024-07-15 10:43:14'),(244,6,156,'create','群组创建','2024-07-15 10:43:14'),(245,6,157,'create','群组创建','2024-07-15 10:43:14'),(246,6,158,'create','群组创建','2024-07-15 10:43:14'),(247,6,159,'create','群组创建','2024-07-15 10:43:14'),(248,7,160,'create','群组创建','2024-07-15 10:43:14'),(249,7,161,'create','群组创建','2024-07-15 10:43:14'),(250,7,162,'create','群组创建','2024-07-15 10:43:14'),(251,7,163,'create','群组创建','2024-07-15 10:43:14'),(252,7,164,'create','群组创建','2024-07-15 10:43:14'),(253,8,165,'create','群组创建','2024-07-15 10:43:14'),(254,8,166,'create','群组创建','2024-07-15 10:43:14'),(255,8,167,'create','群组创建','2024-07-15 10:43:14'),(256,8,168,'create','群组创建','2024-07-15 10:43:14'),(257,8,169,'create','群组创建','2024-07-15 10:43:14'),(258,9,170,'create','群组创建','2024-07-15 10:43:14'),(259,9,171,'create','群组创建','2024-07-15 10:43:14'),(260,9,172,'create','群组创建','2024-07-15 10:43:14'),(261,9,173,'create','群组创建','2024-07-15 10:43:14'),(262,9,174,'create','群组创建','2024-07-15 10:43:14'),(263,10,175,'create','群组创建','2024-07-15 10:43:14'),(264,10,176,'create','群组创建','2024-07-15 10:43:14'),(265,10,177,'create','群组创建','2024-07-15 10:43:14'),(266,10,178,'create','群组创建','2024-07-15 10:43:14'),(267,10,179,'create','群组创建','2024-07-15 10:43:14'),(268,2,135,'add','添加成员','2024-07-15 10:51:15'),(269,2,136,'add','添加成员','2024-07-15 10:51:15'),(270,2,137,'add','添加成员','2024-07-15 10:51:15'),(271,2,138,'add','添加成员','2024-07-15 10:51:15'),(272,2,139,'add','添加成员','2024-07-15 10:51:15'),(273,3,140,'add','添加成员','2024-07-15 10:51:15'),(274,3,141,'add','添加成员','2024-07-15 10:51:15'),(275,3,142,'add','添加成员','2024-07-15 10:51:15'),(276,3,143,'add','添加成员','2024-07-15 10:51:15'),(277,3,144,'add','添加成员','2024-07-15 10:51:15'),(278,4,145,'add','添加成员','2024-07-15 10:51:15'),(279,4,146,'add','添加成员','2024-07-15 10:51:15'),(280,4,147,'add','添加成员','2024-07-15 10:51:15'),(281,4,148,'add','添加成员','2024-07-15 10:51:15'),(282,4,149,'add','添加成员','2024-07-15 10:51:15'),(283,5,150,'add','添加成员','2024-07-15 10:51:15'),(284,5,151,'add','添加成员','2024-07-15 10:51:15'),(285,5,152,'add','添加成员','2024-07-15 10:51:15'),(286,5,153,'add','添加成员','2024-07-15 10:51:15'),(287,5,154,'add','添加成员','2024-07-15 10:51:15'),(288,6,155,'add','添加成员','2024-07-15 10:51:15'),(289,6,156,'add','添加成员','2024-07-15 10:51:15'),(290,6,157,'add','添加成员','2024-07-15 10:51:15'),(291,6,158,'add','添加成员','2024-07-15 10:51:15'),(292,6,159,'add','添加成员','2024-07-15 10:51:15'),(293,7,160,'add','添加成员','2024-07-15 10:51:15'),(294,7,161,'add','添加成员','2024-07-15 10:51:15'),(295,7,162,'add','添加成员','2024-07-15 10:51:15'),(296,7,163,'add','添加成员','2024-07-15 10:51:15'),(297,7,164,'add','添加成员','2024-07-15 10:51:15'),(298,8,165,'add','添加成员','2024-07-15 10:51:15'),(299,8,166,'add','添加成员','2024-07-15 10:51:15'),(300,8,167,'add','添加成员','2024-07-15 10:51:15'),(301,8,168,'add','添加成员','2024-07-15 10:51:15'),(302,8,169,'add','添加成员','2024-07-15 10:51:15'),(303,9,170,'add','添加成员','2024-07-15 10:51:15'),(304,9,171,'add','添加成员','2024-07-15 10:51:15'),(305,9,172,'add','添加成员','2024-07-15 10:51:15'),(306,9,173,'add','添加成员','2024-07-15 10:51:15'),(307,9,174,'add','添加成员','2024-07-15 10:51:15'),(308,10,175,'add','添加成员','2024-07-15 10:51:15'),(309,10,176,'add','添加成员','2024-07-15 10:51:15'),(310,10,177,'add','添加成员','2024-07-15 10:51:15'),(311,10,178,'add','添加成员','2024-07-15 10:51:15'),(312,10,179,'add','添加成员','2024-07-15 10:51:15'),(313,32,135,'add','添加成员','2024-07-15 10:59:39'),(314,33,135,'add','添加成员','2024-07-15 10:59:39'),(315,34,135,'add','添加成员','2024-07-15 10:59:39'),(316,33,136,'add','添加成员','2024-07-15 10:59:39'),(317,34,136,'add','添加成员','2024-07-15 10:59:39'),(318,35,136,'add','添加成员','2024-07-15 10:59:39'),(319,34,137,'add','添加成员','2024-07-15 10:59:39'),(320,35,137,'add','添加成员','2024-07-15 10:59:39'),(321,36,137,'add','添加成员','2024-07-15 10:59:39'),(322,32,138,'add','添加成员','2024-07-15 10:59:39'),(323,35,138,'add','添加成员','2024-07-15 10:59:39'),(324,36,138,'add','添加成员','2024-07-15 10:59:39'),(325,32,139,'add','添加成员','2024-07-15 10:59:39'),(326,33,139,'add','添加成员','2024-07-15 10:59:39'),(327,36,139,'add','添加成员','2024-07-15 10:59:39'),(328,32,140,'add','添加成员','2024-07-15 10:59:39'),(329,33,140,'add','添加成员','2024-07-15 10:59:39'),(330,34,140,'add','添加成员','2024-07-15 10:59:39'),(331,33,141,'add','添加成员','2024-07-15 10:59:39'),(332,34,141,'add','添加成员','2024-07-15 10:59:39'),(333,35,141,'add','添加成员','2024-07-15 10:59:39'),(334,34,142,'add','添加成员','2024-07-15 10:59:39'),(335,35,142,'add','添加成员','2024-07-15 10:59:39'),(336,36,142,'add','添加成员','2024-07-15 10:59:39'),(337,32,143,'add','添加成员','2024-07-15 10:59:39'),(338,35,143,'add','添加成员','2024-07-15 10:59:39'),(339,36,143,'add','添加成员','2024-07-15 10:59:39'),(340,32,144,'add','添加成员','2024-07-15 10:59:39'),(341,33,144,'add','添加成员','2024-07-15 10:59:39'),(342,36,144,'add','添加成员','2024-07-15 10:59:39'),(343,32,145,'add','添加成员','2024-07-15 10:59:39'),(344,33,145,'add','添加成员','2024-07-15 10:59:39'),(345,34,145,'add','添加成员','2024-07-15 10:59:39'),(346,33,146,'add','添加成员','2024-07-15 10:59:39'),(347,34,146,'add','添加成员','2024-07-15 10:59:39'),(348,35,146,'add','添加成员','2024-07-15 10:59:39'),(349,34,147,'add','添加成员','2024-07-15 10:59:39'),(350,35,147,'add','添加成员','2024-07-15 10:59:39'),(351,36,147,'add','添加成员','2024-07-15 10:59:39'),(352,32,148,'add','添加成员','2024-07-15 10:59:39'),(353,35,148,'add','添加成员','2024-07-15 10:59:39'),(354,36,148,'add','添加成员','2024-07-15 10:59:39'),(355,32,149,'add','添加成员','2024-07-15 10:59:39'),(356,33,149,'add','添加成员','2024-07-15 10:59:39'),(357,36,149,'add','添加成员','2024-07-15 10:59:39'),(358,32,150,'add','添加成员','2024-07-15 10:59:39'),(359,33,150,'add','添加成员','2024-07-15 10:59:39'),(360,34,150,'add','添加成员','2024-07-15 10:59:39'),(361,33,151,'add','添加成员','2024-07-15 10:59:39'),(362,34,151,'add','添加成员','2024-07-15 10:59:39'),(363,35,151,'add','添加成员','2024-07-15 10:59:39'),(364,34,152,'add','添加成员','2024-07-15 10:59:39'),(365,35,152,'add','添加成员','2024-07-15 10:59:39'),(366,36,152,'add','添加成员','2024-07-15 10:59:39'),(367,32,153,'add','添加成员','2024-07-15 10:59:39'),(368,35,153,'add','添加成员','2024-07-15 10:59:39'),(369,36,153,'add','添加成员','2024-07-15 10:59:39'),(370,32,154,'add','添加成员','2024-07-15 10:59:39'),(371,33,154,'add','添加成员','2024-07-15 10:59:39'),(372,36,154,'add','添加成员','2024-07-15 10:59:39'),(373,32,155,'add','添加成员','2024-07-15 10:59:39'),(374,33,155,'add','添加成员','2024-07-15 10:59:39'),(375,34,155,'add','添加成员','2024-07-15 10:59:39'),(376,33,156,'add','添加成员','2024-07-15 10:59:39'),(377,34,156,'add','添加成员','2024-07-15 10:59:39'),(378,35,156,'add','添加成员','2024-07-15 10:59:39'),(379,34,157,'add','添加成员','2024-07-15 10:59:39'),(380,35,157,'add','添加成员','2024-07-15 10:59:39'),(381,36,157,'add','添加成员','2024-07-15 10:59:39'),(382,32,158,'add','添加成员','2024-07-15 10:59:39'),(383,35,158,'add','添加成员','2024-07-15 10:59:39'),(384,36,158,'add','添加成员','2024-07-15 10:59:39'),(385,32,159,'add','添加成员','2024-07-15 10:59:39'),(386,33,159,'add','添加成员','2024-07-15 10:59:39'),(387,36,159,'add','添加成员','2024-07-15 10:59:39'),(388,32,160,'add','添加成员','2024-07-15 10:59:39'),(389,33,160,'add','添加成员','2024-07-15 10:59:39'),(390,34,160,'add','添加成员','2024-07-15 10:59:39'),(391,33,161,'add','添加成员','2024-07-15 10:59:39'),(392,34,161,'add','添加成员','2024-07-15 10:59:39'),(393,35,161,'add','添加成员','2024-07-15 10:59:39'),(394,34,162,'add','添加成员','2024-07-15 10:59:39'),(395,35,162,'add','添加成员','2024-07-15 10:59:39'),(396,36,162,'add','添加成员','2024-07-15 10:59:39'),(397,32,163,'add','添加成员','2024-07-15 10:59:39'),(398,35,163,'add','添加成员','2024-07-15 10:59:39'),(399,36,163,'add','添加成员','2024-07-15 10:59:39'),(400,32,164,'add','添加成员','2024-07-15 10:59:39'),(401,33,164,'add','添加成员','2024-07-15 10:59:39'),(402,36,164,'add','添加成员','2024-07-15 10:59:39'),(403,32,165,'add','添加成员','2024-07-15 10:59:39'),(404,33,165,'add','添加成员','2024-07-15 10:59:39'),(405,34,165,'add','添加成员','2024-07-15 10:59:39'),(406,33,166,'add','添加成员','2024-07-15 10:59:39'),(407,34,166,'add','添加成员','2024-07-15 10:59:39'),(408,35,166,'add','添加成员','2024-07-15 10:59:39'),(409,34,167,'add','添加成员','2024-07-15 10:59:39'),(410,35,167,'add','添加成员','2024-07-15 10:59:39'),(411,36,167,'add','添加成员','2024-07-15 10:59:39'),(412,32,168,'add','添加成员','2024-07-15 10:59:39'),(413,35,168,'add','添加成员','2024-07-15 10:59:39'),(414,36,168,'add','添加成员','2024-07-15 10:59:39'),(415,32,169,'add','添加成员','2024-07-15 10:59:39'),(416,33,169,'add','添加成员','2024-07-15 10:59:39'),(417,36,169,'add','添加成员','2024-07-15 10:59:39'),(418,32,170,'add','添加成员','2024-07-15 10:59:39'),(419,33,170,'add','添加成员','2024-07-15 10:59:39'),(420,34,170,'add','添加成员','2024-07-15 10:59:39'),(421,33,171,'add','添加成员','2024-07-15 10:59:39'),(422,34,171,'add','添加成员','2024-07-15 10:59:39'),(423,35,171,'add','添加成员','2024-07-15 10:59:39'),(424,34,172,'add','添加成员','2024-07-15 10:59:39'),(425,35,172,'add','添加成员','2024-07-15 10:59:39'),(426,36,172,'add','添加成员','2024-07-15 10:59:39'),(427,32,173,'add','添加成员','2024-07-15 10:59:39'),(428,35,173,'add','添加成员','2024-07-15 10:59:39'),(429,36,173,'add','添加成员','2024-07-15 10:59:39'),(430,32,174,'add','添加成员','2024-07-15 10:59:39'),(431,33,174,'add','添加成员','2024-07-15 10:59:39'),(432,36,174,'add','添加成员','2024-07-15 10:59:39'),(433,32,175,'add','添加成员','2024-07-15 10:59:39'),(434,33,175,'add','添加成员','2024-07-15 10:59:39'),(435,34,175,'add','添加成员','2024-07-15 10:59:39'),(436,33,176,'add','添加成员','2024-07-15 10:59:39'),(437,34,176,'add','添加成员','2024-07-15 10:59:39'),(438,35,176,'add','添加成员','2024-07-15 10:59:39'),(439,34,177,'add','添加成员','2024-07-15 10:59:39'),(440,35,177,'add','添加成员','2024-07-15 10:59:39'),(441,36,177,'add','添加成员','2024-07-15 10:59:39'),(442,32,178,'add','添加成员','2024-07-15 10:59:39'),(443,35,178,'add','添加成员','2024-07-15 10:59:39'),(444,36,178,'add','添加成员','2024-07-15 10:59:39'),(445,32,179,'add','添加成员','2024-07-15 10:59:39'),(446,33,179,'add','添加成员','2024-07-15 10:59:39'),(447,36,179,'add','添加成员','2024-07-15 10:59:39'),(448,2,135,'common','大家好，欢迎来到折扣优惠分享群！','2024-07-15 11:03:25'),(449,32,135,'common','很高兴加入这个群，希望能找到一些好的折扣信息。','2024-07-15 11:03:25'),(450,33,135,'common','我也是，期待和大家一起分享购物经验。','2024-07-15 11:03:25'),(451,34,135,'common','我已经在这里发现了一些不错的优惠，大家有需要可以问我。','2024-07-15 11:03:25'),(452,2,135,'common','今天有谁看到什么好的折扣吗？','2024-07-15 11:03:25'),(453,32,135,'common','我看到一家店的衣服打五折，很划算。','2024-07-15 11:03:25'),(454,33,135,'common','我刚买了一些家居用品，折扣力度也很大。','2024-07-15 11:03:25'),(455,34,135,'common','我推荐大家去看看电子产品，最近有很多优惠活动。','2024-07-15 11:03:25'),(456,2,135,'common','感谢大家的分享，希望大家都能买到心仪的商品。','2024-07-15 11:03:25'),(457,32,135,'common','不客气，大家互相帮助。','2024-07-15 11:03:25'),(458,33,135,'common','是的，我们群就是要这样互相分享。','2024-07-15 11:03:25'),(459,34,135,'common','如果有新的优惠信息，我会第一时间分享给大家。','2024-07-15 11:03:25'),(460,2,135,'common','太好了，期待你的分享。','2024-07-15 11:03:25'),(461,32,135,'common','我也会继续关注的。','2024-07-15 11:03:25'),(462,33,135,'common','我也是，大家一起努力。','2024-07-15 11:03:25'),(463,34,135,'common','好的，我们一起寻找更多优惠。','2024-07-15 11:03:25'),(464,2,135,'common','大家周末愉快，记得关注周末的特别优惠哦。','2024-07-15 11:03:25'),(465,32,135,'common','周末愉快，我会留意的。','2024-07-15 11:03:25'),(466,33,135,'common','周末愉快，谢谢提醒。','2024-07-15 11:03:25'),(467,34,135,'common','周末愉快，大家一起享受购物的乐趣吧。','2024-07-15 11:03:25');

--
-- Table structure for table `group_info`
--

DROP TABLE IF EXISTS `group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_info` (
                              `group_id` int NOT NULL AUTO_INCREMENT,
                              `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                              `owner_id` int DEFAULT NULL,
                              `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                              `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                              `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                              PRIMARY KEY (`group_id`) USING BTREE,
                              KEY `owner_id` (`owner_id`) USING BTREE,
                              CONSTRAINT `group_info_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_info`
--

INSERT INTO `group_info` (`group_id`, `group_name`, `owner_id`, `description`, `image_url`, `created_at`) VALUES (135,'折扣优惠分享群',2,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(136,'美食爱好者交流群',2,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(137,'旅行攻略分享群',2,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(138,'健康生活讨论群',2,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(139,'科技新品体验群',2,'体验最新科技产品',NULL,'2024-07-15 10:40:03'),(140,'折扣优惠分享群',3,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(141,'美食爱好者交流群',3,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(142,'旅行攻略分享群',3,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(143,'健康生活讨论群',3,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(144,'科技新品体验群',3,'体验最新科技产品',NULL,'2024-07-15 10:40:03'),(145,'折扣优惠分享群',4,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(146,'美食爱好者交流群',4,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(147,'旅行攻略分享群',4,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(148,'健康生活讨论群',4,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(149,'科技新品体验群',4,'体验最新科技产品',NULL,'2024-07-15 10:40:03'),(150,'折扣优惠分享群',5,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(151,'美食爱好者交流群',5,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(152,'旅行攻略分享群',5,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(153,'健康生活讨论群',5,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(154,'科技新品体验群',5,'体验最新科技产品',NULL,'2024-07-15 10:40:03'),(155,'折扣优惠分享群',6,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(156,'美食爱好者交流群',6,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(157,'旅行攻略分享群',6,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(158,'健康生活讨论群',6,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(159,'科技新品体验群',6,'体验最新科技产品',NULL,'2024-07-15 10:40:03'),(160,'折扣优惠分享群',7,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(161,'美食爱好者交流群',7,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(162,'旅行攻略分享群',7,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(163,'健康生活讨论群',7,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(164,'科技新品体验群',7,'体验最新科技产品',NULL,'2024-07-15 10:40:03'),(165,'折扣优惠分享群',8,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(166,'美食爱好者交流群',8,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(167,'旅行攻略分享群',8,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(168,'健康生活讨论群',8,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(169,'科技新品体验群',8,'体验最新科技产品',NULL,'2024-07-15 10:40:03'),(170,'折扣优惠分享群',9,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(171,'美食爱好者交流群',9,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(172,'旅行攻略分享群',9,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(173,'健康生活讨论群',9,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(174,'科技新品体验群',9,'体验最新科技产品',NULL,'2024-07-15 10:40:03'),(175,'折扣优惠分享群',10,'分享各类商品折扣信息',NULL,'2024-07-15 10:40:03'),(176,'美食爱好者交流群',10,'交流各地美食心得',NULL,'2024-07-15 10:40:03'),(177,'旅行攻略分享群',10,'分享旅行中的精彩瞬间',NULL,'2024-07-15 10:40:03'),(178,'健康生活讨论群',10,'探讨健康生活方式',NULL,'2024-07-15 10:40:03'),(179,'科技新品体验群',10,'体验最新科技产品',NULL,'2024-07-15 10:40:03');

--
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_member` (
                                `group_id` int NOT NULL,
                                `account_id` int NOT NULL,
                                `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                PRIMARY KEY (`group_id`,`account_id`) USING BTREE,
                                KEY `account_id` (`account_id`) USING BTREE,
                                CONSTRAINT `group_member_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_info` (`group_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                CONSTRAINT `group_member_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_member`
--

INSERT INTO `group_member` (`group_id`, `account_id`, `role`, `created_at`) VALUES (135,2,'管理员','2024-07-15 10:45:23'),(135,32,'成员','2024-07-15 10:55:52'),(135,33,'成员','2024-07-15 10:55:52'),(135,34,'成员','2024-07-15 10:55:52'),(136,2,'管理员','2024-07-15 10:45:23'),(136,33,'成员','2024-07-15 10:55:52'),(136,34,'成员','2024-07-15 10:55:52'),(136,35,'成员','2024-07-15 10:55:52'),(137,2,'管理员','2024-07-15 10:45:23'),(137,34,'成员','2024-07-15 10:55:52'),(137,35,'成员','2024-07-15 10:55:52'),(137,36,'成员','2024-07-15 10:55:52'),(138,2,'管理员','2024-07-15 10:45:23'),(138,32,'成员','2024-07-15 10:55:52'),(138,35,'成员','2024-07-15 10:55:52'),(138,36,'成员','2024-07-15 10:55:52'),(139,2,'管理员','2024-07-15 10:45:23'),(139,32,'成员','2024-07-15 10:55:52'),(139,33,'成员','2024-07-15 10:55:52'),(139,36,'成员','2024-07-15 10:55:52'),(140,3,'管理员','2024-07-15 10:45:23'),(140,32,'成员','2024-07-15 10:55:52'),(140,33,'成员','2024-07-15 10:55:52'),(140,34,'成员','2024-07-15 10:55:52'),(141,3,'管理员','2024-07-15 10:45:23'),(141,33,'成员','2024-07-15 10:55:52'),(141,34,'成员','2024-07-15 10:55:52'),(141,35,'成员','2024-07-15 10:55:52'),(142,3,'管理员','2024-07-15 10:45:23'),(142,34,'成员','2024-07-15 10:55:52'),(142,35,'成员','2024-07-15 10:55:52'),(142,36,'成员','2024-07-15 10:55:52'),(143,3,'管理员','2024-07-15 10:45:23'),(143,32,'成员','2024-07-15 10:55:52'),(143,35,'成员','2024-07-15 10:55:52'),(143,36,'成员','2024-07-15 10:55:52'),(144,3,'管理员','2024-07-15 10:45:23'),(144,32,'成员','2024-07-15 10:55:52'),(144,33,'成员','2024-07-15 10:55:52'),(144,36,'成员','2024-07-15 10:55:52'),(145,4,'管理员','2024-07-15 10:45:23'),(145,32,'成员','2024-07-15 10:55:52'),(145,33,'成员','2024-07-15 10:55:52'),(145,34,'成员','2024-07-15 10:55:52'),(146,4,'管理员','2024-07-15 10:45:23'),(146,33,'成员','2024-07-15 10:55:52'),(146,34,'成员','2024-07-15 10:55:52'),(146,35,'成员','2024-07-15 10:55:52'),(147,4,'管理员','2024-07-15 10:45:23'),(147,34,'成员','2024-07-15 10:55:52'),(147,35,'成员','2024-07-15 10:55:52'),(147,36,'成员','2024-07-15 10:55:52'),(148,4,'管理员','2024-07-15 10:45:23'),(148,32,'成员','2024-07-15 10:55:52'),(148,35,'成员','2024-07-15 10:55:52'),(148,36,'成员','2024-07-15 10:55:52'),(149,4,'管理员','2024-07-15 10:45:23'),(149,32,'成员','2024-07-15 10:55:52'),(149,33,'成员','2024-07-15 10:55:52'),(149,36,'成员','2024-07-15 10:55:52'),(150,5,'管理员','2024-07-15 10:45:23'),(150,32,'成员','2024-07-15 10:55:52'),(150,33,'成员','2024-07-15 10:55:52'),(150,34,'成员','2024-07-15 10:55:52'),(151,5,'管理员','2024-07-15 10:45:23'),(151,33,'成员','2024-07-15 10:55:52'),(151,34,'成员','2024-07-15 10:55:52'),(151,35,'成员','2024-07-15 10:55:52'),(152,5,'管理员','2024-07-15 10:45:23'),(152,34,'成员','2024-07-15 10:55:52'),(152,35,'成员','2024-07-15 10:55:52'),(152,36,'成员','2024-07-15 10:55:52'),(153,5,'管理员','2024-07-15 10:45:23'),(153,32,'成员','2024-07-15 10:55:52'),(153,35,'成员','2024-07-15 10:55:52'),(153,36,'成员','2024-07-15 10:55:52'),(154,5,'管理员','2024-07-15 10:45:23'),(154,32,'成员','2024-07-15 10:55:52'),(154,33,'成员','2024-07-15 10:55:52'),(154,36,'成员','2024-07-15 10:55:52'),(155,6,'管理员','2024-07-15 10:45:23'),(155,32,'成员','2024-07-15 10:55:52'),(155,33,'成员','2024-07-15 10:55:52'),(155,34,'成员','2024-07-15 10:55:52'),(156,6,'管理员','2024-07-15 10:45:23'),(156,33,'成员','2024-07-15 10:55:52'),(156,34,'成员','2024-07-15 10:55:52'),(156,35,'成员','2024-07-15 10:55:52'),(157,6,'管理员','2024-07-15 10:45:23'),(157,34,'成员','2024-07-15 10:55:52'),(157,35,'成员','2024-07-15 10:55:52'),(157,36,'成员','2024-07-15 10:55:52'),(158,6,'管理员','2024-07-15 10:45:23'),(158,32,'成员','2024-07-15 10:55:52'),(158,35,'成员','2024-07-15 10:55:52'),(158,36,'成员','2024-07-15 10:55:52'),(159,6,'管理员','2024-07-15 10:45:23'),(159,32,'成员','2024-07-15 10:55:52'),(159,33,'成员','2024-07-15 10:55:52'),(159,36,'成员','2024-07-15 10:55:52'),(160,7,'管理员','2024-07-15 10:45:23'),(160,32,'成员','2024-07-15 10:55:52'),(160,33,'成员','2024-07-15 10:55:52'),(160,34,'成员','2024-07-15 10:55:52'),(161,7,'管理员','2024-07-15 10:45:23'),(161,33,'成员','2024-07-15 10:55:52'),(161,34,'成员','2024-07-15 10:55:52'),(161,35,'成员','2024-07-15 10:55:52'),(162,7,'管理员','2024-07-15 10:45:23'),(162,34,'成员','2024-07-15 10:55:52'),(162,35,'成员','2024-07-15 10:55:52'),(162,36,'成员','2024-07-15 10:55:52'),(163,7,'管理员','2024-07-15 10:45:23'),(163,32,'成员','2024-07-15 10:55:52'),(163,35,'成员','2024-07-15 10:55:52'),(163,36,'成员','2024-07-15 10:55:52'),(164,7,'管理员','2024-07-15 10:45:23'),(164,32,'成员','2024-07-15 10:55:52'),(164,33,'成员','2024-07-15 10:55:52'),(164,36,'成员','2024-07-15 10:55:52'),(165,8,'管理员','2024-07-15 10:45:23'),(165,32,'成员','2024-07-15 10:55:52'),(165,33,'成员','2024-07-15 10:55:52'),(165,34,'成员','2024-07-15 10:55:52'),(166,8,'管理员','2024-07-15 10:45:23'),(166,33,'成员','2024-07-15 10:55:52'),(166,34,'成员','2024-07-15 10:55:52'),(166,35,'成员','2024-07-15 10:55:52'),(167,8,'管理员','2024-07-15 10:45:23'),(167,34,'成员','2024-07-15 10:55:52'),(167,35,'成员','2024-07-15 10:55:52'),(167,36,'成员','2024-07-15 10:55:52'),(168,8,'管理员','2024-07-15 10:45:23'),(168,32,'成员','2024-07-15 10:55:52'),(168,35,'成员','2024-07-15 10:55:52'),(168,36,'成员','2024-07-15 10:55:52'),(169,8,'管理员','2024-07-15 10:45:23'),(169,32,'成员','2024-07-15 10:55:52'),(169,33,'成员','2024-07-15 10:55:52'),(169,36,'成员','2024-07-15 10:55:52'),(170,9,'管理员','2024-07-15 10:45:23'),(170,32,'成员','2024-07-15 10:55:52'),(170,33,'成员','2024-07-15 10:55:52'),(170,34,'成员','2024-07-15 10:55:52'),(171,9,'管理员','2024-07-15 10:45:23'),(171,33,'成员','2024-07-15 10:55:52'),(171,34,'成员','2024-07-15 10:55:52'),(171,35,'成员','2024-07-15 10:55:52'),(172,9,'管理员','2024-07-15 10:45:23'),(172,34,'成员','2024-07-15 10:55:52'),(172,35,'成员','2024-07-15 10:55:52'),(172,36,'成员','2024-07-15 10:55:52'),(173,9,'管理员','2024-07-15 10:45:23'),(173,32,'成员','2024-07-15 10:55:52'),(173,35,'成员','2024-07-15 10:55:52'),(173,36,'成员','2024-07-15 10:55:52'),(174,9,'管理员','2024-07-15 10:45:23'),(174,32,'成员','2024-07-15 10:55:52'),(174,33,'成员','2024-07-15 10:55:52'),(174,36,'成员','2024-07-15 10:55:52'),(175,10,'管理员','2024-07-15 10:45:23'),(175,32,'成员','2024-07-15 10:55:52'),(175,33,'成员','2024-07-15 10:55:52'),(175,34,'成员','2024-07-15 10:55:52'),(176,10,'管理员','2024-07-15 10:45:23'),(176,33,'成员','2024-07-15 10:55:52'),(176,34,'成员','2024-07-15 10:55:52'),(176,35,'成员','2024-07-15 10:55:52'),(177,10,'管理员','2024-07-15 10:45:23'),(177,34,'成员','2024-07-15 10:55:52'),(177,35,'成员','2024-07-15 10:55:52'),(177,36,'成员','2024-07-15 10:55:52'),(178,10,'管理员','2024-07-15 10:45:23'),(178,32,'成员','2024-07-15 10:55:52'),(178,35,'成员','2024-07-15 10:55:52'),(178,36,'成员','2024-07-15 10:55:52'),(179,10,'管理员','2024-07-15 10:45:23'),(179,32,'成员','2024-07-15 10:55:52'),(179,33,'成员','2024-07-15 10:55:52'),(179,36,'成员','2024-07-15 10:55:52');

--
-- Table structure for table `merchant_category`
--

DROP TABLE IF EXISTS `merchant_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_category` (
                                     `category_id` int NOT NULL AUTO_INCREMENT,
                                     `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                     PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_category`
--

INSERT INTO `merchant_category` (`category_id`, `category_name`) VALUES (1,'美食'),(2,'休闲'),(3,'结婚'),(4,'影视'),(5,'丽人');

--
-- Table structure for table `merchant_comment`
--

DROP TABLE IF EXISTS `merchant_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_comment` (
                                    `comment_id` int NOT NULL AUTO_INCREMENT,
                                    `merchant_id` int DEFAULT NULL,
                                    `user_id` int DEFAULT NULL,
                                    `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                    `rating` int DEFAULT NULL,
                                    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                    PRIMARY KEY (`comment_id`) USING BTREE,
                                    KEY `merchant_id` (`merchant_id`) USING BTREE,
                                    KEY `user_id` (`user_id`) USING BTREE,
                                    CONSTRAINT `merchant_comment_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                    CONSTRAINT `merchant_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_comment`
--

INSERT INTO `merchant_comment` (`comment_id`, `merchant_id`, `user_id`, `content`, `rating`, `created_at`) VALUES (1,1,1,'非常好的商户！',5,'2024-07-11 07:08:53'),(2,1,2,'服务态度很好',4,'2024-07-11 07:08:53'),(3,2,1,'食物非常美味',5,'2024-07-11 07:08:53'),(4,2,2,'环境不错',3,'2024-07-11 07:08:53'),(5,1,1,'非常好的商户！',5,'2024-07-11 07:08:53'),(6,1,2,'服务态度很好',4,'2024-07-11 07:08:53'),(7,1,3,'甜点非常好吃',5,'2024-07-11 07:08:53'),(8,1,4,'价格有点高',3,'2024-07-11 07:08:53'),(9,2,1,'食物非常美味',5,'2024-07-11 07:08:53'),(10,2,2,'环境不错',4,'2024-07-11 07:08:53'),(11,2,3,'服务态度很好',5,'2024-07-11 07:08:53'),(12,2,4,'等待时间有点长',2,'2024-07-11 07:08:53'),(13,3,1,'火锅味道正宗，服务周到',5,'2024-07-11 07:08:53'),(14,3,2,'环境干净整洁，推荐！',4,'2024-07-11 07:08:53'),(15,3,3,'菜品新鲜，非常满意',5,'2024-07-11 07:08:53'),(16,3,4,'价格有点高',2,'2024-07-11 07:08:53'),(17,4,1,'火锅味道正宗，服务周到',5,'2024-07-11 07:08:53'),(18,4,2,'环境干净整洁，推荐！',4,'2024-07-11 07:08:53'),(19,4,3,'菜品新鲜，非常满意',5,'2024-07-11 07:08:53'),(20,4,4,'等待时间有点长',2,'2024-07-11 07:08:53'),(21,5,1,'甜点非常好吃，服务态度好',5,'2024-07-11 07:08:53'),(22,5,2,'环境优雅，适合约会',4,'2024-07-11 07:08:53'),(23,5,3,'价格合理，性价比高',5,'2024-07-11 07:08:53'),(24,5,4,'服务有点慢',3,'2024-07-11 07:08:53'),(25,6,1,'甜点非常好吃，服务态度好',5,'2024-07-11 07:08:53'),(26,6,2,'环境优雅，适合约会',4,'2024-07-11 07:08:53'),(27,6,3,'价格合理，性价比高',5,'2024-07-11 07:08:53'),(28,6,4,'价格有点高',2,'2024-07-11 07:08:53'),(29,7,1,'小吃种类多，味道不错',4,'2024-07-11 07:08:53'),(30,7,2,'服务快捷，体验良好',5,'2024-07-11 07:08:53'),(31,7,3,'环境一般，但味道弥补了',1,'2024-07-11 07:08:53'),(32,7,4,'服务有点慢',2,'2024-07-11 07:08:53'),(33,8,1,'小吃种类多，味道不错',4,'2024-07-11 07:08:53'),(34,8,2,'服务快捷，体验良好',5,'2024-07-11 07:08:53'),(35,8,3,'环境一般，但味道弥补了',2,'2024-07-11 07:08:53'),(36,8,4,'价格有点高',3,'2024-07-11 07:08:53'),(37,9,1,'川菜正宗，辣得过瘾',5,'2024-07-11 07:08:53'),(38,9,2,'服务热情，上菜快',4,'2024-07-11 07:08:53'),(39,9,3,'环境有特色，推荐尝试',5,'2024-07-11 07:08:53'),(40,9,4,'服务有点慢',3,'2024-07-11 07:08:53'),(41,10,1,'川菜正宗，辣得过瘾',5,'2024-07-11 07:08:53'),(42,10,2,'服务热情，上菜快',4,'2024-07-11 07:08:53'),(43,10,3,'环境有特色，推荐尝试',5,'2024-07-11 07:08:53'),(44,10,4,'价格有点高',3,'2024-07-11 07:08:53'),(45,11,1,'湘菜味道地道，服务周到',5,'2024-07-11 07:08:53'),(46,11,2,'环境舒适，适合家庭聚餐',4,'2024-07-11 07:08:53'),(47,11,3,'价格公道，性价比高',5,'2024-07-11 07:08:53'),(48,11,4,'服务有点慢',3,'2024-07-11 07:08:53'),(49,12,1,'湘菜味道地道，服务周到',5,'2024-07-11 07:08:53'),(50,12,2,'环境舒适，适合家庭聚餐',4,'2024-07-11 07:08:53'),(51,12,3,'价格公道，性价比高',5,'2024-07-11 07:08:53'),(52,12,4,'价格有点高',3,'2024-07-11 07:08:53'),(53,13,1,'足疗技术好，放松效果佳',5,'2024-07-11 07:08:53'),(54,13,2,'环境安静，服务专业',4,'2024-07-11 07:08:53'),(55,13,3,'价格合理，体验满意',5,'2024-07-11 07:08:53'),(56,13,4,'服务有点慢',3,'2024-07-11 07:08:53'),(57,14,1,'足疗技术好，放松效果佳',5,'2024-07-11 07:08:53'),(58,14,2,'环境安静，服务专业',4,'2024-07-11 07:08:53'),(59,14,3,'价格合理，体验满意',5,'2024-07-11 07:08:53'),(60,14,4,'价格有点高',3,'2024-07-11 07:08:53'),(61,15,1,'KTV音响效果好，服务热情',5,'2024-07-11 07:08:53'),(62,15,2,'环境时尚，适合朋友聚会',4,'2024-07-11 07:08:53'),(63,15,3,'价格适中，性价比不错',5,'2024-07-11 07:08:53'),(64,15,4,'服务有点慢',2,'2024-07-11 07:08:53'),(65,16,1,'KTV音响效果好，服务热情',5,'2024-07-11 07:08:53'),(66,16,2,'环境时尚，适合朋友聚会',4,'2024-07-11 07:08:53'),(67,16,3,'价格适中，性价比不错',5,'2024-07-11 07:08:53'),(68,16,4,'价格有点高',2,'2024-07-11 07:08:53'),(69,17,1,'摄影技术专业，服务周到',5,'2024-07-11 07:08:53'),(70,17,2,'环境优雅，拍摄效果好',4,'2024-07-11 07:08:53'),(71,17,3,'价格合理，服务满意',5,'2024-07-11 07:08:53'),(72,17,4,'服务有点慢',3,'2024-07-11 07:08:53'),(73,18,1,'摄影技术专业，服务周到',5,'2024-07-11 07:08:53'),(74,18,2,'环境优雅，拍摄效果好',4,'2024-07-11 07:08:53'),(75,18,3,'价格合理，服务满意',5,'2024-07-11 07:08:53'),(76,18,4,'价格有点高',3,'2024-07-11 07:08:53'),(77,19,1,'策划专业，服务细致',5,'2024-07-11 07:08:53'),(78,19,2,'环境布置精美，体验良好',4,'2024-07-11 07:08:53'),(79,19,3,'价格透明，性价比高',5,'2024-07-11 07:08:53'),(80,19,4,'服务有点慢',3,'2024-07-11 07:08:53'),(81,20,1,'策划专业，服务细致',5,'2024-07-11 07:08:53'),(82,20,2,'环境布置精美，体验良好',4,'2024-07-11 07:08:53');

--
-- Table structure for table `merchant_info`
--

DROP TABLE IF EXISTS `merchant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_info` (
                                 `merchant_id` int NOT NULL AUTO_INCREMENT,
                                 `owner_id` int NOT NULL,
                                 `category_id` int DEFAULT NULL,
                                 `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                 `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                 `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `business_environment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `business_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `product_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                 `coordinates` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 PRIMARY KEY (`merchant_id`) USING BTREE,
                                 KEY `owner_id` (`owner_id`) USING BTREE,
                                 CONSTRAINT `merchant_info_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_info`
--

INSERT INTO `merchant_info` (`merchant_id`, `owner_id`, `category_id`, `name`, `address`, `phone`, `email`, `business_type`, `business_environment`, `business_location`, `product_category`, `image_url`, `created_at`, `coordinates`) VALUES (1,2,1,'君诗烘焙','四川省 成都市 郫都区 红光街道 高店路 41号','028-87878147','87878147@example.com','餐饮','线下','中国','甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/angelina-yan-2o_G7UQliOI-unsplash.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(2,3,1,'爱达乐','四川省 成都市 郫都区 红光街道 高店路 39号','0987654321','merchant2@example.com','餐饮','线下','中国','甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/smallAida.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(3,4,1,'老码头火锅','四川省 成都市 郫都区 红光街道 高店路 43号','028-87878148','87878148@example.com','餐饮','线下','中国','火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/hotpot1.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(4,5,1,'小龙坎老火锅','四川省 成都市 郫都区 红光街道 高店路 45号','028-87878149','87878149@example.com','餐饮','线下','中国','火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/hotpot2.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(5,6,1,'君诗烘焙(旗舰)','四川省 成都市 郫都区 红光街道 高店路 47号','028-87878150','87878150@example.com','餐饮','线下','中国','甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/sera-iZgQKxuMRHc-unsplash.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(6,7,1,'爱达乐(旗舰)','四川省 成都市 郫都区 红光街道 高店路 49号','028-87878151','87878151@example.com','餐饮','线下','中国','甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/aidale.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(7,8,1,'串串香','四川省 成都市 郫都区 红光街道 高店路 51号','028-87878152','87878152@example.com','餐饮','线下','中国','小吃','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/chuanchaunxiang.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(8,9,1,'廖记棒棒鸡','四川省 成都市 郫都区 红光街道 高店路 53号','028-87878153','87878153@example.com','餐饮','线下','中国','小吃','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/liaojibangbangji.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(9,10,1,'川西坝子','四川省 成都市 郫都区 红光街道 高店路 55号','028-87878154','87878154@example.com','餐饮','线下','中国','川菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/chuanxibazi.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(10,11,1,'眉州东坡','四川省 成都市 郫都区 红光街道 高店路 57号','028-87878155','87878155@example.com','餐饮','线下','中国','川菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/meizhoudongpo.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(11,12,1,'毛家饭店','四川省 成都市 郫都区 红光街道 高店路 59号','028-87878156','87878156@example.com','餐饮','线下','中国','湘菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/maojiafandian.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(12,13,1,'湘西部落','四川省 成都市 郫都区 红光街道 高店路 61号','028-87878157','87878157@example.com','餐饮','线下','中国','湘菜','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/xiangxibuluo.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(13,14,2,'富侨足浴','四川省 成都市 郫都区 红光街道 高店路 63号','028-87878158','87878158@example.com','休闲','线下','中国','足疗','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/qiaofuzuyu.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(14,15,2,'大桶大足浴','四川省 成都市 郫都区 红光街道 高店路 65号','028-87878159','87878159@example.com','休闲','线下','中国','足疗','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/datongdazuyu.jpeg','2024-07-11 07:08:53','103.943060,30.790416'),(15,16,2,'好乐迪KTV','四川省 成都市 郫都区 红光街道 高店路 67号','028-87878160','87878160@example.com','娱乐','线下','中国','KTV','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/haoledi.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(16,17,2,'钱柜KTV','四川省 成都市 郫都区 红光街道 高店路 69号','028-87878161','87878161@example.com','娱乐','线下','中国','KTV','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/qiangui.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(17,18,3,'薇拉摄影','四川省 成都市 郫都区 红光街道 高店路 71号','028-87878162','87878162@example.com','摄影','线下','中国','摄影','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/weilasheyin.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(18,19,3,'金夫人婚纱摄影','四川省 成都市 郫都区 红光街道 高店路 73号','028-87878163','87878163@example.com','摄影','线下','中国','摄影','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/jinfuren.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(19,20,3,'婚礼纪','四川省 成都市 郫都区 红光街道 高店路 75号','028-87878164','87878164@example.com','婚庆','线下','中国','策划','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/hunliji.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(20,21,3,'喜铺','四川省 成都市 郫都区 红光街道 高店路 77号','028-87878165','87878165@example.com','婚庆','线下','中国','策划','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/xipu.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(21,22,4,'万达影城','四川省 成都市 郫都区 红光街道 高店路 79号','028-87878166','87878166@example.com','娱乐','线下','中国','电影院','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/wandayingcheng.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(22,23,4,'CGV影城','四川省 成都市 郫都区 红光街道 高店路 81号','028-87878167','87878167@example.com','娱乐','线下','中国','电影院','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/CGVyingcheng.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(23,24,5,'Tony美发','四川省 成都市 郫都区 红光街道 高店路 83号','028-87878168','87878168@example.com','美容','线下','中国','美发','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/adam-winger-FkAZqQJTbXM-unsplash.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(24,25,5,'阿玛尼美发','四川省 成都市 郫都区 红光街道 高店路 85号','028-87878169','87878169@example.com','美容','线下','中国','美发','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/amanimeifa.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(25,26,5,'美丽田园','四川省 成都市 郫都区 红光街道 高店路 87号','028-87878170','87878170@example.com','美容','线下','中国','美容','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/meilitianyuan.jpg','2024-07-11 07:08:53','103.943060,30.790416'),(26,27,5,'克丽缇娜','四川省 成都市 郫都区 红光街道 高店路 89号','028-87878171','87878171@example.com','美容','线下','中国','美容','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/kelitina.jpg','2024-07-11 07:08:53','103.943060,30.790416');

--
-- Table structure for table `merchant_product`
--

DROP TABLE IF EXISTS `merchant_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_product` (
                                    `product_id` int NOT NULL AUTO_INCREMENT,
                                    `merchant_id` int DEFAULT NULL,
                                    `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                    `category_id` int DEFAULT NULL,
                                    `price` decimal(10,2) DEFAULT NULL,
                                    `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                    `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                    PRIMARY KEY (`product_id`) USING BTREE,
                                    KEY `merchant_id` (`merchant_id`) USING BTREE,
                                    KEY `category_id` (`category_id`) USING BTREE,
                                    CONSTRAINT `merchant_product_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                    CONSTRAINT `merchant_product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `merchant_product_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_product`
--

INSERT INTO `merchant_product` (`product_id`, `merchant_id`, `product_name`, `category_id`, `price`, `description`, `image_url`, `created_at`) VALUES (1,1,'榴莲千层',2,35.00,'难得的甜点','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/d075c0dc-0b35-4f84-bf6e-15392bf21a3b.jpg','2024-07-11 07:08:53'),(2,1,'生日蛋糕',2,300.00,'生日必备','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/12ce2022-7465-47dd-8256-42a539ee7ebc.jpg','2024-07-11 07:08:53'),(5,1,'豆乳盒子',2,25.00,'清香的豆乳','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/0235c128-c4a8-4720-b531-a97768669759.jpg','2024-07-15 05:55:44'),(6,1,'奥利奥雪胖子',2,10.00,'浓郁的奥利奥味道','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/490ff422-aded-4bb1-b783-c975b314ce43.jpg','2024-07-15 05:58:33'),(11,2,'芒果慕斯',2,40.00,'新鲜的芒果慕斯','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/shree-iyer-ufmEG5h07DA-unsplash.jpg','2024-07-15 07:47:42'),(12,2,'草莓蛋糕',2,280.00,'草莓季限定蛋糕','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/swapnil-dwivedi-Nl8Oa6ZuNcA-unsplash.jpg','2024-07-15 07:47:42'),(13,2,'巧克力布朗尼',2,30.00,'浓郁的巧克力味道','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/david-holifield-kPxsqUGneXQ-unsplash.jpg','2024-07-15 07:47:42'),(14,2,'抹茶蛋糕卷',2,15.00,'清新的抹茶口味','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/vicky-ng-o0vMlQ0BX9M-unsplash.jpg','2024-07-15 07:47:42'),(15,3,'麻辣火锅',1,120.00,'正宗四川麻辣火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/peijia-li-AIWSvNU38H8-unsplash.jpg','2024-07-15 07:47:42'),(16,3,'清汤火锅',1,100.00,'清淡养生的清汤火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/subagus-indra-zpYpAotCIkA-unsplash.jpg','2024-07-15 07:47:42'),(17,3,'鸳鸯火锅',1,130.00,'一半麻辣一半清汤','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/luna-wang-1KVGE4yryCY-unsplash.jpg','2024-07-15 07:47:42'),(18,3,'菌汤火锅',1,110.00,'鲜美的菌汤火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/you-le-R_eO1SjCm2Q-unsplash.jpg','2024-07-15 07:47:42'),(19,4,'麻辣火锅',1,120.00,'正宗四川麻辣火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/peijia-li-AIWSvNU38H8-unsplash.jpg','2024-07-15 07:47:42'),(20,4,'清汤火锅',1,100.00,'清淡养生的清汤火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/subagus-indra-zpYpAotCIkA-unsplash.jpg','2024-07-15 07:47:42'),(21,4,'鸳鸯火锅',1,130.00,'一半麻辣一半清汤','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/luna-wang-1KVGE4yryCY-unsplash.jpg','2024-07-15 07:47:42'),(22,4,'菌汤火锅',1,110.00,'鲜美的菌汤火锅','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/you-le-R_eO1SjCm2Q-unsplash.jpg','2024-07-15 07:47:42'),(23,5,'榴莲千层',2,35.00,'难得的甜点诶~','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/amirali-mirhashemian-ZYtbCrOoiDU-unsplash.jpg','2024-07-15 07:47:42'),(24,5,'生日蛋糕',2,300.00,'生日必备哦~','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/takuya-nagaoka-fENvSZUzbzU-unsplash.jpg','2024-07-15 07:47:42'),(25,5,'豆乳盒子',2,25.00,'又臭又香哦~','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/8290-2003e0961ae44ebf1f8d483f4853e98a.png','2024-07-15 07:47:42'),(26,5,'奥利奥雪胖子',2,10.00,'好好吃诶~','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/b8b923ae66dff0396c41fd71d5e8c411.jpeg','2024-07-15 07:47:42'),(27,6,'芒果慕斯',2,40.00,'新鲜的芒果慕斯','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/shree-iyer-ufmEG5h07DA-unsplash.jpg','2024-07-15 07:47:42'),(28,6,'草莓蛋糕',2,280.00,'草莓季限定蛋糕','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/swapnil-dwivedi-Nl8Oa6ZuNcA-unsplash.jpg','2024-07-15 07:47:42'),(29,6,'巧克力布朗尼',2,30.00,'浓郁的巧克力味道','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/david-holifield-kPxsqUGneXQ-unsplash.jpg','2024-07-15 07:47:42'),(30,6,'抹茶蛋糕卷',2,15.00,'清新的抹茶口味','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/vicky-ng-o0vMlQ0BX9M-unsplash.jpg','2024-07-15 07:47:42'),(31,7,'麻辣串串',3,50.00,'四川特色串串香','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/chuan1.jpg','2024-07-15 07:47:42'),(32,7,'清汤串串',3,40.00,'清淡养生的串串香','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/ella-olsson-Pb9aFVR9-Bk-unsplash.jpg','2024-07-15 07:47:42'),(33,7,'鸳鸯串串',3,60.00,'一半麻辣一半清汤','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/sam-moghadam-khamseh-hIOnaAscoj0-unsplash.jpg','2024-07-15 07:47:42'),(34,7,'菌汤串串',3,50.00,'鲜美的菌汤串串','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/tuan-nguy-n-minh-vK6B4fBR464-unsplash.jpg','2024-07-15 07:47:42'),(35,8,'棒棒鸡',3,30.00,'四川特色棒棒鸡','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/bangbangji.jpg','2024-07-15 07:47:42'),(36,8,'口水鸡',3,35.00,'麻辣鲜香的口水鸡','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/koushuiji.jpg','2024-07-15 07:47:42'),(37,8,'红油抄手',3,25.00,'四川特色红油抄手','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/chaoshou.jpg','2024-07-15 07:47:42'),(38,8,'夫妻肺片',3,40.00,'经典的夫妻肺片','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/fuqifeipian.jpg','2024-07-15 07:47:42'),(39,9,'宫保鸡丁',4,50.00,'经典的川菜宫保鸡丁','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/gongbaojiding.jpeg','2024-07-15 07:47:42'),(40,9,'麻婆豆腐',4,30.00,'麻辣鲜香的麻婆豆腐','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/mapodoufu.jpg','2024-07-15 07:47:42'),(41,9,'水煮鱼',4,80.00,'鲜美的水煮鱼','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/shuizhuyu.jpg','2024-07-15 07:47:42'),(42,9,'回锅肉',4,45.00,'经典的回锅肉','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/huiguorou.jpg','2024-07-15 07:47:42'),(43,10,'东坡肉',4,60.00,'肥而不腻的东坡肉',NULL,'2024-07-15 07:47:42'),(44,10,'鱼香肉丝',4,40.00,'酸甜可口的鱼香肉丝',NULL,'2024-07-15 07:47:42'),(45,10,'干煸四季豆',4,35.00,'香辣的干煸四季豆',NULL,'2024-07-15 07:47:42'),(46,10,'辣子鸡',4,55.00,'麻辣的辣子鸡',NULL,'2024-07-15 07:47:42'),(47,11,'毛氏红烧肉',5,60.00,'经典的毛氏红烧肉',NULL,'2024-07-15 07:47:42'),(48,11,'剁椒鱼头',5,70.00,'湘菜代表剁椒鱼头',NULL,'2024-07-15 07:47:42'),(49,11,'农家小炒肉',5,45.00,'家常的农家小炒肉',NULL,'2024-07-15 07:47:42'),(50,11,'腊味合蒸',5,50.00,'湖南特色腊味合蒸',NULL,'2024-07-15 07:47:42'),(51,12,'湘西外婆菜',5,40.00,'湘西特色的外婆菜',NULL,'2024-07-15 07:47:42'),(52,12,'口味虾',5,80.00,'湖南特色口味虾',NULL,'2024-07-15 07:47:42'),(53,12,'辣椒炒肉',5,45.00,'经典的辣椒炒肉',NULL,'2024-07-15 07:47:42'),(54,12,'酸辣土豆丝',5,30.00,'酸辣开胃的土豆丝',NULL,'2024-07-15 07:47:42'),(55,13,'足浴套餐A',6,120.00,'放松身心的足浴套餐',NULL,'2024-07-15 07:47:42'),(56,13,'足浴套餐B',6,150.00,'高级足浴体验',NULL,'2024-07-15 07:47:42'),(57,13,'足浴套餐C',6,180.00,'豪华足浴享受',NULL,'2024-07-15 07:47:42'),(58,13,'足浴套餐D',6,200.00,'至尊足浴服务',NULL,'2024-07-15 07:47:42'),(59,14,'足浴套餐A',6,120.00,'放松身心的足浴套餐',NULL,'2024-07-15 07:47:42'),(60,14,'足浴套餐B',6,150.00,'高级足浴体验',NULL,'2024-07-15 07:47:42'),(61,14,'足浴套餐C',6,180.00,'豪华足浴享受',NULL,'2024-07-15 07:47:42'),(62,14,'足浴套餐D',6,200.00,'至尊足浴服务',NULL,'2024-07-15 07:47:42'),(63,15,'KTV包厢A',7,300.00,'小型KTV包厢',NULL,'2024-07-15 07:47:42'),(64,15,'KTV包厢B',7,500.00,'中型KTV包厢',NULL,'2024-07-15 07:47:42'),(65,15,'KTV包厢C',7,800.00,'大型KTV包厢',NULL,'2024-07-15 07:47:42'),(66,15,'KTV包厢D',7,1000.00,'豪华KTV包厢',NULL,'2024-07-15 07:47:42'),(67,16,'KTV包厢A',7,300.00,'小型KTV包厢',NULL,'2024-07-15 07:47:42'),(68,16,'KTV包厢B',7,500.00,'中型KTV包厢',NULL,'2024-07-15 07:47:42'),(69,16,'KTV包厢C',7,800.00,'大型KTV包厢',NULL,'2024-07-15 07:47:42'),(70,16,'KTV包厢D',7,1000.00,'豪华KTV包厢',NULL,'2024-07-15 07:47:42'),(71,17,'婚纱摄影套餐A',8,3000.00,'基础婚纱摄影套餐',NULL,'2024-07-15 07:47:42'),(72,17,'婚纱摄影套餐B',8,5000.00,'高级婚纱摄影套餐',NULL,'2024-07-15 07:47:42'),(73,17,'婚纱摄影套餐C',8,8000.00,'豪华婚纱摄影套餐',NULL,'2024-07-15 07:47:42'),(74,17,'婚纱摄影套餐D',8,10000.00,'至尊婚纱摄影套餐',NULL,'2024-07-15 07:47:42'),(75,18,'婚纱摄影套餐A',8,3000.00,'基础婚纱摄影套餐',NULL,'2024-07-15 07:47:42'),(76,18,'婚纱摄影套餐B',8,5000.00,'高级婚纱摄影套餐',NULL,'2024-07-15 07:47:42'),(77,18,'婚纱摄影套餐C',8,8000.00,'豪华婚纱摄影套餐',NULL,'2024-07-15 07:47:42'),(78,18,'婚纱摄影套餐D',8,10000.00,'至尊婚纱摄影套餐',NULL,'2024-07-15 07:47:42'),(79,19,'婚礼策划套餐A',9,5000.00,'基础婚礼策划套餐',NULL,'2024-07-15 07:47:42'),(80,19,'婚礼策划套餐B',9,8000.00,'高级婚礼策划套餐',NULL,'2024-07-15 07:47:42'),(81,19,'婚礼策划套餐C',9,12000.00,'豪华婚礼策划套餐',NULL,'2024-07-15 07:47:42'),(82,19,'婚礼策划套餐D',9,15000.00,'至尊婚礼策划套餐',NULL,'2024-07-15 07:47:42'),(83,20,'婚礼策划套餐A',9,5000.00,'基础婚礼策划套餐',NULL,'2024-07-15 07:47:42'),(84,20,'婚礼策划套餐B',9,8000.00,'高级婚礼策划套餐',NULL,'2024-07-15 07:47:42'),(85,20,'婚礼策划套餐C',9,12000.00,'豪华婚礼策划套餐',NULL,'2024-07-15 07:47:42'),(86,20,'婚礼策划套餐D',9,15000.00,'至尊婚礼策划套餐',NULL,'2024-07-15 07:47:42'),(87,21,'电影票A',10,50.00,'普通电影票',NULL,'2024-07-15 07:47:42'),(88,21,'电影票B',10,80.00,'3D电影票',NULL,'2024-07-15 07:47:42'),(89,21,'电影票C',10,120.00,'IMAX电影票',NULL,'2024-07-15 07:47:42'),(90,21,'电影票D',10,150.00,'4D电影票',NULL,'2024-07-15 07:47:42'),(91,22,'电影票A',10,50.00,'普通电影票',NULL,'2024-07-15 07:47:42'),(92,22,'电影票B',10,80.00,'3D电影票',NULL,'2024-07-15 07:47:42'),(93,22,'电影票C',10,120.00,'IMAX电影票',NULL,'2024-07-15 07:47:42'),(94,22,'电影票D',10,150.00,'4D电影票',NULL,'2024-07-15 07:47:42'),(95,23,'男士剪发',11,50.00,'基础男士剪发',NULL,'2024-07-15 07:47:42'),(96,23,'男士烫发',11,200.00,'男士烫发服务',NULL,'2024-07-15 07:47:42'),(97,23,'男士染发',11,150.00,'男士染发服务',NULL,'2024-07-15 07:47:42'),(98,23,'男士护理',11,100.00,'男士头发护理',NULL,'2024-07-15 07:47:42'),(99,24,'女士剪发',11,80.00,'基础女士剪发',NULL,'2024-07-15 07:47:42'),(100,24,'女士烫发',11,300.00,'女士烫发服务',NULL,'2024-07-15 07:47:42'),(101,24,'女士染发',11,250.00,'女士染发服务',NULL,'2024-07-15 07:47:42'),(102,24,'女士护理',11,150.00,'女士头发护理',NULL,'2024-07-15 07:47:42'),(103,25,'面部护理A',12,200.00,'基础面部护理',NULL,'2024-07-15 07:47:42'),(104,25,'面部护理B',12,300.00,'高级面部护理',NULL,'2024-07-15 07:47:42'),(105,25,'身体护理A',12,400.00,'基础身体护理',NULL,'2024-07-15 07:47:42'),(106,25,'身体护理B',12,500.00,'高级身体护理',NULL,'2024-07-15 07:47:42'),(107,26,'面部护理A',12,200.00,'基础面部护理',NULL,'2024-07-15 07:47:42'),(108,26,'面部护理B',12,300.00,'高级面部护理',NULL,'2024-07-15 07:47:42'),(109,26,'身体护理A',12,400.00,'基础身体护理',NULL,'2024-07-15 07:47:42'),(110,26,'身体护理B',12,500.00,'高级身体护理',NULL,'2024-07-15 07:47:42');

--
-- Table structure for table `merchant_product_category`
--

DROP TABLE IF EXISTS `merchant_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_product_category` (
                                             `category_id` int NOT NULL AUTO_INCREMENT,
                                             `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                             PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_product_category`
--

INSERT INTO `merchant_product_category` (`category_id`, `category_name`) VALUES (1,'火锅'),(2,'甜点'),(3,'小吃'),(4,'川菜'),(5,'湘菜'),(6,'足疗'),(7,'KTV'),(8,'摄影'),(9,'策划'),(10,'电影院'),(11,'美发'),(12,'美容'),(13,'粤菜'),(14,'台湾菜'),(15,'海鲜'),(16,'洗浴'),(17,'酒吧'),(18,'轰趴'),(19,'首饰'),(20,'跟拍'),(21,'舞蹈'),(22,'美甲');

--
-- Table structure for table `merchant_product_comment`
--

DROP TABLE IF EXISTS `merchant_product_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_product_comment` (
                                            `comment_id` int NOT NULL AUTO_INCREMENT,
                                            `product_id` int DEFAULT NULL,
                                            `user_id` int DEFAULT NULL,
                                            `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                            `rating` int DEFAULT NULL,
                                            `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                            PRIMARY KEY (`comment_id`) USING BTREE,
                                            KEY `product_id` (`product_id`) USING BTREE,
                                            KEY `user_id` (`user_id`) USING BTREE,
                                            CONSTRAINT `merchant_product_comment_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `merchant_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                            CONSTRAINT `merchant_product_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_product_comment`
--

INSERT INTO `merchant_product_comment` (`comment_id`, `product_id`, `user_id`, `content`, `rating`, `created_at`) VALUES (155,1,1,'非常美味的榴莲千层，强烈推荐！',5,'2024-07-15 08:00:00'),(156,1,2,'口感很好，榴莲味道浓郁。',4,'2024-07-15 08:01:00'),(157,1,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:02:00'),(158,2,1,'生日蛋糕非常漂亮，味道也很好。',5,'2024-07-15 08:05:00'),(159,2,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:06:00'),(160,2,3,'蛋糕有点干，不太喜欢。',2,'2024-07-15 08:07:00'),(161,5,1,'豆乳盒子味道独特，很喜欢。',5,'2024-07-15 08:10:00'),(162,5,2,'豆乳味道很浓，但有点腻。',3,'2024-07-15 08:11:00'),(163,5,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:12:00'),(164,6,1,'奥利奥雪胖子非常好吃，甜而不腻。',5,'2024-07-15 08:15:00'),(165,6,2,'口感很好，奥利奥味道很浓。',4,'2024-07-15 08:16:00'),(166,6,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:17:00'),(179,11,1,'芒果慕斯非常新鲜，口感很好。',5,'2024-07-15 08:20:00'),(180,11,2,'芒果味道很浓，但有点腻。',3,'2024-07-15 08:21:00'),(181,11,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:22:00'),(182,12,1,'草莓蛋糕非常漂亮，味道也很好。',5,'2024-07-15 08:25:00'),(183,12,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:26:00'),(184,12,3,'蛋糕有点干，不太喜欢。',2,'2024-07-15 08:27:00'),(185,13,1,'巧克力布朗尼非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(186,13,2,'口感很好，巧克力味道很浓。',4,'2024-07-15 08:31:00'),(187,13,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(188,14,1,'抹茶蛋糕卷非常新鲜，口感很好。',5,'2024-07-15 08:35:00'),(189,14,2,'抹茶味道很浓，但有点腻。',3,'2024-07-15 08:36:00'),(190,14,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:37:00'),(191,15,1,'麻辣火锅非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(192,15,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(193,15,3,'火锅有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(194,16,1,'清汤火锅非常清淡，适合养生。',5,'2024-07-15 08:45:00'),(195,16,2,'清汤味道很淡，但很健康。',4,'2024-07-15 08:46:00'),(196,16,3,'不太喜欢这种清淡口味，感觉一般。',2,'2024-07-15 08:47:00'),(197,17,1,'鸳鸯火锅非常特别，一半麻辣一半清汤。',5,'2024-07-15 08:50:00'),(198,17,2,'两种口味都很不错，推荐尝试。',4,'2024-07-15 08:51:00'),(199,17,3,'不太能接受这种混合口味，感觉一般。',2,'2024-07-15 08:52:00'),(200,18,1,'菌汤火锅非常鲜美，味道很好。',5,'2024-07-15 08:55:00'),(201,18,2,'菌汤味道很浓，但有点腻。',3,'2024-07-15 08:56:00'),(202,18,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:57:00'),(203,19,1,'麻辣火锅非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(204,19,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(205,19,3,'火锅有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(206,20,1,'清汤火锅非常清淡，适合养生。',5,'2024-07-15 08:45:00'),(207,20,2,'清汤味道很淡，但很健康。',4,'2024-07-15 08:46:00'),(208,20,3,'不太喜欢这种清淡口味，感觉一般。',2,'2024-07-15 08:47:00'),(209,21,1,'鸳鸯火锅非常特别，一半麻辣一半清汤。',5,'2024-07-15 08:50:00'),(210,21,2,'两种口味都很不错，推荐尝试。',4,'2024-07-15 08:51:00'),(211,21,3,'不太能接受这种混合口味，感觉一般。',2,'2024-07-15 08:52:00'),(212,22,1,'菌汤火锅非常鲜美，味道很好。',5,'2024-07-15 08:55:00'),(213,22,2,'菌汤味道很浓，但有点腻。',3,'2024-07-15 08:56:00'),(214,22,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:57:00'),(215,23,1,'榴莲千层非常新鲜，口感很好。',5,'2024-07-15 08:35:00'),(216,23,2,'榴莲味道很浓，但有点腻。',3,'2024-07-15 08:36:00'),(217,23,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:37:00'),(218,24,1,'生日蛋糕非常漂亮，味道也很好。',5,'2024-07-15 08:25:00'),(219,24,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:26:00'),(220,24,3,'蛋糕有点干，不太喜欢。',2,'2024-07-15 08:27:00'),(221,25,1,'豆乳盒子味道独特，很喜欢。',5,'2024-07-15 08:10:00'),(222,25,2,'豆乳味道很浓，但有点腻。',3,'2024-07-15 08:11:00'),(223,25,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:12:00'),(224,26,1,'奥利奥雪胖子非常好吃，甜而不腻。',5,'2024-07-15 08:15:00'),(225,26,2,'口感很好，奥利奥味道很浓。',4,'2024-07-15 08:16:00'),(226,26,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:17:00'),(227,27,1,'芒果慕斯非常新鲜，口感很好。',5,'2024-07-15 08:20:00'),(228,27,2,'芒果味道很浓，但有点腻。',3,'2024-07-15 08:21:00'),(229,27,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:22:00'),(230,28,1,'草莓蛋糕非常漂亮，味道也很好。',5,'2024-07-15 08:25:00'),(231,28,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:26:00'),(232,28,3,'蛋糕有点干，不太喜欢。',2,'2024-07-15 08:27:00'),(233,29,1,'巧克力布朗尼非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(234,29,2,'口感很好，巧克力味道很浓。',4,'2024-07-15 08:31:00'),(235,29,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(236,30,1,'抹茶蛋糕卷非常新鲜，口感很好。',5,'2024-07-15 08:35:00'),(237,30,2,'抹茶味道很浓，但有点腻。',3,'2024-07-15 08:36:00'),(238,30,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:37:00'),(239,31,1,'麻辣串串非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(240,31,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(241,31,3,'串串有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(242,32,1,'清汤串串非常清淡，适合养生。',5,'2024-07-15 08:45:00'),(243,32,2,'清汤味道很淡，但很健康。',4,'2024-07-15 08:46:00'),(244,32,3,'不太喜欢这种清淡口味，感觉一般。',2,'2024-07-15 08:47:00'),(245,33,1,'鸳鸯串串非常特别，一半麻辣一半清汤。',5,'2024-07-15 08:50:00'),(246,33,2,'两种口味都很不错，推荐尝试。',4,'2024-07-15 08:51:00'),(247,33,3,'不太能接受这种混合口味，感觉一般。',2,'2024-07-15 08:52:00'),(248,34,1,'菌汤串串非常鲜美，味道很好。',5,'2024-07-15 08:55:00'),(249,34,2,'菌汤味道很浓，但有点腻。',3,'2024-07-15 08:56:00'),(250,34,3,'不太喜欢这种口味，感觉一般。',2,'2024-07-15 08:57:00'),(251,35,1,'棒棒鸡非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(252,35,2,'口感很好，鸡肉很嫩。',4,'2024-07-15 08:31:00'),(253,35,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(254,36,1,'口水鸡非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(255,36,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(256,36,3,'鸡肉有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(257,37,1,'红油抄手非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(258,37,2,'口感很好，抄手很嫩。',4,'2024-07-15 08:31:00'),(259,37,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(260,38,1,'夫妻肺片非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(261,38,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(262,38,3,'肺片有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(263,39,1,'宫保鸡丁非常好吃，甜而不腻。',5,'2024-07-15 08:30:00'),(264,39,2,'口感很好，鸡肉很嫩。',4,'2024-07-15 08:31:00'),(265,39,3,'有点太甜了，不太适合我。',2,'2024-07-15 08:32:00'),(266,40,1,'麻婆豆腐非常正宗，味道很好。',5,'2024-07-15 08:40:00'),(267,40,2,'价格有点贵，但物有所值。',4,'2024-07-15 08:41:00'),(268,40,3,'豆腐有点辣，不太能吃辣的不推荐。',2,'2024-07-15 08:42:00'),(269,41,1,'水煮鱼非常鲜美，辣度适中。',5,'2024-07-15 09:00:00'),(270,41,2,'鱼肉很嫩，味道很好。',4,'2024-07-15 09:01:00'),(271,41,3,'有点太辣了，不太适合我。',2,'2024-07-15 09:02:00'),(272,42,4,'回锅肉非常经典，味道很好。',5,'2024-07-15 09:03:00'),(273,42,5,'肉片很薄，口感很好。',4,'2024-07-15 09:04:00'),(274,42,1,'有点太油腻了，不太适合我。',2,'2024-07-15 09:05:00'),(275,43,2,'东坡肉肥而不腻，非常好吃。',5,'2024-07-15 09:06:00'),(276,43,3,'肉炖得很烂，味道很好。',4,'2024-07-15 09:07:00'),(277,43,4,'有点太甜了，不太适合我。',2,'2024-07-15 09:08:00'),(278,44,5,'鱼香肉丝酸甜可口，非常下饭。',5,'2024-07-15 09:09:00'),(279,44,1,'肉丝很嫩，味道很好。',4,'2024-07-15 09:10:00'),(280,44,2,'有点太酸了，不太适合我。',2,'2024-07-15 09:11:00'),(281,45,3,'干煸四季豆香辣可口，非常好吃。',5,'2024-07-15 09:12:00'),(282,45,4,'四季豆很脆，味道很好。',4,'2024-07-15 09:13:00'),(283,45,5,'有点太辣了，不太适合我。',2,'2024-07-15 09:14:00'),(284,46,1,'辣子鸡麻辣可口，非常下饭。',5,'2024-07-15 09:15:00'),(285,46,2,'鸡肉很嫩，味道很好。',4,'2024-07-15 09:16:00'),(286,46,3,'有点太麻了，不太适合我。',2,'2024-07-15 09:17:00'),(287,47,4,'毛氏红烧肉非常经典，味道很好。',5,'2024-07-15 09:18:00'),(288,47,5,'肉炖得很烂，口感很好。',4,'2024-07-15 09:19:00'),(289,47,1,'有点太甜了，不太适合我。',2,'2024-07-15 09:20:00'),(290,48,2,'剁椒鱼头非常鲜美，辣度适中。',5,'2024-07-15 09:21:00'),(291,48,3,'鱼头很嫩，味道很好。',4,'2024-07-15 09:22:00'),(292,48,4,'有点太辣了，不太适合我。',2,'2024-07-15 09:23:00'),(293,49,5,'农家小炒肉非常下饭，味道很好。',5,'2024-07-15 09:24:00'),(294,49,1,'肉片很薄，口感很好。',4,'2024-07-15 09:25:00'),(295,49,2,'有点太油腻了，不太适合我。',2,'2024-07-15 09:26:00'),(296,50,3,'腊味合蒸非常经典，味道很好。',5,'2024-07-15 09:27:00'),(297,50,4,'腊味很香，口感很好。',4,'2024-07-15 09:28:00'),(298,50,5,'有点太咸了，不太适合我。',2,'2024-07-15 09:29:00'),(299,51,1,'湘西外婆菜非常地道，味道很好。',5,'2024-07-15 09:30:00'),(300,51,2,'菜很入味，口感很好。',4,'2024-07-15 09:31:00'),(301,51,3,'有点太辣了，不太适合我。',2,'2024-07-15 09:32:00'),(302,52,4,'口味虾非常鲜美，辣度适中。',5,'2024-07-15 09:33:00'),(303,52,5,'虾很新鲜，味道很好。',4,'2024-07-15 09:34:00'),(304,52,1,'有点太辣了，不太适合我。',2,'2024-07-15 09:35:00'),(305,53,2,'辣椒炒肉非常下饭，味道很好。',5,'2024-07-15 09:36:00'),(306,53,3,'肉片很薄，口感很好。',4,'2024-07-15 09:37:00'),(307,53,4,'有点太油腻了，不太适合我。',2,'2024-07-15 09:38:00'),(308,54,5,'酸辣土豆丝非常开胃，味道很好。',5,'2024-07-15 09:39:00'),(309,54,1,'土豆丝很脆，口感很好。',4,'2024-07-15 09:40:00'),(310,54,2,'有点太酸了，不太适合我。',2,'2024-07-15 09:41:00'),(311,55,3,'足浴套餐A非常放松，服务很好。',5,'2024-07-15 09:42:00'),(312,55,4,'环境很好，体验很棒。',4,'2024-07-15 09:43:00'),(313,55,5,'价格有点贵，性价比一般。',2,'2024-07-15 09:44:00'),(314,56,1,'足浴套餐B非常高级，服务很好。',5,'2024-07-15 09:45:00'),(315,56,2,'环境很好，体验很棒。',4,'2024-07-15 09:46:00'),(316,56,3,'价格有点贵，性价比一般。',2,'2024-07-15 09:47:00'),(317,57,4,'足浴套餐C非常豪华，服务很好。',5,'2024-07-15 09:48:00'),(318,57,5,'环境很好，体验很棒。',4,'2024-07-15 09:49:00'),(319,57,1,'价格有点贵，性价比一般。',2,'2024-07-15 09:50:00'),(320,58,2,'足浴套餐D非常至尊，服务很好。',5,'2024-07-15 09:51:00'),(321,58,3,'环境很好，体验很棒。',4,'2024-07-15 09:52:00'),(322,58,4,'价格有点贵，性价比一般。',2,'2024-07-15 09:53:00'),(323,59,5,'足浴套餐A非常放松，服务很好。',5,'2024-07-15 09:54:00'),(324,59,1,'环境很好，体验很棒。',4,'2024-07-15 09:55:00'),(325,59,2,'价格有点贵，性价比一般。',2,'2024-07-15 09:56:00'),(326,60,3,'足浴套餐B非常高级，服务很好。',5,'2024-07-15 09:57:00'),(327,60,4,'环境很好，体验很棒。',4,'2024-07-15 09:58:00'),(328,60,5,'价格有点贵，性价比一般。',2,'2024-07-15 09:59:00'),(329,61,1,'足浴套餐C非常豪华，服务很好。',5,'2024-07-15 10:00:00'),(330,61,2,'环境很好，体验很棒。',4,'2024-07-15 10:01:00'),(331,61,3,'价格有点贵，性价比一般。',2,'2024-07-15 10:02:00'),(332,62,4,'足浴套餐D非常至尊，服务很好。',5,'2024-07-15 10:03:00'),(333,62,5,'环境很好，体验很棒。',4,'2024-07-15 10:04:00'),(334,62,1,'价格有点贵，性价比一般。',2,'2024-07-15 10:05:00'),(335,63,2,'KTV包厢A非常舒适，音响效果很好。',5,'2024-07-15 10:06:00'),(336,63,3,'环境很好，服务很周到。',4,'2024-07-15 10:07:00'),(337,63,4,'价格有点贵，性价比一般。',2,'2024-07-15 10:08:00'),(338,64,5,'KTV包厢B非常宽敞，音响效果很好。',5,'2024-07-15 10:09:00'),(339,64,1,'环境很好，服务很周到。',4,'2024-07-15 10:10:00'),(340,64,2,'价格有点贵，性价比一般。',2,'2024-07-15 10:11:00'),(341,65,3,'KTV包厢C非常豪华，音响效果很好。',5,'2024-07-15 10:12:00'),(342,65,4,'环境很好，服务很周到。',4,'2024-07-15 10:13:00'),(343,65,5,'价格有点贵，性价比一般。',2,'2024-07-15 10:14:00'),(344,66,1,'KTV包厢D非常至尊，音响效果很好。',5,'2024-07-15 10:15:00'),(345,66,2,'环境很好，服务很周到。',4,'2024-07-15 10:16:00'),(346,66,3,'价格有点贵，性价比一般。',2,'2024-07-15 10:17:00'),(347,67,4,'KTV包厢A非常舒适，音响效果很好。',5,'2024-07-15 10:18:00'),(348,67,5,'环境很好，服务很周到。',4,'2024-07-15 10:19:00'),(349,67,1,'价格有点贵，性价比一般。',2,'2024-07-15 10:20:00'),(350,68,2,'KTV包厢B非常宽敞，音响效果很好。',5,'2024-07-15 10:21:00'),(351,68,3,'环境很好，服务很周到。',4,'2024-07-15 10:22:00'),(352,68,4,'价格有点贵，性价比一般。',2,'2024-07-15 10:23:00'),(353,69,5,'KTV包厢C非常豪华，音响效果很好。',5,'2024-07-15 10:24:00'),(354,69,1,'环境很好，服务很周到。',4,'2024-07-15 10:25:00'),(355,69,2,'价格有点贵，性价比一般。',2,'2024-07-15 10:26:00'),(356,70,3,'KTV包厢D非常至尊，音响效果很好。',5,'2024-07-15 10:27:00'),(357,70,4,'环境很好，服务很周到。',4,'2024-07-15 10:28:00'),(358,70,5,'价格有点贵，性价比一般。',2,'2024-07-15 10:29:00'),(359,71,1,'婚纱摄影套餐A非常基础，服务很好。',5,'2024-07-15 10:30:00'),(360,71,2,'摄影师很专业，体验很棒。',4,'2024-07-15 10:31:00'),(361,71,3,'价格有点贵，性价比一般。',2,'2024-07-15 10:32:00'),(362,72,4,'婚纱摄影套餐B非常高级，服务很好。',5,'2024-07-15 10:33:00'),(363,72,5,'摄影师很专业，体验很棒。',4,'2024-07-15 10:34:00'),(364,72,1,'价格有点贵，性价比一般。',2,'2024-07-15 10:35:00'),(365,73,2,'婚纱摄影套餐C非常豪华，服务很好。',5,'2024-07-15 10:36:00'),(366,73,3,'摄影师很专业，体验很棒。',4,'2024-07-15 10:37:00'),(367,73,4,'价格有点贵，性价比一般。',2,'2024-07-15 10:38:00'),(368,74,5,'婚纱摄影套餐D非常至尊，服务很好。',5,'2024-07-15 10:39:00'),(369,74,1,'摄影师很专业，体验很棒。',4,'2024-07-15 10:40:00'),(370,74,2,'价格有点贵，性价比一般。',2,'2024-07-15 10:41:00'),(371,75,3,'婚纱摄影套餐A非常基础，服务很好。',5,'2024-07-15 10:42:00'),(372,75,4,'摄影师很专业，体验很棒。',4,'2024-07-15 10:43:00'),(373,75,5,'价格有点贵，性价比一般。',2,'2024-07-15 10:44:00'),(374,76,1,'婚纱摄影套餐B非常高级，服务很好。',5,'2024-07-15 10:45:00'),(375,76,2,'摄影师很专业，体验很棒。',4,'2024-07-15 10:46:00'),(376,76,3,'价格有点贵，性价比一般。',2,'2024-07-15 10:47:00'),(377,77,4,'婚纱摄影套餐C非常豪华，服务很好。',5,'2024-07-15 10:48:00'),(378,77,5,'摄影师很专业，体验很棒。',4,'2024-07-15 10:49:00'),(379,77,1,'价格有点贵，性价比一般。',2,'2024-07-15 10:50:00'),(380,78,2,'婚纱摄影套餐D非常至尊，服务很好。',5,'2024-07-15 10:51:00'),(381,78,3,'摄影师很专业，体验很棒。',4,'2024-07-15 10:52:00'),(382,78,4,'价格有点贵，性价比一般。',2,'2024-07-15 10:53:00'),(383,79,5,'婚礼策划套餐A非常基础，服务很好。',5,'2024-07-15 10:54:00'),(384,79,1,'策划师很专业，体验很棒。',4,'2024-07-15 10:55:00'),(385,79,2,'价格有点贵，性价比一般。',2,'2024-07-15 10:56:00'),(386,80,3,'婚礼策划套餐B非常高级，服务很好。',5,'2024-07-15 10:57:00'),(387,80,4,'策划师很专业，体验很棒。',4,'2024-07-15 10:58:00'),(388,80,5,'价格有点贵，性价比一般。',2,'2024-07-15 10:59:00'),(389,81,1,'婚礼策划套餐C非常豪华，服务很好。',5,'2024-07-15 11:00:00'),(390,81,2,'策划师很专业，体验很棒。',4,'2024-07-15 11:01:00'),(391,81,3,'价格有点贵，性价比一般。',2,'2024-07-15 11:02:00'),(392,82,4,'婚礼策划套餐D非常至尊，服务很好。',5,'2024-07-15 11:03:00'),(393,82,5,'策划师很专业，体验很棒。',4,'2024-07-15 11:04:00'),(394,82,1,'价格有点贵，性价比一般。',2,'2024-07-15 11:05:00'),(395,83,2,'婚礼策划套餐A非常基础，服务很好。',5,'2024-07-15 11:06:00'),(396,83,3,'策划师很专业，体验很棒。',4,'2024-07-15 11:07:00'),(397,83,4,'价格有点贵，性价比一般。',2,'2024-07-15 11:08:00'),(398,84,5,'婚礼策划套餐B非常高级，服务很好。',5,'2024-07-15 11:09:00'),(399,84,1,'策划师很专业，体验很棒。',4,'2024-07-15 11:10:00'),(400,84,2,'价格有点贵，性价比一般。',2,'2024-07-15 11:11:00'),(401,85,3,'婚礼策划套餐C非常豪华，服务很好。',5,'2024-07-15 11:12:00'),(402,85,4,'策划师很专业，体验很棒。',4,'2024-07-15 11:13:00'),(403,85,5,'价格有点贵，性价比一般。',2,'2024-07-15 11:14:00'),(404,86,1,'这个婚礼策划套餐非常棒，服务周到，推荐！',5,'2024-07-15 08:30:00'),(405,86,2,'工作人员非常专业，整个过程非常顺利。',5,'2024-07-15 08:31:00'),(406,86,3,'有点小失望，服务没有预期的好。',2,'2024-07-15 08:32:00'),(407,87,4,'电影票性价比很高，下次还会购买。',5,'2024-07-15 08:33:00'),(408,87,5,'观影效果不错，推荐给大家。',5,'2024-07-15 08:34:00'),(409,88,1,'3D效果很棒，非常满意。',5,'2024-07-15 08:35:00'),(410,88,2,'座位有点不舒服，其他都还好。',4,'2024-07-15 08:36:00'),(411,89,3,'IMAX体验非常震撼，强烈推荐。',5,'2024-07-15 08:37:00'),(412,89,4,'价格有点高，但体验值得。',4,'2024-07-15 08:38:00'),(413,90,5,'4D效果一般，没有想象中的好。',2,'2024-07-15 08:39:00'),(414,90,1,'观影体验很特别，推荐尝试。',4,'2024-07-15 08:40:00'),(415,91,2,'普通电影票价格实惠，不错。',5,'2024-07-15 08:41:00'),(416,91,3,'影院环境很好，服务也不错。',5,'2024-07-15 08:42:00'),(417,92,4,'3D电影票效果很好，推荐购买。',5,'2024-07-15 08:43:00'),(418,92,5,'观影体验不错，下次还会来。',5,'2024-07-15 08:44:00'),(419,93,1,'IMAX电影票非常震撼，值得一看。',5,'2024-07-15 08:45:00'),(420,93,2,'价格有点贵，但体验很好。',4,'2024-07-15 08:46:00'),(421,94,3,'4D电影票效果一般，不太推荐。',2,'2024-07-15 08:47:00'),(422,94,4,'观影体验很特别，可以尝试。',4,'2024-07-15 08:48:00'),(423,95,5,'男士剪发服务很好，发型师很专业。',5,'2024-07-15 08:49:00'),(424,95,1,'价格实惠，服务也不错。',5,'2024-07-15 08:50:00'),(425,96,2,'男士烫发效果很好，非常满意。',5,'2024-07-15 08:51:00'),(426,96,3,'烫发效果一般，没有预期的好。',2,'2024-07-15 08:52:00'),(427,97,4,'男士染发颜色很满意，推荐。',5,'2024-07-15 08:53:00'),(428,97,5,'染发效果不错，服务也很好。',5,'2024-07-15 08:54:00'),(429,98,1,'男士护理服务很专业，推荐。',5,'2024-07-15 08:55:00'),(430,98,2,'护理效果一般，没有特别的感觉。',3,'2024-07-15 08:56:00'),(431,99,3,'女士剪发很满意，发型师很专业。',5,'2024-07-15 08:57:00'),(432,99,4,'剪发效果不错，服务也很好。',5,'2024-07-15 08:58:00'),(433,100,5,'女士烫发效果很好，非常满意。',5,'2024-07-15 08:59:00'),(434,100,1,'烫发效果一般，没有预期的好。',2,'2024-07-15 09:00:00'),(435,101,2,'女士染发颜色很满意，推荐。',5,'2024-07-15 09:01:00'),(436,101,3,'染发效果不错，服务也很好。',5,'2024-07-15 09:02:00'),(437,102,4,'女士护理服务很专业，推荐。',5,'2024-07-15 09:03:00'),(438,102,5,'护理效果一般，没有特别的感觉。',3,'2024-07-15 09:04:00'),(439,103,1,'面部护理效果很好，非常满意。',5,'2024-07-15 09:05:00'),(440,103,2,'护理效果一般，没有预期的好。',2,'2024-07-15 09:06:00'),(441,104,3,'高级面部护理效果很好，推荐。',5,'2024-07-15 09:07:00'),(442,104,4,'护理效果不错，服务也很好。',5,'2024-07-15 09:08:00'),(443,105,5,'身体护理效果很好，非常满意。',5,'2024-07-15 09:09:00'),(444,105,1,'护理效果一般，没有预期的好。',2,'2024-07-15 09:10:00'),(445,106,2,'高级身体护理效果很好，推荐。',5,'2024-07-15 09:11:00'),(446,106,3,'护理效果不错，服务也很好。',5,'2024-07-15 09:12:00'),(447,107,4,'面部护理效果很好，非常满意。',5,'2024-07-15 09:13:00'),(448,107,5,'护理效果一般，没有预期的好。',2,'2024-07-15 09:14:00'),(449,108,1,'高级面部护理效果很好，推荐。',5,'2024-07-15 09:15:00'),(450,108,2,'护理效果不错，服务也很好。',5,'2024-07-15 09:16:00'),(451,109,3,'身体护理效果很好，非常满意。',5,'2024-07-15 09:17:00'),(452,109,4,'护理效果一般，没有预期的好。',2,'2024-07-15 09:18:00'),(453,110,5,'高级身体护理效果很好，推荐。',5,'2024-07-15 09:19:00'),(454,110,1,'护理效果不错，服务也很好。',5,'2024-07-15 09:20:00');

--
-- Table structure for table `merchant_promotion`
--

DROP TABLE IF EXISTS `merchant_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_promotion` (
                                      `promotion_id` int NOT NULL AUTO_INCREMENT,
                                      `merchant_id` int DEFAULT NULL,
                                      `start_date` date DEFAULT NULL,
                                      `end_date` date DEFAULT NULL,
                                      `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
                                      `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                      PRIMARY KEY (`promotion_id`) USING BTREE,
                                      KEY `merchant_id` (`merchant_id`) USING BTREE,
                                      CONSTRAINT `merchant_promotion_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_promotion`
--

INSERT INTO `merchant_promotion` (`promotion_id`, `merchant_id`, `start_date`, `end_date`, `details`, `created_at`) VALUES (1,1,'2024-01-01','2024-01-31','新年促销活动','2024-07-11 07:08:53'),(2,2,'2024-02-01','2024-02-28','春节特惠','2024-07-11 07:08:53');

--
-- Table structure for table `system_account`
--

DROP TABLE IF EXISTS `system_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_account` (
                                  `account_id` int NOT NULL AUTO_INCREMENT,
                                  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1234',
                                  `role_id` int NOT NULL DEFAULT '2',
                                  PRIMARY KEY (`account_id`) USING BTREE,
                                  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_account`
--

INSERT INTO `system_account` (`account_id`, `username`, `password`, `role_id`) VALUES (1,'admin','1234',1),(2,'merchant1','1234',2),(3,'merchant2','1234',2),(4,'merchant3','1234',2),(5,'merchant4','1234',2),(6,'mercahnt5','1234',2),(7,'mercahnt6','1234',2),(8,'merchant7','1234',2),(9,'merchant8','1234',2),(10,'merchant9','1234',2),(11,'merchant10','1234',2),(12,'merchant11','1234',2),(13,'merchant12','1234',2),(14,'merchant13','1234',2),(15,'merchant14','1234',2),(16,'merchant15','1234',2),(17,'merchant16','1234',2),(18,'merchant17','1234',2),(19,'merchant18','1234',2),(20,'merchant19','1234',2),(21,'merchant20','1234',2),(22,'merchant21','1234',2),(23,'merchant22','1234',2),(24,'merchant23','1234',2),(25,'merchant24','1234',2),(26,'merchant25','1234',2),(27,'merchant26','1234',2),(28,'merchant27','1234',2),(29,'merchant28','1234',2),(30,'merchant29','1234',2),(31,'merchant30','1234',2),(32,'user1','1234',3),(33,'user2','1234',3),(34,'user3','1234',3),(35,'user4','1234',3),(36,'user5','1234',3),(37,'user6','1234',3),(38,'user7','1234',3),(39,'user8','1234',3),(40,'user9','1234',3),(41,'user10','1234',3);

--
-- Table structure for table `system_article`
--

DROP TABLE IF EXISTS `system_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_article` (
                                  `article_id` int NOT NULL AUTO_INCREMENT,
                                  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                  `category_id` int DEFAULT NULL,
                                  `author_id` int DEFAULT NULL,
                                  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                  PRIMARY KEY (`article_id`) USING BTREE,
                                  KEY `category_id` (`category_id`) USING BTREE,
                                  KEY `author_id` (`author_id`) USING BTREE,
                                  CONSTRAINT `system_article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `system_article_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                  CONSTRAINT `system_article_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_article`
--

INSERT INTO `system_article` (`article_id`, `title`, `content`, `category_id`, `author_id`, `created_at`) VALUES (1,'2024年技术趋势','# This is the Title of the Article\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\nThis is a paragraph of the article. You can include **bold text**, *italic text*, and [links](#).\r\n\r\n## Subheading\r\nMore content here...\r\n\r\n- First item\r\n- Second item\r\n- Third item\r\n\r\nAnother paragraph with an image:\r\n\r\n![Placeholder Image](https://via.placeholder.com/150)',1,1,'2024-07-11 07:08:53'),(2,'瑜伽的健康益处','关于瑜伽的内容',2,1,'2024-07-11 07:08:53'),(3,'投资理财技巧','关于投资理财的内容',3,1,'2024-07-11 07:08:53'),(4,'在线教育的未来','关于在线教育的内容',4,1,'2024-07-11 07:08:53');

--
-- Table structure for table `system_article_category`
--

DROP TABLE IF EXISTS `system_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_article_category` (
                                           `category_id` int NOT NULL AUTO_INCREMENT,
                                           `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                           PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_article_category`
--

INSERT INTO `system_article_category` (`category_id`, `category_name`) VALUES (1,'技术'),(2,'健康'),(3,'金融'),(4,'教育');

--
-- Table structure for table `user_favorite_merchant`
--

DROP TABLE IF EXISTS `user_favorite_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorite_merchant` (
                                          `favorite_id` int NOT NULL AUTO_INCREMENT,
                                          `user_id` int DEFAULT NULL,
                                          `merchant_id` int DEFAULT NULL,
                                          `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                          PRIMARY KEY (`favorite_id`) USING BTREE,
                                          KEY `user_id` (`user_id`) USING BTREE,
                                          KEY `merchant_id` (`merchant_id`) USING BTREE,
                                          CONSTRAINT `user_favorite_merchant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                          CONSTRAINT `user_favorite_merchant_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_info` (`merchant_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorite_merchant`
--


--
-- Table structure for table `user_favorite_product`
--

DROP TABLE IF EXISTS `user_favorite_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorite_product` (
                                         `favorite_id` int NOT NULL AUTO_INCREMENT,
                                         `user_id` int DEFAULT NULL,
                                         `product_id` int DEFAULT NULL,
                                         `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                         PRIMARY KEY (`favorite_id`) USING BTREE,
                                         KEY `user_id` (`user_id`) USING BTREE,
                                         KEY `product_id` (`product_id`) USING BTREE,
                                         CONSTRAINT `user_favorite_product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                         CONSTRAINT `user_favorite_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `merchant_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorite_product`
--


--
-- Table structure for table `user_friend`
--

DROP TABLE IF EXISTS `user_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_friend` (
                               `user_id` int NOT NULL,
                               `friend_id` int NOT NULL,
                               `category_id` int DEFAULT NULL,
                               PRIMARY KEY (`user_id`,`friend_id`) USING BTREE,
                               KEY `friend_id` (`friend_id`) USING BTREE,
                               KEY `category_id` (`category_id`) USING BTREE,
                               CONSTRAINT `user_friend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                               CONSTRAINT `user_friend_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                               CONSTRAINT `user_friend_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `user_friend_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_friend`
--

INSERT INTO `user_friend` (`user_id`, `friend_id`, `category_id`) VALUES (1,2,1),(1,4,1),(1,5,1),(2,1,1),(5,1,1),(1,3,2),(3,1,2),(2,5,3),(5,2,3),(2,3,4),(2,4,4),(4,2,4),(3,4,5),(3,2,7),(3,5,7),(4,3,7),(5,3,7),(4,1,8),(4,5,8),(5,4,8);

--
-- Table structure for table `user_friend_application`
--

DROP TABLE IF EXISTS `user_friend_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_friend_application` (
                                           `application_id` int NOT NULL AUTO_INCREMENT,
                                           `user_id` int DEFAULT NULL,
                                           `friend_id` int DEFAULT NULL,
                                           `category_id` int DEFAULT NULL,
                                           PRIMARY KEY (`application_id`) USING BTREE,
                                           KEY `user_id` (`user_id`) USING BTREE,
                                           KEY `friend_id` (`friend_id`) USING BTREE,
                                           KEY `category_id` (`category_id`) USING BTREE,
                                           CONSTRAINT `user_friend_application_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                           CONSTRAINT `user_friend_application_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
                                           CONSTRAINT `user_friend_application_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `user_friend_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_friend_application`
--


--
-- Table structure for table `user_friend_category`
--

DROP TABLE IF EXISTS `user_friend_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_friend_category` (
                                        `category_id` int NOT NULL AUTO_INCREMENT,
                                        `user_id` int DEFAULT NULL,
                                        `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                        PRIMARY KEY (`category_id`) USING BTREE,
                                        KEY `user_id` (`user_id`) USING BTREE,
                                        CONSTRAINT `user_friend_category_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_friend_category`
--

INSERT INTO `user_friend_category` (`category_id`, `user_id`, `category_name`) VALUES (1,1,'好友'),(2,1,'饭友'),(3,2,'好友'),(4,2,'同事'),(5,3,'饭友'),(6,4,'同事'),(7,3,'好友'),(8,4,'好友'),(9,1,'家人'),(10,2,'家人'),(11,3,'家人'),(12,4,'家人'),(13,1,'同学'),(14,2,'同学'),(15,3,'同学'),(16,4,'同学');

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
                             `user_id` int NOT NULL AUTO_INCREMENT,
                             `account_id` int NOT NULL,
                             `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                             PRIMARY KEY (`user_id`) USING BTREE,
                             KEY `account_id` (`account_id`) USING BTREE,
                             CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `system_account` (`account_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `account_id`, `name`, `email`, `phone`, `image_url`, `created_at`) VALUES (1,32,'Adochew','35Sxhs4554@example.com','17865321457','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/bird1.gif','2024-07-11 07:08:53'),(2,33,'rayo','5656698622sxhs@example.com','12586453254','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/IMG_3888.JPG','2024-07-11 07:08:53'),(3,34,'zecy','44551752shwj@example.com','13694265735','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/IMG_2159.JPG','2024-07-11 07:08:53'),(4,35,'WDHYDW','shjs5628968@example.com','16935649874','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/IMG_3945.JPG','2024-07-11 07:08:53'),(5,36,'半夏','shwh553286315@example.com','18856885289','https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/user/IMG_4233.JPG','2024-07-15 08:05:56');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 10:00:50
