/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : metronic

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-03-15 16:41:14
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `_spin` VALUES ('1', 'Cây rửa đui', '25', '1', '1.00', 'true', '2016-03-15 13:52:48', '2016-03-15 10:34:20', '0.20', null);
INSERT INTO `_spin` VALUES ('2', 'Khuân silicon', '20', '0', '1.00', 'true', '2016-03-15 13:11:15', '2016-03-15 10:34:53', '1.00', null);
INSERT INTO `_spin` VALUES ('3', 'Khuân đổ socola', '25', '0', '1.00', 'true', '2016-03-15 13:11:13', '2016-03-15 10:37:14', '1.00', null);
INSERT INTO `_spin` VALUES ('4', 'Cân điện tử', '2', '0', '0.00', 'true', '2016-03-15 11:16:39', '2016-03-15 10:37:38', '0.00', null);
INSERT INTO `_spin` VALUES ('5', 'Ly giấy chịu nhiệt', '30', '0', '1.00', 'true', '2016-03-15 13:19:04', null, '1.00', '3');
INSERT INTO `_spin` VALUES ('6', 'Hộp bột soda', '15', '1', '1.00', 'true', '2016-03-15 13:11:11', null, '1.00', null);
INSERT INTO `_spin` VALUES ('7', 'Hương Vanila', '20', '0', '1.00', 'true', '2016-03-15 13:19:23', null, '1.00', '5');
INSERT INTO `_spin` VALUES ('8', 'Mã giảm giá 3%', '999', '0', '33.00', 'true', '2016-03-15 13:19:13', null, '33.00', '4');
INSERT INTO `_spin` VALUES ('9', 'Mã giảm giá 5%', '999', '0', '14.00', 'true', '2016-03-15 13:11:07', null, '14.00', null);
INSERT INTO `_spin` VALUES ('10', 'Mã giảm giá 10%', '999', '0', '6.00', 'true', '2016-03-15 13:18:52', null, '6.00', '1');
INSERT INTO `_spin` VALUES ('11', 'Mã giảm giá 15%', '999', '0', '4.00', 'true', '2016-03-15 13:11:03', null, '4.00', null);
INSERT INTO `_spin` VALUES ('12', 'Chúc bạn may mắn lần sau', '9999', '50', '50.00', 'true', '2016-03-15 13:53:08', null, '49.30', '2');
