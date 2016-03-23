-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2016 at 06:55 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metronic`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_users`
--

CREATE TABLE IF NOT EXISTS `auth_users` (
  `ause_id` smallint(6) NOT NULL,
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
  `ause_lastlogin` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10025 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_users`
--

INSERT INTO `auth_users` (`ause_id`, `ause_key`, `ause_group`, `ause_name`, `ause_username`, `ause_email`, `ause_secretkey`, `ause_salt`, `ause_password`, `ause_position`, `ause_status`, `ause_insert`, `ause_update`, `ause_delete`, `ause_picture`, `ause_authority`, `ause_lastlogin`) VALUES
(10001, 'V9ZXr6Uw', 10002, 'Trường Khương', 'khuongxuantruong@gmail.com', 'khuongxuantruong@gmail.com', '7PtY3oAdRdK6P7YncnroQ2KLnLoPjrnW', 'FA04iw9qhWlT', '27d168e16f3cafbdd8c5f0c1be19608e', 1, 'true', '2013-04-02 16:43:42', '2014-12-12 09:58:06', NULL, 'https://lh5.googleusercontent.com/-WAMgTlfd5og/AAAAAAAAAAI/AAAAAAAAAP0/b0LCEJbexS4/photo.jpg', 'Administrator', '2013-04-08 10:01:04'),
(10018, 'QOEb1vsc', NULL, 'Admin', 'admin', 'Admin@gmail.com', 'qBKh4pA07aiU4WNbLCHLjhzpaFnjWXYP', '7PrSkIXh', '0903ce30d609ba18172fc0605c2848c2', 2, 'true', '2014-12-11 23:01:35', '2014-12-12 05:07:50', NULL, NULL, 'Admin', NULL),
(10020, 'h8ovaLKc', NULL, 'View', 'View', 'View@gmail.com', 'PMvaAlFujxu8GZvKzLPIjQOaCu4Eba5y', 'g5AVZC8K', '477b560f0f16773d3348ae9711052ba9', 2, 'false', '2014-12-12 08:31:32', '2015-07-04 22:09:45', NULL, NULL, 'View', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `lang_id` int(4) NOT NULL,
  `lang_name` varchar(255) DEFAULT NULL,
  `lang_short` varchar(10) DEFAULT NULL,
  `lang_insert` datetime DEFAULT NULL,
  `lang_update` datetime DEFAULT NULL,
  `lang_status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_short`, `lang_insert`, `lang_update`, `lang_status`) VALUES
(1, 'English', 'en', NULL, '2016-03-25 20:28:48', 'true'),
(2, 'German', 'de', NULL, '2015-07-31 11:15:08', 'false'),
(3, 'French', 'fr', NULL, '2015-07-21 10:17:32', 'false'),
(4, 'Dutch', 'nl', NULL, NULL, 'false'),
(5, 'Italian', 'it', NULL, NULL, 'false'),
(6, 'Spanish', 'es', NULL, NULL, 'false'),
(7, 'Polish', 'pl', NULL, NULL, 'false'),
(8, 'Russian', 'ru', NULL, NULL, 'false'),
(9, 'Japanese', 'ja', NULL, '2015-07-31 11:15:09', 'false'),
(10, 'Portuguese', 'pt', NULL, NULL, 'false'),
(11, 'Swedish', 'sv', NULL, NULL, 'false'),
(12, 'Chinese', 'zh', NULL, NULL, 'false'),
(13, 'Catalan', 'ca', NULL, NULL, 'false'),
(14, 'Ukrainian', 'uk', NULL, NULL, 'false'),
(15, 'Norwegian (Bokmål)', 'no', NULL, NULL, 'false'),
(16, 'Finnish', 'fi', NULL, NULL, 'false'),
(17, 'Vietnamese', 'vi', NULL, '2015-07-20 14:54:20', 'true'),
(18, 'Czech', 'cs', NULL, NULL, 'false'),
(19, 'Hungarian', 'hu', NULL, NULL, 'false'),
(20, 'Korean', 'ko', NULL, NULL, 'false'),
(21, 'Indonesian', 'id', NULL, NULL, 'false'),
(22, 'Turkish', 'tr', NULL, NULL, 'false'),
(23, 'Romanian', 'ro', NULL, NULL, 'false'),
(24, 'Persian', 'fa', NULL, NULL, 'false'),
(25, 'Arabic', 'ar', NULL, NULL, 'false'),
(26, 'Danish', 'da', NULL, NULL, 'false'),
(27, 'Esperanto', 'eo', NULL, NULL, 'false'),
(28, 'Serbian', 'sr', NULL, NULL, 'false'),
(29, 'Lithuanian', 'lt', NULL, NULL, 'false'),
(30, 'Slovak', 'sk', NULL, NULL, 'false'),
(31, 'Malay', 'ms', NULL, NULL, 'false'),
(32, 'Hebrew', 'he', NULL, NULL, 'false'),
(33, 'Bulgarian', 'bg', NULL, NULL, 'false'),
(34, 'Slovenian', 'sl', NULL, NULL, 'false'),
(35, 'Volapük', 'vo', NULL, NULL, 'false'),
(36, 'Kazakh', 'kk', NULL, NULL, 'false'),
(37, 'Waray-Waray', 'war', NULL, NULL, 'false'),
(38, 'Basque', 'eu', NULL, NULL, 'false'),
(39, 'Croatian', 'hr', NULL, NULL, 'false'),
(40, 'Hindi', 'hi', NULL, NULL, 'false'),
(41, 'Estonian', 'et', NULL, NULL, 'false'),
(42, 'Azerbaijani', 'az', NULL, NULL, 'false'),
(43, 'Galician', 'gl', NULL, NULL, 'false'),
(44, 'Simple English', 'simple', NULL, NULL, 'false'),
(45, 'Norwegian (Nynorsk)', 'nn', NULL, NULL, 'false'),
(46, 'Thai', 'th', NULL, NULL, 'false'),
(47, 'Newar / Nepal Bhasa', 'new', NULL, NULL, 'false'),
(48, 'Greek', 'el', NULL, NULL, 'false'),
(49, 'Aromanian', 'roa-rup', NULL, NULL, 'false'),
(50, 'Latin', 'la', NULL, NULL, 'false'),
(51, 'Occitan', 'oc', NULL, NULL, 'false'),
(52, 'Tagalog', 'tl', NULL, NULL, 'false'),
(53, 'Haitian', 'ht', NULL, NULL, 'false'),
(54, 'Macedonian', 'mk', NULL, NULL, 'false'),
(55, 'Georgian', 'ka', NULL, NULL, 'false'),
(56, 'Serbo-Croatian', 'sh', NULL, NULL, 'false'),
(57, 'Telugu', 'te', NULL, NULL, 'false'),
(58, 'Piedmontese', 'pms', NULL, NULL, 'false'),
(59, 'Cebuano', 'ceb', NULL, NULL, 'false'),
(60, 'Tamil', 'ta', NULL, NULL, 'false'),
(61, 'Belarusian (Taraškievica)', 'be-x-old', NULL, NULL, 'false'),
(62, 'Breton', 'br', NULL, NULL, 'false'),
(63, 'Latvian', 'lv', NULL, NULL, 'false'),
(64, 'Javanese', 'jv', NULL, NULL, 'false'),
(65, 'Albanian', 'sq', NULL, NULL, 'false'),
(66, 'Belarusian', 'be', NULL, NULL, 'false'),
(67, 'Marathi', 'mr', NULL, NULL, 'false'),
(68, 'Welsh', 'cy', NULL, NULL, 'false'),
(69, 'Luxembourgish', 'lb', NULL, NULL, 'false'),
(70, 'Icelandic', 'is', NULL, NULL, 'false'),
(71, 'Bosnian', 'bs', NULL, NULL, 'false'),
(72, 'Yoruba', 'yo', NULL, NULL, 'false'),
(73, 'Malagasy', 'mg', NULL, NULL, 'false'),
(74, 'Aragonese', 'an', NULL, NULL, 'false'),
(75, 'Bishnupriya Manipuri', 'bpy', NULL, NULL, 'false'),
(76, 'Lombard', 'lmo', NULL, NULL, 'false'),
(77, 'West Frisian', 'fy', NULL, NULL, 'false'),
(78, 'Bengali', 'bn', NULL, NULL, 'false'),
(79, 'Ido', 'io', NULL, NULL, 'false'),
(80, 'Swahili', 'sw', NULL, NULL, 'false'),
(81, 'Gujarati', 'gu', NULL, NULL, 'false'),
(82, 'Malayalam', 'ml', NULL, NULL, 'false'),
(83, 'Western Panjabi', 'pnb', NULL, NULL, 'false'),
(84, 'Afrikaans', 'af', NULL, NULL, 'false'),
(85, 'Low Saxon', 'nds', NULL, NULL, 'false'),
(86, 'Sicilian', 'scn', NULL, NULL, 'false'),
(87, 'Urdu', 'ur', NULL, NULL, 'false'),
(88, 'Kurdish', 'ku', NULL, NULL, 'false'),
(89, 'Cantonese', 'zh-yue', NULL, NULL, 'false'),
(90, 'Armenian', 'hy', NULL, NULL, 'false'),
(91, 'Quechua', 'qu', NULL, NULL, 'false'),
(92, 'Sundanese', 'su', NULL, NULL, 'false'),
(93, 'Nepali', 'ne', NULL, NULL, 'false'),
(94, 'Zazaki', 'diq', NULL, NULL, 'false'),
(95, 'Asturian', 'ast', NULL, NULL, 'false'),
(96, 'Tatar', 'tt', NULL, NULL, 'false'),
(97, 'Neapolitan', 'nap', NULL, NULL, 'false'),
(98, 'Irish', 'ga', NULL, NULL, 'false'),
(99, 'Chuvash', 'cv', NULL, NULL, 'false'),
(100, 'Samogitian', 'bat-smg', NULL, NULL, 'false'),
(101, 'Walloon', 'wa', NULL, NULL, 'false'),
(102, 'Amharic', 'am', NULL, NULL, 'false'),
(103, 'Kannada', 'kn', NULL, NULL, 'false'),
(104, 'Alemannic', 'als', NULL, NULL, 'false'),
(105, 'Buginese', 'bug', NULL, NULL, 'false'),
(106, 'Burmese', 'my', NULL, NULL, 'false'),
(107, 'Interlingua', 'ia', NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `lang_alias`
--

CREATE TABLE IF NOT EXISTS `lang_alias` (
  `als_id` int(11) NOT NULL,
  `als_alias` varchar(255) DEFAULT NULL,
  `als_lang` varchar(10) DEFAULT NULL,
  `als_token` varchar(255) DEFAULT NULL,
  `als_insert` datetime DEFAULT NULL,
  `als_update` datetime DEFAULT NULL,
  `als_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `lang_alias`
--

INSERT INTO `lang_alias` (`als_id`, `als_alias`, `als_lang`, `als_token`, `als_insert`, `als_update`, `als_type`) VALUES
(1, 'material', 'en', 'a13415493f3ce8a05a0aa36895377235', '2015-07-20 15:11:37', NULL, 'cake'),
(2, 'nguyen-lieu', 'vi', 'a13415493f3ce8a05a0aa36895377235', '2015-07-20 15:11:37', NULL, 'cake'),
(3, 'cake-mold', 'en', '86b387e10308c39782a524a10ac15f45', '2015-07-20 15:12:00', NULL, 'cake'),
(4, 'khuon-khay', 'vi', '86b387e10308c39782a524a10ac15f45', '2015-07-20 15:12:00', NULL, 'cake'),
(5, 'tools', 'en', 'd5be6c61fe5d4ed45cf08067a53a037d', '2015-07-20 15:16:32', NULL, 'cake'),
(6, 'dung-cu', 'vi', 'd5be6c61fe5d4ed45cf08067a53a037d', '2015-07-20 15:16:32', NULL, 'cake'),
(7, 'dede', 'de', 'a13415493f3ce8a05a0aa36895377235', NULL, NULL, 'cake'),
(8, 'frfrfr', 'fr', 'a13415493f3ce8a05a0aa36895377235', NULL, NULL, 'cake'),
(9, 'marry-cake', 'en', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', NULL, 'cake'),
(10, 'banh-cuoi', 'vi', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', NULL, 'cake'),
(21, 'birthday-cake', 'en', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', NULL, 'cake'),
(22, 'banh-sinh-nhat', 'vi', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', NULL, 'cake'),
(27, 'the-powder', 'en', '690435f750175022aec45a00a7f4c87f', '2016-03-14 09:58:03', NULL, 'cake'),
(28, 'cac-loai-bot', 'vi', '690435f750175022aec45a00a7f4c87f', '2016-03-14 09:58:03', NULL, 'cake'),
(29, 'ready-mixed-powder', 'en', 'a63da31c25eb1002839fc96d1effd4de', '2016-03-14 10:06:53', NULL, 'cake'),
(30, 'bot-tron-san', 'vi', 'a63da31c25eb1002839fc96d1effd4de', '2016-03-14 10:06:53', NULL, 'cake'),
(31, 'additives-spice', 'en', '89e6b18d941a36d529dbbc17cd523410', '2016-03-14 10:08:06', NULL, 'cake'),
(32, 'phu-gia-huong-lieu', 'vi', '89e6b18d941a36d529dbbc17cd523410', '2016-03-14 10:08:06', NULL, 'cake'),
(37, 'packaging', 'en', '5bd6ea058447791bb81028d3e1bf76a1', '2016-03-14 11:28:29', NULL, 'cake'),
(38, 'bao-bi', 'vi', '5bd6ea058447791bb81028d3e1bf76a1', '2016-03-14 11:28:29', NULL, 'cake'),
(39, 'equipments', 'en', '2d82c0ce6ec298d8234797802fa04556', '2016-03-14 11:29:04', NULL, 'cake'),
(40, 'thiet-bi', 'vi', '2d82c0ce6ec298d8234797802fa04556', '2016-03-14 11:29:04', NULL, 'cake'),
(41, 'information', 'en', '5c4b83f3a1094b86ef2b78ffd7c7d060', '2016-03-25 22:21:41', NULL, 'setting'),
(42, 'thong-tin', 'vi', '5c4b83f3a1094b86ef2b78ffd7c7d060', '2016-03-25 22:21:41', NULL, 'setting'),
(43, 'socials', 'en', '41bfcc7ecae70d62025e95288cc1f15d', '2016-03-25 22:22:08', NULL, 'setting'),
(44, 'mang-xa-hoi', 'vi', '41bfcc7ecae70d62025e95288cc1f15d', '2016-03-25 22:22:08', NULL, 'setting');

-- --------------------------------------------------------

--
-- Table structure for table `lang_category`
--

CREATE TABLE IF NOT EXISTS `lang_category` (
  `cat_id` int(11) NOT NULL,
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
  `cat_token` varchar(32) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lang_category`
--

INSERT INTO `lang_category` (`cat_id`, `cat_thumb`, `cat_image`, `cat_cover`, `cat_parent`, `cat_status`, `cat_position`, `cat_link`, `cat_type`, `cat_insert`, `cat_update`, `cat_lock`, `cat_value`, `cat_token`) VALUES
(1, '/data/image/ILoveYouThisMuch-90421.jpg', NULL, NULL, 0, 'true', 0, '', 'cake', '2015-07-20 15:11:37', '2016-03-14 10:10:28', NULL, '>1', 'a13415493f3ce8a05a0aa36895377235'),
(2, '', NULL, NULL, 0, 'true', 0, '', 'cake', '2015-07-20 15:12:00', '2016-03-14 11:25:35', NULL, '>2', '86b387e10308c39782a524a10ac15f45'),
(3, '', NULL, NULL, 0, 'true', 0, '', 'cake', '2015-07-20 15:16:32', '2016-03-14 11:27:45', NULL, '>3', 'd5be6c61fe5d4ed45cf08067a53a037d'),
(8, '', NULL, NULL, 0, 'true', 0, '', 'cake', '2016-03-14 11:28:29', NULL, NULL, '>8', '5bd6ea058447791bb81028d3e1bf76a1'),
(5, '', NULL, NULL, 1, 'true', 0, '', 'cake', '2016-03-14 09:58:03', '2016-03-14 10:04:04', NULL, '>1>5', '690435f750175022aec45a00a7f4c87f'),
(6, '', NULL, NULL, 1, 'true', 0, '', 'cake', '2016-03-14 10:06:53', NULL, NULL, '>1>6', 'a63da31c25eb1002839fc96d1effd4de'),
(7, '', NULL, NULL, 1, 'true', 0, '', 'cake', '2016-03-14 10:08:06', NULL, NULL, '>1>7', '89e6b18d941a36d529dbbc17cd523410'),
(9, '', NULL, NULL, 0, 'true', 0, '', 'cake', '2016-03-14 11:29:04', NULL, NULL, '>9', '2d82c0ce6ec298d8234797802fa04556'),
(10, '', NULL, NULL, 0, 'true', 0, '', 'setting', '2016-03-25 22:21:41', '2016-03-25 22:22:21', NULL, '>10', '5c4b83f3a1094b86ef2b78ffd7c7d060'),
(11, '', NULL, NULL, 0, 'true', 0, '', 'setting', '2016-03-25 22:22:08', NULL, NULL, '>11', '41bfcc7ecae70d62025e95288cc1f15d');

-- --------------------------------------------------------

--
-- Table structure for table `lang_content`
--

CREATE TABLE IF NOT EXISTS `lang_content` (
  `co_id` int(11) NOT NULL,
  `co_token` varchar(255) DEFAULT NULL,
  `co_type` varchar(20) DEFAULT NULL,
  `co_content` longtext,
  `co_insert` datetime DEFAULT NULL,
  `co_update` datetime DEFAULT NULL,
  `co_lang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lang_content`
--

INSERT INTO `lang_content` (`co_id`, `co_token`, `co_type`, `co_content`, `co_insert`, `co_update`, `co_lang`) VALUES
(1, 'b3ab7b1902fc1016af2a0372f02cdab9', 'cake', 'updating', NULL, NULL, 'en'),
(2, 'b3ab7b1902fc1016af2a0372f02cdab9', 'cake', 'cập nhật', NULL, NULL, 'vi'),
(3, '54760b5cd376fbc4868776f1f11a8a79', 'cake', '', '2015-07-21 11:18:35', NULL, 'en'),
(4, '54760b5cd376fbc4868776f1f11a8a79', 'cake', '', '2015-07-21 11:18:35', NULL, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `lang_data`
--

CREATE TABLE IF NOT EXISTS `lang_data` (
  `data_id` int(11) NOT NULL,
  `data_data` text,
  `data_token` varchar(32) DEFAULT NULL,
  `data_insert` datetime DEFAULT NULL,
  `data_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `data_type` varchar(32) DEFAULT NULL,
  `data_status` varchar(10) DEFAULT 'true',
  `data_category` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lang_data`
--

INSERT INTO `lang_data` (`data_id`, `data_data`, `data_token`, `data_insert`, `data_update`, `data_type`, `data_status`, `data_category`) VALUES
(1, '{"title":{"en":"Polyme","vi":"Nh\\u1ef1a cao c\\u1ea5p"},"price":{"en":"22","vi":"33333"}}', 'b3ab7b1902fc1016af2a0372f02cdab9', '2016-03-20 15:52:20', '2016-03-20 16:18:48', 'lang_product', 'true', NULL),
(2, '{"title":{"en":"Inox","vi":"Khay Inox"},"price":{"en":"33","vi":"140000"}}', 'b3ab7b1902fc1016af2a0372f02cdab9', '2016-03-20 17:16:58', NULL, 'lang_product', 'true', NULL),
(4, '{"title":{"en":"20 centimet","vi":"20 xentimet"},"price":{"en":"8","vi":"200000"}}', '54760b5cd376fbc4868776f1f11a8a79', '2016-03-20 17:25:38', '2016-03-20 17:26:05', 'lang_product', 'true', NULL),
(5, '{"title":{"en":"30 centimet","vi":"30 cm"},"price":{"en":"9","vi":"150000"}}', '54760b5cd376fbc4868776f1f11a8a79', '2016-03-20 17:25:56', NULL, 'lang_product', 'true', NULL),
(6, '{"title":{"en":"16GB","vi":"16 GB"},"price":{"en":"299","vi":"7000000"}}', '4', '2016-03-25 20:38:35', NULL, 'lang_product', 'true', NULL),
(7, '{"title":{"en":"32GB","vi":"32 GB"},"price":{"en":"399","vi":"8000000"}}', '4', '2016-03-25 20:38:51', NULL, 'lang_product', 'true', NULL),
(8, '{"title":{"en":"Address","vi":"\\u0110\\u1ecba ch\\u1ec9"},"desc":{"en":"Tang 20, Center Building - Hapulico Complex, 1 Nguyen Huy Tuong, Thanh Xuan, Ha Noi.","vi":"T\\u1ea7ng 20, T\\u00f2a nh\\u00e0 Center Building - Hapulico Complex, S\\u1ed1 1 Nguy\\u1ec5n Huy T\\u01b0\\u1edfng, Thanh Xu\\u00e2n, H\\u00e0 N\\u1ed9i."},"value":{"en":"Tang 20, Center Building - Hapulico Complex, 1 Nguyen Huy Tuong, Thanh Xuan, Ha Noi.","vi":"T\\u1ea7ng 20, T\\u00f2a nh\\u00e0 Center Building - Hapulico Complex, S\\u1ed1 1 Nguy\\u1ec5n Huy T\\u01b0\\u1edfng, Thanh Xu\\u00e2n, H\\u00e0 N\\u1ed9i."},"data_type":"text"}', '10', '2016-03-25 22:27:57', '2016-03-26 09:37:42', 'setting', 'true', 10),
(9, '{"title":{"en":"Phone","vi":"\\u0110i\\u1ec7n tho\\u1ea1i"},"data_type":"string","desc":{"en":"+84 0985747240","vi":"0985747240"}}', '', '2016-03-25 22:43:16', '2016-03-25 23:42:42', 'setting', 'true', 10),
(10, '{"title":{"en":"Avatar","vi":"\\u1ea2nh \\u0111\\u1ea1i di\\u1ec7n"},"data_type":"image","desc":{"en":"","vi":""},"value":{"en":"","vi":""},"image":"\\/data\\/image\\/ILoveYouThisMuch-90421.jpg"}', '', '2016-03-26 09:46:36', '2016-03-26 09:55:14', 'setting', 'true', 10),
(11, '{"title":{"en":"Facebook","vi":"Facebook"},"data_type":"string","desc":{"en":"","vi":""},"value":{"en":"http:\\/\\/hdsieunhanh.com\\/phim-scream-at-the-devil-tieng-thet-quy-du-hd-31373736346864.html","vi":"http:\\/\\/hdsieunhanh.com\\/phim-scream-at-the-devil-tieng-thet-quy-du-hd-31373736346864.html"}}', '', '2016-03-26 14:41:24', NULL, 'setting', 'true', 11);

-- --------------------------------------------------------

--
-- Table structure for table `lang_desc`
--

CREATE TABLE IF NOT EXISTS `lang_desc` (
  `de_desc` text,
  `de_lang` varchar(10) NOT NULL DEFAULT '',
  `de_insert` datetime DEFAULT NULL,
  `de_update` datetime DEFAULT NULL,
  `de_token` varchar(255) NOT NULL DEFAULT '',
  `de_type` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lang_desc`
--

INSERT INTO `lang_desc` (`de_desc`, `de_lang`, `de_insert`, `de_update`, `de_token`, `de_type`) VALUES
('dede', 'de', NULL, NULL, 'a13415493f3ce8a05a0aa36895377235', 'cake'),
('Equipments', 'en', '2016-03-14 11:29:04', NULL, '2d82c0ce6ec298d8234797802fa04556', 'cake'),
('', 'en', '2016-03-25 22:22:08', NULL, '41bfcc7ecae70d62025e95288cc1f15d', 'setting'),
('', 'en', '2015-07-21 11:18:35', NULL, '54760b5cd376fbc4868776f1f11a8a79', 'cake'),
('Packaging', 'en', '2016-03-14 11:28:29', NULL, '5bd6ea058447791bb81028d3e1bf76a1', 'cake'),
('', 'en', '2016-03-25 22:21:41', NULL, '5c4b83f3a1094b86ef2b78ffd7c7d060', 'setting'),
('The powder', 'en', '2016-03-14 09:58:03', NULL, '690435f750175022aec45a00a7f4c87f', 'cake'),
('Cake mold', 'en', '2015-07-20 15:12:00', NULL, '86b387e10308c39782a524a10ac15f45', 'cake'),
('Additives-Spice', 'en', '2016-03-14 10:08:06', NULL, '89e6b18d941a36d529dbbc17cd523410', 'cake'),
('Material', 'en', '2015-07-20 15:11:37', NULL, 'a13415493f3ce8a05a0aa36895377235', 'cake'),
('Ready-mixed powder', 'en', '2016-03-14 10:06:53', NULL, 'a63da31c25eb1002839fc96d1effd4de', 'cake'),
('', 'en', '2015-07-21 10:32:05', NULL, 'b3ab7b1902fc1016af2a0372f02cdab9', 'cake'),
('Tools', 'en', '2015-07-20 15:16:32', NULL, 'd5be6c61fe5d4ed45cf08067a53a037d', 'cake'),
('frfr', 'fr', NULL, NULL, 'a13415493f3ce8a05a0aa36895377235', 'cake'),
('Thiết bị', 'vi', '2016-03-14 11:29:04', NULL, '2d82c0ce6ec298d8234797802fa04556', 'cake'),
('', 'vi', '2016-03-25 22:22:08', NULL, '41bfcc7ecae70d62025e95288cc1f15d', 'setting'),
('', 'vi', '2015-07-21 11:18:35', NULL, '54760b5cd376fbc4868776f1f11a8a79', 'cake'),
('Bao bì', 'vi', '2016-03-14 11:28:29', NULL, '5bd6ea058447791bb81028d3e1bf76a1', 'cake'),
('', 'vi', '2016-03-25 22:21:41', NULL, '5c4b83f3a1094b86ef2b78ffd7c7d060', 'setting'),
('Các loại bột', 'vi', '2016-03-14 09:58:03', NULL, '690435f750175022aec45a00a7f4c87f', 'cake'),
('Khuôn - Khay', 'vi', '2015-07-20 15:12:00', NULL, '86b387e10308c39782a524a10ac15f45', 'cake'),
('Phụ gia-Hương liệu', 'vi', '2016-03-14 10:08:06', NULL, '89e6b18d941a36d529dbbc17cd523410', 'cake'),
('Nguyên Liệu', 'vi', '2015-07-20 15:11:37', NULL, 'a13415493f3ce8a05a0aa36895377235', 'cake'),
('bột trộn sẵn', 'vi', '2016-03-14 10:06:53', NULL, 'a63da31c25eb1002839fc96d1effd4de', 'cake'),
('', 'vi', '2015-07-21 10:32:05', NULL, 'b3ab7b1902fc1016af2a0372f02cdab9', 'cake'),
('Dụng cụ', 'vi', '2015-07-20 15:16:32', NULL, 'd5be6c61fe5d4ed45cf08067a53a037d', 'cake');

-- --------------------------------------------------------

--
-- Table structure for table `lang_price`
--

CREATE TABLE IF NOT EXISTS `lang_price` (
  `pri_price` varchar(20) DEFAULT NULL,
  `pri_lang` varchar(10) NOT NULL DEFAULT '',
  `pri_insert` datetime DEFAULT NULL,
  `pri_update` datetime DEFAULT NULL,
  `pri_token` varchar(255) NOT NULL DEFAULT '',
  `pri_type` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `lang_product`
--

CREATE TABLE IF NOT EXISTS `lang_product` (
  `product_id` int(11) NOT NULL,
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
  `product_lock` varchar(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `lang_product`
--

INSERT INTO `lang_product` (`product_id`, `product_code`, `product_thumb`, `product_cover`, `product_position`, `product_status`, `product_type`, `product_insert`, `product_update`, `product_category`, `product_images`, `product_token`, `product_view`, `product_lock`) VALUES
(1, 'MC01', '/data/image/ILoveYouThisMuch-90421.jpg', NULL, NULL, 'true', 'cake', '2015-07-21 10:32:05', '2016-03-14 09:46:16', 3, '', 'b3ab7b1902fc1016af2a0372f02cdab9', 0, NULL),
(4, 'BSK01', '/data/image/slider1.jpg', NULL, NULL, 'true', 'cake', '2015-07-21 11:18:35', '2016-03-20 22:20:50', 2, '/data/image/ILoveYouThisMuch-90421.jpg\r\n/data/image/slider1.jpg', '54760b5cd376fbc4868776f1f11a8a79', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lang_tag`
--

CREATE TABLE IF NOT EXISTS `lang_tag` (
  `tag_tag` varchar(255) DEFAULT NULL,
  `tag_lang` varchar(10) NOT NULL DEFAULT '',
  `tag_token` varchar(255) NOT NULL DEFAULT '',
  `tag_insert` datetime DEFAULT NULL,
  `tag_update` datetime DEFAULT NULL,
  `tag_type` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `lang_tag`
--

INSERT INTO `lang_tag` (`tag_tag`, `tag_lang`, `tag_token`, `tag_insert`, `tag_update`, `tag_type`) VALUES
('', 'en', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', NULL, 'cake'),
('', 'en', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', NULL, 'cake'),
('', 'vi', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', NULL, 'cake'),
('', 'vi', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', NULL, 'cake');

-- --------------------------------------------------------

--
-- Table structure for table `lang_title`
--

CREATE TABLE IF NOT EXISTS `lang_title` (
  `ti_title` varchar(255) DEFAULT NULL,
  `ti_lang` varchar(10) NOT NULL DEFAULT '',
  `ti_token` varchar(255) NOT NULL DEFAULT '',
  `ti_insert` datetime DEFAULT NULL,
  `ti_update` datetime DEFAULT NULL,
  `ti_type` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lang_title`
--

INSERT INTO `lang_title` (`ti_title`, `ti_lang`, `ti_token`, `ti_insert`, `ti_update`, `ti_type`) VALUES
('dêde', 'de', 'a13415493f3ce8a05a0aa36895377235', NULL, NULL, 'cake'),
('Equipments', 'en', '2d82c0ce6ec298d8234797802fa04556', '2016-03-14 11:29:04', NULL, 'cake'),
('Socials', 'en', '41bfcc7ecae70d62025e95288cc1f15d', '2016-03-25 22:22:08', NULL, 'setting'),
('Birthday Cake', 'en', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', NULL, 'cake'),
('Packaging', 'en', '5bd6ea058447791bb81028d3e1bf76a1', '2016-03-14 11:28:29', NULL, 'cake'),
('Information', 'en', '5c4b83f3a1094b86ef2b78ffd7c7d060', '2016-03-25 22:21:41', NULL, 'setting'),
('The powder', 'en', '690435f750175022aec45a00a7f4c87f', '2016-03-14 09:58:03', NULL, 'cake'),
('Cake mold', 'en', '86b387e10308c39782a524a10ac15f45', '2015-07-20 15:12:00', NULL, 'cake'),
('Additives-Spice', 'en', '89e6b18d941a36d529dbbc17cd523410', '2016-03-14 10:08:06', NULL, 'cake'),
('Material', 'en', 'a13415493f3ce8a05a0aa36895377235', '2015-07-20 15:11:37', NULL, 'cake'),
('Ready-mixed powder', 'en', 'a63da31c25eb1002839fc96d1effd4de', '2016-03-14 10:06:53', NULL, 'cake'),
('Marry Cake', 'en', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', NULL, 'cake'),
('Tools', 'en', 'd5be6c61fe5d4ed45cf08067a53a037d', '2015-07-20 15:16:32', NULL, 'cake'),
('frfrfr', 'fr', 'a13415493f3ce8a05a0aa36895377235', NULL, NULL, 'cake'),
('Thiết bị', 'vi', '2d82c0ce6ec298d8234797802fa04556', '2016-03-14 11:29:04', NULL, 'cake'),
('Mạng xã hội', 'vi', '41bfcc7ecae70d62025e95288cc1f15d', '2016-03-25 22:22:08', NULL, 'setting'),
('Bánh sinh nhật', 'vi', '54760b5cd376fbc4868776f1f11a8a79', '2015-07-21 11:18:35', NULL, 'cake'),
('Bao bì', 'vi', '5bd6ea058447791bb81028d3e1bf76a1', '2016-03-14 11:28:29', NULL, 'cake'),
('Thông tin', 'vi', '5c4b83f3a1094b86ef2b78ffd7c7d060', '2016-03-25 22:21:41', NULL, 'setting'),
('Các loại bột', 'vi', '690435f750175022aec45a00a7f4c87f', '2016-03-14 09:58:03', NULL, 'cake'),
('Khuôn - Khay', 'vi', '86b387e10308c39782a524a10ac15f45', '2015-07-20 15:12:00', NULL, 'cake'),
('Phụ gia-Hương liệu', 'vi', '89e6b18d941a36d529dbbc17cd523410', '2016-03-14 10:08:06', NULL, 'cake'),
('Nguyên Liệu', 'vi', 'a13415493f3ce8a05a0aa36895377235', '2015-07-20 15:11:37', NULL, 'cake'),
('Bột trộn sẵn', 'vi', 'a63da31c25eb1002839fc96d1effd4de', '2016-03-14 10:06:53', NULL, 'cake'),
('Bánh cưới', 'vi', 'b3ab7b1902fc1016af2a0372f02cdab9', '2015-07-21 10:32:05', NULL, 'cake'),
('Dụng cụ', 'vi', 'd5be6c61fe5d4ed45cf08067a53a037d', '2015-07-20 15:16:32', NULL, 'cake');

-- --------------------------------------------------------

--
-- Table structure for table `_album`
--

CREATE TABLE IF NOT EXISTS `_album` (
  `album_id` int(11) NOT NULL,
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
  `album_tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_album`
--

INSERT INTO `_album` (`album_id`, `album_title`, `album_alias`, `album_thumb`, `album_cover`, `album_desc`, `album_position`, `album_status`, `album_type`, `album_insert`, `album_update`, `album_category`, `album_images`, `album_view`, `album_tag`) VALUES
(1000, 'Những mẫu bánh đẹp nhất 2015', 'nhung-mau-banh-dep-nhat-2015', '/data/image/walle.jpg', NULL, '', NULL, 'true', 'acake', '2015-07-09 21:40:45', NULL, NULL, '/data/image/banh-cuoi.jpg\r\n/data/image/banh-cupcake.jpg\r\n/data/image/banh-sinh-nhat.jpg\r\n/data/image/banh-ve.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `_category`
--

CREATE TABLE IF NOT EXISTS `_category` (
  `cat_id` int(11) NOT NULL,
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
  `cat_value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_category`
--

INSERT INTO `_category` (`cat_id`, `cat_title`, `cat_alias`, `cat_thumb`, `cat_image`, `cat_cover`, `cat_desc`, `cat_parent`, `cat_status`, `cat_position`, `cat_link`, `cat_type`, `cat_insert`, `cat_update`, `cat_lock`, `cat_value`) VALUES
(41, 'Cake Category ', NULL, 'fa fa-list-ul', NULL, NULL, 'icon-settings ', 50, 'true', 1, '/dashboard/cp/category/viewport/01011/cake', 'cms', '2014-12-09 23:07:01', '2015-07-20 16:26:54', NULL, '>50>41'),
(44, 'Content', NULL, 'fa fa-newspaper-o', NULL, NULL, '', 50, 'true', 3, '', 'cms', '2014-12-10 08:22:36', '2015-07-20 16:26:54', NULL, '>50>44'),
(45, 'Home Slider', NULL, 'fa fa-image', NULL, NULL, '', 50, 'true', 4, '/dashboard/cp/image/viewport/11111/slider', 'cms', '2014-12-10 08:22:52', '2015-07-20 16:26:54', NULL, '>50>45'),
(46, 'Application', NULL, ' fa fa-bars', NULL, NULL, '', 50, 'true', 10, '', 'cms', '2014-12-10 08:23:09', '2015-07-20 16:26:54', NULL, '>50>46'),
(423, 'Cake', NULL, 'icon-handbag', NULL, NULL, '', 50, 'true', 2, '/dashboard/cp/product/viewport/111115/cake', 'cms', '2015-07-04 09:14:34', '2015-07-20 16:26:54', NULL, '>50>423'),
(50, 'Content Provider', NULL, 'icon-home', NULL, NULL, '', 0, 'true', 1, '', 'cms', '2014-12-10 16:06:08', '2015-07-20 16:26:54', NULL, '>50'),
(51, 'Service Operator', NULL, 'icon-settings', NULL, NULL, '', 0, 'true', 2, '', 'cms', '2014-12-10 16:06:33', '2015-07-20 16:26:54', NULL, '>51'),
(419, 'Bánh sinh nhật', 'banh-sinh-nhat', '/data/image/banh-sinh-nhat.jpg', NULL, NULL, 'Bánh sinh nhật với những mẫu đẹp và dễ thương nhất 2015, với giá rẻ, mẫu mã đẹp, tại Tp. Hồ Chí Minh', 0, 'true', 0, '', 'cake', '2015-07-02 21:58:23', '2016-03-18 21:48:03', 'true', '>419'),
(434, 'Admin Account', NULL, 'fa fa-users', NULL, NULL, '', 51, 'true', 3, '/dashboard/so/account/viewport/111114/cms', 'cms', '2015-07-04 22:06:44', '2015-07-20 16:26:54', NULL, '>51>434'),
(420, 'Bánh cưới', 'banh-cuoi', '/data/image/banh-cuoi.jpg', NULL, NULL, 'Bánh cưới với những mẫu đẹp được sáng tạo với vẻ đẹp hiện đại, vừa có các chi tiết trang trí đa dạng, vừa mang sắc màu gây ấn tượng', 0, 'true', 0, '', 'cake', '2015-07-02 22:14:25', '2016-03-18 21:48:03', 'true', '>420'),
(421, 'Bánh vẽ', 'banh-ve', '/data/image/banh-ve.jpg', NULL, NULL, 'Bánh vẽ là bánh sinh nhật và vẽ hình lên bánh, vẽ chân dung, vẽ nhân vật hoạt hình, vẽ chữ và trang trí', 0, 'true', 0, '', 'cake', '2015-07-02 22:14:31', '2016-03-18 21:48:03', 'true', '>421'),
(422, 'Bánh cupcake', 'banh-cupcake', '/data/image/banh-cupcake.jpg', NULL, NULL, 'Những chiếc bánh cupcake vữa ngon lại còn được trang trí cầu kỳ khiến cho mọi người chỉ muốn được thưởng thức chúng ngay lập tức.', 0, 'true', 0, '', 'cake', '2015-07-02 22:14:44', '2016-03-18 21:48:03', 'true', '>422'),
(433, 'File Manage', NULL, 'fa fa-file-image-o', NULL, NULL, '', 51, 'true', 2, '/dashboard/cp/kcfinder/viewport/111111/image', 'cms', '2015-07-04 16:34:01', '2015-07-20 16:26:54', NULL, '>51>433'),
(428, 'Social', 'social', NULL, NULL, NULL, '', 0, 'true', 3, '', 'scake', '2015-07-04 12:55:14', '2016-03-26 14:38:48', NULL, '>428'),
(429, 'Payment', 'payment', NULL, NULL, NULL, '', 0, 'true', 2, '', 'scake', '2015-07-04 12:55:21', '2016-03-26 14:38:48', NULL, '>429'),
(430, 'Information', 'information', NULL, NULL, NULL, '', 0, 'true', 1, '', 'scake', '2015-07-04 12:55:35', '2016-03-26 14:38:48', NULL, '>430'),
(431, 'Other', 'other', NULL, NULL, NULL, '', 0, 'true', 10, '', 'scake', '2015-07-04 12:55:50', '2016-03-26 14:38:48', NULL, '>431'),
(432, 'Setting', NULL, 'fa fa-cogs', NULL, NULL, '', 51, 'false', 0, '/dashboard/cp/data/viewport/010114/scake', 'cms', '2015-07-04 16:22:43', '2015-07-20 16:26:54', NULL, '>51>432'),
(435, 'Bánh tình yêu', 'banh-tinh-yeu', NULL, NULL, NULL, '', 0, 'false', 0, '', 'cake', '2015-07-06 19:25:49', '2016-03-18 21:48:03', NULL, '>435'),
(436, 'Order - Contact us', NULL, 'fa fa-comment-o', NULL, NULL, '', 50, 'true', 5, '/dashboard/cp/contactus/viewport/011114', 'cms', '2015-07-06 23:30:10', '2015-07-20 16:26:54', NULL, '>50>436'),
(437, 'Setting', NULL, 'fa fa-cogs', NULL, NULL, '', 51, 'true', 1, '/dashboard/so/data/viewport/010114/scake', 'cms', '2015-07-08 13:44:46', '2015-07-20 16:26:54', NULL, '>51>437'),
(438, 'Công thức làm bánh', NULL, 'fa fa-file-text-o', NULL, NULL, '', 44, 'true', 1, '/dashboard/cp/content/viewportonly/010014/1', 'cms', '2015-07-09 16:38:07', '2015-07-20 16:26:54', NULL, '>50>44>438'),
(439, 'All News', NULL, 'fa fa-newspaper-o', NULL, NULL, '', 44, 'true', 0, '/dashboard/cp/content/viewport/111014/', 'cms', '2015-07-09 16:40:09', '2015-07-20 16:26:54', NULL, '>50>44>439'),
(440, 'Nguyên liệu', NULL, 'fa fa-file-text-o', NULL, NULL, '', 44, 'true', 2, '/dashboard/cp/content/viewportonly/010014/2', 'cms', '2015-07-09 16:41:18', '2015-07-20 16:26:54', NULL, '>50>44>440'),
(441, 'Dạy nghề', NULL, 'fa fa-file-text-o', NULL, NULL, '', 44, 'true', 3, '/dashboard/cp/content/viewportonly/010014/3', 'cms', '2015-07-09 16:42:12', '2015-07-20 16:26:54', NULL, '>50>44>441'),
(442, 'Album Gallery', NULL, 'fa fa-image', NULL, NULL, '', 50, 'true', 6, '/dashboard/cp/album/viewport/111115/acake', 'cms', '2015-07-09 21:53:07', '2015-07-20 16:26:54', NULL, '>50>442');

-- --------------------------------------------------------

--
-- Table structure for table `_chart`
--

CREATE TABLE IF NOT EXISTS `_chart` (
  `chart_id` int(11) NOT NULL,
  `chart_count` varchar(20) NOT NULL DEFAULT '0',
  `chart_table` varchar(30) DEFAULT NULL,
  `chart_insert` date DEFAULT NULL,
  `chart_update` date DEFAULT NULL,
  `chart_row` int(11) DEFAULT NULL,
  `chart_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_chart`
--

INSERT INTO `_chart` (`chart_id`, `chart_count`, `chart_table`, `chart_insert`, `chart_update`, `chart_row`, `chart_type`) VALUES
(1, '210', '_product', '2015-07-14', NULL, 2, 'View'),
(2, '307', '_product', '2015-07-13', NULL, 2, 'View'),
(3, '220', '_product', '2015-07-12', NULL, 2, 'View'),
(4, '211', '_product', '2015-07-11', NULL, 2, 'View'),
(5, '268', '_product', '2015-07-10', NULL, 2, 'View'),
(6, '268', '_product', '2015-07-09', NULL, 2, 'View'),
(7, '228', '_product', '2015-07-08', NULL, 2, 'View'),
(8, '225', '_product', '2015-07-07', NULL, 2, 'View'),
(9, '183', '_product', '2015-07-06', NULL, 2, 'View'),
(10, '318', '_product', '2015-07-05', NULL, 2, 'View'),
(11, '210', '_product', '2015-07-04', NULL, 2, 'View'),
(12, '198', '_product', '2015-07-03', NULL, 2, 'View'),
(13, '336', '_product', '2015-07-02', NULL, 2, 'View'),
(14, '260', '_product', '2015-07-01', NULL, 2, 'View'),
(15, '330', '_product', '2015-06-30', NULL, 2, 'View'),
(16, '231', '_product', '2015-06-29', NULL, 2, 'View'),
(17, '337', '_product', '2015-06-28', NULL, 2, 'View'),
(18, '323', '_product', '2015-06-27', NULL, 2, 'View'),
(19, '327', '_product', '2015-06-26', NULL, 2, 'View'),
(20, '339', '_product', '2015-06-25', NULL, 2, 'View'),
(21, '222', '_product', '2015-06-24', NULL, 2, 'View'),
(22, '309', '_product', '2015-06-23', NULL, 2, 'View'),
(23, '195', '_product', '2015-06-22', NULL, 2, 'View'),
(24, '282', '_product', '2015-06-21', NULL, 2, 'View'),
(25, '286', '_product', '2015-06-20', NULL, 2, 'View'),
(26, '278', '_product', '2015-06-19', NULL, 2, 'View'),
(27, '186', '_product', '2015-06-18', NULL, 2, 'View'),
(28, '248', '_product', '2015-06-17', NULL, 2, 'View'),
(29, '224', '_product', '2015-06-16', NULL, 2, 'View'),
(30, '203', '_product', '2015-06-15', NULL, 2, 'View'),
(31, '295', '_product', '2015-06-14', NULL, 2, 'View'),
(32, '338', '_product', '2015-06-13', NULL, 2, 'View'),
(33, '330', '_product', '2015-06-12', NULL, 2, 'View'),
(34, '312', '_product', '2015-06-11', NULL, 2, 'View'),
(35, '258', '_product', '2015-06-10', NULL, 2, 'View'),
(36, '226', '_product', '2015-06-09', NULL, 2, 'View'),
(37, '300', '_product', '2015-06-08', NULL, 2, 'View'),
(38, '239', '_product', '2015-06-07', NULL, 2, 'View'),
(39, '243', '_product', '2015-06-06', NULL, 2, 'View'),
(40, '184', '_product', '2015-06-05', NULL, 2, 'View'),
(41, '255', '_product', '2015-06-04', NULL, 2, 'View'),
(42, '212', '_product', '2015-06-03', NULL, 2, 'View'),
(43, '329', '_product', '2015-06-02', NULL, 2, 'View'),
(44, '229', '_product', '2015-06-01', NULL, 2, 'View'),
(45, '235', '_product', '2015-05-31', NULL, 2, 'View'),
(46, '204', '_product', '2015-05-30', NULL, 2, 'View'),
(47, '339', '_product', '2015-05-29', NULL, 2, 'View'),
(48, '291', '_product', '2015-05-28', NULL, 2, 'View'),
(49, '190', '_product', '2015-05-27', NULL, 2, 'View'),
(50, '275', '_product', '2015-05-26', NULL, 2, 'View'),
(51, '184', '_product', '2015-05-25', NULL, 2, 'View'),
(52, '215', '_product', '2015-05-24', NULL, 2, 'View'),
(53, '329', '_product', '2015-05-23', NULL, 2, 'View'),
(54, '227', '_product', '2015-05-22', NULL, 2, 'View'),
(55, '199', '_product', '2015-05-21', NULL, 2, 'View'),
(56, '274', '_product', '2015-05-20', NULL, 2, 'View'),
(57, '262', '_product', '2015-05-19', NULL, 2, 'View'),
(58, '289', '_product', '2015-05-18', NULL, 2, 'View'),
(59, '294', '_product', '2015-05-17', NULL, 2, 'View'),
(60, '312', '_product', '2015-05-16', NULL, 2, 'View'),
(61, '197', '_product', '2015-05-15', NULL, 2, 'View'),
(62, '265', '_product', '2015-05-14', NULL, 2, 'View'),
(63, '293', '_product', '2015-05-13', NULL, 2, 'View'),
(64, '260', '_product', '2015-05-12', NULL, 2, 'View'),
(65, '258', '_product', '2015-05-11', NULL, 2, 'View'),
(66, '211', '_product', '2015-05-10', NULL, 2, 'View'),
(67, '275', '_product', '2015-05-09', NULL, 2, 'View'),
(68, '305', '_product', '2015-05-08', NULL, 2, 'View'),
(69, '310', '_product', '2015-05-07', NULL, 2, 'View'),
(70, '274', '_product', '2015-05-06', NULL, 2, 'View'),
(71, '236', '_product', '2015-05-05', NULL, 2, 'View'),
(72, '208', '_product', '2015-05-04', NULL, 2, 'View'),
(73, '306', '_product', '2015-05-03', NULL, 2, 'View'),
(74, '341', '_product', '2015-05-02', NULL, 2, 'View'),
(75, '255', '_product', '2015-05-01', NULL, 2, 'View'),
(76, '325', '_product', '2015-04-30', NULL, 2, 'View'),
(77, '283', '_product', '2015-04-29', NULL, 2, 'View'),
(78, '213', '_product', '2015-04-28', NULL, 2, 'View'),
(79, '327', '_product', '2015-04-27', NULL, 2, 'View'),
(80, '245', '_product', '2015-04-26', NULL, 2, 'View'),
(81, '192', '_product', '2015-04-25', NULL, 2, 'View'),
(82, '292', '_product', '2015-04-24', NULL, 2, 'View'),
(83, '190', '_product', '2015-04-23', NULL, 2, 'View'),
(84, '326', '_product', '2015-04-22', NULL, 2, 'View'),
(85, '243', '_product', '2015-04-21', NULL, 2, 'View'),
(86, '209', '_product', '2015-04-20', NULL, 2, 'View'),
(87, '182', '_product', '2015-04-19', NULL, 2, 'View'),
(88, '329', '_product', '2015-04-18', NULL, 2, 'View'),
(89, '216', '_product', '2015-04-17', NULL, 2, 'View'),
(90, '194', '_product', '2015-04-16', NULL, 2, 'View'),
(91, '210', '_product', '2015-04-15', NULL, 2, 'View'),
(92, '268', '_product', '2015-04-14', NULL, 2, 'View'),
(93, '320', '_product', '2015-04-13', NULL, 2, 'View'),
(94, '220', '_product', '2015-04-12', NULL, 2, 'View'),
(95, '270', '_product', '2015-04-11', NULL, 2, 'View'),
(96, '246', '_product', '2015-04-10', NULL, 2, 'View'),
(97, '335', '_product', '2015-04-09', NULL, 2, 'View'),
(98, '346', '_product', '2015-04-08', NULL, 2, 'View'),
(99, '271', '_product', '2015-04-07', NULL, 2, 'View'),
(100, '278', '_product', '2015-04-06', NULL, 2, 'View'),
(101, '299', '_product', '2015-07-14', NULL, 1, 'View'),
(102, '203', '_product', '2015-07-13', NULL, 1, 'View'),
(103, '208', '_product', '2015-07-12', NULL, 1, 'View'),
(104, '295', '_product', '2015-07-11', NULL, 1, 'View'),
(105, '335', '_product', '2015-07-10', NULL, 1, 'View'),
(106, '191', '_product', '2015-07-09', NULL, 1, 'View'),
(107, '331', '_product', '2015-07-08', NULL, 1, 'View'),
(108, '313', '_product', '2015-07-07', NULL, 1, 'View'),
(109, '309', '_product', '2015-07-06', NULL, 1, 'View'),
(110, '285', '_product', '2015-07-05', NULL, 1, 'View'),
(111, '293', '_product', '2015-07-04', NULL, 1, 'View'),
(112, '263', '_product', '2015-07-03', NULL, 1, 'View'),
(113, '344', '_product', '2015-07-02', NULL, 1, 'View'),
(114, '202', '_product', '2015-07-01', NULL, 1, 'View'),
(115, '347', '_product', '2015-06-30', NULL, 1, 'View'),
(116, '331', '_product', '2015-06-29', NULL, 1, 'View'),
(117, '307', '_product', '2015-06-28', NULL, 1, 'View'),
(118, '255', '_product', '2015-06-27', NULL, 1, 'View'),
(119, '314', '_product', '2015-06-26', NULL, 1, 'View'),
(120, '277', '_product', '2015-06-25', NULL, 1, 'View'),
(121, '320', '_product', '2015-06-24', NULL, 1, 'View'),
(122, '333', '_product', '2015-06-23', NULL, 1, 'View'),
(123, '275', '_product', '2015-06-22', NULL, 1, 'View'),
(124, '289', '_product', '2015-06-21', NULL, 1, 'View'),
(125, '250', '_product', '2015-06-20', NULL, 1, 'View'),
(126, '239', '_product', '2015-06-19', NULL, 1, 'View'),
(127, '226', '_product', '2015-06-18', NULL, 1, 'View'),
(128, '296', '_product', '2015-06-17', NULL, 1, 'View'),
(129, '220', '_product', '2015-06-16', NULL, 1, 'View'),
(130, '202', '_product', '2015-06-15', NULL, 1, 'View'),
(131, '246', '_product', '2015-06-14', NULL, 1, 'View'),
(132, '314', '_product', '2015-06-13', NULL, 1, 'View'),
(133, '267', '_product', '2015-06-12', NULL, 1, 'View'),
(134, '195', '_product', '2015-06-11', NULL, 1, 'View'),
(135, '329', '_product', '2015-06-10', NULL, 1, 'View'),
(136, '275', '_product', '2015-06-09', NULL, 1, 'View'),
(137, '343', '_product', '2015-06-08', NULL, 1, 'View'),
(138, '277', '_product', '2015-06-07', NULL, 1, 'View'),
(139, '214', '_product', '2015-06-06', NULL, 1, 'View'),
(140, '195', '_product', '2015-06-05', NULL, 1, 'View'),
(141, '314', '_product', '2015-06-04', NULL, 1, 'View'),
(142, '251', '_product', '2015-06-03', NULL, 1, 'View'),
(143, '238', '_product', '2015-06-02', NULL, 1, 'View'),
(144, '345', '_product', '2015-06-01', NULL, 1, 'View'),
(145, '304', '_product', '2015-05-31', NULL, 1, 'View'),
(146, '346', '_product', '2015-05-30', NULL, 1, 'View'),
(147, '310', '_product', '2015-05-29', NULL, 1, 'View'),
(148, '229', '_product', '2015-05-28', NULL, 1, 'View'),
(149, '350', '_product', '2015-05-27', NULL, 1, 'View'),
(150, '194', '_product', '2015-05-26', NULL, 1, 'View'),
(151, '253', '_product', '2015-05-25', NULL, 1, 'View'),
(152, '290', '_product', '2015-05-24', NULL, 1, 'View'),
(153, '232', '_product', '2015-05-23', NULL, 1, 'View'),
(154, '195', '_product', '2015-05-22', NULL, 1, 'View'),
(155, '319', '_product', '2015-05-21', NULL, 1, 'View'),
(156, '202', '_product', '2015-05-20', NULL, 1, 'View'),
(157, '330', '_product', '2015-05-19', NULL, 1, 'View'),
(158, '322', '_product', '2015-05-18', NULL, 1, 'View'),
(159, '331', '_product', '2015-05-17', NULL, 1, 'View'),
(160, '239', '_product', '2015-05-16', NULL, 1, 'View'),
(161, '255', '_product', '2015-05-15', NULL, 1, 'View'),
(162, '293', '_product', '2015-05-14', NULL, 1, 'View'),
(163, '199', '_product', '2015-05-13', NULL, 1, 'View'),
(164, '244', '_product', '2015-05-12', NULL, 1, 'View'),
(165, '213', '_product', '2015-05-11', NULL, 1, 'View'),
(166, '252', '_product', '2015-05-10', NULL, 1, 'View'),
(167, '258', '_product', '2015-05-09', NULL, 1, 'View'),
(168, '320', '_product', '2015-05-08', NULL, 1, 'View'),
(169, '329', '_product', '2015-05-07', NULL, 1, 'View'),
(170, '257', '_product', '2015-05-06', NULL, 1, 'View'),
(171, '248', '_product', '2015-05-05', NULL, 1, 'View'),
(172, '311', '_product', '2015-05-04', NULL, 1, 'View'),
(173, '298', '_product', '2015-05-03', NULL, 1, 'View'),
(174, '281', '_product', '2015-05-02', NULL, 1, 'View'),
(175, '333', '_product', '2015-05-01', NULL, 1, 'View'),
(176, '320', '_product', '2015-04-30', NULL, 1, 'View'),
(177, '243', '_product', '2015-04-29', NULL, 1, 'View'),
(178, '213', '_product', '2015-04-28', NULL, 1, 'View'),
(179, '253', '_product', '2015-04-27', NULL, 1, 'View'),
(180, '190', '_product', '2015-04-26', NULL, 1, 'View'),
(181, '200', '_product', '2015-04-25', NULL, 1, 'View'),
(182, '197', '_product', '2015-04-24', NULL, 1, 'View'),
(183, '343', '_product', '2015-04-23', NULL, 1, 'View'),
(184, '195', '_product', '2015-04-22', NULL, 1, 'View'),
(185, '293', '_product', '2015-04-21', NULL, 1, 'View'),
(186, '291', '_product', '2015-04-20', NULL, 1, 'View'),
(187, '342', '_product', '2015-04-19', NULL, 1, 'View'),
(188, '180', '_product', '2015-04-18', NULL, 1, 'View'),
(189, '218', '_product', '2015-04-17', NULL, 1, 'View'),
(190, '299', '_product', '2015-04-16', NULL, 1, 'View'),
(191, '244', '_product', '2015-04-15', NULL, 1, 'View'),
(192, '246', '_product', '2015-04-14', NULL, 1, 'View'),
(193, '268', '_product', '2015-04-13', NULL, 1, 'View'),
(194, '278', '_product', '2015-04-12', NULL, 1, 'View'),
(195, '301', '_product', '2015-04-11', NULL, 1, 'View'),
(196, '238', '_product', '2015-04-10', NULL, 1, 'View'),
(197, '309', '_product', '2015-04-09', NULL, 1, 'View'),
(198, '201', '_product', '2015-04-08', NULL, 1, 'View'),
(199, '337', '_product', '2015-04-07', NULL, 1, 'View'),
(200, '258', '_product', '2015-04-06', NULL, 1, 'View'),
(201, '111', '_product', '2015-07-14', NULL, 1, 'Order'),
(202, '76', '_product', '2015-07-13', NULL, 1, 'Order'),
(203, '162', '_product', '2015-07-12', NULL, 1, 'Order'),
(204, '140', '_product', '2015-07-11', NULL, 1, 'Order'),
(205, '143', '_product', '2015-07-10', NULL, 1, 'Order'),
(206, '101', '_product', '2015-07-09', NULL, 1, 'Order'),
(207, '77', '_product', '2015-07-08', NULL, 1, 'Order'),
(208, '200', '_product', '2015-07-07', NULL, 1, 'Order'),
(209, '113', '_product', '2015-07-06', NULL, 1, 'Order'),
(210, '73', '_product', '2015-07-05', NULL, 1, 'Order'),
(211, '190', '_product', '2015-07-04', NULL, 1, 'Order'),
(212, '216', '_product', '2015-07-03', NULL, 1, 'Order'),
(213, '147', '_product', '2015-07-02', NULL, 1, 'Order'),
(214, '140', '_product', '2015-07-01', NULL, 1, 'Order'),
(215, '139', '_product', '2015-06-30', NULL, 1, 'Order'),
(216, '144', '_product', '2015-06-29', NULL, 1, 'Order'),
(217, '147', '_product', '2015-06-28', NULL, 1, 'Order'),
(218, '220', '_product', '2015-06-27', NULL, 1, 'Order'),
(219, '89', '_product', '2015-06-26', NULL, 1, 'Order'),
(220, '168', '_product', '2015-06-25', NULL, 1, 'Order'),
(221, '88', '_product', '2015-06-24', NULL, 1, 'Order'),
(222, '159', '_product', '2015-06-23', NULL, 1, 'Order'),
(223, '129', '_product', '2015-06-22', NULL, 1, 'Order'),
(224, '95', '_product', '2015-06-21', NULL, 1, 'Order'),
(225, '174', '_product', '2015-06-20', NULL, 1, 'Order'),
(226, '177', '_product', '2015-06-19', NULL, 1, 'Order'),
(227, '124', '_product', '2015-06-18', NULL, 1, 'Order'),
(228, '110', '_product', '2015-06-17', NULL, 1, 'Order'),
(229, '80', '_product', '2015-06-16', NULL, 1, 'Order'),
(230, '120', '_product', '2015-06-15', NULL, 1, 'Order'),
(231, '161', '_product', '2015-06-14', NULL, 1, 'Order'),
(232, '168', '_product', '2015-06-13', NULL, 1, 'Order'),
(233, '159', '_product', '2015-06-12', NULL, 1, 'Order'),
(234, '209', '_product', '2015-06-11', NULL, 1, 'Order'),
(235, '105', '_product', '2015-06-10', NULL, 1, 'Order'),
(236, '154', '_product', '2015-06-09', NULL, 1, 'Order'),
(237, '85', '_product', '2015-06-08', NULL, 1, 'Order'),
(238, '137', '_product', '2015-06-07', NULL, 1, 'Order'),
(239, '196', '_product', '2015-06-06', NULL, 1, 'Order'),
(240, '174', '_product', '2015-06-05', NULL, 1, 'Order'),
(241, '212', '_product', '2015-06-04', NULL, 1, 'Order'),
(242, '126', '_product', '2015-06-03', NULL, 1, 'Order'),
(243, '147', '_product', '2015-06-02', NULL, 1, 'Order'),
(244, '112', '_product', '2015-06-01', NULL, 1, 'Order'),
(245, '216', '_product', '2015-05-31', NULL, 1, 'Order'),
(246, '171', '_product', '2015-05-30', NULL, 1, 'Order'),
(247, '197', '_product', '2015-05-29', NULL, 1, 'Order'),
(248, '75', '_product', '2015-05-28', NULL, 1, 'Order'),
(249, '147', '_product', '2015-05-27', NULL, 1, 'Order'),
(250, '193', '_product', '2015-05-26', NULL, 1, 'Order'),
(251, '211', '_product', '2015-05-25', NULL, 1, 'Order'),
(252, '97', '_product', '2015-05-24', NULL, 1, 'Order'),
(253, '133', '_product', '2015-05-23', NULL, 1, 'Order'),
(254, '186', '_product', '2015-05-22', NULL, 1, 'Order'),
(255, '126', '_product', '2015-05-21', NULL, 1, 'Order'),
(256, '135', '_product', '2015-05-20', NULL, 1, 'Order'),
(257, '76', '_product', '2015-05-19', NULL, 1, 'Order'),
(258, '70', '_product', '2015-05-18', NULL, 1, 'Order'),
(259, '109', '_product', '2015-05-17', NULL, 1, 'Order'),
(260, '72', '_product', '2015-05-16', NULL, 1, 'Order'),
(261, '102', '_product', '2015-05-15', NULL, 1, 'Order'),
(262, '142', '_product', '2015-05-14', NULL, 1, 'Order'),
(263, '97', '_product', '2015-05-13', NULL, 1, 'Order'),
(264, '166', '_product', '2015-05-12', NULL, 1, 'Order'),
(265, '112', '_product', '2015-05-11', NULL, 1, 'Order'),
(266, '172', '_product', '2015-05-10', NULL, 1, 'Order'),
(267, '104', '_product', '2015-05-09', NULL, 1, 'Order'),
(268, '149', '_product', '2015-05-08', NULL, 1, 'Order'),
(269, '83', '_product', '2015-05-07', NULL, 1, 'Order'),
(270, '155', '_product', '2015-05-06', NULL, 1, 'Order'),
(271, '71', '_product', '2015-05-05', NULL, 1, 'Order'),
(272, '129', '_product', '2015-05-04', NULL, 1, 'Order'),
(273, '218', '_product', '2015-05-03', NULL, 1, 'Order'),
(274, '160', '_product', '2015-05-02', NULL, 1, 'Order'),
(275, '160', '_product', '2015-05-01', NULL, 1, 'Order'),
(276, '140', '_product', '2015-04-30', NULL, 1, 'Order'),
(277, '190', '_product', '2015-04-29', NULL, 1, 'Order'),
(278, '184', '_product', '2015-04-28', NULL, 1, 'Order'),
(279, '161', '_product', '2015-04-27', NULL, 1, 'Order'),
(280, '139', '_product', '2015-04-26', NULL, 1, 'Order'),
(281, '204', '_product', '2015-04-25', NULL, 1, 'Order'),
(282, '147', '_product', '2015-04-24', NULL, 1, 'Order'),
(283, '87', '_product', '2015-04-23', NULL, 1, 'Order'),
(284, '158', '_product', '2015-04-22', NULL, 1, 'Order'),
(285, '84', '_product', '2015-04-21', NULL, 1, 'Order'),
(286, '194', '_product', '2015-04-20', NULL, 1, 'Order'),
(287, '180', '_product', '2015-04-19', NULL, 1, 'Order'),
(288, '156', '_product', '2015-04-18', NULL, 1, 'Order'),
(289, '185', '_product', '2015-04-17', NULL, 1, 'Order'),
(290, '95', '_product', '2015-04-16', NULL, 1, 'Order'),
(291, '150', '_product', '2015-04-15', NULL, 1, 'Order'),
(292, '166', '_product', '2015-04-14', NULL, 1, 'Order'),
(293, '180', '_product', '2015-04-13', NULL, 1, 'Order'),
(294, '146', '_product', '2015-04-12', NULL, 1, 'Order'),
(295, '89', '_product', '2015-04-11', NULL, 1, 'Order'),
(296, '145', '_product', '2015-04-10', NULL, 1, 'Order'),
(297, '122', '_product', '2015-04-09', NULL, 1, 'Order'),
(298, '117', '_product', '2015-04-08', NULL, 1, 'Order'),
(299, '160', '_product', '2015-04-07', NULL, 1, 'Order'),
(300, '125', '_product', '2015-04-06', NULL, 1, 'Order');

-- --------------------------------------------------------

--
-- Table structure for table `_contactus`
--

CREATE TABLE IF NOT EXISTS `_contactus` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_message` text,
  `contact_insert` datetime DEFAULT NULL,
  `contact_subject` varchar(255) DEFAULT NULL,
  `contact_update` datetime DEFAULT NULL,
  `contact_type` varchar(20) DEFAULT NULL,
  `contact_data` text
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `_content` (
  `content_id` int(11) NOT NULL,
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
  `content_tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `_data` (
  `data_id` int(11) NOT NULL,
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
  `data_lock` varchar(5) DEFAULT 'false'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_data`
--

INSERT INTO `_data` (`data_id`, `data_category`, `data_title`, `data_alias`, `data_desc`, `data_thumb`, `data_cover`, `data_content`, `data_position`, `data_insert`, `data_update`, `data_status`, `data_type`, `data_link`, `data_datatype`, `data_lock`) VALUES
(1, 428, 'Facebook', 'facebook', 'Link Facebook', NULL, NULL, 'https://www.facebook.com/pages/B%C3%A1nh-Y%C3%AAu/368469929920029?ref=ts&fref=ts', NULL, '2015-07-04 13:39:40', '2015-07-08 13:38:53', 'true', 'scake', NULL, 'string', 'true'),
(2, 430, 'Logo', 'logo', 'Logo banhngononline.com', NULL, NULL, '/data/image/ILoveYouThisMuch-90421.jpg', NULL, '2015-07-04 13:44:04', '2015-07-13 13:58:34', 'true', 'scake', NULL, 'image', 'true'),
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

CREATE TABLE IF NOT EXISTS `_image` (
  `image_id` int(11) NOT NULL,
  `image_src` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `image_desc` varchar(1000) DEFAULT NULL,
  `image_insert` datetime DEFAULT NULL,
  `image_update` datetime DEFAULT NULL,
  `image_position` smallint(6) DEFAULT NULL,
  `image_status` varchar(5) DEFAULT NULL,
  `image_token` varchar(32) DEFAULT '',
  `image_category` int(11) DEFAULT NULL,
  `image_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `_product` (
  `product_id` int(11) NOT NULL,
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
  `product_lock` varchar(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_product`
--

INSERT INTO `_product` (`product_id`, `product_code`, `product_title`, `product_alias`, `product_thumb`, `product_cover`, `product_desc`, `product_content`, `product_position`, `product_status`, `product_type`, `product_insert`, `product_update`, `product_category`, `product_images`, `product_token`, `product_price`, `product_view`, `product_tag`, `product_lock`) VALUES
(1, 'PIGC', 'Bánh kem con heo', 'banh-kem-con-heo', '/data/image/food/1.jpg', NULL, '', NULL, 0, 'true', 'cake', '2015-07-03 15:19:21', '2015-07-03 20:07:16', 420, '/data/image/food/1.jpg\r\n/data/image/food/4.jpg\r\n/data/image/food/5.jpg', NULL, 120000.00, 0, NULL, NULL),
(2, 'DORE', 'Bánh Doreamon', 'banh-doreamon', '/data/image/food/5.jpg', NULL, 'Trên đây là 45 mẫu banh sinh nhat đẹp nhất cho các bạn tham khảo. Hãy chọn cho mình một trong những mẫu bánh sinh nhật đẹp cho lần sinh nhật sắp tới của bạn nhé! Hãy ủng hộ chúng tôi bằng cách chia sẻ những hình ảnh đẹp mà bạn yêu thích.', '<div>Tr&ecirc;n đ&acirc;y l&agrave; 45&nbsp;mẫu banh sinh nhat&nbsp;đẹp nhất cho c&aacute;c bạn tham khảo. H&atilde;y chọn cho m&igrave;nh một trong những&nbsp;mẫu b&aacute;nh sinh nhật đẹp&nbsp;cho lần sinh nhật sắp tới của bạn nh&eacute;! H&atilde;y ủng hộ ch&uacute;ng t&ocirc;i bằng c&aacute;ch chia sẻ những&nbsp;h&igrave;nh ảnh đẹp&nbsp;m&agrave; bạn y&ecirc;u th&iacute;ch.</div>\r\n\r\n<div>\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/51755096.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4595" src="http://tapchianhdep.com/wp-content/uploads/2014/12/51755096.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-2.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display size-full wp-image-4596" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-2.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-day-2-tac-tai-4gs-texas-bakery-4.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4597" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-kem-sinh-nhat-day-2-tac-tai-4gs-texas-bakery-4.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-4.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4598" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-4.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-8.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4599" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-8-1024x964.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/Banh-sinh-nhat-1471691541.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4600" src="http://tapchianhdep.com/wp-content/uploads/2014/12/Banh-sinh-nhat-1471691541.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-dep-41.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4601" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-dep-41.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-hoa-hong-9.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4602" src="http://tapchianhdep.com/wp-content/uploads/2014/12/banh-sinh-nhat-hoa-hong-9.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-tinh-yeu-649-2.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4603" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-tinh-yeu-649-2.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/sinh-nhat.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4604" src="http://tapchianhdep.com/wp-content/uploads/2014/12/sinh-nhat-1024x733.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a>&nbsp;<a href="http://tapchianhdep.com/wp-content/uploads/2014/12/tiramisu-cake-46_Tiembanh-Tiramisu.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="Bánh sinh nhật đẹp" class="alignnone appear no-display wp-image-4605" src="http://tapchianhdep.com/wp-content/uploads/2014/12/tiramisu-cake-46_Tiembanh-Tiramisu.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-1.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 1" class="alignnone appear no-display wp-image-1252" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-1.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-2.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 2" class="alignnone appear no-display wp-image-1253" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-2.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-3.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 3" class="alignnone appear no-display wp-image-1254" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-3.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-4.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 4" class="alignnone appear no-display wp-image-1255" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-4.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-5.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 5" class="alignnone appear no-display wp-image-1256" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-5.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-6.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 6" class="alignnone appear no-display wp-image-1257" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-6.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-7.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 7" class="alignnone appear no-display wp-image-1258" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-7.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-8.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 8" class="alignnone appear no-display wp-image-1259" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-8.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-9.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 9" class="alignnone appear no-display wp-image-1260" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-9.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-10.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 10" class="alignnone appear no-display wp-image-1261" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-10.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-11.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 11" class="alignnone appear no-display wp-image-1262" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-11.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-12.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 12" class="alignnone appear no-display wp-image-1263" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-12.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-13.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 13" class="alignnone appear no-display wp-image-1264" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-13.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-14.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 14" class="alignnone appear no-display wp-image-1265" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-14.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-15.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 15" class="alignnone appear no-display wp-image-1266" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-15.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-16.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 16" class="alignnone appear no-display wp-image-1267" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-16.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-17.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 17" class="alignnone appear no-display wp-image-1268" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-17.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-18.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 18" class="alignnone appear no-display wp-image-1269" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-18.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-19.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 19" class="alignnone appear no-display wp-image-1270" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-19.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-20.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 20" class="alignnone appear no-display wp-image-1271" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-20.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-21.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 21" class="alignnone appear no-display wp-image-1272" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-21.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><a href="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-22.jpg" rel="prettyPhoto" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: inherit; color: rgb(221, 62, 62); text-decoration: none; -webkit-transition: all 0.4s ease-in-out; transition: all 0.4s ease-in-out;"><img alt="hình ảnh bánh sinh nhật đẹp dễ thương nhất 22" class="alignnone appear no-display wp-image-1273" src="http://tapchianhdep.com/wp-content/uploads/2014/12/hinh-anh-banh-sinh-nhat-dep-de-thuong-nhat-22.jpg" style="-webkit-transition:all 0.4s ease-in-out; border:0px; font-family:inherit; height:auto; margin:0px 21px 21px 0px; max-width:100%; opacity:1; padding:0px; transition:all 0.4s ease-in-out; vertical-align:baseline; width:600px" /></a></p>\r\n</div>\r\n</div>\r\n', 0, 'true', 'cake', '2015-07-03 16:49:04', '2015-07-07 14:17:53', 419, '/data/image/food/9.jpg', NULL, 110000.00, 0, '', NULL),
(48, 'CAKE1', 'Bánh sinh nhật BSN 86', 'banh-sinh-nhat-bsn-86', 'http://banhngononline.com/components/com_product/img/product/chinhsuaaaaaaaaaaaaa_1431809523.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:42', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(49, 'CAKE2', 'Bánh sinh nhật BSN 85', 'banh-sinh-nhat-bsn-85', 'http://banhngononline.com/components/com_product/img/product/thuuuuuuuuuuuu_1428560062.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(50, 'CAKE3', 'Bánh sinh nhật BSN 84', 'banh-sinh-nhat-bsn-84', 'http://banhngononline.com/components/com_product/img/product/lauuuuudaiiiiiii_1428214583.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 550000.00, 0, NULL, NULL),
(51, 'CAKE4', 'Bánh sinh nhật BSN 83', 'banh-sinh-nhat-bsn-83', 'http://banhngononline.com/components/com_product/img/product/DSC_1350_1428214509.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(52, 'CAKE5', 'Banh Con Giap BCG526', 'banh-con-giap-bcg526', 'http://banhngononline.com/components/com_product/img/product/gaaaaaaaaaaaaaaaa_1428214230.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(53, 'CAKE6', 'Banh Con Giap BCG525', 'banh-con-giap-bcg525', 'http://banhngononline.com/components/com_product/img/product/52555555555555_1428049822.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(54, 'CAKE7', 'Banh Con Giap BCG524', 'banh-con-giap-bcg524', 'http://banhngononline.com/components/com_product/img/product/524444444444444_1428049499.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(55, 'CAKE8', 'Bánh sinh nhật BSN 82', 'banh-sinh-nhat-bsn-82', 'http://banhngononline.com/components/com_product/img/product/82000000000000000000_1428048709.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(56, 'CAKE9', 'Bánh sinh nhật BSN 81', 'banh-sinh-nhat-bsn-81', 'http://banhngononline.com/components/com_product/img/product/begaiiiiiiiiiiiii_1428048550.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(57, 'CAKE10', 'Bánh sinh nhật BSN 80', 'banh-sinh-nhat-bsn-80', 'http://banhngononline.com/components/com_product/img/product/800000000000000000_1428048403.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(58, 'CAKE11', 'Bánh sinh nhật BSN 79', 'banh-sinh-nhat-bsn-79', 'http://banhngononline.com/components/com_product/img/product/799999999999999999_1428048225.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(59, 'CAKE12', 'Bánh sinh nhật BSN 78', 'banh-sinh-nhat-bsn-78', 'http://banhngononline.com/components/com_product/img/product/danglai111111111_1428048036.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(60, 'CAKE13', 'Bánh sinh nhật BSN 77', 'banh-sinh-nhat-bsn-77', 'http://banhngononline.com/components/com_product/img/product/7777777777777_1428047680.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(61, 'CAKE14', 'Bánh sinh nhật BSN 76', 'banh-sinh-nhat-bsn-76', 'http://banhngononline.com/components/com_product/img/product/dangaaaaaaaaaaaa_1428047484.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(62, 'CAKE15', 'Bánh sinh nhật BSN 75', 'banh-sinh-nhat-bsn-75', 'http://banhngononline.com/components/com_product/img/product/ok4_1428044716.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:19:43', NULL, 419, NULL, NULL, 550000.00, 0, NULL, NULL),
(63, 'CAKE16', 'Bánh sinh nhật BSN 74', 'banh-sinh-nhat-bsn-74', 'http://banhngononline.com/components/com_product/img/product/aaaaaaaaannnnnnnnnnnnn_1428213935.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(64, 'CAKE17', 'Bánh sinh nhật BSN 73', 'banh-sinh-nhat-bsn-73', 'http://banhngononline.com/components/com_product/img/product/ok2_1428043205.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(65, 'CAKE18', 'Bánh sinh nhật BSN 72', 'banh-sinh-nhat-bsn-72', 'http://banhngononline.com/components/com_product/img/product/OK_1428042664.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(66, 'CAKE19', 'Bánh sinh nhật BSN 71', 'banh-sinh-nhat-bsn-71', 'http://banhngononline.com/components/com_product/img/product/4444_1428041740.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(67, 'CAKE20', 'Bánh sinh nhật BSN 70', 'banh-sinh-nhat-bsn-70', 'http://banhngononline.com/components/com_product/img/product/airbi_1428028160.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(68, 'CAKE21', 'Bánh sinh nhật BSN 69', 'banh-sinh-nhat-bsn-69', 'http://banhngononline.com/components/com_product/img/product/2632_1410482163.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 400000.00, 0, NULL, NULL),
(69, 'CAKE22', 'Bánh cưới', 'banh-cuoi', 'http://banhngononline.com/components/com_product/img/product/banh-cuoi-075_1410420724.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 0.00, 0, NULL, NULL),
(70, 'CAKE23', 'Banh sinh nhat 68', 'banh-sinh-nhat-68', 'http://banhngononline.com/components/com_product/img/product/7234_1410418186.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(71, 'CAKE24', 'Banh sinh nhat 67', 'banh-sinh-nhat-67', 'http://banhngononline.com/components/com_product/img/product/12_1410417992.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(72, 'CAKE25', 'Bánh sinh nhật BSN 66', 'banh-sinh-nhat-bsn-66', 'http://banhngononline.com/components/com_product/img/product/20_1410416852.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(73, 'CAKE26', 'Bánh sinh nhật BSN 65', 'banh-sinh-nhat-bsn-65', 'http://banhngononline.com/components/com_product/img/product/7252_1409965377.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(74, 'CAKE27', 'Bánh sinh nhật BSN 64', 'banh-sinh-nhat-bsn-64', 'http://banhngononline.com/components/com_product/img/product/584_1409965018.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(75, 'CAKE28', 'Bánh sinh nhật BSN 63', 'banh-sinh-nhat-bsn-63', 'http://banhngononline.com/components/com_product/img/product/552_1409964943.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:21', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(76, 'CAKE29', 'Bánh sinh nhật BSN 62', 'banh-sinh-nhat-bsn-62', 'http://banhngononline.com/components/com_product/img/product/424_320x320_1409964826.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:21', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(77, 'CAKE30', 'Bánh sinh nhật BSN 61', 'banh-sinh-nhat-bsn-61', 'http://banhngononline.com/components/com_product/img/product/468_1408501022.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:21', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(78, 'CAKE31', 'Bánh sinh nhật BSN 60', 'banh-sinh-nhat-bsn-60', 'http://banhngononline.com/components/com_product/img/product/1933_1408500931.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(79, 'CAKE32', 'Bánh sinh nhật BSN 59', 'banh-sinh-nhat-bsn-59', 'http://banhngononline.com/components/com_product/img/product/24_1408339052.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(80, 'CAKE33', 'Bánh sinh nhật BSN 58', 'banh-sinh-nhat-bsn-58', 'http://banhngononline.com/components/com_product/img/product/483_1407913431.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(81, 'CAKE34', 'Bánh sinh nhật BSN 57', 'banh-sinh-nhat-bsn-57', 'http://banhngononline.com/components/com_product/img/product/1_1407912208.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(82, 'CAKE35', 'Bánh sinh nhật BSN 56', 'banh-sinh-nhat-bsn-56', 'http://banhngononline.com/components/com_product/img/product/f10_1406702661.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:24', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(83, 'CAKE36', 'Bánh sinh nhật BSN 55', 'banh-sinh-nhat-bsn-55', 'http://banhngononline.com/components/com_product/img/product/562_1406702295.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(84, 'CAKE37', 'Bánh sinh nhật BSN 54', 'banh-sinh-nhat-bsn-54', 'http://banhngononline.com/components/com_product/img/product/24424_1405735781.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 750000.00, 0, NULL, NULL),
(85, 'CAKE38', 'Bánh sinh nhật BSN 53', 'banh-sinh-nhat-bsn-53', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_12_1397638720.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(86, 'CAKE39', 'Bánh sinh nhật BSN 52', 'banh-sinh-nhat-bsn-52', 'http://banhngononline.com/components/com_product/img/product/roseheart_1397440739.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(87, 'CAKE40', 'Bánh sinh nhật BSN 51', 'banh-sinh-nhat-bsn-51', 'http://banhngononline.com/components/com_product/img/product/BSN51_1397440466.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 500000.00, 0, NULL, NULL),
(88, 'CAKE41', 'Bánh sinh nhật BSN 50', 'banh-sinh-nhat-bsn-50', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_10_1397274631.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(89, 'CAKE42', 'Bánh sinh nhật BSN 49', 'banh-sinh-nhat-bsn-49', 'http://banhngononline.com/components/com_product/img/product/small_xdf1362847956_1397104354.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(90, 'CAKE43', 'Bánh sinh nhật BSN 48', 'banh-sinh-nhat-bsn-48', 'http://banhngononline.com/components/com_product/img/product/BSN 48_1397102710.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(91, 'CAKE44', 'Bánh kem noel BKN 718', 'banh-kem-noel-bkn-718', 'http://banhngononline.com/components/com_product/img/product/8620_197780990408055_384838991_n_1385448', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(92, 'CAKE45', 'Bánh kem noel BKN 717', 'banh-kem-noel-bkn-717', 'http://banhngononline.com/components/com_product/img/product/BANHNOEL_1385197325.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:25', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(93, 'CAKE46', 'Bánh Sinh Nhật BSN 47', 'banh-sinh-nhat-bsn-47', 'http://banhngononline.com/components/com_product/img/product/ANHDANG_1383665574.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(94, 'CAKE47', 'Bánh Sinh Nhật BSN 46', 'banh-sinh-nhat-bsn-46', 'http://banhngononline.com/components/com_product/img/product/P1020763_1383617823.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(95, 'CAKE48', 'Banh cupcake phủ kem', 'banh-cupcake-phu-kem', 'http://banhngononline.com/components/com_product/img/product/small_nnw1359612916_1379414953.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 15000.00, 0, NULL, NULL),
(96, 'CAKE49', 'Bánh Sinh Nhật BSN 45', 'banh-sinh-nhat-bsn-45', 'http://banhngononline.com/components/com_product/img/product/small_bag1368448979_1379414538.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(97, 'CAKE50', 'Banh cupcake phủ kem CPK 08', 'banh-cupcake-phu-kem-cpk-08', 'http://banhngononline.com/components/com_product/img/product/DSC_0778_1379245549.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 15000.00, 0, NULL, NULL),
(98, 'CAKE51', 'Bánh Sinh Nhật BSN 44', 'banh-sinh-nhat-bsn-44', 'http://banhngononline.com/components/com_product/img/product/P1020688_1379057462.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(99, 'CAKE52', 'Bánh Sinh Nhật BSN 43', 'banh-sinh-nhat-bsn-43', 'http://banhngononline.com/components/com_product/img/product/P1020680_1378460650.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:46', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(100, 'CAKE53', 'Bánh Sinh Nhật BSN 42', 'banh-sinh-nhat-bsn-42', 'http://banhngononline.com/components/com_product/img/product/sieunhan2_1377907572.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(101, 'CAKE54', 'Bánh Sinh Nhật BSN 41', 'banh-sinh-nhat-bsn-41', 'http://banhngononline.com/components/com_product/img/product/Copy of heinenken boy 2_1377822140.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(102, 'CAKE55', 'Bánh Sinh Nhật BSN 40', 'banh-sinh-nhat-bsn-40', 'http://banhngononline.com/components/com_product/img/product/small_oro1375804845_1377737278.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(103, 'CAKE56', 'Bánh con giáp BCG 523', 'banh-con-giap-bcg-523', 'http://banhngononline.com/components/com_product/img/product/ade1369574799_1377655576.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(104, 'CAKE57', 'Bánh Sinh Nhật BSN 39', 'banh-sinh-nhat-bsn-39', 'http://banhngononline.com/components/com_product/img/product/DSC_0729_1377523046.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(105, 'CAKE58', 'Bánh Sinh Nhật BSN 38', 'banh-sinh-nhat-bsn-38', 'http://banhngononline.com/components/com_product/img/product/bao dinh_1377480223.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(106, 'CAKE59', 'Bánh Sinh Nhật BSN 37', 'banh-sinh-nhat-bsn-37', 'http://banhngononline.com/components/com_product/img/product/DSC_0725_1377351250.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:47', NULL, 419, NULL, NULL, 0.00, 0, NULL, NULL),
(107, 'CAKE61', 'Bánh Sinh Nhật BSN 36', 'banh-sinh-nhat-bsn-36', 'http://banhngononline.com/components/com_product/img/product/banh-in-hinh-009-150x150_1377280556.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(108, 'CAKE62', 'Bánh Sinh Nhật BSN 34', 'banh-sinh-nhat-bsn-34', 'http://banhngononline.com/components/com_product/img/product/girl_1377240893.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(109, 'CAKE63', 'Banh sinh nhat BSN 30', 'banh-sinh-nhat-bsn-30', 'http://banhngononline.com/components/com_product/img/product/IMG_20130707_142607_1373332758.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 0.00, 0, NULL, NULL),
(110, 'CAKE64', 'banh kem ngho nghinh BKNN228', 'banh-kem-ngho-nghinh-bknn228', 'http://banhngononline.com/components/com_product/img/product/P1020449_1371878618.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(111, 'CAKE65', 'Banh Sinh nhat BCG522', 'banh-sinh-nhat-bcg522', 'http://banhngononline.com/components/com_product/img/product/P1020528_1371878290.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(112, 'CAKE66', 'Banh sinh Nhat BSN29', 'banh-sinh-nhat-bsn29', 'http://banhngononline.com/components/com_product/img/product/P1020452_1371877978.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(113, 'CAKE67', 'Banh sinh nhat BSN 27', 'banh-sinh-nhat-bsn-27', 'http://banhngononline.com/components/com_product/img/product/img_0972r_1371547149.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:54', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(114, 'CAKE76', 'Banh Sinh Nhat BSN 26', 'banh-sinh-nhat-bsn-26', 'http://banhngononline.com/components/com_product/img/product/Rong xanh_1371546748.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(115, 'CAKE77', 'Banh sinh nhat BSN 25', 'banh-sinh-nhat-bsn-25', 'http://banhngononline.com/components/com_product/img/product/mickeyminnie_1371546482.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(116, 'CAKE78', 'Banh sinh nhat BSN 24', 'banh-sinh-nhat-bsn-24', 'http://banhngononline.com/components/com_product/img/product/number one cake for girl_1371546238.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(117, 'CAKE79', 'Bánh Sinh Nhật BSN 23', 'banh-sinh-nhat-bsn-23', 'http://banhngononline.com/components/com_product/img/product/barbie-doll-cake_1368454780.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 0.00, 0, NULL, NULL),
(118, 'CAKE80', 'Bánh Sinh Nhật BSN 21', 'banh-sinh-nhat-bsn-21', 'http://banhngononline.com/components/com_product/img/product/bsn cb 12_128x128_1368403731.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:58', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(119, 'CAKE81', 'Bánh Sinh Nhật BSN 20', 'banh-sinh-nhat-bsn-20', 'http://banhngononline.com/components/com_product/img/product/bsncb332_1368403532.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(120, 'CAKE82', 'Bánh Sinh Nhật BSN 19', 'banh-sinh-nhat-bsn-19', 'http://banhngononline.com/components/com_product/img/product/yvf1354601953_1368403277.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(121, 'CAKE83', 'Bánh Sinh Nhật BSN 18', 'banh-sinh-nhat-bsn-18', 'http://banhngononline.com/components/com_product/img/product/hcg1349104891_1368402641.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 0.00, 0, NULL, NULL),
(122, 'CAKE84', 'Bánh Sinh Nhật BSN 17', 'banh-sinh-nhat-bsn-17', 'http://banhngononline.com/components/com_product/img/product/BSN CB36_1368402386.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(123, 'CAKE85', 'Bánh Sinh Nhật BSN 16', 'banh-sinh-nhat-bsn-16', 'http://banhngononline.com/components/com_product/img/product/zgg1355154852_1368402197.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(124, 'CAKE86', 'Bánh Sinh Nhật BSN 15', 'banh-sinh-nhat-bsn-15', 'http://banhngononline.com/components/com_product/img/product/BSN CB 50_1368401734.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(125, 'CAKE87', 'Bánh Sinh Nhật BSN 14', 'banh-sinh-nhat-bsn-14', 'http://banhngononline.com/components/com_product/img/product/SAM_0526_1368401421.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 450000.00, 0, NULL, NULL),
(126, 'CAKE88', 'Bánh Sinh Nhật BSN 13', 'banh-sinh-nhat-bsn-13', 'http://banhngononline.com/components/com_product/img/product/SAM_0532_1368401138.JPG', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 500000.00, 0, NULL, NULL),
(127, 'CAKE89', 'Bánh Sinh Nhật BSN 12', 'banh-sinh-nhat-bsn-12', 'http://banhngononline.com/components/com_product/img/product/hinh_bsn_1_1368360175.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 700000.00, 0, NULL, NULL),
(128, 'CAKE90', 'Bánh kem Noel BKN716', 'banh-kem-noel-bkn716', 'http://banhngononline.com/components/com_product/img/product/BKN 716_1354804215.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:22:59', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(129, 'CAKE91', 'Bánh kem Noel BKN715', 'banh-kem-noel-bkn715', 'http://banhngononline.com/components/com_product/img/product/BKN 715_1354802914.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL);
INSERT INTO `_product` (`product_id`, `product_code`, `product_title`, `product_alias`, `product_thumb`, `product_cover`, `product_desc`, `product_content`, `product_position`, `product_status`, `product_type`, `product_insert`, `product_update`, `product_category`, `product_images`, `product_token`, `product_price`, `product_view`, `product_tag`, `product_lock`) VALUES
(130, 'CAKE92', 'Bánh kem Noel BKN714', 'banh-kem-noel-bkn714', 'http://banhngononline.com/components/com_product/img/product/BKN 714_1354802179.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(131, 'CAKE93', 'Bánh kem BKV 416', 'banh-kem-bkv-416', 'http://banhngononline.com/components/com_product/img/product/kem-large_1354520293.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 200000.00, 0, NULL, NULL),
(132, 'CAKE94', 'Bánh Sinh Nhật BSN119', 'banh-sinh-nhat-bsn119', 'http://banhngononline.com/components/com_product/img/product/BSN119_1354466601.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(133, 'CAKE95', 'Bánh BSN750', 'banh-bsn750', 'http://banhngononline.com/components/com_product/img/product/IMG_2201_1353823214.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(134, 'CAKE96', 'Bánh kem Noel 713', 'banh-kem-noel-713', 'http://banhngononline.com/components/com_product/img/product/noelcake6_1329790225.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(135, 'CAKE97', 'Bánh Noel BKN712', 'banh-noel-bkn712', 'http://banhngononline.com/components/com_product/img/product/8620_197780990408055_384838991_n_1387371', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:11', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(136, 'CAKE98', 'Bánh Noel BKN711', 'banh-noel-bkn711', 'http://banhngononline.com/components/com_product/img/product/noelcake2_1329788847.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(137, 'CAKE99', 'Bánh sinh nhật BNS116', 'banh-sinh-nhat-bns116', 'http://banhngononline.com/components/com_product/img/product/twonumbercake_1326429866.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(138, 'CAKE100', 'Cupcake phủ kem CPK617', 'cupcake-phu-kem-cpk617', 'http://banhngononline.com/components/com_product/img/product/hinh_bck_5_1368454980.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 15000.00, 0, NULL, NULL),
(139, 'CAKE101', 'Cupcake phủ kem CPK616', 'cupcake-phu-kem-cpk616', 'http://banhngononline.com/components/com_product/img/product/fishschoole_1326255510.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 400000.00, 0, NULL, NULL),
(140, 'CAKE102', 'Cupcake phủ kem CPK615', 'cupcake-phu-kem-cpk615', 'http://banhngononline.com/components/com_product/img/product/flyingballs_1326254004.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 450000.00, 0, NULL, NULL),
(141, 'CAKE103', 'Cupcake phủ kem CPK614', 'cupcake-phu-kem-cpk614', 'http://banhngononline.com/components/com_product/img/product/Birthday cupcakes_e_1326185633.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 360000.00, 0, NULL, NULL),
(142, 'CAKE104', 'Cupcake phủ kem CPK613', 'cupcake-phu-kem-cpk613', 'http://banhngononline.com/components/com_product/img/product/rosekingcake_1326184098.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(143, 'CAKE105', 'Cupcake phủ kem CPK612', 'cupcake-phu-kem-cpk612', 'http://banhngononline.com/components/com_product/img/product/cupcakephukem612_e_1326182463.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:12', NULL, 419, NULL, NULL, 240000.00, 0, NULL, NULL),
(144, 'CAKE106', 'Bánh con giáp BCG521', 'banh-con-giap-bcg521', 'http://banhngononline.com/components/com_product/img/product/Snakecakes_1326094461.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:15', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(145, 'CAKE107', 'Bánh con giáp BCG519', 'banh-con-giap-bcg519', 'http://banhngononline.com/components/com_product/img/product/Pigcakes1_1326096456.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:15', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(146, 'CAKE108', 'Bánh con giáp BCG518', 'banh-con-giap-bcg518', 'http://banhngononline.com/components/com_product/img/product/catcake_1326084335.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:15', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(147, 'CAKE109', 'Bánh con giáp BCG517', 'banh-con-giap-bcg517', 'http://banhngononline.com/components/com_product/img/product/horse cake_1377480545.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:15', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(148, 'CAKE110', 'Bánh con giáp BCG516', 'banh-con-giap-bcg516', 'http://banhngononline.com/components/com_product/img/product/dattenfilemoi_1377738262.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(149, 'CAKE111', 'Bánh kem ngộ nghĩnh BKNN227', 'banh-kem-ngo-nghinh-bknn227', 'http://banhngononline.com/components/com_product/img/product/small_icu1348072133_1377737830.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(150, 'CAKE112', 'Bánh con giáp BCG513', 'banh-con-giap-bcg513', 'http://banhngononline.com/components/com_product/img/product/Monkeycake_1325836459.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(151, 'CAKE113', 'Bánh con giáp BCG512', 'banh-con-giap-bcg512', 'http://banhngononline.com/components/com_product/img/product/_1325833232.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(152, 'CAKE114', 'Bánh con giáp BCG511', 'banh-con-giap-bcg511', 'http://banhngononline.com/components/com_product/img/product/chuotttttttttttt_1428214363.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(153, 'CAKE115', 'Bánh kem Valentine BKV415', 'banh-kem-valentine-bkv415', 'http://banhngononline.com/components/com_product/img/product/tuixach_1325831941.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(154, 'CAKE116', 'Bánh kem BKV414', 'banh-kem-bkv414', 'http://banhngononline.com/components/com_product/img/product/yourname2_1325821389.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 200000.00, 0, NULL, NULL),
(155, 'CAKE117', 'Bánh kem valentine BKV413', 'banh-kem-valentine-bkv413', 'http://banhngononline.com/components/com_product/img/product/namecake_1325754279.png', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(156, 'CAKE118', 'Bánh kem Valentine BKV412', 'banh-kem-valentine-bkv412', 'http://banhngononline.com/components/com_product/img/product/Marboro_1325750887.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(157, 'CAKE119', 'Bánh kem valentine BKV411', 'banh-kem-valentine-bkv411', 'http://banhngononline.com/components/com_product/img/product/banhkemvalentin3_1329792186.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 200000.00, 0, NULL, NULL),
(158, 'CAKE120', 'Bánh cưới BKC315', 'banh-cuoi-bkc315', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi2_1325738696.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:16', NULL, 419, NULL, NULL, 1500000.00, 0, NULL, NULL),
(159, 'CAKE121', 'Bánh cưới BKC314', 'banh-cuoi-bkc314', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi3_1325734842.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', '2015-07-10 09:40:04', 421, NULL, NULL, 1000000.00, 0, NULL, NULL),
(160, 'CAKE122', 'Bánh cưới BKC313', 'banh-cuoi-bkc313', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi4_1325734348.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', '2015-07-06 11:22:08', 419, NULL, NULL, 1000000.00, 0, NULL, NULL),
(161, 'CAKE123', 'Bánh cưới BKC312', 'banh-cuoi-bkc312', 'http://banhngononline.com/components/com_product/img/product/Banhcuoi5_1325732133.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', '2015-07-03 21:47:38', 420, NULL, NULL, 1500000.00, 0, NULL, NULL),
(162, 'CAKE124', 'Bánh kem ngộ nghĩnh BKNN226', 'banh-kem-ngo-nghinh-bknn226', 'http://banhngononline.com/components/com_product/img/product/images (6)_1354518872.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 300000.00, 0, NULL, NULL),
(163, 'CAKE125', 'Bánh sinh nhật BSN111', 'banh-sinh-nhat-bsn111', 'http://banhngononline.com/components/com_product/img/product/images 2_1324971479.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(164, 'CAKE126', 'Bánh sinh nhật BSN113', 'banh-sinh-nhat-bsn113', 'http://banhngononline.com/components/com_product/img/product/banhhopqua_1325042436.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(165, 'CAKE127', 'Bánh sinh nhật BSN112', 'banh-sinh-nhat-bsn112', 'http://banhngononline.com/components/com_product/img/product/BSN116_1354366771.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(166, 'CAKE128', 'Bánh sinh nhật BSN114', 'banh-sinh-nhat-bsn114', 'http://banhngononline.com/components/com_product/img/product/chocolatecake_1325044405.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(167, 'CAKE129', 'Bánh sinh nhật BSN115', 'banh-sinh-nhat-bsn115', 'http://banhngononline.com/components/com_product/img/product/banh-sinh-nhat_1354366889.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(168, 'CAKE130', 'Bánh kem ngộ nghĩnh BKNN212', 'banh-kem-ngo-nghinh-bknn212', 'http://banhngononline.com/components/com_product/img/product/ChuotMickeycake_1325057344.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 250000.00, 0, NULL, NULL),
(169, 'CAKE131', 'Bánh kem ngộ nghĩnh BKNN213', 'banh-kem-ngo-nghinh-bknn213', 'http://banhngononline.com/components/com_product/img/product/11_1405735424.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(170, 'CAKE132', 'Bánh kem ngộ nghĩnh BKNN217', 'banh-kem-ngo-nghinh-bknn217', 'http://banhngononline.com/components/com_product/img/product/Chuvoicon_1325061772.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(171, 'CAKE133', 'Bánh kem ngộ nghĩnh BKNN216', 'banh-kem-ngo-nghinh-bknn216', 'http://banhngononline.com/components/com_product/img/product/BKNN216_1354465119.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 350000.00, 0, NULL, NULL),
(172, 'CAKE134', 'Bánh kem ngộ nghĩnh BKNN219', 'banh-kem-ngo-nghinh-bknn219', 'http://banhngononline.com/components/com_product/img/product/Chodom2_1325092672.jpg', NULL, NULL, NULL, 0, 'true', 'cake', '2015-07-03 21:23:20', NULL, 419, NULL, NULL, 370000.00, 0, NULL, NULL),
(173, 'CAKE136', 'Bánh kem ngộ nghĩnh BKNN224', 'banh-kem-ngo-nghinh-bknn224', 'http://banhngononline.com/components/com_product/img/product/McQueencar_1325216317.jpg', NULL, '', '', 0, 'true', 'cake', '2015-07-03 21:23:25', '2016-03-14 08:47:18', 420, '', NULL, 371000.00, 0, 'bánh sinh nhật, bánh kem', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_seo`
--

CREATE TABLE IF NOT EXISTS `_seo` (
  `seo_id` int(11) NOT NULL,
  `seo_item` varchar(100) DEFAULT NULL,
  `seo_social_title` varchar(255) DEFAULT NULL,
  `seo_social_image` varchar(255) DEFAULT NULL,
  `seo_social_desc` varchar(255) DEFAULT NULL,
  `seo_social_keyword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_spin`
--

CREATE TABLE IF NOT EXISTS `_spin` (
  `spin_id` int(3) NOT NULL,
  `spin_name` varchar(255) DEFAULT NULL,
  `spin_number` int(3) DEFAULT '0',
  `spin_active` int(3) DEFAULT '0',
  `spin_rate` float(4,2) DEFAULT '0.00',
  `spin_status` varchar(10) DEFAULT NULL,
  `spin_insert` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `spin_update` datetime DEFAULT NULL,
  `spin_active_rate` float(4,2) DEFAULT '0.00',
  `spin_value` int(2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_spin`
--

INSERT INTO `_spin` (`spin_id`, `spin_name`, `spin_number`, `spin_active`, `spin_rate`, `spin_status`, `spin_insert`, `spin_update`, `spin_active_rate`, `spin_value`) VALUES
(1, 'Cây rửa đui', 25, 2, 0.90, 'true', '2016-03-18 21:20:11', '2016-03-18 21:20:11', 0.00, 5),
(2, 'Khuân silicon', 20, 1, 1.00, 'true', '2016-03-18 15:43:50', '2016-03-15 10:34:53', 0.10, 10),
(3, 'Khuân đổ socola', 25, 0, 1.00, 'false', '2016-03-18 15:35:46', '2016-03-15 10:37:14', 0.00, NULL),
(4, 'Cân điện tử', 2, 1, 1.00, 'true', '2016-03-18 22:18:56', '2016-03-18 22:18:56', 0.10, 8),
(5, 'Ly giấy chịu nhiệt', 30, 0, 1.00, 'true', '2016-03-18 14:22:02', NULL, 0.00, 14),
(6, 'Hộp bột soda', 15, 1, 1.00, 'true', '2016-03-18 14:22:02', NULL, 0.00, 1),
(7, 'Hương Vanila', 20, 0, 1.00, 'true', '2016-03-18 14:22:02', NULL, 0.00, 12),
(8, 'Mã giảm giá 3%', 999, 1, 33.00, 'true', '2016-03-18 21:30:14', '2016-03-18 21:30:14', 0.30, 13),
(9, 'Mã giảm giá 5%', 999, 1, 14.00, 'true', '2016-03-18 16:07:34', NULL, 0.40, 3),
(10, 'Mã giảm giá 10%', 999, 0, 6.00, 'true', '2016-03-18 14:22:02', NULL, 0.00, 0),
(11, 'Mã giảm giá 15%', 999, 0, 4.00, 'true', '2016-03-18 14:22:02', NULL, 0.00, 6),
(12, 'Chúc bạn may mắn lần sau', 9999, 1, 9.00, 'true', '2016-03-18 15:36:27', NULL, 0.20, 2),
(13, 'Tiếc quá, cố lên nào !', 9999, 1, 9.00, 'true', '2016-03-18 15:43:28', NULL, 0.10, 7),
(14, 'Hụt mất rồi, huhu ...', 9999, 1, 9.00, 'true', '2016-03-18 16:07:25', NULL, 0.20, 4),
(15, 'Cố lên nào bạn ơi', 9999, 1, 9.00, 'true', '2016-03-18 15:43:59', NULL, 0.10, 11),
(16, 'Hụt mất rồi, huhu ...', 9999, 1, 9.00, 'true', '2016-03-18 15:44:11', NULL, 0.10, 15),
(17, 'Chúc bạn may mắn lần sau', 9999, 0, 9.00, 'true', '2016-03-18 15:36:31', NULL, 0.00, 9);

-- --------------------------------------------------------

--
-- Table structure for table `_user`
--

CREATE TABLE IF NOT EXISTS `_user` (
  `user_id` int(11) NOT NULL,
  `user_user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(32) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_insert` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_status` varchar(10) DEFAULT 'true',
  `user_spin_num` int(11) DEFAULT '0',
  `user_provider` varchar(20) DEFAULT NULL,
  `user_display` varchar(50) DEFAULT NULL,
  `user_identifier` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_user`
--

INSERT INTO `_user` (`user_id`, `user_user_name`, `user_password`, `user_email`, `user_insert`, `user_update`, `user_status`, `user_spin_num`, `user_provider`, `user_display`, `user_identifier`) VALUES
(1, 'khuongxuantruong@gmail.com', NULL, 'khuongxuantruong@gmail.com', '2016-03-18 14:10:06', '2016-03-18 14:10:06', 'true', 3, NULL, NULL, NULL),
(2, NULL, NULL, 'creativestudionoreply@gmail.com', '2016-03-18 14:10:06', '2016-03-18 14:10:06', 'true', 3, NULL, NULL, NULL),
(5, 'khuongxuantruong2@gmail.com', '2d7d5f66eab6e84d6bdf440f5722c858', 'khuongxuantruong2@gmail.com', '2016-03-18 14:10:06', '2016-03-18 14:10:06', 'true', 3, NULL, NULL, NULL),
(6, 'khuongxuantruong@gmail.com3', '2d7d5f66eab6e84d6bdf440f5722c858', 'khuongxuantruong4@gmail.com', '2016-03-18 16:07:34', '2016-03-18 16:07:34', 'true', 209, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_wheel`
--

CREATE TABLE IF NOT EXISTS `_wheel` (
  `wheel_id` int(11) NOT NULL,
  `wheel_spin_id` int(11) DEFAULT NULL,
  `wheel_user_id` int(11) DEFAULT NULL,
  `wheel_insert` datetime DEFAULT CURRENT_TIMESTAMP,
  `wheel_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `wheel_status` varchar(10) DEFAULT '0',
  `wheel_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_wheel`
--

INSERT INTO `_wheel` (`wheel_id`, `wheel_spin_id`, `wheel_user_id`, `wheel_insert`, `wheel_update`, `wheel_status`, `wheel_code`) VALUES
(6, 1, 1, '2016-03-16 09:32:57', NULL, '0', NULL),
(7, 12, 1, '2016-03-16 09:33:35', NULL, '0', NULL),
(8, 1, 1, '2016-03-16 09:33:43', NULL, '0', NULL),
(9, 1, 1, '2016-03-18 22:28:24', '2016-03-18 22:29:46', 'false', NULL),
(10, 12, 6, '2016-03-18 13:39:11', NULL, '0', NULL),
(11, 12, 6, '2016-03-18 13:40:39', NULL, '0', NULL),
(12, 12, 6, '2016-03-18 14:08:12', NULL, '0', NULL),
(13, 1, 6, '2016-03-18 14:10:09', NULL, '0', NULL),
(14, 12, 6, '2016-03-18 14:10:20', NULL, '0', NULL),
(15, 1, 6, '2016-03-18 14:21:44', NULL, '0', NULL),
(16, 12, 6, '2016-03-18 14:22:13', NULL, '0', NULL),
(17, 8, 6, '2016-03-18 14:42:07', NULL, '0', NULL),
(18, 12, 6, '2016-03-18 14:42:16', NULL, '0', NULL),
(19, 13, 6, '2016-03-18 15:43:28', NULL, '0', NULL),
(20, 2, 6, '2016-03-18 15:43:50', NULL, '0', NULL),
(21, 9, 6, '2016-03-18 15:43:56', NULL, '0', NULL),
(22, 15, 6, '2016-03-18 15:43:59', NULL, '0', NULL),
(23, 4, 6, '2016-03-18 15:44:02', NULL, '0', NULL),
(24, 16, 6, '2016-03-18 15:44:11', NULL, '0', NULL),
(25, 8, 6, '2016-03-18 15:44:20', NULL, '0', NULL),
(26, 9, 6, '2016-03-18 16:05:33', NULL, '0', NULL),
(27, 9, 6, '2016-03-18 16:06:18', NULL, '0', NULL),
(28, 14, 6, '2016-03-18 22:28:45', '2016-03-18 22:29:47', 'false', NULL),
(29, 8, 6, '2016-03-18 16:07:14', '2016-03-18 22:29:48', 'false', NULL),
(30, 14, 6, '2016-03-18 16:07:25', NULL, '0', NULL),
(31, 9, 6, '2016-03-18 16:07:34', NULL, '0', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_users`
--
ALTER TABLE `auth_users`
  ADD PRIMARY KEY (`ause_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `lang_alias`
--
ALTER TABLE `lang_alias`
  ADD PRIMARY KEY (`als_id`),
  ADD UNIQUE KEY `_title_lang` (`als_lang`,`als_token`) USING BTREE;

--
-- Indexes for table `lang_category`
--
ALTER TABLE `lang_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `lang_content`
--
ALTER TABLE `lang_content`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `_content_lang` (`co_token`,`co_lang`);

--
-- Indexes for table `lang_data`
--
ALTER TABLE `lang_data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `lang_desc`
--
ALTER TABLE `lang_desc`
  ADD PRIMARY KEY (`de_lang`,`de_token`),
  ADD UNIQUE KEY `_desc_lang` (`de_lang`,`de_token`);

--
-- Indexes for table `lang_price`
--
ALTER TABLE `lang_price`
  ADD PRIMARY KEY (`pri_lang`,`pri_token`);

--
-- Indexes for table `lang_product`
--
ALTER TABLE `lang_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `lang_tag`
--
ALTER TABLE `lang_tag`
  ADD PRIMARY KEY (`tag_lang`,`tag_token`),
  ADD UNIQUE KEY `_title_lang` (`tag_lang`,`tag_token`) USING BTREE;

--
-- Indexes for table `lang_title`
--
ALTER TABLE `lang_title`
  ADD PRIMARY KEY (`ti_lang`,`ti_token`),
  ADD UNIQUE KEY `_title_lang` (`ti_lang`,`ti_token`);

--
-- Indexes for table `_album`
--
ALTER TABLE `_album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `_category`
--
ALTER TABLE `_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `_chart`
--
ALTER TABLE `_chart`
  ADD PRIMARY KEY (`chart_id`);

--
-- Indexes for table `_contactus`
--
ALTER TABLE `_contactus`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `_content`
--
ALTER TABLE `_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `_data`
--
ALTER TABLE `_data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `_image`
--
ALTER TABLE `_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `_product`
--
ALTER TABLE `_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `_seo`
--
ALTER TABLE `_seo`
  ADD PRIMARY KEY (`seo_id`);

--
-- Indexes for table `_spin`
--
ALTER TABLE `_spin`
  ADD PRIMARY KEY (`spin_id`);

--
-- Indexes for table `_user`
--
ALTER TABLE `_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `_wheel`
--
ALTER TABLE `_wheel`
  ADD PRIMARY KEY (`wheel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_users`
--
ALTER TABLE `auth_users`
  MODIFY `ause_id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10025;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `lang_alias`
--
ALTER TABLE `lang_alias`
  MODIFY `als_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `lang_category`
--
ALTER TABLE `lang_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `lang_content`
--
ALTER TABLE `lang_content`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lang_data`
--
ALTER TABLE `lang_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `lang_product`
--
ALTER TABLE `lang_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `_album`
--
ALTER TABLE `_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT for table `_category`
--
ALTER TABLE `_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=444;
--
-- AUTO_INCREMENT for table `_chart`
--
ALTER TABLE `_chart`
  MODIFY `chart_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `_contactus`
--
ALTER TABLE `_contactus`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `_content`
--
ALTER TABLE `_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `_data`
--
ALTER TABLE `_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `_image`
--
ALTER TABLE `_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `_product`
--
ALTER TABLE `_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `_seo`
--
ALTER TABLE `_seo`
  MODIFY `seo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_spin`
--
ALTER TABLE `_spin`
  MODIFY `spin_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `_user`
--
ALTER TABLE `_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `_wheel`
--
ALTER TABLE `_wheel`
  MODIFY `wheel_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
