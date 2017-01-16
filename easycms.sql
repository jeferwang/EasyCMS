/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : easycms

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-01-17 01:34:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add permission', '3', 'add_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can change permission', '3', 'change_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete permission', '3', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 文章', '7', 'add_article');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 文章', '7', 'change_article');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 文章', '7', 'delete_article');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 栏目', '8', 'add_column');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 栏目', '8', 'change_column');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 栏目', '8', 'delete_column');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$30000$4H3SQLSgZUs9$XXwAMQMqYN2UZPSsP6NZFl8ozINWrRi81UjklPMQhr4=', '2017-01-16 14:35:37.062000', '1', 'wxj', '', '', '1737723363@qq.com', '1', '1', '2017-01-16 14:35:28.258000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for cmscore_article
-- ----------------------------
DROP TABLE IF EXISTS `cmscore_article`;
CREATE TABLE `cmscore_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CMScore_article_4f331e2f` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmscore_article
-- ----------------------------
INSERT INTO `cmscore_article` VALUES ('92', '体育新闻_1', 'article_1_1', '新闻详细内容:体育新闻_1', '1', '2017-01-16 15:20:11.048000', '2017-01-16 15:20:11.048000', null);
INSERT INTO `cmscore_article` VALUES ('93', '体育新闻_2', 'article_1_2', '新闻详细内容:体育新闻_2', '1', '2017-01-16 15:20:11.060000', '2017-01-16 15:20:11.060000', null);
INSERT INTO `cmscore_article` VALUES ('94', '体育新闻_3', 'article_1_3', '新闻详细内容:体育新闻_3', '1', '2017-01-16 15:20:11.072000', '2017-01-16 15:20:11.072000', null);
INSERT INTO `cmscore_article` VALUES ('95', '体育新闻_4', 'article_1_4', '新闻详细内容:体育新闻_4', '1', '2017-01-16 15:20:11.085000', '2017-01-16 15:20:11.085000', null);
INSERT INTO `cmscore_article` VALUES ('96', '体育新闻_5', 'article_1_5', '新闻详细内容:体育新闻_5', '1', '2017-01-16 15:20:11.098000', '2017-01-16 15:20:11.098000', null);
INSERT INTO `cmscore_article` VALUES ('97', '体育新闻_6', 'article_1_6', '新闻详细内容:体育新闻_6', '1', '2017-01-16 15:20:11.109000', '2017-01-16 15:20:11.109000', null);
INSERT INTO `cmscore_article` VALUES ('98', '体育新闻_7', 'article_1_7', '新闻详细内容:体育新闻_7', '1', '2017-01-16 15:20:11.121000', '2017-01-16 15:20:11.121000', null);
INSERT INTO `cmscore_article` VALUES ('99', '体育新闻_8', 'article_1_8', '新闻详细内容:体育新闻_8', '1', '2017-01-16 15:20:11.133000', '2017-01-16 15:20:11.133000', null);
INSERT INTO `cmscore_article` VALUES ('100', '体育新闻_9', 'article_1_9', '新闻详细内容:体育新闻_9', '1', '2017-01-16 15:20:11.145000', '2017-01-16 15:20:11.145000', null);
INSERT INTO `cmscore_article` VALUES ('101', '体育新闻_10', 'article_1_10', '新闻详细内容:体育新闻_10', '1', '2017-01-16 15:20:11.158000', '2017-01-16 15:20:11.158000', null);
INSERT INTO `cmscore_article` VALUES ('102', '社会新闻_1', 'article_2_1', '新闻详细内容:社会新闻_1', '1', '2017-01-16 15:20:11.177000', '2017-01-16 15:20:11.177000', null);
INSERT INTO `cmscore_article` VALUES ('103', '社会新闻_2', 'article_2_2', '新闻详细内容:社会新闻_2', '1', '2017-01-16 15:20:11.189000', '2017-01-16 15:20:11.189000', null);
INSERT INTO `cmscore_article` VALUES ('104', '社会新闻_3', 'article_2_3', '新闻详细内容:社会新闻_3', '1', '2017-01-16 15:20:11.200000', '2017-01-16 15:20:11.200000', null);
INSERT INTO `cmscore_article` VALUES ('105', '社会新闻_4', 'article_2_4', '新闻详细内容:社会新闻_4', '1', '2017-01-16 15:20:11.212000', '2017-01-16 15:20:11.212000', null);
INSERT INTO `cmscore_article` VALUES ('106', '社会新闻_5', 'article_2_5', '新闻详细内容:社会新闻_5', '1', '2017-01-16 15:20:11.223000', '2017-01-16 15:20:11.223000', null);
INSERT INTO `cmscore_article` VALUES ('107', '社会新闻_6', 'article_2_6', '新闻详细内容:社会新闻_6', '1', '2017-01-16 15:20:11.234000', '2017-01-16 15:20:11.234000', null);
INSERT INTO `cmscore_article` VALUES ('108', '社会新闻_7', 'article_2_7', '新闻详细内容:社会新闻_7', '1', '2017-01-16 15:20:11.247000', '2017-01-16 15:20:11.247000', null);
INSERT INTO `cmscore_article` VALUES ('109', '社会新闻_8', 'article_2_8', '新闻详细内容:社会新闻_8', '1', '2017-01-16 15:20:11.258000', '2017-01-16 15:20:11.258000', null);
INSERT INTO `cmscore_article` VALUES ('110', '社会新闻_9', 'article_2_9', '新闻详细内容:社会新闻_9', '1', '2017-01-16 15:20:11.270000', '2017-01-16 15:20:11.270000', null);
INSERT INTO `cmscore_article` VALUES ('111', '社会新闻_10', 'article_2_10', '新闻详细内容:社会新闻_10', '1', '2017-01-16 15:20:11.282000', '2017-01-16 15:20:11.282000', null);
INSERT INTO `cmscore_article` VALUES ('112', '科技新闻_1', 'article_3_1', '新闻详细内容:科技新闻_1', '1', '2017-01-16 15:20:11.298000', '2017-01-16 15:20:11.298000', null);
INSERT INTO `cmscore_article` VALUES ('113', '科技新闻_2', 'article_3_2', '新闻详细内容:科技新闻_2', '1', '2017-01-16 15:20:11.310000', '2017-01-16 15:20:11.310000', null);
INSERT INTO `cmscore_article` VALUES ('114', '科技新闻_3', 'article_3_3', '新闻详细内容:科技新闻_3', '1', '2017-01-16 15:20:11.321000', '2017-01-16 15:20:11.321000', null);
INSERT INTO `cmscore_article` VALUES ('115', '科技新闻_4', 'article_3_4', '新闻详细内容:科技新闻_4', '1', '2017-01-16 15:20:11.333000', '2017-01-16 15:20:11.333000', null);
INSERT INTO `cmscore_article` VALUES ('116', '科技新闻_5', 'article_3_5', '新闻详细内容:科技新闻_5', '1', '2017-01-16 15:20:11.345000', '2017-01-16 15:20:11.345000', null);
INSERT INTO `cmscore_article` VALUES ('117', '科技新闻_6', 'article_3_6', '新闻详细内容:科技新闻_6', '1', '2017-01-16 15:20:11.356000', '2017-01-16 15:20:11.356000', null);
INSERT INTO `cmscore_article` VALUES ('118', '科技新闻_7', 'article_3_7', '新闻详细内容:科技新闻_7', '1', '2017-01-16 15:20:11.370000', '2017-01-16 15:20:11.370000', null);
INSERT INTO `cmscore_article` VALUES ('119', '科技新闻_8', 'article_3_8', '新闻详细内容:科技新闻_8', '1', '2017-01-16 15:20:11.382000', '2017-01-16 15:20:11.382000', null);
INSERT INTO `cmscore_article` VALUES ('120', '科技新闻_9', 'article_3_9', '新闻详细内容:科技新闻_9', '1', '2017-01-16 15:20:11.394000', '2017-01-16 15:20:11.394000', null);
INSERT INTO `cmscore_article` VALUES ('121', '科技新闻_10', 'article_3_10', '新闻详细内容:科技新闻_10', '1', '2017-01-16 15:20:11.405000', '2017-01-16 15:20:11.405000', null);
INSERT INTO `cmscore_article` VALUES ('122', '国外新闻_1', 'article_4_1', '新闻详细内容:国外新闻_1', '1', '2017-01-16 17:00:12.543000', '2017-01-16 17:00:12.543000', null);
INSERT INTO `cmscore_article` VALUES ('123', '国外新闻_2', 'article_4_2', '新闻详细内容:国外新闻_2', '1', '2017-01-16 17:00:12.555000', '2017-01-16 17:00:12.555000', null);
INSERT INTO `cmscore_article` VALUES ('124', '国外新闻_3', 'article_4_3', '新闻详细内容:国外新闻_3', '1', '2017-01-16 17:00:12.569000', '2017-01-16 17:00:12.569000', null);
INSERT INTO `cmscore_article` VALUES ('125', '国外新闻_4', 'article_4_4', '新闻详细内容:国外新闻_4', '1', '2017-01-16 17:00:12.581000', '2017-01-16 17:00:12.581000', null);
INSERT INTO `cmscore_article` VALUES ('126', '国外新闻_5', 'article_4_5', '新闻详细内容:国外新闻_5', '1', '2017-01-16 17:00:12.593000', '2017-01-16 17:00:12.593000', null);
INSERT INTO `cmscore_article` VALUES ('127', '国外新闻_6', 'article_4_6', '新闻详细内容:国外新闻_6', '1', '2017-01-16 17:00:12.604000', '2017-01-16 17:00:12.604000', null);
INSERT INTO `cmscore_article` VALUES ('128', '国外新闻_7', 'article_4_7', '新闻详细内容:国外新闻_7', '1', '2017-01-16 17:00:12.616000', '2017-01-16 17:00:12.616000', null);
INSERT INTO `cmscore_article` VALUES ('129', '国外新闻_8', 'article_4_8', '新闻详细内容:国外新闻_8', '1', '2017-01-16 17:00:12.629000', '2017-01-16 17:00:12.629000', null);
INSERT INTO `cmscore_article` VALUES ('130', '国外新闻_9', 'article_4_9', '新闻详细内容:国外新闻_9', '1', '2017-01-16 17:00:12.645000', '2017-01-16 17:00:12.645000', null);
INSERT INTO `cmscore_article` VALUES ('131', '国外新闻_10', 'article_4_10', '新闻详细内容:国外新闻_10', '1', '2017-01-16 17:00:12.663000', '2017-01-16 17:00:12.663000', null);

