/*
 Navicat Premium Data Transfer

 Source Server         : school
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : library_sum

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 17/05/2025 11:02:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (3, 'api');
INSERT INTO `auth_group` VALUES (1, 'download_data');
INSERT INTO `auth_group` VALUES (2, 'logs');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (2, 2, 31);
INSERT INTO `auth_group_permissions` VALUES (1, 2, 32);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add member', 7, 'add_member');
INSERT INTO `auth_permission` VALUES (26, 'Can change member', 7, 'change_member');
INSERT INTO `auth_permission` VALUES (27, 'Can delete member', 7, 'delete_member');
INSERT INTO `auth_permission` VALUES (28, 'Can view member', 7, 'view_member');
INSERT INTO `auth_permission` VALUES (29, 'Can add user activity', 8, 'add_useractivity');
INSERT INTO `auth_permission` VALUES (30, 'Can change user activity', 8, 'change_useractivity');
INSERT INTO `auth_permission` VALUES (31, 'Can delete user activity', 8, 'delete_useractivity');
INSERT INTO `auth_permission` VALUES (32, 'Can view user activity', 8, 'view_useractivity');
INSERT INTO `auth_permission` VALUES (33, 'Can add profile', 9, 'add_profile');
INSERT INTO `auth_permission` VALUES (34, 'Can change profile', 9, 'change_profile');
INSERT INTO `auth_permission` VALUES (35, 'Can delete profile', 9, 'delete_profile');
INSERT INTO `auth_permission` VALUES (36, 'Can view profile', 9, 'view_profile');
INSERT INTO `auth_permission` VALUES (37, 'Can add publisher', 10, 'add_publisher');
INSERT INTO `auth_permission` VALUES (38, 'Can change publisher', 10, 'change_publisher');
INSERT INTO `auth_permission` VALUES (39, 'Can delete publisher', 10, 'delete_publisher');
INSERT INTO `auth_permission` VALUES (40, 'Can view publisher', 10, 'view_publisher');
INSERT INTO `auth_permission` VALUES (41, 'Can add book', 11, 'add_book');
INSERT INTO `auth_permission` VALUES (42, 'Can change book', 11, 'change_book');
INSERT INTO `auth_permission` VALUES (43, 'Can delete book', 11, 'delete_book');
INSERT INTO `auth_permission` VALUES (44, 'Can view book', 11, 'view_book');
INSERT INTO `auth_permission` VALUES (45, 'Can add category', 12, 'add_category');
INSERT INTO `auth_permission` VALUES (46, 'Can change category', 12, 'change_category');
INSERT INTO `auth_permission` VALUES (47, 'Can delete category', 12, 'delete_category');
INSERT INTO `auth_permission` VALUES (48, 'Can view category', 12, 'view_category');
INSERT INTO `auth_permission` VALUES (49, 'Can add borrow record', 13, 'add_borrowrecord');
INSERT INTO `auth_permission` VALUES (50, 'Can change borrow record', 13, 'change_borrowrecord');
INSERT INTO `auth_permission` VALUES (51, 'Can delete borrow record', 13, 'delete_borrowrecord');
INSERT INTO `auth_permission` VALUES (52, 'Can view borrow record', 13, 'view_borrowrecord');
INSERT INTO `auth_permission` VALUES (55, 'Can add comment', 14, 'add_comment');
INSERT INTO `auth_permission` VALUES (56, 'Can change comment', 14, 'change_comment');
INSERT INTO `auth_permission` VALUES (57, 'Can delete comment', 14, 'delete_comment');
INSERT INTO `auth_permission` VALUES (58, 'Can view comment', 14, 'view_comment');
INSERT INTO `auth_permission` VALUES (59, 'Can add notification', 15, 'add_notification');
INSERT INTO `auth_permission` VALUES (60, 'Can change notification', 15, 'change_notification');
INSERT INTO `auth_permission` VALUES (61, 'Can delete notification', 15, 'delete_notification');
INSERT INTO `auth_permission` VALUES (62, 'Can view notification', 15, 'view_notification');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$sStEHo8PduyW$sDGZ/sOIPEZ6A2ghFIGljKNPwWE33rm+HEPhKL7SYAs=', '2021-12-26 03:56:14.000000', 1, 'yaozeliang', '', '', 'attractionlawyao@gmail.com', 1, 1, '2021-06-29 11:56:47.000000');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$150000$A3U2MCpyIBn0$WNoDgkqhu4RyxtiyYuUCDejDRsIORi8OTn8y2rJq0Nk=', '2021-09-12 08:30:35.000000', 0, 'admin_1', '', '', 'admin_1@gmail.com', 0, 1, '2021-07-31 10:25:27.000000');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$150000$l5zvIgFqICEG$dL6zQ/QNP0Em5amAFpcr3s0XDvdQ84S3vuY1XUtWTz0=', '2021-08-29 11:11:10.000000', 0, 'admin_2', '', '', 'admin_2@gmail.com', 0, 1, '2021-08-01 06:15:23.000000');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$150000$UYpSqKbQPbB4$vIgZgRC6KzPqSMHS/M2RBD8WPPU2HUQamR5t5MNqYxc=', '2022-07-18 05:08:37.000000', 0, 'woaixuexi_666', '', '', 'Lct8612168@qq.com', 0, 1, '2022-07-18 05:03:50.000000');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$150000$VIOnztgluV6I$WIuVxLruMLuh9r21X1Uvs9aFLm00q1w5fMLDkbcgZUk=', '2022-07-22 19:50:24.000000', 0, 'woaixuexi', '', '', '86121dfgs268@gmail.com', 0, 1, '2022-07-22 19:50:16.000000');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$150000$DZkOj5rbQWHH$Fddy8fIWkuki9wp7TazLw113CU0j1FqMyK0dTqdsccc=', '2024-04-01 01:15:55.000000', 1, 'yu', '', '', 'aweq23@qq.com', 1, 1, '2024-04-01 01:04:03.000000');
INSERT INTO `auth_user` VALUES (7, 'pbkdf2_sha256$150000$ARgKCEVNoJma$R4lRI5gqUEyLMGopqxLfGSY88IpGLFtANE+85A03QVU=', '2024-04-01 02:31:04.000000', 0, 'root', '', '', '123546@126.com', 0, 1, '2024-04-01 02:30:24.000000');
INSERT INTO `auth_user` VALUES (8, 'pbkdf2_sha256$150000$0ONEAARwy4KW$p7IrEwhDY0AUJ1TvtL1CfPy8pN5+nr443ZgTiTlrvrM=', '2024-04-02 23:07:44.000000', 0, 'root123', '', '', '4sa508@126.com', 0, 1, '2024-04-01 02:34:42.000000');
INSERT INTO `auth_user` VALUES (9, 'pbkdf2_sha256$150000$8MXMKU18kpoA$+bX2wgcTmtHZ5J+xDPQnte2yZACM4yODHBt6VAimrjE=', '2024-05-05 21:13:42.000000', 0, 'root1233', '', '', '66666666@126.com', 0, 1, '2024-05-05 21:13:26.000000');
INSERT INTO `auth_user` VALUES (10, 'pbkdf2_sha256$150000$rlxPeGAisHDG$LoykUglvfyWj0jGOh6cQkqoHrSdP5JMOZJYi94+h0lU=', '2024-12-08 03:51:16.000000', 1, 'root0', '', '', '1111111@qq.com', 1, 1, '2024-05-05 21:27:42.000000');
INSERT INTO `auth_user` VALUES (11, 'pbkdf2_sha256$150000$e0GpOxugRarD$fHAPiObwWZDRT3xCDhwre4XndiKly79C6l2e98iJPzc=', '2025-05-02 03:50:09.416957', 1, 'admin', '', '', '', 1, 1, '2025-03-30 04:29:42.000000');
INSERT INTO `auth_user` VALUES (13, 'pbkdf2_sha256$150000$cG3y0TwpVO8J$h2xhRfTUF+DKsG1NMpB0TRjaDMQ0Nhw9ZmpVotLYEqw=', '2025-03-31 00:26:54.000000', 0, 'sdfsd123', '', '', '23432423423444@qq.com', 0, 1, '2025-03-31 00:26:47.000000');
INSERT INTO `auth_user` VALUES (14, 'pbkdf2_sha256$150000$LMFOyX3nKYBO$IBnndNFH0RPUmK/g1GCmglpj2WEgUD1Cdd5nNAEjHFk=', '2025-05-02 03:49:45.605700', 0, 'user_test', '', '', 'z93yl0v8d600@outlook.com', 0, 1, '2025-05-02 03:45:12.715425');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES (57, 1, 1);
INSERT INTO `auth_user_groups` VALUES (55, 1, 2);
INSERT INTO `auth_user_groups` VALUES (56, 1, 3);
INSERT INTO `auth_user_groups` VALUES (45, 3, 3);
INSERT INTO `auth_user_groups` VALUES (80, 10, 1);
INSERT INTO `auth_user_groups` VALUES (78, 10, 2);
INSERT INTO `auth_user_groups` VALUES (79, 10, 3);

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for book_book
-- ----------------------------
DROP TABLE IF EXISTS `book_book`;
CREATE TABLE `book_book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `total_borrow_times` int(0) UNSIGNED NOT NULL,
  `quantity` int(0) UNSIGNED NOT NULL,
  `status` int(0) NOT NULL,
  `floor_number` int(0) NOT NULL,
  `bookshelf_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(0) NULL DEFAULT NULL,
  `publisher_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `book_book_category_id_616006cd_fk_book_category_id`(`category_id`) USING BTREE,
  INDEX `book_book_publisher_id_7f77c06a_fk_book_publisher_id`(`publisher_id`) USING BTREE,
  CONSTRAINT `book_book_category_id_616006cd_fk_book_category_id` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `book_book_publisher_id_7f77c06a_fk_book_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `book_publisher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_book
-- ----------------------------
INSERT INTO `book_book` VALUES (12, '路遥', '《平凡的世界》', '该书以中国70年代中期到80年代中期十年间为背景，通过复杂的矛盾纠葛，以孙少安和孙少平两兄弟为中心，刻画了当时社会各阶层众多普通人的形象；劳动与爱情、挫折与追求、痛苦与欢乐、日常生活与巨大社会冲突纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。', '2022-07-21 22:14:11.000000', '2022-07-21 22:27:23.000000', 1, 27, 1, 2, '0001', 'yaozeliang', 57, 13);
INSERT INTO `book_book` VALUES (13, '余华', '《活着》', '《活着》讲述了在大时代背景下，随着内战、三反五反、大跃进、“文化大革命”等社会变革，徐福贵的人生和家庭不断经受着苦难，到了最后所有亲人都先后离他而去，仅剩下年老的他和一头老牛相依为命。小说以普通、平实的故事情节讲述了在急剧变革的时代中福贵的不幸遭遇和坎坷命运，在冷静的笔触中展现了生命的意义和存在的价值，揭示了命运的无奈，与生活的不可捉摸。', '2022-07-21 22:16:57.000000', '2024-09-09 04:07:54.000000', 2, 17, 0, 3, '0002', 'Tobie', 57, 13);
INSERT INTO `book_book` VALUES (14, '刘慈欣', '《三体》', '作品讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。', '2022-07-21 22:17:48.000000', '2025-05-02 04:15:37.392389', 2, 48, 0, 1, '0001', 'Tobie', 57, 13);
INSERT INTO `book_book` VALUES (15, '莫提默·J·艾德勒&&查尔斯·范多伦', '《如何阅读一本书》', '该书强调阅读是一种主动的活动。阅读一般分做三种目的：娱乐消遣、获取资讯、增进理解力。只有最后一种目的的阅读能帮助阅读者增长心智，不断成长。', '2022-07-21 22:19:54.000000', '2022-07-21 22:19:54.000000', 0, 10, 1, 2, '0002', 'Tobie', 59, 15);
INSERT INTO `book_book` VALUES (16, '石悦', '《明朝那些事》', '《明朝那些事儿》主要讲述的是从1344年到1644年这三百年间关于明朝的一些故事。以史料为基础，以年代和具体人物为主线，并加入了小说的笔法，语言幽默风趣。对明朝十六帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多，并加入对当时政治经济制度、人伦道德的演义。', '2022-07-21 22:21:08.000000', '2022-07-21 22:21:08.000000', 0, 10, 1, 2, '0003', 'Tobie', 63, 14);

-- ----------------------------
-- Table structure for book_borrowrecord
-- ----------------------------
DROP TABLE IF EXISTS `book_borrowrecord`;
CREATE TABLE `book_borrowrecord`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `borrower` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `borrower_card` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `borrower_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `borrower_phone_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `book` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(0) UNSIGNED NOT NULL,
  `start_day` datetime(6) NOT NULL,
  `end_day` datetime(6) NOT NULL,
  `periode` int(0) UNSIGNED NOT NULL,
  `open_or_close` int(0) NOT NULL,
  `delay_days` int(0) NOT NULL,
  `final_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `closed_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `closed_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_borrowrecord
-- ----------------------------
INSERT INTO `book_borrowrecord` VALUES (58, 'cummins', 'de54d066', 'fritzsche@163.com', '4008199199', '《活着》', 1, '2022-07-21 08:00:00.000000', '2022-09-21 08:00:00.000000', 63, 1, 0, 'On time', '2022-07-21 22:24:58.000000', 'woaixuexi_666', 'woaixuexi_666', '2022-07-21 22:27:27.000000');
INSERT INTO `book_borrowrecord` VALUES (59, 'burkhard', 'cce8eafe', 'shattuck@qq.com', '8008308999', '《平凡的世界》', 1, '2022-07-21 08:00:00.000000', '2022-08-21 08:00:00.000000', 32, 1, 0, 'On time', '2022-07-21 22:25:35.000000', 'woaixuexi_666', 'woaixuexi_666', '2022-07-21 22:27:23.000000');
INSERT INTO `book_borrowrecord` VALUES (60, 'tinley', '95888bde', 'affronti@163.com', '4008869888', '《三体》', 1, '2022-08-02 08:00:00.000000', '2022-09-29 08:00:00.000000', 59, 1, 0, 'On time', '2022-07-21 22:26:00.000000', 'woaixuexi_666', 'woaixuexi_666', '2022-07-21 22:27:13.000000');
INSERT INTO `book_borrowrecord` VALUES (61, '张三', '3634d1b6', '123546@126.com', '67891011', '《活着》', 1, '2024-09-08 08:00:00.000000', '2024-09-15 08:00:00.000000', 8, 1, 0, 'On time', '2024-09-09 04:07:04.000000', 'root0', 'root0', '2024-09-09 04:07:54.000000');

-- ----------------------------
-- Table structure for book_category
-- ----------------------------
DROP TABLE IF EXISTS `book_category`;
CREATE TABLE `book_category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_category
-- ----------------------------
INSERT INTO `book_category` VALUES (53, '人文类图书', '2022-07-20 04:14:34.000000');
INSERT INTO `book_category` VALUES (54, '自然类图书', '2022-07-20 04:14:45.000000');
INSERT INTO `book_category` VALUES (55, 'A哲学类图书', '2022-07-20 04:16:38.000000');
INSERT INTO `book_category` VALUES (56, 'B宗教类图书', '2022-07-20 04:17:01.000000');
INSERT INTO `book_category` VALUES (57, '小说类图书', '2022-07-20 04:30:08.000000');
INSERT INTO `book_category` VALUES (58, '传记类图书', '2022-07-20 04:31:53.000000');
INSERT INTO `book_category` VALUES (59, '实用类图书', '2022-07-20 04:32:19.000000');
INSERT INTO `book_category` VALUES (60, '漫画类图书', '2022-07-20 04:33:12.000000');
INSERT INTO `book_category` VALUES (61, '学术类图书', '2022-07-20 04:33:47.000000');
INSERT INTO `book_category` VALUES (62, '军事类图书', '2022-07-20 04:34:47.000000');
INSERT INTO `book_category` VALUES (63, '历史类图书', '2022-07-20 04:35:03.000000');
INSERT INTO `book_category` VALUES (64, '科技类图书', '2024-04-03 01:53:36.000000');

-- ----------------------------
-- Table structure for book_member
-- ----------------------------
DROP TABLE IF EXISTS `book_member`;
CREATE TABLE `book_member`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(0) UNSIGNED NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `card_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `card_id`(`card_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_member
-- ----------------------------
INSERT INTO `book_member` VALUES (24, '赵柳', 23, 'm', '重庆', 'leachman@gmail.com', '4008171888', '2022-07-22 04:27:55.547000', 'woaixuexi_666', 'root1233', '2024-05-05 21:16:46.000000', 'faa7fc907c884d3f8e6286ea3513e163', 'faa7fc90', '2025-05-05 21:16:46.000000');
INSERT INTO `book_member` VALUES (26, '王武', 18, 'm', '广州', 'fritzsche@163.com', '4008199199', '2022-07-22 04:29:09.476000', 'woaixuexi_666', 'root1233', '2024-05-05 21:16:23.000000', 'de54d0667b0341559334855a6581ee49', 'de54d066', '2025-05-05 21:16:23.000000');
INSERT INTO `book_member` VALUES (27, '莉丝', 23, 'f', '北京', 'weatherwax@163.com', '4008303666', '2022-07-22 04:30:25.406000', 'woaixuexi_666', 'root1233', '2024-05-05 21:16:10.000000', '2bd43839ae6b4ad493c0e37c031ea54b', '2bd43839', '2025-05-05 21:16:10.000000');
INSERT INTO `book_member` VALUES (28, '张三', 20, 'm', '上海', '123546@126.com', '67891011', '2024-04-01 10:37:14.895000', 'root123', 'root1233', '2024-04-01 02:37:14.000000', '3634d1b6140c43c9a16c1a6b80ef219b', '3634d1b6', '2025-04-01 02:37:14.000000');

-- ----------------------------
-- Table structure for book_profile
-- ----------------------------
DROP TABLE IF EXISTS `book_profile`;
CREATE TABLE `book_profile`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `bio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `book_profile_user_id_fdef3031_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_profile
-- ----------------------------
INSERT INTO `book_profile` VALUES (1, 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'profile/20210907/cartoon_4.jpg', '13400000000', 'attractionlawyao@gmail.com', 1);
INSERT INTO `book_profile` VALUES (2, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'profile/20210907/cartoon_3.jpg', '13500000000', 'admin_1@gmail.com', 2);
INSERT INTO `book_profile` VALUES (3, 'I m admin 2', 'profile/20210801/62.jpg', '13455555555', 'admin_2@outlook.com', 3);
INSERT INTO `book_profile` VALUES (4, '大家好，我是测试人员1号，请多多指教。', 'profile/20220722/cartoon_1.jpg', '12315', 'Lct86121268@gmail.com', 4);
INSERT INTO `book_profile` VALUES (5, '我爱学习，可惜学习不爱我  ┭┮﹏┭┮', 'profile/20220723/cartoon_1.jpg', '10086', '86121268@gmail.com', 5);
INSERT INTO `book_profile` VALUES (6, '6666666', 'profile/20240401/QQ图片20231222090951.jpg', '17623623133', '2664344508@qq.com', 6);
INSERT INTO `book_profile` VALUES (7, '66666666', 'profile/20240401/QQ图片20231222090951_GVoqxMQ.jpg', '67891011', '123546@126.com', 8);
INSERT INTO `book_profile` VALUES (8, '66666666666', 'profile/20240506/1713517101085.jpg', '1370000000', '123546@126.com', 9);
INSERT INTO `book_profile` VALUES (9, '6666666666', 'profile/20240506/1713515513505.jpg', '1370000000', '123546@126.com', 10);
INSERT INTO `book_profile` VALUES (10, '1', 'profile/20250331/bg3_6GL7q27.png', '', '', 11);
INSERT INTO `book_profile` VALUES (11, '', '', '', '', 13);
INSERT INTO `book_profile` VALUES (12, '', '', '', '', 14);

-- ----------------------------
-- Table structure for book_publisher
-- ----------------------------
DROP TABLE IF EXISTS `book_publisher`;
CREATE TABLE `book_publisher`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_publisher
-- ----------------------------
INSERT INTO `book_publisher` VALUES (12, '人民教育出版社', '中国北京', 'rmcbs2010@163.com', '2022-07-20 04:39:39.000000', 'yaozeliang', '2022-07-20 04:39:39.000000');
INSERT INTO `book_publisher` VALUES (13, '人民文学出版社', '中国北京', 'renminwxcbs@126.com', '2022-07-20 04:43:58.000000', 'yaozeliang', '2022-07-20 04:43:58.000000');
INSERT INTO `book_publisher` VALUES (14, '三联书店', '中国上海', 'shdsxzslsd1932@126.com', '2022-07-20 04:48:36.000000', 'yaozeliang', '2022-07-20 04:48:36.000000');
INSERT INTO `book_publisher` VALUES (15, '商务印书馆', '中国北京', 'swysgcbs01016@163.com', '2022-07-20 04:50:01.000000', 'yaozeliang', '2022-07-20 04:50:01.000000');

-- ----------------------------
-- Table structure for book_useractivity
-- ----------------------------
DROP TABLE IF EXISTS `book_useractivity`;
CREATE TABLE `book_useractivity`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `operation_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 525 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_useractivity
-- ----------------------------
INSERT INTO `book_useractivity` VALUES (2, 'yaozeliang', '2021-07-31 10:19:30.000000', 'success', 'Category', 'Create Category << Economics >>');
INSERT INTO `book_useractivity` VALUES (4, 'yaozeliang', '2021-07-31 10:19:43.000000', 'success', 'Category', 'Create Category << Finance >>');
INSERT INTO `book_useractivity` VALUES (5, 'yaozeliang', '2021-07-31 10:19:49.000000', 'success', 'Category', 'Create Category << Historical >>');
INSERT INTO `book_useractivity` VALUES (6, 'yaozeliang', '2021-07-31 10:19:56.000000', 'success', 'Category', 'Create Category << Fantasy >>');
INSERT INTO `book_useractivity` VALUES (7, 'yaozeliang', '2021-07-31 10:20:02.000000', 'success', 'Category', 'Create Category << Cooking >>');
INSERT INTO `book_useractivity` VALUES (8, 'yaozeliang', '2021-07-31 10:20:10.000000', 'success', 'Category', 'Create Category << Computers & Tech >>');
INSERT INTO `book_useractivity` VALUES (9, 'yaozeliang', '2021-07-31 10:20:17.000000', 'success', 'Category', 'Create Category << Fiction >>');
INSERT INTO `book_useractivity` VALUES (10, 'yaozeliang', '2021-07-31 10:20:31.000000', 'success', 'Category', 'Create Category << Watch >>');
INSERT INTO `book_useractivity` VALUES (11, 'yaozeliang', '2021-07-31 10:20:36.000000', 'success', 'Category', 'Create Category << Detective and Mystery >>');
INSERT INTO `book_useractivity` VALUES (12, 'yaozeliang', '2021-07-31 10:20:41.000000', 'success', 'Category', 'Create Category << Literary Fiction >>');
INSERT INTO `book_useractivity` VALUES (13, 'yaozeliang', '2021-07-31 10:20:55.000000', 'success', 'Category', 'Create Category << Comic >>');
INSERT INTO `book_useractivity` VALUES (14, 'yaozeliang', '2021-07-31 10:21:19.000000', 'success', 'Publisher', 'Create Publisher << Pub1 >>');
INSERT INTO `book_useractivity` VALUES (15, 'yaozeliang', '2021-07-31 10:21:27.000000', 'success', 'Publisher', 'Create Publisher << Pub2 >>');
INSERT INTO `book_useractivity` VALUES (16, 'yaozeliang', '2021-07-31 10:21:36.000000', 'success', 'Publisher', 'Create Publisher << Pub3 >>');
INSERT INTO `book_useractivity` VALUES (17, 'yaozeliang', '2021-07-31 10:21:53.000000', 'success', 'Publisher', 'Create Publisher << Pub4 >>');
INSERT INTO `book_useractivity` VALUES (18, 'yaozeliang', '2021-07-31 10:22:29.000000', 'success', 'Book', 'Create Book << T1 >>');
INSERT INTO `book_useractivity` VALUES (19, 'yaozeliang', '2021-07-31 10:22:50.000000', 'success', 'Book', 'Create Book << T2 >>');
INSERT INTO `book_useractivity` VALUES (20, 'yaozeliang', '2021-07-31 10:23:14.000000', 'success', 'Book', 'Create Book << T3 >>');
INSERT INTO `book_useractivity` VALUES (21, 'yaozeliang', '2021-07-31 10:23:39.000000', 'success', 'Book', 'Create Book << MarkdownTestA >>');
INSERT INTO `book_useractivity` VALUES (22, 'yaozeliang', '2021-07-31 10:24:22.000000', 'success', 'Member', 'Create Member << test_m1 >>');
INSERT INTO `book_useractivity` VALUES (23, 'yaozeliang', '2021-07-31 10:24:51.000000', 'success', 'Member', 'Create Member << test_m3 >>');
INSERT INTO `book_useractivity` VALUES (24, 'admin_1', '2021-07-31 10:27:11.000000', 'warning', 'Member', 'Update Member << test_m3 >>');
INSERT INTO `book_useractivity` VALUES (25, 'admin_1', '2021-07-31 10:27:37.000000', 'success', 'Member', 'Create Member << test_m2 >>');
INSERT INTO `book_useractivity` VALUES (27, 'yaozeliang', '2021-07-31 12:29:29.000000', 'success', 'Member', 'Create Member << test_m4 >>');
INSERT INTO `book_useractivity` VALUES (28, 'admin_2', '2021-08-01 06:17:16.000000', 'success', 'Member', 'Create Member << test_m5 >>');
INSERT INTO `book_useractivity` VALUES (29, 'admin_2', '2021-08-01 06:21:08.000000', 'success', 'Member', 'Create Member << test_m6 >>');
INSERT INTO `book_useractivity` VALUES (30, 'admin_2', '2021-08-01 06:43:43.000000', 'warning', 'Member', 'Update Member << test_m6 >>');
INSERT INTO `book_useractivity` VALUES (31, 'admin_2', '2021-08-01 06:45:22.000000', 'success', 'Category', 'Create Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (32, 'admin_2', '2021-08-01 06:46:28.000000', 'danger', 'Category', 'Delete Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (33, 'yaozeliang', '2021-08-01 07:14:28.000000', 'warning', 'Publisher', 'Update Publisher << Pub4 >>');
INSERT INTO `book_useractivity` VALUES (34, 'yaozeliang', '2021-08-01 11:27:52.000000', 'warning', 'Book', 'Update Book << T1 >>');
INSERT INTO `book_useractivity` VALUES (35, 'yaozeliang', '2021-08-01 12:57:48.000000', 'warning', 'Member', 'Update Member << test_m6 >>');
INSERT INTO `book_useractivity` VALUES (36, 'yaozeliang', '2021-08-01 13:00:50.000000', 'warning', 'Book', 'Update Book << T2 >>');
INSERT INTO `book_useractivity` VALUES (37, 'admin_1', '2021-08-01 13:12:01.000000', 'success', 'Category', 'Create Category << UUUUUUUUUUUUUU >>');
INSERT INTO `book_useractivity` VALUES (38, 'admin_1', '2021-08-01 13:12:03.000000', 'danger', 'Category', 'Delete Category << UUUUUUUUUUUUUU >>');
INSERT INTO `book_useractivity` VALUES (39, 'admin_1', '2021-08-01 13:12:36.000000', 'warning', 'Book', 'Update Book << T2 >>');
INSERT INTO `book_useractivity` VALUES (40, 'yaozeliang', '2021-08-01 13:21:02.000000', 'warning', 'Book', 'Update Book << T2 >>');
INSERT INTO `book_useractivity` VALUES (41, 'yaozeliang', '2021-08-01 13:21:24.000000', 'success', 'Category', 'Create Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (42, 'yaozeliang', '2021-08-01 13:21:32.000000', 'danger', 'Category', 'Delete Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (43, 'yaozeliang', '2021-08-02 01:50:39.000000', 'success', 'Member', 'Create Member << test_m5 >>');
INSERT INTO `book_useractivity` VALUES (45, 'yaozeliang', '2021-08-02 09:47:27.000000', 'warning', 'Member', 'Update Member << test_m5 >>');
INSERT INTO `book_useractivity` VALUES (46, 'yaozeliang', '2021-08-02 09:48:44.000000', 'success', 'BorrowRecord', 'New BorrowRecord \'5\' => <<4>>');
INSERT INTO `book_useractivity` VALUES (47, 'yaozeliang', '2021-08-02 09:50:43.000000', 'success', 'Book', 'Create Book << Harry Potter Children\'s Collection >>');
INSERT INTO `book_useractivity` VALUES (48, 'yaozeliang', '2021-08-02 10:01:13.000000', 'success', 'BorrowRecord', 'New BorrowRecord \'test_m7\' => <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (49, 'yaozeliang', '2021-08-02 10:09:29.000000', 'success', 'Book', 'Create Book << Test Title >>');
INSERT INTO `book_useractivity` VALUES (50, 'yaozeliang', '2021-08-02 10:11:53.000000', 'success', 'BorrowRecord', ' \'test_m5\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (51, 'yaozeliang', '2021-08-02 10:19:38.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord \'test_m5\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (52, 'yaozeliang', '2021-08-02 10:19:42.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord \'test_m7\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (53, 'yaozeliang', '2021-08-02 10:19:46.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord \'test_m7\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (54, 'yaozeliang', '2021-08-02 10:19:47.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord \'test_m4\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (55, 'yaozeliang', '2021-08-02 10:19:48.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord \'test_m5\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (56, 'yaozeliang', '2021-08-02 10:19:49.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord \'test_m4\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (57, 'yaozeliang', '2021-08-02 10:20:48.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord \'test_m3\' => <<T1>>');
INSERT INTO `book_useractivity` VALUES (58, 'yaozeliang', '2021-08-02 10:22:04.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m2');
INSERT INTO `book_useractivity` VALUES (59, 'yaozeliang', '2021-08-02 10:22:05.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m4');
INSERT INTO `book_useractivity` VALUES (60, 'yaozeliang', '2021-08-02 10:22:50.000000', 'success', 'BorrowRecord', ' \'test_m4\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (61, 'yaozeliang', '2021-08-02 10:23:17.000000', 'success', 'BorrowRecord', ' \'test_m7\' borrowed <<T2>>');
INSERT INTO `book_useractivity` VALUES (62, 'yaozeliang', '2021-08-03 05:54:39.000000', 'success', 'Member', 'Create Member << John Brown >>');
INSERT INTO `book_useractivity` VALUES (63, 'yaozeliang', '2021-08-03 05:55:14.000000', 'success', 'Member', 'Create Member << John Johnson >>');
INSERT INTO `book_useractivity` VALUES (64, 'yaozeliang', '2021-08-03 05:56:03.000000', 'success', 'Member', 'Create Member << Andrew Green >>');
INSERT INTO `book_useractivity` VALUES (65, 'yaozeliang', '2021-08-03 06:19:03.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m4');
INSERT INTO `book_useractivity` VALUES (66, 'yaozeliang', '2021-08-03 10:06:19.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m4');
INSERT INTO `book_useractivity` VALUES (67, 'yaozeliang', '2021-08-03 10:06:20.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m7');
INSERT INTO `book_useractivity` VALUES (68, 'yaozeliang', '2021-08-03 10:13:37.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (69, 'yaozeliang', '2021-08-03 10:24:36.000000', 'success', 'BorrowRecord', ' \'test_m1\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (70, 'yaozeliang', '2021-08-03 10:24:40.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (71, 'yaozeliang', '2021-08-03 10:26:04.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m1');
INSERT INTO `book_useractivity` VALUES (72, 'yaozeliang', '2021-08-03 10:26:20.000000', 'success', 'BorrowRecord', ' \'John Johnson\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (73, 'yaozeliang', '2021-08-03 10:32:27.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (74, 'yaozeliang', '2021-08-03 10:41:38.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (75, 'yaozeliang', '2021-08-03 10:44:13.000000', 'success', 'BorrowRecord', ' \'test_m3\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (76, 'yaozeliang', '2021-08-03 10:44:59.000000', 'success', 'BorrowRecord', ' \'John Johnson\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (77, 'yaozeliang', '2021-08-03 10:54:38.000000', 'success', 'Book', 'Create Book << Amazing Test Book >>');
INSERT INTO `book_useractivity` VALUES (78, 'yaozeliang', '2021-08-03 10:54:48.000000', 'warning', 'Book', 'Update Book << Amazing Test Book >>');
INSERT INTO `book_useractivity` VALUES (79, 'yaozeliang', '2021-08-03 10:55:06.000000', 'warning', 'Book', 'Update Book << Amazing Test Book >>');
INSERT INTO `book_useractivity` VALUES (80, 'yaozeliang', '2021-08-03 10:55:54.000000', 'warning', 'Book', 'Update Book << Test Title >>');
INSERT INTO `book_useractivity` VALUES (81, 'yaozeliang', '2021-08-03 10:56:03.000000', 'warning', 'Book', 'Update Book << Amazing Test Book >>');
INSERT INTO `book_useractivity` VALUES (82, 'yaozeliang', '2021-08-03 10:56:30.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (83, 'yaozeliang', '2021-08-03 11:04:25.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m3');
INSERT INTO `book_useractivity` VALUES (84, 'yaozeliang', '2021-08-03 11:04:26.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (85, 'yaozeliang', '2021-08-03 11:04:27.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Johnson');
INSERT INTO `book_useractivity` VALUES (86, 'yaozeliang', '2021-08-03 11:04:43.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (87, 'yaozeliang', '2021-08-03 11:05:57.000000', 'success', 'BorrowRecord', ' \'test_m6\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (88, 'yaozeliang', '2021-08-03 11:07:37.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (89, 'yaozeliang', '2021-08-03 11:07:38.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m6');
INSERT INTO `book_useractivity` VALUES (90, 'yaozeliang', '2021-08-03 11:07:47.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (91, 'yaozeliang', '2021-08-03 11:21:12.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (92, 'yaozeliang', '2021-08-03 11:21:18.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Andrew Green');
INSERT INTO `book_useractivity` VALUES (93, 'yaozeliang', '2021-08-03 11:21:27.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (94, 'yaozeliang', '2021-08-03 12:17:09.000000', 'success', 'Book', 'Create Book << Best Book >>');
INSERT INTO `book_useractivity` VALUES (95, 'yaozeliang', '2021-08-03 12:17:32.000000', 'warning', 'Book', 'Update Book << Best Book >>');
INSERT INTO `book_useractivity` VALUES (96, 'yaozeliang', '2021-08-03 12:18:31.000000', 'success', 'Member', 'Create Member << Claire Andson >>');
INSERT INTO `book_useractivity` VALUES (97, 'yaozeliang', '2021-08-03 12:36:17.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (98, 'yaozeliang', '2021-08-03 12:37:03.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (99, 'yaozeliang', '2021-08-03 12:37:29.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Claire Andson');
INSERT INTO `book_useractivity` VALUES (100, 'yaozeliang', '2021-08-03 12:37:50.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (101, 'yaozeliang', '2021-08-03 12:44:06.000000', 'success', 'BorrowRecord', ' \'test_m1\' borrowed <<T1>>');
INSERT INTO `book_useractivity` VALUES (102, 'yaozeliang', '2021-08-03 12:46:04.000000', 'success', 'BorrowRecord', ' \'John Johnson\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (103, 'yaozeliang', '2021-08-03 23:49:52.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Johnson');
INSERT INTO `book_useractivity` VALUES (104, 'yaozeliang', '2021-08-04 00:25:38.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (105, 'yaozeliang', '2021-08-04 10:14:31.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (106, 'yaozeliang', '2021-08-04 10:14:36.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (107, 'yaozeliang', '2021-08-04 10:14:38.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Andrew Green');
INSERT INTO `book_useractivity` VALUES (108, 'yaozeliang', '2021-08-04 10:14:39.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Andrew Green');
INSERT INTO `book_useractivity` VALUES (109, 'yaozeliang', '2021-08-04 10:14:40.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m1');
INSERT INTO `book_useractivity` VALUES (110, 'yaozeliang', '2021-08-04 10:14:43.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (111, 'yaozeliang', '2021-08-04 10:43:45.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (112, 'admin_1', '2021-08-04 10:49:13.000000', 'success', 'Member', 'Create Member << Emilia >>');
INSERT INTO `book_useractivity` VALUES (113, 'admin_1', '2021-08-04 10:50:28.000000', 'success', 'BorrowRecord', ' \'Emilia\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (114, 'yaozeliang', '2021-08-05 02:03:22.000000', 'success', 'Publisher', 'Create Publisher << Fake Pub 5 >>');
INSERT INTO `book_useractivity` VALUES (115, 'yaozeliang', '2021-08-05 02:15:56.000000', 'warning', 'Member', 'Update Member << Emilia >>');
INSERT INTO `book_useractivity` VALUES (116, 'yaozeliang', '2021-08-05 02:16:52.000000', 'warning', 'Member', 'Update Member << Emilia >>');
INSERT INTO `book_useractivity` VALUES (117, 'yaozeliang', '2021-08-05 02:19:55.000000', 'warning', 'Member', 'Update Member << Emilia >>');
INSERT INTO `book_useractivity` VALUES (118, 'yaozeliang', '2021-08-05 02:20:48.000000', 'warning', 'Member', 'Update Member << Emilia >>');
INSERT INTO `book_useractivity` VALUES (119, 'yaozeliang', '2021-08-05 05:02:42.000000', 'warning', 'Member', 'Update Member << Emilia >>');
INSERT INTO `book_useractivity` VALUES (120, 'yaozeliang', '2021-08-05 05:19:40.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (121, 'yaozeliang', '2021-08-05 05:25:17.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (122, 'yaozeliang', '2021-08-05 06:06:12.000000', 'success', 'Member', 'Create Member << anderson green >>');
INSERT INTO `book_useractivity` VALUES (123, 'yaozeliang', '2021-08-05 06:08:39.000000', 'success', 'BorrowRecord', ' \'anderson green\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (124, 'yaozeliang', '2021-08-07 09:28:02.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (125, 'yaozeliang', '2021-08-07 09:29:19.000000', 'success', 'Book', 'Create Book << Harry Potter and magic stone >>');
INSERT INTO `book_useractivity` VALUES (126, 'yaozeliang', '2021-08-07 09:29:54.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (127, 'yaozeliang', '2021-08-07 11:16:50.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (128, 'yaozeliang', '2021-08-09 02:49:15.000000', 'warning', 'Book', 'Update Book << Harry Potter and magic stone >>');
INSERT INTO `book_useractivity` VALUES (129, 'admin_1', '2021-08-09 09:18:10.000000', 'success', 'Category', 'Create Category << xxxxxxxxxxx >>');
INSERT INTO `book_useractivity` VALUES (130, 'admin_1', '2021-08-09 09:22:34.000000', 'success', 'Category', 'Create Category << xxxxxxxxxxx >>');
INSERT INTO `book_useractivity` VALUES (131, 'admin_1', '2021-08-09 09:24:09.000000', 'danger', 'Category', 'Delete Category << xxxxxxxxxxx >>');
INSERT INTO `book_useractivity` VALUES (132, 'admin_1', '2021-08-09 09:25:34.000000', 'danger', 'Category', 'Delete Category << xxxxxxxxxxx >>');
INSERT INTO `book_useractivity` VALUES (133, 'admin_1', '2021-08-09 09:27:38.000000', 'success', 'Category', 'Create Category << qqqqqqqqq >>');
INSERT INTO `book_useractivity` VALUES (134, 'admin_1', '2021-08-09 09:27:47.000000', 'success', 'Category', 'Create Category << 7777 >>');
INSERT INTO `book_useractivity` VALUES (135, 'admin_1', '2021-08-09 09:28:54.000000', 'danger', 'Category', 'Delete Category << 7777 >>');
INSERT INTO `book_useractivity` VALUES (136, 'admin_1', '2021-08-09 09:29:13.000000', 'success', 'Category', 'Create Category << Fashion >>');
INSERT INTO `book_useractivity` VALUES (137, 'admin_1', '2021-08-09 09:29:34.000000', 'success', 'Category', 'Create Category << 7777 >>');
INSERT INTO `book_useractivity` VALUES (138, 'admin_1', '2021-08-09 09:36:05.000000', 'danger', 'Category', 'Delete Category << 7777 >>');
INSERT INTO `book_useractivity` VALUES (139, 'admin_1', '2021-08-09 09:38:05.000000', 'success', 'Member', 'Create Member << test_m99 >>');
INSERT INTO `book_useractivity` VALUES (140, 'admin_1', '2021-08-09 09:48:11.000000', 'danger', 'Category', 'Delete Category << qqqqqqqqq >>');
INSERT INTO `book_useractivity` VALUES (141, 'admin_1', '2021-08-09 09:54:01.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (142, 'yaozeliang', '2021-08-09 10:07:42.000000', 'success', 'BorrowRecord', ' \'test_m99\' borrowed <<T1>>');
INSERT INTO `book_useractivity` VALUES (143, 'yaozeliang', '2021-08-11 06:33:32.000000', 'danger', 'BorrowRecord', 'Close BorrowRecord \'John Brown\'=>Best Book');
INSERT INTO `book_useractivity` VALUES (144, 'yaozeliang', '2021-08-11 07:13:58.000000', 'danger', 'BorrowRecord', 'Close BorrowRecord \'anderson green\'=>Best Book');
INSERT INTO `book_useractivity` VALUES (145, 'yaozeliang', '2021-08-11 09:31:01.000000', 'danger', 'BorrowRecord', 'Close BorrowRecord \'John Brown\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (147, 'admin_1', '2021-08-11 12:57:56.000000', 'success', 'BorrowRecord', ' \'test_m3\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (148, 'admin_1', '2021-08-11 13:02:00.000000', 'success', 'BorrowRecord', ' \'test_m1\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (150, 'yaozeliang', '2021-08-11 13:06:46.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (152, 'yaozeliang', '2021-08-11 13:09:53.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (153, 'yaozeliang', '2021-08-11 13:09:56.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Emilia');
INSERT INTO `book_useractivity` VALUES (154, 'yaozeliang', '2021-08-11 13:17:41.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Andrew Green');
INSERT INTO `book_useractivity` VALUES (155, 'yaozeliang', '2021-08-11 13:19:27.000000', 'warning', 'Book', 'Update Book << T1 >>');
INSERT INTO `book_useractivity` VALUES (156, 'yaozeliang', '2021-08-11 13:20:01.000000', 'success', 'BorrowRecord', ' \'test_m99\' borrowed <<T1>>');
INSERT INTO `book_useractivity` VALUES (157, 'yaozeliang', '2021-08-11 13:20:15.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m99\'=>T1');
INSERT INTO `book_useractivity` VALUES (158, 'yaozeliang', '2021-08-11 13:20:56.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m99');
INSERT INTO `book_useractivity` VALUES (159, 'admin_1', '2021-08-12 04:56:18.000000', 'success', 'BorrowRecord', ' \'test_m7\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (160, 'admin_1', '2021-08-12 04:57:51.000000', 'success', 'BorrowRecord', ' \'test_m7\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (161, 'admin_1', '2021-08-12 05:04:57.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m7\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (162, 'admin_1', '2021-08-12 05:05:34.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m7\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (163, 'admin_1', '2021-08-12 05:06:54.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m7\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (164, 'admin_1', '2021-08-12 05:39:02.000000', 'success', 'Member', 'Create Member << test_100 >>');
INSERT INTO `book_useractivity` VALUES (165, 'admin_1', '2021-08-12 05:40:14.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (166, 'admin_1', '2021-08-12 05:41:07.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (167, 'admin_1', '2021-08-12 05:44:30.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (168, 'admin_1', '2021-08-12 05:54:21.000000', 'warning', 'Book', 'Update Book << Harry Potter Children\'s Collection >>');
INSERT INTO `book_useractivity` VALUES (169, 'admin_1', '2021-08-12 05:54:31.000000', 'warning', 'Book', 'Update Book << Harry Potter Children\'s Collection >>');
INSERT INTO `book_useractivity` VALUES (170, 'admin_1', '2021-08-12 05:55:07.000000', 'success', 'BorrowRecord', ' \'anderson green\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (171, 'admin_1', '2021-08-12 05:58:30.000000', 'success', 'BorrowRecord', ' \'test_m1\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (172, 'admin_1', '2021-08-12 06:00:06.000000', 'success', 'BorrowRecord', ' \'test_m1\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (173, 'admin_1', '2021-08-12 06:00:23.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (174, 'admin_1', '2021-08-12 06:01:56.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (175, 'admin_1', '2021-08-12 06:02:16.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (176, 'admin_1', '2021-08-12 06:02:27.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (177, 'yaozeliang', '2021-08-12 06:11:20.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_100\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (178, 'yaozeliang', '2021-08-12 06:15:14.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m1\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (179, 'yaozeliang', '2021-08-12 06:16:12.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (180, 'yaozeliang', '2021-08-12 06:26:27.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Claire Andson\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (181, 'yaozeliang', '2021-08-12 06:26:33.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Andrew Green\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (182, 'yaozeliang', '2021-08-12 10:48:02.000000', 'success', 'BorrowRecord', ' \'test_m3\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (183, 'yaozeliang', '2021-08-12 10:48:33.000000', 'success', 'BorrowRecord', ' \'test_m1\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (184, 'yaozeliang', '2021-08-12 10:49:06.000000', 'success', 'BorrowRecord', ' \'test_m1\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (185, 'yaozeliang', '2021-08-12 23:23:12.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (186, 'yaozeliang', '2021-08-12 23:23:25.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m1\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (187, 'yaozeliang', '2021-08-13 05:12:35.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (188, 'yaozeliang', '2021-08-13 05:31:30.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_100\'=>Your Titleo');
INSERT INTO `book_useractivity` VALUES (189, 'yaozeliang', '2021-08-13 05:37:31.000000', 'warning', 'Book', 'Update Book << Test Title >>');
INSERT INTO `book_useractivity` VALUES (190, 'yaozeliang', '2021-08-13 05:41:11.000000', 'success', 'Member', 'Create Member << Last Member >>');
INSERT INTO `book_useractivity` VALUES (191, 'yaozeliang', '2021-08-14 10:28:06.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_100');
INSERT INTO `book_useractivity` VALUES (192, 'yaozeliang', '2021-08-15 08:27:36.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<T3>>');
INSERT INTO `book_useractivity` VALUES (193, 'yaozeliang', '2021-08-15 09:03:24.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m1');
INSERT INTO `book_useractivity` VALUES (194, 'yaozeliang', '2021-08-15 09:03:28.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Claire Andson');
INSERT INTO `book_useractivity` VALUES (195, 'yaozeliang', '2021-08-15 09:03:32.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_100');
INSERT INTO `book_useractivity` VALUES (196, 'yaozeliang', '2021-08-15 09:03:33.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m7');
INSERT INTO `book_useractivity` VALUES (197, 'yaozeliang', '2021-08-15 09:05:05.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (198, 'yaozeliang', '2021-08-15 09:05:07.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m99');
INSERT INTO `book_useractivity` VALUES (199, 'yaozeliang', '2021-08-15 09:05:09.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m1');
INSERT INTO `book_useractivity` VALUES (200, 'yaozeliang', '2021-08-15 09:05:11.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Claire Andson');
INSERT INTO `book_useractivity` VALUES (201, 'yaozeliang', '2021-08-15 09:05:12.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord anderson green');
INSERT INTO `book_useractivity` VALUES (202, 'yaozeliang', '2021-08-15 09:05:14.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m1');
INSERT INTO `book_useractivity` VALUES (203, 'yaozeliang', '2021-08-15 09:05:26.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Andrew Green');
INSERT INTO `book_useractivity` VALUES (204, 'yaozeliang', '2021-08-15 09:06:22.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<T3>>');
INSERT INTO `book_useractivity` VALUES (205, 'yaozeliang', '2021-08-15 09:07:22.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<T3>>');
INSERT INTO `book_useractivity` VALUES (206, 'yaozeliang', '2021-08-16 01:14:56.000000', 'success', 'Category', 'Create Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (207, 'yaozeliang', '2021-08-16 04:42:44.000000', 'success', 'BorrowRecord', ' \'test_100\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (208, 'yaozeliang', '2021-08-16 04:46:44.000000', 'success', 'BorrowRecord', ' \'test_m2\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (209, 'yaozeliang', '2021-08-16 04:47:13.000000', 'success', 'BorrowRecord', ' \'test_m2\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (210, 'yaozeliang', '2021-08-16 04:48:11.000000', 'success', 'BorrowRecord', ' \'Emilia\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (211, 'yaozeliang', '2021-08-16 04:53:15.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (212, 'yaozeliang', '2021-08-18 10:28:32.000000', 'danger', 'Category', 'Delete Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (213, 'admin_2', '2021-08-20 00:27:25.000000', 'success', 'Publisher', 'Create Publisher << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (214, 'admin_2', '2021-08-20 00:27:30.000000', 'warning', 'Publisher', 'Update Publisher << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (215, 'admin_2', '2021-08-20 00:27:32.000000', 'danger', 'Publisher', 'Delete Publisher << 黄金 >>');
INSERT INTO `book_useractivity` VALUES (216, 'admin_2', '2021-08-20 00:28:50.000000', 'success', 'BorrowRecord', ' \'Last Member\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (217, 'admin_2', '2021-08-20 00:29:21.000000', 'success', 'BorrowRecord', ' \'Last Member\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (218, 'admin_2', '2021-08-20 00:29:59.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (219, 'admin_2', '2021-08-20 00:36:53.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Claire Andson\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (220, 'admin_2', '2021-08-20 00:38:55.000000', 'success', 'Book', 'Create Book << My favourite >>');
INSERT INTO `book_useractivity` VALUES (221, 'admin_2', '2021-08-20 00:39:31.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<My favourite>>');
INSERT INTO `book_useractivity` VALUES (222, 'admin_2', '2021-08-20 00:40:35.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Claire Andson\'=>My favourite');
INSERT INTO `book_useractivity` VALUES (223, 'admin_2', '2021-08-25 13:48:41.000000', 'success', 'BorrowRecord', ' \'Last Member\' borrowed <<My favourite>>');
INSERT INTO `book_useractivity` VALUES (224, 'admin_2', '2021-08-26 04:58:19.000000', 'success', 'BorrowRecord', ' \'Emilia\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (225, 'admin_1', '2021-08-27 12:22:47.000000', 'success', 'Category', 'Create Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (226, 'admin_1', '2021-08-27 12:26:56.000000', 'success', 'Category', 'Create Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (227, 'admin_1', '2021-08-27 12:27:00.000000', 'danger', 'Category', 'Delete Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (228, 'admin_1', '2021-08-27 12:27:01.000000', 'danger', 'Category', 'Delete Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (229, 'admin_1', '2021-08-27 12:27:04.000000', 'success', 'Category', 'Create Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (230, 'admin_1', '2021-08-28 03:30:12.000000', 'danger', 'Category', 'Delete Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (231, 'admin_1', '2021-08-28 03:30:16.000000', 'success', 'Category', 'Create Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (232, 'admin_1', '2021-08-28 03:35:34.000000', 'danger', 'Category', 'Delete Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (233, 'admin_1', '2021-08-28 03:35:38.000000', 'success', 'Category', 'Create Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (234, 'admin_1', '2021-08-28 03:40:02.000000', 'danger', 'Category', 'Delete Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (235, 'yaozeliang', '2021-08-29 06:39:26.000000', 'success', 'BorrowRecord', ' \'test_m5\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (236, 'yaozeliang', '2021-08-29 06:39:47.000000', 'success', 'BorrowRecord', ' \'test_m99\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (237, 'admin_1', '2021-08-29 07:14:32.000000', 'success', 'Category', 'Create Category << Headphone >>');
INSERT INTO `book_useractivity` VALUES (238, 'admin_1', '2021-08-29 07:19:03.000000', 'success', 'Category', 'Create Category << Watch >>');
INSERT INTO `book_useractivity` VALUES (239, 'admin_1', '2021-08-29 07:19:06.000000', 'danger', 'Category', 'Delete Category << Headphone >>');
INSERT INTO `book_useractivity` VALUES (240, 'admin_1', '2021-08-29 07:19:09.000000', 'danger', 'Category', 'Delete Category << Watch >>');
INSERT INTO `book_useractivity` VALUES (241, 'admin_1', '2021-08-29 07:19:41.000000', 'success', 'Member', 'Create Member << Lora >>');
INSERT INTO `book_useractivity` VALUES (242, 'admin_1', '2021-08-29 07:21:24.000000', 'success', 'Category', 'Create Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (243, 'admin_1', '2021-08-29 07:21:27.000000', 'danger', 'Category', 'Delete Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (244, 'admin_1', '2021-08-29 07:23:08.000000', 'success', 'Category', 'Create Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (245, 'admin_1', '2021-08-29 07:23:35.000000', 'danger', 'Member', 'Delete Member << Lora >>');
INSERT INTO `book_useractivity` VALUES (246, 'admin_1', '2021-08-29 07:29:50.000000', 'danger', 'Category', 'Delete Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (247, 'admin_1', '2021-08-29 07:29:55.000000', 'success', 'Category', 'Create Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (248, 'admin_1', '2021-08-29 07:33:01.000000', 'success', 'Member', 'Create Member << lora >>');
INSERT INTO `book_useractivity` VALUES (249, 'admin_1', '2021-08-29 07:33:10.000000', 'danger', 'Category', 'Delete Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (250, 'admin_1', '2021-08-29 07:33:23.000000', 'success', 'Category', 'Create Category << Fake Cat 67 >>');
INSERT INTO `book_useractivity` VALUES (251, 'admin_1', '2021-08-29 07:36:27.000000', 'warning', 'Member', 'Update Member << lora >>');
INSERT INTO `book_useractivity` VALUES (252, 'admin_1', '2021-08-29 07:36:30.000000', 'danger', 'Member', 'Delete Member << lora >>');
INSERT INTO `book_useractivity` VALUES (253, 'admin_1', '2021-08-29 10:56:11.000000', 'success', 'Category', 'Create Category << Fake Cat 999 >>');
INSERT INTO `book_useractivity` VALUES (254, 'admin_1', '2021-08-29 10:56:15.000000', 'danger', 'Category', 'Delete Category << Fake Cat 999 >>');
INSERT INTO `book_useractivity` VALUES (255, 'admin_1', '2021-08-29 10:56:57.000000', 'success', 'Member', 'Create Member << Lousen >>');
INSERT INTO `book_useractivity` VALUES (256, 'admin_1', '2021-08-29 11:08:52.000000', 'danger', 'Category', 'Delete Category << Fake Cat 67 >>');
INSERT INTO `book_useractivity` VALUES (257, 'admin_1', '2021-08-29 11:59:17.000000', 'success', 'Category', 'Create Category << Database >>');
INSERT INTO `book_useractivity` VALUES (258, 'admin_1', '2021-08-29 11:59:34.000000', 'success', 'Category', 'Create Category << Database >>');
INSERT INTO `book_useractivity` VALUES (259, 'admin_1', '2021-08-29 11:59:37.000000', 'danger', 'Category', 'Delete Category << Database >>');
INSERT INTO `book_useractivity` VALUES (260, 'admin_1', '2021-08-29 11:59:40.000000', 'danger', 'Category', 'Delete Category << Database >>');
INSERT INTO `book_useractivity` VALUES (261, 'admin_1', '2021-08-29 12:06:07.000000', 'success', 'Category', 'Create Category << Fake Cat 888 >>');
INSERT INTO `book_useractivity` VALUES (262, 'admin_1', '2021-08-29 12:06:09.000000', 'danger', 'Category', 'Delete Category << Fake Cat 888 >>');
INSERT INTO `book_useractivity` VALUES (263, 'yaozeliang', '2021-08-29 12:06:48.000000', 'success', 'Category', 'Create Category << Watch >>');
INSERT INTO `book_useractivity` VALUES (264, 'yaozeliang', '2021-08-29 12:09:01.000000', 'success', 'Category', 'Create Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (265, 'yaozeliang', '2021-08-29 12:09:03.000000', 'danger', 'Category', 'Delete Category << Watch >>');
INSERT INTO `book_useractivity` VALUES (266, 'yaozeliang', '2021-08-29 12:09:07.000000', 'danger', 'Category', 'Delete Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (267, 'yaozeliang', '2021-08-29 12:14:13.000000', 'success', 'Category', 'Create Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (268, 'yaozeliang', '2021-08-29 12:14:15.000000', 'danger', 'Category', 'Delete Category << 黄金年代 >>');
INSERT INTO `book_useractivity` VALUES (269, 'yaozeliang', '2021-08-29 12:18:41.000000', 'success', 'Category', 'Create Category << test_m3 >>');
INSERT INTO `book_useractivity` VALUES (270, 'yaozeliang', '2021-08-29 12:18:43.000000', 'danger', 'Category', 'Delete Category << test_m3 >>');
INSERT INTO `book_useractivity` VALUES (271, 'admin_2', '2021-08-29 12:31:19.000000', 'success', 'Category', 'Create Category << test_m4 >>');
INSERT INTO `book_useractivity` VALUES (272, 'admin_2', '2021-08-29 12:31:21.000000', 'danger', 'Category', 'Delete Category << test_m4 >>');
INSERT INTO `book_useractivity` VALUES (273, 'admin_2', '2021-08-29 12:38:01.000000', 'success', 'Publisher', 'Create Publisher << Fake Pub 99 >>');
INSERT INTO `book_useractivity` VALUES (274, 'admin_2', '2021-08-29 12:39:39.000000', 'danger', 'Publisher', 'Delete Publisher << Fake Pub 99 >>');
INSERT INTO `book_useractivity` VALUES (275, 'admin_1', '2021-08-29 12:44:12.000000', 'success', 'Category', 'Create Category << Lousen >>');
INSERT INTO `book_useractivity` VALUES (276, 'admin_1', '2021-08-29 12:44:15.000000', 'danger', 'Category', 'Delete Category << Lousen >>');
INSERT INTO `book_useractivity` VALUES (277, 'admin_1', '2021-08-29 12:44:45.000000', 'success', 'Publisher', 'Create Publisher << Fake Pub 98 >>');
INSERT INTO `book_useractivity` VALUES (278, 'admin_1', '2021-08-29 12:44:50.000000', 'danger', 'Publisher', 'Delete Publisher << Fake Pub 98 >>');
INSERT INTO `book_useractivity` VALUES (279, 'admin_1', '2021-08-29 12:47:15.000000', 'success', 'Category', 'Create Category << anderson green >>');
INSERT INTO `book_useractivity` VALUES (280, 'admin_1', '2021-08-29 12:47:16.000000', 'danger', 'Category', 'Delete Category << anderson green >>');
INSERT INTO `book_useractivity` VALUES (281, 'admin_1', '2021-08-29 12:47:41.000000', 'success', 'Publisher', 'Create Publisher << Fake Pub 900 >>');
INSERT INTO `book_useractivity` VALUES (282, 'admin_1', '2021-08-29 12:47:44.000000', 'danger', 'Publisher', 'Delete Publisher << Fake Pub 900 >>');
INSERT INTO `book_useractivity` VALUES (283, 'yaozeliang', '2021-08-29 12:48:45.000000', 'success', 'Category', 'Create Category << test_m4 >>');
INSERT INTO `book_useractivity` VALUES (284, 'yaozeliang', '2021-08-29 12:48:47.000000', 'danger', 'Category', 'Delete Category << test_m4 >>');
INSERT INTO `book_useractivity` VALUES (285, 'yaozeliang', '2021-08-29 12:52:02.000000', 'success', 'Category', 'Create Category << test_m4 >>');
INSERT INTO `book_useractivity` VALUES (286, 'yaozeliang', '2021-08-29 12:52:05.000000', 'danger', 'Category', 'Delete Category << test_m4 >>');
INSERT INTO `book_useractivity` VALUES (287, 'yaozeliang', '2021-08-29 12:57:26.000000', 'success', 'Publisher', 'Create Publisher << Fake Pub 99 >>');
INSERT INTO `book_useractivity` VALUES (288, 'yaozeliang', '2021-08-29 12:57:33.000000', 'danger', 'Publisher', 'Delete Publisher << Fake Pub 99 >>');
INSERT INTO `book_useractivity` VALUES (289, 'yaozeliang', '2021-08-30 04:01:38.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Last Member\'=>My favourite');
INSERT INTO `book_useractivity` VALUES (290, 'yaozeliang', '2021-08-30 04:01:48.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Last Member\'=>My favourite');
INSERT INTO `book_useractivity` VALUES (291, 'yaozeliang', '2021-08-30 04:05:14.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Last Member\'=>My favourite');
INSERT INTO `book_useractivity` VALUES (292, 'yaozeliang', '2021-08-30 04:10:10.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (293, 'yaozeliang', '2021-08-30 04:11:35.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (294, 'yaozeliang', '2021-08-30 04:12:54.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (295, 'yaozeliang', '2021-08-30 04:13:03.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (296, 'yaozeliang', '2021-08-30 04:14:10.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m99\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (297, 'yaozeliang', '2021-08-30 04:14:37.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m99\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (298, 'yaozeliang', '2021-08-30 04:15:02.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m99\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (299, 'yaozeliang', '2021-08-30 04:15:19.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m99\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (300, 'yaozeliang', '2021-08-30 04:15:26.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m99\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (301, 'yaozeliang', '2021-08-30 04:15:41.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (302, 'yaozeliang', '2021-08-30 04:15:54.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (303, 'yaozeliang', '2021-08-30 04:15:59.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (304, 'yaozeliang', '2021-08-30 04:16:16.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m99\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (305, 'yaozeliang', '2021-08-30 04:17:09.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Emilia\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (306, 'yaozeliang', '2021-08-30 04:17:28.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'test_m99\'=>MarkdownTestA');
INSERT INTO `book_useractivity` VALUES (307, 'yaozeliang', '2021-09-01 00:52:53.000000', 'success', 'Member', 'Create Member << Septemper User >>');
INSERT INTO `book_useractivity` VALUES (308, 'yaozeliang', '2021-09-06 14:35:28.000000', 'success', 'Member', 'Create Member << ooo >>');
INSERT INTO `book_useractivity` VALUES (309, 'yaozeliang', '2021-09-06 14:37:31.000000', 'success', 'BorrowRecord', ' \'ooo\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (310, 'yaozeliang', '2021-09-06 14:39:00.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'ooo\'=>Test Title');
INSERT INTO `book_useractivity` VALUES (311, 'yaozeliang', '2021-09-06 14:40:29.000000', 'warning', 'Member', 'Update Member << ooo >>');
INSERT INTO `book_useractivity` VALUES (312, 'admin_1', '2021-09-06 14:43:42.000000', 'success', 'Category', 'Create Category << ppppppppppppppp >>');
INSERT INTO `book_useractivity` VALUES (313, 'yaozeliang', '2021-09-07 11:31:15.000000', 'success', 'BorrowRecord', ' \'test_m5\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (314, 'yaozeliang', '2021-09-07 11:31:48.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<My favourite>>');
INSERT INTO `book_useractivity` VALUES (315, 'yaozeliang', '2021-09-07 11:32:36.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (316, 'yaozeliang', '2021-09-07 12:39:00.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (317, 'yaozeliang', '2021-09-07 12:39:03.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Andrew Green');
INSERT INTO `book_useractivity` VALUES (318, 'yaozeliang', '2021-09-07 22:46:15.000000', 'danger', 'Category', 'Delete Category << ppppppppppppppp >>');
INSERT INTO `book_useractivity` VALUES (319, 'yaozeliang', '2021-09-07 22:46:17.000000', 'danger', 'Category', 'Delete Category << ppppppppppppppp >>');
INSERT INTO `book_useractivity` VALUES (320, 'yaozeliang', '2021-09-08 04:59:46.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Claire Andson\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (321, 'yaozeliang', '2021-09-08 06:22:31.000000', 'success', 'Member', 'Create Member << total >>');
INSERT INTO `book_useractivity` VALUES (322, 'yaozeliang', '2021-09-08 06:23:29.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (323, 'admin_1', '2021-09-08 06:26:36.000000', 'success', 'Category', 'Create Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (324, 'yaozeliang', '2021-09-08 06:30:51.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (325, 'yaozeliang', '2021-09-08 23:54:31.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (326, 'yaozeliang', '2021-09-08 23:54:35.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (327, 'yaozeliang', '2021-09-08 23:54:53.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (328, 'yaozeliang', '2021-09-08 23:54:58.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (329, 'yaozeliang', '2021-09-08 23:55:21.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (330, 'yaozeliang', '2021-09-08 23:56:04.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (331, 'yaozeliang', '2021-09-08 23:58:54.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Claire Andson');
INSERT INTO `book_useractivity` VALUES (332, 'yaozeliang', '2021-09-10 13:09:55.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (333, 'yaozeliang', '2021-09-10 13:10:09.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (334, 'yaozeliang', '2021-09-10 13:10:12.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Claire Andson');
INSERT INTO `book_useractivity` VALUES (335, 'yaozeliang', '2021-09-10 13:10:39.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (336, 'yaozeliang', '2021-09-10 13:14:11.000000', 'success', 'BorrowRecord', ' \'Septemper User\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (337, 'yaozeliang', '2021-09-10 13:18:50.000000', 'success', 'BorrowRecord', ' \'Septemper User\' borrowed <<My favourite>>');
INSERT INTO `book_useractivity` VALUES (338, 'yaozeliang', '2021-09-10 13:21:18.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (339, 'yaozeliang', '2021-09-10 13:24:02.000000', 'success', 'BorrowRecord', ' \'Septemper User\' borrowed <<Test Title>>');
INSERT INTO `book_useractivity` VALUES (340, 'yaozeliang', '2021-09-10 13:27:38.000000', 'success', 'BorrowRecord', ' \'Septemper User\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (341, 'yaozeliang', '2021-09-10 13:28:22.000000', 'success', 'BorrowRecord', ' \'Septemper User\' borrowed <<T1>>');
INSERT INTO `book_useractivity` VALUES (342, 'yaozeliang', '2021-09-10 13:29:12.000000', 'success', 'BorrowRecord', ' \'Lousen\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (343, 'yaozeliang', '2021-09-10 13:31:53.000000', 'success', 'BorrowRecord', ' \'Emilia\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (344, 'yaozeliang', '2021-09-10 13:34:19.000000', 'success', 'BorrowRecord', ' \'Emilia\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (345, 'yaozeliang', '2021-09-10 13:34:59.000000', 'success', 'BorrowRecord', ' \'Last Member\' borrowed <<Harry Potter and magic stone>>');
INSERT INTO `book_useractivity` VALUES (346, 'yaozeliang', '2021-09-10 13:36:36.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (347, 'yaozeliang', '2021-09-10 13:38:29.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (348, 'yaozeliang', '2021-09-10 13:40:38.000000', 'success', 'BorrowRecord', ' \'Last Member\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (349, 'yaozeliang', '2021-09-10 13:41:24.000000', 'success', 'BorrowRecord', ' \'anderson green\' borrowed <<My favourite>>');
INSERT INTO `book_useractivity` VALUES (350, 'yaozeliang', '2021-09-10 13:53:30.000000', 'success', 'BorrowRecord', ' \'John Brown\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (351, 'yaozeliang', '2021-09-10 14:24:49.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (352, 'yaozeliang', '2021-09-10 14:44:20.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (353, 'yaozeliang', '2021-09-10 14:45:42.000000', 'success', 'BorrowRecord', ' \'Emilia\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (354, 'yaozeliang', '2021-09-10 14:47:08.000000', 'success', 'BorrowRecord', ' \'Claire Andson\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (355, 'yaozeliang', '2021-09-10 14:49:23.000000', 'success', 'BorrowRecord', ' \'Andrew Green\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (356, 'yaozeliang', '2021-09-10 14:51:07.000000', 'success', 'BorrowRecord', ' \'anderson green\' borrowed <<Harry Potter Children\'s Collection>>');
INSERT INTO `book_useractivity` VALUES (357, 'yaozeliang', '2021-09-10 14:57:00.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<MarkdownTestA>>');
INSERT INTO `book_useractivity` VALUES (358, 'yaozeliang', '2021-09-10 14:57:47.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (359, 'yaozeliang', '2021-09-10 14:59:21.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (360, 'yaozeliang', '2021-09-10 15:04:20.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<T1>>');
INSERT INTO `book_useractivity` VALUES (361, 'yaozeliang', '2021-09-10 15:05:33.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (362, 'yaozeliang', '2021-09-10 15:05:34.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (363, 'yaozeliang', '2021-09-10 15:05:41.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'Claire Andson\'=>Amazing Test Book');
INSERT INTO `book_useractivity` VALUES (364, 'yaozeliang', '2021-09-10 15:06:12.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (365, 'yaozeliang', '2021-09-10 15:12:00.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<Your Titleo>>');
INSERT INTO `book_useractivity` VALUES (366, 'yaozeliang', '2021-09-10 15:12:08.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'total\'=>Your Titleo');
INSERT INTO `book_useractivity` VALUES (367, 'yaozeliang', '2021-09-11 03:31:26.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<Amazing Test Book>>');
INSERT INTO `book_useractivity` VALUES (368, 'yaozeliang', '2021-09-11 03:37:54.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<T2>>');
INSERT INTO `book_useractivity` VALUES (369, 'yaozeliang', '2021-09-11 03:37:54.000000', 'success', 'BorrowRecord', ' \'total\' borrowed <<T2>>');
INSERT INTO `book_useractivity` VALUES (370, 'yaozeliang', '2021-09-11 03:42:25.000000', 'success', 'BorrowRecord', ' \'Septemper User\' borrowed <<Best Book>>');
INSERT INTO `book_useractivity` VALUES (371, 'woaixuexi_666', '2022-07-20 04:08:28.000000', 'success', 'Category', 'Create Category << 科幻小说 >>');
INSERT INTO `book_useractivity` VALUES (372, 'woaixuexi_666', '2022-07-20 04:10:27.000000', 'danger', 'Book', 'Delete Book << T3 >>');
INSERT INTO `book_useractivity` VALUES (373, 'woaixuexi_666', '2022-07-20 04:11:07.000000', 'danger', 'Book', 'Delete Book << MarkdownTestA >>');
INSERT INTO `book_useractivity` VALUES (374, 'woaixuexi_666', '2022-07-20 04:11:08.000000', 'danger', 'Book', 'Delete Book << Harry Potter Children\'s Collection >>');
INSERT INTO `book_useractivity` VALUES (375, 'woaixuexi_666', '2022-07-20 04:11:09.000000', 'danger', 'Book', 'Delete Book << My favourite >>');
INSERT INTO `book_useractivity` VALUES (376, 'woaixuexi_666', '2022-07-20 04:11:09.000000', 'danger', 'Book', 'Delete Book << Harry Potter and magic stone >>');
INSERT INTO `book_useractivity` VALUES (377, 'woaixuexi_666', '2022-07-20 04:11:10.000000', 'danger', 'Book', 'Delete Book << Test Title >>');
INSERT INTO `book_useractivity` VALUES (378, 'woaixuexi_666', '2022-07-20 04:11:19.000000', 'danger', 'Book', 'Delete Book << Best Book >>');
INSERT INTO `book_useractivity` VALUES (379, 'woaixuexi_666', '2022-07-20 04:11:20.000000', 'danger', 'Book', 'Delete Book << T2 >>');
INSERT INTO `book_useractivity` VALUES (380, 'woaixuexi_666', '2022-07-20 04:11:20.000000', 'danger', 'Book', 'Delete Book << Amazing Test Book >>');
INSERT INTO `book_useractivity` VALUES (381, 'woaixuexi_666', '2022-07-20 04:11:21.000000', 'danger', 'Book', 'Delete Book << Your Titleo >>');
INSERT INTO `book_useractivity` VALUES (382, 'woaixuexi_666', '2022-07-20 04:11:21.000000', 'danger', 'Book', 'Delete Book << T1 >>');
INSERT INTO `book_useractivity` VALUES (383, 'woaixuexi_666', '2022-07-20 04:12:32.000000', 'danger', 'Category', 'Delete Category << Zeliang YAO >>');
INSERT INTO `book_useractivity` VALUES (384, 'woaixuexi_666', '2022-07-20 04:12:33.000000', 'danger', 'Category', 'Delete Category << Fashion >>');
INSERT INTO `book_useractivity` VALUES (385, 'woaixuexi_666', '2022-07-20 04:12:33.000000', 'danger', 'Category', 'Delete Category << Comic >>');
INSERT INTO `book_useractivity` VALUES (386, 'woaixuexi_666', '2022-07-20 04:12:34.000000', 'danger', 'Category', 'Delete Category << Literary Fiction >>');
INSERT INTO `book_useractivity` VALUES (387, 'woaixuexi_666', '2022-07-20 04:12:50.000000', 'danger', 'Category', 'Delete Category << Detective and Mystery >>');
INSERT INTO `book_useractivity` VALUES (388, 'woaixuexi_666', '2022-07-20 04:12:50.000000', 'danger', 'Category', 'Delete Category << Watch >>');
INSERT INTO `book_useractivity` VALUES (389, 'woaixuexi_666', '2022-07-20 04:12:50.000000', 'danger', 'Category', 'Delete Category << Fiction >>');
INSERT INTO `book_useractivity` VALUES (390, 'woaixuexi_666', '2022-07-20 04:12:51.000000', 'danger', 'Category', 'Delete Category << Computers & Tech >>');
INSERT INTO `book_useractivity` VALUES (391, 'woaixuexi_666', '2022-07-20 04:12:58.000000', 'danger', 'Category', 'Delete Category << Finance >>');
INSERT INTO `book_useractivity` VALUES (392, 'woaixuexi_666', '2022-07-20 04:12:59.000000', 'danger', 'Category', 'Delete Category << Historical >>');
INSERT INTO `book_useractivity` VALUES (393, 'woaixuexi_666', '2022-07-20 04:12:59.000000', 'danger', 'Category', 'Delete Category << Fantasy >>');
INSERT INTO `book_useractivity` VALUES (394, 'woaixuexi_666', '2022-07-20 04:13:00.000000', 'danger', 'Category', 'Delete Category << Cooking >>');
INSERT INTO `book_useractivity` VALUES (395, 'woaixuexi_666', '2022-07-20 04:13:08.000000', 'danger', 'Category', 'Delete Category << Economics >>');
INSERT INTO `book_useractivity` VALUES (396, 'woaixuexi_666', '2022-07-20 04:13:53.000000', 'danger', 'Category', 'Delete Category << 科幻小说 >>');
INSERT INTO `book_useractivity` VALUES (397, 'woaixuexi_666', '2022-07-20 04:14:34.000000', 'success', 'Category', 'Create Category << 人文类图书 >>');
INSERT INTO `book_useractivity` VALUES (398, 'woaixuexi_666', '2022-07-20 04:14:45.000000', 'success', 'Category', 'Create Category << 自然类图书 >>');
INSERT INTO `book_useractivity` VALUES (399, 'woaixuexi_666', '2022-07-20 04:16:38.000000', 'success', 'Category', 'Create Category << A哲学类图书 >>');
INSERT INTO `book_useractivity` VALUES (400, 'woaixuexi_666', '2022-07-20 04:17:01.000000', 'success', 'Category', 'Create Category << B宗教类图书 >>');
INSERT INTO `book_useractivity` VALUES (401, 'woaixuexi_666', '2022-07-20 04:19:35.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Septemper User');
INSERT INTO `book_useractivity` VALUES (402, 'woaixuexi_666', '2022-07-20 04:19:36.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (403, 'woaixuexi_666', '2022-07-20 04:19:37.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (404, 'woaixuexi_666', '2022-07-20 04:19:37.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (405, 'woaixuexi_666', '2022-07-20 04:19:38.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord total');
INSERT INTO `book_useractivity` VALUES (406, 'woaixuexi_666', '2022-07-20 04:20:23.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Claire Andson');
INSERT INTO `book_useractivity` VALUES (407, 'woaixuexi_666', '2022-07-20 04:20:23.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Andrew Green');
INSERT INTO `book_useractivity` VALUES (408, 'woaixuexi_666', '2022-07-20 04:20:24.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord ooo');
INSERT INTO `book_useractivity` VALUES (409, 'woaixuexi_666', '2022-07-20 04:20:24.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_m99');
INSERT INTO `book_useractivity` VALUES (410, 'woaixuexi_666', '2022-07-20 04:20:25.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Emilia');
INSERT INTO `book_useractivity` VALUES (411, 'woaixuexi_666', '2022-07-20 04:20:32.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Last Member');
INSERT INTO `book_useractivity` VALUES (412, 'woaixuexi_666', '2022-07-20 04:20:33.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Claire Andson');
INSERT INTO `book_useractivity` VALUES (413, 'woaixuexi_666', '2022-07-20 04:20:34.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Claire Andson');
INSERT INTO `book_useractivity` VALUES (414, 'woaixuexi_666', '2022-07-20 04:20:34.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord Emilia');
INSERT INTO `book_useractivity` VALUES (415, 'woaixuexi_666', '2022-07-20 04:20:35.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_100');
INSERT INTO `book_useractivity` VALUES (416, 'woaixuexi_666', '2022-07-20 04:20:45.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_100');
INSERT INTO `book_useractivity` VALUES (417, 'woaixuexi_666', '2022-07-20 04:20:46.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord John Brown');
INSERT INTO `book_useractivity` VALUES (418, 'woaixuexi_666', '2022-07-20 04:20:46.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_100');
INSERT INTO `book_useractivity` VALUES (419, 'woaixuexi_666', '2022-07-20 04:20:47.000000', 'danger', 'BorrowRecord', 'Delete BorrowRecord test_100');
INSERT INTO `book_useractivity` VALUES (420, 'woaixuexi_666', '2022-07-20 04:30:08.000000', 'success', 'Category', 'Create Category << 小说类图书 >>');
INSERT INTO `book_useractivity` VALUES (421, 'woaixuexi_666', '2022-07-20 04:31:53.000000', 'success', 'Category', 'Create Category << 传记类图书 >>');
INSERT INTO `book_useractivity` VALUES (422, 'woaixuexi_666', '2022-07-20 04:32:19.000000', 'success', 'Category', 'Create Category << 实用类图书 >>');
INSERT INTO `book_useractivity` VALUES (423, 'woaixuexi_666', '2022-07-20 04:33:12.000000', 'success', 'Category', 'Create Category << 漫画类图书 >>');
INSERT INTO `book_useractivity` VALUES (424, 'woaixuexi_666', '2022-07-20 04:33:47.000000', 'success', 'Category', 'Create Category << 学术类图书 >>');
INSERT INTO `book_useractivity` VALUES (425, 'woaixuexi_666', '2022-07-20 04:34:47.000000', 'success', 'Category', 'Create Category << 军事类图书 >>');
INSERT INTO `book_useractivity` VALUES (426, 'woaixuexi_666', '2022-07-20 04:35:03.000000', 'success', 'Category', 'Create Category << 历史类图书 >>');
INSERT INTO `book_useractivity` VALUES (427, 'woaixuexi_666', '2022-07-20 04:39:39.000000', 'success', 'Publisher', 'Create Publisher << 人民教育出版社 >>');
INSERT INTO `book_useractivity` VALUES (428, 'woaixuexi_666', '2022-07-20 04:39:53.000000', 'danger', 'Publisher', 'Delete Publisher << Fake Pub 99 >>');
INSERT INTO `book_useractivity` VALUES (429, 'woaixuexi_666', '2022-07-20 04:39:54.000000', 'danger', 'Publisher', 'Delete Publisher << Fake Pub 5 >>');
INSERT INTO `book_useractivity` VALUES (430, 'woaixuexi_666', '2022-07-20 04:39:54.000000', 'danger', 'Publisher', 'Delete Publisher << Pub4 >>');
INSERT INTO `book_useractivity` VALUES (431, 'woaixuexi_666', '2022-07-20 04:39:55.000000', 'danger', 'Publisher', 'Delete Publisher << Pub3 >>');
INSERT INTO `book_useractivity` VALUES (432, 'woaixuexi_666', '2022-07-20 04:40:28.000000', 'danger', 'Publisher', 'Delete Publisher << Pub2 >>');
INSERT INTO `book_useractivity` VALUES (433, 'woaixuexi_666', '2022-07-20 04:40:28.000000', 'danger', 'Publisher', 'Delete Publisher << Pub1 >>');
INSERT INTO `book_useractivity` VALUES (434, 'woaixuexi_666', '2022-07-20 04:43:58.000000', 'success', 'Publisher', 'Create Publisher << 人民文学出版社 >>');
INSERT INTO `book_useractivity` VALUES (435, 'woaixuexi_666', '2022-07-20 04:48:36.000000', 'success', 'Publisher', 'Create Publisher << 三联书店 >>');
INSERT INTO `book_useractivity` VALUES (436, 'woaixuexi_666', '2022-07-20 04:50:01.000000', 'success', 'Publisher', 'Create Publisher << 商务印书馆 >>');
INSERT INTO `book_useractivity` VALUES (437, 'woaixuexi_666', '2022-07-21 20:04:35.000000', 'danger', 'Member', 'Delete Member << total >>');
INSERT INTO `book_useractivity` VALUES (438, 'woaixuexi_666', '2022-07-21 20:04:47.000000', 'danger', 'Member', 'Delete Member << Septemper User >>');
INSERT INTO `book_useractivity` VALUES (439, 'woaixuexi_666', '2022-07-21 20:04:49.000000', 'danger', 'Member', 'Delete Member << Last Member >>');
INSERT INTO `book_useractivity` VALUES (440, 'woaixuexi_666', '2022-07-21 20:04:50.000000', 'danger', 'Member', 'Delete Member << test_100 >>');
INSERT INTO `book_useractivity` VALUES (441, 'woaixuexi_666', '2022-07-21 20:04:50.000000', 'danger', 'Member', 'Delete Member << test_m99 >>');
INSERT INTO `book_useractivity` VALUES (442, 'woaixuexi_666', '2022-07-21 20:04:51.000000', 'danger', 'Member', 'Delete Member << ooo >>');
INSERT INTO `book_useractivity` VALUES (443, 'woaixuexi_666', '2022-07-21 20:04:54.000000', 'danger', 'Member', 'Delete Member << Lousen >>');
INSERT INTO `book_useractivity` VALUES (444, 'woaixuexi_666', '2022-07-21 20:04:55.000000', 'danger', 'Member', 'Delete Member << anderson green >>');
INSERT INTO `book_useractivity` VALUES (445, 'woaixuexi_666', '2022-07-21 20:04:55.000000', 'danger', 'Member', 'Delete Member << Emilia >>');
INSERT INTO `book_useractivity` VALUES (446, 'woaixuexi_666', '2022-07-21 20:04:56.000000', 'danger', 'Member', 'Delete Member << Claire Andson >>');
INSERT INTO `book_useractivity` VALUES (447, 'woaixuexi_666', '2022-07-21 20:04:57.000000', 'danger', 'Member', 'Delete Member << Andrew Green >>');
INSERT INTO `book_useractivity` VALUES (448, 'woaixuexi_666', '2022-07-21 20:04:59.000000', 'danger', 'Member', 'Delete Member << John Johnson >>');
INSERT INTO `book_useractivity` VALUES (449, 'woaixuexi_666', '2022-07-21 20:05:01.000000', 'danger', 'Member', 'Delete Member << test_m5 >>');
INSERT INTO `book_useractivity` VALUES (450, 'woaixuexi_666', '2022-07-21 20:05:01.000000', 'danger', 'Member', 'Delete Member << test_m6 >>');
INSERT INTO `book_useractivity` VALUES (451, 'woaixuexi_666', '2022-07-21 20:05:02.000000', 'danger', 'Member', 'Delete Member << test_m4 >>');
INSERT INTO `book_useractivity` VALUES (452, 'woaixuexi_666', '2022-07-21 20:05:05.000000', 'danger', 'Member', 'Delete Member << John Brown >>');
INSERT INTO `book_useractivity` VALUES (453, 'woaixuexi_666', '2022-07-21 20:05:06.000000', 'danger', 'Member', 'Delete Member << test_m7 >>');
INSERT INTO `book_useractivity` VALUES (454, 'woaixuexi_666', '2022-07-21 20:05:06.000000', 'danger', 'Member', 'Delete Member << test_m2 >>');
INSERT INTO `book_useractivity` VALUES (455, 'woaixuexi_666', '2022-07-21 20:05:06.000000', 'danger', 'Member', 'Delete Member << test_m3 >>');
INSERT INTO `book_useractivity` VALUES (456, 'woaixuexi_666', '2022-07-21 20:05:07.000000', 'danger', 'Member', 'Delete Member << test_m1 >>');
INSERT INTO `book_useractivity` VALUES (457, 'woaixuexi_666', '2022-07-21 20:21:32.000000', 'success', 'Member', 'Create Member << tinley >>');
INSERT INTO `book_useractivity` VALUES (458, 'woaixuexi_666', '2022-07-21 20:27:55.000000', 'success', 'Member', 'Create Member << baumeister >>');
INSERT INTO `book_useractivity` VALUES (459, 'woaixuexi_666', '2022-07-21 20:28:37.000000', 'success', 'Member', 'Create Member << burkhard >>');
INSERT INTO `book_useractivity` VALUES (460, 'woaixuexi_666', '2022-07-21 20:29:09.000000', 'success', 'Member', 'Create Member << cummins >>');
INSERT INTO `book_useractivity` VALUES (461, 'woaixuexi_666', '2022-07-21 20:30:25.000000', 'success', 'Member', 'Create Member << clooney >>');
INSERT INTO `book_useractivity` VALUES (462, 'woaixuexi_666', '2022-07-21 22:14:11.000000', 'success', 'Book', 'Create Book << 《平凡的世界》 >>');
INSERT INTO `book_useractivity` VALUES (463, 'woaixuexi_666', '2022-07-21 22:16:57.000000', 'success', 'Book', 'Create Book << 《活着》 >>');
INSERT INTO `book_useractivity` VALUES (464, 'woaixuexi_666', '2022-07-21 22:17:48.000000', 'success', 'Book', 'Create Book << 《三体》 >>');
INSERT INTO `book_useractivity` VALUES (465, 'woaixuexi_666', '2022-07-21 22:19:54.000000', 'success', 'Book', 'Create Book << 《如何阅读一本书》 >>');
INSERT INTO `book_useractivity` VALUES (466, 'woaixuexi_666', '2022-07-21 22:21:08.000000', 'success', 'Book', 'Create Book << 《明朝那些事》 >>');
INSERT INTO `book_useractivity` VALUES (467, 'woaixuexi_666', '2022-07-21 22:24:58.000000', 'success', 'BorrowRecord', ' \'cummins\' borrowed <<《活着》>>');
INSERT INTO `book_useractivity` VALUES (468, 'woaixuexi_666', '2022-07-21 22:25:35.000000', 'success', 'BorrowRecord', ' \'burkhard\' borrowed <<《平凡的世界》>>');
INSERT INTO `book_useractivity` VALUES (469, 'woaixuexi_666', '2022-07-21 22:26:00.000000', 'success', 'BorrowRecord', ' \'tinley\' borrowed <<《三体》>>');
INSERT INTO `book_useractivity` VALUES (470, 'woaixuexi_666', '2022-07-21 22:27:13.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'tinley\'=>《三体》');
INSERT INTO `book_useractivity` VALUES (471, 'woaixuexi_666', '2022-07-21 22:27:23.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'burkhard\'=>《平凡的世界》');
INSERT INTO `book_useractivity` VALUES (472, 'woaixuexi_666', '2022-07-21 22:27:27.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'cummins\'=>《活着》');
INSERT INTO `book_useractivity` VALUES (473, 'root123', '2024-04-01 02:37:15.000000', 'success', 'Member', 'Create Member << 张三 >>');
INSERT INTO `book_useractivity` VALUES (474, 'root123', '2024-04-03 01:43:26.000000', 'danger', 'Book', 'Delete Book << 李四游记 >>');
INSERT INTO `book_useractivity` VALUES (475, 'root123', '2024-04-03 01:43:33.000000', 'danger', 'Book', 'Delete Book << 张三游记 >>');
INSERT INTO `book_useractivity` VALUES (476, 'root123', '2024-04-03 01:54:10.000000', 'danger', 'Book', 'Delete Book << 李四游记 >>');
INSERT INTO `book_useractivity` VALUES (477, 'root123', '2024-04-03 01:54:21.000000', 'danger', 'Book', 'Delete Book << 张三游记 >>');
INSERT INTO `book_useractivity` VALUES (478, 'root123', '2024-04-03 02:26:26.000000', 'danger', 'Book', 'Delete Book << 赵六游记 >>');
INSERT INTO `book_useractivity` VALUES (479, 'root123', '2024-04-03 02:26:33.000000', 'danger', 'Book', 'Delete Book << 王五游记 >>');
INSERT INTO `book_useractivity` VALUES (480, 'root123', '2024-04-03 02:27:05.000000', 'danger', 'Book', 'Delete Book << 李四游记 >>');
INSERT INTO `book_useractivity` VALUES (481, 'root123', '2024-04-03 02:27:11.000000', 'danger', 'Book', 'Delete Book << 张三游记 >>');
INSERT INTO `book_useractivity` VALUES (482, 'root123', '2024-04-03 03:59:32.000000', 'danger', 'Book', 'Delete Book << 赵六游记 >>');
INSERT INTO `book_useractivity` VALUES (483, 'root123', '2024-04-03 03:59:38.000000', 'danger', 'Book', 'Delete Book << 王五游记 >>');
INSERT INTO `book_useractivity` VALUES (484, 'root123', '2024-04-03 03:59:42.000000', 'danger', 'Book', 'Delete Book << 李四游记 >>');
INSERT INTO `book_useractivity` VALUES (485, 'root123', '2024-04-03 03:59:46.000000', 'danger', 'Book', 'Delete Book << 张三游记 >>');
INSERT INTO `book_useractivity` VALUES (486, 'root123', '2024-04-03 05:13:40.000000', 'danger', 'Book', 'Delete Book << 赵六游记 >>');
INSERT INTO `book_useractivity` VALUES (487, 'root123', '2024-04-03 05:13:43.000000', 'danger', 'Book', 'Delete Book << 王五游记 >>');
INSERT INTO `book_useractivity` VALUES (488, 'root123', '2024-04-03 05:16:56.000000', 'danger', 'Book', 'Delete Book << 李四游记 >>');
INSERT INTO `book_useractivity` VALUES (489, 'root123', '2024-04-03 05:17:01.000000', 'danger', 'Book', 'Delete Book << 张三游记 >>');
INSERT INTO `book_useractivity` VALUES (490, 'root123', '2024-04-03 10:07:27.000000', 'danger', 'Book', 'Delete Book << 赵六游记 >>');
INSERT INTO `book_useractivity` VALUES (491, 'root123', '2024-04-03 10:07:30.000000', 'danger', 'Book', 'Delete Book << 王五游记 >>');
INSERT INTO `book_useractivity` VALUES (492, 'root123', '2024-04-03 10:07:34.000000', 'danger', 'Book', 'Delete Book << 李四游记 >>');
INSERT INTO `book_useractivity` VALUES (493, 'root123', '2024-04-03 10:07:39.000000', 'danger', 'Book', 'Delete Book << 张三游记 >>');
INSERT INTO `book_useractivity` VALUES (494, 'root123', '2024-04-03 10:08:19.000000', 'danger', 'Book', 'Delete Book << 赵六游记 >>');
INSERT INTO `book_useractivity` VALUES (495, 'root123', '2024-04-03 10:08:22.000000', 'danger', 'Book', 'Delete Book << 王五游记 >>');
INSERT INTO `book_useractivity` VALUES (496, 'root123', '2024-04-03 10:08:26.000000', 'danger', 'Book', 'Delete Book << 李四游记 >>');
INSERT INTO `book_useractivity` VALUES (497, 'root123', '2024-04-03 10:08:29.000000', 'danger', 'Book', 'Delete Book << 张三游记 >>');
INSERT INTO `book_useractivity` VALUES (498, 'root1233', '2024-05-05 21:15:55.000000', 'warning', 'Member', 'Update Member << clooney >>');
INSERT INTO `book_useractivity` VALUES (499, 'root1233', '2024-05-05 21:16:10.000000', 'warning', 'Member', 'Update Member << l莉丝 >>');
INSERT INTO `book_useractivity` VALUES (500, 'root1233', '2024-05-05 21:16:23.000000', 'warning', 'Member', 'Update Member << cummins >>');
INSERT INTO `book_useractivity` VALUES (501, 'root1233', '2024-05-05 21:16:27.000000', 'danger', 'Member', 'Delete Member << burkhard >>');
INSERT INTO `book_useractivity` VALUES (502, 'root1233', '2024-05-05 21:16:46.000000', 'warning', 'Member', 'Update Member << baumeister >>');
INSERT INTO `book_useractivity` VALUES (503, 'root1233', '2024-05-05 21:17:03.000000', 'warning', 'Member', 'Update Member << tinley >>');
INSERT INTO `book_useractivity` VALUES (504, 'root1233', '2024-05-05 21:17:25.000000', 'danger', 'Publisher', 'Delete Publisher << 李斯 >>');
INSERT INTO `book_useractivity` VALUES (505, 'root0', '2024-09-09 04:07:04.000000', 'success', 'BorrowRecord', ' \'张三\' borrowed <<《活着》>>');
INSERT INTO `book_useractivity` VALUES (506, 'root0', '2024-09-09 04:07:54.000000', 'info', 'BorrowRecord', 'Close BorrowRecord \'张三\'=>《活着》');
INSERT INTO `book_useractivity` VALUES (507, 'lw123', '2025-03-30 22:38:07.000000', 'success', 'Book', 'Create Book << 12312312 >>');
INSERT INTO `book_useractivity` VALUES (508, 'lw123', '2025-03-30 22:38:15.000000', 'danger', 'Book', 'Delete Book << 12312312 >>');
INSERT INTO `book_useractivity` VALUES (509, 'admin', '2025-05-02 02:38:37.906298', 'success', 'Member', 'Create Member << l.l.d >>');
INSERT INTO `book_useractivity` VALUES (510, 'admin', '2025-05-02 02:39:28.546070', 'danger', 'Member', 'Delete Member << l.l.d >>');
INSERT INTO `book_useractivity` VALUES (511, 'admin', '2025-05-02 02:39:56.132179', 'success', 'Member', 'Create Member << 2 >>');
INSERT INTO `book_useractivity` VALUES (512, 'admin', '2025-05-02 02:40:07.508338', 'success', 'Member', 'Create Member << l.l.d >>');
INSERT INTO `book_useractivity` VALUES (513, 'admin', '2025-05-02 02:44:48.418619', 'danger', 'Member', 'Delete Member << l.l.d >>');
INSERT INTO `book_useractivity` VALUES (514, 'admin', '2025-05-02 02:49:00.489501', 'success', 'Member', 'Create Member << 123 >>');
INSERT INTO `book_useractivity` VALUES (515, 'admin', '2025-05-02 03:35:02.014140', 'danger', 'Member', 'Delete Member << 123 >>');
INSERT INTO `book_useractivity` VALUES (516, 'admin', '2025-05-02 03:35:05.557701', 'danger', 'Member', 'Delete Member << 2 >>');
INSERT INTO `book_useractivity` VALUES (517, 'admin', '2025-05-02 03:38:22.722710', 'success', 'Member', 'Create Member << 2 >>');
INSERT INTO `book_useractivity` VALUES (518, 'admin', '2025-05-02 03:38:31.297441', 'danger', 'Member', 'Delete Member << 2 >>');
INSERT INTO `book_useractivity` VALUES (519, 'user_test', '2025-05-02 03:46:09.811830', 'danger', 'Member', 'Delete Member << 郭思 >>');
INSERT INTO `book_useractivity` VALUES (520, 'user_test', '2025-05-02 03:48:05.324132', 'success', 'Member', 'Create Member << 213421 >>');
INSERT INTO `book_useractivity` VALUES (521, 'user_test', '2025-05-02 03:48:08.366920', 'danger', 'Member', 'Delete Member << 213421 >>');
INSERT INTO `book_useractivity` VALUES (522, 'user_test', '2025-05-02 03:49:58.668863', 'success', 'Member', 'Create Member << l.l.d >>');
INSERT INTO `book_useractivity` VALUES (523, 'user_test', '2025-05-02 03:50:02.386886', 'danger', 'Member', 'Delete Member << l.l.d >>');
INSERT INTO `book_useractivity` VALUES (524, 'admin', '2025-05-02 04:15:37.409927', 'success', 'BorrowRecord', ' \'张三\' borrowed <<《三体》>>');
INSERT INTO `book_useractivity` VALUES (525, 'admin', '2025-05-02 04:15:42.478462', 'danger', 'BorrowRecord', 'Delete BorrowRecord 张三');

-- ----------------------------
-- Table structure for comment_comment
-- ----------------------------
DROP TABLE IF EXISTS `comment_comment`;
CREATE TABLE `comment_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `book_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comment_comment_book_id_60245be4_fk_book_book_id`(`book_id`) USING BTREE,
  INDEX `comment_comment_user_id_6078e57b_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `comment_comment_book_id_60245be4_fk_book_book_id` FOREIGN KEY (`book_id`) REFERENCES `book_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_comment
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (11, 'book', 'book');
INSERT INTO `django_content_type` VALUES (13, 'book', 'borrowrecord');
INSERT INTO `django_content_type` VALUES (12, 'book', 'category');
INSERT INTO `django_content_type` VALUES (7, 'book', 'member');
INSERT INTO `django_content_type` VALUES (9, 'book', 'profile');
INSERT INTO `django_content_type` VALUES (10, 'book', 'publisher');
INSERT INTO `django_content_type` VALUES (8, 'book', 'useractivity');
INSERT INTO `django_content_type` VALUES (14, 'comment', 'comment');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (15, 'notifications', 'notification');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-06-29 11:45:57.000000');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-06-29 11:45:57.000000');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-06-29 11:45:57.000000');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-06-29 11:45:57.000000');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-29 11:45:57.000000');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-06-29 11:45:57.000000');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-06-29 11:45:57.000000');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-06-29 11:45:57.000000');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2021-06-29 11:45:58.000000');
INSERT INTO `django_migrations` VALUES (18, 'book', '0001_initial', '2021-07-31 10:18:07.000000');
INSERT INTO `django_migrations` VALUES (19, 'book', '0002_borrowrecord', '2021-08-02 04:37:42.000000');
INSERT INTO `django_migrations` VALUES (20, 'book', '0003_auto_20210802_1503', '2021-08-02 05:03:33.000000');
INSERT INTO `django_migrations` VALUES (21, 'book', '0004_auto_20210802_1943', '2021-08-02 09:43:15.000000');
INSERT INTO `django_migrations` VALUES (22, 'book', '0005_auto_20210803_2010', '2021-08-03 10:11:00.000000');
INSERT INTO `django_migrations` VALUES (23, 'book', '0006_auto_20210803_2022', '2021-08-03 10:22:12.000000');
INSERT INTO `django_migrations` VALUES (24, 'book', '0007_auto_20210803_2043', '2021-08-03 10:43:39.000000');
INSERT INTO `django_migrations` VALUES (25, 'book', '0008_auto_20210803_2103', '2021-08-03 11:03:32.000000');
INSERT INTO `django_migrations` VALUES (26, 'book', '0009_auto_20210804_1936', '2021-08-04 09:36:11.000000');
INSERT INTO `django_migrations` VALUES (27, 'book', '0010_auto_20210809_1055', '2021-08-09 00:55:57.000000');
INSERT INTO `django_migrations` VALUES (28, 'book', '0011_auto_20210809_2006', '2021-08-09 10:06:55.000000');
INSERT INTO `django_migrations` VALUES (29, 'book', '0012_auto_20210810_2108', '2021-08-10 11:08:43.000000');
INSERT INTO `django_migrations` VALUES (30, 'book', '0013_auto_20210810_2112', '2021-08-10 11:12:56.000000');
INSERT INTO `django_migrations` VALUES (31, 'book', '0014_auto_20210810_2227', '2021-08-10 12:28:00.000000');
INSERT INTO `django_migrations` VALUES (32, 'book', '0015_auto_20210811_2303', '2021-08-11 13:03:52.000000');
INSERT INTO `django_migrations` VALUES (33, 'book', '0016_auto_20210812_1039', '2021-08-12 00:39:20.000000');
INSERT INTO `django_migrations` VALUES (34, 'book', '0017_auto_20210812_1556', '2021-08-12 05:56:27.000000');
INSERT INTO `django_migrations` VALUES (35, 'book', '0018_auto_20210812_1556', '2021-08-12 05:56:58.000000');
INSERT INTO `django_migrations` VALUES (36, 'book', '0019_auto_20210812_1556', '2021-08-12 05:56:58.000000');
INSERT INTO `django_migrations` VALUES (37, 'book', '0020_auto_20210812_1558', '2021-08-12 05:58:10.000000');
INSERT INTO `django_migrations` VALUES (38, 'book', '0021_auto_20210815_1842', '2021-08-15 08:42:10.000000');
INSERT INTO `django_migrations` VALUES (39, 'book', '0022_auto_20210816_1045', '2021-08-16 00:45:44.000000');
INSERT INTO `django_migrations` VALUES (40, 'book', '0023_auto_20210816_1045', '2021-08-16 00:45:44.000000');
INSERT INTO `django_migrations` VALUES (41, 'book', '0024_auto_20210816_1131', '2021-08-16 01:31:42.000000');
INSERT INTO `django_migrations` VALUES (42, 'book', '0025_auto_20210825_1956', '2021-08-25 09:57:47.000000');
INSERT INTO `django_migrations` VALUES (43, 'book', '0026_auto_20210825_1957', '2021-08-25 09:57:47.000000');
INSERT INTO `django_migrations` VALUES (44, 'comment', '0001_initial', '2021-08-25 09:57:47.000000');
INSERT INTO `django_migrations` VALUES (45, 'book', '0027_auto_20210825_2026', '2021-08-25 10:26:15.000000');
INSERT INTO `django_migrations` VALUES (46, 'comment', '0002_auto_20210825_2026', '2021-08-25 10:26:15.000000');
INSERT INTO `django_migrations` VALUES (47, 'book', '0028_auto_20210827_2055', '2021-08-27 10:55:55.000000');
INSERT INTO `django_migrations` VALUES (48, 'comment', '0003_auto_20210827_2055', '2021-08-27 10:55:55.000000');
INSERT INTO `django_migrations` VALUES (49, 'book', '0029_auto_20210827_2144', '2021-08-27 11:44:40.000000');
INSERT INTO `django_migrations` VALUES (50, 'comment', '0004_auto_20210827_2144', '2021-08-27 11:44:40.000000');
INSERT INTO `django_migrations` VALUES (51, 'notifications', '0001_initial', '2021-08-27 11:56:49.000000');
INSERT INTO `django_migrations` VALUES (52, 'notifications', '0002_auto_20150224_1134', '2021-08-27 11:56:49.000000');
INSERT INTO `django_migrations` VALUES (53, 'notifications', '0003_notification_data', '2021-08-27 11:56:49.000000');
INSERT INTO `django_migrations` VALUES (54, 'notifications', '0004_auto_20150826_1508', '2021-08-27 11:56:49.000000');
INSERT INTO `django_migrations` VALUES (55, 'notifications', '0005_auto_20160504_1520', '2021-08-27 11:56:49.000000');
INSERT INTO `django_migrations` VALUES (56, 'notifications', '0006_indexes', '2021-08-27 11:56:49.000000');
INSERT INTO `django_migrations` VALUES (57, 'notifications', '0007_add_timestamp_index', '2021-08-27 11:56:49.000000');
INSERT INTO `django_migrations` VALUES (58, 'notifications', '0008_index_together_recipient_unread', '2021-08-27 11:56:49.000000');
INSERT INTO `django_migrations` VALUES (59, 'book', '0030_auto_20211226_1255', '2022-07-18 04:55:50.000000');
INSERT INTO `django_migrations` VALUES (60, 'book', '0031_auto_20220717_1903', '2022-07-18 04:55:50.000000');
INSERT INTO `django_migrations` VALUES (61, 'book', '0032_auto_20220717_1916', '2022-07-18 04:55:50.000000');
INSERT INTO `django_migrations` VALUES (62, 'book', '0033_auto_20220718_2055', '2022-07-18 04:55:50.000000');
INSERT INTO `django_migrations` VALUES (63, 'book', '0034_auto_20240909_1834', '2024-09-09 02:34:57.000000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1b9ege8x6sk4kx48h9mf6i7v19b0mel2', 'ZTdkMDc1YzQxYzlkYmNjZjJmMTE5MDQ1ODVmMjFlYzg0ZTU5OGZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjFiNGE2MWU4Y2NjMDkwYmE5NzRlMTgxNzAyYTYxNWJjZDI3YTA5YyJ9', '2025-04-13 22:41:43.000000');
INSERT INTO `django_session` VALUES ('4trju7o8c9hjx04y6oanhmx4k79267vn', 'ZTdkMDc1YzQxYzlkYmNjZjJmMTE5MDQ1ODVmMjFlYzg0ZTU5OGZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjFiNGE2MWU4Y2NjMDkwYmE5NzRlMTgxNzAyYTYxNWJjZDI3YTA5YyJ9', '2025-04-15 05:03:24.000000');
INSERT INTO `django_session` VALUES ('6gvs69llkubn9zydpd5ptqal2b6oso6k', 'YjAyY2E4MzBiYjhjYmJhYzhlYjUxMjJmODJlNGU1M2JjZDk4ZDlmZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDVkYmEzZDE1ZDYxYjI2NTFkOTZlYTg4NTk2ODgyNzBlMWMyNTA1In0=', '2021-09-12 12:47:48.000000');
INSERT INTO `django_session` VALUES ('bzfiik1uzwtjcooizvjnxm06zgqdohmu', 'NTY0MDBjMDVkZjk3YzdhYTUwYTJhMjNiMDI3MGJlOTIyNThjNGUxNTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZjZhODYxNzZhOGQ5MjdjN2EyYmExNmUxOWY1NzIzZjI4MzVjNWI4In0=', '2022-08-05 19:50:24.000000');
INSERT INTO `django_session` VALUES ('cdom3tmbq6g2unjcj4qlokebt3kzen20', 'YjAyY2E4MzBiYjhjYmJhYzhlYjUxMjJmODJlNGU1M2JjZDk4ZDlmZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDVkYmEzZDE1ZDYxYjI2NTFkOTZlYTg4NTk2ODgyNzBlMWMyNTA1In0=', '2021-09-12 12:06:39.000000');
INSERT INTO `django_session` VALUES ('dgkkfxy8a0az346j65kg38vuwsqylj8p', 'YjAyY2E4MzBiYjhjYmJhYzhlYjUxMjJmODJlNGU1M2JjZDk4ZDlmZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDVkYmEzZDE1ZDYxYjI2NTFkOTZlYTg4NTk2ODgyNzBlMWMyNTA1In0=', '2022-01-09 03:56:14.000000');
INSERT INTO `django_session` VALUES ('dupl95xknm3t1ufoamdx5o308m2ozexi', 'YWQ5MDI2ZGE1ZDY1YjA5MjZmNzM5NzZkYmZhNjFiNmJjMmNiYWI5Mjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NTQ2NDE2MTIzZDkxZGY2MWQ3MTQ5OWMwZDlhMzg5ZjVhMmQzYjQ3In0=', '2024-04-16 23:07:44.000000');
INSERT INTO `django_session` VALUES ('dvrdcn4bqtc3kwpoa82b1dxnor6uv2hi', 'Y2Y3MTQ0YzI2ZmFmMzYyNWIzMzQyNDVkNWZhZjZlMWFhYmUwYmZiYzp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzlhZmVjZmRkNmYyNzFlNDM3OGFjOTFiMThkM2ZmZDRkMDgzNmNlNSJ9', '2024-12-22 03:51:16.000000');
INSERT INTO `django_session` VALUES ('hamwvyhoj5jbqzrnsbh6pdhaogpuplcu', 'Y2Y3MTQ0YzI2ZmFmMzYyNWIzMzQyNDVkNWZhZjZlMWFhYmUwYmZiYzp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzlhZmVjZmRkNmYyNzFlNDM3OGFjOTFiMThkM2ZmZDRkMDgzNmNlNSJ9', '2024-05-19 21:55:22.000000');
INSERT INTO `django_session` VALUES ('hft4kykmt60tqld3qlw14ysfvd3mf3su', 'MGEwODNiN2Y0MDY5ZWYzNjEzN2ZjODA4MmQ3NTdjZDI3ZDNjN2E5Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjc1NjhmYTVlMmYxYmNhMTExZDNhMzkzY2FhZDc1OTM3ZWZlOTkyIn0=', '2024-04-15 01:04:23.000000');
INSERT INTO `django_session` VALUES ('l9kxfck2pzdj2h1d8mfgr7fvru5nq19p', 'ZTdkMDc1YzQxYzlkYmNjZjJmMTE5MDQ1ODVmMjFlYzg0ZTU5OGZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjFiNGE2MWU4Y2NjMDkwYmE5NzRlMTgxNzAyYTYxNWJjZDI3YTA5YyJ9', '2025-05-16 03:50:09.484099');
INSERT INTO `django_session` VALUES ('mb6gverebstqspgs8suuy6ohdux77v2s', 'YjAyY2E4MzBiYjhjYmJhYzhlYjUxMjJmODJlNGU1M2JjZDk4ZDlmZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDVkYmEzZDE1ZDYxYjI2NTFkOTZlYTg4NTk2ODgyNzBlMWMyNTA1In0=', '2021-07-13 11:57:20.000000');
INSERT INTO `django_session` VALUES ('mpqqiv3ckf19kbc4ttghkapac9rlhzpo', 'OGI0NGEzYTcwMmI1Njk1OTA5ZTk3NDdlM2Q0ODhhYWE5YjM4ZWQ5Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YWJlZjJiYTAzNmE4OTFkNjI4YzA1ZjdkMDdkZDFkNmU0NDA3NDRjIn0=', '2021-09-26 08:30:35.000000');
INSERT INTO `django_session` VALUES ('nfw3wfauo1szl1ifccspw0xduzpq6wwg', 'ZTdkMDc1YzQxYzlkYmNjZjJmMTE5MDQ1ODVmMjFlYzg0ZTU5OGZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjFiNGE2MWU4Y2NjMDkwYmE5NzRlMTgxNzAyYTYxNWJjZDI3YTA5YyJ9', '2025-05-16 02:14:36.301873');
INSERT INTO `django_session` VALUES ('o8beh3vrvvkh2tyj69p8glxsacrl0b6o', 'ZTdkMDc1YzQxYzlkYmNjZjJmMTE5MDQ1ODVmMjFlYzg0ZTU5OGZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjFiNGE2MWU4Y2NjMDkwYmE5NzRlMTgxNzAyYTYxNWJjZDI3YTA5YyJ9', '2025-05-15 05:40:28.000000');
INSERT INTO `django_session` VALUES ('tt7tkx8fmx3x4irqqyumrtmk2keqbssp', 'YjAyY2E4MzBiYjhjYmJhYzhlYjUxMjJmODJlNGU1M2JjZDk4ZDlmZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDVkYmEzZDE1ZDYxYjI2NTFkOTZlYTg4NTk2ODgyNzBlMWMyNTA1In0=', '2021-09-06 01:31:00.000000');
INSERT INTO `django_session` VALUES ('uwzj5c0oent5c77hlwzd4bn9bxkcy2ni', 'Y2Y3MTQ0YzI2ZmFmMzYyNWIzMzQyNDVkNWZhZjZlMWFhYmUwYmZiYzp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzlhZmVjZmRkNmYyNzFlNDM3OGFjOTFiMThkM2ZmZDRkMDgzNmNlNSJ9', '2024-09-23 02:35:09.000000');
INSERT INTO `django_session` VALUES ('w0yn1dy7yt3zsf8wflf2x32e7k13lw75', 'YWQ5MDI2ZGE1ZDY1YjA5MjZmNzM5NzZkYmZhNjFiNmJjMmNiYWI5Mjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NTQ2NDE2MTIzZDkxZGY2MWQ3MTQ5OWMwZDlhMzg5ZjVhMmQzYjQ3In0=', '2024-04-15 02:37:51.000000');
INSERT INTO `django_session` VALUES ('zfjvanvwhx2okfekga6hdjfc289ktyhm', 'YjAyY2E4MzBiYjhjYmJhYzhlYjUxMjJmODJlNGU1M2JjZDk4ZDlmZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDVkYmEzZDE1ZDYxYjI2NTFkOTZlYTg4NTk2ODgyNzBlMWMyNTA1In0=', '2021-08-21 10:49:03.000000');
INSERT INTO `django_session` VALUES ('zkxghokljqw60d3whwfj6h9vzgsezcmh', 'YjAyY2E4MzBiYjhjYmJhYzhlYjUxMjJmODJlNGU1M2JjZDk4ZDlmZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDVkYmEzZDE1ZDYxYjI2NTFkOTZlYTg4NTk2ODgyNzBlMWMyNTA1In0=', '2021-08-15 07:14:11.000000');

-- ----------------------------
-- Table structure for notifications_notification
-- ----------------------------
DROP TABLE IF EXISTS `notifications_notification`;
CREATE TABLE `notifications_notification`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `target_object_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `action_object_object_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `action_object_content_type_id` int(0) NULL DEFAULT NULL,
  `actor_content_type_id` int(0) NOT NULL,
  `recipient_id` int(0) NOT NULL,
  `target_content_type_id` int(0) NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co`(`action_object_content_type_id`) USING BTREE,
  INDEX `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co`(`actor_content_type_id`) USING BTREE,
  INDEX `notifications_notifi_target_content_type__ccb24d88_fk_django_co`(`target_content_type_id`) USING BTREE,
  INDEX `notifications_notification_deleted_b32b69e6`(`deleted`) USING BTREE,
  INDEX `notifications_notification_emailed_23a5ad81`(`emailed`) USING BTREE,
  INDEX `notifications_notification_public_1bc30b1c`(`public`) USING BTREE,
  INDEX `notifications_notification_unread_cce4be30`(`unread`) USING BTREE,
  INDEX `notifications_notification_timestamp_6a797bad`(`timestamp`) USING BTREE,
  INDEX `notifications_notification_recipient_id_unread_253aadc9_idx`(`recipient_id`, `unread`) USING BTREE,
  CONSTRAINT `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `notifications_notifi_target_content_type__ccb24d88_fk_django_co` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` FOREIGN KEY (`recipient_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications_notification
-- ----------------------------
INSERT INTO `notifications_notification` VALUES (3, 'info', 0, '2', 'Created', NULL, '28', '28', '2021-08-28 03:30:16.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (4, 'info', 0, '2', 'Created', NULL, '29', '29', '2021-08-28 03:35:38.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (5, 'info', 0, '2', 'Delete', NULL, NULL, NULL, '2021-08-28 03:40:02.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (6, 'info', 0, '2', 'Created', NULL, '30', '30', '2021-08-29 07:14:32.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (7, 'info', 0, '2', 'Created', NULL, '31', '31', '2021-08-29 07:19:03.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (8, 'info', 0, '2', 'Created', NULL, '30', '30', '2021-08-29 07:19:06.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (9, 'info', 0, '2', 'Created', NULL, '31', '31', '2021-08-29 07:19:09.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (10, 'info', 0, '2', 'Created', NULL, '17', '17', '2021-08-29 07:19:41.000000', 1, 7, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (11, 'info', 0, '2', 'Created', NULL, '32', '32', '2021-08-29 07:21:24.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (12, 'info', 0, '2', 'Delete', NULL, '32', '32', '2021-08-29 07:21:27.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (13, 'info', 0, '2', 'Created', NULL, '33', '33', '2021-08-29 07:23:08.000000', 1, 12, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (14, 'info', 0, '2', 'Delete', NULL, NULL, NULL, '2021-08-29 07:23:35.000000', 1, 7, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (15, 'info', 0, '2', 'Delete', NULL, '33', NULL, '2021-08-29 07:29:50.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (16, 'info', 0, '2', 'Delete CategoryZeliang YAO', NULL, NULL, NULL, '2021-08-29 07:29:50.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (17, 'info', 0, '2', 'Created', NULL, '34', NULL, '2021-08-29 07:29:55.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (18, 'info', 0, '2', 'Add new memeber lora ', NULL, '18', NULL, '2021-08-29 07:33:01.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (19, 'info', 0, '2', 'Delete', NULL, '34', NULL, '2021-08-29 07:33:10.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (20, 'info', 0, '2', 'Delete Category << Zeliang YAO >>', NULL, NULL, NULL, '2021-08-29 07:33:10.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (21, 'info', 0, '2', 'Add New Category << Fake Cat 67 >>', NULL, '35', NULL, '2021-08-29 07:33:23.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (22, 'info', 0, '2', 'Delete member lora ', NULL, NULL, NULL, '2021-08-29 07:36:30.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (23, 'info', 0, '2', 'Add New Category << Fake Cat 999 >>', NULL, '36', NULL, '2021-08-29 10:56:11.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (24, 'info', 0, '2', 'Delete', NULL, '36', NULL, '2021-08-29 10:56:15.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (25, 'info', 0, '2', 'Delete Category << Fake Cat 999 >>', NULL, NULL, NULL, '2021-08-29 10:56:15.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (26, 'info', 0, '2', 'Add new memeber Lousen', NULL, '19', NULL, '2021-08-29 10:56:57.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (27, 'info', 0, '2', 'Delete Category << Fake Cat 67 >>', NULL, NULL, NULL, '2021-08-29 11:08:52.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (28, 'info', 0, '2', 'Add New Category << Database >>', NULL, '37', NULL, '2021-08-29 11:59:16.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (29, 'info', 0, '2', 'Add New Category << Database >>', NULL, '38', NULL, '2021-08-29 11:59:34.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (30, 'info', 0, '2', 'Delete Category << Database >>', NULL, NULL, NULL, '2021-08-29 11:59:37.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (31, 'info', 0, '2', 'Delete Category << Database >>', NULL, NULL, NULL, '2021-08-29 11:59:40.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (32, 'info', 0, '2', 'Add New Category << Fake Cat 888 >>', NULL, '39', NULL, '2021-08-29 12:06:07.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (33, 'info', 0, '2', 'Delete Category << Fake Cat 888 >>', NULL, NULL, NULL, '2021-08-29 12:06:09.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (34, 'info', 0, '3', 'Add New Category << test_m4 >>', NULL, '44', NULL, '2021-08-29 12:31:19.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (35, 'info', 0, '3', 'Delete Category << test_m4 >>', NULL, NULL, NULL, '2021-08-29 12:31:21.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (36, 'info', 0, '3', 'Add New Category << Fake Pub 99 >>', NULL, '7', NULL, '2021-08-29 12:38:01.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (37, 'info', 0, '3', 'Delete Publisher << Fake Pub 99 >>', NULL, NULL, NULL, '2021-08-29 12:39:39.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (38, 'info', 0, '2', 'Add New Category << Lousen >>', NULL, '45', NULL, '2021-08-29 12:44:12.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (39, 'info', 0, '2', 'Delete Category << Lousen >>', NULL, NULL, NULL, '2021-08-29 12:44:15.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (40, 'info', 0, '2', 'Add New Category << Fake Pub 98 >>', NULL, '8', NULL, '2021-08-29 12:44:45.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (41, 'info', 0, '2', 'Delete Publisher << Fake Pub 98 >>', NULL, NULL, NULL, '2021-08-29 12:44:50.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (42, 'info', 0, '2', 'Add New Category << anderson green >>', NULL, '46', NULL, '2021-08-29 12:47:15.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (43, 'info', 0, '2', 'Delete Category << anderson green >>', NULL, NULL, NULL, '2021-08-29 12:47:16.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (44, 'info', 0, '2', 'Add New Publisher << Fake Pub 900 >>', NULL, '9', NULL, '2021-08-29 12:47:41.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (45, 'info', 0, '2', 'Delete Publisher << Fake Pub 900 >>', NULL, NULL, NULL, '2021-08-29 12:47:44.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (46, 'info', 0, '2', 'Add New Category << ppppppppppppppp >>', NULL, '49', NULL, '2021-09-06 14:43:42.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (47, 'info', 0, '2', 'Add New Category << Zeliang YAO >>', NULL, '51', NULL, '2021-09-08 06:26:36.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (48, 'info', 1, '4', 'Add New Category << 科幻小说 >>', NULL, '52', NULL, '2022-07-20 04:08:28.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (49, 'info', 1, '4', 'Delete Category << Zeliang YAO >>', NULL, NULL, NULL, '2022-07-20 04:12:32.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (50, 'info', 1, '4', 'Delete Category << Fashion >>', NULL, NULL, NULL, '2022-07-20 04:12:33.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (51, 'info', 1, '4', 'Delete Category << Comic >>', NULL, NULL, NULL, '2022-07-20 04:12:33.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (52, 'info', 1, '4', 'Delete Category << Literary Fiction >>', NULL, NULL, NULL, '2022-07-20 04:12:34.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (53, 'info', 1, '4', 'Delete Category << Detective and Mystery >>', NULL, NULL, NULL, '2022-07-20 04:12:49.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (54, 'info', 1, '4', 'Delete Category << Watch >>', NULL, NULL, NULL, '2022-07-20 04:12:50.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (55, 'info', 1, '4', 'Delete Category << Fiction >>', NULL, NULL, NULL, '2022-07-20 04:12:50.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (56, 'info', 1, '4', 'Delete Category << Computers & Tech >>', NULL, NULL, NULL, '2022-07-20 04:12:51.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (57, 'info', 1, '4', 'Delete Category << Finance >>', NULL, NULL, NULL, '2022-07-20 04:12:58.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (58, 'info', 1, '4', 'Delete Category << Historical >>', NULL, NULL, NULL, '2022-07-20 04:12:59.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (59, 'info', 1, '4', 'Delete Category << Fantasy >>', NULL, NULL, NULL, '2022-07-20 04:12:59.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (60, 'info', 1, '4', 'Delete Category << Cooking >>', NULL, NULL, NULL, '2022-07-20 04:13:00.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (61, 'info', 1, '4', 'Delete Category << Economics >>', NULL, NULL, NULL, '2022-07-20 04:13:08.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (62, 'info', 1, '4', 'Delete Category << 科幻小说 >>', NULL, NULL, NULL, '2022-07-20 04:13:53.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (63, 'info', 1, '4', 'Add New Category << 人文类图书 >>', NULL, '53', NULL, '2022-07-20 04:14:34.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (64, 'info', 1, '4', 'Add New Category << 自然类图书 >>', NULL, '54', NULL, '2022-07-20 04:14:45.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (65, 'info', 1, '4', 'Add New Category << A哲学类图书 >>', NULL, '55', NULL, '2022-07-20 04:16:38.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (66, 'info', 1, '4', 'Add New Category << B宗教类图书 >>', NULL, '56', NULL, '2022-07-20 04:17:01.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (67, 'info', 1, '4', 'Add New Category << 小说类图书 >>', NULL, '57', NULL, '2022-07-20 04:30:08.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (68, 'info', 1, '4', 'Add New Category << 传记类图书 >>', NULL, '58', NULL, '2022-07-20 04:31:53.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (69, 'info', 1, '4', 'Add New Category << 实用类图书 >>', NULL, '59', NULL, '2022-07-20 04:32:19.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (70, 'info', 1, '4', 'Add New Category << 漫画类图书 >>', NULL, '60', NULL, '2022-07-20 04:33:12.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (71, 'info', 1, '4', 'Add New Category << 学术类图书 >>', NULL, '61', NULL, '2022-07-20 04:33:47.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (72, 'info', 1, '4', 'Add New Category << 军事类图书 >>', NULL, '62', NULL, '2022-07-20 04:34:47.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (73, 'info', 1, '4', 'Add New Category << 历史类图书 >>', NULL, '63', NULL, '2022-07-20 04:35:03.000000', 1, NULL, 4, 1, 12, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (74, 'info', 1, '4', 'Add New Publisher << 人民教育出版社 >>', NULL, '12', NULL, '2022-07-20 04:39:39.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (75, 'info', 1, '4', 'Delete Publisher << Fake Pub 99 >>', NULL, NULL, NULL, '2022-07-20 04:39:53.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (76, 'info', 1, '4', 'Delete Publisher << Fake Pub 5 >>', NULL, NULL, NULL, '2022-07-20 04:39:54.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (77, 'info', 1, '4', 'Delete Publisher << Pub4 >>', NULL, NULL, NULL, '2022-07-20 04:39:54.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (78, 'info', 1, '4', 'Delete Publisher << Pub3 >>', NULL, NULL, NULL, '2022-07-20 04:39:55.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (79, 'info', 1, '4', 'Delete Publisher << Pub2 >>', NULL, NULL, NULL, '2022-07-20 04:40:28.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (80, 'info', 1, '4', 'Delete Publisher << Pub1 >>', NULL, NULL, NULL, '2022-07-20 04:40:28.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (81, 'info', 1, '4', 'Add New Publisher << 人民文学出版社 >>', NULL, '13', NULL, '2022-07-20 04:43:58.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (82, 'info', 1, '4', 'Add New Publisher << 三联书店 >>', NULL, '14', NULL, '2022-07-20 04:48:36.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (83, 'info', 1, '4', 'Add New Publisher << 商务印书馆 >>', NULL, '15', NULL, '2022-07-20 04:50:01.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (84, 'info', 1, '4', 'Delete member total ', NULL, NULL, NULL, '2022-07-21 20:04:35.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (85, 'info', 1, '4', 'Delete member Septemper User ', NULL, NULL, NULL, '2022-07-21 20:04:47.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (86, 'info', 1, '4', 'Delete member Last Member ', NULL, NULL, NULL, '2022-07-21 20:04:49.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (87, 'info', 1, '4', 'Delete member test_100 ', NULL, NULL, NULL, '2022-07-21 20:04:50.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (88, 'info', 1, '4', 'Delete member test_m99 ', NULL, NULL, NULL, '2022-07-21 20:04:50.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (89, 'info', 1, '4', 'Delete member ooo ', NULL, NULL, NULL, '2022-07-21 20:04:51.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (90, 'info', 1, '4', 'Delete member Lousen ', NULL, NULL, NULL, '2022-07-21 20:04:54.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (91, 'info', 1, '4', 'Delete member anderson green ', NULL, NULL, NULL, '2022-07-21 20:04:55.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (92, 'info', 1, '4', 'Delete member Emilia ', NULL, NULL, NULL, '2022-07-21 20:04:55.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (93, 'info', 1, '4', 'Delete member Claire Andson ', NULL, NULL, NULL, '2022-07-21 20:04:56.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (94, 'info', 1, '4', 'Delete member Andrew Green ', NULL, NULL, NULL, '2022-07-21 20:04:57.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (95, 'info', 1, '4', 'Delete member John Johnson ', NULL, NULL, NULL, '2022-07-21 20:04:59.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (96, 'info', 1, '4', 'Delete member test_m5 ', NULL, NULL, NULL, '2022-07-21 20:05:01.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (97, 'info', 1, '4', 'Delete member test_m6 ', NULL, NULL, NULL, '2022-07-21 20:05:01.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (98, 'info', 1, '4', 'Delete member test_m4 ', NULL, NULL, NULL, '2022-07-21 20:05:02.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (99, 'info', 1, '4', 'Delete member John Brown ', NULL, NULL, NULL, '2022-07-21 20:05:05.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (100, 'info', 1, '4', 'Delete member test_m7 ', NULL, NULL, NULL, '2022-07-21 20:05:06.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (101, 'info', 1, '4', 'Delete member test_m2 ', NULL, NULL, NULL, '2022-07-21 20:05:06.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (102, 'info', 1, '4', 'Delete member test_m3 ', NULL, NULL, NULL, '2022-07-21 20:05:06.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (103, 'info', 1, '4', 'Delete member test_m1 ', NULL, NULL, NULL, '2022-07-21 20:05:07.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (104, 'info', 1, '4', 'Add new memeber tinley', NULL, '23', NULL, '2022-07-21 20:21:32.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (105, 'info', 1, '4', 'Add new memeber baumeister', NULL, '24', NULL, '2022-07-21 20:27:55.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (106, 'info', 1, '4', 'Add new memeber burkhard', NULL, '25', NULL, '2022-07-21 20:28:37.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (107, 'info', 1, '4', 'Add new memeber cummins', NULL, '26', NULL, '2022-07-21 20:29:09.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (108, 'info', 1, '4', 'Add new memeber clooney', NULL, '27', NULL, '2022-07-21 20:30:25.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (109, 'info', 1, '8', 'Add new memeber 张三', NULL, '28', NULL, '2024-04-01 02:37:15.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (110, 'info', 1, '8', 'Add new memeber 张三', NULL, '28', NULL, '2024-04-01 02:37:15.000000', 1, NULL, 4, 6, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (111, 'info', 1, '9', 'Delete member burkhard ', NULL, NULL, NULL, '2024-05-05 21:16:27.000000', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (112, 'info', 1, '9', 'Delete member burkhard ', NULL, NULL, NULL, '2024-05-05 21:16:27.000000', 1, NULL, 4, 6, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (113, 'info', 1, '9', 'Delete Publisher << 李斯 >>', NULL, NULL, NULL, '2024-05-05 21:17:25.000000', 1, NULL, 4, 1, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (114, 'info', 1, '9', 'Delete Publisher << 李斯 >>', NULL, NULL, NULL, '2024-05-05 21:17:25.000000', 1, NULL, 4, 6, 10, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (115, 'info', 1, '14', 'Delete member 郭思 ', NULL, NULL, NULL, '2025-05-02 03:46:09.795186', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (116, 'info', 1, '14', 'Delete member 郭思 ', NULL, NULL, NULL, '2025-05-02 03:46:09.795186', 1, NULL, 4, 6, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (117, 'info', 1, '14', 'Delete member 郭思 ', NULL, NULL, NULL, '2025-05-02 03:46:09.795186', 1, NULL, 4, 10, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (118, 'info', 0, '14', 'Delete member 郭思 ', NULL, NULL, NULL, '2025-05-02 03:46:09.795186', 1, NULL, 4, 11, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (119, 'info', 1, '14', 'Add new memeber 213421', NULL, '34', NULL, '2025-05-02 03:48:05.317436', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (120, 'info', 1, '14', 'Add new memeber 213421', NULL, '34', NULL, '2025-05-02 03:48:05.317436', 1, NULL, 4, 6, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (121, 'info', 1, '14', 'Add new memeber 213421', NULL, '34', NULL, '2025-05-02 03:48:05.317436', 1, NULL, 4, 10, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (122, 'info', 0, '14', 'Add new memeber 213421', NULL, '34', NULL, '2025-05-02 03:48:05.317436', 1, NULL, 4, 11, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (123, 'info', 1, '14', 'Delete member 213421 ', NULL, NULL, NULL, '2025-05-02 03:48:08.355004', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (124, 'info', 1, '14', 'Delete member 213421 ', NULL, NULL, NULL, '2025-05-02 03:48:08.355004', 1, NULL, 4, 6, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (125, 'info', 1, '14', 'Delete member 213421 ', NULL, NULL, NULL, '2025-05-02 03:48:08.355004', 1, NULL, 4, 10, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (126, 'info', 0, '14', 'Delete member 213421 ', NULL, NULL, NULL, '2025-05-02 03:48:08.355004', 1, NULL, 4, 11, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (127, 'info', 1, '14', 'Add new memeber l.l.d', NULL, '35', NULL, '2025-05-02 03:49:58.662368', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (128, 'info', 1, '14', 'Add new memeber l.l.d', NULL, '35', NULL, '2025-05-02 03:49:58.662368', 1, NULL, 4, 6, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (129, 'info', 1, '14', 'Add new memeber l.l.d', NULL, '35', NULL, '2025-05-02 03:49:58.662368', 1, NULL, 4, 10, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (130, 'info', 0, '14', 'Add new memeber l.l.d', NULL, '35', NULL, '2025-05-02 03:49:58.662368', 1, NULL, 4, 11, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (131, 'info', 1, '14', 'Delete member l.l.d ', NULL, NULL, NULL, '2025-05-02 03:50:02.375556', 1, NULL, 4, 1, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (132, 'info', 1, '14', 'Delete member l.l.d ', NULL, NULL, NULL, '2025-05-02 03:50:02.375556', 1, NULL, 4, 6, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (133, 'info', 1, '14', 'Delete member l.l.d ', NULL, NULL, NULL, '2025-05-02 03:50:02.375556', 1, NULL, 4, 10, 7, 0, 0, NULL);
INSERT INTO `notifications_notification` VALUES (134, 'info', 0, '14', 'Delete member l.l.d ', NULL, NULL, NULL, '2025-05-02 03:50:02.375556', 1, NULL, 4, 11, 7, 0, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
