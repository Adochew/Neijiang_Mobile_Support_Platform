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

 Date: 15/07/2024 19:17:34
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
) ENGINE = InnoDB AUTO_INCREMENT = 468 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_history
-- ----------------------------
INSERT INTO `group_history` VALUES (223, 2, 135, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (224, 2, 136, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (225, 2, 137, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (226, 2, 138, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (227, 2, 139, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (228, 3, 140, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (229, 3, 141, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (230, 3, 142, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (231, 3, 143, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (232, 3, 144, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (233, 4, 145, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (234, 4, 146, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (235, 4, 147, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (236, 4, 148, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (237, 4, 149, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (238, 5, 150, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (239, 5, 151, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (240, 5, 152, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (241, 5, 153, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (242, 5, 154, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (243, 6, 155, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (244, 6, 156, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (245, 6, 157, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (246, 6, 158, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (247, 6, 159, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (248, 7, 160, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (249, 7, 161, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (250, 7, 162, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (251, 7, 163, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (252, 7, 164, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (253, 8, 165, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (254, 8, 166, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (255, 8, 167, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (256, 8, 168, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (257, 8, 169, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (258, 9, 170, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (259, 9, 171, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (260, 9, 172, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (261, 9, 173, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (262, 9, 174, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (263, 10, 175, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (264, 10, 176, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (265, 10, 177, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (266, 10, 178, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (267, 10, 179, 'create', '群组创建', '2024-07-15 18:43:14');
INSERT INTO `group_history` VALUES (268, 2, 135, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (269, 2, 136, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (270, 2, 137, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (271, 2, 138, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (272, 2, 139, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (273, 3, 140, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (274, 3, 141, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (275, 3, 142, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (276, 3, 143, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (277, 3, 144, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (278, 4, 145, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (279, 4, 146, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (280, 4, 147, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (281, 4, 148, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (282, 4, 149, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (283, 5, 150, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (284, 5, 151, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (285, 5, 152, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (286, 5, 153, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (287, 5, 154, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (288, 6, 155, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (289, 6, 156, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (290, 6, 157, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (291, 6, 158, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (292, 6, 159, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (293, 7, 160, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (294, 7, 161, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (295, 7, 162, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (296, 7, 163, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (297, 7, 164, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (298, 8, 165, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (299, 8, 166, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (300, 8, 167, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (301, 8, 168, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (302, 8, 169, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (303, 9, 170, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (304, 9, 171, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (305, 9, 172, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (306, 9, 173, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (307, 9, 174, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (308, 10, 175, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (309, 10, 176, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (310, 10, 177, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (311, 10, 178, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (312, 10, 179, 'add', '添加成员', '2024-07-15 18:51:15');
INSERT INTO `group_history` VALUES (313, 32, 135, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (314, 33, 135, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (315, 34, 135, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (316, 33, 136, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (317, 34, 136, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (318, 35, 136, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (319, 34, 137, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (320, 35, 137, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (321, 36, 137, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (322, 32, 138, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (323, 35, 138, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (324, 36, 138, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (325, 32, 139, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (326, 33, 139, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (327, 36, 139, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (328, 32, 140, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (329, 33, 140, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (330, 34, 140, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (331, 33, 141, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (332, 34, 141, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (333, 35, 141, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (334, 34, 142, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (335, 35, 142, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (336, 36, 142, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (337, 32, 143, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (338, 35, 143, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (339, 36, 143, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (340, 32, 144, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (341, 33, 144, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (342, 36, 144, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (343, 32, 145, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (344, 33, 145, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (345, 34, 145, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (346, 33, 146, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (347, 34, 146, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (348, 35, 146, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (349, 34, 147, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (350, 35, 147, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (351, 36, 147, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (352, 32, 148, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (353, 35, 148, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (354, 36, 148, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (355, 32, 149, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (356, 33, 149, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (357, 36, 149, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (358, 32, 150, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (359, 33, 150, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (360, 34, 150, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (361, 33, 151, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (362, 34, 151, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (363, 35, 151, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (364, 34, 152, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (365, 35, 152, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (366, 36, 152, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (367, 32, 153, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (368, 35, 153, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (369, 36, 153, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (370, 32, 154, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (371, 33, 154, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (372, 36, 154, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (373, 32, 155, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (374, 33, 155, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (375, 34, 155, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (376, 33, 156, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (377, 34, 156, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (378, 35, 156, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (379, 34, 157, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (380, 35, 157, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (381, 36, 157, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (382, 32, 158, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (383, 35, 158, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (384, 36, 158, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (385, 32, 159, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (386, 33, 159, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (387, 36, 159, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (388, 32, 160, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (389, 33, 160, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (390, 34, 160, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (391, 33, 161, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (392, 34, 161, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (393, 35, 161, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (394, 34, 162, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (395, 35, 162, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (396, 36, 162, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (397, 32, 163, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (398, 35, 163, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (399, 36, 163, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (400, 32, 164, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (401, 33, 164, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (402, 36, 164, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (403, 32, 165, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (404, 33, 165, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (405, 34, 165, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (406, 33, 166, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (407, 34, 166, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (408, 35, 166, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (409, 34, 167, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (410, 35, 167, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (411, 36, 167, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (412, 32, 168, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (413, 35, 168, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (414, 36, 168, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (415, 32, 169, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (416, 33, 169, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (417, 36, 169, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (418, 32, 170, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (419, 33, 170, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (420, 34, 170, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (421, 33, 171, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (422, 34, 171, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (423, 35, 171, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (424, 34, 172, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (425, 35, 172, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (426, 36, 172, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (427, 32, 173, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (428, 35, 173, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (429, 36, 173, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (430, 32, 174, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (431, 33, 174, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (432, 36, 174, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (433, 32, 175, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (434, 33, 175, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (435, 34, 175, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (436, 33, 176, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (437, 34, 176, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (438, 35, 176, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (439, 34, 177, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (440, 35, 177, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (441, 36, 177, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (442, 32, 178, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (443, 35, 178, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (444, 36, 178, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (445, 32, 179, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (446, 33, 179, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (447, 36, 179, 'add', '添加成员', '2024-07-15 18:59:39');
INSERT INTO `group_history` VALUES (448, 2, 135, 'common', '大家好，欢迎来到折扣优惠分享群！', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (449, 32, 135, 'common', '很高兴加入这个群，希望能找到一些好的折扣信息。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (450, 33, 135, 'common', '我也是，期待和大家一起分享购物经验。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (451, 34, 135, 'common', '我已经在这里发现了一些不错的优惠，大家有需要可以问我。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (452, 2, 135, 'common', '今天有谁看到什么好的折扣吗？', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (453, 32, 135, 'common', '我看到一家店的衣服打五折，很划算。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (454, 33, 135, 'common', '我刚买了一些家居用品，折扣力度也很大。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (455, 34, 135, 'common', '我推荐大家去看看电子产品，最近有很多优惠活动。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (456, 2, 135, 'common', '感谢大家的分享，希望大家都能买到心仪的商品。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (457, 32, 135, 'common', '不客气，大家互相帮助。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (458, 33, 135, 'common', '是的，我们群就是要这样互相分享。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (459, 34, 135, 'common', '如果有新的优惠信息，我会第一时间分享给大家。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (460, 2, 135, 'common', '太好了，期待你的分享。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (461, 32, 135, 'common', '我也会继续关注的。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (462, 33, 135, 'common', '我也是，大家一起努力。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (463, 34, 135, 'common', '好的，我们一起寻找更多优惠。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (464, 2, 135, 'common', '大家周末愉快，记得关注周末的特别优惠哦。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (465, 32, 135, 'common', '周末愉快，我会留意的。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (466, 33, 135, 'common', '周末愉快，谢谢提醒。', '2024-07-15 19:03:25');
INSERT INTO `group_history` VALUES (467, 34, 135, 'common', '周末愉快，大家一起享受购物的乐趣吧。', '2024-07-15 19:03:25');

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
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES (135, '折扣优惠分享群', 2, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (136, '美食爱好者交流群', 2, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (137, '旅行攻略分享群', 2, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (138, '健康生活讨论群', 2, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (139, '科技新品体验群', 2, '体验最新科技产品', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (140, '折扣优惠分享群', 3, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (141, '美食爱好者交流群', 3, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (142, '旅行攻略分享群', 3, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (143, '健康生活讨论群', 3, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (144, '科技新品体验群', 3, '体验最新科技产品', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (145, '折扣优惠分享群', 4, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (146, '美食爱好者交流群', 4, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (147, '旅行攻略分享群', 4, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (148, '健康生活讨论群', 4, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (149, '科技新品体验群', 4, '体验最新科技产品', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (150, '折扣优惠分享群', 5, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (151, '美食爱好者交流群', 5, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (152, '旅行攻略分享群', 5, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (153, '健康生活讨论群', 5, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (154, '科技新品体验群', 5, '体验最新科技产品', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (155, '折扣优惠分享群', 6, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (156, '美食爱好者交流群', 6, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (157, '旅行攻略分享群', 6, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (158, '健康生活讨论群', 6, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (159, '科技新品体验群', 6, '体验最新科技产品', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (160, '折扣优惠分享群', 7, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (161, '美食爱好者交流群', 7, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (162, '旅行攻略分享群', 7, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (163, '健康生活讨论群', 7, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (164, '科技新品体验群', 7, '体验最新科技产品', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (165, '折扣优惠分享群', 8, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (166, '美食爱好者交流群', 8, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (167, '旅行攻略分享群', 8, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (168, '健康生活讨论群', 8, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (169, '科技新品体验群', 8, '体验最新科技产品', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (170, '折扣优惠分享群', 9, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (171, '美食爱好者交流群', 9, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (172, '旅行攻略分享群', 9, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (173, '健康生活讨论群', 9, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (174, '科技新品体验群', 9, '体验最新科技产品', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (175, '折扣优惠分享群', 10, '分享各类商品折扣信息', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (176, '美食爱好者交流群', 10, '交流各地美食心得', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (177, '旅行攻略分享群', 10, '分享旅行中的精彩瞬间', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (178, '健康生活讨论群', 10, '探讨健康生活方式', NULL, '2024-07-15 18:40:03');
INSERT INTO `group_info` VALUES (179, '科技新品体验群', 10, '体验最新科技产品', NULL, '2024-07-15 18:40:03');

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
INSERT INTO `group_member` VALUES (135, 2, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (135, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (135, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (135, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (136, 2, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (136, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (136, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (136, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (137, 2, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (137, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (137, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (137, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (138, 2, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (138, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (138, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (138, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (139, 2, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (139, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (139, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (139, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (140, 3, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (140, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (140, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (140, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (141, 3, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (141, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (141, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (141, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (142, 3, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (142, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (142, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (142, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (143, 3, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (143, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (143, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (143, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (144, 3, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (144, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (144, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (144, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (145, 4, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (145, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (145, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (145, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (146, 4, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (146, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (146, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (146, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (147, 4, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (147, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (147, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (147, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (148, 4, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (148, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (148, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (148, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (149, 4, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (149, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (149, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (149, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (150, 5, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (150, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (150, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (150, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (151, 5, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (151, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (151, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (151, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (152, 5, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (152, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (152, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (152, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (153, 5, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (153, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (153, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (153, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (154, 5, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (154, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (154, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (154, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (155, 6, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (155, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (155, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (155, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (156, 6, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (156, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (156, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (156, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (157, 6, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (157, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (157, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (157, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (158, 6, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (158, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (158, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (158, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (159, 6, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (159, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (159, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (159, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (160, 7, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (160, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (160, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (160, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (161, 7, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (161, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (161, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (161, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (162, 7, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (162, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (162, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (162, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (163, 7, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (163, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (163, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (163, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (164, 7, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (164, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (164, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (164, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (165, 8, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (165, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (165, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (165, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (166, 8, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (166, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (166, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (166, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (167, 8, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (167, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (167, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (167, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (168, 8, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (168, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (168, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (168, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (169, 8, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (169, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (169, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (169, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (170, 9, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (170, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (170, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (170, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (171, 9, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (171, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (171, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (171, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (172, 9, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (172, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (172, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (172, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (173, 9, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (173, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (173, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (173, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (174, 9, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (174, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (174, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (174, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (175, 10, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (175, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (175, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (175, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (176, 10, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (176, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (176, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (176, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (177, 10, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (177, 34, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (177, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (177, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (178, 10, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (178, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (178, 35, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (178, 36, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (179, 10, '管理员', '2024-07-15 18:45:23');
INSERT INTO `group_member` VALUES (179, 32, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (179, 33, '成员', '2024-07-15 18:55:52');
INSERT INTO `group_member` VALUES (179, 36, '成员', '2024-07-15 18:55:52');

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
INSERT INTO `merchant_category` VALUES (2, '休闲');
INSERT INTO `merchant_category` VALUES (3, '结婚');
INSERT INTO `merchant_category` VALUES (4, '影视');
INSERT INTO `merchant_category` VALUES (5, '丽人');

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
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_comment
-- ----------------------------
INSERT INTO `merchant_comment` VALUES (1, 1, 1, '非常好的商户！', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (2, 1, 2, '服务态度很好', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (3, 2, 1, '食物非常美味', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (4, 2, 2, '环境不错', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (5, 1, 1, '非常好的商户！', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (6, 1, 2, '服务态度很好', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (7, 1, 3, '甜点非常好吃', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (8, 1, 4, '价格有点高', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (9, 2, 1, '食物非常美味', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (10, 2, 2, '环境不错', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (11, 2, 3, '服务态度很好', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (12, 2, 4, '等待时间有点长', 2, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (13, 3, 1, '火锅味道正宗，服务周到', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (14, 3, 2, '环境干净整洁，推荐！', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (15, 3, 3, '菜品新鲜，非常满意', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (16, 3, 4, '价格有点高', 2, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (17, 4, 1, '火锅味道正宗，服务周到', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (18, 4, 2, '环境干净整洁，推荐！', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (19, 4, 3, '菜品新鲜，非常满意', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (20, 4, 4, '等待时间有点长', 2, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (21, 5, 1, '甜点非常好吃，服务态度好', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (22, 5, 2, '环境优雅，适合约会', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (23, 5, 3, '价格合理，性价比高', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (24, 5, 4, '服务有点慢', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (25, 6, 1, '甜点非常好吃，服务态度好', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (26, 6, 2, '环境优雅，适合约会', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (27, 6, 3, '价格合理，性价比高', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (28, 6, 4, '价格有点高', 2, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (29, 7, 1, '小吃种类多，味道不错', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (30, 7, 2, '服务快捷，体验良好', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (31, 7, 3, '环境一般，但味道弥补了', 1, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (32, 7, 4, '服务有点慢', 2, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (33, 8, 1, '小吃种类多，味道不错', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (34, 8, 2, '服务快捷，体验良好', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (35, 8, 3, '环境一般，但味道弥补了', 2, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (36, 8, 4, '价格有点高', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (37, 9, 1, '川菜正宗，辣得过瘾', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (38, 9, 2, '服务热情，上菜快', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (39, 9, 3, '环境有特色，推荐尝试', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (40, 9, 4, '服务有点慢', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (41, 10, 1, '川菜正宗，辣得过瘾', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (42, 10, 2, '服务热情，上菜快', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (43, 10, 3, '环境有特色，推荐尝试', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (44, 10, 4, '价格有点高', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (45, 11, 1, '湘菜味道地道，服务周到', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (46, 11, 2, '环境舒适，适合家庭聚餐', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (47, 11, 3, '价格公道，性价比高', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (48, 11, 4, '服务有点慢', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (49, 12, 1, '湘菜味道地道，服务周到', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (50, 12, 2, '环境舒适，适合家庭聚餐', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (51, 12, 3, '价格公道，性价比高', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (52, 12, 4, '价格有点高', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (53, 13, 1, '足疗技术好，放松效果佳', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (54, 13, 2, '环境安静，服务专业', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (55, 13, 3, '价格合理，体验满意', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (56, 13, 4, '服务有点慢', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (57, 14, 1, '足疗技术好，放松效果佳', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (58, 14, 2, '环境安静，服务专业', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (59, 14, 3, '价格合理，体验满意', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (60, 14, 4, '价格有点高', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (61, 15, 1, 'KTV音响效果好，服务热情', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (62, 15, 2, '环境时尚，适合朋友聚会', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (63, 15, 3, '价格适中，性价比不错', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (64, 15, 4, '服务有点慢', 2, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (65, 16, 1, 'KTV音响效果好，服务热情', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (66, 16, 2, '环境时尚，适合朋友聚会', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (67, 16, 3, '价格适中，性价比不错', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (68, 16, 4, '价格有点高', 2, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (69, 17, 1, '摄影技术专业，服务周到', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (70, 17, 2, '环境优雅，拍摄效果好', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (71, 17, 3, '价格合理，服务满意', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (72, 17, 4, '服务有点慢', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (73, 18, 1, '摄影技术专业，服务周到', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (74, 18, 2, '环境优雅，拍摄效果好', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (75, 18, 3, '价格合理，服务满意', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (76, 18, 4, '价格有点高', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (77, 19, 1, '策划专业，服务细致', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (78, 19, 2, '环境布置精美，体验良好', 4, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (79, 19, 3, '价格透明，性价比高', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (80, 19, 4, '服务有点慢', 3, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (81, 20, 1, '策划专业，服务细致', 5, '2024-07-11 15:08:53');
INSERT INTO `merchant_comment` VALUES (82, 20, 2, '环境布置精美，体验良好', 4, '2024-07-11 15:08:53');

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
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_info
-- ----------------------------
INSERT INTO `merchant_info` VALUES (1, 2, 1, '君诗烘焙', '四川省  成都市  郫都区  红光街道  高店路  41号', '028-87878147', '87878147@example.com', '餐饮', '线下', '中国', '甜点', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/merchant/d930ced2-34c9-4e23-88d9-45545353dc4a.jpg', '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (2, 3, 1, '爱达乐', '四川省 成都市 郫都区 红光街道 高店路 39号', '0987654321', 'merchant2@example.com', '餐饮', '线下', '中国', '甜点', '', '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (3, 4, 1, '老码头火锅', '四川省 成都市 郫都区 红光街道 高店路 43号', '028-87878148', '87878148@example.com', '餐饮', '线下', '中国', '火锅', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (4, 5, 1, '小龙坎老火锅', '四川省 成都市 郫都区 红光街道 高店路 45号', '028-87878149', '87878149@example.com', '餐饮', '线下', '中国', '火锅', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (5, 6, 1, '君诗烘焙', '四川省 成都市 郫都区 红光街道 高店路 47号', '028-87878150', '87878150@example.com', '餐饮', '线下', '中国', '甜点', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (6, 7, 1, '爱达乐', '四川省 成都市 郫都区 红光街道 高店路 49号', '028-87878151', '87878151@example.com', '餐饮', '线下', '中国', '甜点', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (7, 8, 1, '串串香', '四川省 成都市 郫都区 红光街道 高店路 51号', '028-87878152', '87878152@example.com', '餐饮', '线下', '中国', '小吃', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (8, 9, 1, '廖记棒棒鸡', '四川省 成都市 郫都区 红光街道 高店路 53号', '028-87878153', '87878153@example.com', '餐饮', '线下', '中国', '小吃', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (9, 10, 1, '川西坝子', '四川省 成都市 郫都区 红光街道 高店路 55号', '028-87878154', '87878154@example.com', '餐饮', '线下', '中国', '川菜', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (10, 11, 1, '眉州东坡', '四川省 成都市 郫都区 红光街道 高店路 57号', '028-87878155', '87878155@example.com', '餐饮', '线下', '中国', '川菜', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (11, 12, 1, '毛家饭店', '四川省 成都市 郫都区 红光街道 高店路 59号', '028-87878156', '87878156@example.com', '餐饮', '线下', '中国', '湘菜', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (12, 13, 1, '湘西部落', '四川省 成都市 郫都区 红光街道 高店路 61号', '028-87878157', '87878157@example.com', '餐饮', '线下', '中国', '湘菜', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (13, 14, 2, '富侨足浴', '四川省 成都市 郫都区 红光街道 高店路 63号', '028-87878158', '87878158@example.com', '休闲', '线下', '中国', '足疗', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (14, 15, 2, '大桶大足浴', '四川省 成都市 郫都区 红光街道 高店路 65号', '028-87878159', '87878159@example.com', '休闲', '线下', '中国', '足疗', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (15, 16, 2, '好乐迪KTV', '四川省 成都市 郫都区 红光街道 高店路 67号', '028-87878160', '87878160@example.com', '娱乐', '线下', '中国', 'KTV', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (16, 17, 2, '钱柜KTV', '四川省 成都市 郫都区 红光街道 高店路 69号', '028-87878161', '87878161@example.com', '娱乐', '线下', '中国', 'KTV', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (17, 18, 3, '薇拉摄影', '四川省 成都市 郫都区 红光街道 高店路 71号', '028-87878162', '87878162@example.com', '摄影', '线下', '中国', '摄影', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (18, 19, 3, '金夫人婚纱摄影', '四川省 成都市 郫都区 红光街道 高店路 73号', '028-87878163', '87878163@example.com', '摄影', '线下', '中国', '摄影', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (19, 20, 3, '婚礼纪', '四川省 成都市 郫都区 红光街道 高店路 75号', '028-87878164', '87878164@example.com', '婚庆', '线下', '中国', '策划', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (20, 21, 3, '喜铺', '四川省 成都市 郫都区 红光街道 高店路 77号', '028-87878165', '87878165@example.com', '婚庆', '线下', '中国', '策划', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (21, 22, 4, '万达影城', '四川省 成都市 郫都区 红光街道 高店路 79号', '028-87878166', '87878166@example.com', '娱乐', '线下', '中国', '电影院', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (22, 23, 4, 'CGV影城', '四川省 成都市 郫都区 红光街道 高店路 81号', '028-87878167', '87878167@example.com', '娱乐', '线下', '中国', '电影院', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (23, 24, 5, 'Tony美发', '四川省 成都市 郫都区 红光街道 高店路 83号', '028-87878168', '87878168@example.com', '美容', '线下', '中国', '美发', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (24, 25, 5, '阿玛尼美发', '四川省 成都市 郫都区 红光街道 高店路 85号', '028-87878169', '87878169@example.com', '美容', '线下', '中国', '美发', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (25, 26, 5, '美丽田园', '四川省 成都市 郫都区 红光街道 高店路 87号', '028-87878170', '87878170@example.com', '美容', '线下', '中国', '美容', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');
INSERT INTO `merchant_info` VALUES (26, 27, 5, '克丽缇娜', '四川省 成都市 郫都区 红光街道 高店路 89号', '028-87878171', '87878171@example.com', '美容', '线下', '中国', '美容', NULL, '2024-07-11 15:08:53', '103.943060,30.790416');

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
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_product
-- ----------------------------
INSERT INTO `merchant_product` VALUES (1, 1, '榴莲千层', 2, 35.00, '难得的甜点', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/d075c0dc-0b35-4f84-bf6e-15392bf21a3b.jpg', '2024-07-11 15:08:53');
INSERT INTO `merchant_product` VALUES (2, 1, '生日蛋糕', 2, 300.00, '生日必备', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/12ce2022-7465-47dd-8256-42a539ee7ebc.jpg', '2024-07-11 15:08:53');
INSERT INTO `merchant_product` VALUES (5, 1, '豆乳盒子', 2, 25.00, '清香的豆乳', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/0235c128-c4a8-4720-b531-a97768669759.jpg', '2024-07-15 13:55:44');
INSERT INTO `merchant_product` VALUES (6, 1, '奥利奥雪胖子', 2, 10.00, '浓郁的奥利奥味道', 'https://mobile-support-platform.oss-cn-chengdu.aliyuncs.com/product/490ff422-aded-4bb1-b783-c975b314ce43.jpg', '2024-07-15 13:58:33');
INSERT INTO `merchant_product` VALUES (11, 2, '芒果慕斯', 2, 40.00, '新鲜的芒果慕斯', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (12, 2, '草莓蛋糕', 2, 280.00, '草莓季限定蛋糕', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (13, 2, '巧克力布朗尼', 2, 30.00, '浓郁的巧克力味道', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (14, 2, '抹茶蛋糕卷', 2, 15.00, '清新的抹茶口味', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (15, 3, '麻辣火锅', 1, 120.00, '正宗四川麻辣火锅', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (16, 3, '清汤火锅', 1, 100.00, '清淡养生的清汤火锅', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (17, 3, '鸳鸯火锅', 1, 130.00, '一半麻辣一半清汤', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (18, 3, '菌汤火锅', 1, 110.00, '鲜美的菌汤火锅', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (19, 4, '麻辣火锅', 1, 120.00, '正宗四川麻辣火锅', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (20, 4, '清汤火锅', 1, 100.00, '清淡养生的清汤火锅', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (21, 4, '鸳鸯火锅', 1, 130.00, '一半麻辣一半清汤', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (22, 4, '菌汤火锅', 1, 110.00, '鲜美的菌汤火锅', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (23, 5, '榴莲千层', 2, 35.00, '难得的甜点诶~', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (24, 5, '生日蛋糕', 2, 300.00, '生日必备哦~', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (25, 5, '豆乳盒子', 2, 25.00, '又臭又香哦~', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (26, 5, '奥利奥雪胖子', 2, 10.00, '好好吃诶~', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (27, 6, '芒果慕斯', 2, 40.00, '新鲜的芒果慕斯', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (28, 6, '草莓蛋糕', 2, 280.00, '草莓季限定蛋糕', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (29, 6, '巧克力布朗尼', 2, 30.00, '浓郁的巧克力味道', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (30, 6, '抹茶蛋糕卷', 2, 15.00, '清新的抹茶口味', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (31, 7, '麻辣串串', 3, 50.00, '四川特色串串香', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (32, 7, '清汤串串', 3, 40.00, '清淡养生的串串香', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (33, 7, '鸳鸯串串', 3, 60.00, '一半麻辣一半清汤', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (34, 7, '菌汤串串', 3, 50.00, '鲜美的菌汤串串', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (35, 8, '棒棒鸡', 3, 30.00, '四川特色棒棒鸡', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (36, 8, '口水鸡', 3, 35.00, '麻辣鲜香的口水鸡', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (37, 8, '红油抄手', 3, 25.00, '四川特色红油抄手', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (38, 8, '夫妻肺片', 3, 40.00, '经典的夫妻肺片', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (39, 9, '宫保鸡丁', 4, 50.00, '经典的川菜宫保鸡丁', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (40, 9, '麻婆豆腐', 4, 30.00, '麻辣鲜香的麻婆豆腐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (41, 9, '水煮鱼', 4, 80.00, '鲜美的水煮鱼', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (42, 9, '回锅肉', 4, 45.00, '经典的回锅肉', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (43, 10, '东坡肉', 4, 60.00, '肥而不腻的东坡肉', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (44, 10, '鱼香肉丝', 4, 40.00, '酸甜可口的鱼香肉丝', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (45, 10, '干煸四季豆', 4, 35.00, '香辣的干煸四季豆', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (46, 10, '辣子鸡', 4, 55.00, '麻辣的辣子鸡', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (47, 11, '毛氏红烧肉', 5, 60.00, '经典的毛氏红烧肉', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (48, 11, '剁椒鱼头', 5, 70.00, '湘菜代表剁椒鱼头', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (49, 11, '农家小炒肉', 5, 45.00, '家常的农家小炒肉', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (50, 11, '腊味合蒸', 5, 50.00, '湖南特色腊味合蒸', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (51, 12, '湘西外婆菜', 5, 40.00, '湘西特色的外婆菜', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (52, 12, '口味虾', 5, 80.00, '湖南特色口味虾', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (53, 12, '辣椒炒肉', 5, 45.00, '经典的辣椒炒肉', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (54, 12, '酸辣土豆丝', 5, 30.00, '酸辣开胃的土豆丝', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (55, 13, '足浴套餐A', 6, 120.00, '放松身心的足浴套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (56, 13, '足浴套餐B', 6, 150.00, '高级足浴体验', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (57, 13, '足浴套餐C', 6, 180.00, '豪华足浴享受', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (58, 13, '足浴套餐D', 6, 200.00, '至尊足浴服务', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (59, 14, '足浴套餐A', 6, 120.00, '放松身心的足浴套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (60, 14, '足浴套餐B', 6, 150.00, '高级足浴体验', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (61, 14, '足浴套餐C', 6, 180.00, '豪华足浴享受', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (62, 14, '足浴套餐D', 6, 200.00, '至尊足浴服务', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (63, 15, 'KTV包厢A', 7, 300.00, '小型KTV包厢', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (64, 15, 'KTV包厢B', 7, 500.00, '中型KTV包厢', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (65, 15, 'KTV包厢C', 7, 800.00, '大型KTV包厢', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (66, 15, 'KTV包厢D', 7, 1000.00, '豪华KTV包厢', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (67, 16, 'KTV包厢A', 7, 300.00, '小型KTV包厢', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (68, 16, 'KTV包厢B', 7, 500.00, '中型KTV包厢', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (69, 16, 'KTV包厢C', 7, 800.00, '大型KTV包厢', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (70, 16, 'KTV包厢D', 7, 1000.00, '豪华KTV包厢', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (71, 17, '婚纱摄影套餐A', 8, 3000.00, '基础婚纱摄影套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (72, 17, '婚纱摄影套餐B', 8, 5000.00, '高级婚纱摄影套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (73, 17, '婚纱摄影套餐C', 8, 8000.00, '豪华婚纱摄影套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (74, 17, '婚纱摄影套餐D', 8, 10000.00, '至尊婚纱摄影套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (75, 18, '婚纱摄影套餐A', 8, 3000.00, '基础婚纱摄影套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (76, 18, '婚纱摄影套餐B', 8, 5000.00, '高级婚纱摄影套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (77, 18, '婚纱摄影套餐C', 8, 8000.00, '豪华婚纱摄影套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (78, 18, '婚纱摄影套餐D', 8, 10000.00, '至尊婚纱摄影套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (79, 19, '婚礼策划套餐A', 9, 5000.00, '基础婚礼策划套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (80, 19, '婚礼策划套餐B', 9, 8000.00, '高级婚礼策划套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (81, 19, '婚礼策划套餐C', 9, 12000.00, '豪华婚礼策划套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (82, 19, '婚礼策划套餐D', 9, 15000.00, '至尊婚礼策划套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (83, 20, '婚礼策划套餐A', 9, 5000.00, '基础婚礼策划套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (84, 20, '婚礼策划套餐B', 9, 8000.00, '高级婚礼策划套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (85, 20, '婚礼策划套餐C', 9, 12000.00, '豪华婚礼策划套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (86, 20, '婚礼策划套餐D', 9, 15000.00, '至尊婚礼策划套餐', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (87, 21, '电影票A', 10, 50.00, '普通电影票', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (88, 21, '电影票B', 10, 80.00, '3D电影票', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (89, 21, '电影票C', 10, 120.00, 'IMAX电影票', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (90, 21, '电影票D', 10, 150.00, '4D电影票', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (91, 22, '电影票A', 10, 50.00, '普通电影票', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (92, 22, '电影票B', 10, 80.00, '3D电影票', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (93, 22, '电影票C', 10, 120.00, 'IMAX电影票', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (94, 22, '电影票D', 10, 150.00, '4D电影票', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (95, 23, '男士剪发', 11, 50.00, '基础男士剪发', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (96, 23, '男士烫发', 11, 200.00, '男士烫发服务', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (97, 23, '男士染发', 11, 150.00, '男士染发服务', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (98, 23, '男士护理', 11, 100.00, '男士头发护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (99, 24, '女士剪发', 11, 80.00, '基础女士剪发', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (100, 24, '女士烫发', 11, 300.00, '女士烫发服务', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (101, 24, '女士染发', 11, 250.00, '女士染发服务', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (102, 24, '女士护理', 11, 150.00, '女士头发护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (103, 25, '面部护理A', 12, 200.00, '基础面部护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (104, 25, '面部护理B', 12, 300.00, '高级面部护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (105, 25, '身体护理A', 12, 400.00, '基础身体护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (106, 25, '身体护理B', 12, 500.00, '高级身体护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (107, 26, '面部护理A', 12, 200.00, '基础面部护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (108, 26, '面部护理B', 12, 300.00, '高级面部护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (109, 26, '身体护理A', 12, 400.00, '基础身体护理', NULL, '2024-07-15 15:47:42');
INSERT INTO `merchant_product` VALUES (110, 26, '身体护理B', 12, 500.00, '高级身体护理', NULL, '2024-07-15 15:47:42');

-- ----------------------------
-- Table structure for merchant_product_category
-- ----------------------------
DROP TABLE IF EXISTS `merchant_product_category`;
CREATE TABLE `merchant_product_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_product_category
-- ----------------------------
INSERT INTO `merchant_product_category` VALUES (1, '火锅');
INSERT INTO `merchant_product_category` VALUES (2, '甜点');
INSERT INTO `merchant_product_category` VALUES (3, '小吃');
INSERT INTO `merchant_product_category` VALUES (4, '川菜');
INSERT INTO `merchant_product_category` VALUES (5, '湘菜');
INSERT INTO `merchant_product_category` VALUES (6, '足疗');
INSERT INTO `merchant_product_category` VALUES (7, 'KTV');
INSERT INTO `merchant_product_category` VALUES (8, '摄影');
INSERT INTO `merchant_product_category` VALUES (9, '策划');
INSERT INTO `merchant_product_category` VALUES (10, '电影院');
INSERT INTO `merchant_product_category` VALUES (11, '美发');
INSERT INTO `merchant_product_category` VALUES (12, '美容');
INSERT INTO `merchant_product_category` VALUES (13, '粤菜');
INSERT INTO `merchant_product_category` VALUES (14, '台湾菜');
INSERT INTO `merchant_product_category` VALUES (15, '海鲜');
INSERT INTO `merchant_product_category` VALUES (16, '洗浴');
INSERT INTO `merchant_product_category` VALUES (17, '酒吧');
INSERT INTO `merchant_product_category` VALUES (18, '轰趴');
INSERT INTO `merchant_product_category` VALUES (19, '首饰');
INSERT INTO `merchant_product_category` VALUES (20, '跟拍');
INSERT INTO `merchant_product_category` VALUES (21, '舞蹈');
INSERT INTO `merchant_product_category` VALUES (22, '美甲');

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
) ENGINE = InnoDB AUTO_INCREMENT = 455 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_product_comment
-- ----------------------------
INSERT INTO `merchant_product_comment` VALUES (155, 1, 1, '非常美味的榴莲千层，强烈推荐！', 5, '2024-07-15 16:00:00');
INSERT INTO `merchant_product_comment` VALUES (156, 1, 2, '口感很好，榴莲味道浓郁。', 4, '2024-07-15 16:01:00');
INSERT INTO `merchant_product_comment` VALUES (157, 1, 3, '有点太甜了，不太适合我。', 2, '2024-07-15 16:02:00');
INSERT INTO `merchant_product_comment` VALUES (158, 2, 1, '生日蛋糕非常漂亮，味道也很好。', 5, '2024-07-15 16:05:00');
INSERT INTO `merchant_product_comment` VALUES (159, 2, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:06:00');
INSERT INTO `merchant_product_comment` VALUES (160, 2, 3, '蛋糕有点干，不太喜欢。', 2, '2024-07-15 16:07:00');
INSERT INTO `merchant_product_comment` VALUES (161, 5, 1, '豆乳盒子味道独特，很喜欢。', 5, '2024-07-15 16:10:00');
INSERT INTO `merchant_product_comment` VALUES (162, 5, 2, '豆乳味道很浓，但有点腻。', 3, '2024-07-15 16:11:00');
INSERT INTO `merchant_product_comment` VALUES (163, 5, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:12:00');
INSERT INTO `merchant_product_comment` VALUES (164, 6, 1, '奥利奥雪胖子非常好吃，甜而不腻。', 5, '2024-07-15 16:15:00');
INSERT INTO `merchant_product_comment` VALUES (165, 6, 2, '口感很好，奥利奥味道很浓。', 4, '2024-07-15 16:16:00');
INSERT INTO `merchant_product_comment` VALUES (166, 6, 3, '有点太甜了，不太适合我。', 2, '2024-07-15 16:17:00');
INSERT INTO `merchant_product_comment` VALUES (179, 11, 1, '芒果慕斯非常新鲜，口感很好。', 5, '2024-07-15 16:20:00');
INSERT INTO `merchant_product_comment` VALUES (180, 11, 2, '芒果味道很浓，但有点腻。', 3, '2024-07-15 16:21:00');
INSERT INTO `merchant_product_comment` VALUES (181, 11, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:22:00');
INSERT INTO `merchant_product_comment` VALUES (182, 12, 1, '草莓蛋糕非常漂亮，味道也很好。', 5, '2024-07-15 16:25:00');
INSERT INTO `merchant_product_comment` VALUES (183, 12, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:26:00');
INSERT INTO `merchant_product_comment` VALUES (184, 12, 3, '蛋糕有点干，不太喜欢。', 2, '2024-07-15 16:27:00');
INSERT INTO `merchant_product_comment` VALUES (185, 13, 1, '巧克力布朗尼非常好吃，甜而不腻。', 5, '2024-07-15 16:30:00');
INSERT INTO `merchant_product_comment` VALUES (186, 13, 2, '口感很好，巧克力味道很浓。', 4, '2024-07-15 16:31:00');
INSERT INTO `merchant_product_comment` VALUES (187, 13, 3, '有点太甜了，不太适合我。', 2, '2024-07-15 16:32:00');
INSERT INTO `merchant_product_comment` VALUES (188, 14, 1, '抹茶蛋糕卷非常新鲜，口感很好。', 5, '2024-07-15 16:35:00');
INSERT INTO `merchant_product_comment` VALUES (189, 14, 2, '抹茶味道很浓，但有点腻。', 3, '2024-07-15 16:36:00');
INSERT INTO `merchant_product_comment` VALUES (190, 14, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:37:00');
INSERT INTO `merchant_product_comment` VALUES (191, 15, 1, '麻辣火锅非常正宗，味道很好。', 5, '2024-07-15 16:40:00');
INSERT INTO `merchant_product_comment` VALUES (192, 15, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:41:00');
INSERT INTO `merchant_product_comment` VALUES (193, 15, 3, '火锅有点辣，不太能吃辣的不推荐。', 2, '2024-07-15 16:42:00');
INSERT INTO `merchant_product_comment` VALUES (194, 16, 1, '清汤火锅非常清淡，适合养生。', 5, '2024-07-15 16:45:00');
INSERT INTO `merchant_product_comment` VALUES (195, 16, 2, '清汤味道很淡，但很健康。', 4, '2024-07-15 16:46:00');
INSERT INTO `merchant_product_comment` VALUES (196, 16, 3, '不太喜欢这种清淡口味，感觉一般。', 2, '2024-07-15 16:47:00');
INSERT INTO `merchant_product_comment` VALUES (197, 17, 1, '鸳鸯火锅非常特别，一半麻辣一半清汤。', 5, '2024-07-15 16:50:00');
INSERT INTO `merchant_product_comment` VALUES (198, 17, 2, '两种口味都很不错，推荐尝试。', 4, '2024-07-15 16:51:00');
INSERT INTO `merchant_product_comment` VALUES (199, 17, 3, '不太能接受这种混合口味，感觉一般。', 2, '2024-07-15 16:52:00');
INSERT INTO `merchant_product_comment` VALUES (200, 18, 1, '菌汤火锅非常鲜美，味道很好。', 5, '2024-07-15 16:55:00');
INSERT INTO `merchant_product_comment` VALUES (201, 18, 2, '菌汤味道很浓，但有点腻。', 3, '2024-07-15 16:56:00');
INSERT INTO `merchant_product_comment` VALUES (202, 18, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:57:00');
INSERT INTO `merchant_product_comment` VALUES (203, 19, 1, '麻辣火锅非常正宗，味道很好。', 5, '2024-07-15 16:40:00');
INSERT INTO `merchant_product_comment` VALUES (204, 19, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:41:00');
INSERT INTO `merchant_product_comment` VALUES (205, 19, 3, '火锅有点辣，不太能吃辣的不推荐。', 2, '2024-07-15 16:42:00');
INSERT INTO `merchant_product_comment` VALUES (206, 20, 1, '清汤火锅非常清淡，适合养生。', 5, '2024-07-15 16:45:00');
INSERT INTO `merchant_product_comment` VALUES (207, 20, 2, '清汤味道很淡，但很健康。', 4, '2024-07-15 16:46:00');
INSERT INTO `merchant_product_comment` VALUES (208, 20, 3, '不太喜欢这种清淡口味，感觉一般。', 2, '2024-07-15 16:47:00');
INSERT INTO `merchant_product_comment` VALUES (209, 21, 1, '鸳鸯火锅非常特别，一半麻辣一半清汤。', 5, '2024-07-15 16:50:00');
INSERT INTO `merchant_product_comment` VALUES (210, 21, 2, '两种口味都很不错，推荐尝试。', 4, '2024-07-15 16:51:00');
INSERT INTO `merchant_product_comment` VALUES (211, 21, 3, '不太能接受这种混合口味，感觉一般。', 2, '2024-07-15 16:52:00');
INSERT INTO `merchant_product_comment` VALUES (212, 22, 1, '菌汤火锅非常鲜美，味道很好。', 5, '2024-07-15 16:55:00');
INSERT INTO `merchant_product_comment` VALUES (213, 22, 2, '菌汤味道很浓，但有点腻。', 3, '2024-07-15 16:56:00');
INSERT INTO `merchant_product_comment` VALUES (214, 22, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:57:00');
INSERT INTO `merchant_product_comment` VALUES (215, 23, 1, '榴莲千层非常新鲜，口感很好。', 5, '2024-07-15 16:35:00');
INSERT INTO `merchant_product_comment` VALUES (216, 23, 2, '榴莲味道很浓，但有点腻。', 3, '2024-07-15 16:36:00');
INSERT INTO `merchant_product_comment` VALUES (217, 23, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:37:00');
INSERT INTO `merchant_product_comment` VALUES (218, 24, 1, '生日蛋糕非常漂亮，味道也很好。', 5, '2024-07-15 16:25:00');
INSERT INTO `merchant_product_comment` VALUES (219, 24, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:26:00');
INSERT INTO `merchant_product_comment` VALUES (220, 24, 3, '蛋糕有点干，不太喜欢。', 2, '2024-07-15 16:27:00');
INSERT INTO `merchant_product_comment` VALUES (221, 25, 1, '豆乳盒子味道独特，很喜欢。', 5, '2024-07-15 16:10:00');
INSERT INTO `merchant_product_comment` VALUES (222, 25, 2, '豆乳味道很浓，但有点腻。', 3, '2024-07-15 16:11:00');
INSERT INTO `merchant_product_comment` VALUES (223, 25, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:12:00');
INSERT INTO `merchant_product_comment` VALUES (224, 26, 1, '奥利奥雪胖子非常好吃，甜而不腻。', 5, '2024-07-15 16:15:00');
INSERT INTO `merchant_product_comment` VALUES (225, 26, 2, '口感很好，奥利奥味道很浓。', 4, '2024-07-15 16:16:00');
INSERT INTO `merchant_product_comment` VALUES (226, 26, 3, '有点太甜了，不太适合我。', 2, '2024-07-15 16:17:00');
INSERT INTO `merchant_product_comment` VALUES (227, 27, 1, '芒果慕斯非常新鲜，口感很好。', 5, '2024-07-15 16:20:00');
INSERT INTO `merchant_product_comment` VALUES (228, 27, 2, '芒果味道很浓，但有点腻。', 3, '2024-07-15 16:21:00');
INSERT INTO `merchant_product_comment` VALUES (229, 27, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:22:00');
INSERT INTO `merchant_product_comment` VALUES (230, 28, 1, '草莓蛋糕非常漂亮，味道也很好。', 5, '2024-07-15 16:25:00');
INSERT INTO `merchant_product_comment` VALUES (231, 28, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:26:00');
INSERT INTO `merchant_product_comment` VALUES (232, 28, 3, '蛋糕有点干，不太喜欢。', 2, '2024-07-15 16:27:00');
INSERT INTO `merchant_product_comment` VALUES (233, 29, 1, '巧克力布朗尼非常好吃，甜而不腻。', 5, '2024-07-15 16:30:00');
INSERT INTO `merchant_product_comment` VALUES (234, 29, 2, '口感很好，巧克力味道很浓。', 4, '2024-07-15 16:31:00');
INSERT INTO `merchant_product_comment` VALUES (235, 29, 3, '有点太甜了，不太适合我。', 2, '2024-07-15 16:32:00');
INSERT INTO `merchant_product_comment` VALUES (236, 30, 1, '抹茶蛋糕卷非常新鲜，口感很好。', 5, '2024-07-15 16:35:00');
INSERT INTO `merchant_product_comment` VALUES (237, 30, 2, '抹茶味道很浓，但有点腻。', 3, '2024-07-15 16:36:00');
INSERT INTO `merchant_product_comment` VALUES (238, 30, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:37:00');
INSERT INTO `merchant_product_comment` VALUES (239, 31, 1, '麻辣串串非常正宗，味道很好。', 5, '2024-07-15 16:40:00');
INSERT INTO `merchant_product_comment` VALUES (240, 31, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:41:00');
INSERT INTO `merchant_product_comment` VALUES (241, 31, 3, '串串有点辣，不太能吃辣的不推荐。', 2, '2024-07-15 16:42:00');
INSERT INTO `merchant_product_comment` VALUES (242, 32, 1, '清汤串串非常清淡，适合养生。', 5, '2024-07-15 16:45:00');
INSERT INTO `merchant_product_comment` VALUES (243, 32, 2, '清汤味道很淡，但很健康。', 4, '2024-07-15 16:46:00');
INSERT INTO `merchant_product_comment` VALUES (244, 32, 3, '不太喜欢这种清淡口味，感觉一般。', 2, '2024-07-15 16:47:00');
INSERT INTO `merchant_product_comment` VALUES (245, 33, 1, '鸳鸯串串非常特别，一半麻辣一半清汤。', 5, '2024-07-15 16:50:00');
INSERT INTO `merchant_product_comment` VALUES (246, 33, 2, '两种口味都很不错，推荐尝试。', 4, '2024-07-15 16:51:00');
INSERT INTO `merchant_product_comment` VALUES (247, 33, 3, '不太能接受这种混合口味，感觉一般。', 2, '2024-07-15 16:52:00');
INSERT INTO `merchant_product_comment` VALUES (248, 34, 1, '菌汤串串非常鲜美，味道很好。', 5, '2024-07-15 16:55:00');
INSERT INTO `merchant_product_comment` VALUES (249, 34, 2, '菌汤味道很浓，但有点腻。', 3, '2024-07-15 16:56:00');
INSERT INTO `merchant_product_comment` VALUES (250, 34, 3, '不太喜欢这种口味，感觉一般。', 2, '2024-07-15 16:57:00');
INSERT INTO `merchant_product_comment` VALUES (251, 35, 1, '棒棒鸡非常好吃，甜而不腻。', 5, '2024-07-15 16:30:00');
INSERT INTO `merchant_product_comment` VALUES (252, 35, 2, '口感很好，鸡肉很嫩。', 4, '2024-07-15 16:31:00');
INSERT INTO `merchant_product_comment` VALUES (253, 35, 3, '有点太甜了，不太适合我。', 2, '2024-07-15 16:32:00');
INSERT INTO `merchant_product_comment` VALUES (254, 36, 1, '口水鸡非常正宗，味道很好。', 5, '2024-07-15 16:40:00');
INSERT INTO `merchant_product_comment` VALUES (255, 36, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:41:00');
INSERT INTO `merchant_product_comment` VALUES (256, 36, 3, '鸡肉有点辣，不太能吃辣的不推荐。', 2, '2024-07-15 16:42:00');
INSERT INTO `merchant_product_comment` VALUES (257, 37, 1, '红油抄手非常好吃，甜而不腻。', 5, '2024-07-15 16:30:00');
INSERT INTO `merchant_product_comment` VALUES (258, 37, 2, '口感很好，抄手很嫩。', 4, '2024-07-15 16:31:00');
INSERT INTO `merchant_product_comment` VALUES (259, 37, 3, '有点太甜了，不太适合我。', 2, '2024-07-15 16:32:00');
INSERT INTO `merchant_product_comment` VALUES (260, 38, 1, '夫妻肺片非常正宗，味道很好。', 5, '2024-07-15 16:40:00');
INSERT INTO `merchant_product_comment` VALUES (261, 38, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:41:00');
INSERT INTO `merchant_product_comment` VALUES (262, 38, 3, '肺片有点辣，不太能吃辣的不推荐。', 2, '2024-07-15 16:42:00');
INSERT INTO `merchant_product_comment` VALUES (263, 39, 1, '宫保鸡丁非常好吃，甜而不腻。', 5, '2024-07-15 16:30:00');
INSERT INTO `merchant_product_comment` VALUES (264, 39, 2, '口感很好，鸡肉很嫩。', 4, '2024-07-15 16:31:00');
INSERT INTO `merchant_product_comment` VALUES (265, 39, 3, '有点太甜了，不太适合我。', 2, '2024-07-15 16:32:00');
INSERT INTO `merchant_product_comment` VALUES (266, 40, 1, '麻婆豆腐非常正宗，味道很好。', 5, '2024-07-15 16:40:00');
INSERT INTO `merchant_product_comment` VALUES (267, 40, 2, '价格有点贵，但物有所值。', 4, '2024-07-15 16:41:00');
INSERT INTO `merchant_product_comment` VALUES (268, 40, 3, '豆腐有点辣，不太能吃辣的不推荐。', 2, '2024-07-15 16:42:00');
INSERT INTO `merchant_product_comment` VALUES (269, 41, 1, '水煮鱼非常鲜美，辣度适中。', 5, '2024-07-15 17:00:00');
INSERT INTO `merchant_product_comment` VALUES (270, 41, 2, '鱼肉很嫩，味道很好。', 4, '2024-07-15 17:01:00');
INSERT INTO `merchant_product_comment` VALUES (271, 41, 3, '有点太辣了，不太适合我。', 2, '2024-07-15 17:02:00');
INSERT INTO `merchant_product_comment` VALUES (272, 42, 4, '回锅肉非常经典，味道很好。', 5, '2024-07-15 17:03:00');
INSERT INTO `merchant_product_comment` VALUES (273, 42, 5, '肉片很薄，口感很好。', 4, '2024-07-15 17:04:00');
INSERT INTO `merchant_product_comment` VALUES (274, 42, 1, '有点太油腻了，不太适合我。', 2, '2024-07-15 17:05:00');
INSERT INTO `merchant_product_comment` VALUES (275, 43, 2, '东坡肉肥而不腻，非常好吃。', 5, '2024-07-15 17:06:00');
INSERT INTO `merchant_product_comment` VALUES (276, 43, 3, '肉炖得很烂，味道很好。', 4, '2024-07-15 17:07:00');
INSERT INTO `merchant_product_comment` VALUES (277, 43, 4, '有点太甜了，不太适合我。', 2, '2024-07-15 17:08:00');
INSERT INTO `merchant_product_comment` VALUES (278, 44, 5, '鱼香肉丝酸甜可口，非常下饭。', 5, '2024-07-15 17:09:00');
INSERT INTO `merchant_product_comment` VALUES (279, 44, 1, '肉丝很嫩，味道很好。', 4, '2024-07-15 17:10:00');
INSERT INTO `merchant_product_comment` VALUES (280, 44, 2, '有点太酸了，不太适合我。', 2, '2024-07-15 17:11:00');
INSERT INTO `merchant_product_comment` VALUES (281, 45, 3, '干煸四季豆香辣可口，非常好吃。', 5, '2024-07-15 17:12:00');
INSERT INTO `merchant_product_comment` VALUES (282, 45, 4, '四季豆很脆，味道很好。', 4, '2024-07-15 17:13:00');
INSERT INTO `merchant_product_comment` VALUES (283, 45, 5, '有点太辣了，不太适合我。', 2, '2024-07-15 17:14:00');
INSERT INTO `merchant_product_comment` VALUES (284, 46, 1, '辣子鸡麻辣可口，非常下饭。', 5, '2024-07-15 17:15:00');
INSERT INTO `merchant_product_comment` VALUES (285, 46, 2, '鸡肉很嫩，味道很好。', 4, '2024-07-15 17:16:00');
INSERT INTO `merchant_product_comment` VALUES (286, 46, 3, '有点太麻了，不太适合我。', 2, '2024-07-15 17:17:00');
INSERT INTO `merchant_product_comment` VALUES (287, 47, 4, '毛氏红烧肉非常经典，味道很好。', 5, '2024-07-15 17:18:00');
INSERT INTO `merchant_product_comment` VALUES (288, 47, 5, '肉炖得很烂，口感很好。', 4, '2024-07-15 17:19:00');
INSERT INTO `merchant_product_comment` VALUES (289, 47, 1, '有点太甜了，不太适合我。', 2, '2024-07-15 17:20:00');
INSERT INTO `merchant_product_comment` VALUES (290, 48, 2, '剁椒鱼头非常鲜美，辣度适中。', 5, '2024-07-15 17:21:00');
INSERT INTO `merchant_product_comment` VALUES (291, 48, 3, '鱼头很嫩，味道很好。', 4, '2024-07-15 17:22:00');
INSERT INTO `merchant_product_comment` VALUES (292, 48, 4, '有点太辣了，不太适合我。', 2, '2024-07-15 17:23:00');
INSERT INTO `merchant_product_comment` VALUES (293, 49, 5, '农家小炒肉非常下饭，味道很好。', 5, '2024-07-15 17:24:00');
INSERT INTO `merchant_product_comment` VALUES (294, 49, 1, '肉片很薄，口感很好。', 4, '2024-07-15 17:25:00');
INSERT INTO `merchant_product_comment` VALUES (295, 49, 2, '有点太油腻了，不太适合我。', 2, '2024-07-15 17:26:00');
INSERT INTO `merchant_product_comment` VALUES (296, 50, 3, '腊味合蒸非常经典，味道很好。', 5, '2024-07-15 17:27:00');
INSERT INTO `merchant_product_comment` VALUES (297, 50, 4, '腊味很香，口感很好。', 4, '2024-07-15 17:28:00');
INSERT INTO `merchant_product_comment` VALUES (298, 50, 5, '有点太咸了，不太适合我。', 2, '2024-07-15 17:29:00');
INSERT INTO `merchant_product_comment` VALUES (299, 51, 1, '湘西外婆菜非常地道，味道很好。', 5, '2024-07-15 17:30:00');
INSERT INTO `merchant_product_comment` VALUES (300, 51, 2, '菜很入味，口感很好。', 4, '2024-07-15 17:31:00');
INSERT INTO `merchant_product_comment` VALUES (301, 51, 3, '有点太辣了，不太适合我。', 2, '2024-07-15 17:32:00');
INSERT INTO `merchant_product_comment` VALUES (302, 52, 4, '口味虾非常鲜美，辣度适中。', 5, '2024-07-15 17:33:00');
INSERT INTO `merchant_product_comment` VALUES (303, 52, 5, '虾很新鲜，味道很好。', 4, '2024-07-15 17:34:00');
INSERT INTO `merchant_product_comment` VALUES (304, 52, 1, '有点太辣了，不太适合我。', 2, '2024-07-15 17:35:00');
INSERT INTO `merchant_product_comment` VALUES (305, 53, 2, '辣椒炒肉非常下饭，味道很好。', 5, '2024-07-15 17:36:00');
INSERT INTO `merchant_product_comment` VALUES (306, 53, 3, '肉片很薄，口感很好。', 4, '2024-07-15 17:37:00');
INSERT INTO `merchant_product_comment` VALUES (307, 53, 4, '有点太油腻了，不太适合我。', 2, '2024-07-15 17:38:00');
INSERT INTO `merchant_product_comment` VALUES (308, 54, 5, '酸辣土豆丝非常开胃，味道很好。', 5, '2024-07-15 17:39:00');
INSERT INTO `merchant_product_comment` VALUES (309, 54, 1, '土豆丝很脆，口感很好。', 4, '2024-07-15 17:40:00');
INSERT INTO `merchant_product_comment` VALUES (310, 54, 2, '有点太酸了，不太适合我。', 2, '2024-07-15 17:41:00');
INSERT INTO `merchant_product_comment` VALUES (311, 55, 3, '足浴套餐A非常放松，服务很好。', 5, '2024-07-15 17:42:00');
INSERT INTO `merchant_product_comment` VALUES (312, 55, 4, '环境很好，体验很棒。', 4, '2024-07-15 17:43:00');
INSERT INTO `merchant_product_comment` VALUES (313, 55, 5, '价格有点贵，性价比一般。', 2, '2024-07-15 17:44:00');
INSERT INTO `merchant_product_comment` VALUES (314, 56, 1, '足浴套餐B非常高级，服务很好。', 5, '2024-07-15 17:45:00');
INSERT INTO `merchant_product_comment` VALUES (315, 56, 2, '环境很好，体验很棒。', 4, '2024-07-15 17:46:00');
INSERT INTO `merchant_product_comment` VALUES (316, 56, 3, '价格有点贵，性价比一般。', 2, '2024-07-15 17:47:00');
INSERT INTO `merchant_product_comment` VALUES (317, 57, 4, '足浴套餐C非常豪华，服务很好。', 5, '2024-07-15 17:48:00');
INSERT INTO `merchant_product_comment` VALUES (318, 57, 5, '环境很好，体验很棒。', 4, '2024-07-15 17:49:00');
INSERT INTO `merchant_product_comment` VALUES (319, 57, 1, '价格有点贵，性价比一般。', 2, '2024-07-15 17:50:00');
INSERT INTO `merchant_product_comment` VALUES (320, 58, 2, '足浴套餐D非常至尊，服务很好。', 5, '2024-07-15 17:51:00');
INSERT INTO `merchant_product_comment` VALUES (321, 58, 3, '环境很好，体验很棒。', 4, '2024-07-15 17:52:00');
INSERT INTO `merchant_product_comment` VALUES (322, 58, 4, '价格有点贵，性价比一般。', 2, '2024-07-15 17:53:00');
INSERT INTO `merchant_product_comment` VALUES (323, 59, 5, '足浴套餐A非常放松，服务很好。', 5, '2024-07-15 17:54:00');
INSERT INTO `merchant_product_comment` VALUES (324, 59, 1, '环境很好，体验很棒。', 4, '2024-07-15 17:55:00');
INSERT INTO `merchant_product_comment` VALUES (325, 59, 2, '价格有点贵，性价比一般。', 2, '2024-07-15 17:56:00');
INSERT INTO `merchant_product_comment` VALUES (326, 60, 3, '足浴套餐B非常高级，服务很好。', 5, '2024-07-15 17:57:00');
INSERT INTO `merchant_product_comment` VALUES (327, 60, 4, '环境很好，体验很棒。', 4, '2024-07-15 17:58:00');
INSERT INTO `merchant_product_comment` VALUES (328, 60, 5, '价格有点贵，性价比一般。', 2, '2024-07-15 17:59:00');
INSERT INTO `merchant_product_comment` VALUES (329, 61, 1, '足浴套餐C非常豪华，服务很好。', 5, '2024-07-15 18:00:00');
INSERT INTO `merchant_product_comment` VALUES (330, 61, 2, '环境很好，体验很棒。', 4, '2024-07-15 18:01:00');
INSERT INTO `merchant_product_comment` VALUES (331, 61, 3, '价格有点贵，性价比一般。', 2, '2024-07-15 18:02:00');
INSERT INTO `merchant_product_comment` VALUES (332, 62, 4, '足浴套餐D非常至尊，服务很好。', 5, '2024-07-15 18:03:00');
INSERT INTO `merchant_product_comment` VALUES (333, 62, 5, '环境很好，体验很棒。', 4, '2024-07-15 18:04:00');
INSERT INTO `merchant_product_comment` VALUES (334, 62, 1, '价格有点贵，性价比一般。', 2, '2024-07-15 18:05:00');
INSERT INTO `merchant_product_comment` VALUES (335, 63, 2, 'KTV包厢A非常舒适，音响效果很好。', 5, '2024-07-15 18:06:00');
INSERT INTO `merchant_product_comment` VALUES (336, 63, 3, '环境很好，服务很周到。', 4, '2024-07-15 18:07:00');
INSERT INTO `merchant_product_comment` VALUES (337, 63, 4, '价格有点贵，性价比一般。', 2, '2024-07-15 18:08:00');
INSERT INTO `merchant_product_comment` VALUES (338, 64, 5, 'KTV包厢B非常宽敞，音响效果很好。', 5, '2024-07-15 18:09:00');
INSERT INTO `merchant_product_comment` VALUES (339, 64, 1, '环境很好，服务很周到。', 4, '2024-07-15 18:10:00');
INSERT INTO `merchant_product_comment` VALUES (340, 64, 2, '价格有点贵，性价比一般。', 2, '2024-07-15 18:11:00');
INSERT INTO `merchant_product_comment` VALUES (341, 65, 3, 'KTV包厢C非常豪华，音响效果很好。', 5, '2024-07-15 18:12:00');
INSERT INTO `merchant_product_comment` VALUES (342, 65, 4, '环境很好，服务很周到。', 4, '2024-07-15 18:13:00');
INSERT INTO `merchant_product_comment` VALUES (343, 65, 5, '价格有点贵，性价比一般。', 2, '2024-07-15 18:14:00');
INSERT INTO `merchant_product_comment` VALUES (344, 66, 1, 'KTV包厢D非常至尊，音响效果很好。', 5, '2024-07-15 18:15:00');
INSERT INTO `merchant_product_comment` VALUES (345, 66, 2, '环境很好，服务很周到。', 4, '2024-07-15 18:16:00');
INSERT INTO `merchant_product_comment` VALUES (346, 66, 3, '价格有点贵，性价比一般。', 2, '2024-07-15 18:17:00');
INSERT INTO `merchant_product_comment` VALUES (347, 67, 4, 'KTV包厢A非常舒适，音响效果很好。', 5, '2024-07-15 18:18:00');
INSERT INTO `merchant_product_comment` VALUES (348, 67, 5, '环境很好，服务很周到。', 4, '2024-07-15 18:19:00');
INSERT INTO `merchant_product_comment` VALUES (349, 67, 1, '价格有点贵，性价比一般。', 2, '2024-07-15 18:20:00');
INSERT INTO `merchant_product_comment` VALUES (350, 68, 2, 'KTV包厢B非常宽敞，音响效果很好。', 5, '2024-07-15 18:21:00');
INSERT INTO `merchant_product_comment` VALUES (351, 68, 3, '环境很好，服务很周到。', 4, '2024-07-15 18:22:00');
INSERT INTO `merchant_product_comment` VALUES (352, 68, 4, '价格有点贵，性价比一般。', 2, '2024-07-15 18:23:00');
INSERT INTO `merchant_product_comment` VALUES (353, 69, 5, 'KTV包厢C非常豪华，音响效果很好。', 5, '2024-07-15 18:24:00');
INSERT INTO `merchant_product_comment` VALUES (354, 69, 1, '环境很好，服务很周到。', 4, '2024-07-15 18:25:00');
INSERT INTO `merchant_product_comment` VALUES (355, 69, 2, '价格有点贵，性价比一般。', 2, '2024-07-15 18:26:00');
INSERT INTO `merchant_product_comment` VALUES (356, 70, 3, 'KTV包厢D非常至尊，音响效果很好。', 5, '2024-07-15 18:27:00');
INSERT INTO `merchant_product_comment` VALUES (357, 70, 4, '环境很好，服务很周到。', 4, '2024-07-15 18:28:00');
INSERT INTO `merchant_product_comment` VALUES (358, 70, 5, '价格有点贵，性价比一般。', 2, '2024-07-15 18:29:00');
INSERT INTO `merchant_product_comment` VALUES (359, 71, 1, '婚纱摄影套餐A非常基础，服务很好。', 5, '2024-07-15 18:30:00');
INSERT INTO `merchant_product_comment` VALUES (360, 71, 2, '摄影师很专业，体验很棒。', 4, '2024-07-15 18:31:00');
INSERT INTO `merchant_product_comment` VALUES (361, 71, 3, '价格有点贵，性价比一般。', 2, '2024-07-15 18:32:00');
INSERT INTO `merchant_product_comment` VALUES (362, 72, 4, '婚纱摄影套餐B非常高级，服务很好。', 5, '2024-07-15 18:33:00');
INSERT INTO `merchant_product_comment` VALUES (363, 72, 5, '摄影师很专业，体验很棒。', 4, '2024-07-15 18:34:00');
INSERT INTO `merchant_product_comment` VALUES (364, 72, 1, '价格有点贵，性价比一般。', 2, '2024-07-15 18:35:00');
INSERT INTO `merchant_product_comment` VALUES (365, 73, 2, '婚纱摄影套餐C非常豪华，服务很好。', 5, '2024-07-15 18:36:00');
INSERT INTO `merchant_product_comment` VALUES (366, 73, 3, '摄影师很专业，体验很棒。', 4, '2024-07-15 18:37:00');
INSERT INTO `merchant_product_comment` VALUES (367, 73, 4, '价格有点贵，性价比一般。', 2, '2024-07-15 18:38:00');
INSERT INTO `merchant_product_comment` VALUES (368, 74, 5, '婚纱摄影套餐D非常至尊，服务很好。', 5, '2024-07-15 18:39:00');
INSERT INTO `merchant_product_comment` VALUES (369, 74, 1, '摄影师很专业，体验很棒。', 4, '2024-07-15 18:40:00');
INSERT INTO `merchant_product_comment` VALUES (370, 74, 2, '价格有点贵，性价比一般。', 2, '2024-07-15 18:41:00');
INSERT INTO `merchant_product_comment` VALUES (371, 75, 3, '婚纱摄影套餐A非常基础，服务很好。', 5, '2024-07-15 18:42:00');
INSERT INTO `merchant_product_comment` VALUES (372, 75, 4, '摄影师很专业，体验很棒。', 4, '2024-07-15 18:43:00');
INSERT INTO `merchant_product_comment` VALUES (373, 75, 5, '价格有点贵，性价比一般。', 2, '2024-07-15 18:44:00');
INSERT INTO `merchant_product_comment` VALUES (374, 76, 1, '婚纱摄影套餐B非常高级，服务很好。', 5, '2024-07-15 18:45:00');
INSERT INTO `merchant_product_comment` VALUES (375, 76, 2, '摄影师很专业，体验很棒。', 4, '2024-07-15 18:46:00');
INSERT INTO `merchant_product_comment` VALUES (376, 76, 3, '价格有点贵，性价比一般。', 2, '2024-07-15 18:47:00');
INSERT INTO `merchant_product_comment` VALUES (377, 77, 4, '婚纱摄影套餐C非常豪华，服务很好。', 5, '2024-07-15 18:48:00');
INSERT INTO `merchant_product_comment` VALUES (378, 77, 5, '摄影师很专业，体验很棒。', 4, '2024-07-15 18:49:00');
INSERT INTO `merchant_product_comment` VALUES (379, 77, 1, '价格有点贵，性价比一般。', 2, '2024-07-15 18:50:00');
INSERT INTO `merchant_product_comment` VALUES (380, 78, 2, '婚纱摄影套餐D非常至尊，服务很好。', 5, '2024-07-15 18:51:00');
INSERT INTO `merchant_product_comment` VALUES (381, 78, 3, '摄影师很专业，体验很棒。', 4, '2024-07-15 18:52:00');
INSERT INTO `merchant_product_comment` VALUES (382, 78, 4, '价格有点贵，性价比一般。', 2, '2024-07-15 18:53:00');
INSERT INTO `merchant_product_comment` VALUES (383, 79, 5, '婚礼策划套餐A非常基础，服务很好。', 5, '2024-07-15 18:54:00');
INSERT INTO `merchant_product_comment` VALUES (384, 79, 1, '策划师很专业，体验很棒。', 4, '2024-07-15 18:55:00');
INSERT INTO `merchant_product_comment` VALUES (385, 79, 2, '价格有点贵，性价比一般。', 2, '2024-07-15 18:56:00');
INSERT INTO `merchant_product_comment` VALUES (386, 80, 3, '婚礼策划套餐B非常高级，服务很好。', 5, '2024-07-15 18:57:00');
INSERT INTO `merchant_product_comment` VALUES (387, 80, 4, '策划师很专业，体验很棒。', 4, '2024-07-15 18:58:00');
INSERT INTO `merchant_product_comment` VALUES (388, 80, 5, '价格有点贵，性价比一般。', 2, '2024-07-15 18:59:00');
INSERT INTO `merchant_product_comment` VALUES (389, 81, 1, '婚礼策划套餐C非常豪华，服务很好。', 5, '2024-07-15 19:00:00');
INSERT INTO `merchant_product_comment` VALUES (390, 81, 2, '策划师很专业，体验很棒。', 4, '2024-07-15 19:01:00');
INSERT INTO `merchant_product_comment` VALUES (391, 81, 3, '价格有点贵，性价比一般。', 2, '2024-07-15 19:02:00');
INSERT INTO `merchant_product_comment` VALUES (392, 82, 4, '婚礼策划套餐D非常至尊，服务很好。', 5, '2024-07-15 19:03:00');
INSERT INTO `merchant_product_comment` VALUES (393, 82, 5, '策划师很专业，体验很棒。', 4, '2024-07-15 19:04:00');
INSERT INTO `merchant_product_comment` VALUES (394, 82, 1, '价格有点贵，性价比一般。', 2, '2024-07-15 19:05:00');
INSERT INTO `merchant_product_comment` VALUES (395, 83, 2, '婚礼策划套餐A非常基础，服务很好。', 5, '2024-07-15 19:06:00');
INSERT INTO `merchant_product_comment` VALUES (396, 83, 3, '策划师很专业，体验很棒。', 4, '2024-07-15 19:07:00');
INSERT INTO `merchant_product_comment` VALUES (397, 83, 4, '价格有点贵，性价比一般。', 2, '2024-07-15 19:08:00');
INSERT INTO `merchant_product_comment` VALUES (398, 84, 5, '婚礼策划套餐B非常高级，服务很好。', 5, '2024-07-15 19:09:00');
INSERT INTO `merchant_product_comment` VALUES (399, 84, 1, '策划师很专业，体验很棒。', 4, '2024-07-15 19:10:00');
INSERT INTO `merchant_product_comment` VALUES (400, 84, 2, '价格有点贵，性价比一般。', 2, '2024-07-15 19:11:00');
INSERT INTO `merchant_product_comment` VALUES (401, 85, 3, '婚礼策划套餐C非常豪华，服务很好。', 5, '2024-07-15 19:12:00');
INSERT INTO `merchant_product_comment` VALUES (402, 85, 4, '策划师很专业，体验很棒。', 4, '2024-07-15 19:13:00');
INSERT INTO `merchant_product_comment` VALUES (403, 85, 5, '价格有点贵，性价比一般。', 2, '2024-07-15 19:14:00');
INSERT INTO `merchant_product_comment` VALUES (404, 86, 1, '这个婚礼策划套餐非常棒，服务周到，推荐！', 5, '2024-07-15 16:30:00');
INSERT INTO `merchant_product_comment` VALUES (405, 86, 2, '工作人员非常专业，整个过程非常顺利。', 5, '2024-07-15 16:31:00');
INSERT INTO `merchant_product_comment` VALUES (406, 86, 3, '有点小失望，服务没有预期的好。', 2, '2024-07-15 16:32:00');
INSERT INTO `merchant_product_comment` VALUES (407, 87, 4, '电影票性价比很高，下次还会购买。', 5, '2024-07-15 16:33:00');
INSERT INTO `merchant_product_comment` VALUES (408, 87, 5, '观影效果不错，推荐给大家。', 5, '2024-07-15 16:34:00');
INSERT INTO `merchant_product_comment` VALUES (409, 88, 1, '3D效果很棒，非常满意。', 5, '2024-07-15 16:35:00');
INSERT INTO `merchant_product_comment` VALUES (410, 88, 2, '座位有点不舒服，其他都还好。', 4, '2024-07-15 16:36:00');
INSERT INTO `merchant_product_comment` VALUES (411, 89, 3, 'IMAX体验非常震撼，强烈推荐。', 5, '2024-07-15 16:37:00');
INSERT INTO `merchant_product_comment` VALUES (412, 89, 4, '价格有点高，但体验值得。', 4, '2024-07-15 16:38:00');
INSERT INTO `merchant_product_comment` VALUES (413, 90, 5, '4D效果一般，没有想象中的好。', 2, '2024-07-15 16:39:00');
INSERT INTO `merchant_product_comment` VALUES (414, 90, 1, '观影体验很特别，推荐尝试。', 4, '2024-07-15 16:40:00');
INSERT INTO `merchant_product_comment` VALUES (415, 91, 2, '普通电影票价格实惠，不错。', 5, '2024-07-15 16:41:00');
INSERT INTO `merchant_product_comment` VALUES (416, 91, 3, '影院环境很好，服务也不错。', 5, '2024-07-15 16:42:00');
INSERT INTO `merchant_product_comment` VALUES (417, 92, 4, '3D电影票效果很好，推荐购买。', 5, '2024-07-15 16:43:00');
INSERT INTO `merchant_product_comment` VALUES (418, 92, 5, '观影体验不错，下次还会来。', 5, '2024-07-15 16:44:00');
INSERT INTO `merchant_product_comment` VALUES (419, 93, 1, 'IMAX电影票非常震撼，值得一看。', 5, '2024-07-15 16:45:00');
INSERT INTO `merchant_product_comment` VALUES (420, 93, 2, '价格有点贵，但体验很好。', 4, '2024-07-15 16:46:00');
INSERT INTO `merchant_product_comment` VALUES (421, 94, 3, '4D电影票效果一般，不太推荐。', 2, '2024-07-15 16:47:00');
INSERT INTO `merchant_product_comment` VALUES (422, 94, 4, '观影体验很特别，可以尝试。', 4, '2024-07-15 16:48:00');
INSERT INTO `merchant_product_comment` VALUES (423, 95, 5, '男士剪发服务很好，发型师很专业。', 5, '2024-07-15 16:49:00');
INSERT INTO `merchant_product_comment` VALUES (424, 95, 1, '价格实惠，服务也不错。', 5, '2024-07-15 16:50:00');
INSERT INTO `merchant_product_comment` VALUES (425, 96, 2, '男士烫发效果很好，非常满意。', 5, '2024-07-15 16:51:00');
INSERT INTO `merchant_product_comment` VALUES (426, 96, 3, '烫发效果一般，没有预期的好。', 2, '2024-07-15 16:52:00');
INSERT INTO `merchant_product_comment` VALUES (427, 97, 4, '男士染发颜色很满意，推荐。', 5, '2024-07-15 16:53:00');
INSERT INTO `merchant_product_comment` VALUES (428, 97, 5, '染发效果不错，服务也很好。', 5, '2024-07-15 16:54:00');
INSERT INTO `merchant_product_comment` VALUES (429, 98, 1, '男士护理服务很专业，推荐。', 5, '2024-07-15 16:55:00');
INSERT INTO `merchant_product_comment` VALUES (430, 98, 2, '护理效果一般，没有特别的感觉。', 3, '2024-07-15 16:56:00');
INSERT INTO `merchant_product_comment` VALUES (431, 99, 3, '女士剪发很满意，发型师很专业。', 5, '2024-07-15 16:57:00');
INSERT INTO `merchant_product_comment` VALUES (432, 99, 4, '剪发效果不错，服务也很好。', 5, '2024-07-15 16:58:00');
INSERT INTO `merchant_product_comment` VALUES (433, 100, 5, '女士烫发效果很好，非常满意。', 5, '2024-07-15 16:59:00');
INSERT INTO `merchant_product_comment` VALUES (434, 100, 1, '烫发效果一般，没有预期的好。', 2, '2024-07-15 17:00:00');
INSERT INTO `merchant_product_comment` VALUES (435, 101, 2, '女士染发颜色很满意，推荐。', 5, '2024-07-15 17:01:00');
INSERT INTO `merchant_product_comment` VALUES (436, 101, 3, '染发效果不错，服务也很好。', 5, '2024-07-15 17:02:00');
INSERT INTO `merchant_product_comment` VALUES (437, 102, 4, '女士护理服务很专业，推荐。', 5, '2024-07-15 17:03:00');
INSERT INTO `merchant_product_comment` VALUES (438, 102, 5, '护理效果一般，没有特别的感觉。', 3, '2024-07-15 17:04:00');
INSERT INTO `merchant_product_comment` VALUES (439, 103, 1, '面部护理效果很好，非常满意。', 5, '2024-07-15 17:05:00');
INSERT INTO `merchant_product_comment` VALUES (440, 103, 2, '护理效果一般，没有预期的好。', 2, '2024-07-15 17:06:00');
INSERT INTO `merchant_product_comment` VALUES (441, 104, 3, '高级面部护理效果很好，推荐。', 5, '2024-07-15 17:07:00');
INSERT INTO `merchant_product_comment` VALUES (442, 104, 4, '护理效果不错，服务也很好。', 5, '2024-07-15 17:08:00');
INSERT INTO `merchant_product_comment` VALUES (443, 105, 5, '身体护理效果很好，非常满意。', 5, '2024-07-15 17:09:00');
INSERT INTO `merchant_product_comment` VALUES (444, 105, 1, '护理效果一般，没有预期的好。', 2, '2024-07-15 17:10:00');
INSERT INTO `merchant_product_comment` VALUES (445, 106, 2, '高级身体护理效果很好，推荐。', 5, '2024-07-15 17:11:00');
INSERT INTO `merchant_product_comment` VALUES (446, 106, 3, '护理效果不错，服务也很好。', 5, '2024-07-15 17:12:00');
INSERT INTO `merchant_product_comment` VALUES (447, 107, 4, '面部护理效果很好，非常满意。', 5, '2024-07-15 17:13:00');
INSERT INTO `merchant_product_comment` VALUES (448, 107, 5, '护理效果一般，没有预期的好。', 2, '2024-07-15 17:14:00');
INSERT INTO `merchant_product_comment` VALUES (449, 108, 1, '高级面部护理效果很好，推荐。', 5, '2024-07-15 17:15:00');
INSERT INTO `merchant_product_comment` VALUES (450, 108, 2, '护理效果不错，服务也很好。', 5, '2024-07-15 17:16:00');
INSERT INTO `merchant_product_comment` VALUES (451, 109, 3, '身体护理效果很好，非常满意。', 5, '2024-07-15 17:17:00');
INSERT INTO `merchant_product_comment` VALUES (452, 109, 4, '护理效果一般，没有预期的好。', 2, '2024-07-15 17:18:00');
INSERT INTO `merchant_product_comment` VALUES (453, 110, 5, '高级身体护理效果很好，推荐。', 5, '2024-07-15 17:19:00');
INSERT INTO `merchant_product_comment` VALUES (454, 110, 1, '护理效果不错，服务也很好。', 5, '2024-07-15 17:20:00');

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
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1234',
  `role_id` int NOT NULL DEFAULT 2,
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_account
-- ----------------------------
INSERT INTO `system_account` VALUES (1, 'admin', '1234', 1);
INSERT INTO `system_account` VALUES (2, 'merchant1', '1234', 2);
INSERT INTO `system_account` VALUES (3, 'merchant2', '1234', 2);
INSERT INTO `system_account` VALUES (4, 'merchant3', '1234', 2);
INSERT INTO `system_account` VALUES (5, 'merchant4', '1234', 2);
INSERT INTO `system_account` VALUES (6, 'mercahnt5', '1234', 2);
INSERT INTO `system_account` VALUES (7, 'mercahnt6', '1234', 2);
INSERT INTO `system_account` VALUES (8, 'merchant7', '1234', 2);
INSERT INTO `system_account` VALUES (9, 'merchant8', '1234', 2);
INSERT INTO `system_account` VALUES (10, 'merchant9', '1234', 2);
INSERT INTO `system_account` VALUES (11, 'merchant10', '1234', 2);
INSERT INTO `system_account` VALUES (12, 'merchant11', '1234', 2);
INSERT INTO `system_account` VALUES (13, 'merchant12', '1234', 2);
INSERT INTO `system_account` VALUES (14, 'merchant13', '1234', 2);
INSERT INTO `system_account` VALUES (15, 'merchant14', '1234', 2);
INSERT INTO `system_account` VALUES (16, 'merchant15', '1234', 2);
INSERT INTO `system_account` VALUES (17, 'merchant16', '1234', 2);
INSERT INTO `system_account` VALUES (18, 'merchant17', '1234', 2);
INSERT INTO `system_account` VALUES (19, 'merchant18', '1234', 2);
INSERT INTO `system_account` VALUES (20, 'merchant19', '1234', 2);
INSERT INTO `system_account` VALUES (21, 'merchant20', '1234', 2);
INSERT INTO `system_account` VALUES (22, 'merchant21', '1234', 2);
INSERT INTO `system_account` VALUES (23, 'merchant22', '1234', 2);
INSERT INTO `system_account` VALUES (24, 'merchant23', '1234', 2);
INSERT INTO `system_account` VALUES (25, 'merchant24', '1234', 2);
INSERT INTO `system_account` VALUES (26, 'merchant25', '1234', 2);
INSERT INTO `system_account` VALUES (27, 'merchant26', '1234', 2);
INSERT INTO `system_account` VALUES (28, 'merchant27', '1234', 2);
INSERT INTO `system_account` VALUES (29, 'merchant28', '1234', 2);
INSERT INTO `system_account` VALUES (30, 'merchant29', '1234', 2);
INSERT INTO `system_account` VALUES (31, 'merchant30', '1234', 2);
INSERT INTO `system_account` VALUES (32, 'user1', '1234', 3);
INSERT INTO `system_account` VALUES (33, 'user2', '1234', 3);
INSERT INTO `system_account` VALUES (34, 'user3', '1234', 3);
INSERT INTO `system_account` VALUES (35, 'user4', '1234', 3);
INSERT INTO `system_account` VALUES (36, 'user5', '1234', 3);
INSERT INTO `system_account` VALUES (37, 'user6', '1234', 3);
INSERT INTO `system_account` VALUES (38, 'user7', '1234', 3);
INSERT INTO `system_account` VALUES (39, 'user8', '1234', 3);
INSERT INTO `system_account` VALUES (40, 'user9', '1234', 3);
INSERT INTO `system_account` VALUES (41, 'user10', '1234', 3);

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
INSERT INTO `user_friend` VALUES (1, 4, 1);
INSERT INTO `user_friend` VALUES (1, 5, 1);
INSERT INTO `user_friend` VALUES (2, 1, 1);
INSERT INTO `user_friend` VALUES (5, 1, 1);
INSERT INTO `user_friend` VALUES (1, 3, 2);
INSERT INTO `user_friend` VALUES (3, 1, 2);
INSERT INTO `user_friend` VALUES (2, 5, 3);
INSERT INTO `user_friend` VALUES (5, 2, 3);
INSERT INTO `user_friend` VALUES (2, 3, 4);
INSERT INTO `user_friend` VALUES (2, 4, 4);
INSERT INTO `user_friend` VALUES (4, 2, 4);
INSERT INTO `user_friend` VALUES (3, 4, 5);
INSERT INTO `user_friend` VALUES (3, 2, 7);
INSERT INTO `user_friend` VALUES (3, 5, 7);
INSERT INTO `user_friend` VALUES (4, 3, 7);
INSERT INTO `user_friend` VALUES (5, 3, 7);
INSERT INTO `user_friend` VALUES (4, 1, 8);
INSERT INTO `user_friend` VALUES (4, 5, 8);
INSERT INTO `user_friend` VALUES (5, 4, 8);

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `user_friend_category` VALUES (9, 1, '家人');
INSERT INTO `user_friend_category` VALUES (10, 2, '家人');
INSERT INTO `user_friend_category` VALUES (11, 3, '家人');
INSERT INTO `user_friend_category` VALUES (12, 4, '家人');
INSERT INTO `user_friend_category` VALUES (13, 1, '同学');
INSERT INTO `user_friend_category` VALUES (14, 2, '同学');
INSERT INTO `user_friend_category` VALUES (15, 3, '同学');
INSERT INTO `user_friend_category` VALUES (16, 4, '同学');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 32, 'Adochew', '35Sxhs4554@example.com', '17865321457', NULL, '2024-07-11 15:08:53');
INSERT INTO `user_info` VALUES (2, 33, 'rayo', '5656698622sxhs@example.com', '12586453254', NULL, '2024-07-11 15:08:53');
INSERT INTO `user_info` VALUES (3, 34, 'zecy', '44551752shwj@example.com', '13694265735', NULL, '2024-07-11 15:08:53');
INSERT INTO `user_info` VALUES (4, 35, 'WDHYDW', 'shjs5628968@example.com', '16935649874', NULL, '2024-07-11 15:08:53');
INSERT INTO `user_info` VALUES (5, 36, '半夏', 'shwh553286315@example.com', '18856885289', NULL, '2024-07-15 16:05:56');

SET FOREIGN_KEY_CHECKS = 1;