-- ----------------------------
-- Table structure for cmscore_article_column
-- ----------------------------
DROP TABLE IF EXISTS `cmscore_article_column`;
CREATE TABLE `cmscore_article_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CMScore_article_column_article_id_44c03214_uniq` (`article_id`,`column_id`),
  KEY `CMScore_article_column_a00c1b00` (`article_id`),
  KEY `CMScore_article_column_cd4a4bf9` (`column_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmscore_article_column
-- ----------------------------
INSERT INTO `cmscore_article_column` VALUES ('91', '92', '13');
INSERT INTO `cmscore_article_column` VALUES ('92', '93', '13');
INSERT INTO `cmscore_article_column` VALUES ('93', '94', '13');
INSERT INTO `cmscore_article_column` VALUES ('94', '95', '13');
INSERT INTO `cmscore_article_column` VALUES ('95', '96', '13');
INSERT INTO `cmscore_article_column` VALUES ('96', '97', '13');
INSERT INTO `cmscore_article_column` VALUES ('97', '98', '13');
INSERT INTO `cmscore_article_column` VALUES ('98', '99', '13');
INSERT INTO `cmscore_article_column` VALUES ('99', '100', '13');
INSERT INTO `cmscore_article_column` VALUES ('100', '101', '13');
INSERT INTO `cmscore_article_column` VALUES ('101', '102', '14');
INSERT INTO `cmscore_article_column` VALUES ('102', '103', '14');
INSERT INTO `cmscore_article_column` VALUES ('103', '104', '14');
INSERT INTO `cmscore_article_column` VALUES ('104', '105', '14');
INSERT INTO `cmscore_article_column` VALUES ('105', '106', '14');
INSERT INTO `cmscore_article_column` VALUES ('106', '107', '14');
INSERT INTO `cmscore_article_column` VALUES ('107', '108', '14');
INSERT INTO `cmscore_article_column` VALUES ('108', '109', '14');
INSERT INTO `cmscore_article_column` VALUES ('109', '110', '14');
INSERT INTO `cmscore_article_column` VALUES ('110', '111', '14');
INSERT INTO `cmscore_article_column` VALUES ('111', '112', '15');
INSERT INTO `cmscore_article_column` VALUES ('112', '113', '15');
INSERT INTO `cmscore_article_column` VALUES ('113', '114', '15');
INSERT INTO `cmscore_article_column` VALUES ('114', '115', '15');
INSERT INTO `cmscore_article_column` VALUES ('115', '116', '15');
INSERT INTO `cmscore_article_column` VALUES ('116', '117', '15');
INSERT INTO `cmscore_article_column` VALUES ('117', '118', '15');
INSERT INTO `cmscore_article_column` VALUES ('118', '119', '15');
INSERT INTO `cmscore_article_column` VALUES ('119', '120', '15');
INSERT INTO `cmscore_article_column` VALUES ('120', '121', '15');
INSERT INTO `cmscore_article_column` VALUES ('121', '122', '16');
INSERT INTO `cmscore_article_column` VALUES ('122', '123', '16');
INSERT INTO `cmscore_article_column` VALUES ('123', '124', '16');
INSERT INTO `cmscore_article_column` VALUES ('124', '125', '16');
INSERT INTO `cmscore_article_column` VALUES ('125', '126', '16');
INSERT INTO `cmscore_article_column` VALUES ('126', '127', '16');
INSERT INTO `cmscore_article_column` VALUES ('127', '128', '16');
INSERT INTO `cmscore_article_column` VALUES ('128', '129', '16');
INSERT INTO `cmscore_article_column` VALUES ('129', '130', '16');
INSERT INTO `cmscore_article_column` VALUES ('130', '131', '16');

-- ----------------------------
-- Table structure for cmscore_column
-- ----------------------------
DROP TABLE IF EXISTS `cmscore_column`;
CREATE TABLE `cmscore_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `intro` longtext NOT NULL,
  `home_display` tinyint(1) NOT NULL,
  `nav_display` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmscore_column
-- ----------------------------
INSERT INTO `cmscore_column` VALUES ('13', '体育新闻', 'sport', '', '1', '1', '3');
INSERT INTO `cmscore_column` VALUES ('14', '社会新闻', 'society', '', '1', '1', '2');
INSERT INTO `cmscore_column` VALUES ('15', '科技新闻', 'science', '', '1', '1', '1');
INSERT INTO `cmscore_column` VALUES ('16', '国外新闻', 'foreign', '', '1', '1', '4');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-01-16 14:39:22.990000', '1', 'Column object', '2', '[{\"changed\": {\"fields\": [\"intro\", \"nav_display\", \"home_display\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2017-01-16 14:39:39.494000', '2', 'Column object', '2', '[{\"changed\": {\"fields\": [\"intro\", \"nav_display\", \"home_display\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2017-01-16 14:41:28.646000', '3', 'Column object', '2', '[{\"changed\": {\"fields\": [\"intro\", \"nav_display\", \"home_display\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2017-01-16 15:01:47.536000', '4', 'Column object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2017-01-16 15:05:33.999000', '3', 'Column object', '2', '[{\"changed\": {\"fields\": [\"sort\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2017-01-16 15:06:04.131000', '1', 'Column object', '2', '[{\"changed\": {\"fields\": [\"sort\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2017-01-16 15:06:09.565000', '4', 'Column object', '2', '[{\"changed\": {\"fields\": [\"sort\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2017-01-16 15:37:09.963000', '15', '科技新闻', '2', '[{\"changed\": {\"fields\": [\"nav_display\", \"home_display\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2017-01-16 15:37:21.247000', '14', '社会新闻', '2', '[{\"changed\": {\"fields\": [\"sort\", \"nav_display\", \"home_display\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2017-01-16 15:37:32.173000', '13', '体育新闻', '2', '[{\"changed\": {\"fields\": [\"sort\", \"nav_display\", \"home_display\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2017-01-16 17:00:49.459000', '16', '国外新闻', '2', '[{\"changed\": {\"fields\": [\"sort\", \"nav_display\", \"home_display\"]}}]', '8', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'CMScore', 'article');
INSERT INTO `django_content_type` VALUES ('8', 'CMScore', 'column');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-01-16 14:20:05.964000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-01-16 14:20:07.889000');
INSERT INTO `django_migrations` VALUES ('3', 'CMScore', '0001_initial', '2017-01-16 14:20:08.858000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0001_initial', '2017-01-16 14:20:09.307000');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0002_logentry_remove_auto_add', '2017-01-16 14:20:09.331000');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2017-01-16 14:20:09.576000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2017-01-16 14:20:09.678000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2017-01-16 14:20:09.798000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2017-01-16 14:20:09.822000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2017-01-16 14:20:09.983000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2017-01-16 14:20:09.993000');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2017-01-16 14:20:10.020000');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2017-01-16 14:20:10.132000');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2017-01-16 14:20:10.282000');
INSERT INTO `django_migrations` VALUES ('15', 'CMScore', '0002_auto_20170116_2236', '2017-01-16 14:36:10.410000');
INSERT INTO `django_migrations` VALUES ('16', 'CMScore', '0003_auto_20170116_2304', '2017-01-16 15:04:52.603000');
INSERT INTO `django_migrations` VALUES ('17', 'CMScore', '0004_auto_20170116_2319', '2017-01-16 15:20:05.954000');
INSERT INTO `django_migrations` VALUES ('18', 'CMScore', '0005_auto_20170116_2334', '2017-01-16 15:34:56.646000');
INSERT INTO `django_migrations` VALUES ('19', 'CMScore', '0006_auto_20170116_2336', '2017-01-16 15:36:57.569000');
INSERT INTO `django_migrations` VALUES ('20', 'CMScore', '0007_auto_20170117_0101', '2017-01-16 17:01:17.831000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('pfb30gyym5uvf3jqf93iyjgv3wym7bp9', 'YTQxOTMzODE1MzQzN2FlNjQ2ZmMyNzM5ZDJjODMwODBjOGNlNmY4Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImY1ZTZmNGM4OGQwMGFiZmViZmY0YTIzMWIzOTE3MDU3NjIyMWFmNDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-30 14:35:37.065000');
SET FOREIGN_KEY_CHECKS=1;
