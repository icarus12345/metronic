/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : metronic

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-03-16 16:49:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_users
-- ----------------------------
DROP TABLE IF EXISTS `auth_users`;
CREATE TABLE `auth_users` (
  `ause_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `ause_key` varchar(32) NOT NULL,
  `ause_group` smallint(6) DEFAULT NULL,
  `ause_name` varchar(100) NOT NULL,
  `ause_username` varchar(50) NOT NULL,
  `ause_email` varchar(50) NOT NULL,
  `ause_secretkey` varchar(52) NOT NULL,
  `ause_salt` varchar(32) NOT NULL,
  `ause_password` varchar(32) NOT NULL,
  `ause_position` smallint(6) NOT NULL,
  `ause_status` varchar(10) DEFAULT 'false',
  `ause_insert` datetime NOT NULL,
  `ause_update` datetime DEFAULT NULL,
  `ause_delete` datetime DEFAULT NULL,
  `ause_picture` varchar(120) DEFAULT NULL,
  `ause_authority` varchar(20) DEFAULT NULL,
  `ause_lastlogin` datetime DEFAULT NULL,
  PRIMARY KEY (`ause_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10025 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_users
-- ----------------------------
INSERT INTO `auth_users` VALUES ('10001', 'V9ZXr6Uw', '10002', 'Trường Khương', 'khuongxuantruong@gmail.com', 'khuongxuantruong@gmail.com', '7PtY3oAdRdK6P7YncnroQ2KLnLoPjrnW', 'FA04iw9qhWlT', '27d168e16f3cafbdd8c5f0c1be19608e', '1', 'true', '2013-04-02 16:43:42', '2014-12-12 09:58:06', null, 'https://lh5.googleusercontent.com/-WAMgTlfd5og/AAAAAAAAAAI/AAAAAAAAAP0/b0LCEJbexS4/photo.jpg', 'Administrator', '2013-04-08 10:01:04');
INSERT INTO `auth_users` VALUES ('10018', 'QOEb1vsc', null, 'Admin', 'admin', 'Admin@gmail.com', 'qBKh4pA07aiU4WNbLCHLjhzpaFnjWXYP', '7PrSkIXh', '0903ce30d609ba18172fc0605c2848c2', '2', 'true', '2014-12-11 23:01:35', '2014-12-12 05:07:50', null, null, 'Admin', null);
INSERT INTO `auth_users` VALUES ('10020', 'h8ovaLKc', null, 'View', 'View', 'View@gmail.com', 'PMvaAlFujxu8GZvKzLPIjQOaCu4Eba5y', 'g5AVZC8K', '477b560f0f16773d3348ae9711052ba9', '2', 'false', '2014-12-12 08:31:32', '2015-07-04 22:09:45', null, null, 'View', null);

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `lang_id` int(4) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) DEFAULT NULL,
  `lang_short` varchar(10) DEFAULT NULL,
  `lang_insert` datetime DEFAULT NULL,
  `lang_update` datetime DEFAULT NULL,
  `lang_status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', 'English', 'en', null, null, 'true');
INSERT INTO `languages` VALUES ('2', 'German', 'de', null, '2015-07-31 11:15:08', 'false');
INSERT INTO `languages` VALUES ('3', 'French', 'fr', null, '2015-07-21 10:17:32', 'false');
INSERT INTO `languages` VALUES ('4', 'Dutch', 'nl', null, null, 'false');
INSERT INTO `languages` VALUES ('5', 'Italian', 'it', null, null, 'false');
INSERT INTO `languages` VALUES ('6', 'Spanish', 'es', null, null, 'false');
INSERT INTO `languages` VALUES ('7', 'Polish', 'pl', null, null, 'false');
INSERT INTO `languages` VALUES ('8', 'Russian', 'ru', null, null, 'false');
INSERT INTO `languages` VALUES ('9', 'Japanese', 'ja', null, '2015-07-31 11:15:09', 'false');
INSERT INTO `languages` VALUES ('10', 'Portuguese', 'pt', null, null, 'false');
INSERT INTO `languages` VALUES ('11', 'Swedish', 'sv', null, null, 'false');
INSERT INTO `languages` VALUES ('12', 'Chinese', 'zh', null, null, 'false');
INSERT INTO `languages` VALUES ('13', 'Catalan', 'ca', null, null, 'false');
INSERT INTO `languages` VALUES ('14', 'Ukrainian', 'uk', null, null, 'false');
INSERT INTO `languages` VALUES ('15', 'Norwegian (Bokmål)', 'no', null, null, 'false');
INSERT INTO `languages` VALUES ('16', 'Finnish', 'fi', null, null, 'false');
INSERT INTO `languages` VALUES ('17', 'Vietnamese', 'vi', null, '2015-07-20 14:54:20', 'true');
INSERT INTO `languages` VALUES ('18', 'Czech', 'cs', null, null, 'false');
INSERT INTO `languages` VALUES ('19', 'Hungarian', 'hu', null, null, 'false');
INSERT INTO `languages` VALUES ('20', 'Korean', 'ko', null, null, 'false');
INSERT INTO `languages` VALUES ('21', 'Indonesian', 'id', null, null, 'false');
INSERT INTO `languages` VALUES ('22', 'Turkish', 'tr', null, null, 'false');
INSERT INTO `languages` VALUES ('23', 'Romanian', 'ro', null, null, 'false');
INSERT INTO `languages` VALUES ('24', 'Persian', 'fa', null, null, 'false');
INSERT INTO `languages` VALUES ('25', 'Arabic', 'ar', null, null, 'false');
INSERT INTO `languages` VALUES ('26', 'Danish', 'da', null, null, 'false');
INSERT INTO `languages` VALUES ('27', 'Esperanto', 'eo', null, null, 'false');
INSERT INTO `languages` VALUES ('28', 'Serbian', 'sr', null, null, 'false');
INSERT INTO `languages` VALUES ('29', 'Lithuanian', 'lt', null, null, 'false');
INSERT INTO `languages` VALUES ('30', 'Slovak', 'sk', null, null, 'false');
INSERT INTO `languages` VALUES ('31', 'Malay', 'ms', null, null, 'false');
INSERT INTO `languages` VALUES ('32', 'Hebrew', 'he', null, null, 'false');
INSERT INTO `languages` VALUES ('33', 'Bulgarian', 'bg', null, null, 'false');
INSERT INTO `languages` VALUES ('34', 'Slovenian', 'sl', null, null, 'false');
INSERT INTO `languages` VALUES ('35', 'Volapük', 'vo', null, null, 'false');
INSERT INTO `languages` VALUES ('36', 'Kazakh', 'kk', null, null, 'false');
INSERT INTO `languages` VALUES ('37', 'Waray-Waray', 'war', null, null, 'false');
INSERT INTO `languages` VALUES ('38', 'Basque', 'eu', null, null, 'false');
INSERT INTO `languages` VALUES ('39', 'Croatian', 'hr', null, null, 'false');
INSERT INTO `languages` VALUES ('40', 'Hindi', 'hi', null, null, 'false');
INSERT INTO `languages` VALUES ('41', 'Estonian', 'et', null, null, 'false');
INSERT INTO `languages` VALUES ('42', 'Azerbaijani', 'az', null, null, 'false');
INSERT INTO `languages` VALUES ('43', 'Galician', 'gl', null, null, 'false');
INSERT INTO `languages` VALUES ('44', 'Simple English', 'simple', null, null, 'false');
INSERT INTO `languages` VALUES ('45', 'Norwegian (Nynorsk)', 'nn', null, null, 'false');
INSERT INTO `languages` VALUES ('46', 'Thai', 'th', null, null, 'false');
INSERT INTO `languages` VALUES ('47', 'Newar / Nepal Bhasa', 'new', null, null, 'false');
INSERT INTO `languages` VALUES ('48', 'Greek', 'el', null, null, 'false');
INSERT INTO `languages` VALUES ('49', 'Aromanian', 'roa-rup', null, null, 'false');
INSERT INTO `languages` VALUES ('50', 'Latin', 'la', null, null, 'false');
INSERT INTO `languages` VALUES ('51', 'Occitan', 'oc', null, null, 'false');
INSERT INTO `languages` VALUES ('52', 'Tagalog', 'tl', null, null, 'false');
INSERT INTO `languages` VALUES ('53', 'Haitian', 'ht', null, null, 'false');
INSERT INTO `languages` VALUES ('54', 'Macedonian', 'mk', null, null, 'false');
INSERT INTO `languages` VALUES ('55', 'Georgian', 'ka', null, null, 'false');
INSERT INTO `languages` VALUES ('56', 'Serbo-Croatian', 'sh', null, null, 'false');
INSERT INTO `languages` VALUES ('57', 'Telugu', 'te', null, null, 'false');
INSERT INTO `languages` VALUES ('58', 'Piedmontese', 'pms', null, null, 'false');
INSERT INTO `languages` VALUES ('59', 'Cebuano', 'ceb', null, null, 'false');
INSERT INTO `languages` VALUES ('60', 'Tamil', 'ta', null, null, 'false');
INSERT INTO `languages` VALUES ('61', 'Belarusian (Taraškievica)', 'be-x-old', null, null, 'false');
INSERT INTO `languages` VALUES ('62', 'Breton', 'br', null, null, 'false');
INSERT INTO `languages` VALUES ('63', 'Latvian', 'lv', null, null, 'false');
INSERT INTO `languages` VALUES ('64', 'Javanese', 'jv', null, null, 'false');
INSERT INTO `languages` VALUES ('65', 'Albanian', 'sq', null, null, 'false');
INSERT INTO `languages` VALUES ('66', 'Belarusian', 'be', null, null, 'false');
INSERT INTO `languages` VALUES ('67', 'Marathi', 'mr', null, null, 'false');
INSERT INTO `languages` VALUES ('68', 'Welsh', 'cy', null, null, 'false');
INSERT INTO `languages` VALUES ('69', 'Luxembourgish', 'lb', null, null, 'false');
INSERT INTO `languages` VALUES ('70', 'Icelandic', 'is', null, null, 'false');
INSERT INTO `languages` VALUES ('71', 'Bosnian', 'bs', null, null, 'false');
INSERT INTO `languages` VALUES ('72', 'Yoruba', 'yo', null, null, 'false');
INSERT INTO `languages` VALUES ('73', 'Malagasy', 'mg', null, null, 'false');
INSERT INTO `languages` VALUES ('74', 'Aragonese', 'an', null, null, 'false');
INSERT INTO `languages` VALUES ('75', 'Bishnupriya Manipuri', 'bpy', null, null, 'false');
INSERT INTO `languages` VALUES ('76', 'Lombard', 'lmo', null, null, 'false');
INSERT INTO `languages` VALUES ('77', 'West Frisian', 'fy', null, null, 'false');
INSERT INTO `languages` VALUES ('78', 'Bengali', 'bn', null, null, 'false');
INSERT INTO `languages` VALUES ('79', 'Ido', 'io', null, null, 'false');
INSERT INTO `languages` VALUES ('80', 'Swahili', 'sw', null, null, 'false');
INSERT INTO `languages` VALUES ('81', 'Gujarati', 'gu', null, null, 'false');
INSERT INTO `languages` VALUES ('82', 'Malayalam', 'ml', null, null, 'false');
INSERT INTO `languages` VALUES ('83', 'Western Panjabi', 'pnb', null, null, 'false');
INSERT INTO `languages` VALUES ('84', 'Afrikaans', 'af', null, null, 'false');
INSERT INTO `languages` VALUES ('85', 'Low Saxon', 'nds', null, null, 'false');
INSERT INTO `languages` VALUES ('86', 'Sicilian', 'scn', null, null, 'false');
INSERT INTO `languages` VALUES ('87', 'Urdu', 'ur', null, null, 'false');
INSERT INTO `languages` VALUES ('88', 'Kurdish', 'ku', null, null, 'false');
INSERT INTO `languages` VALUES ('89', 'Cantonese', 'zh-yue', null, null, 'false');
INSERT INTO `languages` VALUES ('90', 'Armenian', 'hy', null, null, 'false');
INSERT INTO `languages` VALUES ('91', 'Quechua', 'qu', null, null, 'false');
INSERT INTO `languages` VALUES ('92', 'Sundanese', 'su', null, null, 'false');
INSERT INTO `languages` VALUES ('93', 'Nepali', 'ne', null, null, 'false');
INSERT INTO `languages` VALUES ('94', 'Zazaki', 'diq', null, null, 'false');
INSERT INTO `languages` VALUES ('95', 'Asturian', 'ast', null, null, 'false');
INSERT INTO `languages` VALUES ('96', 'Tatar', 'tt', null, null, 'false');
INSERT INTO `languages` VALUES ('97', 'Neapolitan', 'nap', null, null, 'false');
INSERT INTO `languages` VALUES ('98', 'Irish', 'ga', null, null, 'false');
INSERT INTO `languages` VALUES ('99', 'Chuvash', 'cv', null, null, 'false');
INSERT INTO `languages` VALUES ('100', 'Samogitian', 'bat-smg', null, null, 'false');
INSERT INTO `languages` VALUES ('101', 'Walloon', 'wa', null, null, 'false');
INSERT INTO `languages` VALUES ('102', 'Amharic', 'am', null, null, 'false');
INSERT INTO `languages` VALUES ('103', 'Kannada', 'kn', null, null, 'false');
INSERT INTO `languages` VALUES ('104', 'Alemannic', 'als', null, null, 'false');
INSERT INTO `languages` VALUES ('105', 'Buginese', 'bug', null, null, 'false');
INSERT INTO `languages` VALUES ('106', 'Burmese', 'my', null, null, 'false');
INSERT INTO `languages` VALUES ('107', 'Interlingua', 'ia', null, null, 'false');

-- ----------------------------
-- Table structure for lang_alias
-- ----------------------------
DROP TABLE IF EXISTS `lang_alias`;
CREATE TABLE `lang_alias` (
  `als_id` int(11) NOT NULL AUTO_INCREMENT,
  `als_alias` varchar(255) DEFAULT NULL,
  `als_lang` varchar(10) DEFAULT NULL,
  `als_token` varchar(255) DEFAULT NULL,
  `als_insert` datetime DEFAULT NULL,
  `als_update` datetime DEFAULT NULL,
  `als_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`als_id`),
  UNIQUE KEY `_title_lang` (`als_lang`,`als_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of lang_alias
-- ----------------------------
INSERT INTO `lang_alias` VALUES ('1', 'material', 'en', 'a13415493f3ce8a05a0aa36895377235', '2015-07-20 15:11:37', null, 'cake');
INSERT INTO `lang_alias` VALUES ('2', 'nguyen-lieu', 'vi', 'a13415493f3ce8a05a0aa36895377235', '2015-07-20 15:11:37', null, 'cake');
INSERT INTO `lang_alias` VALUES ('3', 'cake-mold', 'en', '86b387e10308c39782a524a10ac15f45', '2015-07-20 15:12:00', null, 'cake');
INSERT INTO `lang_alias` VALUES ('4', 'khuon-khay', 'vi', '86b387e10308c39782a524a10ac15f45', '2015-07-20 15:12:00', null, 'cake');
INSERT INTO `lang_alias` VALUES ('5', 'tools', 'en', 'd5be6c61fe5d4ed45cf08067a53a037d', '2015-07-20 15:16:32', null, 'cake');
INSERT INTO `lang_alias` VALUES ('6', 'dung-cu', 'vi', 'd5be6c61fe5d4ed45cf08067a53a037d', '2015-07-20 15:16:32', null, 'cake');
INSERT INTO `lang_alias` VALUES ('7', 'dede', 'de', 'a13415493f3ce8a05a0aa36895377235', null, null, 'cake');
INSERT INTO `lang_alias` VALUES ('8', 'frfrfr', 'fr', 'a13415493f3ce8a05a0aa36895377235', null, null, 'cake');
INSERT INTO `lang_alias` VALUES ('9', 'marry-cake', 'en', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', null, 'cake');
INSERT INTO `lang_alias` VALUES ('10', 'banh-cuoi', 'vi', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', null, 'cake');
INSERT INTO `lang_alias` VALUES ('21', 'birthday-cake', 'en', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', null, 'cake');
INSERT INTO `lang_alias` VALUES ('22', 'banh-sinh-nhat', 'vi', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', null, 'cake');
INSERT INTO `lang_alias` VALUES ('27', 'the-powder', 'en', '690435f750175022aec45a00a7f4c87f', '2016-03-14 09:58:03', null, 'cake');
INSERT INTO `lang_alias` VALUES ('28', 'cac-loai-bot', 'vi', '690435f750175022aec45a00a7f4c87f', '2016-03-14 09:58:03', null, 'cake');
INSERT INTO `lang_alias` VALUES ('29', 'ready-mixed-powder', 'en', 'a63da31c25eb1002839fc96d1effd4de', '2016-03-14 10:06:53', null, 'cake');
INSERT INTO `lang_alias` VALUES ('30', 'bot-tron-san', 'vi', 'a63da31c25eb1002839fc96d1effd4de', '2016-03-14 10:06:53', null, 'cake');
INSERT INTO `lang_alias` VALUES ('31', 'additives-spice', 'en', '89e6b18d941a36d529dbbc17cd523410', '2016-03-14 10:08:06', null, 'cake');
INSERT INTO `lang_alias` VALUES ('32', 'phu-gia-huong-lieu', 'vi', '89e6b18d941a36d529dbbc17cd523410', '2016-03-14 10:08:06', null, 'cake');
INSERT INTO `lang_alias` VALUES ('37', 'packaging', 'en', '5bd6ea058447791bb81028d3e1bf76a1', '2016-03-14 11:28:29', null, 'cake');
INSERT INTO `lang_alias` VALUES ('38', 'bao-bi', 'vi', '5bd6ea058447791bb81028d3e1bf76a1', '2016-03-14 11:28:29', null, 'cake');
INSERT INTO `lang_alias` VALUES ('39', 'equipments', 'en', '2d82c0ce6ec298d8234797802fa04556', '2016-03-14 11:29:04', null, 'cake');
INSERT INTO `lang_alias` VALUES ('40', 'thiet-bi', 'vi', '2d82c0ce6ec298d8234797802fa04556', '2016-03-14 11:29:04', null, 'cake');

-- ----------------------------
-- Table structure for lang_category
-- ----------------------------
DROP TABLE IF EXISTS `lang_category`;
CREATE TABLE `lang_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_thumb` varchar(255) DEFAULT NULL,
  `cat_image` varchar(255) DEFAULT NULL,
  `cat_cover` varchar(255) DEFAULT NULL,
  `cat_parent` int(11) NOT NULL DEFAULT '0',
  `cat_status` varchar(5) NOT NULL DEFAULT 'true',
  `cat_position` int(4) NOT NULL,
  `cat_link` varchar(255) NOT NULL,
  `cat_type` varchar(50) NOT NULL DEFAULT 'Web',
  `cat_insert` datetime DEFAULT NULL,
  `cat_update` datetime DEFAULT NULL,
  `cat_lock` varchar(5) DEFAULT NULL,
  `cat_value` varchar(255) DEFAULT NULL,
  `cat_token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lang_category
-- ----------------------------
INSERT INTO `lang_category` VALUES ('1', '/data/image/ILoveYouThisMuch-90421.jpg', null, null, '0', 'true', '0', '', 'cake', '2015-07-20 15:11:37', '2016-03-14 10:10:28', null, '>1', 'a13415493f3ce8a05a0aa36895377235');
INSERT INTO `lang_category` VALUES ('2', '', null, null, '0', 'true', '0', '', 'cake', '2015-07-20 15:12:00', '2016-03-14 11:25:35', null, '>2', '86b387e10308c39782a524a10ac15f45');
INSERT INTO `lang_category` VALUES ('3', '', null, null, '0', 'true', '0', '', 'cake', '2015-07-20 15:16:32', '2016-03-14 11:27:45', null, '>3', 'd5be6c61fe5d4ed45cf08067a53a037d');
INSERT INTO `lang_category` VALUES ('8', '', null, null, '0', 'true', '0', '', 'cake', '2016-03-14 11:28:29', null, null, '>8', '5bd6ea058447791bb81028d3e1bf76a1');
INSERT INTO `lang_category` VALUES ('5', '', null, null, '1', 'true', '0', '', 'cake', '2016-03-14 09:58:03', '2016-03-14 10:04:04', null, '>1>5', '690435f750175022aec45a00a7f4c87f');
INSERT INTO `lang_category` VALUES ('6', '', null, null, '1', 'true', '0', '', 'cake', '2016-03-14 10:06:53', null, null, '>1>6', 'a63da31c25eb1002839fc96d1effd4de');
INSERT INTO `lang_category` VALUES ('7', '', null, null, '1', 'true', '0', '', 'cake', '2016-03-14 10:08:06', null, null, '>1>7', '89e6b18d941a36d529dbbc17cd523410');
INSERT INTO `lang_category` VALUES ('9', '', null, null, '0', 'true', '0', '', 'cake', '2016-03-14 11:29:04', null, null, '>9', '2d82c0ce6ec298d8234797802fa04556');

-- ----------------------------
-- Table structure for lang_content
-- ----------------------------
DROP TABLE IF EXISTS `lang_content`;
CREATE TABLE `lang_content` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_token` varchar(255) DEFAULT NULL,
  `co_type` varchar(20) DEFAULT NULL,
  `co_content` longtext,
  `co_insert` datetime DEFAULT NULL,
  `co_update` datetime DEFAULT NULL,
  `co_lang` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`co_id`),
  UNIQUE KEY `_content_lang` (`co_token`,`co_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang_content
-- ----------------------------
INSERT INTO `lang_content` VALUES ('1', 'b3ab7b1902fc1016af2a0372f02cdab9', 'cake', 'updating', null, null, 'en');
INSERT INTO `lang_content` VALUES ('2', 'b3ab7b1902fc1016af2a0372f02cdab9', 'cake', 'cập nhật', null, null, 'vi');
INSERT INTO `lang_content` VALUES ('3', '54760b5cd376fbc4868776f1f11a8a79', 'cake', '', '2015-07-21 11:18:35', null, 'en');
INSERT INTO `lang_content` VALUES ('4', '54760b5cd376fbc4868776f1f11a8a79', 'cake', '', '2015-07-21 11:18:35', null, 'vi');

-- ----------------------------
-- Table structure for lang_data
-- ----------------------------
DROP TABLE IF EXISTS `lang_data`;
CREATE TABLE `lang_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_data` text,
  `data_token` varchar(32) DEFAULT NULL,
  `data_insert` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `data_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `data_type` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang_data
-- ----------------------------

-- ----------------------------
-- Table structure for lang_desc
-- ----------------------------
DROP TABLE IF EXISTS `lang_desc`;
CREATE TABLE `lang_desc` (
  `de_desc` text,
  `de_lang` varchar(10) NOT NULL DEFAULT '',
  `de_insert` datetime DEFAULT NULL,
  `de_update` datetime DEFAULT NULL,
  `de_token` varchar(255) NOT NULL DEFAULT '',
  `de_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`de_lang`,`de_token`),
  UNIQUE KEY `_desc_lang` (`de_lang`,`de_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang_desc
-- ----------------------------
INSERT INTO `lang_desc` VALUES ('dede', 'de', null, null, 'a13415493f3ce8a05a0aa36895377235', 'cake');
INSERT INTO `lang_desc` VALUES ('Equipments', 'en', '2016-03-14 11:29:04', null, '2d82c0ce6ec298d8234797802fa04556', 'cake');
INSERT INTO `lang_desc` VALUES ('', 'en', '2015-07-21 11:18:35', null, '54760b5cd376fbc4868776f1f11a8a79', 'cake');
INSERT INTO `lang_desc` VALUES ('Packaging', 'en', '2016-03-14 11:28:29', null, '5bd6ea058447791bb81028d3e1bf76a1', 'cake');
INSERT INTO `lang_desc` VALUES ('The powder', 'en', '2016-03-14 09:58:03', null, '690435f750175022aec45a00a7f4c87f', 'cake');
INSERT INTO `lang_desc` VALUES ('Cake mold', 'en', '2015-07-20 15:12:00', null, '86b387e10308c39782a524a10ac15f45', 'cake');
INSERT INTO `lang_desc` VALUES ('Additives-Spice', 'en', '2016-03-14 10:08:06', null, '89e6b18d941a36d529dbbc17cd523410', 'cake');
INSERT INTO `lang_desc` VALUES ('Material', 'en', '2015-07-20 15:11:37', null, 'a13415493f3ce8a05a0aa36895377235', 'cake');
INSERT INTO `lang_desc` VALUES ('Ready-mixed powder', 'en', '2016-03-14 10:06:53', null, 'a63da31c25eb1002839fc96d1effd4de', 'cake');
INSERT INTO `lang_desc` VALUES ('', 'en', '2015-07-21 10:32:05', null, 'b3ab7b1902fc1016af2a0372f02cdab9', 'cake');
INSERT INTO `lang_desc` VALUES ('Tools', 'en', '2015-07-20 15:16:32', null, 'd5be6c61fe5d4ed45cf08067a53a037d', 'cake');
INSERT INTO `lang_desc` VALUES ('frfr', 'fr', null, null, 'a13415493f3ce8a05a0aa36895377235', 'cake');
INSERT INTO `lang_desc` VALUES ('Thiết bị', 'vi', '2016-03-14 11:29:04', null, '2d82c0ce6ec298d8234797802fa04556', 'cake');
INSERT INTO `lang_desc` VALUES ('', 'vi', '2015-07-21 11:18:35', null, '54760b5cd376fbc4868776f1f11a8a79', 'cake');
INSERT INTO `lang_desc` VALUES ('Bao bì', 'vi', '2016-03-14 11:28:29', null, '5bd6ea058447791bb81028d3e1bf76a1', 'cake');
INSERT INTO `lang_desc` VALUES ('Các loại bột', 'vi', '2016-03-14 09:58:03', null, '690435f750175022aec45a00a7f4c87f', 'cake');
INSERT INTO `lang_desc` VALUES ('Khuôn - Khay', 'vi', '2015-07-20 15:12:00', null, '86b387e10308c39782a524a10ac15f45', 'cake');
INSERT INTO `lang_desc` VALUES ('Phụ gia-Hương liệu', 'vi', '2016-03-14 10:08:06', null, '89e6b18d941a36d529dbbc17cd523410', 'cake');
INSERT INTO `lang_desc` VALUES ('Nguyên Liệu', 'vi', '2015-07-20 15:11:37', null, 'a13415493f3ce8a05a0aa36895377235', 'cake');
INSERT INTO `lang_desc` VALUES ('bột trộn sẵn', 'vi', '2016-03-14 10:06:53', null, 'a63da31c25eb1002839fc96d1effd4de', 'cake');
INSERT INTO `lang_desc` VALUES ('', 'vi', '2015-07-21 10:32:05', null, 'b3ab7b1902fc1016af2a0372f02cdab9', 'cake');
INSERT INTO `lang_desc` VALUES ('Dụng cụ', 'vi', '2015-07-20 15:16:32', null, 'd5be6c61fe5d4ed45cf08067a53a037d', 'cake');

-- ----------------------------
-- Table structure for lang_price
-- ----------------------------
DROP TABLE IF EXISTS `lang_price`;
CREATE TABLE `lang_price` (
  `pri_price` varchar(20) DEFAULT NULL,
  `pri_lang` varchar(10) NOT NULL DEFAULT '',
  `pri_insert` datetime DEFAULT NULL,
  `pri_update` datetime DEFAULT NULL,
  `pri_token` varchar(255) NOT NULL DEFAULT '',
  `pri_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pri_lang`,`pri_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of lang_price
-- ----------------------------

-- ----------------------------
-- Table structure for lang_product
-- ----------------------------
DROP TABLE IF EXISTS `lang_product`;
CREATE TABLE `lang_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(32) DEFAULT NULL,
  `product_thumb` varchar(255) DEFAULT NULL,
  `product_cover` varchar(255) DEFAULT NULL,
  `product_position` int(3) DEFAULT NULL,
  `product_status` varchar(5) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_insert` datetime DEFAULT NULL,
  `product_update` datetime DEFAULT NULL,
  `product_category` int(11) DEFAULT NULL,
  `product_images` text,
  `product_token` varchar(32) DEFAULT NULL,
  `product_view` int(11) DEFAULT '0',
  `product_lock` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of lang_product
-- ----------------------------
INSERT INTO `lang_product` VALUES ('1', 'MC01', '/data/image/ILoveYouThisMuch-90421.jpg', null, null, 'true', 'cake', '2015-07-21 10:32:05', '2016-03-14 09:46:16', '3', '', 'b3ab7b1902fc1016af2a0372f02cdab9', '0', null);
INSERT INTO `lang_product` VALUES ('4', 'BSK01', '/data/image/slider1.jpg', null, null, 'true', 'cake', '2015-07-21 11:18:35', '2015-07-22 09:50:46', '2', '', '54760b5cd376fbc4868776f1f11a8a79', '0', null);

-- ----------------------------
-- Table structure for lang_tag
-- ----------------------------
DROP TABLE IF EXISTS `lang_tag`;
CREATE TABLE `lang_tag` (
  `tag_tag` varchar(255) DEFAULT NULL,
  `tag_lang` varchar(10) NOT NULL DEFAULT '',
  `tag_token` varchar(255) NOT NULL DEFAULT '',
  `tag_insert` datetime DEFAULT NULL,
  `tag_update` datetime DEFAULT NULL,
  `tag_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_lang`,`tag_token`),
  UNIQUE KEY `_title_lang` (`tag_lang`,`tag_token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of lang_tag
-- ----------------------------
INSERT INTO `lang_tag` VALUES ('', 'en', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', null, 'cake');
INSERT INTO `lang_tag` VALUES ('', 'en', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', null, 'cake');
INSERT INTO `lang_tag` VALUES ('', 'vi', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', null, 'cake');
INSERT INTO `lang_tag` VALUES ('', 'vi', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', null, 'cake');

-- ----------------------------
-- Table structure for lang_title
-- ----------------------------
DROP TABLE IF EXISTS `lang_title`;
CREATE TABLE `lang_title` (
  `ti_title` varchar(255) DEFAULT NULL,
  `ti_lang` varchar(10) NOT NULL DEFAULT '',
  `ti_token` varchar(255) NOT NULL DEFAULT '',
  `ti_insert` datetime DEFAULT NULL,
  `ti_update` datetime DEFAULT NULL,
  `ti_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ti_lang`,`ti_token`),
  UNIQUE KEY `_title_lang` (`ti_lang`,`ti_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang_title
-- ----------------------------
INSERT INTO `lang_title` VALUES ('dêde', 'de', 'a13415493f3ce8a05a0aa36895377235', null, null, 'cake');
INSERT INTO `lang_title` VALUES ('Equipments', 'en', '2d82c0ce6ec298d8234797802fa04556', '2016-03-14 11:29:04', null, 'cake');
INSERT INTO `lang_title` VALUES ('Birthday Cake', 'en', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', null, 'cake');
INSERT INTO `lang_title` VALUES ('Packaging', 'en', '5bd6ea058447791bb81028d3e1bf76a1', '2016-03-14 11:28:29', null, 'cake');
INSERT INTO `lang_title` VALUES ('The powder', 'en', '690435f750175022aec45a00a7f4c87f', '2016-03-14 09:58:03', null, 'cake');
INSERT INTO `lang_title` VALUES ('Cake mold', 'en', '86b387e10308c39782a524a10ac15f45', '2015-07-20 15:12:00', null, 'cake');
INSERT INTO `lang_title` VALUES ('Additives-Spice', 'en', '89e6b18d941a36d529dbbc17cd523410', '2016-03-14 10:08:06', null, 'cake');
INSERT INTO `lang_title` VALUES ('Material', 'en', 'a13415493f3ce8a05a0aa36895377235', '2015-07-20 15:11:37', null, 'cake');
INSERT INTO `lang_title` VALUES ('Ready-mixed powder', 'en', 'a63da31c25eb1002839fc96d1effd4de', '2016-03-14 10:06:53', null, 'cake');
INSERT INTO `lang_title` VALUES ('Marry Cake', 'en', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', null, 'cake');
INSERT INTO `lang_title` VALUES ('Tools', 'en', 'd5be6c61fe5d4ed45cf08067a53a037d', '2015-07-20 15:16:32', null, 'cake');
INSERT INTO `lang_title` VALUES ('frfrfr', 'fr', 'a13415493f3ce8a05a0aa36895377235', null, null, 'cake');
INSERT INTO `lang_title` VALUES ('Thiết bị', 'vi', '2d82c0ce6ec298d8234797802fa04556', '2016-03-14 11:29:04', null, 'cake');
INSERT INTO `lang_title` VALUES ('Bánh sinh nhật', 'vi', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', null, 'cake');
INSERT INTO `lang_title` VALUES ('Bao bì', 'vi', '5bd6ea058447791bb81028d3e1bf76a1', '2016-03-14 11:28:29', null, 'cake');
INSERT INTO `lang_title` VALUES ('Các loại bột', 'vi', '690435f750175022aec45a00a7f4c87f', '2016-03-14 09:58:03', null, 'cake');
INSERT INTO `lang_title` VALUES ('Khuôn - Khay', 'vi', '86b387e10308c39782a524a10ac15f45', '2015-07-20 15:12:00', null, 'cake');
INSERT INTO `lang_title` VALUES ('Phụ gia-Hương liệu', 'vi', '89e6b18d941a36d529dbbc17cd523410', '2016-03-14 10:08:06', null, 'cake');
INSERT INTO `lang_title` VALUES ('Nguyên Liệu', 'vi', 'a13415493f3ce8a05a0aa36895377235', '2015-07-20 15:11:37', null, 'cake');
INSERT INTO `lang_title` VALUES ('Bột trộn sẵn', 'vi', 'a63da31c25eb1002839fc96d1effd4de', '2016-03-14 10:06:53', null, 'cake');
INSERT INTO `lang_title` VALUES ('Bánh cưới', 'vi', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', null, 'cake');
INSERT INTO `lang_title` VALUES ('Dụng cụ', 'vi', 'd5be6c61fe5d4ed45cf08067a53a037d', '2015-07-20 15:16:32', null, 'cake');

-- ----------------------------
-- Table structure for _album
-- ----------------------------
DROP TABLE IF EXISTS `_album`;
CREATE TABLE `_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_title` varchar(255) DEFAULT NULL,
  `album_alias` varchar(255) DEFAULT NULL,
  `album_thumb` varchar(255) DEFAULT NULL,
  `album_cover` varchar(255) DEFAULT NULL,
  `album_desc` varchar(255) DEFAULT NULL,
  `album_position` int(3) DEFAULT NULL,
  `album_status` varchar(5) DEFAULT NULL,
  `album_type` varchar(100) DEFAULT NULL,
  `album_insert` datetime DEFAULT NULL,
  `album_update` datetime DEFAULT NULL,
  `album_category` int(11) DEFAULT NULL,
  `album_images` text,
  `album_view` int(11) DEFAULT '0',
  `album_tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _album
-- ----------------------------
INSERT INTO `_album` VALUES ('1000', 'Những mẫu bánh đẹp nhất 2015', 'nhung-mau-banh-dep-nhat-2015', '/data/image/walle.jpg', null, '', null, 'true', 'acake', '2015-07-09 21:40:45', null, null, '/data/image/banh-cuoi.jpg\r\n/data/image/banh-cupcake.jpg\r\n/data/image/banh-sinh-nhat.jpg\r\n/data/image/banh-ve.jpg', '0', '');

-- ----------------------------
-- Table structure for _category
-- ----------------------------
DROP TABLE IF EXISTS `_category`;
CREATE TABLE `_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  `cat_alias` varchar(255) DEFAULT NULL,
  `cat_thumb` varchar(255) DEFAULT NULL,
  `cat_image` varchar(255) DEFAULT NULL,
  `cat_cover` varchar(255) DEFAULT NULL,
  `cat_desc` varchar(1000) NOT NULL,
  `cat_parent` int(11) NOT NULL DEFAULT '0',
  `cat_status` varchar(5) NOT NULL DEFAULT 'true',
  `cat_position` int(4) NOT NULL,
  `cat_link` varchar(255) NOT NULL,
  `cat_type` varchar(50) NOT NULL DEFAULT 'Web',
  `cat_insert` datetime DEFAULT NULL,
  `cat_update` datetime DEFAULT NULL,
  `cat_lock` varchar(5) DEFAULT NULL,
  `cat_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _category
-- ----------------------------
INSERT INTO `_category` VALUES ('41', 'Cake Category ', null, 'fa fa-list-ul', null, null, 'icon-settings ', '50', 'true', '1', '/dashboard/cp/category/viewport/01011/cake', 'cms', '2014-12-09 23:07:01', '2015-07-20 16:26:54', null, '>50>41');
INSERT INTO `_category` VALUES ('44', 'Content', null, 'fa fa-newspaper-o', null, null, '', '50', 'true', '3', '', 'cms', '2014-12-10 08:22:36', '2015-07-20 16:26:54', null, '>50>44');
INSERT INTO `_category` VALUES ('45', 'Home Slider', null, 'fa fa-image', null, null, '', '50', 'true', '4', '/dashboard/cp/image/viewport/11111/slider', 'cms', '2014-12-10 08:22:52', '2015-07-20 16:26:54', null, '>50>45');
INSERT INTO `_category` VALUES ('46', 'Application', null, ' fa fa-bars', null, null, '', '50', 'true', '10', '', 'cms', '2014-12-10 08:23:09', '2015-07-20 16:26:54', null, '>50>46');
INSERT INTO `_category` VALUES ('423', 'Cake', null, 'icon-handbag', null, null, '', '50', 'true', '2', '/dashboard/cp/product/viewport/111115/cake', 'cms', '2015-07-04 09:14:34', '2015-07-20 16:26:54', null, '>50>423');
INSERT INTO `_category` VALUES ('50', 'Content Provider', null, 'icon-home', null, null, '', '0', 'true', '1', '', 'cms', '2014-12-10 16:06:08', '2015-07-20 16:26:54', null, '>50');
INSERT INTO `_category` VALUES ('51', 'Service Operator', null, 'icon-settings', null, null, '', '0', 'true', '2', '', 'cms', '2014-12-10 16:06:33', '2015-07-20 16:26:54', null, '>51');
INSERT INTO `_category` VALUES ('419', 'Bánh sinh nhật', 'banh-sinh-nhat', '/data/image/banh-sinh-nhat.jpg', null, null, 'Bánh sinh nhật với những mẫu đẹp và dễ thương nhất 2015, với giá rẻ, mẫu mã đẹp, tại Tp. Hồ Chí Minh', '0', 'true', '0', '', 'cake', '2015-07-02 21:58:23', '2016-03-14 11:17:23', 'true', '>419');
INSERT INTO `_category` VALUES ('434', 'Admin Account', null, 'fa fa-users', null, null, '', '51', 'true', '3', '/dashboard/so/account/viewport/111114/cms', 'cms', '2015-07-04 22:06:44', '2015-07-20 16:26:54', null, '>51>434');
INSERT INTO `_category` VALUES ('420', 'Bánh cưới', 'banh-cuoi', '/data/image/banh-cuoi.jpg', null, null, 'Bánh cưới với những mẫu đẹp được sáng tạo với vẻ đẹp hiện đại, vừa có các chi tiết trang trí đa dạng, vừa mang sắc màu gây ấn tượng', '0', 'true', '0', '', 'cake', '2015-07-02 22:14:25', '2016-03-14 11:17:23', 'true', '>420');
INSERT INTO `_category` VALUES ('421', 'Bánh vẽ', 'banh-ve', '/data/image/banh-ve.jpg', null, null, 'Bánh vẽ là bánh sinh nhật và vẽ hình lên bánh, vẽ chân dung, vẽ nhân vật hoạt hình, vẽ chữ và trang trí', '0', 'true', '0', '', 'cake', '2015-07-02 22:14:31', '2016-03-14 11:17:23', 'true', '>421');
INSERT INTO `_category` VALUES ('422', 'Bánh cupcake', 'banh-cupcake', '/data/image/banh-cupcake.jpg', null, null, 'Những chiếc bánh cupcake vữa ngon lại còn được trang trí cầu kỳ khiến cho mọi người chỉ muốn được thưởng thức chúng ngay lập tức.', '0', 'true', '0', '', 'cake', '2015-07-02 22:14:44', '2016-03-14 11:17:23', 'true', '>422');
INSERT INTO `_category` VALUES ('433', 'File Manage', null, 'fa fa-file-image-o', null, null, '', '51', 'true', '2', '/dashboard/cp/kcfinder/viewport/111111/image', 'cms', '2015-07-04 16:34:01', '2015-07-20 16:26:54', null, '>51>433');
INSERT INTO `_category` VALUES ('428', 'Social', 'social', null, null, null, '', '0', 'true', '3', '', 'scake', '2015-07-04 12:55:14', '2015-07-08 13:49:00', null, '>428');
INSERT INTO `_category` VALUES ('429', 'Payment', 'payment', null, null, null, '', '0', 'true', '2', '', 'scake', '2015-07-04 12:55:21', '2015-07-08 13:49:00', null, '>429');
INSERT INTO `_category` VALUES ('430', 'Information', 'information', null, null, null, '', '0', 'true', '1', '', 'scake', '2015-07-04 12:55:35', '2015-07-08 13:49:00', null, '>430');
INSERT INTO `_category` VALUES ('431', 'Other', 'other', null, null, null, '', '0', 'true', '10', '', 'scake', '2015-07-04 12:55:50', '2015-07-08 13:49:00', null, '>431');
INSERT INTO `_category` VALUES ('432', 'Setting', null, 'fa fa-cogs', null, null, '', '51', 'false', '0', '/dashboard/cp/data/viewport/010114/scake', 'cms', '2015-07-04 16:22:43', '2015-07-20 16:26:54', null, '>51>432');
INSERT INTO `_category` VALUES ('435', 'Bánh tình yêu', 'banh-tinh-yeu', null, null, null, '', '0', 'false', '0', '', 'cake', '2015-07-06 19:25:49', '2016-03-14 11:17:23', null, '>435');
INSERT INTO `_category` VALUES ('436', 'Order - Contact us', null, 'fa fa-comment-o', null, null, '', '50', 'true', '5', '/dashboard/cp/contactus/viewport/011114', 'cms', '2015-07-06 23:30:10', '2015-07-20 16:26:54', null, '>50>436');
INSERT INTO `_category` VALUES ('437', 'Setting', null, 'fa fa-cogs', null, null, '', '51', 'true', '1', '/dashboard/so/data/viewport/010114/scake', 'cms', '2015-07-08 13:44:46', '2015-07-20 16:26:54', null, '>51>437');
INSERT INTO `_category` VALUES ('438', 'Công thức làm bánh', null, 'fa fa-file-text-o', null, null, '', '44', 'true', '1', '/dashboard/cp/content/viewportonly/010014/1', 'cms', '2015-07-09 16:38:07', '2015-07-20 16:26:54', null, '>50>44>438');
INSERT INTO `_category` VALUES ('439', 'All News', null, 'fa fa-newspaper-o', null, null, '', '44', 'true', '0', '/dashboard/cp/content/viewport/111014/', 'cms', '2015-07-09 16:40:09', '2015-07-20 16:26:54', null, '>50>44>439');
INSERT INTO `_category` VALUES ('440', 'Nguyên liệu', null, 'fa fa-file-text-o', null, null, '', '44', 'true', '2', '/dashboard/cp/content/viewportonly/010014/2', 'cms', '2015-07-09 16:41:18', '2015-07-20 16:26:54', null, '>50>44>440');
INSERT INTO `_category` VALUES ('441', 'Dạy nghề', null, 'fa fa-file-text-o', null, null, '', '44', 'true', '3', '/dashboard/cp/content/viewportonly/010014/3', 'cms', '2015-07-09 16:42:12', '2015-07-20 16:26:54', null, '>50>44>441');
INSERT INTO `_category` VALUES ('442', 'Album Gallery', null, 'fa fa-image', null, null, '', '50', 'true', '6', '/dashboard/cp/album/viewport/111115/acake', 'cms', '2015-07-09 21:53:07', '2015-07-20 16:26:54', null, '>50>442');

-- ----------------------------
-- Table structure for _chart
-- ----------------------------
DROP TABLE IF EXISTS `_chart`;
CREATE TABLE `_chart` (
  `chart_id` int(11) NOT NULL AUTO_INCREMENT,
  `chart_count` varchar(20) NOT NULL DEFAULT '0',
  `chart_table` varchar(30) DEFAULT NULL,
  `chart_insert` date DEFAULT NULL,
  `chart_update` date DEFAULT NULL,
  `chart_row` int(11) DEFAULT NULL,
  `chart_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`chart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _chart
-- ----------------------------
INSERT INTO `_chart` VALUES ('1', '210', '_product', '2015-07-14', null, '2', 'View');
INSERT INTO `_chart` VALUES ('2', '307', '_product', '2015-07-13', null, '2', 'View');
INSERT INTO `_chart` VALUES ('3', '220', '_product', '2015-07-12', null, '2', 'View');
INSERT INTO `_chart` VALUES ('4', '211', '_product', '2015-07-11', null, '2', 'View');
INSERT INTO `_chart` VALUES ('5', '268', '_product', '2015-07-10', null, '2', 'View');
INSERT INTO `_chart` VALUES ('6', '268', '_product', '2015-07-09', null, '2', 'View');
INSERT INTO `_chart` VALUES ('7', '228', '_product', '2015-07-08', null, '2', 'View');
INSERT INTO `_chart` VALUES ('8', '225', '_product', '2015-07-07', null, '2', 'View');
INSERT INTO `_chart` VALUES ('9', '183', '_product', '2015-07-06', null, '2', 'View');
INSERT INTO `_chart` VALUES ('10', '318', '_product', '2015-07-05', null, '2', 'View');
INSERT INTO `_chart` VALUES ('11', '210', '_product', '2015-07-04', null, '2', 'View');
INSERT INTO `_chart` VALUES ('12', '198', '_product', '2015-07-03', null, '2', 'View');
INSERT INTO `_chart` VALUES ('13', '336', '_product', '2015-07-02', null, '2', 'View');
INSERT INTO `_chart` VALUES ('14', '260', '_product', '2015-07-01', null, '2', 'View');
INSERT INTO `_chart` VALUES ('15', '330', '_product', '2015-06-30', null, '2', 'View');
INSERT INTO `_chart` VALUES ('16', '231', '_product', '2015-06-29', null, '2', 'View');
INSERT INTO `_chart` VALUES ('17', '337', '_product', '2015-06-28', null, '2', 'View');
INSERT INTO `_chart` VALUES ('18', '323', '_product', '2015-06-27', null, '2', 'View');
INSERT INTO `_chart` VALUES ('19', '327', '_product', '2015-06-26', null, '2', 'View');
INSERT INTO `_chart` VALUES ('20', '339', '_product', '2015-06-25', null, '2', 'View');
INSERT INTO `_chart` VALUES ('21', '222', '_product', '2015-06-24', null, '2', 'View');
INSERT INTO `_chart` VALUES ('22', '309', '_product', '2015-06-23', null, '2', 'View');
INSERT INTO `_chart` VALUES ('23', '195', '_product', '2015-06-22', null, '2', 'View');
INSERT INTO `_chart` VALUES ('24', '282', '_product', '2015-06-21', null, '2', 'View');
INSERT INTO `_chart` VALUES ('25', '286', '_product', '2015-06-20', null, '2', 'View');
INSERT INTO `_chart` VALUES ('26', '278', '_product', '2015-06-19', null, '2', 'View');
INSERT INTO `_chart` VALUES ('27', '186', '_product', '2015-06-18', null, '2', 'View');
INSERT INTO `_chart` VALUES ('28', '248', '_product', '2015-06-17', null, '2', 'View');
INSERT INTO `_chart` VALUES ('29', '224', '_product', '2015-06-16', null, '2', 'View');
INSERT INTO `_chart` VALUES ('30', '203', '_product', '2015-06-15', null, '2', 'View');
INSERT INTO `_chart` VALUES ('31', '295', '_product', '2015-06-14', null, '2', 'View');
INSERT INTO `_chart` VALUES ('32', '338', '_product', '2015-06-13', null, '2', 'View');
INSERT INTO `_chart` VALUES ('33', '330', '_product', '2015-06-12', null, '2', 'View');
INSERT INTO `_chart` VALUES ('34', '312', '_product', '2015-06-11', null, '2', 'View');
INSERT INTO `_chart` VALUES ('35', '258', '_product', '2015-06-10', null, '2', 'View');
INSERT INTO `_chart` VALUES ('36', '226', '_product', '2015-06-09', null, '2', 'View');
INSERT INTO `_chart` VALUES ('37', '300', '_product', '2015-06-08', null, '2', 'View');
INSERT INTO `_chart` VALUES ('38', '239', '_product', '2015-06-07', null, '2', 'View');
INSERT INTO `_chart` VALUES ('39', '243', '_product', '2015-06-06', null, '2', 'View');
INSERT INTO `_chart` VALUES ('40', '184', '_product', '2015-06-05', null, '2', 'View');
INSERT INTO `_chart` VALUES ('41', '255', '_product', '2015-06-04', null, '2', 'View');
INSERT INTO `_chart` VALUES ('42', '212', '_product', '2015-06-03', null, '2', 'View');
INSERT INTO `_chart` VALUES ('43', '329', '_product', '2015-06-02', null, '2', 'View');
INSERT INTO `_chart` VALUES ('44', '229', '_product', '2015-06-01', null, '2', 'View');
INSERT INTO `_chart` VALUES ('45', '235', '_product', '2015-05-31', null, '2', 'View');
INSERT INTO `_chart` VALUES ('46', '204', '_product', '2015-05-30', null, '2', 'View');
INSERT INTO `_chart` VALUES ('47', '339', '_product', '2015-05-29', null, '2', 'View');
INSERT INTO `_chart` VALUES ('48', '291', '_product', '2015-05-28', null, '2', 'View');
INSERT INTO `_chart` VALUES ('49', '190', '_product', '2015-05-27', null, '2', 'View');
INSERT INTO `_chart` VALUES ('50', '275', '_product', '2015-05-26', null, '2', 'View');
INSERT INTO `_chart` VALUES ('51', '184', '_product', '2015-05-25', null, '2', 'View');
INSERT INTO `_chart` VALUES ('52', '215', '_product', '2015-05-24', null, '2', 'View');
INSERT INTO `_chart` VALUES ('53', '329', '_product', '2015-05-23', null, '2', 'View');
INSERT INTO `_chart` VALUES ('54', '227', '_product', '2015-05-22', null, '2', 'View');
INSERT INTO `_chart` VALUES ('55', '199', '_product', '2015-05-21', null, '2', 'View');
INSERT INTO `_chart` VALUES ('56', '274', '_product', '2015-05-20', null, '2', 'View');
INSERT INTO `_chart` VALUES ('57', '262', '_product', '2015-05-19', null, '2', 'View');
INSERT INTO `_chart` VALUES ('58', '289', '_product', '2015-05-18', null, '2', 'View');
INSERT INTO `_chart` VALUES ('59', '294', '_product', '2015-05-17', null, '2', 'View');
INSERT INTO `_chart` VALUES ('60', '312', '_product', '2015-05-16', null, '2', 'View');
INSERT INTO `_chart` VALUES ('61', '197', '_product', '2015-05-15', null, '2', 'View');
INSERT INTO `_chart` VALUES ('62', '265', '_product', '2015-05-14', null, '2', 'View');
INSERT INTO `_chart` VALUES ('63', '293', '_product', '2015-05-13', null, '2', 'View');
INSERT INTO `_chart` VALUES ('64', '260', '_product', '2015-05-12', null, '2', 'View');
INSERT INTO `_chart` VALUES ('65', '258', '_product', '2015-05-11', null, '2', 'View');
INSERT INTO `_chart` VALUES ('66', '211', '_product', '2015-05-10', null, '2', 'View');
INSERT INTO `_chart` VALUES ('67', '275', '_product', '2015-05-09', null, '2', 'View');
INSERT INTO `_chart` VALUES ('68', '305', '_product', '2015-05-08', null, '2', 'View');
INSERT INTO `_chart` VALUES ('69', '310', '_product', '2015-05-07', null, '2', 'View');
INSERT INTO `_chart` VALUES ('70', '274', '_product', '2015-05-06', null, '2', 'View');
INSERT INTO `_chart` VALUES ('71', '236', '_product', '2015-05-05', null, '2', 'View');
INSERT INTO `_chart` VALUES ('72', '208', '_product', '2015-05-04', null, '2', 'View');
INSERT INTO `_chart` VALUES ('73', '306', '_product', '2015-05-03', null, '2', 'View');
INSERT INTO `_chart` VALUES ('74', '341', '_product', '2015-05-02', null, '2', 'View');
INSERT INTO `_chart` VALUES ('75', '255', '_product', '2015-05-01', null, '2', 'View');
INSERT INTO `_chart` VALUES ('76', '325', '_product', '2015-04-30', null, '2', 'View');
INSERT INTO `_chart` VALUES ('77', '283', '_product', '2015-04-29', null, '2', 'View');
INSERT INTO `_chart` VALUES ('78', '213', '_product', '2015-04-28', null, '2', 'View');
INSERT INTO `_chart` VALUES ('79', '327', '_product', '2015-04-27', null, '2', 'View');
INSERT INTO `_chart` VALUES ('80', '245', '_product', '2015-04-26', null, '2', 'View');
INSERT INTO `_chart` VALUES ('81', '192', '_product', '2015-04-25', null, '2', 'View');
INSERT INTO `_chart` VALUES ('82', '292', '_product', '2015-04-24', null, '2', 'View');
INSERT INTO `_chart` VALUES ('83', '190', '_product', '2015-04-23', null, '2', 'View');
INSERT INTO `_chart` VALUES ('84', '326', '_product', '2015-04-22', null, '2', 'View');
INSERT INTO `_chart` VALUES ('85', '243', '_product', '2015-04-21', null, '2', 'View');
INSERT INTO `_chart` VALUES ('86', '209', '_product', '2015-04-20', null, '2', 'View');
INSERT INTO `_chart` VALUES ('87', '182', '_product', '2015-04-19', null, '2', 'View');
INSERT INTO `_chart` VALUES ('88', '329', '_product', '2015-04-18', null, '2', 'View');
INSERT INTO `_chart` VALUES ('89', '216', '_product', '2015-04-17', null, '2', 'View');
INSERT INTO `_chart` VALUES ('90', '194', '_product', '2015-04-16', null, '2', 'View');
INSERT INTO `_chart` VALUES ('91', '210', '_product', '2015-04-15', null, '2', 'View');
INSERT INTO `_chart` VALUES ('92', '268', '_product', '2015-04-14', null, '2', 'View');
INSERT INTO `_chart` VALUES ('93', '320', '_product', '2015-04-13', null, '2', 'View');
INSERT INTO `_chart` VALUES ('94', '220', '_product', '2015-04-12', null, '2', 'View');
INSERT INTO `_chart` VALUES ('95', '270', '_product', '2015-04-11', null, '2', 'View');
INSERT INTO `_chart` VALUES ('96', '246', '_product', '2015-04-10', null, '2', 'View');
INSERT INTO `_chart` VALUES ('97', '335', '_product', '2015-04-09', null, '2', 'View');
INSERT INTO `_chart` VALUES ('98', '346', '_product', '2015-04-08', null, '2', 'View');
INSERT INTO `_chart` VALUES ('99', '271', '_product', '2015-04-07', null, '2', 'View');
INSERT INTO `_chart` VALUES ('100', '278', '_product', '2015-04-06', null, '2', 'View');
INSERT INTO `_chart` VALUES ('101', '299', '_product', '2015-07-14', null, '1', 'View');
INSERT INTO `_chart` VALUES ('102', '203', '_product', '2015-07-13', null, '1', 'View');
INSERT INTO `_chart` VALUES ('103', '208', '_product', '2015-07-12', null, '1', 'View');
INSERT INTO `_chart` VALUES ('104', '295', '_product', '2015-07-11', null, '1', 'View');
INSERT INTO `_chart` VALUES ('105', '335', '_product', '2015-07-10', null, '1', 'View');
INSERT INTO `_chart` VALUES ('106', '191', '_product', '2015-07-09', null, '1', 'View');
INSERT INTO `_chart` VALUES ('107', '331', '_product', '2015-07-08', null, '1', 'View');
INSERT INTO `_chart` VALUES ('108', '313', '_product', '2015-07-07', null, '1', 'View');
INSERT INTO `_chart` VALUES ('109', '309', '_product', '2015-07-06', null, '1', 'View');
INSERT INTO `_chart` VALUES ('110', '285', '_product', '2015-07-05', null, '1', 'View');
INSERT INTO `_chart` VALUES ('111', '293', '_product', '2015-07-04', null, '1', 'View');
INSERT INTO `_chart` VALUES ('112', '263', '_product', '2015-07-03', null, '1', 'View');
INSERT INTO `_chart` VALUES ('113', '344', '_product', '2015-07-02', null, '1', 'View');
INSERT INTO `_chart` VALUES ('114', '202', '_product', '2015-07-01', null, '1', 'View');
INSERT INTO `_chart` VALUES ('115', '347', '_product', '2015-06-30', null, '1', 'View');
INSERT INTO `_chart` VALUES ('116', '331', '_product', '2015-06-29', null, '1', 'View');
INSERT INTO `_chart` VALUES ('117', '307', '_product', '2015-06-28', null, '1', 'View');
INSERT INTO `_chart` VALUES ('118', '255', '_product', '2015-06-27', null, '1', 'View');
INSERT INTO `_chart` VALUES ('119', '314', '_product', '2015-06-26', null, '1', 'View');
INSERT INTO `_chart` VALUES ('120', '277', '_product', '2015-06-25', null, '1', 'View');
INSERT INTO `_chart` VALUES ('121', '320', '_product', '2015-06-24', null, '1', 'View');
INSERT INTO `_chart` VALUES ('122', '333', '_product', '2015-06-23', null, '1', 'View');
INSERT INTO `_chart` VALUES ('123', '275', '_product', '2015-06-22', null, '1', 'View');
INSERT INTO `_chart` VALUES ('124', '289', '_product', '2015-06-21', null, '1', 'View');
INSERT INTO `_chart` VALUES ('125', '250', '_product', '2015-06-20', null, '1', 'View');
INSERT INTO `_chart` VALUES ('126', '239', '_product', '2015-06-19', null, '1', 'View');
INSERT INTO `_chart` VALUES ('127', '226', '_product', '2015-06-18', null, '1', 'View');
INSERT INTO `_chart` VALUES ('128', '296', '_product', '2015-06-17', null, '1', 'View');
INSERT INTO `_chart` VALUES ('129', '220', '_product', '2015-06-16', null, '1', 'View');
INSERT INTO `_chart` VALUES ('130', '202', '_product', '2015-06-15', null, '1', 'View');
INSERT INTO `_chart` VALUES ('131', '246', '_product', '2015-06-14', null, '1', 'View');
INSERT INTO `_chart` VALUES ('132', '314', '_product', '2015-06-13', null, '1', 'View');
INSERT INTO `_chart` VALUES ('133', '267', '_product', '2015-06-12', null, '1', 'View');
INSERT INTO `_chart` VALUES ('134', '195', '_product', '2015-06-11', null, '1', 'View');
INSERT INTO `_chart` VALUES ('135', '329', '_product', '2015-06-10', null, '1', 'View');
INSERT INTO `_chart` VALUES ('136', '275', '_product', '2015-06-09', null, '1', 'View');
INSERT INTO `_chart` VALUES ('137', '343', '_product', '2015-06-08', null, '1', 'View');
INSERT INTO `_chart` VALUES ('138', '277', '_product', '2015-06-07', null, '1', 'View');
INSERT INTO `_chart` VALUES ('139', '214', '_product', '2015-06-06', null, '1', 'View');
INSERT INTO `_chart` VALUES ('140', '195', '_product', '2015-06-05', null, '1', 'View');
INSERT INTO `_chart` VALUES ('141', '314', '_product', '2015-06-04', null, '1', 'View');
INSERT INTO `_chart` VALUES ('142', '251', '_product', '2015-06-03', null, '1', 'View');
INSERT INTO `_chart` VALUES ('143', '238', '_product', '2015-06-02', null, '1', 'View');
INSERT INTO `_chart` VALUES ('144', '345', '_product', '2015-06-01', null, '1', 'View');
INSERT INTO `_chart` VALUES ('145', '304', '_product', '2015-05-31', null, '1', 'View');
INSERT INTO `_chart` VALUES ('146', '346', '_product', '2015-05-30', null, '1', 'View');
INSERT INTO `_chart` VALUES ('147', '310', '_product', '2015-05-29', null, '1', 'View');
INSERT INTO `_chart` VALUES ('148', '229', '_product', '2015-05-28', null, '1', 'View');
INSERT INTO `_chart` VALUES ('149', '350', '_product', '2015-05-27', null, '1', 'View');
INSERT INTO `_chart` VALUES ('150', '194', '_product', '2015-05-26', null, '1', 'View');
INSERT INTO `_chart` VALUES ('151', '253', '_product', '2015-05-25', null, '1', 'View');
INSERT INTO `_chart` VALUES ('152', '290', '_product', '2015-05-24', null, '1', 'View');
INSERT INTO `_chart` VALUES ('153', '232', '_product', '2015-05-23', null, '1', 'View');
INSERT INTO `_chart` VALUES ('154', '195', '_product', '2015-05-22', null, '1', 'View');
INSERT INTO `_chart` VALUES ('155', '319', '_product', '2015-05-21', null, '1', 'View');
INSERT INTO `_chart` VALUES ('156', '202', '_product', '2015-05-20', null, '1', 'View');
INSERT INTO `_chart` VALUES ('157', '330', '_product', '2015-05-19', null, '1', 'View');
INSERT INTO `_chart` VALUES ('158', '322', '_product', '2015-05-18', null, '1', 'View');
INSERT INTO `_chart` VALUES ('159', '331', '_product', '2015-05-17', null, '1', 'View');
INSERT INTO `_chart` VALUES ('160', '239', '_product', '2015-05-16', null, '1', 'View');
INSERT INTO `_chart` VALUES ('161', '255', '_product', '2015-05-15', null, '1', 'View');
INSERT INTO `_chart` VALUES ('162', '293', '_product', '2015-05-14', null, '1', 'View');
INSERT INTO `_chart` VALUES ('163', '199', '_product', '2015-05-13', null, '1', 'View');
INSERT INTO `_chart` VALUES ('164', '244', '_product', '2015-05-12', null, '1', 'View');
INSERT INTO `_chart` VALUES ('165', '213', '_product', '2015-05-11', null, '1', 'View');
INSERT INTO `_chart` VALUES ('166', '252', '_product', '2015-05-10', null, '1', 'View');
INSERT INTO `_chart` VALUES ('167', '258', '_product', '2015-05-09', null, '1', 'View');
INSERT INTO `_chart` VALUES ('168', '320', '_product', '2015-05-08', null, '1', 'View');
INSERT INTO `_chart` VALUES ('169', '329', '_product', '2015-05-07', null, '1', 'View');
INSERT INTO `_chart` VALUES ('170', '257', '_product', '2015-05-06', null, '1', 'View');
INSERT INTO `_chart` VALUES ('171', '248', '_product', '2015-05-05', null, '1', 'View');
INSERT INTO `_chart` VALUES ('172', '311', '_product', '2015-05-04', null, '1', 'View');
INSERT INTO `_chart` VALUES ('173', '298', '_product', '2015-05-03', null, '1', 'View');
INSERT INTO `_chart` VALUES ('174', '281', '_product', '2015-05-02', null, '1', 'View');
INSERT INTO `_chart` VALUES ('175', '333', '_product', '2015-05-01', null, '1', 'View');
INSERT INTO `_chart` VALUES ('176', '320', '_product', '2015-04-30', null, '1', 'View');
INSERT INTO `_chart` VALUES ('177', '243', '_product', '2015-04-29', null, '1', 'View');
INSERT INTO `_chart` VALUES ('178', '213', '_product', '2015-04-28', null, '1', 'View');
INSERT INTO `_chart` VALUES ('179', '253', '_product', '2015-04-27', null, '1', 'View');
INSERT INTO `_chart` VALUES ('180', '190', '_product', '2015-04-26', null, '1', 'View');
INSERT INTO `_chart` VALUES ('181', '200', '_product', '2015-04-25', null, '1', 'View');
INSERT INTO `_chart` VALUES ('182', '197', '_product', '2015-04-24', null, '1', 'View');
INSERT INTO `_chart` VALUES ('183', '343', '_product', '2015-04-23', null, '1', 'View');
INSERT INTO `_chart` VALUES ('184', '195', '_product', '2015-04-22', null, '1', 'View');
INSERT INTO `_chart` VALUES ('185', '293', '_product', '2015-04-21', null, '1', 'View');
INSERT INTO `_chart` VALUES ('186', '291', '_product', '2015-04-20', null, '1', 'View');
INSERT INTO `_chart` VALUES ('187', '342', '_product', '2015-04-19', null, '1', 'View');
INSERT INTO `_chart` VALUES ('188', '180', '_product', '2015-04-18', null, '1', 'View');
INSERT INTO `_chart` VALUES ('189', '218', '_product', '2015-04-17', null, '1', 'View');
INSERT INTO `_chart` VALUES ('190', '299', '_product', '2015-04-16', null, '1', 'View');
INSERT INTO `_chart` VALUES ('191', '244', '_product', '2015-04-15', null, '1', 'View');
INSERT INTO `_chart` VALUES ('192', '246', '_product', '2015-04-14', null, '1', 'View');
INSERT INTO `_chart` VALUES ('193', '268', '_product', '2015-04-13', null, '1', 'View');
INSERT INTO `_chart` VALUES ('194', '278', '_product', '2015-04-12', null, '1', 'View');
INSERT INTO `_chart` VALUES ('195', '301', '_product', '2015-04-11', null, '1', 'View');
INSERT INTO `_chart` VALUES ('196', '238', '_product', '2015-04-10', null, '1', 'View');
INSERT INTO `_chart` VALUES ('197', '309', '_product', '2015-04-09', null, '1', 'View');
INSERT INTO `_chart` VALUES ('198', '201', '_product', '2015-04-08', null, '1', 'View');
INSERT INTO `_chart` VALUES ('199', '337', '_product', '2015-04-07', null, '1', 'View');
INSERT INTO `_chart` VALUES ('200', '258', '_product', '2015-04-06', null, '1', 'View');
INSERT INTO `_chart` VALUES ('201', '111', '_product', '2015-07-14', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('202', '76', '_product', '2015-07-13', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('203', '162', '_product', '2015-07-12', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('204', '140', '_product', '2015-07-11', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('205', '143', '_product', '2015-07-10', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('206', '101', '_product', '2015-07-09', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('207', '77', '_product', '2015-07-08', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('208', '200', '_product', '2015-07-07', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('209', '113', '_product', '2015-07-06', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('210', '73', '_product', '2015-07-05', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('211', '190', '_product', '2015-07-04', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('212', '216', '_product', '2015-07-03', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('213', '147', '_product', '2015-07-02', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('214', '140', '_product', '2015-07-01', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('215', '139', '_product', '2015-06-30', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('216', '144', '_product', '2015-06-29', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('217', '147', '_product', '2015-06-28', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('218', '220', '_product', '2015-06-27', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('219', '89', '_product', '2015-06-26', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('220', '168', '_product', '2015-06-25', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('221', '88', '_product', '2015-06-24', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('222', '159', '_product', '2015-06-23', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('223', '129', '_product', '2015-06-22', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('224', '95', '_product', '2015-06-21', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('225', '174', '_product', '2015-06-20', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('226', '177', '_product', '2015-06-19', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('227', '124', '_product', '2015-06-18', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('228', '110', '_product', '2015-06-17', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('229', '80', '_product', '2015-06-16', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('230', '120', '_product', '2015-06-15', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('231', '161', '_product', '2015-06-14', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('232', '168', '_product', '2015-06-13', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('233', '159', '_product', '2015-06-12', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('234', '209', '_product', '2015-06-11', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('235', '105', '_product', '2015-06-10', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('236', '154', '_product', '2015-06-09', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('237', '85', '_product', '2015-06-08', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('238', '137', '_product', '2015-06-07', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('239', '196', '_product', '2015-06-06', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('240', '174', '_product', '2015-06-05', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('241', '212', '_product', '2015-06-04', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('242', '126', '_product', '2015-06-03', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('243', '147', '_product', '2015-06-02', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('244', '112', '_product', '2015-06-01', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('245', '216', '_product', '2015-05-31', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('246', '171', '_product', '2015-05-30', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('247', '197', '_product', '2015-05-29', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('248', '75', '_product', '2015-05-28', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('249', '147', '_product', '2015-05-27', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('250', '193', '_product', '2015-05-26', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('251', '211', '_product', '2015-05-25', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('252', '97', '_product', '2015-05-24', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('253', '133', '_product', '2015-05-23', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('254', '186', '_product', '2015-05-22', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('255', '126', '_product', '2015-05-21', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('256', '135', '_product', '2015-05-20', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('257', '76', '_product', '2015-05-19', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('258', '70', '_product', '2015-05-18', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('259', '109', '_product', '2015-05-17', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('260', '72', '_product', '2015-05-16', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('261', '102', '_product', '2015-05-15', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('262', '142', '_product', '2015-05-14', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('263', '97', '_product', '2015-05-13', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('264', '166', '_product', '2015-05-12', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('265', '112', '_product', '2015-05-11', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('266', '172', '_product', '2015-05-10', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('267', '104', '_product', '2015-05-09', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('268', '149', '_product', '2015-05-08', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('269', '83', '_product', '2015-05-07', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('270', '155', '_product', '2015-05-06', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('271', '71', '_product', '2015-05-05', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('272', '129', '_product', '2015-05-04', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('273', '218', '_product', '2015-05-03', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('274', '160', '_product', '2015-05-02', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('275', '160', '_product', '2015-05-01', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('276', '140', '_product', '2015-04-30', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('277', '190', '_product', '2015-04-29', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('278', '184', '_product', '2015-04-28', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('279', '161', '_product', '2015-04-27', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('280', '139', '_product', '2015-04-26', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('281', '204', '_product', '2015-04-25', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('282', '147', '_product', '2015-04-24', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('283', '87', '_product', '2015-04-23', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('284', '158', '_product', '2015-04-22', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('285', '84', '_product', '2015-04-21', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('286', '194', '_product', '2015-04-20', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('287', '180', '_product', '2015-04-19', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('288', '156', '_product', '2015-04-18', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('289', '185', '_product', '2015-04-17', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('290', '95', '_product', '2015-04-16', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('291', '150', '_product', '2015-04-15', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('292', '166', '_product', '2015-04-14', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('293', '180', '_product', '2015-04-13', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('294', '146', '_product', '2015-04-12', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('295', '89', '_product', '2015-04-11', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('296', '145', '_product', '2015-04-10', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('297', '122', '_product', '2015-04-09', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('298', '117', '_product', '2015-04-08', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('299', '160', '_product', '2015-04-07', null, '1', 'Order');
INSERT INTO `_chart` VALUES ('300', '125', '_product', '2015-04-06', null, '1', 'Order');

-- ----------------------------
-- Table structure for _contactus
-- ----------------------------
DROP TABLE IF EXISTS `_contactus`;
CREATE TABLE `_contactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_message` text,
  `contact_insert` datetime DEFAULT NULL,
  `contact_subject` varchar(255) DEFAULT NULL,
  `contact_update` datetime DEFAULT NULL,
  `contact_type` varchar(20) DEFAULT NULL,
  `contact_data` text,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _contactus
-- ----------------------------
INSERT INTO `_contactus` VALUES ('2', 'Trường Khương', '0985747240', 'truongkhuong@gmail.com', 'Giả vờ đặt bánh thôi nha ^^', '2015-07-06 20:49:41', null, '2015-07-06 23:26:13', 'Order', '{\"name\":\"B\\u00e1nh doreamon\",\"quantity\":\"1\",\"address\":\"181\\/19 H\\u1ed3ng L\\u1ea1c, p.10, Q.T\\u00e2n B\\u00ecnh\"}');
INSERT INTO `_contactus` VALUES ('4', 'Trường Khương', '0985747240', 'khuongxuantruong@gmail.com', 'Tớ test chức năng gửi mail thông báo đặt hàng bên bánh ngon online nhé.', '2015-07-07 15:06:31', null, null, 'Order', '{\"name\":\"B\\u00e1nh sinh nh\\u1eadt BSN 82\",\"quantity\":\"1 c\\u00e1i nh\\u1ecf\",\"address\":\"181\\/19 H\\u1ed3ng L\\u1ea1c, P.10, Q.T\\u00e2n B\\u00ecnh\"}');
INSERT INTO `_contactus` VALUES ('5', 'Trường Khương', '0985747240', 'khuongxuantruong@gmail.com', 'Test chức năng thông báo đơn hàng banhngononline.com.', '2015-07-07 15:10:13', null, null, 'Order', '{\"name\":\"B\\u00e1nh sinh nh\\u1eadt BSN 86\",\"quantity\":\"2\",\"address\":\"181\\/19 H\\u1ed3ng L\\u1ea1c, P10, Q.T\\u00e2n B\\u00ecnh\"}');
INSERT INTO `_contactus` VALUES ('6', 'Trường Khương', '0985747240', 'khuongxuantruong@gmail.com', 'Test chức năng thông báo đơn hàng banhngononline.com.', '2015-07-07 15:12:56', null, null, 'Order', '{\"name\":\"B\\u00e1nh sinh nh\\u1eadt BSN 86\",\"quantity\":\"2\",\"address\":\"181\\/19 H\\u1ed3ng L\\u1ea1c, P10, Q.T\\u00e2n B\\u00ecnh\"}');
INSERT INTO `_contactus` VALUES ('7', 'Trường Khương', '0985 747 240', 'khuongxuantruong@gmail.com', 'Tớ test chức năng liên hệ tại banhngononline.com.\r\nNếu cậu nhận được mail này thì chức năng thông báo khi có người đặt hàng hoặc gửi yêu cầu đã hoạt động.', '2015-07-07 15:18:09', 'Tôi Muốn Học Làm Bánh Kem', null, 'Contact us', '181/19 Hồng Lạc, P.10, Q.Tân Bình');

-- ----------------------------
-- Table structure for _content
-- ----------------------------
DROP TABLE IF EXISTS `_content`;
CREATE TABLE `_content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_title` varchar(255) DEFAULT NULL,
  `content_desc` varchar(255) DEFAULT NULL,
  `content_content` text,
  `content_position` smallint(6) DEFAULT NULL,
  `content_type` varchar(100) DEFAULT NULL,
  `content_category` int(11) DEFAULT NULL,
  `content_insert` datetime DEFAULT NULL,
  `content_update` datetime DEFAULT NULL,
  `content_status` varchar(5) DEFAULT 'true',
  `content_thumb` varchar(255) DEFAULT NULL,
  `content_alias` varchar(255) DEFAULT NULL,
  `content_lock` varchar(5) DEFAULT 'false',
  `content_tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _content
-- ----------------------------
INSERT INTO `_content` VALUES ('1', 'Công thức làm bánh', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '<div style=\"\\\\\\\\\\\\\\\\\">The standard Lorem Ipsum passage, used since the 1500s</div>\r\n\r\n<div style=\"\\\\\\\\\\\\\\\\\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</div>\r\n\r\n<div style=\"\\\\\\\\\\\\\\\\\">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</div>\r\n\r\n<div style=\"\\\\\\\\\\\\\\\\\"><img alt=\"\" src=\"/data/image/ILoveYouThisMuch-90421.jpg\" style=\"height:371px; width:460px\" /></div>\r\n\r\n<div style=\"\\\\\\\\\\\\\\\\\">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&#39;&quot;</div>\r\n', null, '', '0', '2015-07-05 11:12:54', '2015-07-09 16:37:19', 'true', '/data/image/ILoveYouThisMuch-90421.jpg', 'cong-thuc-lam-banh', 'true', '');
INSERT INTO `_content` VALUES ('2', 'Nguyên liệu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '<div style=\"\\\\&quot;line-height:\">The standard Lorem Ipsum passage, used since the 1500s</div>\r\n\r\n<div style=\"\\\\&quot;line-height:\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</div>\r\n\r\n<div style=\"\\\\&quot;line-height:\">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</div>\r\n\r\n<div style=\"\\\\&quot;line-height:\">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</div>\r\n', null, '', '0', '2015-07-06 16:34:30', '2015-07-07 22:21:22', 'true', '/data/image/ILoveYouThisMuch-90421.jpg', 'nguyen-lieu', 'true', '');
INSERT INTO `_content` VALUES ('3', 'Dạy nghề', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;', null, '', '0', '2015-07-06 16:36:30', '2015-07-06 16:44:47', 'true', '/data/image/ILoveYouThisMuch-90421.jpg', 'day-nghe', 'true', null);
INSERT INTO `_content` VALUES ('4', 'Khuyến mãi ngày lễ Halloween', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '<div style=\"box-sizing: border-box; font-family: \'Roboto Condensed\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.5714302062988px;\">The standard Lorem Ipsum passage, used since the 1500s</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \'Roboto Condensed\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.5714302062988px;\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \'Roboto Condensed\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.5714302062988px;\">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \'Roboto Condensed\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.5714302062988px;\"><span style=\"font-family:roboto condensed,helvetica neue,helvetica,arial,sans-serif; font-size:13px\">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></div>\r\n', null, '', '0', '2015-07-07 11:03:58', '2015-07-09 16:29:17', 'true', '/data/image/walle.jpg', 'khuyen-mai-ngay-le-halloween', 'false', 'bánh Halloween, bánh kem, bánh sinh nhật');

-- ----------------------------
-- Table structure for _data
-- ----------------------------
DROP TABLE IF EXISTS `_data`;
CREATE TABLE `_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_category` int(11) DEFAULT NULL,
  `data_title` varchar(255) DEFAULT NULL,
  `data_alias` varchar(255) DEFAULT NULL,
  `data_desc` varchar(4000) DEFAULT NULL,
  `data_thumb` varchar(255) DEFAULT NULL,
  `data_cover` varchar(255) DEFAULT NULL,
  `data_content` text,
  `data_position` int(4) DEFAULT NULL,
  `data_insert` datetime DEFAULT NULL,
  `data_update` datetime DEFAULT NULL,
  `data_status` varchar(5) DEFAULT 'true',
  `data_type` varchar(100) DEFAULT NULL,
  `data_link` varchar(255) DEFAULT NULL,
  `data_datatype` varchar(10) DEFAULT NULL,
  `data_lock` varchar(5) DEFAULT 'false',
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _data
-- ----------------------------
INSERT INTO `_data` VALUES ('1', '428', 'Facebook', 'facebook', 'Link Facebook', null, null, 'https://www.facebook.com/pages/B%C3%A1nh-Y%C3%AAu/368469929920029?ref=ts&fref=ts', null, '2015-07-04 13:39:40', '2015-07-08 13:38:53', 'true', 'scake', null, 'string', 'true');
INSERT INTO `_data` VALUES ('2', '430', 'Logo', 'logo', 'Logo banhngononline.com', null, null, '/data/image/ILoveYouThisMuch-90421.jpg', null, '2015-07-04 13:44:04', '2015-07-13 13:58:34', 'true', 'scake', null, 'image', 'true');
INSERT INTO `_data` VALUES ('3', '430', 'Address', 'address', 'Địa chỉ shop banhngononline', null, null, '8/18 lê Quý Đôn, Quận phú Nhuận, Tp. Hồ Chí Minh', null, '2015-07-04 13:50:20', '2015-07-07 13:57:08', 'true', 'scake', null, 'text', 'true');
INSERT INTO `_data` VALUES ('4', '430', 'Email', 'email', 'Email liên hệ', null, null, 'phuongnha2010@yahoo.com', null, '2015-07-04 13:51:36', '2015-07-06 22:09:27', 'true', 'scake', null, 'string', 'true');
INSERT INTO `_data` VALUES ('5', '430', 'Phone', 'phone', 'Điện thoại liên hệ', null, null, '0999 888 777', null, '2015-07-04 13:52:00', '2015-07-06 21:58:31', 'true', 'scake', null, 'string', 'true');
INSERT INTO `_data` VALUES ('6', '428', 'Google +', 'google', 'Link Google +', null, null, '#google', null, '2015-07-04 13:52:46', '2015-07-07 13:44:49', 'true', 'scake', null, 'string', 'true');
INSERT INTO `_data` VALUES ('7', '428', 'Twitter', 'twitter', 'Link twitter', null, null, null, null, '2015-07-04 13:52:56', '2015-07-06 21:57:54', 'true', 'scake', null, 'string', 'true');
INSERT INTO `_data` VALUES ('8', '430', 'Google map', 'google-map', 'Tọa độ bản đồ google map gồm kinh độ và vĩ độ.(ví dụ <b>10.792048, 106.679982</b>)', null, null, '10.792048, 106.679982', null, '2015-07-04 13:57:57', '2015-07-08 13:53:58', 'true', 'scake', null, 'text', 'true');
INSERT INTO `_data` VALUES ('9', '430', 'Small Logo', 'small-logo', 'Logo nhỏ', null, null, '/data/image/logo-min.png', null, '2015-07-04 13:58:40', '2015-07-08 13:40:25', 'true', 'scake', null, 'image', 'true');
INSERT INTO `_data` VALUES ('11', '430', 'Title of website', 'title-of-website', 'Title of banhngononline.com', null, null, 'Bánh sinh nhật - Bánh Ngon Online', null, '2015-07-06 23:46:05', '2015-07-07 12:27:58', 'true', 'scake', null, 'string', 'true');
INSERT INTO `_data` VALUES ('12', '430', 'Description', 'description', 'Description of banhngononline.com', null, null, 'Bánh sinh nhật, bánh kem, bánh cưới, bánh vẽ, bánh cupkes, dạy làm bánh tại nhà, đặt bánh theo yêu cầu, giao hàng tận nơi.', null, '2015-07-06 23:46:41', '2015-07-07 12:27:35', 'true', 'scake', null, 'text', 'true');
INSERT INTO `_data` VALUES ('13', '430', 'Keyword', 'keyword', 'Keyword tag', null, null, 'banh sinh nhat, banh, sinh nhat, banh cuoi, banh ve, banh cupkes, cake, hoc lam banh, banh kem, trang tri banh, lam banh, banh trung thu, banh hanh nhan', null, '2015-07-06 23:47:39', '2015-07-07 12:27:23', 'true', 'scake', null, 'string', 'true');
INSERT INTO `_data` VALUES ('14', '430', 'Image 250x250', 'image-250x250', 'Hình ảnh mặc định khi chia sẻ trên mạng xã hội', null, null, '/assets/cake/images/banh-sinh-nhat.jpg', null, '2015-07-07 12:26:44', '2015-07-07 12:27:00', 'true', 'scake', null, 'image', 'false');

-- ----------------------------
-- Table structure for _image
-- ----------------------------
DROP TABLE IF EXISTS `_image`;
CREATE TABLE `_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_src` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `image_desc` varchar(1000) DEFAULT NULL,
  `image_insert` datetime DEFAULT NULL,
  `image_update` datetime DEFAULT NULL,
  `image_position` smallint(6) DEFAULT NULL,
  `image_status` varchar(5) DEFAULT NULL,
  `image_token` varchar(32) DEFAULT '',
  `image_category` int(11) DEFAULT NULL,
  `image_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _image
-- ----------------------------
INSERT INTO `_image` VALUES ('1', '/data/image/ILoveYouThisMuch-90421.jpg', 'Bánh sinh nhật dâu tây', 'Đang cập nhật', '2015-07-03 09:45:43', '2015-07-06 16:33:01', '0', 'true', '', null, 'slider');
INSERT INTO `_image` VALUES ('2', '/data/image/slider1.jpg', 'Bánh kem dâu sữa', 'Đang cập nhật', '2015-07-03 11:29:48', '2015-07-06 16:33:04', '0', 'true', '', null, 'slider');
INSERT INTO `_image` VALUES ('3', '/data/image/food/9.jpg', 'Khuyến mãi đặc biệt', 'Đang cập nhật', '2015-07-03 14:04:05', '2015-07-06 16:33:07', '0', 'true', '', null, 'slider');

-- ----------------------------
-- Table structure for _product
-- ----------------------------
DROP TABLE IF EXISTS `_product`;
CREATE TABLE `_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(32) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_alias` varchar(255) DEFAULT NULL,
  `product_thumb` varchar(255) DEFAULT NULL,
  `product_cover` varchar(255) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_content` text,
  `product_position` int(3) DEFAULT NULL,
  `product_status` varchar(5) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_insert` datetime DEFAULT NULL,
  `product_update` datetime DEFAULT NULL,
  `product_category` int(11) DEFAULT NULL,
  `product_images` text,
  `product_token` varchar(32) DEFAULT NULL,
  `product_price` float(11,2) DEFAULT '0.00',
  `product_view` int(11) DEFAULT '0',
  `product_tag` varchar(255) DEFAULT NULL,
  `product_lock` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _product
-- ----------------------------
INSERT INTO `_product` VALUES ('1', 'PIGC', 'Bánh kem con heo', 'banh-kem-con-heo', '/data/image/food/1.jpg', null, '', null, '0', 'true', 'cake', '2015-07-03 15:19:21', '2015-07-03 20:07:16', '420', '/data/image/food/1.jpg\r\n/data/image/food/4.jpg\r\n/data/image/food/5.jpg', null, '120000.00', '0', null, null);
INSERT INTO `_product` VALUES ('2', 'DORE', 'Bánh Doreamon', 'banh-doreamon', '/data/image/food/5.jpg', null, 'Trên đây là 45 mẫu banh sinh nhat đẹp nhất cho các bạn tham khảo. Hãy chọn cho mình một trong những mẫu bánh sinh nhật đẹp cho lần sinh nhật sắp tới của bạn nhé! Hãy ủng hộ chúng tôi bằng cách chia sẻ những hình ảnh đẹp mà bạn yêu thích.', '<div>Tr&ecirc;n đ&acirc;y l&agrave; 45&nbsp;mẫu banh sinh nhat&nbsp;đẹp nhất cho c&aacute;c bạn tham khảo. H&atilde;y chọn cho m&igrave;nh một trong những&nbsp;mẫu b&aacute;nh sinh nhật đẹp&nbsp;cho lần sinh nhật sắp tới của bạn nh&eacute;! H&atilde;y ủng hộ ch&uacute;ng t&ocirc;i bằng c&aacute;ch chia sẻ những&nbsp;h&igrave;nh ảnh đẹp&nbsp;m&agrave; bạn y&ecirc;u th&iacute;ch.</div>\r\n\r\n<div>\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/51755096.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4595\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/51755096.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-2.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display size-full wp-image-4596\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-2.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-day-2-tac-tai-4gs-texas-bakery-4.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4597\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-day-2-tac-tai-4gs-texas-bakery-4.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-4.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4598\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-4.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-8.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4599\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-8-1024x964.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/Banh-sinh-nhat-1471691541.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4600\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/Banh-sinh-nhat-1471691541.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-dep-41.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4601\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-dep-41.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-hoa-hong-9.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4602\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-hoa-hong-9.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-tinh-yeu-649-2.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4603\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-tinh-yeu-649-2.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/sinh-nhat.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4604\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/sinh-nhat-1024x733.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a>&nbsp;<a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/tiramisu-cake-46_Tiembanh-Tiramisu.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"Bánh sinh nhật đẹp\" class=\"alignnone appear no-display wp-image-4605\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/tiramisu-cake-46_Tiembanh-Tiramisu.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-1.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 1\" class=\"alignnone appear no-display wp-image-1252\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-1.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-2.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 2\" class=\"alignnone appear no-display wp-image-1253\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-2.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-3.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 3\" class=\"alignnone appear no-display wp-image-1254\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-3.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-4.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 4\" class=\"alignnone appear no-display wp-image-1255\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-4.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-5.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 5\" class=\"alignnone appear no-display wp-image-1256\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-5.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-6.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 6\" class=\"alignnone appear no-display wp-image-1257\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-6.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-7.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 7\" class=\"alignnone appear no-display wp-image-1258\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-7.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-8.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 8\" class=\"alignnone appear no-display wp-image-1259\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-8.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-9.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 9\" class=\"alignnone appear no-display wp-image-1260\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-9.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-10.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 10\" class=\"alignnone appear no-display wp-image-1261\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-10.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-11.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 11\" class=\"alignnone appear no-display wp-image-1262\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-11.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-12.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 12\" class=\"alignnone appear no-display wp-image-1263\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-12.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-13.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 13\" class=\"alignnone appear no-display wp-image-1264\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-13.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-14.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 14\" class=\"alignnone appear no-display wp-image-1265\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-14.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-15.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 15\" class=\"alignnone appear no-display wp-image-1266\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-15.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-16.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 16\" class=\"alignnone appear no-display wp-image-1267\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-16.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-17.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 17\" class=\"alignnone appear no-display wp-image-1268\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-17.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-18.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 18\" class=\"alignnone appear no-display wp-image-1269\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-18.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-19.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 19\" class=\"alignnone appear no-display wp-image-1270\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-19.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-20.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 20\" class=\"alignnone appear no-display wp-image-1271\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-20.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-21.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 21\" class=\"alignnone appear no-display wp-image-1272\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-21.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-22.jpg\" rel=\"prettyPhoto\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;\"><img alt=\"hình ảnh bánh sinh nhật đẹp dễ thương nhất 22\" class=\"alignnone appear no-display wp-image-1273\" src=\"http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-22.jpg\" style=\"-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px\" /></a></p>\r\n</div>\r\n</div>\r\n', '0', 'true', 'cake', '2015-07-03 16:49:04', '2015-07-07 14:17:53', '419', '/data/image/food/9.jpg', null, '110000.00', '0', '', null);
INSERT INTO `_product` VALUES ('48', 'CAKE1', 'Bánh sinh nhật BSN 86', 'banh-sinh-nhat-bsn-86', 'http://banhngononline.com/components/com_product/img/product/chinhsuaaaaaaaaaaaaa_1431809523.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:42', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('49', 'CAKE2', 'Bánh sinh nhật BSN 85', 'banh-sinh-nhat-bsn-85', 'http://banhngononline.com/components/com_product/img/product/thuuuuuuuuuuuu_1428560062.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('50', 'CAKE3', 'Bánh sinh nhật BSN 84', 'banh-sinh-nhat-bsn-84', 'http://banhngononline.com/components/com_product/img/product/lauuuuudaiiiiiii_1428214583.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '550000.00', '0', null, null);
INSERT INTO `_product` VALUES ('51', 'CAKE4', 'Bánh sinh nhật BSN 83', 'banh-sinh-nhat-bsn-83', 'http://banhngononline.com/components/com_product/img/product/DSC_1350_1428214509.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('52', 'CAKE5', 'Banh Con Giap BCG526', 'banh-con-giap-bcg526', 'http://banhngononline.com/components/com_product/img/product/gaaaaaaaaaaaaaaaa_1428214230.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('53', 'CAKE6', 'Banh Con Giap BCG525', 'banh-con-giap-bcg525', 'http://banhngononline.com/components/com_product/img/product/52555555555555_1428049822.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('54', 'CAKE7', 'Banh Con Giap BCG524', 'banh-con-giap-bcg524', 'http://banhngononline.com/components/com_product/img/product/524444444444444_1428049499.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('55', 'CAKE8', 'Bánh sinh nhật BSN 82', 'banh-sinh-nhat-bsn-82', 'http://banhngononline.com/components/com_product/img/product/82000000000000000000_1428048709.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('56', 'CAKE9', 'Bánh sinh nhật BSN 81', 'banh-sinh-nhat-bsn-81', 'http://banhngononline.com/components/com_product/img/product/begaiiiiiiiiiiiii_1428048550.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('57', 'CAKE10', 'Bánh sinh nhật BSN 80', 'banh-sinh-nhat-bsn-80', 'http://banhngononline.com/components/com_product/img/product/800000000000000000_1428048403.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('58', 'CAKE11', 'Bánh sinh nhật BSN 79', 'banh-sinh-nhat-bsn-79', 'http://banhngononline.com/components/com_product/img/product/799999999999999999_1428048225.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('59', 'CAKE12', 'Bánh sinh nhật BSN 78', 'banh-sinh-nhat-bsn-78', 'http://banhngononline.com/components/com_product/img/product/danglai111111111_1428048036.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('60', 'CAKE13', 'Bánh sinh nhật BSN 77', 'banh-sinh-nhat-bsn-77', 'http://banhngononline.com/components/com_product/img/product/7777777777777_1428047680.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('61', 'CAKE14', 'Bánh sinh nhật BSN 76', 'banh-sinh-nhat-bsn-76', 'http://banhngononline.com/components/com_product/img/product/dangaaaaaaaaaaaa_1428047484.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('62', 'CAKE15', 'Bánh sinh nhật BSN 75', 'banh-sinh-nhat-bsn-75', 'http://banhngononline.com/components/com_product/img/product/ok4_1428044716.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '550000.00', '0', null, null);
INSERT INTO `_product` VALUES ('63', 'CAKE16', 'Bánh sinh nhật BSN 74', 'banh-sinh-nhat-bsn-74', 'http://banhngononline.com/components/com_product/img/product/aaaaaaaaannnnnnnnnnnnn_1428213935.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('64', 'CAKE17', 'Bánh sinh nhật BSN 73', 'banh-sinh-nhat-bsn-73', 'http://banhngononline.com/components/com_product/img/product/ok2_1428043205.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('65', 'CAKE18', 'Bánh sinh nhật BSN 72', 'banh-sinh-nhat-bsn-72', 'http://banhngononline.com/components/com_product/img/product/OK_1428042664.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('66', 'CAKE19', 'Bánh sinh nhật BSN 71', 'banh-sinh-nhat-bsn-71', 'http://banhngononline.com/components/com_product/img/product/4444_1428041740.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('67', 'CAKE20', 'Bánh sinh nhật BSN 70', 'banh-sinh-nhat-bsn-70', 'http://banhngononline.com/components/com_product/img/product/airbi_1428028160.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('68', 'CAKE21', 'Bánh sinh nhật BSN 69', 'banh-sinh-nhat-bsn-69', 'http://banhngononline.com/components/com_product/img/product/2632_1410482163.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '400000.00', '0', null, null);
INSERT INTO `_product` VALUES ('69', 'CAKE22', 'Bánh cưới', 'banh-cuoi', 'http://banhngononline.com/components/com_product/img/product/banh-cuoi-075_1410420724.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '0.00', '0', null, null);
INSERT INTO `_product` VALUES ('70', 'CAKE23', 'Banh sinh nhat 68', 'banh-sinh-nhat-68', 'http://banhngononline.com/components/com_product/img/product/7234_1410418186.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('71', 'CAKE24', 'Banh sinh nhat 67', 'banh-sinh-nhat-67', 'http://banhngononline.com/components/com_product/img/product/12_1410417992.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('72', 'CAKE25', 'Bánh sinh nhật BSN 66', 'banh-sinh-nhat-bsn-66', 'http://banhngononline.com/components/com_product/img/product/20_1410416852.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('73', 'CAKE26', 'Bánh sinh nhật BSN 65', 'banh-sinh-nhat-bsn-65', 'http://banhngononline.com/components/com_product/img/product/7252_1409965377.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('74', 'CAKE27', 'Bánh sinh nhật BSN 64', 'banh-sinh-nhat-bsn-64', 'http://banhngononline.com/components/com_product/img/product/584_1409965018.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('75', 'CAKE28', 'Bánh sinh nhật BSN 63', 'banh-sinh-nhat-bsn-63', 'http://banhngononline.com/components/com_product/img/product/552_1409964943.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:21', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('76', 'CAKE29', 'Bánh sinh nhật BSN 62', 'banh-sinh-nhat-bsn-62', 'http://banhngononline.com/components/com_product/img/product/424_320x320_1409964826.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:21', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('77', 'CAKE30', 'Bánh sinh nhật BSN 61', 'banh-sinh-nhat-bsn-61', 'http://banhngononline.com/components/com_product/img/product/468_1408501022.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:21', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('78', 'CAKE31', 'Bánh sinh nhật BSN 60', 'banh-sinh-nhat-bsn-60', 'http://banhngononline.com/components/com_product/img/product/1933_1408500931.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('79', 'CAKE32', 'Bánh sinh nhật BSN 59', 'banh-sinh-nhat-bsn-59', 'http://banhngononline.com/components/com_product/img/product/24_1408339052.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('80', 'CAKE33', 'Bánh sinh nhật BSN 58', 'banh-sinh-nhat-bsn-58', 'http://banhngononline.com/components/com_product/img/product/483_1407913431.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('81', 'CAKE34', 'Bánh sinh nhật BSN 57', 'banh-sinh-nhat-bsn-57', 'http://banhngononline.com/components/com_product/img/product/1_1407912208.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('82', 'CAKE35', 'Bánh sinh nhật BSN 56', 'banh-sinh-nhat-bsn-56', 'http://banhngononline.com/components/com_product/img/product/f10_1406702661.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('83', 'CAKE36', 'Bánh sinh nhật BSN 55', 'banh-sinh-nhat-bsn-55', 'http://banhngononline.com/components/com_product/img/product/562_1406702295.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('84', 'CAKE37', 'Bánh sinh nhật BSN 54', 'banh-sinh-nhat-bsn-54', 'http://banhngononline.com/components/com_product/img/product/24424_1405735781.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '750000.00', '0', null, null);
INSERT INTO `_product` VALUES ('85', 'CAKE38', 'Bánh sinh nhật BSN 53', 'banh-sinh-nhat-bsn-53', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_12_1397638720.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('86', 'CAKE39', 'Bánh sinh nhật BSN 52', 'banh-sinh-nhat-bsn-52', 'http://banhngononline.com/components/com_product/img/product/roseheart_1397440739.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('87', 'CAKE40', 'Bánh sinh nhật BSN 51', 'banh-sinh-nhat-bsn-51', 'http://banhngononline.com/components/com_product/img/product/BSN51_1397440466.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '500000.00', '0', null, null);
INSERT INTO `_product` VALUES ('88', 'CAKE41', 'Bánh sinh nhật BSN 50', 'banh-sinh-nhat-bsn-50', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_10_1397274631.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('89', 'CAKE42', 'Bánh sinh nhật BSN 49', 'banh-sinh-nhat-bsn-49', 'http://banhngononline.com/components/com_product/img/product/small_xdf1362847956_1397104354.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('90', 'CAKE43', 'Bánh sinh nhật BSN 48', 'banh-sinh-nhat-bsn-48', 'http://banhngononline.com/components/com_product/img/product/BSN 48_1397102710.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('91', 'CAKE44', 'Bánh kem noel BKN 718', 'banh-kem-noel-bkn-718', 'http://banhngononline.com/components/com_product/img/product/8620_197780990408055_384838991_n_1385448', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('92', 'CAKE45', 'Bánh kem noel BKN 717', 'banh-kem-noel-bkn-717', 'http://banhngononline.com/components/com_product/img/product/BANHNOEL_1385197325.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('93', 'CAKE46', 'Bánh Sinh Nhật BSN 47', 'banh-sinh-nhat-bsn-47', 'http://banhngononline.com/components/com_product/img/product/ANHDANG_1383665574.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('94', 'CAKE47', 'Bánh Sinh Nhật BSN 46', 'banh-sinh-nhat-bsn-46', 'http://banhngononline.com/components/com_product/img/product/P1020763_1383617823.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('95', 'CAKE48', 'Banh cupcake phủ kem', 'banh-cupcake-phu-kem', 'http://banhngononline.com/components/com_product/img/product/small_nnw1359612916_1379414953.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '15000.00', '0', null, null);
INSERT INTO `_product` VALUES ('96', 'CAKE49', 'Bánh Sinh Nhật BSN 45', 'banh-sinh-nhat-bsn-45', 'http://banhngononline.com/components/com_product/img/product/small_bag1368448979_1379414538.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('97', 'CAKE50', 'Banh cupcake phủ kem CPK 08', 'banh-cupcake-phu-kem-cpk-08', 'http://banhngononline.com/components/com_product/img/product/DSC_0778_1379245549.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '15000.00', '0', null, null);
INSERT INTO `_product` VALUES ('98', 'CAKE51', 'Bánh Sinh Nhật BSN 44', 'banh-sinh-nhat-bsn-44', 'http://banhngononline.com/components/com_product/img/product/P1020688_1379057462.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('99', 'CAKE52', 'Bánh Sinh Nhật BSN 43', 'banh-sinh-nhat-bsn-43', 'http://banhngononline.com/components/com_product/img/product/P1020680_1378460650.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('100', 'CAKE53', 'Bánh Sinh Nhật BSN 42', 'banh-sinh-nhat-bsn-42', 'http://banhngononline.com/components/com_product/img/product/sieunhan2_1377907572.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('101', 'CAKE54', 'Bánh Sinh Nhật BSN 41', 'banh-sinh-nhat-bsn-41', 'http://banhngononline.com/components/com_product/img/product/Copy of heinenken boy 2_1377822140.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('102', 'CAKE55', 'Bánh Sinh Nhật BSN 40', 'banh-sinh-nhat-bsn-40', 'http://banhngononline.com/components/com_product/img/product/small_oro1375804845_1377737278.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('103', 'CAKE56', 'Bánh con giáp BCG 523', 'banh-con-giap-bcg-523', 'http://banhngononline.com/components/com_product/img/product/ade1369574799_1377655576.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('104', 'CAKE57', 'Bánh Sinh Nhật BSN 39', 'banh-sinh-nhat-bsn-39', 'http://banhngononline.com/components/com_product/img/product/DSC_0729_1377523046.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('105', 'CAKE58', 'Bánh Sinh Nhật BSN 38', 'banh-sinh-nhat-bsn-38', 'http://banhngononline.com/components/com_product/img/product/bao dinh_1377480223.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('106', 'CAKE59', 'Bánh Sinh Nhật BSN 37', 'banh-sinh-nhat-bsn-37', 'http://banhngononline.com/components/com_product/img/product/DSC_0725_1377351250.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '0.00', '0', null, null);
INSERT INTO `_product` VALUES ('107', 'CAKE61', 'Bánh Sinh Nhật BSN 36', 'banh-sinh-nhat-bsn-36', 'http://banhngononline.com/components/com_product/img/product/banh-in-hinh-009-150x150_1377280556.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('108', 'CAKE62', 'Bánh Sinh Nhật BSN 34', 'banh-sinh-nhat-bsn-34', 'http://banhngononline.com/components/com_product/img/product/girl_1377240893.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('109', 'CAKE63', 'Banh sinh nhat BSN 30', 'banh-sinh-nhat-bsn-30', 'http://banhngononline.com/components/com_product/img/product/IMG_20130707_142607_1373332758.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '0.00', '0', null, null);
INSERT INTO `_product` VALUES ('110', 'CAKE64', 'banh kem ngho nghinh BKNN228', 'banh-kem-ngho-nghinh-bknn228', 'http://banhngononline.com/components/com_product/img/product/P1020449_1371878618.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('111', 'CAKE65', 'Banh Sinh nhat BCG522', 'banh-sinh-nhat-bcg522', 'http://banhngononline.com/components/com_product/img/product/P1020528_1371878290.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('112', 'CAKE66', 'Banh sinh Nhat BSN29', 'banh-sinh-nhat-bsn29', 'http://banhngononline.com/components/com_product/img/product/P1020452_1371877978.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('113', 'CAKE67', 'Banh sinh nhat BSN 27', 'banh-sinh-nhat-bsn-27', 'http://banhngononline.com/components/com_product/img/product/img_0972r_1371547149.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('114', 'CAKE76', 'Banh Sinh Nhat BSN 26', 'banh-sinh-nhat-bsn-26', 'http://banhngononline.com/components/com_product/img/product/Rong xanh_1371546748.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('115', 'CAKE77', 'Banh sinh nhat BSN 25', 'banh-sinh-nhat-bsn-25', 'http://banhngononline.com/components/com_product/img/product/mickeyminnie_1371546482.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('116', 'CAKE78', 'Banh sinh nhat BSN 24', 'banh-sinh-nhat-bsn-24', 'http://banhngononline.com/components/com_product/img/product/number one cake for girl_1371546238.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('117', 'CAKE79', 'Bánh Sinh Nhật BSN 23', 'banh-sinh-nhat-bsn-23', 'http://banhngononline.com/components/com_product/img/product/barbie-doll-cake_1368454780.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '0.00', '0', null, null);
INSERT INTO `_product` VALUES ('118', 'CAKE80', 'Bánh Sinh Nhật BSN 21', 'banh-sinh-nhat-bsn-21', 'http://banhngononline.com/components/com_product/img/product/bsn cb 12_128x128_1368403731.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('119', 'CAKE81', 'Bánh Sinh Nhật BSN 20', 'banh-sinh-nhat-bsn-20', 'http://banhngononline.com/components/com_product/img/product/bsncb332_1368403532.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('120', 'CAKE82', 'Bánh Sinh Nhật BSN 19', 'banh-sinh-nhat-bsn-19', 'http://banhngononline.com/components/com_product/img/product/yvf1354601953_1368403277.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('121', 'CAKE83', 'Bánh Sinh Nhật BSN 18', 'banh-sinh-nhat-bsn-18', 'http://banhngononline.com/components/com_product/img/product/hcg1349104891_1368402641.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '0.00', '0', null, null);
INSERT INTO `_product` VALUES ('122', 'CAKE84', 'Bánh Sinh Nhật BSN 17', 'banh-sinh-nhat-bsn-17', 'http://banhngononline.com/components/com_product/img/product/BSN CB36_1368402386.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('123', 'CAKE85', 'Bánh Sinh Nhật BSN 16', 'banh-sinh-nhat-bsn-16', 'http://banhngononline.com/components/com_product/img/product/zgg1355154852_1368402197.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('124', 'CAKE86', 'Bánh Sinh Nhật BSN 15', 'banh-sinh-nhat-bsn-15', 'http://banhngononline.com/components/com_product/img/product/BSN CB 50_1368401734.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('125', 'CAKE87', 'Bánh Sinh Nhật BSN 14', 'banh-sinh-nhat-bsn-14', 'http://banhngononline.com/components/com_product/img/product/SAM_0526_1368401421.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '450000.00', '0', null, null);
INSERT INTO `_product` VALUES ('126', 'CAKE88', 'Bánh Sinh Nhật BSN 13', 'banh-sinh-nhat-bsn-13', 'http://banhngononline.com/components/com_product/img/product/SAM_0532_1368401138.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '500000.00', '0', null, null);
INSERT INTO `_product` VALUES ('127', 'CAKE89', 'Bánh Sinh Nhật BSN 12', 'banh-sinh-nhat-bsn-12', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_1_1368360175.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '700000.00', '0', null, null);
INSERT INTO `_product` VALUES ('128', 'CAKE90', 'Bánh kem Noel BKN716', 'banh-kem-noel-bkn716', 'http://banhngononline.com/components/com_product/img/product/BKN 716_1354804215.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('129', 'CAKE91', 'Bánh kem Noel BKN715', 'banh-kem-noel-bkn715', 'http://banhngononline.com/components/com_product/img/product/BKN 715_1354802914.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('130', 'CAKE92', 'Bánh kem Noel BKN714', 'banh-kem-noel-bkn714', 'http://banhngononline.com/components/com_product/img/product/BKN 714_1354802179.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('131', 'CAKE93', 'Bánh kem BKV 416', 'banh-kem-bkv-416', 'http://banhngononline.com/components/com_product/img/product/kem-large_1354520293.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '200000.00', '0', null, null);
INSERT INTO `_product` VALUES ('132', 'CAKE94', 'Bánh Sinh Nhật BSN119', 'banh-sinh-nhat-bsn119', 'http://banhngononline.com/components/com_product/img/product/BSN119_1354466601.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('133', 'CAKE95', 'Bánh BSN750', 'banh-bsn750', 'http://banhngononline.com/components/com_product/img/product/IMG_2201_1353823214.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('134', 'CAKE96', 'Bánh kem Noel 713', 'banh-kem-noel-713', 'http://banhngononline.com/components/com_product/img/product/noelcake6_1329790225.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('135', 'CAKE97', 'Bánh Noel BKN712', 'banh-noel-bkn712', 'http://banhngononline.com/components/com_product/img/product/8620_197780990408055_384838991_n_1387371', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('136', 'CAKE98', 'Bánh Noel BKN711', 'banh-noel-bkn711', 'http://banhngononline.com/components/com_product/img/product/noelcake2_1329788847.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('137', 'CAKE99', 'Bánh sinh nhật BNS116', 'banh-sinh-nhat-bns116', 'http://banhngononline.com/components/com_product/img/product/twonumbercake_1326429866.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('138', 'CAKE100', 'Cupcake phủ kem CPK617', 'cupcake-phu-kem-cpk617', 'http://banhngononline.com/components/com_product/img/product/hinh_bck_5_1368454980.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '15000.00', '0', null, null);
INSERT INTO `_product` VALUES ('139', 'CAKE101', 'Cupcake phủ kem CPK616', 'cupcake-phu-kem-cpk616', 'http://banhngononline.com/components/com_product/img/product/fishschoole_1326255510.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '400000.00', '0', null, null);
INSERT INTO `_product` VALUES ('140', 'CAKE102', 'Cupcake phủ kem CPK615', 'cupcake-phu-kem-cpk615', 'http://banhngononline.com/components/com_product/img/product/flyingballs_1326254004.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '450000.00', '0', null, null);
INSERT INTO `_product` VALUES ('141', 'CAKE103', 'Cupcake phủ kem CPK614', 'cupcake-phu-kem-cpk614', 'http://banhngononline.com/components/com_product/img/product/Birthday cupcakes_e_1326185633.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '360000.00', '0', null, null);
INSERT INTO `_product` VALUES ('142', 'CAKE104', 'Cupcake phủ kem CPK613', 'cupcake-phu-kem-cpk613', 'http://banhngononline.com/components/com_product/img/product/rosekingcake_1326184098.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('143', 'CAKE105', 'Cupcake phủ kem CPK612', 'cupcake-phu-kem-cpk612', 'http://banhngononline.com/components/com_product/img/product/cupcakephukem612_e_1326182463.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '240000.00', '0', null, null);
INSERT INTO `_product` VALUES ('144', 'CAKE106', 'Bánh con giáp BCG521', 'banh-con-giap-bcg521', 'http://banhngononline.com/components/com_product/img/product/Snakecakes_1326094461.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:15', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('145', 'CAKE107', 'Bánh con giáp BCG519', 'banh-con-giap-bcg519', 'http://banhngononline.com/components/com_product/img/product/Pigcakes1_1326096456.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:15', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('146', 'CAKE108', 'Bánh con giáp BCG518', 'banh-con-giap-bcg518', 'http://banhngononline.com/components/com_product/img/product/catcake_1326084335.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:15', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('147', 'CAKE109', 'Bánh con giáp BCG517', 'banh-con-giap-bcg517', 'http://banhngononline.com/components/com_product/img/product/horse cake_1377480545.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:15', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('148', 'CAKE110', 'Bánh con giáp BCG516', 'banh-con-giap-bcg516', 'http://banhngononline.com/components/com_product/img/product/dattenfilemoi_1377738262.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('149', 'CAKE111', 'Bánh kem ngộ nghĩnh BKNN227', 'banh-kem-ngo-nghinh-bknn227', 'http://banhngononline.com/components/com_product/img/product/small_icu1348072133_1377737830.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('150', 'CAKE112', 'Bánh con giáp BCG513', 'banh-con-giap-bcg513', 'http://banhngononline.com/components/com_product/img/product/Monkeycake_1325836459.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('151', 'CAKE113', 'Bánh con giáp BCG512', 'banh-con-giap-bcg512', 'http://banhngononline.com/components/com_product/img/product/_1325833232.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('152', 'CAKE114', 'Bánh con giáp BCG511', 'banh-con-giap-bcg511', 'http://banhngononline.com/components/com_product/img/product/chuotttttttttttt_1428214363.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('153', 'CAKE115', 'Bánh kem Valentine BKV415', 'banh-kem-valentine-bkv415', 'http://banhngononline.com/components/com_product/img/product/tuixach_1325831941.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('154', 'CAKE116', 'Bánh kem BKV414', 'banh-kem-bkv414', 'http://banhngononline.com/components/com_product/img/product/yourname2_1325821389.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '200000.00', '0', null, null);
INSERT INTO `_product` VALUES ('155', 'CAKE117', 'Bánh kem valentine BKV413', 'banh-kem-valentine-bkv413', 'http://banhngononline.com/components/com_product/img/product/namecake_1325754279.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('156', 'CAKE118', 'Bánh kem Valentine BKV412', 'banh-kem-valentine-bkv412', 'http://banhngononline.com/components/com_product/img/product/Marboro_1325750887.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('157', 'CAKE119', 'Bánh kem valentine BKV411', 'banh-kem-valentine-bkv411', 'http://banhngononline.com/components/com_product/img/product/banhkemvalentin3_1329792186.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '200000.00', '0', null, null);
INSERT INTO `_product` VALUES ('158', 'CAKE120', 'Bánh cưới BKC315', 'banh-cuoi-bkc315', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi2_1325738696.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '1500000.00', '0', null, null);
INSERT INTO `_product` VALUES ('159', 'CAKE121', 'Bánh cưới BKC314', 'banh-cuoi-bkc314', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi3_1325734842.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', '2015-07-10 09:40:04', '421', null, null, '1000000.00', '0', null, null);
INSERT INTO `_product` VALUES ('160', 'CAKE122', 'Bánh cưới BKC313', 'banh-cuoi-bkc313', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi4_1325734348.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', '2015-07-06 11:22:08', '419', null, null, '1000000.00', '0', null, null);
INSERT INTO `_product` VALUES ('161', 'CAKE123', 'Bánh cưới BKC312', 'banh-cuoi-bkc312', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi5_1325732133.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', '2015-07-03 21:47:38', '420', null, null, '1500000.00', '0', null, null);
INSERT INTO `_product` VALUES ('162', 'CAKE124', 'Bánh kem ngộ nghĩnh BKNN226', 'banh-kem-ngo-nghinh-bknn226', 'http://banhngononline.com/components/com_product/img/product/images (6)_1354518872.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '300000.00', '0', null, null);
INSERT INTO `_product` VALUES ('163', 'CAKE125', 'Bánh sinh nhật BSN111', 'banh-sinh-nhat-bsn111', 'http://banhngononline.com/components/com_product/img/product/images 2_1324971479.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('164', 'CAKE126', 'Bánh sinh nhật BSN113', 'banh-sinh-nhat-bsn113', 'http://banhngononline.com/components/com_product/img/product/banhhopqua_1325042436.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('165', 'CAKE127', 'Bánh sinh nhật BSN112', 'banh-sinh-nhat-bsn112', 'http://banhngononline.com/components/com_product/img/product/BSN116_1354366771.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('166', 'CAKE128', 'Bánh sinh nhật BSN114', 'banh-sinh-nhat-bsn114', 'http://banhngononline.com/components/com_product/img/product/chocolatecake_1325044405.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('167', 'CAKE129', 'Bánh sinh nhật BSN115', 'banh-sinh-nhat-bsn115', 'http://banhngononline.com/components/com_product/img/product/banh-sinh-nhat_1354366889.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('168', 'CAKE130', 'Bánh kem ngộ nghĩnh BKNN212', 'banh-kem-ngo-nghinh-bknn212', 'http://banhngononline.com/components/com_product/img/product/ChuotMickeycake_1325057344.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null, null);
INSERT INTO `_product` VALUES ('169', 'CAKE131', 'Bánh kem ngộ nghĩnh BKNN213', 'banh-kem-ngo-nghinh-bknn213', 'http://banhngononline.com/components/com_product/img/product/11_1405735424.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('170', 'CAKE132', 'Bánh kem ngộ nghĩnh BKNN217', 'banh-kem-ngo-nghinh-bknn217', 'http://banhngononline.com/components/com_product/img/product/Chuvoicon_1325061772.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('171', 'CAKE133', 'Bánh kem ngộ nghĩnh BKNN216', 'banh-kem-ngo-nghinh-bknn216', 'http://banhngononline.com/components/com_product/img/product/BKNN216_1354465119.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '350000.00', '0', null, null);
INSERT INTO `_product` VALUES ('172', 'CAKE134', 'Bánh kem ngộ nghĩnh BKNN219', 'banh-kem-ngo-nghinh-bknn219', 'http://banhngononline.com/components/com_product/img/product/Chodom2_1325092672.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '370000.00', '0', null, null);
INSERT INTO `_product` VALUES ('173', 'CAKE136', 'Bánh kem ngộ nghĩnh BKNN224', 'banh-kem-ngo-nghinh-bknn224', 'http://banhngononline.com/components/com_product/img/product/McQueencar_1325216317.jpg', null, '', '', '0', 'true', 'cake', '2015-07-03 21:23:25', '2016-03-14 08:47:18', '420', '', null, '371000.00', '0', 'bánh sinh nhật, bánh kem', null);

-- ----------------------------
-- Table structure for _seo
-- ----------------------------
DROP TABLE IF EXISTS `_seo`;
CREATE TABLE `_seo` (
  `seo_id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_item` varchar(100) DEFAULT NULL,
  `seo_social_title` varchar(255) DEFAULT NULL,
  `seo_social_image` varchar(255) DEFAULT NULL,
  `seo_social_desc` varchar(255) DEFAULT NULL,
  `seo_social_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _seo
-- ----------------------------

-- ----------------------------
-- Table structure for _spin
-- ----------------------------
DROP TABLE IF EXISTS `_spin`;
CREATE TABLE `_spin` (
  `spin_id` int(3) NOT NULL AUTO_INCREMENT,
  `spin_name` varchar(255) DEFAULT NULL,
  `spin_number` int(3) DEFAULT '0',
  `spin_active` int(3) DEFAULT '0',
  `spin_rate` float(4,2) DEFAULT '0.00',
  `spin_status` varchar(10) DEFAULT NULL,
  `spin_insert` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `spin_update` datetime DEFAULT NULL,
  `spin_active_rate` float(4,2) DEFAULT '0.00',
  `spin_value` int(2) DEFAULT NULL,
  PRIMARY KEY (`spin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _spin
-- ----------------------------
INSERT INTO `_spin` VALUES ('1', 'Cây rửa đui', '25', '2', '1.00', 'true', '2016-03-16 16:44:24', '2016-03-15 10:34:20', '0.80', '5');
INSERT INTO `_spin` VALUES ('2', 'Khuân silicon', '20', '0', '1.00', 'true', '2016-03-16 16:45:00', '2016-03-15 10:34:53', '1.00', '10');
INSERT INTO `_spin` VALUES ('3', 'Khuân đổ socola', '25', '0', '1.00', 'true', '2016-03-15 13:11:13', '2016-03-15 10:37:14', '1.00', null);
INSERT INTO `_spin` VALUES ('4', 'Cân điện tử', '2', '0', '0.00', 'true', '2016-03-16 16:44:53', '2016-03-15 10:37:38', '0.00', '8');
INSERT INTO `_spin` VALUES ('5', 'Ly giấy chịu nhiệt', '30', '0', '1.00', 'true', '2016-03-16 16:45:24', null, '1.00', '14');
INSERT INTO `_spin` VALUES ('6', 'Hộp bột soda', '15', '1', '1.00', 'true', '2016-03-16 16:43:50', null, '1.00', '1');
INSERT INTO `_spin` VALUES ('7', 'Hương Vanila', '20', '0', '1.00', 'true', '2016-03-16 16:45:08', null, '1.00', '12');
INSERT INTO `_spin` VALUES ('8', 'Mã giảm giá 3%', '999', '0', '33.00', 'true', '2016-03-16 16:45:15', null, '33.00', '13');
INSERT INTO `_spin` VALUES ('9', 'Mã giảm giá 5%', '999', '0', '14.00', 'true', '2016-03-16 16:44:05', null, '14.00', '3');
INSERT INTO `_spin` VALUES ('10', 'Mã giảm giá 10%', '999', '0', '6.00', 'true', '2016-03-16 16:43:23', null, '6.00', '0');
INSERT INTO `_spin` VALUES ('11', 'Mã giảm giá 15%', '999', '0', '4.00', 'true', '2016-03-16 16:44:35', null, '4.00', '6');
INSERT INTO `_spin` VALUES ('12', 'Chúc bạn may mắn lần sau', '9999', '51', '50.00', 'true', '2016-03-16 16:43:58', null, '49.60', '2');

-- ----------------------------
-- Table structure for _user
-- ----------------------------
DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(32) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_insert` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_status` varchar(10) DEFAULT 'true',
  `user_spin_num` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _user
-- ----------------------------
INSERT INTO `_user` VALUES ('1', 'khuongxuantruong@gmail.com', null, 'khuongxuantruong@gmail.com', '2016-03-16 09:36:38', '2016-03-16 09:36:38', 'true', '0');

-- ----------------------------
-- Table structure for _wheel
-- ----------------------------
DROP TABLE IF EXISTS `_wheel`;
CREATE TABLE `_wheel` (
  `wheel_id` int(11) NOT NULL AUTO_INCREMENT,
  `wheel_spin_id` int(11) DEFAULT NULL,
  `wheel_user_id` int(11) DEFAULT NULL,
  `wheel_insert` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wheel_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `wheel_status` varchar(10) DEFAULT '0',
  PRIMARY KEY (`wheel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _wheel
-- ----------------------------
INSERT INTO `_wheel` VALUES ('6', '1', '1', '2016-03-16 09:32:57', null, '0');
INSERT INTO `_wheel` VALUES ('7', '12', '1', '2016-03-16 09:33:35', null, '0');
INSERT INTO `_wheel` VALUES ('8', '1', '1', '2016-03-16 09:33:43', null, '0');
INSERT INTO `_wheel` VALUES ('9', '1', '1', '2016-03-16 09:34:54', null, '0');
