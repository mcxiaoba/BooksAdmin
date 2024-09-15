/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : 1isme

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 23/08/2024 23:49:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `databasechangelog`;
CREATE TABLE `databasechangelog`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of databasechangelog
-- ----------------------------
INSERT INTO `databasechangelog` VALUES ('t_user-1', 'yourname', 'db/changelog/uaa/t_user.xml', '2024-08-14 19:14:13', 1, 'EXECUTED', '9:efe450de8453bf6529c8863d7d711eba', 'createTable tableName=t_user; createIndex indexName=uidx_user_username, tableName=t_user; insert tableName=t_user', '', NULL, '4.24.0', NULL, NULL, '3634053490');
INSERT INTO `databasechangelog` VALUES ('t_role-1', 'yourname', 'db/changelog/uaa/t_role.xml', '2024-08-14 19:14:14', 2, 'EXECUTED', '9:a109755887c32b7df0172a3601780c41', 'createTable tableName=t_role; createIndex indexName=uidx_role_code, tableName=t_role; createIndex indexName=uidx_role_name, tableName=t_role; insert tableName=t_role; insert tableName=t_role', '', NULL, '4.24.0', NULL, NULL, '3634053490');
INSERT INTO `databasechangelog` VALUES ('t_menu_permission-1', 'yourname', 'db/changelog/uaa/t_menu_permission.xml', '2024-08-14 19:14:14', 3, 'EXECUTED', '9:ea1137d734d73239e43a621ff1f2329c', 'createTable tableName=t_menu_permission; createIndex indexName=uidx_menu_code, tableName=t_menu_permission; insert tableName=t_menu_permission; insert tableName=t_menu_permission; insert tableName=t_menu_permission; insert tableName=t_menu_permiss...', '', NULL, '4.24.0', NULL, NULL, '3634053490');
INSERT INTO `databasechangelog` VALUES ('t_profile-1', 'author', 'db/changelog/uaa/t_profile.xml', '2024-08-14 19:14:14', 4, 'EXECUTED', '9:1586f3dd18ce1361d21fd244e304fb73', 'createTable tableName=t_profile; insert tableName=t_profile', '', NULL, '4.24.0', NULL, NULL, '3634053490');
INSERT INTO `databasechangelog` VALUES ('t_role_menu_permission-1', 'author', 'db/changelog/uaa/t_role_menu_permission.xml', '2024-08-14 19:14:14', 5, 'EXECUTED', '9:add24c1ceb5f7c374bccb12571937cc9', 'createTable tableName=t_role_menu_permission; insert tableName=t_role_menu_permission; insert tableName=t_role_menu_permission; insert tableName=t_role_menu_permission; insert tableName=t_role_menu_permission; insert tableName=t_role_menu_permissi...', '', NULL, '4.24.0', NULL, NULL, '3634053490');
INSERT INTO `databasechangelog` VALUES ('5', 'author', 'db/changelog/uaa/t_user_role.xml', '2024-08-14 19:14:15', 6, 'EXECUTED', '9:b8f689a552fc0ceb3f194d9dc87a37b5', 'createTable tableName=t_user_role; createIndex indexName=idx_t_user_role_role_id, tableName=t_user_role; insert tableName=t_user_role; insert tableName=t_user_role', '', NULL, '4.24.0', NULL, NULL, '3634053490');
INSERT INTO `databasechangelog` VALUES ('t_system_i18n-1', 'weBase2023', 'db/changelog/i18n/t_system_i18n.xml', '2024-08-14 19:14:15', 7, 'EXECUTED', '9:e17ca4860f50aa8ad167edb1aee88e7c', 'createTable tableName=t_system_i18n; createIndex indexName=uidx_system_i18n, tableName=t_system_i18n', '', NULL, '4.24.0', NULL, NULL, '3634053490');

