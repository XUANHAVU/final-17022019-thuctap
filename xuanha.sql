/*
 Navicat Premium Data Transfer

 Source Server         : learnsql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : xuanha

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 17/02/2019 02:12:29
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
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
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
INSERT INTO `databasechangelog` VALUES ('00000000000001', 'jhipster', 'config/liquibase/changelog/00000000000000_initial_schema.xml', '2018-12-03 10:19:38', 1, 'EXECUTED', '7:b10e7bd1b2793b69531cd807677d7f94', 'createTable tableName=jhi_user; createIndex indexName=idx_user_login, tableName=jhi_user; createIndex indexName=idx_user_email, tableName=jhi_user; createTable tableName=jhi_authority; createTable tableName=jhi_user_authority; addPrimaryKey tableN...', '', NULL, '3.5.4', NULL, NULL, '3807176306');

-- ----------------------------
-- Table structure for databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `databasechangeloglock`;
CREATE TABLE `databasechangeloglock`  (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime(0) NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of databasechangeloglock
-- ----------------------------
INSERT INTO `databasechangeloglock` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `salary` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, 'Xuan Ha', 12);
INSERT INTO `emp` VALUES (2, 'Quy', 10);

-- ----------------------------
-- Table structure for jhi_authority
-- ----------------------------
DROP TABLE IF EXISTS `jhi_authority`;
CREATE TABLE `jhi_authority`  (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jhi_authority
-- ----------------------------
INSERT INTO `jhi_authority` VALUES ('ROLE_ADMIN');
INSERT INTO `jhi_authority` VALUES ('ROLE_USER');

-- ----------------------------
-- Table structure for jhi_persistent_audit_event
-- ----------------------------
DROP TABLE IF EXISTS `jhi_persistent_audit_event`;
CREATE TABLE `jhi_persistent_audit_event`  (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `principal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `event_date` timestamp(0) NULL DEFAULT NULL,
  `event_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`event_id`) USING BTREE,
  INDEX `idx_persistent_audit_event`(`principal`, `event_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jhi_persistent_audit_event
-- ----------------------------
INSERT INTO `jhi_persistent_audit_event` VALUES (1, 'admin', '2018-12-03 10:20:33', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (2, 'user', '2018-12-03 11:36:28', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (3, 'admin', '2018-12-03 15:21:56', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (4, 'admin', '2018-12-03 15:23:24', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (5, 'system', '2018-12-03 15:23:41', 'AUTHENTICATION_FAILURE');
INSERT INTO `jhi_persistent_audit_event` VALUES (6, 'user', '2018-12-03 15:23:50', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (7, 'admin', '2018-12-03 15:26:51', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (8, 'admin', '2018-12-04 15:06:33', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (9, 'admin', '2018-12-05 08:44:20', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (10, 'admin', '2018-12-05 12:49:27', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (11, 'system', '2018-12-05 21:09:56', 'AUTHENTICATION_FAILURE');
INSERT INTO `jhi_persistent_audit_event` VALUES (12, 'admin', '2018-12-05 21:10:02', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (13, 'admin', '2018-12-05 21:11:39', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (14, 'admin', '2018-12-05 21:16:42', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (15, 'admin', '2018-12-07 13:39:11', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (16, 'admin', '2018-12-08 11:09:03', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (17, 'admin', '2018-12-08 11:17:10', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (18, 'admin', '2018-12-13 14:01:40', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (19, 'admin', '2018-12-20 11:28:40', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (20, 'admin', '2018-12-28 14:06:13', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (21, 'admin', '2018-12-30 15:29:57', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (22, 'admin', '2018-12-30 22:47:42', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (23, 'admin', '2018-12-31 15:43:38', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (24, 'admin', '2018-12-31 15:51:56', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (25, 'admin', '2018-12-31 15:59:34', 'AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` VALUES (26, 'admin', '2019-02-17 01:43:37', 'AUTHENTICATION_SUCCESS');

-- ----------------------------
-- Table structure for jhi_persistent_audit_evt_data
-- ----------------------------
DROP TABLE IF EXISTS `jhi_persistent_audit_evt_data`;
CREATE TABLE `jhi_persistent_audit_evt_data`  (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`event_id`, `name`) USING BTREE,
  INDEX `idx_persistent_audit_evt_data`(`event_id`) USING BTREE,
  CONSTRAINT `fk_evt_pers_audit_evt_data` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jhi_persistent_audit_evt_data
-- ----------------------------
INSERT INTO `jhi_persistent_audit_evt_data` VALUES (5, 'message', 'Bad credentials');
INSERT INTO `jhi_persistent_audit_evt_data` VALUES (5, 'type', 'org.springframework.security.authentication.BadCredentialsException');
INSERT INTO `jhi_persistent_audit_evt_data` VALUES (11, 'message', 'Bad credentials');
INSERT INTO `jhi_persistent_audit_evt_data` VALUES (11, 'type', 'org.springframework.security.authentication.BadCredentialsException');

-- ----------------------------
-- Table structure for jhi_user
-- ----------------------------
DROP TABLE IF EXISTS `jhi_user`;
CREATE TABLE `jhi_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `activation_key` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `reset_key` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_date` timestamp(0) NOT NULL,
  `reset_date` timestamp(0) NULL DEFAULT NULL,
  `last_modified_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_modified_date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_user_login`(`login`) USING BTREE,
  UNIQUE INDEX `idx_user_login`(`login`) USING BTREE,
  UNIQUE INDEX `ux_user_email`(`email`) USING BTREE,
  UNIQUE INDEX `idx_user_email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jhi_user
-- ----------------------------
INSERT INTO `jhi_user` VALUES (1, 'system', '$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG', 'System', 'System', 'system@localhost', '', b'1', 'en', NULL, NULL, 'system', '2018-12-03 10:19:37', NULL, 'system', NULL);
INSERT INTO `jhi_user` VALUES (2, 'anonymoususer', '$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO', 'Anonymous', 'User', 'anonymous@localhost', '', b'1', 'en', NULL, NULL, 'system', '2018-12-03 10:19:37', NULL, 'system', NULL);
INSERT INTO `jhi_user` VALUES (3, 'admin', '$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC', 'Administrator', 'Administrator', 'admin@localhost', '', b'1', 'en', NULL, NULL, 'system', '2018-12-03 10:19:37', NULL, 'system', NULL);
INSERT INTO `jhi_user` VALUES (4, 'user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', '', b'1', 'en', NULL, NULL, 'system', '2018-12-03 10:19:37', NULL, 'system', NULL);
INSERT INTO `jhi_user` VALUES (5, 'xinchao', '$2a$10$Ft59PMY5kgSRYP3O8gPvyeePsG/DrUmrXbR7R/KZGwe3nqz.jkrcW', NULL, NULL, 'xinchao@gmail.com', NULL, b'1', 'en', '67390066030880462875', NULL, 'anonymousUser', '2018-12-03 15:21:33', NULL, 'admin', '2018-12-03 15:22:49');

-- ----------------------------
-- Table structure for jhi_user_authority
-- ----------------------------
DROP TABLE IF EXISTS `jhi_user_authority`;
CREATE TABLE `jhi_user_authority`  (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`, `authority_name`) USING BTREE,
  INDEX `fk_authority_name`(`authority_name`) USING BTREE,
  CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jhi_user_authority
-- ----------------------------
INSERT INTO `jhi_user_authority` VALUES (1, 'ROLE_ADMIN');
INSERT INTO `jhi_user_authority` VALUES (3, 'ROLE_ADMIN');
INSERT INTO `jhi_user_authority` VALUES (1, 'ROLE_USER');
INSERT INTO `jhi_user_authority` VALUES (3, 'ROLE_USER');
INSERT INTO `jhi_user_authority` VALUES (4, 'ROLE_USER');
INSERT INTO `jhi_user_authority` VALUES (5, 'ROLE_USER');

-- ----------------------------
-- Table structure for lop
-- ----------------------------
DROP TABLE IF EXISTS `lop`;
CREATE TABLE `lop`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_class` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `soluong` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lop
-- ----------------------------
INSERT INTO `lop` VALUES (1, 'TI27G1', '30');
INSERT INTO `lop` VALUES (2, 'TI27G2', '30');
INSERT INTO `lop` VALUES (3, 'TI27G3', '30');
INSERT INTO `lop` VALUES (4, 'TI27G4', '30');
INSERT INTO `lop` VALUES (5, 'TI27B1', '30');
INSERT INTO `lop` VALUES (6, 'TI27B2', '28');
INSERT INTO `lop` VALUES (7, 'TE27G1', '28');
INSERT INTO `lop` VALUES (8, 'TE27G2', '28');
INSERT INTO `lop` VALUES (9, 'TC27A1', '29');
INSERT INTO `lop` VALUES (10, 'TC27A2', '29');
INSERT INTO `lop` VALUES (11, 'TM27B1', '29');
INSERT INTO `lop` VALUES (12, 'TM27B2', '29');
INSERT INTO `lop` VALUES (13, 'TI28G1', '28');
INSERT INTO `lop` VALUES (14, 'TI28G2', '28');
INSERT INTO `lop` VALUES (15, 'TI28G3', '28');
INSERT INTO `lop` VALUES (16, 'TC28D1', '29');
INSERT INTO `lop` VALUES (17, 'TC28D2', '29');
INSERT INTO `lop` VALUES (18, 'TI29G1', '29');
INSERT INTO `lop` VALUES (19, 'TI29G2', '25');
INSERT INTO `lop` VALUES (20, 'TI29G3', '25');
INSERT INTO `lop` VALUES (21, 'TI29D1', '25');
INSERT INTO `lop` VALUES (22, 'TC29G1', '26');
INSERT INTO `lop` VALUES (23, 'TC29G2', '26');
INSERT INTO `lop` VALUES (24, 'TM29D1', '29');
INSERT INTO `lop` VALUES (25, 'TM29D1', '29');
INSERT INTO `lop` VALUES (26, 'TE30G1', '29');
INSERT INTO `lop` VALUES (27, 'TE30G2', '30');
INSERT INTO `lop` VALUES (28, 'TE30G3', '30');
INSERT INTO `lop` VALUES (29, 'TI30G1', '30');
INSERT INTO `lop` VALUES (30, 'TI30G2', '30');
INSERT INTO `lop` VALUES (31, 'TI30G3', '30');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (1, 'Mai Thúy Nga', 'Nữ', 'maithuynga@gmail.com', 'Hà Nam', '1978', '0989898765');
INSERT INTO `person` VALUES (2, 'Đậu Hải Phong', 'Nam', 'dauphong@gmail.com', 'Hà Tây', '1985', '0912345348');
INSERT INTO `person` VALUES (3, 'Vũ Xuân Hà', 'Nam', 'xuanhatlu@gmail.com', 'Hà Nội', '1996', '0868686868');
INSERT INTO `person` VALUES (4, 'Trần Thị Huệ', 'Nữ', 'huett@gmail.com', 'Hà Nội', '1976', '0949823487');
INSERT INTO `person` VALUES (5, 'Nguyễn Minh Hòa', 'Nam', 'minhhoa@gmail.com', 'Hà Nội', '1992', '0876987234');
INSERT INTO `person` VALUES (6, 'Vũ Thu Trang', 'Nữ', 'trangvu@gmail.com', 'Hà Nội', '1994', '0989765982');
INSERT INTO `person` VALUES (7, 'Trần Minh Hiếu', 'Nam', 'hieutt@gmail.com', 'TPHCM', '1992', '0989876723');
INSERT INTO `person` VALUES (8, 'Trang Hạ', 'Nữ', 'trangha@gmail.com', 'TPHCM', '1993', '0989876567');
INSERT INTO `person` VALUES (9, 'Vũ Hương', 'Nữ', 'huongvu@gmail.com', 'Đà Nẵng', '1995', '0989760932');
INSERT INTO `person` VALUES (10, 'Thiên Hoàng', 'Nam', 'thienthien@gmail.com', 'Nam Định', '1993', '0987872345');
INSERT INTO `person` VALUES (11, 'Nguyễn Xuân Phúc', 'Nam', 'xuanphuc@gmail.com', 'Hà Nội', '1976', '0868787856');
INSERT INTO `person` VALUES (12, 'Nguyễn Tấn Dũng', 'Nam', 'tandung@gmail.com', 'Hà Nội', '1956', '0898767234');
INSERT INTO `person` VALUES (13, 'Kim Ngân', 'Nữ', 'kimngan@gmail.com', 'Hà Nội', '1989', '0867856487');
INSERT INTO `person` VALUES (14, 'Trịnh Xuân Thanh', 'Nam', 'xuanthanh@gmail.com', 'Hà Nội', '1956', '0989823145');
INSERT INTO `person` VALUES (15, 'Bùi Kim', 'Nữ', 'kimbui@gmail.com', 'Sơn La', '1987', '0987876543');
INSERT INTO `person` VALUES (16, 'Thanh Thanh', 'Nữ', 'thanh212@gmail.com', 'Sơn La', '1987', '0987876567');
INSERT INTO `person` VALUES (17, 'Thiên Lý', 'Nữ', 'lythien@gmail.com', 'Lai Châu', '1989', '0989876765');
INSERT INTO `person` VALUES (18, 'Họa Nguyễn', 'Nữ', 'hoanguyen@gmail.com', 'Hà Nội', '1993', '0912345623');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_student` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `age_student` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'Thiên Long', 'A25542', 30, 'Hà Đông', '0987231234', 'xdnhh@gmail.com');
INSERT INTO `student` VALUES (2, 'Vũ Xuân Hà', 'A25597', 27, 'Hà Nội', '0986989898', 'xuanhatlu@gmail.com');
INSERT INTO `student` VALUES (3, 'Văn Kính', 'A25587', 27, 'Hà Nội', '0936966276', 'vankinh@gmail.com');
INSERT INTO `student` VALUES (4, 'Thư Trang', 'A25554', 27, 'Hà Nội', '0394852761', 'trangthu@gmail.com');
INSERT INTO `student` VALUES (5, 'Vi Nguyễn', 'A25353', 26, 'Hà Nội', '0389271741', 'vinguyen@gmail.com');
INSERT INTO `student` VALUES (6, 'Huân Trần', 'A25500', 28, 'Hà Nội', '0362314906', 'trantran@gmail.com');
INSERT INTO `student` VALUES (7, 'Anh Anh', 'A25570', 31, 'Hà Nội', '0334725953', 'anhanh@gmail.com');
INSERT INTO `student` VALUES (8, 'Mi Lan', 'A21345', 31, 'Hà Nội', '0867584002', 'lanmi@gmail.com');
INSERT INTO `student` VALUES (9, 'Linh Chi Trần', 'A23535', 28, 'Hà Nội', '0372965864', 'tranchi@gmail.com');
INSERT INTO `student` VALUES (10, 'Chi Trần', 'A43252', 29, 'Hà Nội', '0388472903', 'tranchichi@gmail.com');
INSERT INTO `student` VALUES (11, 'Lê Trang', 'A32456', 27, 'Hà Tây', '0338784930', 'tranglele@gmail.com');
INSERT INTO `student` VALUES (12, 'Vê Nôm', 'A32123', 27, 'Hà Tây', '0336379565', 'bachuathonom@gmail.com');
INSERT INTO `student` VALUES (13, 'Lulu', 'A29642', 27, 'Hà Tây', '0386843867', 'mickeyt@gmail.com');
INSERT INTO `student` VALUES (14, 'Trang Hạ', 'A24784', 27, 'Hà Nam', '0352657754', 'hahatrang@gmail.com');
INSERT INTO `student` VALUES (15, 'Sâm Si', 'A28576', 27, 'Hà Nam', '0369870316', 'sansisendo@gmail.com');
INSERT INTO `student` VALUES (80, 'Thị Nở', 'A30330', 30, 'Hà Tây', '987665734', 'thinosd23@gmail.com');
INSERT INTO `student` VALUES (81, 'Chí Phèo', 'A30331', 30, 'Hà Tây', '987777876', 'chipheod23@gmail.com');

SET FOREIGN_KEY_CHECKS = 1;
