-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2018 at 12:57 AM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fresh_net`
--

-- --------------------------------------------------------

--
-- Table structure for table `aauth_groups`
--

CREATE TABLE `aauth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_groups`
--

INSERT INTO `aauth_groups` (`id`, `name`, `definition`) VALUES
(1, 'Admin', 'Superadmin Group'),
(2, 'Moderator', 'Client Admin Group'),
(3, 'Default', 'Default Access Group'),
(4, 'Member', 'Member Access Group'),
(5, 'Sales', 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_group_to_group`
--

CREATE TABLE `aauth_group_to_group` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `subgroup_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_login_attempts`
--

CREATE TABLE `aauth_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `login_attempts` tinyint(2) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_login_attempts`
--

INSERT INTO `aauth_login_attempts` (`id`, `ip_address`, `timestamp`, `login_attempts`) VALUES
(8, '182.69.249.86', '2017-12-11 12:24:52', 2),
(22, '::1', '2018-02-22 22:30:09', 4),
(23, '::1', '2018-02-22 22:37:40', 5),
(24, '::1', '2018-02-22 22:45:28', 4),
(39, '::1', '2018-05-17 18:23:27', 1),
(40, '::1', '2018-05-17 18:38:29', 4),
(43, '::1', '2018-05-17 19:10:29', 1),
(90, '202.142.80.108', '2018-06-28 12:46:22', 3),
(108, '::1', '2018-07-02 16:28:46', 1),
(135, '182.71.57.202', '2018-07-04 20:34:45', 1),
(143, '182.71.57.202', '2018-07-07 15:46:46', 1),
(145, '106.223.221.159', '2018-07-09 18:18:45', 1),
(155, '47.247.217.23', '2018-07-15 13:52:14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perms`
--

CREATE TABLE `aauth_perms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_perms`
--

INSERT INTO `aauth_perms` (`id`, `name`, `definition`) VALUES
(1, 'menu_dashboard', NULL),
(6, 'menu_menu', NULL),
(7, 'menu_auth', NULL),
(8, 'menu_user', NULL),
(9, 'menu_group', NULL),
(10, 'menu_access', NULL),
(11, 'menu_permission', NULL),
(14, 'menu_settings', NULL),
(15, 'user_list', NULL),
(16, 'user_update_status', NULL),
(17, 'user_export', NULL),
(18, 'user_add', NULL),
(19, 'user_update', NULL),
(20, 'user_update_profile', NULL),
(21, 'user_update_password', NULL),
(22, 'user_profile', NULL),
(23, 'user_view', NULL),
(24, 'user_delete', NULL),
(25, 'blog_list', NULL),
(26, 'blog_export', NULL),
(27, 'blog_add', NULL),
(28, 'blog_update', NULL),
(29, 'blog_view', NULL),
(30, 'blog_delete', NULL),
(50, 'group_list', NULL),
(51, 'group_export', NULL),
(52, 'group_add', NULL),
(53, 'group_update', NULL),
(54, 'group_view', NULL),
(55, 'group_delete', NULL),
(56, 'permission_list', NULL),
(57, 'permission_export', NULL),
(58, 'permission_add', NULL),
(59, 'permission_update', NULL),
(60, 'permission_view', NULL),
(61, 'permission_delete', NULL),
(62, 'access_list', NULL),
(63, 'access_add', NULL),
(64, 'access_update', NULL),
(65, 'menu_list', NULL),
(66, 'menu_add', NULL),
(67, 'menu_update', NULL),
(68, 'menu_delete', NULL),
(69, 'menu_save_ordering', NULL),
(70, 'menu_type_add', NULL),
(71, 'page_list', NULL),
(72, 'page_export', NULL),
(73, 'page_add', NULL),
(74, 'page_update', NULL),
(75, 'page_view', NULL),
(162, 'events_add', ''),
(77, 'setting', NULL),
(78, 'setting_update', NULL),
(89, 'menu_main_navigation', ''),
(118, 'menu_users', ''),
(119, 'menu_promocodes', ''),
(120, 'menu_agents', ''),
(122, 'menu_category', ''),
(123, 'menu_pages', ''),
(124, 'menu_about', ''),
(125, 'menu_about_us', ''),
(126, 'menu_contact_us', ''),
(127, 'menu_blog', ''),
(128, 'menu_blog_posts', ''),
(129, 'menu_blog_comments', ''),
(132, 'menu_shop', ''),
(133, 'menu_cart', ''),
(167, 'events_list', ''),
(135, 'menu_blog_category', ''),
(166, 'events_delete', ''),
(165, 'events_update', ''),
(139, 'menu_order_management', ''),
(140, 'menu_orders', ''),
(141, 'menu_announcements', ''),
(142, 'menu_marketing', ''),
(143, 'menu_cms', ''),
(144, 'menu_sliders', ''),
(145, 'menu_slider_category', ''),
(146, 'menu_email_templates', ''),
(164, 'events_view', ''),
(163, 'events_export', ''),
(149, 'menu_courses', ''),
(150, 'menu_course_levels', ''),
(151, 'menu_career', ''),
(152, 'menu_franchisee', ''),
(153, 'menu_contact_form', ''),
(154, 'menu_meeting', ''),
(155, 'menu_download', ''),
(156, 'menu_events', ''),
(157, 'menu_access_list', ''),
(158, 'menu_role_management', ''),
(159, 'menu_groups', ''),
(160, 'download_list', 'download_list'),
(168, 'menu_fresh-net', ''),
(169, 'menu_downloads', ''),
(170, 'menu_course_management', ''),
(171, 'menu_course_modules', ''),
(172, 'menu_courses_management', ''),
(173, 'menu_franchise', ''),
(174, 'menu_order', ''),
(175, 'menu_rating', ''),
(176, 'menu_course_modules_lectures', ''),
(177, 'course_modules_lectures_list', ''),
(178, 'course_modules_lectures_add', ''),
(179, 'course_modules_lectures_update', ''),
(180, 'course_modules_lectures_delete', ''),
(181, 'course_modules_lectures_view', ''),
(182, 'menu_offer', ''),
(183, 'menu_exclusive_offer', '');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_group`
--

CREATE TABLE `aauth_perm_to_group` (
  `perm_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_perm_to_group`
--

INSERT INTO `aauth_perm_to_group` (`perm_id`, `group_id`) VALUES
(77, 5),
(160, 2),
(78, 2),
(77, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(160, 3),
(160, 4),
(167, 2),
(162, 2),
(75, 2),
(74, 2),
(73, 2),
(72, 2),
(71, 2),
(64, 2),
(63, 2),
(62, 2),
(61, 2),
(60, 2),
(59, 2),
(58, 2),
(57, 2),
(165, 1),
(56, 2),
(55, 2),
(54, 2),
(53, 2),
(52, 2),
(51, 2),
(50, 2),
(30, 2),
(78, 3),
(29, 2),
(77, 3),
(78, 4),
(28, 2),
(77, 4),
(163, 3),
(163, 4),
(164, 5),
(167, 5),
(162, 5),
(75, 5),
(72, 5),
(71, 5),
(62, 5),
(56, 5),
(54, 5),
(50, 5),
(29, 5),
(28, 5),
(27, 5),
(26, 5),
(25, 5),
(15, 5),
(156, 5),
(155, 5),
(154, 5),
(143, 5),
(142, 5),
(135, 5),
(164, 4),
(129, 5),
(128, 5),
(127, 5),
(126, 5),
(125, 5),
(123, 5),
(120, 5),
(11, 5),
(10, 5),
(9, 5),
(8, 5),
(1, 5),
(165, 4),
(166, 4),
(167, 4),
(162, 4),
(75, 4),
(74, 4),
(73, 4),
(72, 4),
(71, 4),
(64, 4),
(63, 4),
(62, 4),
(61, 4),
(60, 4),
(59, 4),
(58, 4),
(57, 4),
(56, 4),
(55, 4),
(54, 4),
(53, 4),
(52, 4),
(51, 4),
(50, 4),
(30, 4),
(29, 4),
(28, 4),
(27, 4),
(26, 4),
(25, 4),
(24, 4),
(23, 4),
(22, 4),
(21, 4),
(20, 4),
(19, 4),
(18, 4),
(17, 4),
(16, 4),
(15, 4),
(175, 4),
(174, 4),
(173, 4),
(172, 4),
(171, 4),
(170, 4),
(169, 4),
(168, 4),
(159, 4),
(158, 4),
(157, 4),
(156, 4),
(155, 4),
(154, 4),
(153, 4),
(152, 4),
(151, 4),
(150, 4),
(149, 4),
(146, 4),
(145, 4),
(144, 4),
(143, 4),
(142, 4),
(141, 4),
(140, 4),
(139, 4),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(162, 3),
(75, 3),
(74, 3),
(73, 3),
(72, 3),
(71, 3),
(64, 3),
(63, 3),
(62, 3),
(61, 3),
(60, 3),
(59, 3),
(58, 3),
(57, 3),
(56, 3),
(55, 3),
(135, 4),
(27, 2),
(54, 3),
(53, 3),
(52, 3),
(51, 3),
(50, 3),
(30, 3),
(29, 3),
(28, 3),
(27, 3),
(26, 3),
(25, 3),
(24, 3),
(23, 3),
(22, 3),
(21, 3),
(20, 3),
(19, 3),
(18, 3),
(17, 3),
(16, 3),
(15, 3),
(175, 3),
(174, 3),
(173, 3),
(172, 3),
(171, 3),
(170, 3),
(169, 3),
(168, 3),
(159, 3),
(158, 3),
(157, 3),
(156, 3),
(155, 3),
(154, 3),
(153, 3),
(152, 3),
(151, 3),
(150, 3),
(149, 3),
(146, 3),
(145, 3),
(144, 3),
(143, 3),
(142, 3),
(141, 3),
(140, 3),
(139, 3),
(135, 3),
(133, 3),
(132, 3),
(129, 3),
(128, 3),
(26, 2),
(25, 2),
(24, 2),
(23, 2),
(22, 2),
(21, 2),
(20, 2),
(19, 2),
(18, 2),
(17, 2),
(16, 2),
(15, 2),
(175, 2),
(174, 2),
(173, 2),
(172, 2),
(171, 2),
(170, 2),
(169, 2),
(168, 2),
(159, 2),
(158, 2),
(157, 2),
(156, 2),
(155, 2),
(154, 2),
(153, 2),
(152, 2),
(151, 2),
(150, 2),
(149, 2),
(146, 2),
(145, 2),
(144, 2),
(143, 2),
(142, 2),
(141, 2),
(140, 2),
(139, 2),
(135, 2),
(133, 2),
(132, 2),
(129, 2),
(128, 2),
(127, 2),
(126, 2),
(125, 2),
(124, 2),
(123, 2),
(122, 2),
(120, 2),
(119, 2),
(118, 2),
(166, 1),
(167, 1),
(162, 1),
(75, 1),
(74, 1),
(73, 1),
(72, 1),
(71, 1),
(64, 1),
(63, 1),
(62, 1),
(61, 1),
(60, 1),
(59, 1),
(58, 1),
(57, 1),
(56, 1),
(55, 1),
(54, 1),
(53, 1),
(52, 1),
(51, 1),
(50, 1),
(30, 1),
(29, 1),
(133, 4),
(28, 1),
(27, 1),
(26, 1),
(25, 1),
(24, 1),
(23, 1),
(22, 1),
(21, 1),
(20, 1),
(19, 1),
(18, 1),
(17, 1),
(16, 1),
(15, 1),
(175, 1),
(174, 1),
(173, 1),
(159, 1),
(158, 1),
(157, 1),
(156, 1),
(155, 1),
(154, 1),
(153, 1),
(151, 1),
(150, 1),
(149, 1),
(146, 1),
(145, 1),
(144, 1),
(143, 1),
(142, 1),
(141, 1),
(140, 1),
(139, 1),
(135, 1),
(133, 1),
(132, 1),
(129, 1),
(128, 1),
(127, 1),
(126, 1),
(125, 1),
(124, 1),
(123, 1),
(122, 1),
(120, 1),
(119, 1),
(118, 1),
(89, 1),
(70, 1),
(69, 1),
(68, 1),
(67, 1),
(66, 1),
(65, 1),
(14, 1),
(11, 1),
(10, 1),
(9, 1),
(8, 1),
(160, 5),
(11, 0),
(156, 0),
(151, 0),
(132, 5),
(132, 4),
(127, 3),
(89, 2),
(7, 1),
(70, 2),
(69, 2),
(68, 2),
(67, 2),
(6, 1),
(66, 2),
(126, 3),
(129, 4),
(1, 1),
(65, 2),
(125, 3),
(128, 4),
(127, 4),
(126, 4),
(125, 4),
(124, 4),
(123, 4),
(122, 4),
(120, 4),
(119, 4),
(118, 4),
(89, 4),
(70, 4),
(69, 4),
(68, 4),
(67, 4),
(66, 4),
(65, 4),
(14, 4),
(11, 4),
(10, 4),
(9, 4),
(8, 4),
(7, 4),
(6, 4),
(1, 4),
(124, 3),
(123, 3),
(122, 3),
(120, 3),
(119, 3),
(118, 3),
(89, 3),
(70, 3),
(69, 3),
(68, 3),
(67, 3),
(66, 3),
(65, 3),
(14, 3),
(11, 3),
(10, 3),
(9, 3),
(8, 3),
(7, 3),
(6, 3),
(1, 3),
(14, 2),
(11, 2),
(10, 2),
(9, 2),
(8, 2),
(7, 2),
(6, 2),
(1, 2),
(177, 4),
(178, 4),
(179, 4),
(180, 4),
(181, 4),
(177, 3),
(178, 3),
(179, 3),
(180, 3),
(181, 3),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(164, 1),
(163, 1),
(77, 1),
(78, 1),
(160, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_user`
--

CREATE TABLE `aauth_perm_to_user` (
  `perm_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_pms`
--

CREATE TABLE `aauth_pms` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `receiver_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `message` text,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `pm_deleted_sender` int(1) DEFAULT NULL,
  `pm_deleted_receiver` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user`
--

CREATE TABLE `aauth_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_users`
--

CREATE TABLE `aauth_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `user_type` tinyint(2) DEFAULT '2' COMMENT '1:customer;2:admin',
  `email` varchar(100) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `username` varchar(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `about` text,
  `interest_area` varchar(200) DEFAULT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `zip` text NOT NULL,
  `avatar` text NOT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `forgot_exp` text,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text,
  `verification_code` text,
  `top_secret` varchar(16) DEFAULT NULL,
  `ip_address` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_users`
--

INSERT INTO `aauth_users` (`id`, `mobile`, `user_type`, `email`, `pass`, `username`, `full_name`, `address`, `city`, `about`, `interest_area`, `state`, `country`, `zip`, `avatar`, `banned`, `last_login`, `last_activity`, `date_created`, `forgot_exp`, `remember_time`, `remember_exp`, `verification_code`, `top_secret`, `ip_address`) VALUES
(1, NULL, 2, 'abhinavbalajee@gmail.com', '5711aa2253ac62088bf34f79f8ccd82e41bdbcf32e7670772d2a1e1746a9be9b', 'abhinavbalajee', 'abhinavbalajee', '', '', NULL, NULL, '', '', '', '', 0, '2018-08-04 18:10:31', '2018-08-04 18:10:31', '2017-12-08 02:21:50', NULL, '2017-12-11 00:00:00', 'G2sLmzixy5IvaDUN', '3db2fd1c6636718c120ada30664fc04568ff7f47', NULL, '202.142.80.194'),
(27, NULL, 2, 'abhinav.balajee@mindtropes.com', '2e521b4613c31ff201a5a8da1036f0c9c4e4bff4f8c6541db783a75011730a4c', 'abhinav46', 'Abhinav Balajee', '', '', NULL, NULL, '', '', '', '', 0, NULL, NULL, '2018-05-24 16:59:06', NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 2, 'diwakar.p@dkmgroup.in', 'f9dcdd7d3fb05dcd6c899ac00fde3b8b0b277bc6fac4cc7e59b4404480053fa5', 'diwakar232', 'diwakar pandey', '', '', NULL, NULL, '', '', '', 'default.png', 0, '2018-07-27 12:54:05', '2018-07-27 12:54:05', '2018-06-14 17:53:00', NULL, NULL, NULL, NULL, NULL, '202.142.119.239'),
(29, '9884334433', 1, 'dalveer@gmail.com', '9062845ecc4f511be576b88d8be16f68d59b83efb359f51ccf404b7d5a061177', 'dalveer34', 'dalveer kumar nayak', 'developer', '', 'test', '1', '', '', '', '', 0, '2018-08-13 18:13:04', '2018-08-13 18:13:04', '2018-06-27 20:39:00', NULL, NULL, NULL, NULL, NULL, '182.71.57.202'),
(31, NULL, 2, 'rakesh@gmail.com', '431dd9375701b357352320af3e8abcaa55136565ead7fad3c47d46c4b6811e7b', 'rakesh', 'rakesh', '', '', NULL, NULL, '', '', '', '20180703151212-20180626131403-2018-06-26download131400.jpg', 0, '2018-07-03 18:10:20', '2018-07-03 18:10:20', '2018-07-03 15:12:12', NULL, NULL, NULL, NULL, NULL, '182.71.57.202'),
(32, '9871736017', 1, 'freshnetcareer@gmail.com', 'af4cd3d523deddc3c2a8eba02cf14ecfdec49aa9bf8349f5f74d08731c801955', 'freshnet', 'PP', '', '', NULL, NULL, '', '', '', '', 0, NULL, NULL, '2018-07-09 18:18:26', NULL, NULL, NULL, NULL, NULL, NULL),
(33, '9888884488', 1, 'diwakar@dkmgroup.in', '6cb91e6bbe8b85093d8b7b05426c0f262e805ccad38108d3926e3f23e01f0a89', 'diwakar232333', 'diwakar kumar pandey', 'developer', '', 'test', '2', '', '', '', '', 0, '2018-08-13 18:13:26', '2018-08-13 18:13:26', '2018-07-21 18:56:53', NULL, NULL, NULL, NULL, NULL, '182.71.57.202');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_to_group`
--

CREATE TABLE `aauth_user_to_group` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_user_to_group`
--

INSERT INTO `aauth_user_to_group` (`user_id`, `group_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 4),
(4, 3),
(4, 4),
(5, 3),
(5, 4),
(6, 3),
(6, 4),
(7, 3),
(7, 4),
(8, 3),
(8, 4),
(9, 3),
(9, 4),
(10, 3),
(10, 4),
(11, 3),
(11, 4),
(12, 3),
(12, 4),
(13, 3),
(13, 4),
(14, 3),
(14, 4),
(15, 3),
(15, 4),
(16, 3),
(16, 4),
(17, 3),
(17, 4),
(18, 3),
(18, 4),
(19, 3),
(19, 4),
(20, 3),
(20, 4),
(21, 3),
(21, 4),
(22, 3),
(22, 4),
(23, 3),
(23, 4),
(24, 3),
(24, 4),
(25, 3),
(25, 4),
(26, 3),
(26, 4),
(27, 4),
(28, 2),
(28, 3),
(29, 3),
(29, 4),
(30, 3),
(30, 4),
(31, 5),
(32, 3),
(32, 4),
(33, 3),
(33, 4);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_variables`
--

CREATE TABLE `aauth_user_variables` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(22) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('published','unpublished') NOT NULL DEFAULT 'unpublished' COMMENT '0 = unpublished, 1 = published',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `description`, `created_date`, `status`, `start_date`, `end_date`) VALUES
(1, 'Testing 1234567', 'Testing 1234567', '2018-02-23 16:44:31', 'unpublished', '2018-02-23', '2018-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext,
  `image` text,
  `meta_title` text,
  `meta_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `description`, `image`, `meta_title`, `meta_description`) VALUES
(5, 'Career', 'Career Posts', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_views` int(10) DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_media` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_category` text COLLATE utf8mb4_unicode_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `post_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_meta_title` text COLLATE utf8mb4_unicode_ci,
  `post_meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`ID`, `post_author`, `post_date`, `post_title`, `post_views`, `post_content`, `post_media`, `post_category`, `post_status`, `post_slug`, `post_meta_title`, `post_meta_description`) VALUES
(25, 1, '2018-06-09 17:07:28', 'What do you seek - Job Vs Career', 7, 'Are you stuck in a boring workspace thinking if things will ever change? Then flip the cards and make your call. WORK BECAUSE YOU WANT TO.<br />\r\n&nbsp;<br />\r\nA job could be any work that entitles you your regular pay check. Career is what you build to enrich yourself through work, experience and education. It develops a sense of purpose and aligns values to what you do.<br />\r\n&nbsp;<br />\r\nIf you are job oriented, you might enjoy work but are limited to fixed salary cheques. You rarely go the extra mile, focussed to earn enough to settle those bills than putting efforts to grow. Moreover, switching jobs for money is hardly going to get you anywhere because in the end, this cycle repeats.<br />\r\n&nbsp;<br />\r\nWhen you invest in career, you aim for skill improvement and new experiences to enjoy work. You seek opportunities, demand higher wages and carve your way ahead. You are always driven for future assignments. Goals excite you; not money.<br />\r\n&nbsp;<br />\r\nBuild a long-term relationship with your profession. Trust us, you will know where you would be 5 years from now.<br />\r\n&nbsp;', '20180609170728-2018-06-09blog_posts164608.jpg', '5', '1', 'what-do-you-seek-job-vs-career', 'What do you seek - Job Vs Career | Fresh Net', 'What do you seek - Job Vs Career'),
(26, 1, '2018-06-09 17:12:43', 'OPPORTUNITIES AS A CAREER COUNSELLOR', 1, '&nbsp;We all have often come across hearing &lsquo;I hate my job&rsquo;, &lsquo;My career seems to be going nowhere&rsquo;, at least a hundred times or more from our colleagues or friends. If you care enough to help people make the best of their careers, then you can choose career counselling and development as a career for yourself.<br />\r\n&nbsp;<br />\r\nCounsellors guide people irrespective of whether they just started their work or have been in it for long. As a counsellor, you work with all kind of people with different education and experience levels. From high school kids to wealthy businessmen, you provide expertise at every level they connect to.<br />\r\n&nbsp;<br />\r\nFrom education sector to IT, healthcare, social services, government or private organisations; a counsellor can work anywhere. ​Career counselling is expected to grow about 18% from 2018 to 2028, about as fast as the average of all existing professions. Its demands are expected to increase in future as every organisation is incorporating employment assistance programs and counselling to retain talent and build productivity and morale of their employees.&nbsp;<br />\r\n&nbsp;<br />\r\nGiving support, guidance and consultation as a counsellor is satisfying and inspirational career in itself.<br />\r\n&nbsp;', '20180609171243-2018-06-09blog_posts171032.jpg', '5', '1', 'opportunities-as-a-career-counsellor', 'Opportunities as a Career Counsellor', 'Opportunities as a Career Counsellor'),
(27, 1, '2018-06-09 17:14:44', 'CAREER PATH FOR A CAREER COUNSELLOR', 3, 'Making a career decision as a counsellor involves knowing yourself plus identifying &amp; preparing for opportunities ahead. Being aware of your clients&rsquo; education, aptitude and personality to profile best options, makes this job quite interesting.<br />\r\n&nbsp;<br />\r\nEmployers seek out counsellors who are credentialed with graduate or Postgraduate degrees in psychology or counselling as it generates ample jobs with higher payouts. Ideally, you also need a recognised license from Government or State board, especially if you are interested in private practise.&nbsp;<br />\r\n&nbsp;<br />\r\nProfessionals with at least two years of work experience can easily work as a full-time counsellor anywhere, this is crucial if you are working in Education sector with schools or colleges. Self-development, interpersonal skills and creative assessment can be invaluable to tap intuition in yourself. Attending workshops, associations and conferences helps you to develop your niche in this line.<br />\r\n&nbsp;<br />\r\nCareer counselling is quite engaging as you cultivate healthy relationships, get a hang on business &amp; market trends and are updated with technological advancements to be able to help your client according to their needs in the market. Helping others achieve their best in career, not only helps them but you too.<br />\r\n&nbsp;', '20180609171444-2018-06-09blog_posts171349.jpg', '5', '1', 'career-path-for-a-career-counsellor', 'Career Path for a Career Counsellor', 'Career Path for a Career Counsellor'),
(28, 1, '2018-06-09 17:15:48', 'CAMPUS TO CORPORATE, FRESH-NET AS A BRIDGE', 12, 'Career development is a lifelong process as you spend at least a quarter of your lives working. If you aren&rsquo;t happy with what you are doing now, this journey becomes a burden and lags you with it. This is exactly why you need us - To make this journey happy and fulfilling.<br />\r\n&nbsp;<br />\r\nIt&rsquo;s amazing how much help Fresh-Net can provide you, in just a 30-minute session. With wonderful insights and expert strategies, we understand your concerns and interests to create a strong career roadmap. We work with everyone, from freshers to graduates to professionals, regardless of industry, sectors or domains.<br />\r\n&nbsp;<br />\r\nInformation about choosing &amp; applying for colleges, training, financial aid, career workshops to building resumes, interviews and networking skills; we hold hands right from the beginning of your career.&nbsp;<br />\r\n&nbsp;<br />\r\nFor professionals transitioning into new roles or jobs, our corporate training and career advancement programs aim to expand your skill set and knowledge to get that platform you wish to scale upon. It does not matter, what age and scope of your job is, with Fresh-Net you only look ahead.<br />\r\n&nbsp;<br />\r\nDon&rsquo;t get stuck. Call us and see for yourself.<br />\r\n&nbsp;', '20180609171548-2018-06-09blog_posts171517.jpg', '5', '1', 'campus-to-corporate-fresh-net-as-a-bridge', 'CAMPUS TO CORPORATE, FRESH-NET AS A BRIDGE', 'CAMPUS TO CORPORATE, FRESH-NET AS A BRIDGE'),
(29, 1, '2018-06-09 17:17:00', 'DIFFERENCE BETWEEN TRAINED & EDUCATED PEOPLE', 4, 'Confused? Does this heading intrigues you?<br />\r\n&nbsp;<br />\r\nThis is why it&rsquo;s essential to understand this difference because most of us think them as alike. Being so closely twined, the terms actually differ in nature and orientation.<br />\r\n&nbsp;In simple terms, education provides a knowledge base ​that sustains any other activity one may engage at a later stage. Training is not as general and tends to concentrate on ​skills development​. It is inducting specific skills or behaviour to improve competency and performance for a definite goal. Whereas, education forms a base of your learning which teaches you reasoning, intellect and analysis. It delivers you knowledge and conceptual depth.<br />\r\n&nbsp;In training​, you understand&nbsp; &ldquo;​HOW TO DO THE TASK​&rdquo; while ​education​ tells you &ldquo;​WHY TO DO THE TASK​&rdquo;.<br />\r\n&nbsp;The combination of both training and education empowers you to solve problems, discover new methods to streamline operations and propose new solutions. Wholesome learning is the outcome of both training and education led development approaches.<br />\r\n&nbsp;', '20180609171700-2018-06-09blog_posts171624.jpg', '5', '1', 'difference-between-trained-educated-people', 'DIFFERENCE BETWEEN TRAINED & EDUCATED PEOPLE', 'DIFFERENCE BETWEEN TRAINED & EDUCATED PEOPLE'),
(30, 1, '2018-06-09 17:18:30', 'HOW TO ENHANCE YOUR PORTFOLIO', NULL, 'Financial management is the backbone of any country&rsquo;s economy. If you wish to pursue a career in finance, this industry offers a variety of positions according to different skills and interests. Getting a job, promotion, career change, investment planning to take good financial decisions, Fresh-Net does that all for you.<br />\r\n&nbsp;<br />\r\nCommercial and investment banking offer different career options in international finance, marketing, operations, financial advising etc. Hedge funding, private equity &amp; venture capital is another area where you find immense scope as a financial analyst, portfolio manager and marketing manager to help businesses find capital for expansion and current projects.<br />\r\n<br />\r\nCertified financial planners and insurance sector jobs are hot cakes in the market. ​Public accounting also brings a broad spectrum of opportunities in business transactions, auditing financial records to&nbsp;consulting services. You might start as an accountant, proceed to audit manager, tax manager and eventually succeed as a partner in any firm.<br />\r\n&nbsp;<br />\r\nFinancial jobs exist in every industry. Explore all opportunities through our extensive researches to find jobs matching your interests and skills. With our certified courses in Finance &amp; Banking, you create a career worth investing.<br />\r\n&nbsp;', '20180609171830-2018-06-09blog_posts171752.jpg', '5', '1', 'how-to-enhance-your-portfolio', 'HOW TO ENHANCE YOUR PORTFOLIO', 'HOW TO ENHANCE YOUR PORTFOLIO'),
(31, 1, '2018-06-09 17:20:03', 'INDIVIDUAL PORTFOLIO DESIGNING', 5, 'Starting a business, planning to buy a house, sending your child abroad for higher education or settling after retirement?<br />\r\n&nbsp;<br />\r\nAbove are few of the goals you try to map at some point in your life. Through correct evaluation of your current and future financial state, you can determine if your life goals can be fulfilled in future and what steps are needed to achieve them.<br />\r\n&nbsp;<br />\r\nPlanning at macro levels affects all aspects of personal finance, your taxes, insurance, risk factors and current asset worth. ​Perfect financial planning not only means investing in the right areas and monitoring your plan&rsquo;s progress, but also determines that you don&rsquo;t lose your hard-earned money to frauds, identity thefts and ignorance. Financial knowledge and consultation can translate into higher profits and fewer losses for you in any market condition.&nbsp;<br />\r\n&nbsp;<br />\r\nThat is why Fresh-Net connects you with its Financial Planning Experts who can look after all financial needs involving your budgets, savings and future plans by creating a bigger picture of your current situation. With disciplined approach and realistic expectations, we guide you to be better prepared for emergencies and life-changing events.', '20180609172003-2018-06-09blog_posts171927.jpg', '5', '1', 'individual-portfolio-designing', 'INDIVIDUAL PORTFOLIO DESIGNING', 'INDIVIDUAL PORTFOLIO DESIGNING'),
(32, 1, '2018-06-09 17:21:22', 'PROGRESS IS CUMULATIVE IN SCIENCE & ENGINEERING BUT CYCLICAL IN FINANCE', 5, 'Rightfully said by James Grant; The art of banking is always to balance the risk of a run with the reward of a profit. A good banker profitably and safely treads the middle ground.<br />\r\n&nbsp;<br />\r\nYour financial institution offers you many benefits - both direct &amp; indirect. As an individual or an entrepreneur do you understand these benefits, are you aware of the assessment of your banking choices?<br />\r\n&nbsp;<br />\r\nChoosing a good financial institution to take care of your assets and stocks growth is equally important as making investments in it. Knowing if your institution has the required expertise in commercial and retail banking, how able and responsive they are and how fluid are the plans they offer you is very essential. When you merge with Fresh-Net, we provide you exposure and knowledge about your annual cost of banking and if you are receiving good value for money.&nbsp;<br />\r\n&nbsp;<br />\r\nHigh turnover is often a reality in commercial banking which hasn&rsquo;t changed much over the years. It is all about offering attractive loans and deposits to businesses. Be it offline or digital, the transaction medium might change but perfect lending methods supported by solid relationships, will not. We ensure that your funds are safe with credible institutions and money management is simple and cost-effective.<br />\r\n&nbsp;', '20180609172122-2018-06-09blog_posts172047.jpg', '5', '1', 'progress-is-cumulative-in-science-engineering-but-cyclical-in-finance', 'PROGRESS IS CUMULATIVE IN SCIENCE & ENGINEERING BUT CYCLICAL IN FINANCE', 'PROGRESS IS CUMULATIVE IN SCIENCE & ENGINEERING BUT CYCLICAL IN FINANCE'),
(33, 1, '2018-06-09 17:22:28', 'WHY INVEST IN CAREER COUNSELLING ?', 8, 'Not investing in your career would be like floating along with waves of a river with no paddles, map or knowledge of what is coming next. You may go fine for a while but would definitely invite disaster if you don&rsquo;t change course.<br />\r\n&nbsp;<br />\r\nInvesting in a career is the highest ROI than any other trade, stocks or shares. By upskilling yourself with knowledge and learning, you grab opportunities that come your way and make the most of them. When you know what you want and where you want to land up in future; you require to be better prepared by increasing your market worth, passion and personal networks to achieve the career you seek.<br />\r\n&nbsp;<br />\r\nAt Fresh-Net, we believe everybody holds the capability for greatness. Sadly, most of us never realise our true potential and choose to settle with just a fraction of our abilities. Your career and life goals are far too important to remain just wishes.&nbsp;<br />\r\n&nbsp;<br />\r\nWhen you choose us, you invest in yourself. With our expertise in self-assessment, goals development, customised trainings and courses, you make bigger, bolder and better steps towards a fulfilling career which brings you both personal and organisational effectiveness.<br />\r\n&nbsp;<br />\r\nBE THE BEST WITH FRESH-NET.<br />\r\n&nbsp;', '20180609172228-2018-06-09blog_posts172222.jpg', '5', '1', 'why-invest-in-career-counselling', 'WHY INVEST IN CAREER COUNSELLING ?', 'WHY INVEST IN CAREER COUNSELLING ?'),
(34, 1, '2018-06-27 12:04:02', 'QUIT SMOKING - START INVESTING', 31, 'Nicotine is an addictive drug. We all know that but here is the interesting part; smoking cigarettes are not cool but cigarettes stocks are always hot.<br />\r\n&nbsp;<br />\r\nEver wondered how much smoking costs you in the long run? Apart from damaging your lungs and respiratory system, it is also damaging your wealth. Every time you light up a cigarette, you&rsquo;re puffing away that dream house or a good retirement fund.<br />\r\n&nbsp;<br />\r\nLet us take a moment to evaluate how much money have you wasted by smoking. Keeping things at a minimum, let us imagine you smoke two packs every week for five years. A branded cigarette&nbsp;costs you INR 250 a pack in Delhi.<br />\r\n&nbsp;<br />\r\nSo, going by calculations; you smoke;<br />\r\n&nbsp;<br />\r\n5 YEARS OF SMOKING = 2 x 250 x 52 x 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = INR 1.30 Lacs<br />\r\n&nbsp;<br />\r\nThis means you puffed away roughly half a million rupees in five years with this little habit.<br />\r\n&nbsp;<br />\r\nIf you had chosen to invest this small amount of INR 250 in the stock market, just imagine how much would you have saved by investing for five years that comes to be a whopping INR 2.43 Lacs. ​This was just a simple calculation done with two packs. An average smoker lights up way more than just two packs a week.<br />\r\n&nbsp;<br />\r\nAll that saving, just by saying no to smoking. Investing this money can prove beneficial for your future goals.<br />\r\n&nbsp;<br />\r\nSo, stop smoking and start investing.<br />\r\n&nbsp;', '20180609172335-2018-06-09blog_posts172330.jpg', '5', '1', 'quit-smoking-start-investing', 'QUIT SMOKING - START INVESTING', 'QUIT SMOKING - START INVESTING');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` int(11) UNSIGNED NOT NULL,
  `captcha_time` int(10) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(3606, 1534486647, '66.102.6.215', 'K1A1'),
(3607, 1534487806, '182.71.57.202', '7GVZ'),
(3608, 1534487811, '182.71.57.202', 'TYIN'),
(3605, 1534481750, '106.211.69.11', 'VSRL');

-- --------------------------------------------------------

--
-- Table structure for table `career_counselling`
--

CREATE TABLE `career_counselling` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=individul ; 2 = company',
  `company` varchar(200) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `sub_type` tinyint(4) DEFAULT NULL COMMENT '1:Graduate;2:Post Graduate;3:less then five year;4:greater then five year',
  `first` varchar(250) DEFAULT NULL,
  `middle` varchar(250) DEFAULT NULL,
  `last` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `time` text,
  `comment` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `career_counselling`
--

INSERT INTO `career_counselling` (`id`, `type`, `company`, `designation`, `sub_type`, `first`, `middle`, `last`, `email`, `mobile`, `meeting_date`, `time`, `comment`, `created`) VALUES
(1, 2, 'techcaffe', 'developer', 3, 'diwakar', 'kumar', 'pandey', 'diwakarmahidon3@gmail.com', 9894844848, '2018-06-30', '12.30 PM - 02.00 PM', 'test m', '2018-06-22 08:29:26'),
(2, 1, '', '', 3, 'Diwakar', 'kumar', 'pandey', 'test@gmail.com', 9898484448, '2018-06-29', '12.30 PM - 02.00 PM', 'test', '2018-06-22 08:37:33'),
(3, 2, 'techcaffee', 'sco', 3, 'rakesh', 'kumar', 'pandey', 'diwakar@gmail.com', 9849844848, '2018-06-27', '10.30 AM - 12.00 PM', 'test', '2018-06-22 22:12:16'),
(4, 2, 'techcaffee', '.net', NULL, 'shibu', 'kumar', 'pandey', 'shibu@gmail.com', 98984448844, '2018-07-04', '02.30 PM - 04.00 PM', 'test', '2018-06-22 23:16:08'),
(5, 2, 'techcaffee', 'test', NULL, 'diwakar', 'kumar', 'pandey', 'diwakarnice@rediffmail.com', 9984484844, '2018-07-06', '10.30 AM - 12.00 PM', 'test mail', '2018-06-23 01:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `level_id` varchar(100) DEFAULT NULL,
  `cart_pack_type` tinyint(2) NOT NULL COMMENT '1:cart pack,2:bundle pack',
  `price` varchar(20) NOT NULL,
  `user_hash` text NOT NULL,
  `promo_code` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `level_id`, `cart_pack_type`, `price`, `user_hash`, `promo_code`) VALUES
(31, 33, '1', 0, '720', '01567cb1111c47664515d27ad3d5f672', '0'),
(32, 0, '1', 0, '720', '55608f0cef01cb92c174589a8badb2fd', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cart_promocode`
--

CREATE TABLE `cart_promocode` (
  `id` int(11) NOT NULL,
  `cart_hash` text NOT NULL,
  `promo_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_promocode`
--

INSERT INTO `cart_promocode` (`id`, `cart_hash`, `promo_code`) VALUES
(7, '4c43e7027e27ae43dc9a614fa3eada1b', '500'),
(8, '51561bb28659a42a1086c86aaaeefc07', '400'),
(9, 'ac32164efe475d6b10d10d47f3071b48', '900');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text,
  `description` text,
  `image` text,
  `status` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cc_options`
--

CREATE TABLE `cc_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cc_options`
--

INSERT INTO `cc_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'active_theme', 'cicool'),
(2, 'favicon', 'default.png'),
(3, 'site_name', 'Fresh-Net'),
(4, 'email', 'abhinav.balajee@mindtropes.com'),
(5, 'author', 'TechCaffee'),
(6, 'site_description', 'Fresh-Net'),
(7, 'keywords', ''),
(11, 'company_email', 'abhinavbalajee@gmail.com'),
(12, 'smtp_host', 'ssl://smtp.googlemail.com'),
(19, 'smtp_pass', 'abhi@1864E'),
(13, 'smtp_user', 'abhinavbalajee@gmail.com'),
(14, 'smtp_port', '465'),
(20, 'shop_currency', 'fa-inr'),
(21, 'shop_currency', 'fa-inr');

-- --------------------------------------------------------

--
-- Table structure for table `cc_session`
--

CREATE TABLE `cc_session` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) NOT NULL,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `organisation` text NOT NULL,
  `query` text NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `organisation`, `query`, `mobile`, `message`, `created`) VALUES
(1, 'Abhinav Balajee', 'abhinavbalajee@gmail.com', '', '', '', 'Testing Contact', '2018-06-05 05:44:02'),
(2, 'Abhinav Balajee', 'abhinavbalajee@gmail.com', 'Tech Caffee', 'Business Solutions – Existing Business', '8447739451', 'Testing 123', '2018-06-10 21:04:16'),
(3, 'Kuber Ji Dixit', 'abc', 'dsdfg', '--- Select Your Query ---', '66', 'sdfgsdg', '2018-06-12 01:09:01'),
(4, 'rajesh', 'mku', 'mmj', 'Business Solutions – Existing Business', '558', 'kjduf', '2018-06-16 19:14:48'),
(5, 'diwakar', 'test@gmail.com', 'test', 'Business Solutions – Existing Business', '9858585885', 'trereeee sdfsfsfss sss', '2018-06-14 09:24:26'),
(6, 'diwakar', 'diwakar.p@dkmgroup.in', 'techcaffee', 'College – Certifications', '9884848848', 'test', '2018-06-16 19:15:53'),
(7, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – New Business', '9953764841', 'Test Mail', '2018-06-19 04:35:04'),
(8, 'DIWAKAR  KUMAR PANDEY', 'diwakarnice@rediffmail.com', 'tec', 'College – Workshops', '989887844', 'test', '2018-06-19 06:20:33'),
(9, 'DIWAKAR  KUMAR PANDEY', 'diwakarnice@rediffmail.com', 'tec', 'College – Workshops', '989887844', 'test', '2018-06-19 06:21:55'),
(10, 'DIWAKAR  KUMAR PANDEY', 'diwakarnice@rediffmail.com', 'tec', 'College – Workshops', '989887844', 'test', '2018-06-19 06:24:12'),
(11, 'diwakar', 'diwakarnice@rediffmail.com', 'test', 'Financial Solutions – Business', '9898878443', 'test', '2018-06-19 06:25:30'),
(12, 'diwakar', 'diwakarnice@rediffmail.com', 'test', 'Financial Solutions – Business', '9898878443', 'test', '2018-06-19 06:33:58'),
(13, 'DIWAKAR  KUMAR PANDEY', 'diwakarnice@rediffmail.com', 'twewt', 'Corporate – Conferences', '9343433433', 'test', '2018-06-19 06:44:45'),
(14, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – Existing Business', '9953764841', 'Test', '2018-06-19 06:58:35'),
(15, 'dev', 'diwakarnice@rediffmail.com', 'deeee', 'I\'m experienced planning for Next Move', '989887844', 'tetet', '2018-06-19 07:11:16'),
(16, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – Existing Business', '9953764841', 'Kuber Ji Dixit', '2018-06-19 07:17:21'),
(17, 'kuber', 'kuber.dixit@gmail.com', '', 'Business Solutions – Existing Business', '9953764841', 'dfgssdfgsdg', '2018-06-19 07:22:58'),
(18, 'Kuber Dixit', 'kuber.dixit@gmail.com', '', 'Business Solutions – Existing Business', '9953764841', 'test', '2018-06-19 07:27:51'),
(19, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – Existing Business', '9953764841', 'Test Mail', '2018-06-19 07:31:00'),
(20, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – Existing Business', '9953764841', 'Test Mail', '2018-06-19 07:34:06'),
(21, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – Existing Business', '9953764841', 'Test Message', '2018-06-19 17:34:31'),
(22, 'diwakar', 'diwakarmahidon3@gmail.com', 'test', 'For Career in Career Counselling', '95600887765', 'test mail', '2018-06-19 19:03:56'),
(23, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – Existing Business', '9953764841', 'Testing Mail', '2018-06-19 19:16:02'),
(24, 'kuber', 'kuber.dixit@gmail.com', 'techprime', 'For Career in Career Counselling', '9953764841', 'test', '2018-06-19 21:22:16'),
(25, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – Existing Business', '9953764841', 'Test', '2018-06-21 20:16:25'),
(26, 'diwakar', 'diwakar.p@dkmgroup.in', 'techcaffee', 'Financial Solutions – Business', '9858585858', 'test mail contact us form', '2018-06-21 20:51:16'),
(27, 'Kuber Ji Dixit', 'kuber.dixit@gmail.com', 'TechPrime', 'Business Solutions – Existing Business', '9953764841', 'Test Content', '2018-06-21 21:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_training`
--

CREATE TABLE `corporate_training` (
  `id` int(11) NOT NULL,
  `company_type` varchar(200) DEFAULT NULL,
  `training_type` varchar(200) DEFAULT NULL,
  `emp_training` varchar(200) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `first` varchar(250) DEFAULT NULL,
  `middle` varchar(250) DEFAULT NULL,
  `last` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `time` text,
  `comment` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corporate_training`
--

INSERT INTO `corporate_training` (`id`, `company_type`, `training_type`, `emp_training`, `company_name`, `department`, `first`, `middle`, `last`, `email`, `mobile`, `meeting_date`, `time`, `comment`, `created`) VALUES
(1, 'Banking & Finance', '1 Day Program', 'test', 'test', 'tes', 'tes', 'tes', 'tes', 'test3332342@gmail.com', 9887665544, '2018-06-28', '12.30 PM - 02.00 PM', 'tes', '2018-06-23 06:40:35'),
(2, 'Other', '1 Day Program', '3', 'techcaffee', 'it', 'diwakar', 'kumar', 'pandey', 'diwakarmahidon3@gmail.com', 9884844848, '2018-07-06', '02.30 PM - 04.00 PM', 'test ', '2018-06-23 07:03:14'),
(3, 'Banking & Finance', 'Topic wise', '3', 'SCO', 'SCO', 'Diwakar', 'kumar', 'pandey', 'diwakar@gmail.com', 9898484848, '2018-06-29', '02.30 PM - 04.00 PM', 'test', '2018-06-23 20:23:25'),
(4, 'Banking & Finance', 'Seven Days', 'kapil', 'techprime', 'web development', 'kapil', 'kumar', '', 'diwakarnice@rediffmail.com', 9898338838, '2018-06-27', '12.30 PM - 02.00 PM', 'test mail', '2018-06-23 20:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `list_image` text NOT NULL,
  `background_image` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `list_image`, `background_image`, `created`) VALUES
(1, 'Banking, Financial Services And Insurance (BFSI)', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '20180704184924-2018-07-04courses184853.jpg', '20180704184924-2018-07-04courses184859.jpg', '2018-07-05 01:49:48'),
(2, 'Career Counseling', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '20180704185036-2018-07-04courses185019.jpg', '20180704185036-2018-07-04courses185034.jpg', '2018-07-05 01:50:36'),
(3, 'Internship Program', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '20180704185112-2018-07-04courses185108.jpg', '20180704185112-2018-07-04courses185111.jpg', '2018-07-05 01:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `course_level`
--

CREATE TABLE `course_level` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` text NOT NULL,
  `header_description` text NOT NULL,
  `description` text NOT NULL,
  `key_points` text NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_level`
--

INSERT INTO `course_level` (`id`, `course_id`, `title`, `image`, `header_description`, `description`, `key_points`, `price`, `sale_price`, `created`) VALUES
(1, 1, 'BASIC LEVEL', '20180509195324-2018-05-09course_level195309.jpg', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\n\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\n\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 800, 720, '2018-05-10 05:53:59'),
(2, 1, 'Functional Level', '20180509195334-2018-05-09course_level195332.jpg', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\r\n\r\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\r\n\r\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 800, 720, '2018-05-09 14:23:34'),
(3, 1, 'Advance Level', '20180509195342-2018-05-09course_level195340.jpg', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\r\n\r\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\r\n\r\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 800, 720, '2018-05-09 14:23:42'),
(4, 2, 'Basic Level  2', '20180704185512-2018-07-04course_level185509.jpg', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\r\n\r\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\r\n\r\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 500, 454, '2018-07-24 01:40:59'),
(5, 2, 'Functional Level 2', '20180704185628-2018-07-04course_level185550.jpg', '<h4>Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.</h4>', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\r\n\r\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\r\n\r\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 800, 700, '2018-07-24 01:41:09'),
(6, 2, 'Advance Level 2', '20180704185740-2018-07-04course_level185711.jpg', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\r\n\r\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\r\n\r\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 1000, 900, '2018-07-24 01:41:22'),
(7, 3, 'Basic Level 3', '20180704190235-2018-07-04course_level190155.jpg', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\r\n\r\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\r\n\r\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 700, 650, '2018-07-24 01:41:34'),
(8, 3, 'Functional Level 3', '20180704190332-2018-07-04course_level190257.jpg', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\r\n\r\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\r\n\r\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 1200, 1100, '2018-07-24 01:41:47'),
(9, 3, 'Advance Level 3', '20180704190503-2018-07-04course_level190422.jpg', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private, corporate, investment, cards and the like.', '<p>This course is designed to teach you the ins and outs of Photoshop, both CS6 and CC 2018 versions, even if you have little to no experience with it! The goal is to learn how to design fantastic looking websites in Photoshop and create a high monthly income from them.</p>\r\n\r\n<p>Through this course you&#39;ll find out how to become a successful freelancer designer on crowdsourcing platforms such as 99designs, crowdspring, designcrowd, and more! I&#39;ll teach you, from my own vast experience, how to get ahead of your competition and create website designs in Photoshop that your clients will love!</p>\r\n\r\n<p>I&#39;ve made over $50,000 by doing the things I describe in this course so I know what it takes to succeed on these platforms. It&#39;s not about talent or being creative! I figured it out to a point where anybody can do it if they have the right information and skill set. This is what this course teaches you!</p>', '<p>The goal of this course is to show you how you can make money with Photoshop by making designs and more..</p>\r\n\r\n<p>165+ lectures and 15+ hours of content recorded at 1080p!</p>\r\n\r\n<p>Included how I make $4000 from several projects</p>\r\n\r\n<p>Included 50+ Premium PSD files of mine + other materials to help you develop your skills</p>\r\n\r\n<p>Learn how to be efficient and cut down the time it takes to complete a project</p>\r\n\r\n<p>The course includes multiple hours of actual designing, but that is optional. Don&#39;t let the length scare you.</p>\r\n\r\n<p>Create a high constant income by immediately monetizing your work. This course takes you from the very basics to the more advanced techniques. You will learn how to use Photoshop from scratch, you will have a Web Design tutorial included as well as a complete guide on how to monetize your designs.</p>', 500, 400, '2018-07-24 01:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `course_modules`
--

CREATE TABLE `course_modules` (
  `id` int(11) NOT NULL,
  `course_level` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_modules`
--

INSERT INTO `course_modules` (`id`, `course_level`, `title`, `description`, `created`) VALUES
(1, 1, 'Introduction', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private,&nbsp;<br />\r\ncorporate, investment, cards and the like.', '2018-05-10 08:42:58'),
(2, 1, 'Industrial Finance', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private,&nbsp;<br />\r\ncorporate, investment, cards and the like.', '2018-05-10 08:43:30'),
(3, 1, 'Finance Management', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private,&nbsp;<br />\r\ncorporate, investment, cards and the like.', '2018-05-10 08:42:58'),
(4, 1, 'Portfolio Management', 'Banking, Financial services and Insurance (BFSI) is an industry term for companies that provide a range of such financial services such as universal banks. Banking may include core banking, retail, private,&nbsp;<br />\r\ncorporate, investment, cards and the like.', '2018-05-10 08:43:30'),
(8, 5, 'test', 'test', '2018-07-24 18:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `course_modules_lectures`
--

CREATE TABLE `course_modules_lectures` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `video_url` text,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_modules_lectures`
--

INSERT INTO `course_modules_lectures` (`id`, `module_id`, `video_url`, `title`, `description`, `created`) VALUES
(1, 1, '20180720120611-2018-07-20course_modules_lectures120507.mp4', 'introduction', 'introduction', '2018-07-20 19:06:11'),
(2, 1, '20180720133805-2018-07-20course_modules_lectures133712.mp4', 'introduction second', 'introduction', '2018-07-24 03:29:24'),
(7, 2, '20180723202901-2018-07-23course_modules_lectures202737.mp4', 'test finance', 'test finance', '2018-07-24 03:29:01'),
(8, 8, '20180724120405-2018-07-24course_modules_lectures120314.mp4', 'functional test', 'test', '2018-07-24 19:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` int(4) DEFAULT NULL COMMENT '1:presentation,2:entry form;3:simple certification;4:vedio',
  `files` varchar(200) DEFAULT NULL,
  `screen_shot` varchar(200) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `content` text,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1:active;2:inactive',
  `download_meta_title` text,
  `download_meta_description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `title`, `type`, `files`, `screen_shot`, `slug`, `content`, `status`, `download_meta_title`, `download_meta_description`, `created_at`) VALUES
(1, 'Presentation of Corporate Earnings to improve in long term...', 2, '20180626132230-2018-06-26download132225.jpg', '20180626132230-2018-06-26download132228.jpg', NULL, NULL, 1, 'Presentation of Corporate Earnings to improve in long term...', 'Presentation of Corporate Earnings to improve in long term...', '2018-06-26 07:52:30'),
(2, 'Presentation of Corporate Earnings to improve in long term...', 1, '20180626132316-2018-06-26download132310.jpg', '20180626132316-2018-06-26download132313.jpg', NULL, NULL, 1, 'Presentation of Corporate Earnings to improve in long term...', 'Presentation of Corporate Earnings to improve in long term...', '2018-06-26 07:53:16'),
(3, 'Presentation of Corporate Earnings to improve in long term...', 3, '20180626132358-2018-06-26download132353.pdf', '20180626132358-2018-06-26download132341.jpg', NULL, NULL, 1, 'Presentation of Corporate Earnings to improve in long term...', 'Presentation of Corporate Earnings to improve in long term...', '2018-06-26 07:53:58'),
(4, 'Presentation of Corporate Earnings to improve in long term...', 4, '20180706144947-2018-07-06download144935.3gp', '20180706144947-2018-07-06download144946.jpg', NULL, NULL, 1, 'Presentation of Corporate Earnings to improve in long term', 'Presentation of Corporate Earnings to improve in long term', '2018-07-06 21:49:47'),
(8, 'Presentation of Corporate Earnings to improve in long term...', 2, '20180703144541-2018-07-03download144534.jpg', '20180703144541-2018-07-03download144537.jpg', NULL, NULL, 1, 'test', 'test', '2018-07-06 21:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `download_type`
--

CREATE TABLE `download_type` (
  `id` int(10) NOT NULL,
  `type_name` varchar(200) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download_type`
--

INSERT INTO `download_type` (`id`, `type_name`, `status`, `created_date`) VALUES
(1, 'Presentation', 1, '2018-06-27 05:16:22'),
(2, 'Forms', 1, '2018-06-27 10:04:04'),
(3, 'Sample', 1, '2018-06-27 10:03:53'),
(4, 'Video', 1, '2018-06-27 10:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `email_templates_id` int(11) NOT NULL,
  `email_group` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_body` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`email_templates_id`, `email_group`, `subject`, `template_body`) VALUES
(1, 'registration', 'Registration successful', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">\n	<tbody>\n		<tr>\n			<td valign=\"top\">\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n				<tbody>\n					<tr>\n						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>\n					</tr>\n					<tr>\n						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">\n						<table align=\"center\" style=\"margin-left:15px;\">\n							<tbody>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n								<tr>\n									<td width=\"560\">\n									<h4>New Account</h4>\n\n									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Hi {USERNAME},</p>\n\n									<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br />\n									To open your {SITE_NAME} homepage, please follow this link:<br />\n									<a href=\"{SITE_URL}\" style=\"color: #11A7DB; text-decoration: none;\"><strong>{SITE_NAME} Account</strong></a><br />\n									<br />\n									Link doesn&#39;t work? Copy the following link to your browser address bar:<br />\n									<br />\n									{SITE_URL}<br />\n									<br />\n									Your username: {USERNAME}<br />\n									Your email address: {EMAIL}<br />\n									Your password: {PASSWORD}<br />\n									<br />\n									<br />\n									Best Regards,<br />\n									{SITE_NAME}</p>\n									</td>\n								</tr>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n					<tr>\n						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>'),
(2, 'forgot_password', 'Forgot Password', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">\n	<tbody>\n		<tr>\n			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n				<tbody>\n					<tr>\n						<td height=\"50\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>\n					</tr>\n					<tr>\n						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px;\">\n							<tbody>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n								<tr>\n									<td width=\"560\">									<h4>New Password</h4>\n																	<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">			Forgot your password, huh? No big deal.<br>To create a new password, just follow this link:<br>			<a href=\"{PASS_KEY_URL}\" style=\"color: #11A7DB; text-decoration: none;\"><strong>Create new password</strong></a><br><br>			Link doesn\'t work? Copy the following link to your browser address bar:<br>			{PASS_KEY_URL}<br><br>			You received this email, because it was requested by a {SITE_NAME} user.This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.<br><br>Thank you,<br><br>										Best Regards,<br>																		{SITE_NAME}</p>\n									</td>\n								</tr>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n					<tr>\n						<td height=\"10\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>'),
(3, 'change_email', 'Change Email', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">\n	<tbody>\n		<tr>\n			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n				<tbody>\n					<tr>\n						<td height=\"50\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>\n					</tr>\n					<tr>\n						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px; \">\n							<tbody>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n								<tr>\n									<td width=\"560\">									<h4>Change Email</h4>\n									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Hi {NEW_EMAIL},</p>\n								<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">			You have changed your email address for {SITE_NAME}.<br>Follow this link to confirm your new email address:<br>			<a href=\"{NEW_EMAIL_KEY_URL}\" style=\"color: #11A7DB; text-decoration: none;\"><strong>Confirm Email</strong></a><br><br>			Link doesn\'t work? Copy the following link to your browser address bar:<br>			{NEW_EMAIL_KEY_URL}<br><br>			Your email address: {NEW_EMAIL}<br><br>			You received this email, because it was requested by a {SITE_NAME} user. If you have received this by mistake, please DO NOT click the confirmation link, and simply delete this email. After a short time, the request will be removed from the system.<br><br>Thank you,<br><br>										Best Regards,<br>																		{SITE_NAME}</p>\n									</td>\n								</tr>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n					<tr>\n						<td height=\"10\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>'),
(5, 'reset_password', 'Reset Password', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">\n	<tbody>\n		<tr>\n			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n				<tbody>\n					<tr>\n						<td height=\"50\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>\n					</tr>\n					<tr>\n						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px;\">\n							<tbody>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n								<tr>\n									<td width=\"560\">									<h4>New Password</h4>\n									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Hi {USERNAME},</p>\n								<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">			You have changed your password.<br>Please, keep it in your records so you don\'t forget it:<br>Your username: {USERNAME}<br>Your email address: {EMAIL}<br>Your new password: {NEW_PASSWORD}<br><br><br>										Best Regards,<br>																		{SITE_NAME}</p>\n									</td>\n								</tr>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n					<tr>\n						<td height=\"10\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>'),
(16, 'payment_email', 'Payment Received', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">\r\n\r\n	<tbody>\r\n\r\n		<tr>\r\n\r\n			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n\r\n				<tbody>\r\n\r\n					<tr>\r\n\r\n						<td height=\"50\" width=\"600\">&nbsp;</td>\r\n\r\n					</tr>\r\n\r\n					<tr>\r\n\r\n						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>\r\n\r\n					</tr>\r\n\r\n					<tr>\r\n\r\n						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px;\">\r\n\r\n							<tbody>\r\n\r\n								<tr>\r\n\r\n									<td height=\"10\" width=\"560\">&nbsp;</td>\r\n\r\n								</tr>\r\n\r\n								<tr>\r\n\r\n									<td width=\"560\">									<h4>Invoice {REF} Payment</h4>\r\n\r\n									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Dear Customer,</p>\r\n\r\n								<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">								We have received your payment of {INVOICE_CURRENCY}{PAID_AMOUNT}.<br>								Thank you for your Payment and business. We look forward to working with you again.<br>								--------------------------<br>																		<br><br>																		Best Regards,<br>																		{SITE_NAME}</p>\r\n\r\n									</td>\r\n\r\n								</tr>\r\n\r\n								<tr>\r\n\r\n									<td height=\"10\" width=\"560\">&nbsp;</td>\r\n\r\n								</tr>\r\n\r\n							</tbody>\r\n\r\n						</table>\r\n\r\n						</td>\r\n\r\n					</tr>\r\n\r\n					<tr>\r\n\r\n						<td height=\"10\" width=\"600\">&nbsp;</td>\r\n\r\n					</tr>\r\n\r\n					<tr>\r\n\r\n						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>\r\n\r\n					</tr>\r\n\r\n				</tbody>\r\n\r\n			</table>\r\n\r\n			</td>\r\n\r\n		</tr>\r\n\r\n	</tbody>\r\n\r\n</table>'),
(17, 'invoice_message', 'New Invoice', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">\n	<tbody>\n		<tr>\n			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n				<tbody>\n					<tr>\n						<td height=\"50\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>\n					</tr>\n					<tr>\n						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px;\">\n							<tbody>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n								<tr>\n									<td width=\"560\">									<h4>Invoice {REF}</h4>\n									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Hello {CLIENT},</p>\n									<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">Here is the invoice of {CURRENCY}{AMOUNT}<br>									You can login to see the status of your invoice by using this link:<br>									<a href=\"{INVOICE_LINK}\" style=\"color: #11A7DB; text-decoration: none;\"><strong>View Invoice</strong></a><br>									<br>									Best Regards,<br>									{SITE_NAME}</p>\n									</td>\n								</tr>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n					<tr>\n						<td height=\"10\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>'),
(23, 'ticket_reply_email', 'Ticket [SUBJECT] response', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">	<tbody>		<tr>			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">				<tbody>					<tr>						<td height=\"50\" width=\"600\">&nbsp;</td>					</tr>					<tr>						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>					</tr>					<tr>						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px;\">							<tbody>								<tr>									<td height=\"10\" width=\"560\">&nbsp;</td>								</tr>								<tr>									<td width=\"560\">									<h4>Ticket Response</h4>									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Hi There,</p>								<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">A new response has been added to Ticket <strong>{SUBJECT}</strong><br><br>Ticket : <strong>#{TICKET_CODE}</strong><br>Status : <strong>{TICKET_STATUS}</strong><br><span style=\"font-style:italic;\">{TICKET_REPLY}</span><br><br>\nTo see the response and post additional comments, click on the link below:<br><a href=\"{TICKET_LINK}\" style=\"color: #11A7DB; text-decoration: none;\"><strong>View Ticket</strong></a><br><br>								Best Regards,<br>																		{SITE_NAME}</p>									</td>								</tr>								<tr>									<td height=\"10\" width=\"560\">&nbsp;</td>								</tr>							</tbody>						</table>						</td>					</tr>					<tr>						<td height=\"10\" width=\"600\">&nbsp;</td>					</tr>					<tr>						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>					</tr>				</tbody>			</table>			</td>		</tr>	</tbody></table>'),
(24, 'ticket_closed_email', 'Ticket [SUBJECT] closed', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">	<tbody>		<tr>			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">				<tbody>					<tr>						<td height=\"50\" width=\"600\">&nbsp;</td>					</tr>					<tr>						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>					</tr>					<tr>						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px;\">							<tbody>								<tr>									<td height=\"10\" width=\"560\">&nbsp;</td>								</tr>								<tr>									<td width=\"560\">									<h4>Ticket Closed</h4>									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Hi {REPORTER_EMAIL},</p>								<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">			Ticket <strong>{SUBJECT}</strong> has been closed by <strong>{STAFF_USERNAME}</strong><br>Ticket : <strong>#{TICKET_CODE}</strong><br>Status : <strong>{TICKET_STATUS}</strong><br>To see the responses or open the ticket, click on the link below:<br><a href=\"{TICKET_LINK}\" style=\"color: #11A7DB; text-decoration: none;\"><strong>View Ticket</strong></a><br><br><br>									Best Regards,									<br>																		{SITE_NAME}</p>									</td>								</tr>								<tr>									<td height=\"10\" width=\"560\">&nbsp;</td>								</tr>							</tbody>						</table>						</td>					</tr>					<tr>						<td height=\"10\" width=\"600\">&nbsp;</td>					</tr>					<tr>						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>					</tr>				</tbody>			</table>			</td>		</tr>	</tbody></table>'),
(28, 'auto_close_ticket', 'Ticket Auto Closed', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">\n	<tbody>\n		<tr>\n			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n				<tbody>\n					<tr>\n						<td height=\"50\" width=\"600\"> </td>\n					</tr>\n					<tr>\n						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>\n					</tr>\n					<tr>\n						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px;\">\n							<tbody>\n								<tr>\n									<td height=\"10\" width=\"560\"> </td>\n								</tr>\n								<tr>\n									<td width=\"560\">									<h4>Ticket Closed</h4>\n									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Hi {REPORTER_EMAIL},</p>\n								<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">Ticket <strong>{SUBJECT}</strong> has been auto closed due to inactivity. <br><br>Ticket : <strong>#{TICKET_CODE}</strong><br>Status : <strong>{TICKET_STATUS}</strong><br>To see the responses or open the ticket, click on the link below:<br><a href=\"{TICKET_LINK}\" style=\"color: #11A7DB; text-decoration: none;\"><strong>View Ticket</strong></a><br><br><br>									Best Regards,									<br>																		{SITE_NAME}</p>\n									</td>\n								</tr>\n								<tr>\n									<td height=\"10\" width=\"560\"> </td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n					<tr>\n						<td height=\"10\" width=\"600\"> </td>\n					</tr>\n					<tr>\n						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>'),
(32, 'ticket_reopened_email', 'Ticket [SUBJECT] reopened', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"backgroundTable\">\n	<tbody>\n		<tr>\n			<td valign=\"top\">			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n				<tbody>\n					<tr>\n						<td height=\"50\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td height=\"90\" style=\"color:#999999\" width=\"600\">{INVOICE_LOGO}</td>\n					</tr>\n					<tr>\n						<td bgcolor=\"whitesmoke\" height=\"200\" style=\"background:whitesmoke; border:1px solid #e0e0e0; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\">						<table align=\"center\" style=\"margin-left:15px;\">\n							<tbody>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n								<tr>\n									<td width=\"560\">									<h4>Ticket re-opened</h4>\n									<p style=\"font-size:12px; font-family:Helvetica,Arial,sans-serif\">Hi {RECIPIENT},</p>\n								<p style=\"font-size:12px; line-height:20px; font-family:Helvetica,Arial,sans-serif\">			Ticket <b>{SUBJECT}</b> was re-opened by <b>{USER}</b>.<br>Status : Open<br>Click on the below link to see the ticket details and post replies: <br><a href=\"{TICKET_LINK}\" style=\"color: #11A7DB; text-decoration: none;\"><strong>View Ticket</strong></a><br><br><br>									Best Regards,									<br>																		{SITE_NAME}</p>\n									</td>\n								</tr>\n								<tr>\n									<td height=\"10\" width=\"560\">&nbsp;</td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n					<tr>\n						<td height=\"10\" width=\"600\">&nbsp;</td>\n					</tr>\n					<tr>\n						<td align=\"right\"><span style=\"font-size:10px; color:#999999; font-family:Helvetica,Arial,sans-serif\">{SIGNATURE}</span></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `events_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `events_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `events_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `events_venu` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `events_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `events_media` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `events_category` text COLLATE utf8mb4_unicode_ci,
  `events_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `events_mobile_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `events_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `events_meta_title` text COLLATE utf8mb4_unicode_ci,
  `events_meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `events_author`, `events_date`, `events_title`, `events_venu`, `events_content`, `events_media`, `events_category`, `events_status`, `events_mobile_no`, `events_slug`, `events_meta_title`, `events_meta_description`) VALUES
(1, 1, '2018-06-26 18:22:42', 'What Is Career Counseling?', 'Fres-Net Office, Sector-66, Noida', 'Freelancers are becoming a very important part of the global workforce. The figure climbs daily, as more and more people are opting for telecommuting instead of traditional jobs.', '20180626174110-2018-06-26events174026.jpg', '5', '1', '9766554433', 'What Is Career Counseling', 'What Is Career Counseling', 'What Is Career Counseling'),
(2, 1, '2018-06-26 18:23:22', 'What Is Career Counseling?', 'Fres-Net Office, Sector-63, Noida', 'Freelancers are becoming a very important part of the global workforce. The figure climbs daily, as more and more people are opting for telecommuting instead of traditional jobs.', '20180626174234-2018-06-26events174214.jpg', '5', '1', '9776443322', 'What Is Career Counseling', 'What Is Career Counseling', 'What Is Career Counseling'),
(3, 1, '2018-06-26 18:25:14', 'What is Freelancers are becoming a very important?', 'Fres-Net Office, Sector-644, Noida', 'Freelancers are becoming a very important part of the global workforce. The figure climbs daily, as more and more people are opting for telecommuting instead of traditional jobs.', '20180626182514-2018-06-26events182432.jpg', '5', '1', '9894849484', 'Freelancers are becoming', 'Freelancers are becoming', 'Freelancers are becoming');

-- --------------------------------------------------------

--
-- Table structure for table `events_category`
--

CREATE TABLE `events_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext,
  `image` text,
  `meta_title` text,
  `meta_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_category`
--

INSERT INTO `events_category` (`id`, `name`, `description`, `image`, `meta_title`, `meta_description`) VALUES
(5, 'Events', 'Career Events', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `exclusive_offer`
--

CREATE TABLE `exclusive_offer` (
  `id` int(11) NOT NULL,
  `course_id` int(100) DEFAULT NULL,
  `level_id` varchar(100) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exclusive_offer`
--

INSERT INTO `exclusive_offer` (`id`, `course_id`, `level_id`, `title`, `price`, `sale_price`, `created`) VALUES
(2, 1, '1,2', 'test', 644, 599, '2018-08-04 11:13:11'),
(3, 2, '2,3', 'offer2', 444, 333, '2018-08-04 11:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `package_id`) VALUES
(10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `franchisee`
--

CREATE TABLE `franchisee` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=individul ; 2 = company',
  `company_name` text,
  `company_type` varchar(200) DEFAULT NULL,
  `designation` text,
  `first_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `mobile` bigint(11) DEFAULT NULL,
  `date_meeting` date DEFAULT NULL,
  `time_slot` text,
  `comment` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `franchisee`
--

INSERT INTO `franchisee` (`id`, `type`, `company_name`, `company_type`, `designation`, `first_name`, `middle_name`, `last_name`, `email`, `mobile`, `date_meeting`, `time_slot`, `comment`, `created`) VALUES
(1, 1, '', '', 'web developer', 'Diwakar', 'kumar', 'pandey', 'diwakarnice@rediffmail.com', 9560087542, '2018-06-30', '10.30 AM - 12.00 PM', 'test', '2018-06-19 00:04:33'),
(2, 2, 'dkmgroup', 'mnc ', '', 'diwakar', 'diwakar', 'pandey', 'diwakar@gmail.com', 9898888833, '2018-06-28', '10.30 AM - 12.00 PM', 'TEST', '2018-06-19 00:12:53'),
(3, 1, '', '', 'sales', 'dkp', '', '', 'diwakarnice@rediffmail.com', 9888484847, '2018-06-30', '10.30 AM - 12.00 PM', 'test', '2018-06-19 00:32:45'),
(4, 1, '', '', 'sales', 'dkp', '', '', 'diwakarnice@rediffmail.com', 9888484847, '2018-06-30', '10.30 AM - 12.00 PM', 'test', '2018-06-19 00:33:41'),
(5, 1, '', '', 'it', 'diwakar', '', '', 'diwakarnice@rediffmail.com', 9898484444, '2018-06-27', '12.30 PM - 02.00 PM', 'test', '2018-06-19 01:48:57'),
(6, 2, 'dkmgroup', 'test', '', 'diwakar', 'kumar', 'pandey', 'diwakarnice@rediffmail.com', 9568686865, '2018-06-30', '10.30 AM - 12.00 PM', 'test', '2018-06-19 02:16:35'),
(7, 2, 'mohan interprices ', 'test', '', 'diwakar', '', 'pandey', 'diwakarnice@rediffmail.com', 9884884448, '2018-06-30', '10.30 AM - 12.00 PM', 'test', '2018-06-19 02:24:21'),
(8, 2, 'TechPrimes', 'IT Company', '', 'Kuber', 'Ji', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-29', '12.30 PM - 02.00 PM', 'Test Mail', '2018-06-19 02:45:46'),
(9, 1, '', '', 'testing', 'diwakar', '', 'test', 'diwakarnice@rediffmail.com', 9844774477, '2018-06-27', '12.30 PM - 02.00 PM', 'test', '2018-06-19 03:02:02'),
(10, 1, '', '', 'diwakar', 'diwakar', 'kumar', 'pandey', 'diwakarnice@rediffmail.com', 9884844444, '2018-06-27', '02.30 PM - 04.00 PM', 'test', '2018-06-19 03:32:44'),
(11, 2, 'TechPrime', 'IT Solution Company', '', 'Kuber', 'Ji', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-28', '10.30 AM - 12.00 PM', 'Test Mail', '2018-06-19 03:39:16'),
(12, 2, 'TechPrime', 'IT Solution', '', 'Kuber', 'Ji', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-26', '04.30 PM - 06.00 PM', 'I am working', '2018-06-19 03:43:05'),
(13, 2, 'TechPrime', 'IT Software Company', '', 'Kuber', '', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-20', '02.30 PM - 04.00 PM', 'Nice', '2018-06-19 04:24:55'),
(14, 2, 'TechPrime', 'IT Solution', '', 'Kuber', '', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-22', '10.30 AM - 12.00 PM', '', '2018-06-19 05:02:26'),
(15, 2, 'TechPrime', 'IT Solutions Pvt. Ltd.', '', 'Kuber', 'Ji', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-28', '12.30 PM - 02.00 PM', 'Test', '2018-06-19 06:53:30'),
(16, 2, 'TechPrime', '', '', 'Kuber', '', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-20', '04.30 PM - 06.00 PM', 'ssdfgsdfgsdfgsdg', '2018-06-19 07:25:33'),
(17, 2, 'TechPrime', 'IT Company', '', 'Kuber', '', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-29', '02.30 PM - 04.00 PM', 'Test mail', '2018-06-19 07:30:32'),
(18, 2, 'TechPrime', 'IT Solutions', '', 'Kuber', 'Ji', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-21', '02.30 PM - 04.00 PM', 'Test Message', '2018-06-19 17:35:14'),
(19, 2, 'Dkm', 'types of work', '', 'diwakar', 'kumar', 'pandey', 'diwakarnice@rediffmail.com', 9878337733, '2018-06-29', '10.30 AM - 12.00 PM', 'test mail', '2018-06-19 18:57:20'),
(20, 1, '', '', 'Designer', 'Kuber', 'Ji', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-26', '02.30 PM - 04.00 PM', 'Testing Purpose', '2018-06-19 18:58:14'),
(21, 2, 'TechPrime', 'IT Solutions Pvt. Ltd.', '', 'Kuber', 'Ji', 'Dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-06-28', '02.30 PM - 04.00 PM', 'Testing Mail', '2018-06-19 19:16:43'),
(42, 1, '', '', 'designer', 'kuber', 'ji', 'dixit', 'kuber.dixit@gmail.com', 9953764841, '2018-07-23', '10.30 AM - 12.00 PM', 'test', '2018-07-14 03:06:16'),
(43, 1, '', '', 'test', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9884334433, '2018-07-31', '10.30 AM - 12.00 PM', 'test', '2018-07-14 20:40:27'),
(44, 1, '', '', 'developer', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-03', '10.30 AM - 12.00 PM', 'test otp', '2018-07-16 20:37:18'),
(45, 2, 'dkm group', 'IT', '', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-30', '02.30 PM - 04.00 PM', 'test', '2018-08-06 23:25:43'),
(46, 2, 'dkm group', 'IT', '', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-30', '02.30 PM - 04.00 PM', 'test', '2018-08-06 23:26:04'),
(47, 2, 'dkm group', 'IT', '', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-30', '02.30 PM - 04.00 PM', 'test', '2018-08-06 23:33:22'),
(48, 2, 'dkm group', 'IT', '', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-30', '02.30 PM - 04.00 PM', 'test', '2018-08-06 23:35:22'),
(49, 2, 'dkm group', 'IT', '', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-30', '02.30 PM - 04.00 PM', 'test', '2018-08-06 23:36:30'),
(50, 2, 'dkm group', 'IT', '', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-30', '02.30 PM - 04.00 PM', 'test', '2018-08-06 23:38:26'),
(51, 2, 'dkm group', 'IT', '', 'diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-30', '02.30 PM - 04.00 PM', 'test', '2018-08-06 23:44:50'),
(52, 2, 'dsf', 'dkm group', '', 'by', 'ds', 'sd', 'diwakar@dkm.com', 9560086270, '2018-08-27', '10.30 AM - 12.00 PM', 'ng', '2018-08-06 23:45:42'),
(53, 2, 'dsf', 'dkm group', '', 'by', 'ds', 'sd', 'diwakar@dkm.com', 9560086270, '2018-08-27', '10.30 AM - 12.00 PM', 'ng', '2018-08-06 23:46:00'),
(54, 2, 'dsf', 'dkm group', '', 'by', 'ds', 'sd', 'diwakar@dkm.com', 9560086270, '2018-08-27', '10.30 AM - 12.00 PM', 'ng', '2018-08-06 23:56:41'),
(55, 2, 'dsf', 'dkm group', '', 'by', 'ds', 'sd', 'diwakar@dkm.com', 9560086270, '2018-08-27', '10.30 AM - 12.00 PM', 'ng', '2018-08-06 23:57:19'),
(56, 2, 'dsf', 'dkm group', '', 'by', 'ds', 'sd', 'diwakar@dkm.com', 9560086270, '2018-08-27', '10.30 AM - 12.00 PM', 'ng', '2018-08-07 00:39:12'),
(57, 2, 'dkm group', 'dkm group', '', 'by', 'ds', 'sd', 'buy@dkm.com', 9560086270, '2018-08-27', '10.30 AM - 12.00 PM', 'vxvxv', '2018-08-07 00:40:26'),
(58, 2, 'dkm group', 'dkm group', '', 'by', 'ds', 'sd', 'buy@dkm.com', 9560086270, '2018-08-27', '10.30 AM - 12.00 PM', 'vxvxv', '2018-08-07 00:41:09'),
(59, 2, 'dkm group', 'dkm group', '', 'by', 'ds', 'sd', 'buy@dkm.com', 9560086270, '2018-08-27', '10.30 AM - 12.00 PM', 'vxvxv', '2018-08-07 02:19:20'),
(60, 1, '', '', 'xvxvx', 'dfs', 'sf', 'sfd', 'buy@dkm.com', 9560086270, '2018-08-10', '10.30 AM - 12.00 PM', 'dgfdg', '2018-08-07 02:53:58'),
(61, 1, '', '', 'xvxvx', 'dfs', 'sf', 'sfd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-10', '10.30 AM - 12.00 PM', 'dgfdg', '2018-08-07 03:05:50'),
(62, 1, '', '', 'xvxvx', 'dfs', 'sf', 'sfd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-10', '10.30 AM - 12.00 PM', 'dgfdg', '2018-08-07 03:09:28'),
(63, 1, '', '', 'xvxvx', 'dfs', 'sf', 'sfd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-10', '10.30 AM - 12.00 PM', 'dgfdg', '2018-08-07 03:10:33'),
(64, 1, '', '', 'xvxvx', 'dfs', 'sf', 'sfd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-10', '10.30 AM - 12.00 PM', 'dgfdg', '2018-08-07 03:11:08'),
(65, 1, '', '', 'xvxvx', 'dfs', 'sf', 'sfd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-10', '10.30 AM - 12.00 PM', 'dgfdg', '2018-08-07 03:16:57'),
(66, 1, '', '', 'xvxvx', 'dfs', 'sf', 'sfd', 'diwakar.p@dkmgroup.in', 9953764841, '2018-08-10', '10.30 AM - 12.00 PM', 'dgfdg', '2018-08-07 03:18:55'),
(67, 1, '', '', 'xvxvx', 'dfs', 'sf', 'sfd', 'diwakar.p@dkmgroup.in', 9953764841, '2018-08-10', '10.30 AM - 12.00 PM', 'dgfdg', '2018-08-07 03:26:14'),
(68, 2, 'techcaffee', 'IT', '', 'Diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-09-07', '12.30 PM - 02.00 PM', 'test', '2018-08-07 19:51:59'),
(69, 2, 'dkm group', 'dkm group', '', 'by', 'ds', 'sd', 'buy@dkm.com', 9560086270, '2018-08-29', '12.30 PM - 02.00 PM', 'test', '2018-08-07 20:08:31'),
(70, 1, '', '', 'ddsf', 'dfsdf', 'sdf', 'sd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-31', '10.30 AM - 12.00 PM', 'tesr', '2018-08-07 21:38:04'),
(71, 1, '', '', 'sada', 'da', 'dad', 'ada', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-31', '12.30 PM - 02.00 PM', 'test', '2018-08-07 21:41:11'),
(72, 1, '', '', 'ds', 'fsd', 'fsdfsdfs', 'sfs', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-31', '12.30 PM - 02.00 PM', 'test', '2018-08-07 21:44:48'),
(73, 1, '', '', 'ddfs', 'ds', 'sd', 'sd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-31', '10.30 AM - 12.00 PM', 'test', '2018-08-07 21:48:46'),
(74, 1, '', '', 'd', 'xcv', 'xcv', 'xcv', 'diwakar.p@dkmgroup.in', 956008670, '2018-08-08', '10.30 AM - 12.00 PM', 'fdf', '2018-08-07 21:50:56'),
(75, 1, '', '', 'dfjfj', 'fjd', 'fj', 'fjdjq', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-16', '12.30 PM - 02.00 PM', 'test', '2018-08-07 21:54:05'),
(76, 1, '', '', 'ddsd', 'dasd', 'dad', 'ada', 'diwakar.p@dkmgroup.in', 9560086270, '2018-09-07', '02.30 PM - 04.00 PM', 'test', '2018-08-08 00:03:26'),
(77, 1, '', '', 'dfs', 'sdsdf', 'dsf', 'sdf', 'diwakar.p@dkmgroup.in', 9560086270, '2018-09-07', '10.30 AM - 12.00 PM', 'afa', '2018-08-08 00:06:09'),
(78, 1, '', '', 'dvs', 'sdfs', 'dsf', 'dsf', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-31', '02.30 PM - 04.00 PM', 'fddgd', '2018-08-08 00:29:12'),
(79, 1, '', '', 'dfgd', 'df', 'fd', 'gf', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-08', '12.30 PM - 02.00 PM', 'wer', '2018-08-08 01:20:58'),
(80, 1, '', '', 'dfff', 'fdd', 'fdd', 'ddd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-09-05', '10.30 AM - 12.00 PM', 'test', '2018-08-08 01:31:15'),
(81, 1, '', '', 'tesf', 'kjj', 'j', 'hghjg', 'diwakar.p@dkmgroup.in', 9201619800, '2018-08-28', '04.30 PM - 06.00 PM', 'ijkl', '2018-08-08 01:38:45'),
(82, 1, '', '', 'dsf', 'sfs', 'sfs', 'sf', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-16', '02.30 PM - 04.00 PM', 'tesst', '2018-08-08 02:23:48'),
(83, 1, '', '', 'dsf', 'sdf', 'sdf', 'dsf', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-30', '10.30 AM - 12.00 PM', 'fsf', '2018-08-08 02:29:55'),
(84, 1, '', '', 'sd', 'as', 'as', 'asd', 'diwakar.p@dkmgroup.in', 9560086270, '2018-09-06', '02.30 PM - 04.00 PM', 'test', '2018-08-08 02:47:54'),
(85, 1, '', '', 'difkf', 'dsf', 'ds', 'dsf', 'diwakar.p@dkmgroup.in', 9560086270, '2018-08-29', '10.30 AM - 12.00 PM', 'test', '2018-08-08 19:36:44'),
(86, 2, 'dkmgroup', 'Web Development', '', 'Diwakar', 'kumar', 'pandey', 'diwakar.p@dkmgroup.in', 9560086270, '2018-09-06', '10.30 AM - 12.00 PM', 'test', '2018-08-08 20:17:31'),
(87, 1, '', '', 'fdfd', 'fd', 'fd', 'fd', 'buy@dkm.com', 9560086270, '2018-09-06', '10.30 AM - 12.00 PM', 'dffgd', '2018-08-08 20:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=individul ; 2 = company',
  `company` varchar(200) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `sub_type` tinyint(4) DEFAULT NULL COMMENT '1:Graduate;2:Post Graduate;3:less then five year;4:greater then five year',
  `first` varchar(250) DEFAULT NULL,
  `middle` varchar(250) DEFAULT NULL,
  `last` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `time` text,
  `comment` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`id`, `type`, `company`, `designation`, `sub_type`, `first`, `middle`, `last`, `email`, `mobile`, `meeting_date`, `time`, `comment`, `created`) VALUES
(2, 2, 'techcaffee', 'Developer', NULL, 'diwakar', 'kumar', 'pandey', 'diwakarmahidon3@gmail.com', 9878778877, '2018-06-28', '12.30 PM - 02.00 PM', 'test mail', '2018-06-22 06:07:49'),
(3, 2, 'techprime', 'Developer', 4, 'rajesh', 'kumar', 'pandey', 'rs3@gmail.com', 9878773333, '2018-06-30', '12.30 PM - 02.00 PM', 'test mail', '2018-06-22 06:16:23'),
(4, 2, 'techprime', 'sco', NULL, 'rakesh', '', '', 'test@gmail.com', 9588585858, '2018-06-30', '12.30 PM - 02.00 PM', 'test ', '2018-06-22 20:29:44'),
(5, 2, 'techprice', 'developer', 3, 'kapil', 'kumar', '', 'kapil@gmail.com', 9898484848, '2018-06-28', '12.30 PM - 02.00 PM', 'test mail', '2018-06-23 01:39:53'),
(6, 2, 'techprice', 'developer', 3, 'kapil', 'kumar', '', 'kapil@gmail.com', 9898484848, '2018-06-28', '12.30 PM - 02.00 PM', 'test mail', '2018-06-23 01:41:16'),
(7, 2, 'techcaffee', 'testing', NULL, 'DIWAKAR', 'PANDEY', '', 'diwakarnice@rediffmail.com', 9844848848, '2018-06-30', '10.30 AM - 12.00 PM', 'TEST', '2018-06-23 01:46:15'),
(8, 1, '', '', 2, 'tarun', 'Pratap', 'Singh', 'tarun.p@dkmgroup.in', 9718086111, '2018-06-25', '10.30 AM - 12.00 PM', '', '2018-06-29 01:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL,
  `is_private_key` tinyint(1) NOT NULL,
  `ip_addresses` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, '3C141339662085D0D32EBD634D67A541', 0, 0, 0, NULL, '2017-12-08 09:21:49'),
(2, 0, 'E783250303F6326BAD67D6D9AB97199A', 0, 1, 0, '', '2017-12-08 08:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `mailbox`
--

CREATE TABLE `mailbox` (
  `inbox_id` int(11) NOT NULL,
  `to` varchar(100) NOT NULL,
  `from` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` varchar(200) DEFAULT NULL,
  `message_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mailbox`
--

INSERT INTO `mailbox` (`inbox_id`, `to`, `from`, `subject`, `message_body`, `attach_file`, `message_time`) VALUES
(1, '2', '1', 'Mail Testing', 'Mail Testing 123', '20180205174106-2018-02-05mailbox174102.jpg', '2018-02-05 17:41:06'),
(2, '2', '1', 'Testing mail ascending', 'Testing mail ascending', '20180205180632-2018-02-05mailbox180629.jpg', '2018-02-05 18:06:32'),
(3, '2', '', 'Testing Input Mail', 'Testing Input Mail', '20180205230631-2018-02-05mailbox230629.jpg', '2018-02-05 23:06:31'),
(4, '2', '', 'Testing Mall Event for Emcee', 'Testing Mall Event', '20180205230816-2018-02-05mailbox230814.jpg', '2018-02-05 23:08:16'),
(5, '2', '', 'Testing Mall Event for Emcee', 'Testing Mall Event for Emcee &nbsp;&nbsp;', '20180205231210-2018-02-05mailbox231208.jpg', '2018-02-05 23:12:10'),
(6, '2', '1', 'Mail Testing', 'm', NULL, '2018-02-05 23:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `label` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `icon_color` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `menu_type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `label`, `type`, `icon_color`, `link`, `sort`, `parent`, `icon`, `menu_type_id`) VALUES
(1, 'MAIN NAVIGATION', 'label', 'default', 'administrator/dashboard', 1, 0, '', 1),
(2, 'Dashboard', 'menu', 'default', 'administrator/dashboard', 2, 0, 'fa-dashboard', 1),
(9, 'Users', 'menu', 'default', 'administrator/user', 19, 0, 'fa-user', 1),
(14, 'OTHER', 'label', '', '', 36, 0, '', 1),
(15, 'Settings', 'menu', 'text-red', 'administrator/settings', 37, 0, 'fa-circle-o', 1),
(18, 'Courses', 'menu', 'default', 'courses', 1, 0, '', 2),
(19, 'About Us', 'menu', 'default', 'page/about-us', 4, 83, '', 2),
(32, 'Contact Us', 'menu', 'default', 'contact', 6, 0, '', 2),
(31, 'Pages', 'menu', 'default', 'administrator/pages', 31, 0, 'fa-pagelines', 1),
(69, 'Franchisee', 'menu', 'default', 'administrator/franchisee', 18, 0, 'fa-cogs', 1),
(34, 'Blog', 'menu', 'default', 'administrator/blog_posts', 32, 0, 'fa-adjust', 1),
(35, 'Blog Posts', 'menu', 'default', 'administrator/blog_posts', 33, 34, '', 1),
(36, 'Blog Comments', 'menu', 'default', 'administrator/blog_comments', 34, 34, '', 1),
(66, 'Course Levels', 'menu', 'default', 'administrator/course_level', 14, 88, 'fa-bookmark', 1),
(67, 'Cart', 'menu', 'default', 'administrator/cart', 11, 0, 'fa-bitcoin', 1),
(65, 'Courses', 'menu', 'default', 'administrator/courses', 13, 88, 'fa-book', 1),
(42, 'Blog Category', 'menu', 'default', 'administrator/blog_category', 35, 34, '', 1),
(43, 'Blog', 'menu', 'default', 'blog', 2, 0, '', 2),
(48, 'Announcements', 'menu', 'default', 'administrator/announcements', 25, 0, 'fa-bullhorn', 1),
(49, 'Marketing', 'label', 'default', '#', 17, 0, '', 1),
(50, 'CMS', 'label', 'default', '#', 28, 0, '', 1),
(78, 'Role Management', 'menu', 'default', 'administrator/access', 4, 0, 'fa-adjust', 1),
(79, 'Access List', 'menu', 'default', 'administrator/access', 5, 78, 'fa-500px', 1),
(80, 'Group', 'menu', 'default', 'administrator/group', 6, 78, 'fa-500px', 1),
(70, 'Contact Form', 'menu', 'default', 'administrator/contact', 27, 0, 'fa-ambulance', 1),
(71, 'Testimonials', 'menu', 'default', 'administrator/testimonials', 26, 0, 'fa fa-user default', 1),
(72, 'Meeting', 'menu', 'default', '#', 21, 0, 'fa-adjust', 1),
(73, 'Jobseeker', 'menu', 'defualt', 'administrator/jobseeker', 22, 72, '', 1),
(74, 'Career Counselling', 'menu', 'defualt', 'administrator/career_counselling/', 23, 72, '', 1),
(75, 'Corporate Training', 'menu', 'defualt', 'administrator/corporate_training/', 24, 72, NULL, 1),
(76, 'Download', 'menu', 'default', 'administrator/download', 29, 0, 'fa-adjust', 1),
(77, 'Events', 'menu', 'default', 'administrator/events', 30, 0, 'fa-adjust', 1),
(81, 'permission', '', 'default', 'administrator/permission', 7, 78, 'fa-500px', 1),
(82, 'Menu', 'menu', 'default', 'administrator/menu', 3, 0, 'fa-star', 1),
(83, 'Fresh-Net', 'menu', 'default', '#', 3, 0, '', 2),
(84, 'Franchise', 'menu', 'default', 'franchise', 5, 83, '', 2),
(85, 'Downloads', 'menu', 'default', 'download', 37, 83, '', 2),
(86, 'Events', '', NULL, 'events', 38, 83, '', 2),
(87, 'Career', '', NULL, '#', 39, 83, '', 2),
(88, 'Courses Management', 'menu', 'default', '#', 12, 0, 'fa-book', 1),
(89, 'Course Modules', 'menu', 'default', 'administrator/Course_modules', 15, 88, '', 1),
(90, 'shop', 'label', 'default', '#', 8, 0, '', 1),
(91, 'Order', 'menu', 'default', 'administrator/orders', 9, 0, 'fa-adjust', 1),
(92, 'Rating', 'menu', 'default', 'administrator/view_rating', 20, 0, 'fa-adjust', 1),
(93, 'Course Modules Lectures', 'menu', 'default', 'administrator/course_modules_lectures', 16, 88, 'fa-adjust', 1),
(94, 'Offer', 'menu', 'default', '#', 10, 0, 'fa-adjust', 1),
(95, 'Exclusive Offer', 'menu', 'default', 'administrator/exclusive_offer', 46, 94, 'fa-adn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_icon`
--

CREATE TABLE `menu_icon` (
  `class_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_icon`
--

INSERT INTO `menu_icon` (`class_name`) VALUES
('fa-500px'),
('fa-adjust'),
('fa-adn'),
('fa-align'),
('fa-align'),
('fa-align'),
('fa-align'),
('fa-amazon'),
('fa-ambulance'),
('fa-american'),
('fa-anchor'),
('fa-android'),
('fa-angellist'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-apple'),
('fa-archive'),
('fa-area'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrows'),
('fa-arrows'),
('fa-arrows'),
('fa-arrows'),
('fa-asl'),
('fa-assistive'),
('fa-asterisk'),
('fa-at'),
('fa-audio'),
('fa-automobile'),
('fa-backward'),
('fa-balance'),
('fa-ban'),
('fa-bank'),
('fa-bar'),
('fa-bar'),
('fa-barcode'),
('fa-bars'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-bed'),
('fa-beer'),
('fa-behance'),
('fa-behance'),
('fa-bell'),
('fa-bell'),
('fa-bell'),
('fa-bell'),
('fa-bicycle'),
('fa-binoculars'),
('fa-birthday'),
('fa-bitbucket'),
('fa-bitbucket'),
('fa-bitcoin'),
('fa-black'),
('fa-blind'),
('fa-bluetooth'),
('fa-bluetooth'),
('fa-bold'),
('fa-bolt'),
('fa-bomb'),
('fa-book'),
('fa-bookmark'),
('fa-bookmark'),
('fa-braille'),
('fa-briefcase'),
('fa-btc'),
('fa-bug'),
('fa-building'),
('fa-building'),
('fa-bullhorn'),
('fa-bullseye'),
('fa-bus'),
('fa-buysellads'),
('fa-cab'),
('fa-calculator'),
('fa-calendar'),
('fa-calendar'),
('fa-calendar'),
('fa-calendar'),
('fa-calendar'),
('fa-calendar'),
('fa-camera'),
('fa-camera'),
('fa-car'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-cart'),
('fa-cart'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-certificate'),
('fa-chain'),
('fa-chain'),
('fa-check'),
('fa-check'),
('fa-check'),
('fa-check'),
('fa-check'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-child'),
('fa-chrome'),
('fa-circle'),
('fa-circle'),
('fa-circle'),
('fa-circle'),
('fa-clipboard'),
('fa-clock'),
('fa-clone'),
('fa-close'),
('fa-cloud'),
('fa-cloud'),
('fa-cloud'),
('fa-cny'),
('fa-code'),
('fa-code'),
('fa-codepen'),
('fa-codiepie'),
('fa-coffee'),
('fa-cog'),
('fa-cogs'),
('fa-columns'),
('fa-comment'),
('fa-comment'),
('fa-commenting'),
('fa-commenting'),
('fa-comments'),
('fa-comments'),
('fa-compass'),
('fa-compress'),
('fa-connectdevelop'),
('fa-contao'),
('fa-copy'),
('fa-copyright'),
('fa-creative'),
('fa-credit'),
('fa-credit'),
('fa-crop'),
('fa-crosshairs'),
('fa-css3'),
('fa-cube'),
('fa-cubes'),
('fa-cut'),
('fa-cutlery'),
('fa-dashboard'),
('fa-dashcube'),
('fa-database'),
('fa-deaf'),
('fa-deafness'),
('fa-dedent'),
('fa-delicious'),
('fa-desktop'),
('fa-deviantart'),
('fa-diamond'),
('fa-digg'),
('fa-dollar'),
('fa-dot'),
('fa-download'),
('fa-dribbble'),
('fa-dropbox'),
('fa-drupal'),
('fa-edge'),
('fa-edit'),
('fa-eject'),
('fa-ellipsis'),
('fa-ellipsis'),
('fa-empire'),
('fa-envelope'),
('fa-envelope'),
('fa-envelope'),
('fa-envira'),
('fa-eraser'),
('fa-eur'),
('fa-euro'),
('fa-exchange'),
('fa-exclamation'),
('fa-exclamation'),
('fa-exclamation'),
('fa-expand'),
('fa-expeditedssl'),
('fa-external'),
('fa-external'),
('fa-eye'),
('fa-eye'),
('fa-eyedropper'),
('fa-fa'),
('fa-facebook'),
('fa-facebook'),
('fa-facebook'),
('fa-facebook'),
('fa-fast'),
('fa-fast'),
('fa-fax'),
('fa-feed'),
('fa-female'),
('fa-fighter'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-files'),
('fa-film'),
('fa-filter'),
('fa-fire'),
('fa-fire'),
('fa-firefox'),
('fa-first'),
('fa-flag'),
('fa-flag'),
('fa-flag'),
('fa-flash'),
('fa-flask'),
('fa-flickr'),
('fa-floppy'),
('fa-folder'),
('fa-folder'),
('fa-folder'),
('fa-folder'),
('fa-font'),
('fa-font'),
('fa-fonticons'),
('fa-fort'),
('fa-forumbee'),
('fa-forward'),
('fa-foursquare'),
('fa-frown'),
('fa-futbol'),
('fa-gamepad'),
('fa-gavel'),
('fa-gbp'),
('fa-ge'),
('fa-gear'),
('fa-gears'),
('fa-genderless'),
('fa-get'),
('fa-gg'),
('fa-gg'),
('fa-gift'),
('fa-git'),
('fa-git'),
('fa-github'),
('fa-github'),
('fa-github'),
('fa-gitlab'),
('fa-gittip'),
('fa-glass'),
('fa-glide'),
('fa-glide'),
('fa-globe'),
('fa-google'),
('fa-google'),
('fa-google'),
('fa-google'),
('fa-google'),
('fa-google'),
('fa-graduation'),
('fa-gratipay'),
('fa-group'),
('fa-h'),
('fa-hacker'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hard'),
('fa-hashtag'),
('fa-hdd'),
('fa-header'),
('fa-headphones'),
('fa-heart'),
('fa-heart'),
('fa-heartbeat'),
('fa-history'),
('fa-home'),
('fa-hospital'),
('fa-hotel'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-houzz'),
('fa-html5'),
('fa-i'),
('fa-ils'),
('fa-image'),
('fa-inbox'),
('fa-indent'),
('fa-industry'),
('fa-info'),
('fa-info'),
('fa-inr'),
('fa-instagram'),
('fa-institution'),
('fa-internet'),
('fa-intersex'),
('fa-ioxhost'),
('fa-italic'),
('fa-joomla'),
('fa-jpy'),
('fa-jsfiddle'),
('fa-key'),
('fa-keyboard'),
('fa-krw'),
('fa-language'),
('fa-laptop'),
('fa-lastfm'),
('fa-lastfm'),
('fa-leaf'),
('fa-leanpub'),
('fa-legal'),
('fa-lemon'),
('fa-level'),
('fa-level'),
('fa-life'),
('fa-life'),
('fa-life'),
('fa-life'),
('fa-lightbulb'),
('fa-line'),
('fa-link'),
('fa-linkedin'),
('fa-linkedin'),
('fa-linux'),
('fa-list'),
('fa-list'),
('fa-list'),
('fa-list'),
('fa-location'),
('fa-lock'),
('fa-long'),
('fa-long'),
('fa-long'),
('fa-long'),
('fa-low'),
('fa-magic'),
('fa-magnet'),
('fa-mail'),
('fa-mail'),
('fa-mail'),
('fa-male'),
('fa-map'),
('fa-map'),
('fa-map'),
('fa-map'),
('fa-map'),
('fa-mars'),
('fa-mars'),
('fa-mars'),
('fa-mars'),
('fa-mars'),
('fa-maxcdn'),
('fa-meanpath'),
('fa-medium'),
('fa-medkit'),
('fa-meh'),
('fa-mercury'),
('fa-microphone'),
('fa-microphone'),
('fa-minus'),
('fa-minus'),
('fa-minus'),
('fa-minus'),
('fa-mixcloud'),
('fa-mobile'),
('fa-mobile'),
('fa-modx'),
('fa-money'),
('fa-moon'),
('fa-mortar'),
('fa-motorcycle'),
('fa-mouse'),
('fa-music'),
('fa-navicon'),
('fa-neuter'),
('fa-newspaper'),
('fa-object'),
('fa-object'),
('fa-odnoklassniki'),
('fa-odnoklassniki'),
('fa-opencart'),
('fa-openid'),
('fa-opera'),
('fa-optin'),
('fa-outdent'),
('fa-pagelines'),
('fa-paint'),
('fa-paper'),
('fa-paper'),
('fa-paperclip'),
('fa-paragraph'),
('fa-paste'),
('fa-pause'),
('fa-pause'),
('fa-pause'),
('fa-paw'),
('fa-paypal'),
('fa-pencil'),
('fa-pencil'),
('fa-pencil'),
('fa-percent'),
('fa-phone'),
('fa-phone'),
('fa-photo'),
('fa-picture'),
('fa-pie'),
('fa-pied'),
('fa-pied'),
('fa-pied'),
('fa-pinterest'),
('fa-pinterest'),
('fa-pinterest'),
('fa-plane'),
('fa-play'),
('fa-play'),
('fa-play'),
('fa-plug'),
('fa-plus'),
('fa-plus'),
('fa-plus'),
('fa-plus'),
('fa-power'),
('fa-print'),
('fa-product'),
('fa-puzzle'),
('fa-qq'),
('fa-qrcode'),
('fa-question'),
('fa-question'),
('fa-question'),
('fa-quote'),
('fa-quote'),
('fa-ra'),
('fa-random'),
('fa-rebel'),
('fa-recycle'),
('fa-reddit'),
('fa-reddit'),
('fa-reddit'),
('fa-refresh'),
('fa-registered'),
('fa-remove'),
('fa-renren'),
('fa-reorder'),
('fa-repeat'),
('fa-reply'),
('fa-reply'),
('fa-resistance'),
('fa-retweet'),
('fa-rmb'),
('fa-road'),
('fa-rocket'),
('fa-rotate'),
('fa-rotate'),
('fa-rouble'),
('fa-rss'),
('fa-rss'),
('fa-rub'),
('fa-ruble'),
('fa-rupee'),
('fa-safari'),
('fa-save'),
('fa-scissors'),
('fa-scribd'),
('fa-search'),
('fa-search'),
('fa-search'),
('fa-sellsy'),
('fa-send'),
('fa-send'),
('fa-server'),
('fa-share'),
('fa-share'),
('fa-share'),
('fa-share'),
('fa-share'),
('fa-shekel'),
('fa-sheqel'),
('fa-shield'),
('fa-ship'),
('fa-shirtsinbulk'),
('fa-shopping'),
('fa-shopping'),
('fa-shopping'),
('fa-sign'),
('fa-sign'),
('fa-sign'),
('fa-signal'),
('fa-signing'),
('fa-simplybuilt'),
('fa-sitemap'),
('fa-skyatlas'),
('fa-skype'),
('fa-slack'),
('fa-sliders'),
('fa-slideshare'),
('fa-smile'),
('fa-snapchat'),
('fa-snapchat'),
('fa-snapchat'),
('fa-soccer'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-soundcloud'),
('fa-space'),
('fa-spinner'),
('fa-spoon'),
('fa-spotify'),
('fa-square'),
('fa-square'),
('fa-stack'),
('fa-stack'),
('fa-star'),
('fa-star'),
('fa-star'),
('fa-star'),
('fa-star'),
('fa-star'),
('fa-steam'),
('fa-steam'),
('fa-step'),
('fa-step'),
('fa-stethoscope'),
('fa-sticky'),
('fa-sticky'),
('fa-stop'),
('fa-stop'),
('fa-stop'),
('fa-street'),
('fa-strikethrough'),
('fa-stumbleupon'),
('fa-stumbleupon'),
('fa-subscript'),
('fa-subway'),
('fa-suitcase'),
('fa-sun'),
('fa-superscript'),
('fa-support'),
('fa-table'),
('fa-tablet'),
('fa-tachometer'),
('fa-tag'),
('fa-tags'),
('fa-tasks'),
('fa-taxi'),
('fa-television'),
('fa-tencent'),
('fa-terminal'),
('fa-text'),
('fa-text'),
('fa-th'),
('fa-th'),
('fa-th'),
('fa-themeisle'),
('fa-thumb'),
('fa-thumbs'),
('fa-thumbs'),
('fa-thumbs'),
('fa-thumbs'),
('fa-ticket'),
('fa-times'),
('fa-times'),
('fa-times'),
('fa-tint'),
('fa-toggle'),
('fa-toggle'),
('fa-toggle'),
('fa-toggle'),
('fa-toggle'),
('fa-toggle'),
('fa-trademark'),
('fa-train'),
('fa-transgender'),
('fa-transgender'),
('fa-trash'),
('fa-trash'),
('fa-tree'),
('fa-trello'),
('fa-tripadvisor'),
('fa-trophy'),
('fa-truck'),
('fa-try'),
('fa-tty'),
('fa-tumblr'),
('fa-tumblr'),
('fa-turkish'),
('fa-tv'),
('fa-twitch'),
('fa-twitter'),
('fa-twitter'),
('fa-umbrella'),
('fa-underline'),
('fa-undo'),
('fa-universal'),
('fa-university'),
('fa-unlink'),
('fa-unlock'),
('fa-unlock'),
('fa-unsorted'),
('fa-upload'),
('fa-usb'),
('fa-usd'),
('fa-user'),
('fa-user'),
('fa-user'),
('fa-user'),
('fa-user'),
('fa-users'),
('fa-venus'),
('fa-venus'),
('fa-venus'),
('fa-viacoin'),
('fa-viadeo'),
('fa-viadeo'),
('fa-video'),
('fa-vimeo'),
('fa-vimeo'),
('fa-vine'),
('fa-vk'),
('fa-volume'),
('fa-volume'),
('fa-volume'),
('fa-volume'),
('fa-warning'),
('fa-wechat'),
('fa-weibo'),
('fa-weixin'),
('fa-whatsapp'),
('fa-wheelchair'),
('fa-wheelchair'),
('fa-wifi'),
('fa-wikipedia'),
('fa-windows'),
('fa-won'),
('fa-wordpress'),
('fa-wpbeginner'),
('fa-wpforms'),
('fa-wrench'),
('fa-xing'),
('fa-xing'),
('fa-y'),
('fa-y'),
('fa-yahoo'),
('fa-yc'),
('fa-yc'),
('fa-yelp'),
('fa-yen'),
('fa-yoast'),
('fa-youtube'),
('fa-youtube'),
('fa-youtube'),
('fa-500px'),
('fa-adjust'),
('fa-adn'),
('fa-align'),
('fa-align'),
('fa-align'),
('fa-align'),
('fa-amazon'),
('fa-ambulance'),
('fa-american'),
('fa-anchor'),
('fa-android'),
('fa-angellist'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-angle'),
('fa-apple'),
('fa-archive'),
('fa-area'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrow'),
('fa-arrows'),
('fa-arrows'),
('fa-arrows'),
('fa-arrows'),
('fa-asl'),
('fa-assistive'),
('fa-asterisk'),
('fa-at'),
('fa-audio'),
('fa-automobile'),
('fa-backward'),
('fa-balance'),
('fa-ban'),
('fa-bank'),
('fa-bar'),
('fa-bar'),
('fa-barcode'),
('fa-bars'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-battery'),
('fa-bed'),
('fa-beer'),
('fa-behance'),
('fa-behance'),
('fa-bell'),
('fa-bell'),
('fa-bell'),
('fa-bell'),
('fa-bicycle'),
('fa-binoculars'),
('fa-birthday'),
('fa-bitbucket'),
('fa-bitbucket'),
('fa-bitcoin'),
('fa-black'),
('fa-blind'),
('fa-bluetooth'),
('fa-bluetooth'),
('fa-bold'),
('fa-bolt'),
('fa-bomb'),
('fa-book'),
('fa-bookmark'),
('fa-bookmark'),
('fa-braille'),
('fa-briefcase'),
('fa-btc'),
('fa-bug'),
('fa-building'),
('fa-building'),
('fa-bullhorn'),
('fa-bullseye'),
('fa-bus'),
('fa-buysellads'),
('fa-cab'),
('fa-calculator'),
('fa-calendar'),
('fa-calendar'),
('fa-calendar'),
('fa-calendar'),
('fa-calendar'),
('fa-calendar'),
('fa-camera'),
('fa-camera'),
('fa-car'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-caret'),
('fa-cart'),
('fa-cart'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-cc'),
('fa-certificate'),
('fa-chain'),
('fa-chain'),
('fa-check'),
('fa-check'),
('fa-check'),
('fa-check'),
('fa-check'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-chevron'),
('fa-child'),
('fa-chrome'),
('fa-circle'),
('fa-circle'),
('fa-circle'),
('fa-circle'),
('fa-clipboard'),
('fa-clock'),
('fa-clone'),
('fa-close'),
('fa-cloud'),
('fa-cloud'),
('fa-cloud'),
('fa-cny'),
('fa-code'),
('fa-code'),
('fa-codepen'),
('fa-codiepie'),
('fa-coffee'),
('fa-cog'),
('fa-cogs'),
('fa-columns'),
('fa-comment'),
('fa-comment'),
('fa-commenting'),
('fa-commenting'),
('fa-comments'),
('fa-comments'),
('fa-compass'),
('fa-compress'),
('fa-connectdevelop'),
('fa-contao'),
('fa-copy'),
('fa-copyright'),
('fa-creative'),
('fa-credit'),
('fa-credit'),
('fa-crop'),
('fa-crosshairs'),
('fa-css3'),
('fa-cube'),
('fa-cubes'),
('fa-cut'),
('fa-cutlery'),
('fa-dashboard'),
('fa-dashcube'),
('fa-database'),
('fa-deaf'),
('fa-deafness'),
('fa-dedent'),
('fa-delicious'),
('fa-desktop'),
('fa-deviantart'),
('fa-diamond'),
('fa-digg'),
('fa-dollar'),
('fa-dot'),
('fa-download'),
('fa-dribbble'),
('fa-dropbox'),
('fa-drupal'),
('fa-edge'),
('fa-edit'),
('fa-eject'),
('fa-ellipsis'),
('fa-ellipsis'),
('fa-empire'),
('fa-envelope'),
('fa-envelope'),
('fa-envelope'),
('fa-envira'),
('fa-eraser'),
('fa-eur'),
('fa-euro'),
('fa-exchange'),
('fa-exclamation'),
('fa-exclamation'),
('fa-exclamation'),
('fa-expand'),
('fa-expeditedssl'),
('fa-external'),
('fa-external'),
('fa-eye'),
('fa-eye'),
('fa-eyedropper'),
('fa-fa'),
('fa-facebook'),
('fa-facebook'),
('fa-facebook'),
('fa-facebook'),
('fa-fast'),
('fa-fast'),
('fa-fax'),
('fa-feed'),
('fa-female'),
('fa-fighter'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-file'),
('fa-files'),
('fa-film'),
('fa-filter'),
('fa-fire'),
('fa-fire'),
('fa-firefox'),
('fa-first'),
('fa-flag'),
('fa-flag'),
('fa-flag'),
('fa-flash'),
('fa-flask'),
('fa-flickr'),
('fa-floppy'),
('fa-folder'),
('fa-folder'),
('fa-folder'),
('fa-folder'),
('fa-font'),
('fa-font'),
('fa-fonticons'),
('fa-fort'),
('fa-forumbee'),
('fa-forward'),
('fa-foursquare'),
('fa-frown'),
('fa-futbol'),
('fa-gamepad'),
('fa-gavel'),
('fa-gbp'),
('fa-ge'),
('fa-gear'),
('fa-gears'),
('fa-genderless'),
('fa-get'),
('fa-gg'),
('fa-gg'),
('fa-gift'),
('fa-git'),
('fa-git'),
('fa-github'),
('fa-github'),
('fa-github'),
('fa-gitlab'),
('fa-gittip'),
('fa-glass'),
('fa-glide'),
('fa-glide'),
('fa-globe'),
('fa-google'),
('fa-google'),
('fa-google'),
('fa-google'),
('fa-google'),
('fa-google'),
('fa-graduation'),
('fa-gratipay'),
('fa-group'),
('fa-h'),
('fa-hacker'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hand'),
('fa-hard'),
('fa-hashtag'),
('fa-hdd'),
('fa-header'),
('fa-headphones'),
('fa-heart'),
('fa-heart'),
('fa-heartbeat'),
('fa-history'),
('fa-home'),
('fa-hospital'),
('fa-hotel'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-hourglass'),
('fa-houzz'),
('fa-html5'),
('fa-i'),
('fa-ils'),
('fa-image'),
('fa-inbox'),
('fa-indent'),
('fa-industry'),
('fa-info'),
('fa-info'),
('fa-inr'),
('fa-instagram'),
('fa-institution'),
('fa-internet'),
('fa-intersex'),
('fa-ioxhost'),
('fa-italic'),
('fa-joomla'),
('fa-jpy'),
('fa-jsfiddle'),
('fa-key'),
('fa-keyboard'),
('fa-krw'),
('fa-language'),
('fa-laptop'),
('fa-lastfm'),
('fa-lastfm'),
('fa-leaf'),
('fa-leanpub'),
('fa-legal'),
('fa-lemon'),
('fa-level'),
('fa-level'),
('fa-life'),
('fa-life'),
('fa-life'),
('fa-life'),
('fa-lightbulb'),
('fa-line'),
('fa-link'),
('fa-linkedin'),
('fa-linkedin'),
('fa-linux'),
('fa-list'),
('fa-list'),
('fa-list'),
('fa-list'),
('fa-location'),
('fa-lock'),
('fa-long'),
('fa-long'),
('fa-long'),
('fa-long'),
('fa-low'),
('fa-magic'),
('fa-magnet'),
('fa-mail'),
('fa-mail'),
('fa-mail'),
('fa-male'),
('fa-map'),
('fa-map'),
('fa-map'),
('fa-map'),
('fa-map'),
('fa-mars'),
('fa-mars'),
('fa-mars'),
('fa-mars'),
('fa-mars'),
('fa-maxcdn'),
('fa-meanpath'),
('fa-medium'),
('fa-medkit'),
('fa-meh'),
('fa-mercury'),
('fa-microphone'),
('fa-microphone'),
('fa-minus'),
('fa-minus'),
('fa-minus'),
('fa-minus'),
('fa-mixcloud'),
('fa-mobile'),
('fa-mobile'),
('fa-modx'),
('fa-money'),
('fa-moon'),
('fa-mortar'),
('fa-motorcycle'),
('fa-mouse'),
('fa-music'),
('fa-navicon'),
('fa-neuter'),
('fa-newspaper'),
('fa-object'),
('fa-object'),
('fa-odnoklassniki'),
('fa-odnoklassniki'),
('fa-opencart'),
('fa-openid'),
('fa-opera'),
('fa-optin'),
('fa-outdent'),
('fa-pagelines'),
('fa-paint'),
('fa-paper'),
('fa-paper'),
('fa-paperclip'),
('fa-paragraph'),
('fa-paste'),
('fa-pause'),
('fa-pause'),
('fa-pause'),
('fa-paw'),
('fa-paypal'),
('fa-pencil'),
('fa-pencil'),
('fa-pencil'),
('fa-percent'),
('fa-phone'),
('fa-phone'),
('fa-photo'),
('fa-picture'),
('fa-pie'),
('fa-pied'),
('fa-pied'),
('fa-pied'),
('fa-pinterest'),
('fa-pinterest'),
('fa-pinterest'),
('fa-plane'),
('fa-play'),
('fa-play'),
('fa-play'),
('fa-plug'),
('fa-plus'),
('fa-plus'),
('fa-plus'),
('fa-plus'),
('fa-power'),
('fa-print'),
('fa-product'),
('fa-puzzle'),
('fa-qq'),
('fa-qrcode'),
('fa-question'),
('fa-question'),
('fa-question'),
('fa-quote'),
('fa-quote'),
('fa-ra'),
('fa-random'),
('fa-rebel'),
('fa-recycle'),
('fa-reddit'),
('fa-reddit'),
('fa-reddit'),
('fa-refresh'),
('fa-registered'),
('fa-remove'),
('fa-renren'),
('fa-reorder'),
('fa-repeat'),
('fa-reply'),
('fa-reply'),
('fa-resistance'),
('fa-retweet'),
('fa-rmb'),
('fa-road'),
('fa-rocket'),
('fa-rotate'),
('fa-rotate'),
('fa-rouble'),
('fa-rss'),
('fa-rss'),
('fa-rub'),
('fa-ruble'),
('fa-rupee'),
('fa-safari'),
('fa-save'),
('fa-scissors'),
('fa-scribd'),
('fa-search'),
('fa-search'),
('fa-search'),
('fa-sellsy'),
('fa-send'),
('fa-send'),
('fa-server'),
('fa-share'),
('fa-share'),
('fa-share'),
('fa-share'),
('fa-share'),
('fa-shekel'),
('fa-sheqel'),
('fa-shield'),
('fa-ship'),
('fa-shirtsinbulk'),
('fa-shopping'),
('fa-shopping'),
('fa-shopping'),
('fa-sign'),
('fa-sign'),
('fa-sign'),
('fa-signal'),
('fa-signing'),
('fa-simplybuilt'),
('fa-sitemap'),
('fa-skyatlas'),
('fa-skype'),
('fa-slack'),
('fa-sliders'),
('fa-slideshare'),
('fa-smile'),
('fa-snapchat'),
('fa-snapchat'),
('fa-snapchat'),
('fa-soccer'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-sort'),
('fa-soundcloud'),
('fa-space'),
('fa-spinner'),
('fa-spoon'),
('fa-spotify'),
('fa-square'),
('fa-square'),
('fa-stack'),
('fa-stack'),
('fa-star'),
('fa-star'),
('fa-star'),
('fa-star'),
('fa-star'),
('fa-star'),
('fa-steam'),
('fa-steam'),
('fa-step'),
('fa-step'),
('fa-stethoscope'),
('fa-sticky'),
('fa-sticky'),
('fa-stop'),
('fa-stop'),
('fa-stop'),
('fa-street'),
('fa-strikethrough'),
('fa-stumbleupon'),
('fa-stumbleupon'),
('fa-subscript'),
('fa-subway'),
('fa-suitcase'),
('fa-sun'),
('fa-superscript'),
('fa-support'),
('fa-table'),
('fa-tablet'),
('fa-tachometer'),
('fa-tag'),
('fa-tags'),
('fa-tasks'),
('fa-taxi'),
('fa-television'),
('fa-tencent'),
('fa-terminal'),
('fa-text'),
('fa-text'),
('fa-th'),
('fa-th'),
('fa-th'),
('fa-themeisle'),
('fa-thumb'),
('fa-thumbs'),
('fa-thumbs'),
('fa-thumbs'),
('fa-thumbs'),
('fa-ticket'),
('fa-times'),
('fa-times'),
('fa-times'),
('fa-tint'),
('fa-toggle'),
('fa-toggle'),
('fa-toggle'),
('fa-toggle'),
('fa-toggle'),
('fa-toggle'),
('fa-trademark'),
('fa-train'),
('fa-transgender'),
('fa-transgender'),
('fa-trash'),
('fa-trash'),
('fa-tree'),
('fa-trello'),
('fa-tripadvisor'),
('fa-trophy'),
('fa-truck'),
('fa-try'),
('fa-tty'),
('fa-tumblr'),
('fa-tumblr'),
('fa-turkish'),
('fa-tv'),
('fa-twitch'),
('fa-twitter'),
('fa-twitter'),
('fa-umbrella'),
('fa-underline'),
('fa-undo'),
('fa-universal'),
('fa-university'),
('fa-unlink'),
('fa-unlock'),
('fa-unlock'),
('fa-unsorted'),
('fa-upload'),
('fa-usb'),
('fa-usd'),
('fa-user'),
('fa-user'),
('fa-user'),
('fa-user'),
('fa-user'),
('fa-users'),
('fa-venus'),
('fa-venus'),
('fa-venus'),
('fa-viacoin'),
('fa-viadeo'),
('fa-viadeo'),
('fa-video'),
('fa-vimeo'),
('fa-vimeo'),
('fa-vine'),
('fa-vk'),
('fa-volume'),
('fa-volume'),
('fa-volume'),
('fa-volume'),
('fa-warning'),
('fa-wechat'),
('fa-weibo'),
('fa-weixin'),
('fa-whatsapp'),
('fa-wheelchair'),
('fa-wheelchair'),
('fa-wifi'),
('fa-wikipedia'),
('fa-windows'),
('fa-won'),
('fa-wordpress'),
('fa-wpbeginner'),
('fa-wpforms'),
('fa-wrench'),
('fa-xing'),
('fa-xing'),
('fa-y'),
('fa-y'),
('fa-yahoo'),
('fa-yc'),
('fa-yc'),
('fa-yelp'),
('fa-yen'),
('fa-yoast'),
('fa-youtube'),
('fa-youtube'),
('fa-youtube'),
('fa-balance-scale'),
('fa-battery-0'),
('fa-battery-1'),
('fa-battery-2'),
('fa-battery-3'),
('fa-battery-4'),
('fa-battery-empty'),
('fa-battery-full'),
('fa-battery-half'),
('fa-battery-quarter'),
('fa-battery-three'),
('fa-black-tie'),
('fa-calendar-check'),
('fa-calendar-minus'),
('fa-calendar-plus'),
('fa-calendar-times'),
('fa-cc-diners'),
('fa-cc-jcb'),
('fa-commenting-o'),
('fa-creative-commons'),
('fa-get-pocket'),
('fa-gg-circle'),
('fa-hand-grab'),
('fa-hand-lizard'),
('fa-hand-paper'),
('fa-hand-peace'),
('fa-hand-pointer'),
('fa-hand-rock'),
('fa-hand-scissors'),
('fa-hand-spock'),
('fa-hand-stop'),
('fa-hourglass-1'),
('fa-hourglass-2'),
('fa-hourglass-3'),
('fa-hourglass-end'),
('fa-hourglass-half'),
('fa-hourglass-o'),
('fa-hourglass-start'),
('fa-i-cursor'),
('fa-internet-explorer'),
('fa-map-o'),
('fa-map-pin'),
('fa-map-signs'),
('fa-mouse-pointer'),
('fa-object-group'),
('fa-object-ungroup'),
('fa-odnoklassniki-square'),
('fa-optin-monster'),
('fa-sticky-note'),
('fa-sticky-note'),
('fa-wikipedia-w'),
('fa-y-combinator'),
('fa-area-chart'),
('fa-arrows-h'),
('fa-arrows-v'),
('fa-balance-scale'),
('fa-bar-chart'),
('fa-bar-chart'),
('fa-battery-0'),
('fa-battery-1'),
('fa-battery-2'),
('fa-battery-3'),
('fa-battery-4'),
('fa-battery-empty'),
('fa-battery-full'),
('fa-battery-half'),
('fa-battery-quarter'),
('fa-battery-three'),
('fa-bell-o'),
('fa-bell-slash'),
('fa-bell-slash'),
('fa-birthday-cake'),
('fa-bookmark-o'),
('fa-building-o'),
('fa-calendar-check'),
('fa-calendar-minus'),
('fa-calendar-o'),
('fa-calendar-plus'),
('fa-calendar-times'),
('fa-camera-retro'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-square'),
('fa-cart-arrow'),
('fa-cart-plus'),
('fa-check-circle'),
('fa-check-circle'),
('fa-check-square'),
('fa-check-square'),
('fa-circle-o'),
('fa-circle-o'),
('fa-circle-thin'),
('fa-clock-o'),
('fa-cloud-download'),
('fa-cloud-upload'),
('fa-code-fork'),
('fa-comment-o'),
('fa-commenting-o'),
('fa-comments-o'),
('fa-creative-commons'),
('fa-credit-card'),
('fa-dot-circle'),
('fa-ellipsis-h'),
('fa-ellipsis-v'),
('fa-envelope-o'),
('fa-envelope-square'),
('fa-exclamation-circle'),
('fa-exclamation-triangle'),
('fa-external-link'),
('fa-external-link'),
('fa-eye-slash'),
('fa-fighter-jet'),
('fa-file-archive'),
('fa-file-audio'),
('fa-file-code'),
('fa-file-excel'),
('fa-file-image'),
('fa-file-movie'),
('fa-file-pdf'),
('fa-file-photo'),
('fa-file-picture'),
('fa-file-powerpoint'),
('fa-file-sound'),
('fa-file-video'),
('fa-file-word'),
('fa-file-zip'),
('fa-fire-extinguisher'),
('fa-flag-checkered'),
('fa-flag-o'),
('fa-folder-o'),
('fa-folder-open'),
('fa-folder-open'),
('fa-frown-o'),
('fa-futbol-o'),
('fa-graduation-cap'),
('fa-hand-grab'),
('fa-hand-lizard'),
('fa-hand-paper'),
('fa-hand-peace'),
('fa-hand-pointer'),
('fa-hand-rock'),
('fa-hand-scissors'),
('fa-hand-spock'),
('fa-hand-stop'),
('fa-hdd-o'),
('fa-heart-o'),
('fa-hourglass-1'),
('fa-hourglass-2'),
('fa-hourglass-3'),
('fa-hourglass-end'),
('fa-hourglass-half'),
('fa-hourglass-o'),
('fa-hourglass-start'),
('fa-i-cursor'),
('fa-info-circle'),
('fa-keyboard-o'),
('fa-lemon-o'),
('fa-level-down'),
('fa-level-up'),
('fa-life-bouy'),
('fa-life-buoy'),
('fa-life-ring'),
('fa-life-saver'),
('fa-lightbulb-o'),
('fa-line-chart'),
('fa-location-arrow'),
('fa-mail-forward'),
('fa-mail-reply'),
('fa-mail-reply'),
('fa-map-marker'),
('fa-map-o'),
('fa-map-pin'),
('fa-map-signs'),
('fa-meh-o'),
('fa-microphone-slash'),
('fa-minus-circle'),
('fa-minus-square'),
('fa-minus-square'),
('fa-mobile-phone'),
('fa-moon-o'),
('fa-mortar-board'),
('fa-mouse-pointer'),
('fa-newspaper-o'),
('fa-object-group'),
('fa-object-ungroup'),
('fa-paint-brush'),
('fa-paper-plane'),
('fa-paper-plane'),
('fa-pencil-square'),
('fa-pencil-square'),
('fa-phone-square'),
('fa-picture-o'),
('fa-pie-chart'),
('fa-plus-circle'),
('fa-plus-square'),
('fa-plus-square'),
('fa-power-off'),
('fa-puzzle-piece'),
('fa-question-circle'),
('fa-quote-left'),
('fa-quote-right'),
('fa-reply-all'),
('fa-rss-square'),
('fa-search-minus'),
('fa-search-plus'),
('fa-send-o'),
('fa-share-alt'),
('fa-share-alt'),
('fa-share-square'),
('fa-share-square'),
('fa-shopping-cart'),
('fa-sign-in'),
('fa-sign-out'),
('fa-smile-o'),
('fa-soccer-ball'),
('fa-sort-alpha'),
('fa-sort-alpha'),
('fa-sort-amount'),
('fa-sort-amount'),
('fa-sort-asc'),
('fa-sort-desc'),
('fa-sort-down'),
('fa-sort-numeric'),
('fa-sort-numeric'),
('fa-sort-up'),
('fa-space-shuttle'),
('fa-square-o'),
('fa-star-half'),
('fa-star-half'),
('fa-star-half'),
('fa-star-half'),
('fa-star-o'),
('fa-sticky-note'),
('fa-sticky-note'),
('fa-street-view'),
('fa-sun-o'),
('fa-thumb-tack'),
('fa-thumbs-down'),
('fa-thumbs-o'),
('fa-thumbs-o'),
('fa-thumbs-up'),
('fa-times-circle'),
('fa-times-circle'),
('fa-toggle-down'),
('fa-toggle-left'),
('fa-toggle-off'),
('fa-toggle-on'),
('fa-toggle-right'),
('fa-toggle-up'),
('fa-trash-o'),
('fa-unlock-alt'),
('fa-user-plus'),
('fa-user-secret'),
('fa-user-times'),
('fa-video-camera'),
('fa-volume-down'),
('fa-volume-off'),
('fa-volume-up'),
('fa-hand-grab'),
('fa-hand-lizard'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-paper'),
('fa-hand-peace'),
('fa-hand-pointer'),
('fa-hand-rock'),
('fa-hand-scissors'),
('fa-hand-spock'),
('fa-hand-stop'),
('fa-thumbs-down'),
('fa-thumbs-o'),
('fa-thumbs-o'),
('fa-thumbs-up'),
('fa-fighter-jet'),
('fa-space-shuttle'),
('fa-mars-double'),
('fa-mars-stroke'),
('fa-mars-stroke'),
('fa-mars-stroke'),
('fa-transgender-alt'),
('fa-venus-double'),
('fa-venus-mars'),
('fa-file-archive'),
('fa-file-audio'),
('fa-file-code'),
('fa-file-excel'),
('fa-file-image'),
('fa-file-movie'),
('fa-file-o'),
('fa-file-pdf'),
('fa-file-photo'),
('fa-file-picture'),
('fa-file-powerpoint'),
('fa-file-sound'),
('fa-file-text'),
('fa-file-text'),
('fa-file-video'),
('fa-file-word'),
('fa-file-zip'),
('fa-circle-o'),
('fa-check-square'),
('fa-check-square'),
('fa-circle-o'),
('fa-dot-circle'),
('fa-minus-square'),
('fa-minus-square'),
('fa-plus-square'),
('fa-plus-square'),
('fa-square-o'),
('fa-cc-amex'),
('fa-cc-diners'),
('fa-cc-discover'),
('fa-cc-jcb'),
('fa-cc-mastercard'),
('fa-cc-paypal'),
('fa-cc-stripe'),
('fa-cc-visa'),
('fa-credit-card'),
('fa-google-wallet'),
('fa-area-chart'),
('fa-bar-chart'),
('fa-bar-chart'),
('fa-line-chart'),
('fa-pie-chart'),
('fa-gg-circle'),
('fa-turkish-lira'),
('fa-align-center'),
('fa-align-justify'),
('fa-align-left'),
('fa-align-right'),
('fa-chain-broken'),
('fa-file-o'),
('fa-file-text'),
('fa-file-text'),
('fa-files-o'),
('fa-floppy-o'),
('fa-list-alt'),
('fa-list-ol'),
('fa-list-ul'),
('fa-rotate-left'),
('fa-rotate-right'),
('fa-text-height'),
('fa-text-width'),
('fa-th-large'),
('fa-th-list'),
('fa-angle-double'),
('fa-angle-double'),
('fa-angle-double'),
('fa-angle-double'),
('fa-angle-down'),
('fa-angle-left'),
('fa-angle-right'),
('fa-angle-up'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-down'),
('fa-arrow-left'),
('fa-arrow-right'),
('fa-arrow-up'),
('fa-arrows-alt'),
('fa-arrows-h'),
('fa-arrows-v'),
('fa-caret-down'),
('fa-caret-left'),
('fa-caret-right'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-up'),
('fa-chevron-circle'),
('fa-chevron-circle'),
('fa-chevron-circle'),
('fa-chevron-circle'),
('fa-chevron-down'),
('fa-chevron-left'),
('fa-chevron-right'),
('fa-chevron-up'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-o'),
('fa-long-arrow'),
('fa-long-arrow'),
('fa-long-arrow'),
('fa-long-arrow'),
('fa-toggle-down'),
('fa-toggle-left'),
('fa-toggle-right'),
('fa-toggle-up'),
('fa-arrows-alt'),
('fa-fast-backward'),
('fa-fast-forward'),
('fa-play-circle'),
('fa-play-circle'),
('fa-step-backward'),
('fa-step-forward'),
('fa-youtube-play'),
('fa-behance-square'),
('fa-bitbucket-square'),
('fa-black-tie'),
('fa-cc-amex'),
('fa-cc-diners'),
('fa-cc-discover'),
('fa-cc-jcb'),
('fa-cc-mastercard'),
('fa-cc-paypal'),
('fa-cc-stripe'),
('fa-cc-visa'),
('fa-facebook-f'),
('fa-facebook-official'),
('fa-facebook-square'),
('fa-get-pocket'),
('fa-gg-circle'),
('fa-git-square'),
('fa-github-alt'),
('fa-github-square'),
('fa-google-plus'),
('fa-google-plus'),
('fa-google-wallet'),
('fa-hacker-news'),
('fa-internet-explorer'),
('fa-lastfm-square'),
('fa-linkedin-square'),
('fa-odnoklassniki-square'),
('fa-optin-monster'),
('fa-pied-piper'),
('fa-pied-piper'),
('fa-pinterest-p'),
('fa-pinterest-square'),
('fa-reddit-square'),
('fa-share-alt'),
('fa-share-alt'),
('fa-stack-exchange'),
('fa-stack-overflow'),
('fa-steam-square'),
('fa-stumbleupon-circle'),
('fa-tencent-weibo'),
('fa-tumblr-square'),
('fa-twitter-square'),
('fa-vimeo-square'),
('fa-wikipedia-w'),
('fa-xing-square'),
('fa-y-combinator'),
('fa-y-combinator'),
('fa-yc-square'),
('fa-youtube-play'),
('fa-youtube-square'),
('fa-h-square'),
('fa-heart-o'),
('fa-hospital-o'),
('fa-plus-square'),
('fa-user-md'),
('fa-balance-scale'),
('fa-battery-0'),
('fa-battery-1'),
('fa-battery-2'),
('fa-battery-3'),
('fa-battery-4'),
('fa-battery-empty'),
('fa-battery-full'),
('fa-battery-half'),
('fa-battery-quarter'),
('fa-battery-three'),
('fa-black-tie'),
('fa-calendar-check'),
('fa-calendar-minus'),
('fa-calendar-plus'),
('fa-calendar-times'),
('fa-cc-diners'),
('fa-cc-jcb'),
('fa-commenting-o'),
('fa-creative-commons'),
('fa-get-pocket'),
('fa-gg-circle'),
('fa-hand-grab'),
('fa-hand-lizard'),
('fa-hand-paper'),
('fa-hand-peace'),
('fa-hand-pointer'),
('fa-hand-rock'),
('fa-hand-scissors'),
('fa-hand-spock'),
('fa-hand-stop'),
('fa-hourglass-1'),
('fa-hourglass-2'),
('fa-hourglass-3'),
('fa-hourglass-end'),
('fa-hourglass-half'),
('fa-hourglass-o'),
('fa-hourglass-start'),
('fa-i-cursor'),
('fa-internet-explorer'),
('fa-map-o'),
('fa-map-pin'),
('fa-map-signs'),
('fa-mouse-pointer'),
('fa-object-group'),
('fa-object-ungroup'),
('fa-odnoklassniki-square'),
('fa-optin-monster'),
('fa-sticky-note'),
('fa-sticky-note'),
('fa-wikipedia-w'),
('fa-y-combinator'),
('fa-area-chart'),
('fa-arrows-h'),
('fa-arrows-v'),
('fa-balance-scale'),
('fa-bar-chart'),
('fa-bar-chart'),
('fa-battery-0'),
('fa-battery-1'),
('fa-battery-2'),
('fa-battery-3'),
('fa-battery-4'),
('fa-battery-empty'),
('fa-battery-full'),
('fa-battery-half'),
('fa-battery-quarter'),
('fa-battery-three'),
('fa-bell-o'),
('fa-bell-slash'),
('fa-bell-slash'),
('fa-birthday-cake'),
('fa-bookmark-o'),
('fa-building-o'),
('fa-calendar-check'),
('fa-calendar-minus'),
('fa-calendar-o'),
('fa-calendar-plus'),
('fa-calendar-times'),
('fa-camera-retro'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-square'),
('fa-cart-arrow'),
('fa-cart-plus'),
('fa-check-circle'),
('fa-check-circle'),
('fa-check-square'),
('fa-check-square'),
('fa-circle-o'),
('fa-circle-o'),
('fa-circle-thin'),
('fa-clock-o'),
('fa-cloud-download'),
('fa-cloud-upload'),
('fa-code-fork'),
('fa-comment-o'),
('fa-commenting-o'),
('fa-comments-o'),
('fa-creative-commons'),
('fa-credit-card'),
('fa-dot-circle'),
('fa-ellipsis-h'),
('fa-ellipsis-v'),
('fa-envelope-o'),
('fa-envelope-square'),
('fa-exclamation-circle'),
('fa-exclamation-triangle'),
('fa-external-link'),
('fa-external-link'),
('fa-eye-slash'),
('fa-fighter-jet'),
('fa-file-archive'),
('fa-file-audio'),
('fa-file-code'),
('fa-file-excel'),
('fa-file-image'),
('fa-file-movie'),
('fa-file-pdf'),
('fa-file-photo'),
('fa-file-picture'),
('fa-file-powerpoint'),
('fa-file-sound'),
('fa-file-video'),
('fa-file-word'),
('fa-file-zip'),
('fa-fire-extinguisher'),
('fa-flag-checkered'),
('fa-flag-o'),
('fa-folder-o'),
('fa-folder-open'),
('fa-folder-open'),
('fa-frown-o'),
('fa-futbol-o'),
('fa-graduation-cap'),
('fa-hand-grab'),
('fa-hand-lizard'),
('fa-hand-paper'),
('fa-hand-peace'),
('fa-hand-pointer'),
('fa-hand-rock'),
('fa-hand-scissors'),
('fa-hand-spock'),
('fa-hand-stop'),
('fa-hdd-o'),
('fa-heart-o'),
('fa-hourglass-1'),
('fa-hourglass-2'),
('fa-hourglass-3'),
('fa-hourglass-end'),
('fa-hourglass-half'),
('fa-hourglass-o'),
('fa-hourglass-start'),
('fa-i-cursor'),
('fa-info-circle'),
('fa-keyboard-o'),
('fa-lemon-o'),
('fa-level-down'),
('fa-level-up'),
('fa-life-bouy'),
('fa-life-buoy'),
('fa-life-ring'),
('fa-life-saver'),
('fa-lightbulb-o'),
('fa-line-chart'),
('fa-location-arrow'),
('fa-mail-forward'),
('fa-mail-reply'),
('fa-mail-reply'),
('fa-map-marker'),
('fa-map-o'),
('fa-map-pin'),
('fa-map-signs'),
('fa-meh-o'),
('fa-microphone-slash'),
('fa-minus-circle'),
('fa-minus-square'),
('fa-minus-square'),
('fa-mobile-phone'),
('fa-moon-o'),
('fa-mortar-board'),
('fa-mouse-pointer'),
('fa-newspaper-o'),
('fa-object-group'),
('fa-object-ungroup'),
('fa-paint-brush'),
('fa-paper-plane'),
('fa-paper-plane'),
('fa-pencil-square'),
('fa-pencil-square'),
('fa-phone-square'),
('fa-picture-o'),
('fa-pie-chart'),
('fa-plus-circle'),
('fa-plus-square'),
('fa-plus-square'),
('fa-power-off'),
('fa-puzzle-piece'),
('fa-question-circle'),
('fa-quote-left'),
('fa-quote-right'),
('fa-reply-all'),
('fa-rss-square'),
('fa-search-minus'),
('fa-search-plus'),
('fa-send-o'),
('fa-share-alt'),
('fa-share-alt'),
('fa-share-square'),
('fa-share-square'),
('fa-shopping-cart'),
('fa-sign-in'),
('fa-sign-out'),
('fa-smile-o'),
('fa-soccer-ball'),
('fa-sort-alpha'),
('fa-sort-alpha'),
('fa-sort-amount'),
('fa-sort-amount'),
('fa-sort-asc'),
('fa-sort-desc'),
('fa-sort-down'),
('fa-sort-numeric'),
('fa-sort-numeric'),
('fa-sort-up'),
('fa-space-shuttle'),
('fa-square-o'),
('fa-star-half'),
('fa-star-half'),
('fa-star-half'),
('fa-star-half'),
('fa-star-o'),
('fa-sticky-note'),
('fa-sticky-note'),
('fa-street-view'),
('fa-sun-o'),
('fa-thumb-tack'),
('fa-thumbs-down'),
('fa-thumbs-o'),
('fa-thumbs-o'),
('fa-thumbs-up'),
('fa-times-circle'),
('fa-times-circle'),
('fa-toggle-down'),
('fa-toggle-left'),
('fa-toggle-off'),
('fa-toggle-on'),
('fa-toggle-right'),
('fa-toggle-up'),
('fa-trash-o'),
('fa-unlock-alt'),
('fa-user-plus'),
('fa-user-secret'),
('fa-user-times'),
('fa-video-camera'),
('fa-volume-down'),
('fa-volume-off'),
('fa-volume-up'),
('fa-hand-grab'),
('fa-hand-lizard'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-paper'),
('fa-hand-peace'),
('fa-hand-pointer'),
('fa-hand-rock'),
('fa-hand-scissors'),
('fa-hand-spock'),
('fa-hand-stop'),
('fa-thumbs-down'),
('fa-thumbs-o'),
('fa-thumbs-o'),
('fa-thumbs-up'),
('fa-fighter-jet'),
('fa-space-shuttle'),
('fa-mars-double'),
('fa-mars-stroke'),
('fa-mars-stroke'),
('fa-mars-stroke'),
('fa-transgender-alt'),
('fa-venus-double'),
('fa-venus-mars'),
('fa-file-archive'),
('fa-file-audio'),
('fa-file-code'),
('fa-file-excel'),
('fa-file-image'),
('fa-file-movie'),
('fa-file-o'),
('fa-file-pdf'),
('fa-file-photo'),
('fa-file-picture'),
('fa-file-powerpoint'),
('fa-file-sound'),
('fa-file-text'),
('fa-file-text'),
('fa-file-video'),
('fa-file-word'),
('fa-file-zip'),
('fa-circle-o'),
('fa-check-square'),
('fa-check-square'),
('fa-circle-o'),
('fa-dot-circle'),
('fa-minus-square'),
('fa-minus-square'),
('fa-plus-square'),
('fa-plus-square'),
('fa-square-o'),
('fa-cc-amex'),
('fa-cc-diners'),
('fa-cc-discover'),
('fa-cc-jcb'),
('fa-cc-mastercard'),
('fa-cc-paypal'),
('fa-cc-stripe'),
('fa-cc-visa'),
('fa-credit-card'),
('fa-google-wallet'),
('fa-area-chart'),
('fa-bar-chart'),
('fa-bar-chart'),
('fa-line-chart'),
('fa-pie-chart'),
('fa-gg-circle'),
('fa-turkish-lira'),
('fa-align-center'),
('fa-align-justify'),
('fa-align-left'),
('fa-align-right'),
('fa-chain-broken'),
('fa-file-o'),
('fa-file-text'),
('fa-file-text'),
('fa-files-o'),
('fa-floppy-o'),
('fa-list-alt'),
('fa-list-ol'),
('fa-list-ul'),
('fa-rotate-left'),
('fa-rotate-right'),
('fa-text-height'),
('fa-text-width'),
('fa-th-large'),
('fa-th-list'),
('fa-angle-double'),
('fa-angle-double'),
('fa-angle-double'),
('fa-angle-double'),
('fa-angle-down'),
('fa-angle-left'),
('fa-angle-right'),
('fa-angle-up'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-circle'),
('fa-arrow-down'),
('fa-arrow-left'),
('fa-arrow-right'),
('fa-arrow-up'),
('fa-arrows-alt'),
('fa-arrows-h'),
('fa-arrows-v'),
('fa-caret-down'),
('fa-caret-left'),
('fa-caret-right'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-square'),
('fa-caret-up'),
('fa-chevron-circle'),
('fa-chevron-circle'),
('fa-chevron-circle'),
('fa-chevron-circle'),
('fa-chevron-down'),
('fa-chevron-left'),
('fa-chevron-right'),
('fa-chevron-up'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-o'),
('fa-hand-o'),
('fa-long-arrow'),
('fa-long-arrow'),
('fa-long-arrow'),
('fa-long-arrow'),
('fa-toggle-down'),
('fa-toggle-left'),
('fa-toggle-right'),
('fa-toggle-up'),
('fa-arrows-alt'),
('fa-fast-backward'),
('fa-fast-forward'),
('fa-play-circle'),
('fa-play-circle'),
('fa-step-backward'),
('fa-step-forward'),
('fa-youtube-play'),
('fa-behance-square'),
('fa-bitbucket-square'),
('fa-black-tie'),
('fa-cc-amex'),
('fa-cc-diners'),
('fa-cc-discover'),
('fa-cc-jcb'),
('fa-cc-mastercard'),
('fa-cc-paypal'),
('fa-cc-stripe'),
('fa-cc-visa'),
('fa-facebook-f'),
('fa-facebook-official'),
('fa-facebook-square'),
('fa-get-pocket'),
('fa-gg-circle'),
('fa-git-square'),
('fa-github-alt'),
('fa-github-square'),
('fa-google-plus'),
('fa-google-plus'),
('fa-google-wallet'),
('fa-hacker-news'),
('fa-internet-explorer'),
('fa-lastfm-square'),
('fa-linkedin-square'),
('fa-odnoklassniki-square'),
('fa-optin-monster'),
('fa-pied-piper'),
('fa-pied-piper'),
('fa-pinterest-p'),
('fa-pinterest-square'),
('fa-reddit-square'),
('fa-share-alt'),
('fa-share-alt'),
('fa-stack-exchange'),
('fa-stack-overflow'),
('fa-steam-square'),
('fa-stumbleupon-circle'),
('fa-tencent-weibo'),
('fa-tumblr-square'),
('fa-twitter-square'),
('fa-vimeo-square'),
('fa-wikipedia-w'),
('fa-xing-square'),
('fa-y-combinator'),
('fa-y-combinator'),
('fa-yc-square'),
('fa-youtube-play'),
('fa-youtube-square'),
('fa-h-square'),
('fa-heart-o'),
('fa-hospital-o'),
('fa-plus-square'),
('fa-user-md');

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `definition` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `definition`) VALUES
(1, 'side menu', NULL),
(2, 'front main menu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_id` text NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  `user_address` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order_status` enum('Done') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart_id`, `total_amount`, `user_address`, `status`, `order_status`, `created`) VALUES
(1, 33, '27,28', 700, 0, 1, 'Done', '2018-07-24 04:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `course_id` int(10) DEFAULT NULL,
  `price` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `cart_id`, `order_id`, `user_id`, `product_id`, `course_id`, `price`, `quantity`) VALUES
(1, 27, 1, '33', 1, 1, '720', 1),
(2, 28, 1, '33', 5, 2, '700', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `content` text NOT NULL,
  `keyword` text,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `keyword`, `description`, `created_at`) VALUES
(1, 'about us', 'about-us', '<!--amp_1 start-->\r\n<section class=\"amp_1\" id=\"about_us\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"banner_sec\">\r\n<div class=\"col-sm-7\">\r\n<div class=\"abt_head\">\r\n<ul>\r\n	<li><a href=\"http://fresh-net.co/freshnet/\">Home</a></li>\r\n	<li>About Us</li>\r\n</ul>\r\n\r\n<h4>Opportunites Don&#39;t Happen. They are Learned...</h4>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-5\">&nbsp;</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--amp_1 end--><!--amp_3 start-->\r\n\r\n<section class=\"amp_2\">\r\n<div class=\"container abt_sec\">\r\n<div class=\"col-md-12\">\r\n<div class=\"row\">\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-3\">\r\n<div class=\"#\"><img alt=\"fresh logo\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/freshabout_logo.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-9\">\r\n<div class=\"head_pro abt_text\">\r\n<h1>BUY A DAY BY<br />\r\nINVESTING SECONDS...</h1>\r\n\r\n<p>Financial Management is the backbone of any Country&rsquo;s Economy. If you wish to pursue a Career in Finance, this industry offers a variety of positions according to different skills and interests. Getting a Job, Promotion, Career Change, Investment Planning to taking good financial decisions, Fresh-Net does that all for you.</p>\r\n&nbsp;\r\n\r\n<p>Fresh-Net adds a dimension to your Career Building abilities with a focus on your vision and what you believe in. With us, you upscale a journey of Career Advancement which helps you realize your potential and worth to grow and carve a niche for yourself. We are aware that every individual is unique and different in terms of capabilities and strengths and so; with our guidance, expertise and mindful research, we prepare you to be the best in market.<br />\r\n<br />\r\nGet a peek on our offerings and major highlights.</p>\r\n\r\n<h4>Corporate Trainings</h4>\r\n\r\n<p>We collaborate with MNCs and Organizations as dedicated training development partner to render practical and proficient corporate trainings by deemed IIT &amp; IIM alumnus.</p>\r\n\r\n<h4>Career Counselling</h4>\r\n\r\n<p>Build you career through our integrated and extensive career advancement modules and get industry certified with specialised Certificate course and trainings.</p>\r\n\r\n<h4>Financial Management</h4>\r\n\r\n<p>Find secured jobs and opportunities in Banking, Finance and Insurance sector through our domain experts with 10+ yrs enriched experience in corporate &amp; retail banking, NBFCs and financial services.</p>\r\n\r\n<h4>Internships</h4>\r\n\r\n<p>Industry internships for Students, College graduates and Freshers are available as basic ( &lt; 1 month ) and functional ( &gt; 1 month ) courses.<br />\r\n&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--\r\n			<div class=\"row pd_25\">\r\n                <div class=\"user_count\">\r\n                    <div class=\"col-sm-4 user_count_sec\">\r\n                        <h2>Users</h2>\r\n                        <span>1000+</span>\r\n                    </div>\r\n                    <div class=\"col-sm-4 user_count_sec\">\r\n                        <h2>Our Courses</h2>\r\n                        <span>03</span>\r\n                    </div>\r\n                    <div class=\"col-sm-4 user_count_sec\">\r\n                        <h2>Total Videos</h2>\r\n                        <span>100+</span>\r\n                    </div>    \r\n                </div>\r\n            </div>\r\n			--></div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"amp_4\">\r\n<div class=\"container sec-tab\">\r\n<h3>Things Behind The</h3>\r\n\r\n<ul class=\"nav nav-pills animated fadeInLeft bounce\">\r\n	<li class=\"active\"><a data-toggle=\"pill\" href=\"#possibilities\">Possibilities</a></li>\r\n	<li><a data-toggle=\"pill\" href=\"#anytime\">Anytime</a></li>\r\n	<li><a data-toggle=\"pill\" href=\"#everywhere\">Everywhere</a></li>\r\n</ul>\r\n\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade in active\" id=\"possibilities\">\r\n<div class=\"col-sm-12 mid_part\">\r\n<!--<div class=\"row pdb_80\">\r\n<div class=\"col-sm-6\">\r\n<div class=\"row ceo_sec\">\r\n<div class=\"col-sm-6 pd_0 ceo_img\"><img alt=\"ceo\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/ceo.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 ceo_content\">\r\n<h4>Mrs. Pushpi Singh</h4>\r\n\r\n<h5>CEO &amp; Director</h5>\r\n\r\n<p>With over 12 yrs exp. in Financial Management and Investment Banking, She is a young entrepreneur who has gained a wealth of experience and responsibilities through her positions and roles as Sr. Manager and Business development consultant with HDFC &amp; ICICI Prudential&#39;s in past.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>-->\r\n</div>\r\n<!--amp_3 start-->\r\n\r\n<div class=\"container\">\r\n<div class=\"col-md-8 col-md-offset-2\">\r\n<div class=\"row\">\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-7 pd_0\">\r\n<div class=\"mid_img\"><img alt=\"vision\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/vision.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-5 pdl_5\">\r\n<div class=\"head_pro\">\r\n<h3>Enlightened</h3>\r\n\r\n<h1>Vision</h1>\r\n\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-7 pd_0\">\r\n<div class=\"mid_img\"><img alt=\"mission\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/mission.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-5 pdl_5\">\r\n<div class=\"head_pro\">\r\n<h3>Steadfast</h3>\r\n\r\n<h1>Mission</h1>\r\n\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-7 pd_0\">\r\n<div class=\"mid_img\"><img alt=\"values\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/values.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-5 pdl_5\">\r\n<div class=\"head_pro\">\r\n<h3>Strong</h3>\r\n\r\n<h1>Values</h1>\r\n\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-7 pd_0\">\r\n<div class=\"mid_img\"><img alt=\"goals\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/goals.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-5 pdl_5\">\r\n<div class=\"head_pro\">\r\n<h3>Strategy &amp;</h3>\r\n\r\n<h1>Goals</h1>\r\n\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--amp_3 end--></div>\r\n\r\n<div class=\"tab-pane fade\" id=\"anytime\"><!--amp_3 start-->\r\n<div class=\"container\">\r\n<div class=\"col-md-8 col-md-offset-2\">\r\n<div class=\"row\">\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-4\">\r\n<div class=\"head_pro\">\r\n<h3>Financial</h3>\r\n\r\n<h1>Clock</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-8 pd_0\">\r\n<div class=\"head_pro\">\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;<br />\r\n<br />\r\nThis is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-4\">\r\n<div class=\"head_pro\">\r\n<h3>Career</h3>\r\n\r\n<h1>Clock</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-8 pd_0\">\r\n<div class=\"head_pro\">\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;<br />\r\n<br />\r\nThis is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-4\">\r\n<div class=\"head_pro\">\r\n<h3>Risk Management</h3>\r\n\r\n<h1>Clock</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-8 pd_0\">\r\n<div class=\"head_pro\">\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;<br />\r\n<br />\r\nThis is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-4\">\r\n<div class=\"head_pro\">\r\n<h3>Designing a</h3>\r\n\r\n<h1>Product</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-8 pd_0\">\r\n<div class=\"head_pro\">\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;<br />\r\n<br />\r\nThis is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--amp_3 end--></div>\r\n\r\n<div class=\"tab-pane fade\" id=\"everywhere\"><!--amp_3 start-->\r\n<div class=\"container\">\r\n<div class=\"col-md-8 col-md-offset-2\">\r\n<div class=\"row\">\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-4\">\r\n<div class=\"head_pro\">\r\n<h3>company</h3>\r\n\r\n<h1>Scope</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-8 pd_0\">\r\n<div class=\"head_pro\">\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;<br />\r\n<br />\r\nThis is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-4\">\r\n<div class=\"head_pro\">\r\n<h3>Global</h3>\r\n\r\n<h1>Access</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-8 pd_0\">\r\n<div class=\"head_pro\">\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;<br />\r\n<br />\r\nThis is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-4\">\r\n<div class=\"head_pro\">\r\n<h3>Why</h3>\r\n\r\n<h1>We Are</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-8 pd_0\">\r\n<div class=\"head_pro\">\r\n<p>This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;<br />\r\n<br />\r\n​​​​​​​This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it. This is the dummy text please change it.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--amp_3 end--></div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--amp_4 end-->', 'About Us - Corporate Trainings | Career Counselling | Internships Program', 'We at Fresh-Net - Advance Your Career with us in banking, finance and insurance domain. We provide career counsellors, corporate training and internships programs for Individuals and for Company.', '2018-06-29 20:37:22'),
(3, 'Terms and Conditions', 'terms', '<!--amp_1 start-->        \r\n<section class=\"amp_1\" id=\"about_us\">    \r\n<div class=\"container\">    \r\n  <div class=\"row\">\r\n    <div class=\"banner_sec\"> \r\n         <div class=\"col-sm-9\">\r\n             <div class=\"abt_head\">\r\n              <ul>\r\n                <li><a href=\"index.html\">Home</a> <i class=\"fa fa-angle-right\"></i></li>\r\n                <li>Privacy Policy</li>\r\n              </ul>\r\n              <h4>Donec Pedejusto, Fringilla vel, Aliquet Nec, Vulputate Eget, Arcu.</h4>\r\n            </div>  \r\n        </div>\r\n        <div class=\"col-sm-3\"></div>\r\n        <div class=\"clearfix\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n</section>\r\n<!--amp_1 end-->\r\n<!--amp_3 start-->            \r\n<section class=\"amp_2\">  \r\n<div class=\"container abt_sec\">    \r\n                <div class=\"col-md-12 pdb_80\">  \r\n                    <div class=\"row\">\r\n                        <div class=\"mid_part\">\r\n                        <div class=\"col-sm-3\">\r\n                            <div class=\"#\">\r\n                                <img src=\"http://localhost/techcaffee/freshnet/resources/images/fresh_logo.png\" class=\"img-responsive\" alt=\"fresh logo\">\r\n                            </div>    \r\n                        </div>\r\n                        <div class=\"col-sm-9\">\r\n                        <div class=\"head_pro abt_text\">\r\n                          <h3>What Information About Customers Does Fresh-Net Gather?</h3>    \r\n                            <p>Fresh-Net adds a dimension to your career building abilities with a focus on your vision and what you believe in. With us, you upscale a journey of career advancement which helps you realise your potential and worth to grow and carve a niche for yourself. We are aware that every individual is unique and different in terms of capabilities and strengths and so; with our guidance, expertise and mindful research, we prepare you to be the best in market.Get a peek on our offerings and major highlights.</p>\r\n                            <h4>Corporate Trainings</h4>\r\n                            <p>We collaborate with MNCs and Organizations as dedicated training development partner to render practical and proficient corporate trainings by deemed IIT & IIM alumnus.</p>\r\n                            <h4>Career Counselling</h4>\r\n                            <p>Build you career through our integrated and extensive career advancement modules and get industry certified with specialised 27 hours, 12 week Cubical Certificate course and trainings.</p>\r\n                            <h4>Banking, Financial Services and Insurance (BFSI)</h4>\r\n                            <p>Find secured jobs and opportunities in Banking, Finance and Insurance sector through our domain experts with 10+ yrs enriched experience in corporate & retail banking, NBFCs and financial services.</p>\r\n                            <h4>Internships</h4>\r\n                            <p>Industry internships for Students, College graduates and Freshers are available as basic College graduates and Freshers are available as basic .</p>\r\n                            <h3>What About Cookies?</h3>    \r\n                            <p>Fresh-Net adds a dimension to your career building abilities with a focus on your vision and what you believe in. With us, you upscale a journey of career advancement which helps you realise your potential and worth to grow and carve a niche for yourself. We are aware that every individual is unique and different in terms of capabilities and strengths and so; with our guidance, expertise and mindful research, we prepare you to be the best in market.Get a peek on our offerings and major highlights.</p>    \r\n                            <h3>How Secure Is Information About Me?</h3>    \r\n                            <p>Fresh-Net adds a dimension to your career building abilities with a focus on your vision and what you believe in. With us, you upscale a journey of career advancement which helps you realise your potential and worth to grow and carve a niche for yourself. We are aware that every individual is unique and different in terms of capabilities and strengths and so; with our guidance, expertise and mindful research, we prepare you to be the best in market.Get a peek on our offerings and major highlights.</p>                                \r\n                        </div>    \r\n                    </div>\r\n                 </div>   \r\n            </div>\r\n    </div>    \r\n</div>    \r\n</section> \r\n<!--amp_3 end-->', 'Terms and Conditions', 'Terms and Conditions', '2018-06-05 04:33:55'),
(5, 'Classes', 'classes', '<!--amp_1 start-->\r\n<section class=\"amp_1\" id=\"about_us\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"banner_sec\">\r\n<div class=\"col-sm-7\">\r\n<div class=\"abt_head\">\r\n<ul>\r\n	<li><a href=\"#\">Home</a></li>\r\n	<li>Classes</li>\r\n</ul>\r\n\r\n<h4>NOW, CHOOSE YOUR OWN CLASSROOM WITH FRESH-NET</h4>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-5\">&nbsp;</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--amp_1 end--><!--amp_3 start-->\r\n\r\n<section class=\"amp_2 pdb_80\">\r\n<div class=\"container abt_sec\">\r\n<div class=\"col-md-12\">\r\n<div class=\"row\">\r\n<div class=\"mid_part\">\r\n<div class=\"col-sm-10 pd_0 col-md-offset-1\">\r\n<div class=\"contac_text text-center\">\r\n<div class=\"pdb_80\"><img alt=\"logo\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/class_es.png\" /></div>\r\n\r\n<h3>Now, Choose your own classroom with Fresh-Net</h3>\r\n\r\n<p>For Fresh-Net, client satisfaction and delivering top notch services are paramount. We sincerely focus on client interaction as it helps us to absorb your requisites and expectations, in a better manner. Feel free to give us a call or drop us an email for any suggestion or enquiry. Visit us over a cup of coffee and let us guide your steps for your career road map ahead.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-12 class_con pd_25\">\r\n<div class=\"row dsply_flex\">\r\n<div class=\"col-sm-4 class_txt_1\">\r\n<h4>Online Module</h4>\r\n\r\n<div class=\"class_txt\">\r\n<p class=\"text-center\"><span class=\"big_fnt\"><img alt=\"logo\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/online-module.png\" /></span></p>\r\n\r\n<p>Fresh-Net gives you the flexibility to cover your certificate course through online class mode where in you will be given access to the designed tutorial which you can complete at your own pace. The content will be available online and will last a total of 27 hours, which can be covered according to your comfort and speed anytime and anywhere you want. This includes working on 1 live project as well, where you can take assistance from our experts available online.</p>\r\n\r\n<p>Once you have completed this course successfully, a Certification of Completion (COC) will be generated digitally which you can download at your end and can accredit to your resume for your career profile.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 class_txt_1\">\r\n<h4>Classroom Module</h4>\r\n\r\n<div class=\"class_txt\">\r\n<p class=\"text-center\"><span class=\"big_fnt\"><img alt=\"logo\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/classroom-module.png\" /></span></p>\r\n\r\n<p>Fresh-Net gives you the flexibility to cover your certificate course through its offline class mode where in you will have access to the content by live sessions from our experts. You will be provided full documentation and lectures specific to your course through these classes. We will also be including weekend sessions and live project which will make the duration of this course to last for 10 classes in a 12 week span.</p>\r\n\r\n<p>Once you complete this course successfully, an Industry recognised certificate of completion will be handed to you at the end of program which will add weightage to your career profile.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 class_txt_1\">\r\n<h4>Online to Overseas Module</h4>\r\n\r\n<div class=\"class_txt\">\r\n<p class=\"text-center\"><span class=\"big_fnt\"><img alt=\"logo\" class=\"img-responsive\" src=\"http://fresh-net.co/freshnet/resources/images/online-overseas.png\" /></span></p>\r\n\r\n<p>Keeping in mind the feasibility and comfort of our clients, Fresh-Net has created another classroom module as Online to Offline (O2O); wherein 60 percent of course shall be covered online and remaining 40 percent will be taken offline with our experts. This provides a rightful blend to our classroom approach by giving leverage to our clients to complete this course remotely per their schedule and also visit our experts through offline classes for any consultation and doubts.</p>\r\n\r\n<p>The duration of this course will last for 15 hours online with 5 classes offline with our professionals. This will also include induction of live project but no weekend classes. Upon successful completion, an Industry recognised certificate of completion will be awarded to you to accredit your career profile.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--amp_3 end-->', 'Classes', 'Classes', '2018-07-07 20:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `posts_views`
--

CREATE TABLE `posts_views` (
  `view_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_views`
--

INSERT INTO `posts_views` (`view_id`, `post_id`, `user_id`) VALUES
(1, 24, 1),
(2, 1, 1),
(3, 25, 1),
(4, 34, 1),
(5, 33, 28),
(6, 34, 28),
(7, 26, 28),
(8, 33, 1),
(9, 25, 28),
(10, 30, 28);

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `offer` int(250) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=percentage,2=flat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `code`, `offer`, `type`) VALUES
(1, 'FLAT100', 100, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `slider_category` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_category`, `image`, `description`) VALUES
(1, 1, '20180223225711-2018-02-23sliders225626.jpg', '<div class=\"container clearfix\">\n								<div class=\"slider-caption slider-caption-center\">\n									<h2 data-caption-animate=\"fadeInUp\">Welcome to Inkurv</h2>\n									<p data-caption-animate=\"fadeInUp\" data-caption-delay=\"200\">Create just what you need for your Perfect Website. Choose from a wide range of Elements &amp; simply put them on our Canvas.</p>\n								</div>\n							</div>'),
(2, 1, '20180223225906-2018-02-23sliders225856.jpg', '<div class=\"container clearfix\">\n								<div class=\"slider-caption slider-caption-center\">\n									<h2 data-caption-animate=\"fadeInUp\">Welcome to Inkurv</h2>\n									<p data-caption-animate=\"fadeInUp\" data-caption-delay=\"200\">Create just what you need for your Perfect Website. Choose from a wide range of Elements &amp; simply put them on our Canvas.</p>\n								</div>\n							</div>'),
(3, 1, '20180224134754-2018-02-24sliders134744.jpg', 'Lorem Ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `slider_category`
--

CREATE TABLE `slider_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_category`
--

INSERT INTO `slider_category` (`id`, `name`, `status`) VALUES
(1, 'home', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `location` varchar(250) DEFAULT NULL,
  `designation` varchar(150) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0' COMMENT '1:active;2:inactive',
  `content` text NOT NULL,
  `keyword` text,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `location`, `designation`, `slug`, `status`, `content`, `keyword`, `description`, `created_at`) VALUES
(1, 'Aditi Malhotra', 'Germany', 'Student', NULL, 1, 'It gives me great pleasure to say with pride that I have completed my career counselling course from Fresh-Net. The relationship between faculties and counsellors are very cordial and they gave me an opportunity to excel in my area of interest&nbsp;', 'testimonials treatment', 'testimonials', '2018-06-22 23:57:32'),
(2, 'Ashish Singh', 'Delhi-India', 'Counsellor', NULL, 1, 'Fresh-Net has a way of changing my perspective so that life&#39;s possibilities open up tremendously when I work with them. It feels great having when someone listens to you and helps you figure out your own next steps in your life.&nbsp;', 'testimonials', 'testimonials Specialist', '2018-06-22 23:56:42'),
(3, 'Mamta Raj', 'Dubai', 'HR', NULL, 1, 'Fresh-Net has been very effective in a career counseling and coaching capacity and has developed strong relationships and produced good results for counselors. They act with skill and integrity and I would be happy to recruit them on future occasions.&nbsp;', 'testimonials', 'testimonials', '2018-06-22 10:05:03'),
(4, 'Ankur Mishra', 'Lucknow', 'Job Seeker', NULL, 1, 'When I came for sessions, I know that Fresh-Net listened what I&#39;ve to say and offered me many suggestions on what to do. They ask questions without feeling judgmental about what my answer might be &amp; allows me time to think before I answer, is considerate of how I process emotions.', 'testimonials', 'testimonials', '2018-06-23 02:14:25'),
(5, 'Pankaj Garg', 'Japan', 'Director', NULL, 1, 'Services of Fresh-Net was excellent &amp; Trainer&#39;s delivery of sessions, the methodology adopted for Training, Training materials which provided by Fresh-Net as course material was in line with our expectations and was rated as much valued by the participants.', 'testimonials', 'testimonials', '2018-06-23 02:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(10) NOT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` bigint(10) DEFAULT NULL,
  `landmark` text,
  `city` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_visit_profile`
--

CREATE TABLE `user_visit_profile` (
  `visit_id` int(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_count_total` varchar(200) DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `visit_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_visit_profile`
--

INSERT INTO `user_visit_profile` (`visit_id`, `user_id`, `visit_count_total`, `visit_date`, `visit_updated_date`) VALUES
(1, 29, '9', '2018-07-28', '2018-07-28 06:43:03'),
(2, 29, '55', '2018-07-26', '2018-07-28 06:18:04'),
(3, 29, '43', '2018-07-27', '2018-07-28 06:18:04'),
(4, 29, '45', '2018-07-22', '2018-07-28 06:19:40'),
(5, 29, '444', '2018-07-23', '2018-07-28 06:19:40'),
(6, 33, '3', '2018-07-28', '2018-07-28 06:44:13'),
(7, 33, '2', '2018-07-30', '2018-07-30 16:52:22'),
(8, 29, '1', '2018-08-13', '2018-08-13 11:13:04'),
(9, 33, '1', '2018-08-13', '2018-08-13 11:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `view_rating`
--

CREATE TABLE `view_rating` (
  `rating_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `rating` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 = Block, 0 = Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `view_rating`
--

INSERT INTO `view_rating` (`rating_id`, `post_id`, `rating`, `user_id`, `comment`, `created`, `status`) VALUES
(9, 1, '5', 1, 'test', '2018-07-11 16:48:02', 1),
(10, 1, '4', 1, 'efwsefsdfsf', '2018-07-11 16:49:19', 1),
(11, 1, '4', 1, 'dsfsfs', '2018-07-11 16:51:07', 1),
(12, 1, '4', 1, 'test last', '2018-07-11 16:53:43', 1),
(13, 1, '4', 1, 'test', '2018-07-12 17:44:53', 1),
(14, 2, '4', 29, 'test', '2018-07-19 18:47:48', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aauth_groups`
--
ALTER TABLE `aauth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_group_to_group`
--
ALTER TABLE `aauth_group_to_group`
  ADD PRIMARY KEY (`group_id`,`subgroup_id`);

--
-- Indexes for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_perms`
--
ALTER TABLE `aauth_perms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_perm_to_user`
--
ALTER TABLE `aauth_perm_to_user`
  ADD PRIMARY KEY (`user_id`,`perm_id`);

--
-- Indexes for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_user`
--
ALTER TABLE `aauth_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_users`
--
ALTER TABLE `aauth_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_user_to_group`
--
ALTER TABLE `aauth_user_to_group`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `type_status_date` (`post_status`,`post_date`,`ID`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`);

--
-- Indexes for table `career_counselling`
--
ALTER TABLE `career_counselling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_promocode`
--
ALTER TABLE `cart_promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_options`
--
ALTER TABLE `cc_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporate_training`
--
ALTER TABLE `corporate_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_level`
--
ALTER TABLE `course_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_modules`
--
ALTER TABLE `course_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_modules_lectures`
--
ALTER TABLE `course_modules_lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_type`
--
ALTER TABLE `download_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`email_templates_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `type_status_date` (`events_status`,`events_date`,`ID`),
  ADD KEY `post_author` (`events_author`);

--
-- Indexes for table `events_category`
--
ALTER TABLE `events_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exclusive_offer`
--
ALTER TABLE `exclusive_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `franchisee`
--
ALTER TABLE `franchisee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailbox`
--
ALTER TABLE `mailbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_views`
--
ALTER TABLE `posts_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_category`
--
ALTER TABLE `slider_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_visit_profile`
--
ALTER TABLE `user_visit_profile`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `view_rating`
--
ALTER TABLE `view_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aauth_groups`
--
ALTER TABLE `aauth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `aauth_perms`
--
ALTER TABLE `aauth_perms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aauth_user`
--
ALTER TABLE `aauth_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aauth_users`
--
ALTER TABLE `aauth_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3609;

--
-- AUTO_INCREMENT for table `career_counselling`
--
ALTER TABLE `career_counselling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cart_promocode`
--
ALTER TABLE `cart_promocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_options`
--
ALTER TABLE `cc_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `corporate_training`
--
ALTER TABLE `corporate_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_level`
--
ALTER TABLE `course_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course_modules`
--
ALTER TABLE `course_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_modules_lectures`
--
ALTER TABLE `course_modules_lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `download_type`
--
ALTER TABLE `download_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `email_templates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events_category`
--
ALTER TABLE `events_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exclusive_offer`
--
ALTER TABLE `exclusive_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `franchisee`
--
ALTER TABLE `franchisee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts_views`
--
ALTER TABLE `posts_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_category`
--
ALTER TABLE `slider_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_visit_profile`
--
ALTER TABLE `user_visit_profile`
  MODIFY `visit_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `view_rating`
--
ALTER TABLE `view_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