-- ----------------------------
-- Table structure for databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `databasechangeloglock`;
CREATE TABLE `databasechangeloglock`  (
  `ID` int NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of databasechangeloglock
-- ----------------------------
INSERT INTO `databasechangeloglock` VALUES (1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for t_menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_permission`;
CREATE TABLE `t_menu_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` bigint NULL DEFAULT 0,
  `update_time` bigint NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `layout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `keep_alive` tinyint NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `can_show` tinyint(1) NOT NULL DEFAULT 1,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uidx_menu_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu_permission
-- ----------------------------
INSERT INTO `t_menu_permission` VALUES (1, 1700295539, 1700295539, '资源管理', 'Resource_Mgt', 'MENU', 2, '/pms/resource', NULL, 'i-fe:list', '/src/views/pms/resource/index.vue', NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO `t_menu_permission` VALUES (2, 1700295539, 1700295539, '系统管理', 'SysMgt', 'MENU', NULL, NULL, NULL, 'i-fe:grid', NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO `t_menu_permission` VALUES (3, 1700295539, 1700295539, '角色管理', 'RoleMgt', 'MENU', 2, '/pms/role', NULL, 'i-fe:user-check', '/src/views/pms/role/index.vue', NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO `t_menu_permission` VALUES (4, 1700295539, 1700295539, '用户管理', 'UserMgt', 'MENU', 2, '/pms/user', NULL, 'i-fe:user', '/src/views/pms/user/index.vue', NULL, 1, NULL, NULL, 1, 1, 3);
INSERT INTO `t_menu_permission` VALUES (5, 1700295539, 1700295539, '分配用户', 'RoleUser', 'MENU', 3, '/pms/role/user/:roleId', NULL, 'i-fe:user-plus', '/src/views/pms/role/role-user.vue', 'full', NULL, NULL, NULL, 0, 1, 1);
INSERT INTO `t_menu_permission` VALUES (6, 1700295539, 1700295539, '业务示例', 'Demo', 'MENU', NULL, NULL, NULL, 'i-fe:grid', NULL, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO `t_menu_permission` VALUES (7, 1700295539, 1700295539, '图片上传', 'ImgUpload', 'MENU', 6, '/demo/upload', NULL, 'i-fe:image', '/src/views/demo/upload/index.vue', NULL, 1, NULL, NULL, 1, 1, 2);
INSERT INTO `t_menu_permission` VALUES (8, 1700295539, 1700295539, '个人资料', 'UserProfile', 'MENU', NULL, '/profile', NULL, 'i-fe:user', '/src/views/profile/index.vue', NULL, NULL, NULL, NULL, 0, 1, 99);
INSERT INTO `t_menu_permission` VALUES (9, 1700295539, 1700295539, '基础功能', 'Base', 'MENU', NULL, '', NULL, 'i-fe:grid', NULL, '', NULL, NULL, NULL, 1, 1, 0);
INSERT INTO `t_menu_permission` VALUES (10, 1700295539, 1700295539, '基础组件', 'BaseComponents', 'MENU', 9, '/base/components', NULL, 'i-me:awesome', '/src/views/base/index.vue', NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO `t_menu_permission` VALUES (11, 1700295539, 1700295539, 'Unocss', 'Unocss', 'MENU', 9, '/base/unocss', NULL, 'i-me:awesome', '/src/views/base/unocss.vue', NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO `t_menu_permission` VALUES (12, 1700295539, 1700295539, 'keep_alive', 'keep_alive', 'MENU', 9, '/base/keep-alive', NULL, 'i-me:awesome', '/src/views/base/keep-alive.vue', NULL, 1, NULL, NULL, 1, 1, 3);
INSERT INTO `t_menu_permission` VALUES (13, 1700295539, 1700295539, '创建新用户', 'AddUser', 'BUTTON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO `t_menu_permission` VALUES (14, 1700295539, 1700295539, '图标 Icon', 'Icon', 'MENU', 9, '/base/icon', NULL, 'i-fe:feather', '/src/views/base/unocss-icon.vue', '', NULL, NULL, NULL, 1, 1, 0);
INSERT INTO `t_menu_permission` VALUES (15, 1700295539, 1700295539, 'MeModal', 'TestModal', 'MENU', 9, '/testModal', NULL, 'i-me:dialog', '/src/views/base/test-modal.vue', NULL, NULL, NULL, NULL, 1, 1, 5);
INSERT INTO `t_menu_permission` VALUES (16, 1723985798, 1723985798, '图书管理', 'web', 'MENU', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 1, 3);
INSERT INTO `t_menu_permission` VALUES (17, 1723986939, 1724028076, '书本类型', 'category', 'MENU', 16, '/web/category', NULL, NULL, '/src/views/web/category/index.vue', '', NULL, NULL, NULL, 1, 1, 1);
INSERT INTO `t_menu_permission` VALUES (18, 1724028062, 1724028062, '书籍管理', 'books', 'MENU', 16, '/web/books', NULL, NULL, '/src/views/web/books/index.vue', '', NULL, NULL, NULL, 1, 1, 0);
INSERT INTO `t_menu_permission` VALUES (19, 1724081335, 1724081348, '书籍列表', 'shoppingcart', 'MENU', 16, '/web/shoppingcart', NULL, NULL, '/src/views/web/shoppingcart/index.vue', '', NULL, NULL, NULL, 1, 1, 1);
INSERT INTO `t_menu_permission` VALUES (20, 1724087173, 1724087368, '书籍购物车', 'wmsshoppingcart', 'MENU', 16, '/web/wmsshoppingcart', NULL, NULL, '/src/views/web/wmsshoppingcart/index.vue', '', NULL, NULL, NULL, 1, 1, 2);
INSERT INTO `t_menu_permission` VALUES (21, 1724208419, 1724208495, '借阅列表', 'wmsborrowedbooks', 'MENU', 22, '/web/wmsborrowedbooks', NULL, NULL, '/src/views/web/wmsborrowedbooks/index.vue', '', NULL, NULL, NULL, 1, 1, 0);
INSERT INTO `t_menu_permission` VALUES (22, 1724208486, 1724208486, '借阅管理', 'sborrowedbooks', 'MENU', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 1, 4);

-- ----------------------------
-- Table structure for t_profile
-- ----------------------------
DROP TABLE IF EXISTS `t_profile`;
CREATE TABLE `t_profile`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` bigint NULL DEFAULT 0,
  `update_time` bigint NULL DEFAULT 0,
  `gender` int NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '\'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif?imageView2/1/w/80/h/80\'',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `nick_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_profile
-- ----------------------------
INSERT INTO `t_profile` VALUES (1, 1700295539, 1724035226, 0, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif?imageView2/1/w/80/h/80', NULL, NULL, 1, 'Admin');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` bigint NULL DEFAULT 0,
  `update_time` bigint NULL DEFAULT 0,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uidx_role_code`(`code` ASC) USING BTREE,
  UNIQUE INDEX `uidx_role_name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 1700295539, 1700295539, 'SUPER_ADMIN', '超级管理员', 1);
INSERT INTO `t_role` VALUES (2, 1700295539, 1723634378, 'ROLE_QA', '质检员', 1);
INSERT INTO `t_role` VALUES (3, 1724199954, 1724200071, 'user', '用户', 1);
INSERT INTO `t_role` VALUES (4, 1724199988, 1724200074, 'ShopingUser', '商家', 1);

-- ----------------------------
-- Table structure for t_role_menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu_permission`;
CREATE TABLE `t_role_menu_permission`  (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu_permission
-- ----------------------------
INSERT INTO `t_role_menu_permission` VALUES (2, 1);
INSERT INTO `t_role_menu_permission` VALUES (2, 2);
INSERT INTO `t_role_menu_permission` VALUES (2, 3);
INSERT INTO `t_role_menu_permission` VALUES (2, 4);
INSERT INTO `t_role_menu_permission` VALUES (2, 5);
INSERT INTO `t_role_menu_permission` VALUES (2, 13);
INSERT INTO `t_role_menu_permission` VALUES (3, 8);
INSERT INTO `t_role_menu_permission` VALUES (3, 16);
INSERT INTO `t_role_menu_permission` VALUES (3, 19);
INSERT INTO `t_role_menu_permission` VALUES (3, 20);
INSERT INTO `t_role_menu_permission` VALUES (4, 8);
INSERT INTO `t_role_menu_permission` VALUES (4, 16);
INSERT INTO `t_role_menu_permission` VALUES (4, 17);
INSERT INTO `t_role_menu_permission` VALUES (4, 18);

-- ----------------------------
-- Table structure for t_system_i18n
-- ----------------------------
DROP TABLE IF EXISTS `t_system_i18n`;
CREATE TABLE `t_system_i18n`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` bigint NULL DEFAULT 0,
  `update_time` bigint NULL DEFAULT 0,
  `key` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `language` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '语言',
  `i18n` varchar(511) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '翻译结果',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uidx_system_i18n`(`key` ASC, `language` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '国际化信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_system_i18n
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` bigint NULL DEFAULT 0,
  `update_time` bigint NULL DEFAULT 0,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uidx_user_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 1700295539, 1700295539, 'admin', '$2a$10$FsAafxTTVVGXfIkJqvaiV.1vPfq4V9HW298McPldJgO829PR52a56', 1);
INSERT INTO `t_user` VALUES (3, 1724200265, 1724200265, 'sj', '$2a$10$hqvNGk2vt4HEsXsmZs5E1erIWAHkKooC/1PEM6DKadlIT82kTJWsq', 1);
INSERT INTO `t_user` VALUES (4, 1724200275, 1724200275, 'yh', '$2a$10$cxIUoLxrDNXR13fWZfxxfusPRl7QzGXw0JKX6T7TwJjSiPmLryweC', 1);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `idx_t_user_role_role_id`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1);
INSERT INTO `t_user_role` VALUES (2, 1);
INSERT INTO `t_user_role` VALUES (1, 2);
INSERT INTO `t_user_role` VALUES (2, 2);
INSERT INTO `t_user_role` VALUES (4, 3);
INSERT INTO `t_user_role` VALUES (3, 4);

-- ----------------------------
-- Table structure for wms_books
-- ----------------------------
DROP TABLE IF EXISTS `wms_books`;
CREATE TABLE `wms_books`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '图书ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `books_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `books_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出版商',
  `publication_date` date NOT NULL COMMENT '出版日期',
  `category_id` int NOT NULL COMMENT '类别ID',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '描述',
  `quantity` int NULL DEFAULT 1 COMMENT '数量',
  `available` int NULL DEFAULT 1 COMMENT '可借数量/库存数量',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存放数量',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图书图片',
  `create_time` bigint NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_category`(`category_id` ASC) USING BTREE,
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `wms_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '图书表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_books
-- ----------------------------
INSERT INTO `wms_books` VALUES (24, 1, '1', '1', '1', '2024-08-20', 1, '1', 9, 2, 'A区', NULL, 1724144415, 1724318704);
INSERT INTO `wms_books` VALUES (25, 1, '2', '2', '2', '2024-08-22', 2, '1', 19, 2, 'B区', NULL, 1724144475, 1724144984);
INSERT INTO `wms_books` VALUES (26, 1, '3', '3', '3', '2024-08-22', 3, '3', 30, 3, 'C区', NULL, 1724144867, 1724144988);
INSERT INTO `wms_books` VALUES (27, 3, '4', '4', '4', '2024-08-23', 5, '4', 41, 4, 'D区', NULL, 1724144929, 1724144991);
INSERT INTO `wms_books` VALUES (28, 3, 'a', 'a', 'a', '2024-08-23', 10, 'a', 11, 5, 'B区', NULL, 1724200402, 1724200402);

-- ----------------------------
-- Table structure for wms_borrowed_books
-- ----------------------------
DROP TABLE IF EXISTS `wms_borrowed_books`;
CREATE TABLE `wms_borrowed_books`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键，自增，唯一标识借阅记录',
  `user_id` bigint NOT NULL COMMENT '借阅者的用户ID',
  `book_id` int NOT NULL COMMENT '书籍的ID',
  `borrow_date` datetime NOT NULL COMMENT '借阅日期',
  `return_date` datetime NULL DEFAULT NULL COMMENT '归还日期',
  `status` enum('borrowed','returned') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'borrowed' COMMENT '借阅状态',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `book_id`(`book_id` ASC) USING BTREE,
  CONSTRAINT `wms_borrowed_books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `wms_borrowed_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `wms_books` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅书籍记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_borrowed_books
-- ----------------------------
INSERT INTO `wms_borrowed_books` VALUES (16, 1, 24, '2024-08-22 17:13:38', NULL, 'borrowed', NULL, NULL);
INSERT INTO `wms_borrowed_books` VALUES (17, 1, 26, '2024-08-22 18:47:01', NULL, 'borrowed', NULL, NULL);
INSERT INTO `wms_borrowed_books` VALUES (18, 1, 25, '2024-08-22 18:57:08', NULL, 'borrowed', NULL, NULL);

-- ----------------------------
-- Table structure for wms_category
-- ----------------------------
DROP TABLE IF EXISTS `wms_category`;
CREATE TABLE `wms_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '图书馆类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_category
-- ----------------------------
INSERT INTO `wms_category` VALUES (1, '小说');
INSERT INTO `wms_category` VALUES (2, '非小说');
INSERT INTO `wms_category` VALUES (3, '科技');
INSERT INTO `wms_category` VALUES (4, '历史');
INSERT INTO `wms_category` VALUES (5, '艺术');
INSERT INTO `wms_category` VALUES (6, '自传');
INSERT INTO `wms_category` VALUES (7, '儿童');
INSERT INTO `wms_category` VALUES (10, '科幻');
INSERT INTO `wms_category` VALUES (12, '神话');

-- ----------------------------
-- Table structure for wms_shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `wms_shopping_cart`;
CREATE TABLE `wms_shopping_cart`  (
  `cart_id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int NOT NULL COMMENT '用户id',
  `book_id` int NOT NULL COMMENT '书籍id',
  `books_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `books_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出版商',
  `publication_date` date NOT NULL COMMENT '出版日期',
  `category_id` int NOT NULL COMMENT '类别ID',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '描述',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `quantity` int NOT NULL COMMENT '数量',
  `total_price` decimal(10, 2) GENERATED ALWAYS AS ((`price` * `quantity`)) STORED COMMENT '总价格' NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_shopping_cart
-- ----------------------------
INSERT INTO `wms_shopping_cart` VALUES (14, 1, 24, '1', '1', '1', '2024-08-20', 1, '1', 1.00, 6, DEFAULT, '2024-08-20 17:09:39', '2024-08-22 17:25:04');
INSERT INTO `wms_shopping_cart` VALUES (15, 1, 25, '2', '2', '2', '2024-08-22', 2, '1', 2.00, 3, DEFAULT, '2024-08-20 17:09:42', '2024-08-20 17:09:45');
INSERT INTO `wms_shopping_cart` VALUES (16, 3, 26, '3', '3', '3', '2024-08-22', 3, '3', 3.00, 3, DEFAULT, '2024-08-20 17:09:46', '2024-08-21 10:20:39');
INSERT INTO `wms_shopping_cart` VALUES (17, 3, 27, '4', '4', '4', '2024-08-23', 5, '4', 4.00, 3, DEFAULT, '2024-08-20 17:09:50', '2024-08-21 10:20:34');

SET FOREIGN_KEY_CHECKS = 1;
