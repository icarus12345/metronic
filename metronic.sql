/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : metronic

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-07-10 08:44:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `_album`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _album
-- ----------------------------

-- ----------------------------
-- Table structure for `_category`
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
) ENGINE=MyISAM AUTO_INCREMENT=435 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _category
-- ----------------------------
INSERT INTO `_category` VALUES ('41', 'Cake Category ', null, 'fa fa-list-ul', null, null, 'icon-settings ', '50', 'true', '1', '/dashboard/cp/category/viewport/01011/cake', 'cms', '2014-12-09 23:07:01', '2015-07-06 08:17:29', null, '>50>41');
INSERT INTO `_category` VALUES ('44', 'Content', null, 'fa fa-newspaper-o', null, null, '', '50', 'true', '2', '/dashboard/cp/content/viewport/111014/', 'cms', '2014-12-10 08:22:36', '2015-07-06 08:17:29', null, '>50>44');
INSERT INTO `_category` VALUES ('45', 'Home Slider', null, 'fa fa-image', null, null, '', '50', 'true', '3', '/dashboard/cp/image/viewport/11111/slider', 'cms', '2014-12-10 08:22:52', '2015-07-06 08:17:29', null, '>50>45');
INSERT INTO `_category` VALUES ('46', 'Application', null, ' fa fa-bars', null, null, '', '50', 'true', '4', '', 'cms', '2014-12-10 08:23:09', '2015-07-06 08:17:29', null, '>50>46');
INSERT INTO `_category` VALUES ('423', 'Cake', null, 'icon-handbag', null, null, '', '50', 'true', '2', '/dashboard/cp/product/viewport/111115/cake', 'cms', '2015-07-04 09:14:34', '2015-07-06 08:17:29', null, '>50>423');
INSERT INTO `_category` VALUES ('50', 'Content Provider', null, 'icon-home', null, null, '', '0', 'true', '1', '', 'cms', '2014-12-10 16:06:08', '2015-07-06 08:17:29', null, '>50');
INSERT INTO `_category` VALUES ('51', 'Service Operator', null, 'icon-settings', null, null, '', '0', 'true', '2', '', 'cms', '2014-12-10 16:06:33', '2015-07-06 08:17:29', null, '>51');
INSERT INTO `_category` VALUES ('419', 'Bánh sinh nhật', 'banh-sinh-nhat', null, null, null, '', '0', 'true', '0', '', 'cake', '2015-07-02 21:58:23', '2015-07-10 08:40:40', null, '>419');
INSERT INTO `_category` VALUES ('434', 'Admin Account', null, 'fa fa-users', null, null, '', '51', 'true', '3', '/dashboard/so/account/viewport/111114/cms', 'cms', '2015-07-04 22:06:44', '2015-07-06 08:17:29', null, '>51>434');
INSERT INTO `_category` VALUES ('420', 'Bánh cưới', 'banh-cuoi', null, null, null, '', '0', 'true', '0', '', 'cake', '2015-07-02 22:14:25', '2015-07-10 08:40:40', null, '>420');
INSERT INTO `_category` VALUES ('421', 'Bánh vẽ', 'banh-ve', null, null, null, '', '0', 'true', '0', '', 'cake', '2015-07-02 22:14:31', '2015-07-10 08:40:40', null, '>421');
INSERT INTO `_category` VALUES ('422', 'Bánh cupcake', 'banh-cupcake', null, null, null, '', '0', 'true', '0', '', 'cake', '2015-07-02 22:14:44', '2015-07-10 08:40:40', null, '>422');
INSERT INTO `_category` VALUES ('433', 'File Manage', null, 'fa fa-file-image-o', null, null, '', '51', 'true', '2', '/dashboard/cp/kcfinder/viewport/111111/image', 'cms', '2015-07-04 16:34:01', '2015-07-06 08:17:29', null, '>51>433');
INSERT INTO `_category` VALUES ('428', 'Social', 'social', null, null, null, '', '0', 'true', '3', '', 'scake', '2015-07-04 12:55:14', '2015-07-09 13:29:37', null, '>428');
INSERT INTO `_category` VALUES ('429', 'Payment', 'payment', null, null, null, '', '0', 'true', '2', '', 'scake', '2015-07-04 12:55:21', '2015-07-09 13:29:37', null, '>429');
INSERT INTO `_category` VALUES ('430', 'Information', 'information', null, null, null, '', '0', 'true', '1', '', 'scake', '2015-07-04 12:55:35', '2015-07-09 13:29:37', null, '>430');
INSERT INTO `_category` VALUES ('431', 'Other', 'other', null, null, null, '', '0', 'true', '10', '', 'scake', '2015-07-04 12:55:50', '2015-07-09 13:29:37', null, '>431');
INSERT INTO `_category` VALUES ('432', 'Setting', null, 'fa fa-cogs', null, null, '', '51', 'true', '0', '/dashboard/cp/data/viewport/010114/scake', 'cms', '2015-07-04 16:22:43', '2015-07-06 08:17:29', null, '>51>432');

