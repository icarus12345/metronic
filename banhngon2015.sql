-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2015 at 09:42 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banhngon2015`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_users`
--

CREATE TABLE `auth_users` (
  `ause_id` smallint(6) NOT NULL auto_increment,
  `ause_key` varchar(32) NOT NULL,
  `ause_group` smallint(6) default NULL,
  `ause_name` varchar(100) NOT NULL,
  `ause_username` varchar(50) NOT NULL,
  `ause_email` varchar(50) NOT NULL,
  `ause_secretkey` varchar(52) NOT NULL,
  `ause_salt` varchar(32) NOT NULL,
  `ause_password` varchar(32) NOT NULL,
  `ause_position` smallint(6) NOT NULL,
  `ause_status` varchar(10) default 'false',
  `ause_insert` datetime NOT NULL,
  `ause_update` datetime default NULL,
  `ause_delete` datetime default NULL,
  `ause_picture` varchar(120) default NULL,
  `ause_authority` varchar(20) default NULL,
  `ause_lastlogin` datetime default NULL,
  PRIMARY KEY  (`ause_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10025 ;

--
-- Dumping data for table `auth_users`
--

INSERT INTO `auth_users` (`ause_id`, `ause_key`, `ause_group`, `ause_name`, `ause_username`, `ause_email`, `ause_secretkey`, `ause_salt`, `ause_password`, `ause_position`, `ause_status`, `ause_insert`, `ause_update`, `ause_delete`, `ause_picture`, `ause_authority`, `ause_lastlogin`) VALUES
(10001, 'V9ZXr6Uw', 10002, 'Trường Khương', 'khuongxuantruong@gmail.com', 'khuongxuantruong@gmail.com', '7PtY3oAdRdK6P7YncnroQ2KLnLoPjrnW', 'FA04iw9qhWlT', '27d168e16f3cafbdd8c5f0c1be19608e', 1, 'true', '2013-04-02 16:43:42', '2014-12-12 09:58:06', NULL, 'https://lh5.googleusercontent.com/-WAMgTlfd5og/AAAAAAAAAAI/AAAAAAAAAP0/b0LCEJbexS4/photo.jpg', 'Administrator', '2013-04-08 10:01:04'),
(10018, 'QOEb1vsc', NULL, 'Admin', 'admin', 'Admin@gmail.com', 'qBKh4pA07aiU4WNbLCHLjhzpaFnjWXYP', '7PrSkIXh', '0903ce30d609ba18172fc0605c2848c2', 2, 'true', '2014-12-11 23:01:35', '2014-12-12 05:07:50', NULL, NULL, 'Admin', NULL),
(10020, 'h8ovaLKc', NULL, 'View', 'View', 'View@gmail.com', 'PMvaAlFujxu8GZvKzLPIjQOaCu4Eba5y', 'g5AVZC8K', '477b560f0f16773d3348ae9711052ba9', 2, 'false', '2014-12-12 08:31:32', '2015-07-04 22:09:45', NULL, NULL, 'View', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_album`
--

CREATE TABLE `_album` (
  `album_id` int(11) NOT NULL auto_increment,
  `album_title` varchar(255) default NULL,
  `album_alias` varchar(255) default NULL,
  `album_thumb` varchar(255) default NULL,
  `album_cover` varchar(255) default NULL,
  `album_desc` varchar(255) default NULL,
  `album_position` int(3) default NULL,
  `album_status` varchar(5) default NULL,
  `album_type` varchar(100) default NULL,
  `album_insert` datetime default NULL,
  `album_update` datetime default NULL,
  `album_category` int(11) default NULL,
  `album_images` text,
  `album_view` int(11) default '0',
  `album_tag` varchar(255) default NULL,
  PRIMARY KEY  (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1001 ;

--
-- Dumping data for table `_album`
--

INSERT INTO `_album` (`album_id`, `album_title`, `album_alias`, `album_thumb`, `album_cover`, `album_desc`, `album_position`, `album_status`, `album_type`, `album_insert`, `album_update`, `album_category`, `album_images`, `album_view`, `album_tag`) VALUES
(1000, 'Những mẫu bánh đẹp nhất 2015', 'nhung-mau-banh-dep-nhat-2015', '/data/image/walle.jpg', NULL, '', NULL, 'true', 'acake', '2015-07-09 21:40:45', NULL, NULL, '/data/image/banh-cuoi.jpg\r\n/data/image/banh-cupcake.jpg\r\n/data/image/banh-sinh-nhat.jpg\r\n/data/image/banh-ve.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `_category`
--

CREATE TABLE `_category` (
  `cat_id` int(11) NOT NULL auto_increment,
  `cat_title` varchar(255) NOT NULL,
  `cat_alias` varchar(255) default NULL,
  `cat_thumb` varchar(255) default NULL,
  `cat_image` varchar(255) default NULL,
  `cat_cover` varchar(255) default NULL,
  `cat_desc` varchar(1000) NOT NULL,
  `cat_parent` int(11) NOT NULL default '0',
  `cat_status` varchar(5) NOT NULL default 'true',
  `cat_position` int(4) NOT NULL,
  `cat_link` varchar(255) NOT NULL,
  `cat_type` varchar(50) NOT NULL default 'Web',
  `cat_insert` datetime default NULL,
  `cat_update` datetime default NULL,
  `cat_lock` varchar(5) default NULL,
  `cat_value` varchar(255) default NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=443 ;

--
-- Dumping data for table `_category`
--

INSERT INTO `_category` (`cat_id`, `cat_title`, `cat_alias`, `cat_thumb`, `cat_image`, `cat_cover`, `cat_desc`, `cat_parent`, `cat_status`, `cat_position`, `cat_link`, `cat_type`, `cat_insert`, `cat_update`, `cat_lock`, `cat_value`) VALUES
(41, 'Cake Category ', NULL, 'fa fa-list-ul', NULL, NULL, 'icon-settings ', 50, 'true', 1, '/dashboard/cp/category/viewport/01011/cake', 'cms', '2014-12-09 23:07:01', '2015-07-09 21:53:21', NULL, '>50>41'),
(44, 'Content', NULL, 'fa fa-newspaper-o', NULL, NULL, '', 50, 'true', 3, '', 'cms', '2014-12-10 08:22:36', '2015-07-09 21:53:21', NULL, '>50>44'),
(45, 'Home Slider', NULL, 'fa fa-image', NULL, NULL, '', 50, 'true', 4, '/dashboard/cp/image/viewport/11111/slider', 'cms', '2014-12-10 08:22:52', '2015-07-09 21:53:21', NULL, '>50>45'),
(46, 'Application', NULL, ' fa fa-bars', NULL, NULL, '', 50, 'true', 10, '', 'cms', '2014-12-10 08:23:09', '2015-07-09 21:53:21', NULL, '>50>46'),
(423, 'Cake', NULL, 'icon-handbag', NULL, NULL, '', 50, 'true', 2, '/dashboard/cp/product/viewport/111115/cake', 'cms', '2015-07-04 09:14:34', '2015-07-09 21:53:21', NULL, '>50>423'),
(50, 'Content Provider', NULL, 'icon-home', NULL, NULL, '', 0, 'true', 1, '', 'cms', '2014-12-10 16:06:08', '2015-07-09 21:53:21', NULL, '>50'),
(51, 'Service Operator', NULL, 'icon-settings', NULL, NULL, '', 0, 'true', 2, '', 'cms', '2014-12-10 16:06:33', '2015-07-09 21:53:21', NULL, '>51'),
(419, 'Bánh sinh nhật', 'banh-sinh-nhat', '/data/image/banh-sinh-nhat.jpg', NULL, NULL, 'Bánh sinh nhật với những mẫu đẹp và dễ thương nhất 2015, với giá rẻ, mẫu mã đẹp, tại Tp. Hồ Chí Minh', 0, 'true', 0, '', 'cake', '2015-07-02 21:58:23', '2015-07-10 08:05:10', 'true', '>419'),
(434, 'Admin Account', NULL, 'fa fa-users', NULL, NULL, '', 51, 'true', 3, '/dashboard/so/account/viewport/111114/cms', 'cms', '2015-07-04 22:06:44', '2015-07-09 21:53:21', NULL, '>51>434'),
(420, 'Bánh cưới', 'banh-cuoi', '/data/image/banh-cuoi.jpg', NULL, NULL, 'Bánh cưới với những mẫu đẹp được sáng tạo với vẻ đẹp hiện đại, vừa có các chi tiết trang trí đa dạng, vừa mang sắc màu gây ấn tượng', 0, 'true', 0, '', 'cake', '2015-07-02 22:14:25', '2015-07-10 08:05:10', 'true', '>420'),
(421, 'Bánh vẽ', 'banh-ve', '/data/image/banh-ve.jpg', NULL, NULL, 'Bánh vẽ là bánh sinh nhật và vẽ hình lên bánh, vẽ chân dung, vẽ nhân vật hoạt hình, vẽ chữ và trang trí', 0, 'true', 0, '', 'cake', '2015-07-02 22:14:31', '2015-07-10 08:05:10', 'true', '>421'),
(422, 'Bánh cupcake', 'banh-cupcake', '/data/image/banh-cupcake.jpg', NULL, NULL, 'Những chiếc bánh cupcake vữa ngon lại còn được trang trí cầu kỳ khiến cho mọi người chỉ muốn được thưởng thức chúng ngay lập tức.', 0, 'true', 0, '', 'cake', '2015-07-02 22:14:44', '2015-07-10 08:05:10', 'true', '>422'),
(433, 'File Manage', NULL, 'fa fa-file-image-o', NULL, NULL, '', 51, 'true', 2, '/dashboard/cp/kcfinder/viewport/111111/image', 'cms', '2015-07-04 16:34:01', '2015-07-09 21:53:21', NULL, '>51>433'),
(428, 'Social', 'social', NULL, NULL, NULL, '', 0, 'true', 3, '', 'scake', '2015-07-04 12:55:14', '2015-07-08 13:49:00', NULL, '>428'),
(429, 'Payment', 'payment', NULL, NULL, NULL, '', 0, 'true', 2, '', 'scake', '2015-07-04 12:55:21', '2015-07-08 13:49:00', NULL, '>429'),
(430, 'Information', 'information', NULL, NULL, NULL, '', 0, 'true', 1, '', 'scake', '2015-07-04 12:55:35', '2015-07-08 13:49:00', NULL, '>430'),
(431, 'Other', 'other', NULL, NULL, NULL, '', 0, 'true', 10, '', 'scake', '2015-07-04 12:55:50', '2015-07-08 13:49:00', NULL, '>431'),
(432, 'Setting', NULL, 'fa fa-cogs', NULL, NULL, '', 51, 'false', 0, '/dashboard/cp/data/viewport/010114/scake', 'cms', '2015-07-04 16:22:43', '2015-07-09 21:53:21', NULL, '>51>432'),
(435, 'Bánh tình yêu', 'banh-tinh-yeu', NULL, NULL, NULL, '', 0, 'false', 0, '', 'cake', '2015-07-06 19:25:49', '2015-07-10 08:05:10', NULL, '>435'),
(436, 'Order - Contact us', NULL, 'fa fa-comment-o', NULL, NULL, '', 50, 'true', 5, '/dashboard/cp/contactus/viewport/011114', 'cms', '2015-07-06 23:30:10', '2015-07-09 21:53:21', NULL, '>50>436'),
(437, 'Setting', NULL, 'fa fa-cogs', NULL, NULL, '', 51, 'true', 1, '/dashboard/so/data/viewport/010114/scake', 'cms', '2015-07-08 13:44:46', '2015-07-09 21:53:21', NULL, '>51>437'),
(438, 'Công thức làm bánh', NULL, 'fa fa-file-text-o', NULL, NULL, '', 44, 'true', 1, '/dashboard/cp/content/viewportonly/010014/1', 'cms', '2015-07-09 16:38:07', '2015-07-09 21:53:21', NULL, '>50>44>438'),
(439, 'All News', NULL, 'fa fa-newspaper-o', NULL, NULL, '', 44, 'true', 0, '/dashboard/cp/content/viewport/111014/', 'cms', '2015-07-09 16:40:09', '2015-07-09 21:53:21', NULL, '>50>44>439'),
(440, 'Nguyên liệu', NULL, 'fa fa-file-text-o', NULL, NULL, '', 44, 'true', 2, '/dashboard/cp/content/viewportonly/010014/2', 'cms', '2015-07-09 16:41:18', '2015-07-09 21:53:21', NULL, '>50>44>440'),
(441, 'Dạy nghề', NULL, 'fa fa-file-text-o', NULL, NULL, '', 44, 'true', 3, '/dashboard/cp/content/viewportonly/010014/3', 'cms', '2015-07-09 16:42:12', '2015-07-09 21:53:21', NULL, '>50>44>441'),
(442, 'Album Gallery', NULL, 'fa fa-image', NULL, NULL, '', 50, 'true', 6, '/dashboard/cp/album/viewport/111115/acake', 'cms', '2015-07-09 21:53:07', '2015-07-09 21:53:21', NULL, '>50>442');

-- --------------------------------------------------------

--
-- Table structure for table `_contactus`
--

CREATE TABLE `_contactus` (
  `contact_id` int(11) NOT NULL auto_increment,
  `contact_name` varchar(255) default NULL,
  `contact_phone` varchar(255) default NULL,
  `contact_email` varchar(255) default NULL,
  `contact_message` text,
  `contact_insert` datetime default NULL,
  `contact_subject` varchar(255) default NULL,
  `contact_update` datetime default NULL,
  `contact_type` varchar(20) default NULL,
  `contact_data` text,
  PRIMARY KEY  (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `_contactus`
--

INSERT INTO `_contactus` (`contact_id`, `contact_name`, `contact_phone`, `contact_email`, `contact_message`, `contact_insert`, `contact_subject`, `contact_update`, `contact_type`, `contact_data`) VALUES
(2, 'Trường Khương', '0985747240', 'truongkhuong@gmail.com', 'Giả vờ đặt bánh thôi nha ^^', '2015-07-06 20:49:41', NULL, '2015-07-06 23:26:13', 'Order', '{"name":"B\\u00e1nh doreamon","quantity":"1","address":"181\\/19 H\\u1ed3ng L\\u1ea1c, p.10, Q.T\\u00e2n B\\u00ecnh"}'),
(4, 'Trường Khương', '0985747240', 'khuongxuantruong@gmail.com', 'Tớ test chức năng gửi mail thông báo đặt hàng bên bánh ngon online nhé.', '2015-07-07 15:06:31', NULL, NULL, 'Order', '{"name":"B\\u00e1nh sinh nh\\u1eadt BSN 82","quantity":"1 c\\u00e1i nh\\u1ecf","address":"181\\/19 H\\u1ed3ng L\\u1ea1c, P.10, Q.T\\u00e2n B\\u00ecnh"}'),
(5, 'Trường Khương', '0985747240', 'khuongxuantruong@gmail.com', 'Test chức năng thông báo đơn hàng banhngononline.com.', '2015-07-07 15:10:13', NULL, NULL, 'Order', '{"name":"B\\u00e1nh sinh nh\\u1eadt BSN 86","quantity":"2","address":"181\\/19 H\\u1ed3ng L\\u1ea1c, P10, Q.T\\u00e2n B\\u00ecnh"}'),
(6, 'Trường Khương', '0985747240', 'khuongxuantruong@gmail.com', 'Test chức năng thông báo đơn hàng banhngononline.com.', '2015-07-07 15:12:56', NULL, NULL, 'Order', '{"name":"B\\u00e1nh sinh nh\\u1eadt BSN 86","quantity":"2","address":"181\\/19 H\\u1ed3ng L\\u1ea1c, P10, Q.T\\u00e2n B\\u00ecnh"}'),
(7, 'Trường Khương', '0985 747 240', 'khuongxuantruong@gmail.com', 'Tớ test chức năng liên hệ tại banhngononline.com.\r\nNếu cậu nhận được mail này thì chức năng thông báo khi có người đặt hàng hoặc gửi yêu cầu đã hoạt động.', '2015-07-07 15:18:09', 'Tôi Muốn Học Làm Bánh Kem', NULL, 'Contact us', '181/19 Hồng Lạc, P.10, Q.Tân Bình');

-- --------------------------------------------------------

--
-- Table structure for table `_content`
--

CREATE TABLE `_content` (
  `content_id` int(11) NOT NULL auto_increment,
  `content_title` varchar(255) default NULL,
  `content_desc` varchar(255) default NULL,
  `content_content` text,
  `content_position` smallint(6) default NULL,
  `content_type` varchar(100) default NULL,
  `content_category` int(11) default NULL,
  `content_insert` datetime default NULL,
  `content_update` datetime default NULL,
  `content_status` varchar(5) default 'true',
  `content_thumb` varchar(255) default NULL,
  `content_alias` varchar(255) default NULL,
  `content_lock` varchar(5) default 'false',
  `content_tag` varchar(255) default NULL,
  PRIMARY KEY  (`content_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `_content`
--

INSERT INTO `_content` (`content_id`, `content_title`, `content_desc`, `content_content`, `content_position`, `content_type`, `content_category`, `content_insert`, `content_update`, `content_status`, `content_thumb`, `content_alias`, `content_lock`, `content_tag`) VALUES
(1, 'Công thức làm bánh', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '<div style="\\\\\\\\\\\\\\\\">The standard Lorem Ipsum passage, used since the 1500s</div>\r\n\r\n<div style="\\\\\\\\\\\\\\\\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</div>\r\n\r\n<div style="\\\\\\\\\\\\\\\\">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</div>\r\n\r\n<div style="\\\\\\\\\\\\\\\\"><img alt="" src="/data/image/ILoveYouThisMuch-90421.jpg" style="height:371px; width:460px" /></div>\r\n\r\n<div style="\\\\\\\\\\\\\\\\">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;&#39;&quot;</div>\r\n', NULL, '', 0, '2015-07-05 11:12:54', '2015-07-09 16:37:19', 'true', '/data/image/ILoveYouThisMuch-90421.jpg', 'cong-thuc-lam-banh', 'true', ''),
(2, 'Nguyên liệu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '<div style="\\\\&quot;line-height:">The standard Lorem Ipsum passage, used since the 1500s</div>\r\n\r\n<div style="\\\\&quot;line-height:">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</div>\r\n\r\n<div style="\\\\&quot;line-height:">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</div>\r\n\r\n<div style="\\\\&quot;line-height:">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</div>\r\n', NULL, '', 0, '2015-07-06 16:34:30', '2015-07-07 22:21:22', 'true', '/data/image/ILoveYouThisMuch-90421.jpg', 'nguyen-lieu', 'true', ''),
(3, 'Dạy nghề', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;', NULL, '', 0, '2015-07-06 16:36:30', '2015-07-06 16:44:47', 'true', '/data/image/ILoveYouThisMuch-90421.jpg', 'day-nghe', 'true', NULL),
(4, 'Khuyến mãi ngày lễ Halloween', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '<div style="box-sizing: border-box; font-family: ''Roboto Condensed'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.5714302062988px;">The standard Lorem Ipsum passage, used since the 1500s</div>\r\n\r\n<div style="box-sizing: border-box; font-family: ''Roboto Condensed'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.5714302062988px;">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</div>\r\n\r\n<div style="box-sizing: border-box; font-family: ''Roboto Condensed'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.5714302062988px;">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</div>\r\n\r\n<div style="box-sizing: border-box; font-family: ''Roboto Condensed'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.5714302062988px;"><span style="font-family:roboto condensed,helvetica neue,helvetica,arial,sans-serif; font-size:13px">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></div>\r\n', NULL, '', 0, '2015-07-07 11:03:58', '2015-07-09 16:29:17', 'true', '/data/image/walle.jpg', 'khuyen-mai-ngay-le-halloween', 'false', 'bánh Halloween, bánh kem, bánh sinh nhật');

-- --------------------------------------------------------

--
-- Table structure for table `_data`
--

CREATE TABLE `_data` (
  `data_id` int(11) NOT NULL auto_increment,
  `data_category` int(11) default NULL,
  `data_title` varchar(255) default NULL,
  `data_alias` varchar(255) default NULL,
  `data_desc` varchar(4000) default NULL,
  `data_thumb` varchar(255) default NULL,
  `data_cover` varchar(255) default NULL,
  `data_content` text,
  `data_position` int(4) default NULL,
  `data_insert` datetime default NULL,
  `data_update` datetime default NULL,
  `data_status` varchar(5) default 'true',
  `data_type` varchar(100) default NULL,
  `data_link` varchar(255) default NULL,
  `data_datatype` varchar(10) default NULL,
  `data_lock` varchar(5) default 'false',
  PRIMARY KEY  (`data_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `_data`
--

INSERT INTO `_data` (`data_id`, `data_category`, `data_title`, `data_alias`, `data_desc`, `data_thumb`, `data_cover`, `data_content`, `data_position`, `data_insert`, `data_update`, `data_status`, `data_type`, `data_link`, `data_datatype`, `data_lock`) VALUES
(1, 428, 'Facebook', 'facebook', 'Link Facebook', NULL, NULL, 'https://www.facebook.com/pages/B%C3%A1nh-Y%C3%AAu/368469929920029?ref=ts&fref=ts', NULL, '2015-07-04 13:39:40', '2015-07-08 13:38:53', 'true', 'scake', NULL, 'string', 'true'),
(2, 430, 'Logo', 'logo', 'Logo banhngononline.com', NULL, NULL, '/data/image/logo.png', NULL, '2015-07-04 13:44:04', '2015-07-08 13:42:52', 'true', 'scake', NULL, 'image', 'true'),
(3, 430, 'Address', 'address', 'Địa chỉ shop banhngononline', NULL, NULL, '8/18 lê Quý Đôn, Quận phú Nhuận, Tp. Hồ Chí Minh', NULL, '2015-07-04 13:50:20', '2015-07-07 13:57:08', 'true', 'scake', NULL, 'text', 'true'),
(4, 430, 'Email', 'email', 'Email liên hệ', NULL, NULL, 'phuongnha2010@yahoo.com', NULL, '2015-07-04 13:51:36', '2015-07-06 22:09:27', 'true', 'scake', NULL, 'string', 'true'),
(5, 430, 'Phone', 'phone', 'Điện thoại liên hệ', NULL, NULL, '0999 888 777', NULL, '2015-07-04 13:52:00', '2015-07-06 21:58:31', 'true', 'scake', NULL, 'string', 'true'),
(6, 428, 'Google +', 'google', 'Link Google +', NULL, NULL, '#google', NULL, '2015-07-04 13:52:46', '2015-07-07 13:44:49', 'true', 'scake', NULL, 'string', 'true'),
(7, 428, 'Twitter', 'twitter', 'Link twitter', NULL, NULL, NULL, NULL, '2015-07-04 13:52:56', '2015-07-06 21:57:54', 'true', 'scake', NULL, 'string', 'true'),
(8, 430, 'Google map', 'google-map', 'Tọa độ bản đồ google map gồm kinh độ và vĩ độ.(ví dụ <b>10.792048, 106.679982</b>)', NULL, NULL, '10.792048, 106.679982', NULL, '2015-07-04 13:57:57', '2015-07-08 13:53:58', 'true', 'scake', NULL, 'text', 'true'),
(9, 430, 'Small Logo', 'small-logo', 'Logo nhỏ', NULL, NULL, '/data/image/logo-min.png', NULL, '2015-07-04 13:58:40', '2015-07-08 13:40:25', 'true', 'scake', NULL, 'image', 'true'),
(11, 430, 'Title of website', 'title-of-website', 'Title of banhngononline.com', NULL, NULL, 'Bánh sinh nhật - Bánh Ngon Online', NULL, '2015-07-06 23:46:05', '2015-07-07 12:27:58', 'true', 'scake', NULL, 'string', 'true'),
(12, 430, 'Description', 'description', 'Description of banhngononline.com', NULL, NULL, 'Bánh sinh nhật, bánh kem, bánh cưới, bánh vẽ, bánh cupkes, dạy làm bánh tại nhà, đặt bánh theo yêu cầu, giao hàng tận nơi.', NULL, '2015-07-06 23:46:41', '2015-07-07 12:27:35', 'true', 'scake', NULL, 'text', 'true'),
(13, 430, 'Keyword', 'keyword', 'Keyword tag', NULL, NULL, 'banh sinh nhat, banh, sinh nhat, banh cuoi, banh ve, banh cupkes, cake, hoc lam banh, banh kem, trang tri banh, lam banh, banh trung thu, banh hanh nhan', NULL, '2015-07-06 23:47:39', '2015-07-07 12:27:23', 'true', 'scake', NULL, 'string', 'true'),
(14, 430, 'Image 250x250', 'image-250x250', 'Hình ảnh mặc định khi chia sẻ trên mạng xã hội', NULL, NULL, '/assets/cake/images/banh-sinh-nhat.jpg', NULL, '2015-07-07 12:26:44', '2015-07-07 12:27:00', 'true', 'scake', NULL, 'image', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `_image`
--

CREATE TABLE `_image` (
  `image_id` int(11) NOT NULL auto_increment,
  `image_src` varchar(255) default NULL,
  `image_title` varchar(255) default NULL,
  `image_desc` varchar(1000) default NULL,
  `image_insert` datetime default NULL,
  `image_update` datetime default NULL,
  `image_position` smallint(6) default NULL,
  `image_status` varchar(5) default NULL,
  `image_token` varchar(32) default '',
  `image_category` int(11) default NULL,
  `image_type` varchar(100) default NULL,
  PRIMARY KEY  (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `_image`
--

INSERT INTO `_image` (`image_id`, `image_src`, `image_title`, `image_desc`, `image_insert`, `image_update`, `image_position`, `image_status`, `image_token`, `image_category`, `image_type`) VALUES
(1, '/data/image/ILoveYouThisMuch-90421.jpg', 'Bánh sinh nhật dâu tây', 'Đang cập nhật', '2015-07-03 09:45:43', '2015-07-06 16:33:01', 0, 'true', '', NULL, 'slider'),
(2, '/data/image/slider1.jpg', 'Bánh kem dâu sữa', 'Đang cập nhật', '2015-07-03 11:29:48', '2015-07-06 16:33:04', 0, 'true', '', NULL, 'slider'),
(3, '/data/image/food/9.jpg', 'Khuyến mãi đặc biệt', 'Đang cập nhật', '2015-07-03 14:04:05', '2015-07-06 16:33:07', 0, 'true', '', NULL, 'slider');

-- --------------------------------------------------------

--
-- Table structure for table `_product`
--

CREATE TABLE `_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `product_code` varchar(32) default NULL,
  `product_title` varchar(255) default NULL,
  `product_alias` varchar(255) default NULL,
  `product_thumb` varchar(255) default NULL,
  `product_cover` varchar(255) default NULL,
  `product_desc` varchar(255) default NULL,
  `product_content` text,
  `product_position` int(3) default NULL,
  `product_status` varchar(5) default NULL,
  `product_type` varchar(100) default NULL,
  `product_insert` datetime default NULL,
  `product_update` datetime default NULL,
  `product_category` int(11) default NULL,
  `product_images` text,
  `product_token` varchar(32) default NULL,
  `product_price` float(11,2) default '0.00',
  `product_view` int(11) default '0',
  `product_tag` varchar(255) default NULL,
  PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=174 ;

--
-- Dumping data for table `_product`
--

INSERT INTO `_product` (`product_id`, `product_code`, `product_title`, `product_alias`, `product_thumb`, `product_cover`, `product_desc`, `product_content`, `product_position`, `product_status`, `product_type`, `product_insert`, `product_update`, `product_category`, `product_images`, `product_token`, `product_price`, `product_view`, `product_tag`) VALUES
(1, 'PIGC', 'Bánh kem con heo', 'banh-kem-con-heo', '/data/image/food/1.jpg', NULL, '', NULL, 0, 'true', 'cake', '2015-07-03 15:19:21', '2015-07-03 20:07:16', 420, '/data/image/food/1.jpg\r\n/data/image/food/4.jpg\r\n/data/image/food/5.jpg', NULL, 120000.00, 0, NULL),
(2, 'DORE', 'Bánh Doreamon', 'banh-doreamon', '/data/image/food/5.jpg', NULL, 'Trên đây là 45 mẫu banh sinh nhat đẹp nhất cho các bạn tham khảo. Hãy chọn cho mình một trong những mẫu bánh sinh nhật đẹp cho lần sinh nhật sắp tới của bạn nhé! Hãy ủng hộ chúng tôi bằng cách chia sẻ những hình ảnh đẹp mà bạn yêu thích.', '<div>Tr&ecirc;n đ&acirc;y l&agrave; 45&nbsp;mẫu banh sinh nhat&nbsp;đẹp nhất cho c&aacute;c bạn tham khảo. H&atilde;y chọn cho m&igrave;nh một trong những&nbsp;mẫu b&aacute;nh sinh nhật đẹp&nbsp;cho lần sinh nhật sắp tới của bạn nh&eacute;! H&atilde;y ủng hộ ch&uacute;ng t&ocirc;i bằng c&aacute;ch chia sẻ những&nbsp;h&igrave;nh ảnh đẹp&nbsp;m&agrave; bạn y&ecirc;u th&iacute;ch.</div>\r\n\r\n<div>\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/51755096.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4595" src="http://tapchianhdep.com/wp-content/uploads/2014/12/51755096.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-2.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display size-full wp-image-4596" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-2.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-day-2-tac-tai-4gs-texas-bakery-4.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4597" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-day-2-tac-tai-4gs-texas-bakery-4.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-4.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4598" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-4.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-8.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4599" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-8-1024x964.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/Banh-sinh-nhat-1471691541.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4600" src="http://tapchianhdep.com/wp-content/uploads/2014/12/Banh-sinh-nhat-1471691541.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-dep-41.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4601" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-dep-41.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-hoa-hong-9.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4602" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-hoa-hong-9.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-tinh-yeu-649-2.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4603" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-tinh-yeu-649-2.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/sinh-nhat.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4604" src="http://tapchianhdep.com/wp-content/uploads/2014/12/sinh-nhat-1024x733.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/tiramisu-cake-46_Tiembanh-Tiramisu.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4605" src="http://tapchianhdep.com/wp-content/uploads/2014/12/tiramisu-cake-46_Tiembanh-Tiramisu.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-1.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 1" class="alignnone appear no-display wp-image-1252" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-1.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-2.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 2" class="alignnone appear no-display wp-image-1253" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-2.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-3.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 3" class="alignnone appear no-display wp-image-1254" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-3.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-4.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 4" class="alignnone appear no-display wp-image-1255" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-4.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-5.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 5" class="alignnone appear no-display wp-image-1256" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-5.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-6.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 6" class="alignnone appear no-display wp-image-1257" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-6.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-7.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 7" class="alignnone appear no-display wp-image-1258" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-7.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-8.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 8" class="alignnone appear no-display wp-image-1259" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-8.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-9.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 9" class="alignnone appear no-display wp-image-1260" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-9.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-10.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 10" class="alignnone appear no-display wp-image-1261" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-10.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-11.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 11" class="alignnone appear no-display wp-image-1262" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-11.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-12.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 12" class="alignnone appear no-display wp-image-1263" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-12.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-13.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 13" class="alignnone appear no-display wp-image-1264" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-13.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-14.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 14" class="alignnone appear no-display wp-image-1265" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-14.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-15.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 15" class="alignnone appear no-display wp-image-1266" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-15.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-16.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 16" class="alignnone appear no-display wp-image-1267" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-16.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-17.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 17" class="alignnone appear no-display wp-image-1268" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-17.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-18.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 18" class="alignnone appear no-display wp-image-1269" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-18.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-19.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 19" class="alignnone appear no-display wp-image-1270" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-19.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-20.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 20" class="alignnone appear no-display wp-image-1271" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-20.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-21.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 21" class="alignnone appear no-display wp-image-1272" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-21.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-22.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 22" class="alignnone appear no-display wp-image-1273" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-22.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n</div>\r\n</div>\r\n', 0, 'true', 'cake', '2015-07-03 16:49:04', '2015-07-07 14:17:53', 419, '/data/image/food/9.jpg', NULL, 110000.00, 0, ''),
(48, 'CAKE1', 'Bánh sinh nhật BSN 86', 'banh-sinh-nhat-bsn-86', 'http://banhngononline.com/components/com_product/img/product/chinhsuaaaaaaaaaaaaa_1431809523.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:42', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(49, 'CAKE2', 'Bánh sinh nhật BSN 85', 'banh-sinh-nhat-bsn-85', 'http://banhngononline.com/components/com_product/img/product/thuuuuuuuuuuuu_1428560062.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(50, 'CAKE3', 'Bánh sinh nhật BSN 84', 'banh-sinh-nhat-bsn-84', 'http://banhngononline.com/components/com_product/img/product/lauuuuudaiiiiiii_1428214583.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 550000.00, 0, NULL),
(51, 'CAKE4', 'Bánh sinh nhật BSN 83', 'banh-sinh-nhat-bsn-83', 'http://banhngononline.com/components/com_product/img/product/DSC_1350_1428214509.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(52, 'CAKE5', 'Banh Con Giap BCG526', 'banh-con-giap-bcg526', 'http://banhngononline.com/components/com_product/img/product/gaaaaaaaaaaaaaaaa_1428214230.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(53, 'CAKE6', 'Banh Con Giap BCG525', 'banh-con-giap-bcg525', 'http://banhngononline.com/components/com_product/img/product/52555555555555_1428049822.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(54, 'CAKE7', 'Banh Con Giap BCG524', 'banh-con-giap-bcg524', 'http://banhngononline.com/components/com_product/img/product/524444444444444_1428049499.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(55, 'CAKE8', 'Bánh sinh nhật BSN 82', 'banh-sinh-nhat-bsn-82', 'http://banhngononline.com/components/com_product/img/product/82000000000000000000_1428048709.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(56, 'CAKE9', 'Bánh sinh nhật BSN 81', 'banh-sinh-nhat-bsn-81', 'http://banhngononline.com/components/com_product/img/product/begaiiiiiiiiiiiii_1428048550.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(57, 'CAKE10', 'Bánh sinh nhật BSN 80', 'banh-sinh-nhat-bsn-80', 'http://banhngononline.com/components/com_product/img/product/800000000000000000_1428048403.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(58, 'CAKE11', 'Bánh sinh nhật BSN 79', 'banh-sinh-nhat-bsn-79', 'http://banhngononline.com/components/com_product/img/product/799999999999999999_1428048225.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(59, 'CAKE12', 'Bánh sinh nhật BSN 78', 'banh-sinh-nhat-bsn-78', 'http://banhngononline.com/components/com_product/img/product/danglai111111111_1428048036.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(60, 'CAKE13', 'Bánh sinh nhật BSN 77', 'banh-sinh-nhat-bsn-77', 'http://banhngononline.com/components/com_product/img/product/7777777777777_1428047680.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(61, 'CAKE14', 'Bánh sinh nhật BSN 76', 'banh-sinh-nhat-bsn-76', 'http://banhngononline.com/components/com_product/img/product/dangaaaaaaaaaaaa_1428047484.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(62, 'CAKE15', 'Bánh sinh nhật BSN 75', 'banh-sinh-nhat-bsn-75', 'http://banhngononline.com/components/com_product/img/product/ok4_1428044716.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 550000.00, 0, NULL),
(63, 'CAKE16', 'Bánh sinh nhật BSN 74', 'banh-sinh-nhat-bsn-74', 'http://banhngononline.com/components/com_product/img/product/aaaaaaaaannnnnnnnnnnnn_1428213935.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(64, 'CAKE17', 'Bánh sinh nhật BSN 73', 'banh-sinh-nhat-bsn-73', 'http://banhngononline.com/components/com_product/img/product/ok2_1428043205.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(65, 'CAKE18', 'Bánh sinh nhật BSN 72', 'banh-sinh-nhat-bsn-72', 'http://banhngononline.com/components/com_product/img/product/OK_1428042664.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(66, 'CAKE19', 'Bánh sinh nhật BSN 71', 'banh-sinh-nhat-bsn-71', 'http://banhngononline.com/components/com_product/img/product/4444_1428041740.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(67, 'CAKE20', 'Bánh sinh nhật BSN 70', 'banh-sinh-nhat-bsn-70', 'http://banhngononline.com/components/com_product/img/product/airbi_1428028160.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(68, 'CAKE21', 'Bánh sinh nhật BSN 69', 'banh-sinh-nhat-bsn-69', 'http://banhngononline.com/components/com_product/img/product/2632_1410482163.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 400000.00, 0, NULL),
(69, 'CAKE22', 'Bánh cưới', 'banh-cuoi', 'http://banhngononline.com/components/com_product/img/product/banh-cuoi-075_1410420724.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 0.00, 0, NULL),
(70, 'CAKE23', 'Banh sinh nhat 68', 'banh-sinh-nhat-68', 'http://banhngononline.com/components/com_product/img/product/7234_1410418186.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(71, 'CAKE24', 'Banh sinh nhat 67', 'banh-sinh-nhat-67', 'http://banhngononline.com/components/com_product/img/product/12_1410417992.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(72, 'CAKE25', 'Bánh sinh nhật BSN 66', 'banh-sinh-nhat-bsn-66', 'http://banhngononline.com/components/com_product/img/product/20_1410416852.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(73, 'CAKE26', 'Bánh sinh nhật BSN 65', 'banh-sinh-nhat-bsn-65', 'http://banhngononline.com/components/com_product/img/product/7252_1409965377.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(74, 'CAKE27', 'Bánh sinh nhật BSN 64', 'banh-sinh-nhat-bsn-64', 'http://banhngononline.com/components/com_product/img/product/584_1409965018.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(75, 'CAKE28', 'Bánh sinh nhật BSN 63', 'banh-sinh-nhat-bsn-63', 'http://banhngononline.com/components/com_product/img/product/552_1409964943.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:21', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(76, 'CAKE29', 'Bánh sinh nhật BSN 62', 'banh-sinh-nhat-bsn-62', 'http://banhngononline.com/components/com_product/img/product/424_320x320_1409964826.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:21', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(77, 'CAKE30', 'Bánh sinh nhật BSN 61', 'banh-sinh-nhat-bsn-61', 'http://banhngononline.com/components/com_product/img/product/468_1408501022.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:21', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(78, 'CAKE31', 'Bánh sinh nhật BSN 60', 'banh-sinh-nhat-bsn-60', 'http://banhngononline.com/components/com_product/img/product/1933_1408500931.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(79, 'CAKE32', 'Bánh sinh nhật BSN 59', 'banh-sinh-nhat-bsn-59', 'http://banhngononline.com/components/com_product/img/product/24_1408339052.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(80, 'CAKE33', 'Bánh sinh nhật BSN 58', 'banh-sinh-nhat-bsn-58', 'http://banhngononline.com/components/com_product/img/product/483_1407913431.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(81, 'CAKE34', 'Bánh sinh nhật BSN 57', 'banh-sinh-nhat-bsn-57', 'http://banhngononline.com/components/com_product/img/product/1_1407912208.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(82, 'CAKE35', 'Bánh sinh nhật BSN 56', 'banh-sinh-nhat-bsn-56', 'http://banhngononline.com/components/com_product/img/product/f10_1406702661.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(83, 'CAKE36', 'Bánh sinh nhật BSN 55', 'banh-sinh-nhat-bsn-55', 'http://banhngononline.com/components/com_product/img/product/562_1406702295.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(84, 'CAKE37', 'Bánh sinh nhật BSN 54', 'banh-sinh-nhat-bsn-54', 'http://banhngononline.com/components/com_product/img/product/24424_1405735781.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 750000.00, 0, NULL),
(85, 'CAKE38', 'Bánh sinh nhật BSN 53', 'banh-sinh-nhat-bsn-53', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_12_1397638720.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(86, 'CAKE39', 'Bánh sinh nhật BSN 52', 'banh-sinh-nhat-bsn-52', 'http://banhngononline.com/components/com_product/img/product/roseheart_1397440739.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(87, 'CAKE40', 'Bánh sinh nhật BSN 51', 'banh-sinh-nhat-bsn-51', 'http://banhngononline.com/components/com_product/img/product/BSN51_1397440466.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 500000.00, 0, NULL),
(88, 'CAKE41', 'Bánh sinh nhật BSN 50', 'banh-sinh-nhat-bsn-50', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_10_1397274631.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(89, 'CAKE42', 'Bánh sinh nhật BSN 49', 'banh-sinh-nhat-bsn-49', 'http://banhngononline.com/components/com_product/img/product/small_xdf1362847956_1397104354.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(90, 'CAKE43', 'Bánh sinh nhật BSN 48', 'banh-sinh-nhat-bsn-48', 'http://banhngononline.com/components/com_product/img/product/BSN 48_1397102710.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(91, 'CAKE44', 'Bánh kem noel BKN 718', 'banh-kem-noel-bkn-718', 'http://banhngononline.com/components/com_product/img/product/8620_197780990408055_384838991_n_1385448', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(92, 'CAKE45', 'Bánh kem noel BKN 717', 'banh-kem-noel-bkn-717', 'http://banhngononline.com/components/com_product/img/product/BANHNOEL_1385197325.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(93, 'CAKE46', 'Bánh Sinh Nhật BSN 47', 'banh-sinh-nhat-bsn-47', 'http://banhngononline.com/components/com_product/img/product/ANHDANG_1383665574.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(94, 'CAKE47', 'Bánh Sinh Nhật BSN 46', 'banh-sinh-nhat-bsn-46', 'http://banhngononline.com/components/com_product/img/product/P1020763_1383617823.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(95, 'CAKE48', 'Banh cupcake phủ kem', 'banh-cupcake-phu-kem', 'http://banhngononline.com/components/com_product/img/product/small_nnw1359612916_1379414953.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 15000.00, 0, NULL),
(96, 'CAKE49', 'Bánh Sinh Nhật BSN 45', 'banh-sinh-nhat-bsn-45', 'http://banhngononline.com/components/com_product/img/product/small_bag1368448979_1379414538.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(97, 'CAKE50', 'Banh cupcake phủ kem CPK 08', 'banh-cupcake-phu-kem-cpk-08', 'http://banhngononline.com/components/com_product/img/product/DSC_0778_1379245549.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 15000.00, 0, NULL),
(98, 'CAKE51', 'Bánh Sinh Nhật BSN 44', 'banh-sinh-nhat-bsn-44', 'http://banhngononline.com/components/com_product/img/product/P1020688_1379057462.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(99, 'CAKE52', 'Bánh Sinh Nhật BSN 43', 'banh-sinh-nhat-bsn-43', 'http://banhngononline.com/components/com_product/img/product/P1020680_1378460650.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(100, 'CAKE53', 'Bánh Sinh Nhật BSN 42', 'banh-sinh-nhat-bsn-42', 'http://banhngononline.com/components/com_product/img/product/sieunhan2_1377907572.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(101, 'CAKE54', 'Bánh Sinh Nhật BSN 41', 'banh-sinh-nhat-bsn-41', 'http://banhngononline.com/components/com_product/img/product/Copy of heinenken boy 2_1377822140.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(102, 'CAKE55', 'Bánh Sinh Nhật BSN 40', 'banh-sinh-nhat-bsn-40', 'http://banhngononline.com/components/com_product/img/product/small_oro1375804845_1377737278.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(103, 'CAKE56', 'Bánh con giáp BCG 523', 'banh-con-giap-bcg-523', 'http://banhngononline.com/components/com_product/img/product/ade1369574799_1377655576.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(104, 'CAKE57', 'Bánh Sinh Nhật BSN 39', 'banh-sinh-nhat-bsn-39', 'http://banhngononline.com/components/com_product/img/product/DSC_0729_1377523046.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(105, 'CAKE58', 'Bánh Sinh Nhật BSN 38', 'banh-sinh-nhat-bsn-38', 'http://banhngononline.com/components/com_product/img/product/bao dinh_1377480223.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(106, 'CAKE59', 'Bánh Sinh Nhật BSN 37', 'banh-sinh-nhat-bsn-37', 'http://banhngononline.com/components/com_product/img/product/DSC_0725_1377351250.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 0.00, 0, NULL),
(107, 'CAKE61', 'Bánh Sinh Nhật BSN 36', 'banh-sinh-nhat-bsn-36', 'http://banhngononline.com/components/com_product/img/product/banh-in-hinh-009-150x150_1377280556.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(108, 'CAKE62', 'Bánh Sinh Nhật BSN 34', 'banh-sinh-nhat-bsn-34', 'http://banhngononline.com/components/com_product/img/product/girl_1377240893.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(109, 'CAKE63', 'Banh sinh nhat BSN 30', 'banh-sinh-nhat-bsn-30', 'http://banhngononline.com/components/com_product/img/product/IMG_20130707_142607_1373332758.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 0.00, 0, NULL),
(110, 'CAKE64', 'banh kem ngho nghinh BKNN228', 'banh-kem-ngho-nghinh-bknn228', 'http://banhngononline.com/components/com_product/img/product/P1020449_1371878618.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(111, 'CAKE65', 'Banh Sinh nhat BCG522', 'banh-sinh-nhat-bcg522', 'http://banhngononline.com/components/com_product/img/product/P1020528_1371878290.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(112, 'CAKE66', 'Banh sinh Nhat BSN29', 'banh-sinh-nhat-bsn29', 'http://banhngononline.com/components/com_product/img/product/P1020452_1371877978.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(113, 'CAKE67', 'Banh sinh nhat BSN 27', 'banh-sinh-nhat-bsn-27', 'http://banhngononline.com/components/com_product/img/product/img_0972r_1371547149.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(114, 'CAKE76', 'Banh Sinh Nhat BSN 26', 'banh-sinh-nhat-bsn-26', 'http://banhngononline.com/components/com_product/img/product/Rong xanh_1371546748.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(115, 'CAKE77', 'Banh sinh nhat BSN 25', 'banh-sinh-nhat-bsn-25', 'http://banhngononline.com/components/com_product/img/product/mickeyminnie_1371546482.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(116, 'CAKE78', 'Banh sinh nhat BSN 24', 'banh-sinh-nhat-bsn-24', 'http://banhngononline.com/components/com_product/img/product/number one cake for girl_1371546238.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(117, 'CAKE79', 'Bánh Sinh Nhật BSN 23', 'banh-sinh-nhat-bsn-23', 'http://banhngononline.com/components/com_product/img/product/barbie-doll-cake_1368454780.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 0.00, 0, NULL),
(118, 'CAKE80', 'Bánh Sinh Nhật BSN 21', 'banh-sinh-nhat-bsn-21', 'http://banhngononline.com/components/com_product/img/product/bsn cb 12_128x128_1368403731.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(119, 'CAKE81', 'Bánh Sinh Nhật BSN 20', 'banh-sinh-nhat-bsn-20', 'http://banhngononline.com/components/com_product/img/product/bsncb332_1368403532.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(120, 'CAKE82', 'Bánh Sinh Nhật BSN 19', 'banh-sinh-nhat-bsn-19', 'http://banhngononline.com/components/com_product/img/product/yvf1354601953_1368403277.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(121, 'CAKE83', 'Bánh Sinh Nhật BSN 18', 'banh-sinh-nhat-bsn-18', 'http://banhngononline.com/components/com_product/img/product/hcg1349104891_1368402641.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 0.00, 0, NULL),
(122, 'CAKE84', 'Bánh Sinh Nhật BSN 17', 'banh-sinh-nhat-bsn-17', 'http://banhngononline.com/components/com_product/img/product/BSN CB36_1368402386.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(123, 'CAKE85', 'Bánh Sinh Nhật BSN 16', 'banh-sinh-nhat-bsn-16', 'http://banhngononline.com/components/com_product/img/product/zgg1355154852_1368402197.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(124, 'CAKE86', 'Bánh Sinh Nhật BSN 15', 'banh-sinh-nhat-bsn-15', 'http://banhngononline.com/components/com_product/img/product/BSN CB 50_1368401734.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(125, 'CAKE87', 'Bánh Sinh Nhật BSN 14', 'banh-sinh-nhat-bsn-14', 'http://banhngononline.com/components/com_product/img/product/SAM_0526_1368401421.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 450000.00, 0, NULL),
(126, 'CAKE88', 'Bánh Sinh Nhật BSN 13', 'banh-sinh-nhat-bsn-13', 'http://banhngononline.com/components/com_product/img/product/SAM_0532_1368401138.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 500000.00, 0, NULL),
(127, 'CAKE89', 'Bánh Sinh Nhật BSN 12', 'banh-sinh-nhat-bsn-12', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_1_1368360175.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 700000.00, 0, NULL),
(128, 'CAKE90', 'Bánh kem Noel BKN716', 'banh-kem-noel-bkn716', 'http://banhngononline.com/components/com_product/img/product/BKN 716_1354804215.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(129, 'CAKE91', 'Bánh kem Noel BKN715', 'banh-kem-noel-bkn715', 'http://banhngononline.com/components/com_product/img/product/BKN 715_1354802914.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL);
INSERT INTO `_product` (`product_id`, `product_code`, `product_title`, `product_alias`, `product_thumb`, `product_cover`, `product_desc`, `product_content`, `product_position`, `product_status`, `product_type`, `product_insert`, `product_update`, `product_category`, `product_images`, `product_token`, `product_price`, `product_view`, `product_tag`) VALUES
(130, 'CAKE92', 'Bánh kem Noel BKN714', 'banh-kem-noel-bkn714', 'http://banhngononline.com/components/com_product/img/product/BKN 714_1354802179.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(131, 'CAKE93', 'Bánh kem BKV 416', 'banh-kem-bkv-416', 'http://banhngononline.com/components/com_product/img/product/kem-large_1354520293.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 200000.00, 0, NULL),
(132, 'CAKE94', 'Bánh Sinh Nhật BSN119', 'banh-sinh-nhat-bsn119', 'http://banhngononline.com/components/com_product/img/product/BSN119_1354466601.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(133, 'CAKE95', 'Bánh BSN750', 'banh-bsn750', 'http://banhngononline.com/components/com_product/img/product/IMG_2201_1353823214.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(134, 'CAKE96', 'Bánh kem Noel 713', 'banh-kem-noel-713', 'http://banhngononline.com/components/com_product/img/product/noelcake6_1329790225.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(135, 'CAKE97', 'Bánh Noel BKN712', 'banh-noel-bkn712', 'http://banhngononline.com/components/com_product/img/product/8620_197780990408055_384838991_n_1387371', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(136, 'CAKE98', 'Bánh Noel BKN711', 'banh-noel-bkn711', 'http://banhngononline.com/components/com_product/img/product/noelcake2_1329788847.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(137, 'CAKE99', 'Bánh sinh nhật BNS116', 'banh-sinh-nhat-bns116', 'http://banhngononline.com/components/com_product/img/product/twonumbercake_1326429866.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(138, 'CAKE100', 'Cupcake phủ kem CPK617', 'cupcake-phu-kem-cpk617', 'http://banhngononline.com/components/com_product/img/product/hinh_bck_5_1368454980.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 15000.00, 0, NULL),
(139, 'CAKE101', 'Cupcake phủ kem CPK616', 'cupcake-phu-kem-cpk616', 'http://banhngononline.com/components/com_product/img/product/fishschoole_1326255510.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 400000.00, 0, NULL),
(140, 'CAKE102', 'Cupcake phủ kem CPK615', 'cupcake-phu-kem-cpk615', 'http://banhngononline.com/components/com_product/img/product/flyingballs_1326254004.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 450000.00, 0, NULL),
(141, 'CAKE103', 'Cupcake phủ kem CPK614', 'cupcake-phu-kem-cpk614', 'http://banhngononline.com/components/com_product/img/product/Birthday cupcakes_e_1326185633.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 360000.00, 0, NULL),
(142, 'CAKE104', 'Cupcake phủ kem CPK613', 'cupcake-phu-kem-cpk613', 'http://banhngononline.com/components/com_product/img/product/rosekingcake_1326184098.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(143, 'CAKE105', 'Cupcake phủ kem CPK612', 'cupcake-phu-kem-cpk612', 'http://banhngononline.com/components/com_product/img/product/cupcakephukem612_e_1326182463.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 240000.00, 0, NULL),
(144, 'CAKE106', 'Bánh con giáp BCG521', 'banh-con-giap-bcg521', 'http://banhngononline.com/components/com_product/img/product/Snakecakes_1326094461.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:15', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(145, 'CAKE107', 'Bánh con giáp BCG519', 'banh-con-giap-bcg519', 'http://banhngononline.com/components/com_product/img/product/Pigcakes1_1326096456.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:15', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(146, 'CAKE108', 'Bánh con giáp BCG518', 'banh-con-giap-bcg518', 'http://banhngononline.com/components/com_product/img/product/catcake_1326084335.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:15', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(147, 'CAKE109', 'Bánh con giáp BCG517', 'banh-con-giap-bcg517', 'http://banhngononline.com/components/com_product/img/product/horse cake_1377480545.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:15', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(148, 'CAKE110', 'Bánh con giáp BCG516', 'banh-con-giap-bcg516', 'http://banhngononline.com/components/com_product/img/product/dattenfilemoi_1377738262.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(149, 'CAKE111', 'Bánh kem ngộ nghĩnh BKNN227', 'banh-kem-ngo-nghinh-bknn227', 'http://banhngononline.com/components/com_product/img/product/small_icu1348072133_1377737830.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(150, 'CAKE112', 'Bánh con giáp BCG513', 'banh-con-giap-bcg513', 'http://banhngononline.com/components/com_product/img/product/Monkeycake_1325836459.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(151, 'CAKE113', 'Bánh con giáp BCG512', 'banh-con-giap-bcg512', 'http://banhngononline.com/components/com_product/img/product/_1325833232.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(152, 'CAKE114', 'Bánh con giáp BCG511', 'banh-con-giap-bcg511', 'http://banhngononline.com/components/com_product/img/product/chuotttttttttttt_1428214363.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(153, 'CAKE115', 'Bánh kem Valentine BKV415', 'banh-kem-valentine-bkv415', 'http://banhngononline.com/components/com_product/img/product/tuixach_1325831941.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(154, 'CAKE116', 'Bánh kem BKV414', 'banh-kem-bkv414', 'http://banhngononline.com/components/com_product/img/product/yourname2_1325821389.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 200000.00, 0, NULL),
(155, 'CAKE117', 'Bánh kem valentine BKV413', 'banh-kem-valentine-bkv413', 'http://banhngononline.com/components/com_product/img/product/namecake_1325754279.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(156, 'CAKE118', 'Bánh kem Valentine BKV412', 'banh-kem-valentine-bkv412', 'http://banhngononline.com/components/com_product/img/product/Marboro_1325750887.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(157, 'CAKE119', 'Bánh kem valentine BKV411', 'banh-kem-valentine-bkv411', 'http://banhngononline.com/components/com_product/img/product/banhkemvalentin3_1329792186.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 200000.00, 0, NULL),
(158, 'CAKE120', 'Bánh cưới BKC315', 'banh-cuoi-bkc315', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi2_1325738696.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 1500000.00, 0, NULL),
(159, 'CAKE121', 'Bánh cưới BKC314', 'banh-cuoi-bkc314', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi3_1325734842.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 1000000.00, 0, NULL),
(160, 'CAKE122', 'Bánh cưới BKC313', 'banh-cuoi-bkc313', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi4_1325734348.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', '2015-07-06 11:22:08', 419, NULL, NULL, 1000000.00, 0, NULL),
(161, 'CAKE123', 'Bánh cưới BKC312', 'banh-cuoi-bkc312', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi5_1325732133.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', '2015-07-03 21:47:38', 420, NULL, NULL, 1500000.00, 0, NULL),
(162, 'CAKE124', 'Bánh kem ngộ nghĩnh BKNN226', 'banh-kem-ngo-nghinh-bknn226', 'http://banhngononline.com/components/com_product/img/product/images (6)_1354518872.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 300000.00, 0, NULL),
(163, 'CAKE125', 'Bánh sinh nhật BSN111', 'banh-sinh-nhat-bsn111', 'http://banhngononline.com/components/com_product/img/product/images 2_1324971479.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(164, 'CAKE126', 'Bánh sinh nhật BSN113', 'banh-sinh-nhat-bsn113', 'http://banhngononline.com/components/com_product/img/product/banhhopqua_1325042436.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(165, 'CAKE127', 'Bánh sinh nhật BSN112', 'banh-sinh-nhat-bsn112', 'http://banhngononline.com/components/com_product/img/product/BSN116_1354366771.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(166, 'CAKE128', 'Bánh sinh nhật BSN114', 'banh-sinh-nhat-bsn114', 'http://banhngononline.com/components/com_product/img/product/chocolatecake_1325044405.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(167, 'CAKE129', 'Bánh sinh nhật BSN115', 'banh-sinh-nhat-bsn115', 'http://banhngononline.com/components/com_product/img/product/banh-sinh-nhat_1354366889.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(168, 'CAKE130', 'Bánh kem ngộ nghĩnh BKNN212', 'banh-kem-ngo-nghinh-bknn212', 'http://banhngononline.com/components/com_product/img/product/ChuotMickeycake_1325057344.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL),
(169, 'CAKE131', 'Bánh kem ngộ nghĩnh BKNN213', 'banh-kem-ngo-nghinh-bknn213', 'http://banhngononline.com/components/com_product/img/product/11_1405735424.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(170, 'CAKE132', 'Bánh kem ngộ nghĩnh BKNN217', 'banh-kem-ngo-nghinh-bknn217', 'http://banhngononline.com/components/com_product/img/product/Chuvoicon_1325061772.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(171, 'CAKE133', 'Bánh kem ngộ nghĩnh BKNN216', 'banh-kem-ngo-nghinh-bknn216', 'http://banhngononline.com/components/com_product/img/product/BKNN216_1354465119.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 350000.00, 0, NULL),
(172, 'CAKE134', 'Bánh kem ngộ nghĩnh BKNN219', 'banh-kem-ngo-nghinh-bknn219', 'http://banhngononline.com/components/com_product/img/product/Chodom2_1325092672.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL),
(173, 'CAKE136', 'Bánh kem ngộ nghĩnh BKNN224', 'banh-kem-ngo-nghinh-bknn224', 'http://banhngononline.com/components/com_product/img/product/McQueencar_1325216317.jpg', NULL, '', '', 0, 'true', 'cake', '2015-07-03 21:23:25', '2015-07-07 14:27:12', 419, '', NULL, 370000.00, 0, 'bánh sinh nhật, bánh kem');

-- --------------------------------------------------------

--
-- Table structure for table `_seo`
--

CREATE TABLE `_seo` (
  `seo_id` int(11) NOT NULL auto_increment,
  `seo_item` varchar(100) default NULL,
  `seo_social_title` varchar(255) default NULL,
  `seo_social_image` varchar(255) default NULL,
  `seo_social_desc` varchar(255) default NULL,
  `seo_social_keyword` varchar(255) default NULL,
  PRIMARY KEY  (`seo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `_seo`
--