-- ----------------------------
-- Table structure for `_contactus`
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
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _contactus
-- ----------------------------

-- ----------------------------
-- Table structure for `_content`
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
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _content
-- ----------------------------
INSERT INTO `_content` VALUES ('1', 'Công thức làm bánh', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '<div style=\"line-height: 19.2000007629395px;\">The standard Lorem Ipsum passage, used since the 1500s</div>\r\n\r\n<div style=\"line-height: 19.2000007629395px;\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</div>\r\n\r\n<div style=\"line-height: 19.2000007629395px;\">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</div>\r\n\r\n<div style=\"line-height: 19.2000007629395px; text-align: center;\"><img alt=\"\" src=\"/data/image/food/9.jpg\" style=\"height:240px; width:240px\" /></div>\r\n\r\n<div style=\"line-height: 19.2000007629395px;\">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</div>\r\n', null, '', '0', '2015-07-05 11:12:54', '2015-07-06 09:28:05', 'true', '/data/image/ILoveYouThisMuch-90421.jpg', 'cong-thuc-lam-banh', 'true');

-- ----------------------------
-- Table structure for `_data`
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _data
-- ----------------------------
INSERT INTO `_data` VALUES ('1', '428', 'Facebook', 'facebook', '', null, null, '#', null, '2015-07-04 13:39:40', '2015-07-08 13:36:51', 'true', 'scake', null, 'string', 'false');
INSERT INTO `_data` VALUES ('2', '430', 'Logo', 'logo', '', null, null, '/data/image/food/1.jpg', null, '2015-07-04 13:44:04', '2015-07-08 13:37:14', 'true', 'scake', null, 'image', 'false');
INSERT INTO `_data` VALUES ('3', '430', 'Address', 'address', '', null, null, '161A Võ Văn Tần, Q.3, TP.HCM', null, '2015-07-04 13:50:20', '2015-07-04 23:33:27', 'true', 'scake', null, 'text', 'false');
INSERT INTO `_data` VALUES ('4', '430', 'Email', 'email', '', null, null, 'phuongnha2010@yahoo.com', null, '2015-07-04 13:51:36', '2015-07-04 23:33:25', 'false', 'scake', null, 'string', 'false');
INSERT INTO `_data` VALUES ('5', '430', 'Phone', 'phone', '', null, null, '0999 888 777', null, '2015-07-04 13:52:00', '2015-07-04 23:33:22', 'true', 'scake', null, 'string', 'false');
INSERT INTO `_data` VALUES ('6', '428', 'Google +', 'google-', '', null, null, '##', null, '2015-07-04 13:52:46', '2015-07-08 13:37:05', 'true', 'scake', null, 'string', 'false');
INSERT INTO `_data` VALUES ('7', '428', 'Twitter', 'twitter', '', null, null, '##', null, '2015-07-04 13:52:56', '2015-07-08 13:37:07', 'true', 'scake', null, 'string', 'false');
INSERT INTO `_data` VALUES ('8', '430', 'Google map', 'google-map', '', null, null, null, null, '2015-07-04 13:57:57', '2015-07-04 23:33:20', 'true', 'scake', null, 'text', 'false');
INSERT INTO `_data` VALUES ('9', '430', 'Small Logo', 'small-logo', '', null, null, null, null, '2015-07-04 13:58:40', '2015-07-04 23:33:14', 'true', 'scake', null, 'image', 'false');
INSERT INTO `_data` VALUES ('10', '431', 'Công thức', 'cong-thuc', '', null, null, null, null, '2015-07-04 14:01:24', '2015-07-04 23:33:38', 'true', 'scake', null, 'html', 'false');

-- ----------------------------
-- Table structure for `_image`
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
INSERT INTO `_image` VALUES ('1', '/data/image/ILoveYouThisMuch-90421.jpg', 'Bánh sinh nhật dâu tây', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. \r\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. \r\nMany desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose', '2015-07-03 09:45:43', '2015-07-06 14:08:14', '0', 'true', '', null, 'slider');
INSERT INTO `_image` VALUES ('2', '/data/image/slider1.jpg', 'Bánh kem dâu sữa', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose', '2015-07-03 11:29:48', '2015-07-06 14:06:27', '0', 'true', '', null, 'slider');
INSERT INTO `_image` VALUES ('3', '/data/image/food/9.jpg', 'Khuyến mãi đặc biệt', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose', '2015-07-03 14:04:05', '2015-07-06 14:06:30', '0', 'true', '', null, 'slider');

-- ----------------------------
-- Table structure for `_product`
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
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _product
-- ----------------------------
INSERT INTO `_product` VALUES ('1', 'PIGC', 'Bánh kem con heo', 'banh-kem-con-heo', '/data/image/food/1.jpg', null, '', null, '0', 'true', 'cake', '2015-07-03 15:19:21', '2015-07-03 20:07:16', '420', '/data/image/food/1.jpg\r\n/data/image/food/4.jpg\r\n/data/image/food/5.jpg', null, '120000.00', '0', null);
INSERT INTO `_product` VALUES ('2', 'DORE', 'Bánh Doreamon', 'banh-doreamon', '/data/image/food/5.jpg', null, '', null, '0', 'true', 'cake', '2015-07-03 16:49:04', '2015-07-03 17:38:02', '419', '/data/image/food/9.jpg', null, '110000.00', '0', null);
INSERT INTO `_product` VALUES ('48', 'CAKE1', 'Bánh sinh nhật BSN 86', 'banh-sinh-nhat-bsn-86', 'http://banhngononline.com/components/com_product/img/product/chinhsuaaaaaaaaaaaaa_1431809523.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:42', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('49', 'CAKE2', 'Bánh sinh nhật BSN 85', 'banh-sinh-nhat-bsn-85', 'http://banhngononline.com/components/com_product/img/product/thuuuuuuuuuuuu_1428560062.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('50', 'CAKE3', 'Bánh sinh nhật BSN 84', 'banh-sinh-nhat-bsn-84', 'http://banhngononline.com/components/com_product/img/product/lauuuuudaiiiiiii_1428214583.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '550000.00', '0', null);
INSERT INTO `_product` VALUES ('51', 'CAKE4', 'Bánh sinh nhật BSN 83', 'banh-sinh-nhat-bsn-83', 'http://banhngononline.com/components/com_product/img/product/DSC_1350_1428214509.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('52', 'CAKE5', 'Banh Con Giap BCG526', 'banh-con-giap-bcg526', 'http://banhngononline.com/components/com_product/img/product/gaaaaaaaaaaaaaaaa_1428214230.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('53', 'CAKE6', 'Banh Con Giap BCG525', 'banh-con-giap-bcg525', 'http://banhngononline.com/components/com_product/img/product/52555555555555_1428049822.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('54', 'CAKE7', 'Banh Con Giap BCG524', 'banh-con-giap-bcg524', 'http://banhngononline.com/components/com_product/img/product/524444444444444_1428049499.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('55', 'CAKE8', 'Bánh sinh nhật BSN 82', 'banh-sinh-nhat-bsn-82', 'http://banhngononline.com/components/com_product/img/product/82000000000000000000_1428048709.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('56', 'CAKE9', 'Bánh sinh nhật BSN 81', 'banh-sinh-nhat-bsn-81', 'http://banhngononline.com/components/com_product/img/product/begaiiiiiiiiiiiii_1428048550.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('57', 'CAKE10', 'Bánh sinh nhật BSN 80', 'banh-sinh-nhat-bsn-80', 'http://banhngononline.com/components/com_product/img/product/800000000000000000_1428048403.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('58', 'CAKE11', 'Bánh sinh nhật BSN 79', 'banh-sinh-nhat-bsn-79', 'http://banhngononline.com/components/com_product/img/product/799999999999999999_1428048225.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('59', 'CAKE12', 'Bánh sinh nhật BSN 78', 'banh-sinh-nhat-bsn-78', 'http://banhngononline.com/components/com_product/img/product/danglai111111111_1428048036.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('60', 'CAKE13', 'Bánh sinh nhật BSN 77', 'banh-sinh-nhat-bsn-77', 'http://banhngononline.com/components/com_product/img/product/7777777777777_1428047680.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('61', 'CAKE14', 'Bánh sinh nhật BSN 76', 'banh-sinh-nhat-bsn-76', 'http://banhngononline.com/components/com_product/img/product/dangaaaaaaaaaaaa_1428047484.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('62', 'CAKE15', 'Bánh sinh nhật BSN 75', 'banh-sinh-nhat-bsn-75', 'http://banhngononline.com/components/com_product/img/product/ok4_1428044716.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:19:43', null, '419', null, null, '550000.00', '0', null);
INSERT INTO `_product` VALUES ('63', 'CAKE16', 'Bánh sinh nhật BSN 74', 'banh-sinh-nhat-bsn-74', 'http://banhngononline.com/components/com_product/img/product/aaaaaaaaannnnnnnnnnnnn_1428213935.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('64', 'CAKE17', 'Bánh sinh nhật BSN 73', 'banh-sinh-nhat-bsn-73', 'http://banhngononline.com/components/com_product/img/product/ok2_1428043205.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('65', 'CAKE18', 'Bánh sinh nhật BSN 72', 'banh-sinh-nhat-bsn-72', 'http://banhngononline.com/components/com_product/img/product/OK_1428042664.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('66', 'CAKE19', 'Bánh sinh nhật BSN 71', 'banh-sinh-nhat-bsn-71', 'http://banhngononline.com/components/com_product/img/product/4444_1428041740.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('67', 'CAKE20', 'Bánh sinh nhật BSN 70', 'banh-sinh-nhat-bsn-70', 'http://banhngononline.com/components/com_product/img/product/airbi_1428028160.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('68', 'CAKE21', 'Bánh sinh nhật BSN 69', 'banh-sinh-nhat-bsn-69', 'http://banhngononline.com/components/com_product/img/product/2632_1410482163.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '400000.00', '0', null);
INSERT INTO `_product` VALUES ('69', 'CAKE22', 'Bánh cưới', 'banh-cuoi', 'http://banhngononline.com/components/com_product/img/product/banh-cuoi-075_1410420724.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '0.00', '0', null);
INSERT INTO `_product` VALUES ('70', 'CAKE23', 'Banh sinh nhat 68', 'banh-sinh-nhat-68', 'http://banhngononline.com/components/com_product/img/product/7234_1410418186.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('71', 'CAKE24', 'Banh sinh nhat 67', 'banh-sinh-nhat-67', 'http://banhngononline.com/components/com_product/img/product/12_1410417992.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('72', 'CAKE25', 'Bánh sinh nhật BSN 66', 'banh-sinh-nhat-bsn-66', 'http://banhngononline.com/components/com_product/img/product/20_1410416852.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('73', 'CAKE26', 'Bánh sinh nhật BSN 65', 'banh-sinh-nhat-bsn-65', 'http://banhngononline.com/components/com_product/img/product/7252_1409965377.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('74', 'CAKE27', 'Bánh sinh nhật BSN 64', 'banh-sinh-nhat-bsn-64', 'http://banhngononline.com/components/com_product/img/product/584_1409965018.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('75', 'CAKE28', 'Bánh sinh nhật BSN 63', 'banh-sinh-nhat-bsn-63', 'http://banhngononline.com/components/com_product/img/product/552_1409964943.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:21', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('76', 'CAKE29', 'Bánh sinh nhật BSN 62', 'banh-sinh-nhat-bsn-62', 'http://banhngononline.com/components/com_product/img/product/424_320x320_1409964826.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:21', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('77', 'CAKE30', 'Bánh sinh nhật BSN 61', 'banh-sinh-nhat-bsn-61', 'http://banhngononline.com/components/com_product/img/product/468_1408501022.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:21', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('78', 'CAKE31', 'Bánh sinh nhật BSN 60', 'banh-sinh-nhat-bsn-60', 'http://banhngononline.com/components/com_product/img/product/1933_1408500931.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('79', 'CAKE32', 'Bánh sinh nhật BSN 59', 'banh-sinh-nhat-bsn-59', 'http://banhngononline.com/components/com_product/img/product/24_1408339052.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('80', 'CAKE33', 'Bánh sinh nhật BSN 58', 'banh-sinh-nhat-bsn-58', 'http://banhngononline.com/components/com_product/img/product/483_1407913431.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('81', 'CAKE34', 'Bánh sinh nhật BSN 57', 'banh-sinh-nhat-bsn-57', 'http://banhngononline.com/components/com_product/img/product/1_1407912208.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('82', 'CAKE35', 'Bánh sinh nhật BSN 56', 'banh-sinh-nhat-bsn-56', 'http://banhngononline.com/components/com_product/img/product/f10_1406702661.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:24', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('83', 'CAKE36', 'Bánh sinh nhật BSN 55', 'banh-sinh-nhat-bsn-55', 'http://banhngononline.com/components/com_product/img/product/562_1406702295.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('84', 'CAKE37', 'Bánh sinh nhật BSN 54', 'banh-sinh-nhat-bsn-54', 'http://banhngononline.com/components/com_product/img/product/24424_1405735781.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '750000.00', '0', null);
INSERT INTO `_product` VALUES ('85', 'CAKE38', 'Bánh sinh nhật BSN 53', 'banh-sinh-nhat-bsn-53', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_12_1397638720.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('86', 'CAKE39', 'Bánh sinh nhật BSN 52', 'banh-sinh-nhat-bsn-52', 'http://banhngononline.com/components/com_product/img/product/roseheart_1397440739.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('87', 'CAKE40', 'Bánh sinh nhật BSN 51', 'banh-sinh-nhat-bsn-51', 'http://banhngononline.com/components/com_product/img/product/BSN51_1397440466.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '500000.00', '0', null);
INSERT INTO `_product` VALUES ('88', 'CAKE41', 'Bánh sinh nhật BSN 50', 'banh-sinh-nhat-bsn-50', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_10_1397274631.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('89', 'CAKE42', 'Bánh sinh nhật BSN 49', 'banh-sinh-nhat-bsn-49', 'http://banhngononline.com/components/com_product/img/product/small_xdf1362847956_1397104354.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('90', 'CAKE43', 'Bánh sinh nhật BSN 48', 'banh-sinh-nhat-bsn-48', 'http://banhngononline.com/components/com_product/img/product/BSN 48_1397102710.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('91', 'CAKE44', 'Bánh kem noel BKN 718', 'banh-kem-noel-bkn-718', 'http://banhngononline.com/components/com_product/img/product/8620_197780990408055_384838991_n_1385448', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('92', 'CAKE45', 'Bánh kem noel BKN 717', 'banh-kem-noel-bkn-717', 'http://banhngononline.com/components/com_product/img/product/BANHNOEL_1385197325.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:25', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('93', 'CAKE46', 'Bánh Sinh Nhật BSN 47', 'banh-sinh-nhat-bsn-47', 'http://banhngononline.com/components/com_product/img/product/ANHDANG_1383665574.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('94', 'CAKE47', 'Bánh Sinh Nhật BSN 46', 'banh-sinh-nhat-bsn-46', 'http://banhngononline.com/components/com_product/img/product/P1020763_1383617823.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('95', 'CAKE48', 'Banh cupcake phủ kem', 'banh-cupcake-phu-kem', 'http://banhngononline.com/components/com_product/img/product/small_nnw1359612916_1379414953.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '15000.00', '0', null);
INSERT INTO `_product` VALUES ('96', 'CAKE49', 'Bánh Sinh Nhật BSN 45', 'banh-sinh-nhat-bsn-45', 'http://banhngononline.com/components/com_product/img/product/small_bag1368448979_1379414538.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('97', 'CAKE50', 'Banh cupcake phủ kem CPK 08', 'banh-cupcake-phu-kem-cpk-08', 'http://banhngononline.com/components/com_product/img/product/DSC_0778_1379245549.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '15000.00', '0', null);
INSERT INTO `_product` VALUES ('98', 'CAKE51', 'Bánh Sinh Nhật BSN 44', 'banh-sinh-nhat-bsn-44', 'http://banhngononline.com/components/com_product/img/product/P1020688_1379057462.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('99', 'CAKE52', 'Bánh Sinh Nhật BSN 43', 'banh-sinh-nhat-bsn-43', 'http://banhngononline.com/components/com_product/img/product/P1020680_1378460650.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:46', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('100', 'CAKE53', 'Bánh Sinh Nhật BSN 42', 'banh-sinh-nhat-bsn-42', 'http://banhngononline.com/components/com_product/img/product/sieunhan2_1377907572.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('101', 'CAKE54', 'Bánh Sinh Nhật BSN 41', 'banh-sinh-nhat-bsn-41', 'http://banhngononline.com/components/com_product/img/product/Copy of heinenken boy 2_1377822140.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('102', 'CAKE55', 'Bánh Sinh Nhật BSN 40', 'banh-sinh-nhat-bsn-40', 'http://banhngononline.com/components/com_product/img/product/small_oro1375804845_1377737278.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('103', 'CAKE56', 'Bánh con giáp BCG 523', 'banh-con-giap-bcg-523', 'http://banhngononline.com/components/com_product/img/product/ade1369574799_1377655576.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('104', 'CAKE57', 'Bánh Sinh Nhật BSN 39', 'banh-sinh-nhat-bsn-39', 'http://banhngononline.com/components/com_product/img/product/DSC_0729_1377523046.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('105', 'CAKE58', 'Bánh Sinh Nhật BSN 38', 'banh-sinh-nhat-bsn-38', 'http://banhngononline.com/components/com_product/img/product/bao dinh_1377480223.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('106', 'CAKE59', 'Bánh Sinh Nhật BSN 37', 'banh-sinh-nhat-bsn-37', 'http://banhngononline.com/components/com_product/img/product/DSC_0725_1377351250.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:47', null, '419', null, null, '0.00', '0', null);
INSERT INTO `_product` VALUES ('107', 'CAKE61', 'Bánh Sinh Nhật BSN 36', 'banh-sinh-nhat-bsn-36', 'http://banhngononline.com/components/com_product/img/product/banh-in-hinh-009-150x150_1377280556.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('108', 'CAKE62', 'Bánh Sinh Nhật BSN 34', 'banh-sinh-nhat-bsn-34', 'http://banhngononline.com/components/com_product/img/product/girl_1377240893.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('109', 'CAKE63', 'Banh sinh nhat BSN 30', 'banh-sinh-nhat-bsn-30', 'http://banhngononline.com/components/com_product/img/product/IMG_20130707_142607_1373332758.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '0.00', '0', null);
INSERT INTO `_product` VALUES ('110', 'CAKE64', 'banh kem ngho nghinh BKNN228', 'banh-kem-ngho-nghinh-bknn228', 'http://banhngononline.com/components/com_product/img/product/P1020449_1371878618.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('111', 'CAKE65', 'Banh Sinh nhat BCG522', 'banh-sinh-nhat-bcg522', 'http://banhngononline.com/components/com_product/img/product/P1020528_1371878290.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('112', 'CAKE66', 'Banh sinh Nhat BSN29', 'banh-sinh-nhat-bsn29', 'http://banhngononline.com/components/com_product/img/product/P1020452_1371877978.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('113', 'CAKE67', 'Banh sinh nhat BSN 27', 'banh-sinh-nhat-bsn-27', 'http://banhngononline.com/components/com_product/img/product/img_0972r_1371547149.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:54', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('114', 'CAKE76', 'Banh Sinh Nhat BSN 26', 'banh-sinh-nhat-bsn-26', 'http://banhngononline.com/components/com_product/img/product/Rong xanh_1371546748.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('115', 'CAKE77', 'Banh sinh nhat BSN 25', 'banh-sinh-nhat-bsn-25', 'http://banhngononline.com/components/com_product/img/product/mickeyminnie_1371546482.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('116', 'CAKE78', 'Banh sinh nhat BSN 24', 'banh-sinh-nhat-bsn-24', 'http://banhngononline.com/components/com_product/img/product/number one cake for girl_1371546238.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('117', 'CAKE79', 'Bánh Sinh Nhật BSN 23', 'banh-sinh-nhat-bsn-23', 'http://banhngononline.com/components/com_product/img/product/barbie-doll-cake_1368454780.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '0.00', '0', null);
INSERT INTO `_product` VALUES ('118', 'CAKE80', 'Bánh Sinh Nhật BSN 21', 'banh-sinh-nhat-bsn-21', 'http://banhngononline.com/components/com_product/img/product/bsn cb 12_128x128_1368403731.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:58', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('119', 'CAKE81', 'Bánh Sinh Nhật BSN 20', 'banh-sinh-nhat-bsn-20', 'http://banhngononline.com/components/com_product/img/product/bsncb332_1368403532.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('120', 'CAKE82', 'Bánh Sinh Nhật BSN 19', 'banh-sinh-nhat-bsn-19', 'http://banhngononline.com/components/com_product/img/product/yvf1354601953_1368403277.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('121', 'CAKE83', 'Bánh Sinh Nhật BSN 18', 'banh-sinh-nhat-bsn-18', 'http://banhngononline.com/components/com_product/img/product/hcg1349104891_1368402641.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '0.00', '0', null);
INSERT INTO `_product` VALUES ('122', 'CAKE84', 'Bánh Sinh Nhật BSN 17', 'banh-sinh-nhat-bsn-17', 'http://banhngononline.com/components/com_product/img/product/BSN CB36_1368402386.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('123', 'CAKE85', 'Bánh Sinh Nhật BSN 16', 'banh-sinh-nhat-bsn-16', 'http://banhngononline.com/components/com_product/img/product/zgg1355154852_1368402197.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('124', 'CAKE86', 'Bánh Sinh Nhật BSN 15', 'banh-sinh-nhat-bsn-15', 'http://banhngononline.com/components/com_product/img/product/BSN CB 50_1368401734.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('125', 'CAKE87', 'Bánh Sinh Nhật BSN 14', 'banh-sinh-nhat-bsn-14', 'http://banhngononline.com/components/com_product/img/product/SAM_0526_1368401421.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '450000.00', '0', null);
INSERT INTO `_product` VALUES ('126', 'CAKE88', 'Bánh Sinh Nhật BSN 13', 'banh-sinh-nhat-bsn-13', 'http://banhngononline.com/components/com_product/img/product/SAM_0532_1368401138.JPG', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '500000.00', '0', null);
INSERT INTO `_product` VALUES ('127', 'CAKE89', 'Bánh Sinh Nhật BSN 12', 'banh-sinh-nhat-bsn-12', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_1_1368360175.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '700000.00', '0', null);
INSERT INTO `_product` VALUES ('128', 'CAKE90', 'Bánh kem Noel BKN716', 'banh-kem-noel-bkn716', 'http://banhngononline.com/components/com_product/img/product/BKN 716_1354804215.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:22:59', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('129', 'CAKE91', 'Bánh kem Noel BKN715', 'banh-kem-noel-bkn715', 'http://banhngononline.com/components/com_product/img/product/BKN 715_1354802914.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('130', 'CAKE92', 'Bánh kem Noel BKN714', 'banh-kem-noel-bkn714', 'http://banhngononline.com/components/com_product/img/product/BKN 714_1354802179.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('131', 'CAKE93', 'Bánh kem BKV 416', 'banh-kem-bkv-416', 'http://banhngononline.com/components/com_product/img/product/kem-large_1354520293.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '200000.00', '0', null);
INSERT INTO `_product` VALUES ('132', 'CAKE94', 'Bánh Sinh Nhật BSN119', 'banh-sinh-nhat-bsn119', 'http://banhngononline.com/components/com_product/img/product/BSN119_1354466601.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('133', 'CAKE95', 'Bánh BSN750', 'banh-bsn750', 'http://banhngononline.com/components/com_product/img/product/IMG_2201_1353823214.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('134', 'CAKE96', 'Bánh kem Noel 713', 'banh-kem-noel-713', 'http://banhngononline.com/components/com_product/img/product/noelcake6_1329790225.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('135', 'CAKE97', 'Bánh Noel BKN712', 'banh-noel-bkn712', 'http://banhngononline.com/components/com_product/img/product/8620_197780990408055_384838991_n_1387371', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:11', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('136', 'CAKE98', 'Bánh Noel BKN711', 'banh-noel-bkn711', 'http://banhngononline.com/components/com_product/img/product/noelcake2_1329788847.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('137', 'CAKE99', 'Bánh sinh nhật BNS116', 'banh-sinh-nhat-bns116', 'http://banhngononline.com/components/com_product/img/product/twonumbercake_1326429866.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('138', 'CAKE100', 'Cupcake phủ kem CPK617', 'cupcake-phu-kem-cpk617', 'http://banhngononline.com/components/com_product/img/product/hinh_bck_5_1368454980.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '15000.00', '0', null);
INSERT INTO `_product` VALUES ('139', 'CAKE101', 'Cupcake phủ kem CPK616', 'cupcake-phu-kem-cpk616', 'http://banhngononline.com/components/com_product/img/product/fishschoole_1326255510.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '400000.00', '0', null);
INSERT INTO `_product` VALUES ('140', 'CAKE102', 'Cupcake phủ kem CPK615', 'cupcake-phu-kem-cpk615', 'http://banhngononline.com/components/com_product/img/product/flyingballs_1326254004.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '450000.00', '0', null);
INSERT INTO `_product` VALUES ('141', 'CAKE103', 'Cupcake phủ kem CPK614', 'cupcake-phu-kem-cpk614', 'http://banhngononline.com/components/com_product/img/product/Birthday cupcakes_e_1326185633.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '360000.00', '0', null);
INSERT INTO `_product` VALUES ('142', 'CAKE104', 'Cupcake phủ kem CPK613', 'cupcake-phu-kem-cpk613', 'http://banhngononline.com/components/com_product/img/product/rosekingcake_1326184098.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('143', 'CAKE105', 'Cupcake phủ kem CPK612', 'cupcake-phu-kem-cpk612', 'http://banhngononline.com/components/com_product/img/product/cupcakephukem612_e_1326182463.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:12', null, '419', null, null, '240000.00', '0', null);
INSERT INTO `_product` VALUES ('144', 'CAKE106', 'Bánh con giáp BCG521', 'banh-con-giap-bcg521', 'http://banhngononline.com/components/com_product/img/product/Snakecakes_1326094461.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:15', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('145', 'CAKE107', 'Bánh con giáp BCG519', 'banh-con-giap-bcg519', 'http://banhngononline.com/components/com_product/img/product/Pigcakes1_1326096456.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:15', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('146', 'CAKE108', 'Bánh con giáp BCG518', 'banh-con-giap-bcg518', 'http://banhngononline.com/components/com_product/img/product/catcake_1326084335.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:15', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('147', 'CAKE109', 'Bánh con giáp BCG517', 'banh-con-giap-bcg517', 'http://banhngononline.com/components/com_product/img/product/horse cake_1377480545.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:15', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('148', 'CAKE110', 'Bánh con giáp BCG516', 'banh-con-giap-bcg516', 'http://banhngononline.com/components/com_product/img/product/dattenfilemoi_1377738262.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('149', 'CAKE111', 'Bánh kem ngộ nghĩnh BKNN227', 'banh-kem-ngo-nghinh-bknn227', 'http://banhngononline.com/components/com_product/img/product/small_icu1348072133_1377737830.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('150', 'CAKE112', 'Bánh con giáp BCG513', 'banh-con-giap-bcg513', 'http://banhngononline.com/components/com_product/img/product/Monkeycake_1325836459.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('151', 'CAKE113', 'Bánh con giáp BCG512', 'banh-con-giap-bcg512', 'http://banhngononline.com/components/com_product/img/product/_1325833232.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('152', 'CAKE114', 'Bánh con giáp BCG511', 'banh-con-giap-bcg511', 'http://banhngononline.com/components/com_product/img/product/chuotttttttttttt_1428214363.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('153', 'CAKE115', 'Bánh kem Valentine BKV415', 'banh-kem-valentine-bkv415', 'http://banhngononline.com/components/com_product/img/product/tuixach_1325831941.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('154', 'CAKE116', 'Bánh kem BKV414', 'banh-kem-bkv414', 'http://banhngononline.com/components/com_product/img/product/yourname2_1325821389.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '200000.00', '0', null);
INSERT INTO `_product` VALUES ('155', 'CAKE117', 'Bánh kem valentine BKV413', 'banh-kem-valentine-bkv413', 'http://banhngononline.com/components/com_product/img/product/namecake_1325754279.png', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('156', 'CAKE118', 'Bánh kem Valentine BKV412', 'banh-kem-valentine-bkv412', 'http://banhngononline.com/components/com_product/img/product/Marboro_1325750887.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('157', 'CAKE119', 'Bánh kem valentine BKV411', 'banh-kem-valentine-bkv411', 'http://banhngononline.com/components/com_product/img/product/banhkemvalentin3_1329792186.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '200000.00', '0', null);
INSERT INTO `_product` VALUES ('158', 'CAKE120', 'Bánh cưới BKC315', 'banh-cuoi-bkc315', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi2_1325738696.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:16', null, '419', null, null, '1500000.00', '0', null);
INSERT INTO `_product` VALUES ('159', 'CAKE121', 'Bánh cưới BKC314', 'banh-cuoi-bkc314', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi3_1325734842.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', '2015-07-08 09:19:47', '420', null, null, '1000000.00', '0', null);
INSERT INTO `_product` VALUES ('160', 'CAKE122', 'Bánh cưới BKC313', 'banh-cuoi-bkc313', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi4_1325734348.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '1000000.00', '0', null);
INSERT INTO `_product` VALUES ('161', 'CAKE123', 'Bánh cưới BKC312', 'banh-cuoi-bkc312', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi5_1325732133.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', '2015-07-03 21:47:38', '420', null, null, '1500000.00', '0', null);
INSERT INTO `_product` VALUES ('162', 'CAKE124', 'Bánh kem ngộ nghĩnh BKNN226', 'banh-kem-ngo-nghinh-bknn226', 'http://banhngononline.com/components/com_product/img/product/images (6)_1354518872.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '300000.00', '0', null);
INSERT INTO `_product` VALUES ('163', 'CAKE125', 'Bánh sinh nhật BSN111', 'banh-sinh-nhat-bsn111', 'http://banhngononline.com/components/com_product/img/product/images 2_1324971479.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('164', 'CAKE126', 'Bánh sinh nhật BSN113', 'banh-sinh-nhat-bsn113', 'http://banhngononline.com/components/com_product/img/product/banhhopqua_1325042436.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('165', 'CAKE127', 'Bánh sinh nhật BSN112', 'banh-sinh-nhat-bsn112', 'http://banhngononline.com/components/com_product/img/product/BSN116_1354366771.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('166', 'CAKE128', 'Bánh sinh nhật BSN114', 'banh-sinh-nhat-bsn114', 'http://banhngononline.com/components/com_product/img/product/chocolatecake_1325044405.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('167', 'CAKE129', 'Bánh sinh nhật BSN115', 'banh-sinh-nhat-bsn115', 'http://banhngononline.com/components/com_product/img/product/banh-sinh-nhat_1354366889.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('168', 'CAKE130', 'Bánh kem ngộ nghĩnh BKNN212', 'banh-kem-ngo-nghinh-bknn212', 'http://banhngononline.com/components/com_product/img/product/ChuotMickeycake_1325057344.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '250000.00', '0', null);
INSERT INTO `_product` VALUES ('169', 'CAKE131', 'Bánh kem ngộ nghĩnh BKNN213', 'banh-kem-ngo-nghinh-bknn213', 'http://banhngononline.com/components/com_product/img/product/11_1405735424.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('170', 'CAKE132', 'Bánh kem ngộ nghĩnh BKNN217', 'banh-kem-ngo-nghinh-bknn217', 'http://banhngononline.com/components/com_product/img/product/Chuvoicon_1325061772.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('171', 'CAKE133', 'Bánh kem ngộ nghĩnh BKNN216', 'banh-kem-ngo-nghinh-bknn216', 'http://banhngononline.com/components/com_product/img/product/BKNN216_1354465119.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '350000.00', '0', null);
INSERT INTO `_product` VALUES ('172', 'CAKE134', 'Bánh kem ngộ nghĩnh BKNN219', 'banh-kem-ngo-nghinh-bknn219', 'http://banhngononline.com/components/com_product/img/product/Chodom2_1325092672.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:20', null, '419', null, null, '370000.00', '0', null);
INSERT INTO `_product` VALUES ('173', 'CAKE136', 'Bánh kem ngộ nghĩnh BKNN224', 'banh-kem-ngo-nghinh-bknn224', 'http://banhngononline.com/components/com_product/img/product/McQueencar_1325216317.jpg', null, null, null, '0', 'true', 'cake', '2015-07-03 21:23:25', null, '419', null, null, '370000.00', '0', null);

-- ----------------------------
-- Table structure for `_seo`
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
-- Table structure for `auth_users`
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
  PRIMARY KEY (`ause_id`),
  UNIQUE KEY `ause_unique` (`ause_email`) USING BTREE,
  UNIQUE KEY `ause_username` (`ause_username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10025 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_users
-- ----------------------------
INSERT INTO `auth_users` VALUES ('10001', 'V9ZXr6Uw', '10002', 'Trường Khương', 'khuongxuantruong@gmail.com', 'khuongxuantruong@gmail.com', '7PtY3oAdRdK6P7YncnroQ2KLnLoPjrnW', 'FA04iw9qhWlT', '27d168e16f3cafbdd8c5f0c1be19608e', '1', 'true', '2013-04-02 16:43:42', '2015-07-09 16:02:57', null, 'https://lh5.googleusercontent.com/-WAMgTlfd5og/AAAAAAAAAAI/AAAAAAAAAP0/b0LCEJbexS4/photo.jpg', 'Administrator', '2013-04-08 10:01:04');
INSERT INTO `auth_users` VALUES ('10018', 'QOEb1vsc', null, 'Admin', 'admin', 'Admin@gmail.com', 'qBKh4pA07aiU4WNbLCHLjhzpaFnjWXYP', '7PrSkIXh', '0903ce30d609ba18172fc0605c2848c2', '2', 'true', '2014-12-11 23:01:35', '2014-12-12 05:07:50', null, null, 'Admin', null);
INSERT INTO `auth_users` VALUES ('10020', 'h8ovaLKc', null, 'View', 'View', 'View@gmail.com', 'PMvaAlFujxu8GZvKzLPIjQOaCu4Eba5y', 'g5AVZC8K', '477b560f0f16773d3348ae9711052ba9', '2', 'false', '2014-12-12 08:31:32', '2015-07-04 22:09:45', null, null, 'View', null);
