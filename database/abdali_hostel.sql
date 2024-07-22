-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 12:57 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abdali_hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `slug`, `link`, `status`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Final Comparative Report For Covid1-9 Response Items', 'final-comparative-report-for-covid1-9-response-items', NULL, 1, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.</p><p>And a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><ul><li>Nullam at erat quis eros finibus aliquam.</li><li>Cras nec risus lobortis, auctor ipsum quis, vulputate purus.</li><li>Morbi id tellus non arcu pulvinar gravida.</li><li>Nulla bibendum odio non felis pulvinar interdum.</li><li>Aliquam condimentum mauris et velit tempus dictum.</li><li>Curabitur non libero eu lectus facilisis aliquet ac maximus justo.</li></ul><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '2022-08-13 06:24:48', '2022-08-09 08:00:01', '2022-08-13 06:24:48'),
(2, 'Final comparative report for covid19 response items', 'final-comparative-report-for-covid19-response-items', NULL, 1, '<p>Final comparative report for covid19 response items</p>', '2022-08-13 06:24:51', '2022-08-09 08:01:26', '2022-08-13 06:24:51'),
(3, 'Final Comparative Report For Covid1-9 Response Items', 'final-comparative-report-for-covid1-9-response-items-2', NULL, 1, '<p>Final Comparative Report For Covid1-9 Response Items</p>', '2022-08-13 06:24:53', '2022-08-09 08:01:56', '2022-08-13 06:24:53'),
(4, 'test', 'test', NULL, 0, '<p>dfasd</p>', '2022-08-12 08:51:01', '2022-08-12 08:50:56', '2022-08-12 08:51:01'),
(5, 'Targets and Achivements FY 2021-2022', 'targets-and-achivements-fy-2021-2022', NULL, 1, NULL, NULL, '2022-09-20 02:09:10', '2022-09-20 02:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `title`, `link`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(1, 'not working', NULL, '2022-08-12 09:49:22', '2022-07-26 05:59:38', '2022-08-12 09:49:22', 0),
(2, 'The e-tendering system is being launched very soon in the C&W and PP&H Departments of Azad Kashmir', NULL, NULL, '2022-09-09 11:37:30', '2022-09-23 07:30:09', 1),
(3, 'Three days e-Tendering Solution Training will be started next week on 21st Sept. to 23rd Sept. 2022', NULL, NULL, '2022-09-14 14:20:23', '2022-09-14 14:20:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `type`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Tenders', 'news', '<p>Tenders</p>', 1, '2022-08-13 05:40:57', '2022-08-05 00:36:49', '2022-08-13 05:40:57', ''),
(2, 'News', 'news', '<p>News</p>', 1, NULL, '2022-08-05 00:52:02', '2022-08-05 00:52:02', ''),
(3, 'Announcements', 'news', '<p>Announcements</p>', 1, '2022-08-13 05:41:01', '2022-08-05 01:01:17', '2022-08-13 05:41:01', ''),
(4, 'Teaching Hospitals', 'hospital', '<p>Teaching Hospitals 09</p>', 1, NULL, '2022-08-10 02:26:33', '2022-08-10 10:22:23', 'Teaching-Hospitals'),
(5, 'Category D Hospitals', 'hospital', '<p>63</p>', 1, NULL, '2022-08-10 02:26:48', '2022-08-10 02:26:48', 'Category-D-Hospitals'),
(6, 'Category B Hospitals', 'hospital', '<p>12</p>', 1, NULL, '2022-08-10 02:27:09', '2022-08-10 02:27:09', 'Category-B-Hospitals'),
(7, 'Category C Hospitals', 'hospital', '<p>67</p>', 1, NULL, '2022-08-10 02:27:25', '2022-08-10 02:27:25', 'Category-C-Hospitals'),
(8, 'BOQs', 'download', '<p>Office Circulars</p>', 1, NULL, '2022-08-11 01:32:58', '2022-09-23 07:51:54', 'office-circulars'),
(9, 'ADP FY 2022-2023', 'download', '<p>Notifications</p>', 1, NULL, '2022-08-11 01:33:34', '2022-09-25 18:08:42', 'notifications'),
(10, 'POLICIES', 'download', '<p>POLICIES</p>', 1, '2022-08-13 09:18:20', '2022-08-11 01:36:44', '2022-08-13 09:18:20', 'policies'),
(11, 'Map of Aj&K', 'download', NULL, 1, '2022-08-13 09:18:08', '2022-08-12 14:47:04', '2022-08-13 09:18:08', 'map-of-aj-k'),
(12, 'North', 'gallery', NULL, 1, NULL, '2022-08-13 03:04:00', '2022-08-13 03:04:00', 'north'),
(13, 'South', 'gallery', NULL, 1, NULL, '2022-08-13 03:04:12', '2022-08-13 03:04:12', 'south'),
(14, 'Event', 'news', '<p>Event</p>', 1, NULL, '2022-08-13 05:36:25', '2022-08-13 05:36:25', 'event'),
(15, 'East', 'gallery', NULL, 1, '2022-08-13 06:51:41', '2022-08-13 06:51:21', '2022-08-13 06:51:41', 'east');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` bigint UNSIGNED NOT NULL,
  `district_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `disable_enable_status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `created_at`, `updated_at`, `disable_enable_status`) VALUES
(1, 'Mardan', '2022-07-13 10:31:07', '2022-07-13 10:31:07', 1),
(2, 'Peshawar', '2022-07-13 10:31:07', '2022-07-13 10:31:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `title`, `status`, `description`, `deleted_at`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Notice Inviting Tender', 1, NULL, '2022-09-20 02:27:25', '2022-09-14 14:06:14', '2022-09-20 02:27:25', 8),
(2, 'District Wise ADP FY 2022-23 (C&W North)', 1, NULL, NULL, '2022-09-20 02:27:13', '2022-09-20 02:32:09', 9),
(3, 'District Wise Summary (C&W North)', 1, NULL, NULL, '2022-09-20 02:33:20', '2022-09-20 02:33:32', 9),
(4, 'District Wise ADP FY 2022-23 (C&W South)', 1, NULL, NULL, '2022-09-20 02:37:57', '2022-09-20 02:37:57', 9),
(5, 'District Wise ADP FY 2022-23 (Summary) South', 1, NULL, NULL, '2022-09-20 02:38:56', '2022-09-20 02:38:56', 9),
(6, 'New Kashmir Development Porgram Phase-1', 1, NULL, '2022-09-23 11:43:12', '2022-09-23 11:42:10', '2022-09-23 11:43:12', 8),
(7, 'New Kashmir Development Program, LA-19 (Hajira) District Poonch', 1, NULL, NULL, '2022-09-26 11:59:46', '2022-09-26 12:04:34', 8),
(8, 'New Kashmir Development Program LA-20 (Rawalakot) District Poonch', 1, NULL, NULL, '2022-09-26 12:04:02', '2022-09-26 12:04:49', 8),
(9, 'New Kashmir Development Program LA-21 District Poonch', 1, NULL, NULL, '2022-09-26 12:06:10', '2022-09-26 12:07:39', 8),
(10, 'New Kashmir Development Program LA-18 (Abbaspur) District Poonch', 1, NULL, NULL, '2022-09-26 12:10:23', '2022-09-26 12:11:09', 8),
(11, 'District Bagh KDP LA-14 (Gharbi) Bo', 0, NULL, '2022-09-28 09:04:26', '2022-09-28 08:58:58', '2022-09-28 09:04:26', 8),
(12, 'BoQ LA-14 (Gharbi) District Bagh package 01 to 08', 0, NULL, NULL, '2022-09-28 09:29:00', '2022-09-28 09:29:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `enlisted_departments`
--

CREATE TABLE `enlisted_departments` (
  `id` bigint UNSIGNED NOT NULL,
  `departName` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `eregisterID` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enlisted_departments`
--

INSERT INTO `enlisted_departments` (`id`, `departName`, `eregisterID`, `created_at`, `updated_at`) VALUES
(1, 'C&W', 2, NULL, NULL),
(2, 'LG', 2, NULL, NULL),
(3, 'LCB', 2, NULL, NULL),
(4, 'C&W', 3, NULL, NULL),
(5, 'PPH', 3, NULL, NULL),
(6, 'C&W', 4, NULL, NULL),
(7, 'PPH', 4, NULL, NULL),
(8, 'C&W', 5, NULL, NULL),
(9, 'C&W', 6, NULL, NULL),
(10, 'PPH', 6, NULL, NULL),
(11, 'C&W', 9, NULL, NULL),
(12, 'PPH', 9, NULL, NULL),
(13, 'LG', 9, NULL, NULL),
(14, 'LCB', 9, NULL, NULL),
(15, 'Irrigation', 9, NULL, NULL),
(16, 'C&W', 10, NULL, NULL),
(17, 'PPH', 10, NULL, NULL),
(18, 'LG', 10, NULL, NULL),
(19, 'LCB', 10, NULL, NULL),
(20, 'Irrigation', 10, NULL, NULL),
(21, 'LCB', 12, NULL, NULL),
(22, 'C&W', 13, NULL, NULL),
(23, 'PPH', 13, NULL, NULL),
(24, 'PPH', 14, NULL, NULL),
(25, 'C&W', 15, NULL, NULL),
(26, 'C&W', 16, NULL, NULL),
(27, 'PPH', 16, NULL, NULL),
(28, 'C&W', 17, NULL, NULL),
(29, 'PPH', 17, NULL, NULL),
(30, 'C&W', 18, NULL, NULL),
(31, 'PPH', 18, NULL, NULL),
(32, 'C&W', 19, NULL, NULL),
(33, 'PPH', 19, NULL, NULL),
(34, 'C&W', 20, NULL, NULL),
(35, 'PPH', 20, NULL, NULL),
(36, 'C&W', 21, NULL, NULL),
(37, 'PPH', 21, NULL, NULL),
(38, 'C&W', 29, NULL, NULL),
(39, 'PPH', 29, NULL, NULL),
(40, 'C&W', 30, NULL, NULL),
(41, 'PPH', 30, NULL, NULL),
(42, 'C&W', 31, NULL, NULL),
(43, 'C&W', 32, NULL, NULL),
(44, 'PPH', 32, NULL, NULL),
(45, 'C&W', 33, NULL, NULL),
(46, 'C&W', 34, NULL, NULL),
(47, 'C&W', 35, NULL, NULL),
(48, 'C&W', 36, NULL, NULL),
(49, 'PPH', 36, NULL, NULL),
(50, 'C&W', 39, NULL, NULL),
(51, 'C&W', 40, NULL, NULL),
(52, 'C&W', 42, NULL, NULL),
(53, 'PPH', 42, NULL, NULL),
(54, 'C&W', 43, NULL, NULL),
(55, 'PPH', 43, NULL, NULL),
(56, 'C&W', 44, NULL, NULL),
(57, 'PPH', 44, NULL, NULL),
(58, 'LG', 44, NULL, NULL),
(59, 'Irrigation', 44, NULL, NULL),
(60, 'C&W', 45, NULL, NULL),
(61, 'LCB', 46, NULL, NULL),
(62, 'C&W', 47, NULL, NULL),
(63, 'PPH', 47, NULL, NULL),
(64, 'LG', 47, NULL, NULL),
(65, 'Irrigation', 47, NULL, NULL),
(66, 'C&W', 52, NULL, NULL),
(67, 'Irrigation', 52, NULL, NULL),
(68, 'Irrigation', 53, NULL, NULL),
(69, 'C&W', 55, NULL, NULL),
(70, 'PPH', 55, NULL, NULL),
(71, 'C&W', 56, NULL, NULL),
(72, 'PPH', 56, NULL, NULL),
(73, 'C&W', 57, NULL, NULL),
(74, 'PPH', 57, NULL, NULL),
(75, 'C&W', 61, NULL, NULL),
(76, 'PPH', 61, NULL, NULL),
(77, 'LG', 61, NULL, NULL),
(78, 'LCB', 61, NULL, NULL),
(79, 'Irrigation', 61, NULL, NULL),
(80, 'C&W', 62, NULL, NULL),
(81, 'PPH', 62, NULL, NULL),
(82, 'LG', 62, NULL, NULL),
(83, 'LCB', 62, NULL, NULL),
(84, 'Irrigation', 62, NULL, NULL),
(85, 'C&W', 63, NULL, NULL),
(86, 'PPH', 63, NULL, NULL),
(87, 'LG', 63, NULL, NULL),
(88, 'Irrigation', 63, NULL, NULL),
(89, 'C&W', 64, NULL, NULL),
(90, 'PPH', 64, NULL, NULL),
(91, 'C&W', 65, NULL, NULL),
(92, 'PPH', 65, NULL, NULL),
(93, 'C&W', 68, NULL, NULL),
(94, 'C&W', 69, NULL, NULL),
(95, 'PPH', 69, NULL, NULL),
(96, 'C&W', 70, NULL, NULL),
(97, 'PPH', 70, NULL, NULL),
(98, 'C&W', 71, NULL, NULL),
(99, 'PPH', 71, NULL, NULL),
(100, 'C&W', 72, NULL, NULL),
(101, 'C&W', 73, NULL, NULL),
(102, 'PPH', 73, NULL, NULL),
(103, 'C&W', 74, NULL, NULL),
(104, 'C&W', 75, NULL, NULL),
(105, 'PPH', 75, NULL, NULL),
(106, 'LG', 75, NULL, NULL),
(107, 'LCB', 75, NULL, NULL),
(108, 'C&W', 76, NULL, NULL),
(109, 'PPH', 76, NULL, NULL),
(110, 'C&W', 77, NULL, NULL),
(111, 'PPH', 77, NULL, NULL),
(112, 'LG', 77, NULL, NULL),
(113, 'LCB', 77, NULL, NULL),
(114, 'Irrigation', 77, NULL, NULL),
(115, 'C&W', 78, NULL, NULL),
(116, 'PPH', 78, NULL, NULL),
(117, 'C&W', 79, NULL, NULL),
(118, 'PPH', 79, NULL, NULL),
(119, 'LG', 79, NULL, NULL),
(120, 'LCB', 79, NULL, NULL),
(121, 'Irrigation', 79, NULL, NULL),
(122, 'C&W', 80, NULL, NULL),
(123, 'C&W', 81, NULL, NULL),
(124, 'PPH', 81, NULL, NULL),
(125, 'C&W', 82, NULL, NULL),
(126, 'PPH', 82, NULL, NULL),
(127, 'LG', 82, NULL, NULL),
(128, 'LCB', 82, NULL, NULL),
(129, 'Irrigation', 82, NULL, NULL),
(130, 'C&W', 83, NULL, NULL),
(131, 'PPH', 83, NULL, NULL),
(132, 'LG', 83, NULL, NULL),
(133, 'LCB', 83, NULL, NULL),
(134, 'Irrigation', 83, NULL, NULL),
(135, 'C&W', 84, NULL, NULL),
(136, 'C&W', 85, NULL, NULL),
(137, 'C&W', 87, NULL, NULL),
(138, 'PPH', 87, NULL, NULL),
(139, 'C&W', 90, NULL, NULL),
(140, 'PPH', 90, NULL, NULL),
(141, 'C&W', 92, NULL, NULL),
(142, 'PPH', 92, NULL, NULL),
(143, 'Irrigation', 92, NULL, NULL),
(144, 'C&W', 93, NULL, NULL),
(145, 'C&W', 94, NULL, NULL),
(146, 'PPH', 94, NULL, NULL),
(147, 'LG', 94, NULL, NULL),
(148, 'LCB', 94, NULL, NULL),
(149, 'Irrigation', 94, NULL, NULL),
(150, 'C&W', 95, NULL, NULL),
(151, 'PPH', 95, NULL, NULL),
(152, 'LG', 95, NULL, NULL),
(153, 'LCB', 95, NULL, NULL),
(154, 'Irrigation', 95, NULL, NULL),
(155, 'C&W', 96, NULL, NULL),
(156, 'C&W', 97, NULL, NULL),
(157, 'PPH', 97, NULL, NULL),
(158, 'LG', 97, NULL, NULL),
(159, 'LCB', 97, NULL, NULL),
(160, 'Irrigation', 97, NULL, NULL),
(161, 'LG', 98, NULL, NULL),
(162, 'C&W', 99, NULL, NULL),
(163, 'C&W', 100, NULL, NULL),
(164, 'PPH', 100, NULL, NULL),
(165, 'LG', 100, NULL, NULL),
(166, 'LCB', 100, NULL, NULL),
(167, 'Irrigation', 100, NULL, NULL),
(168, 'C&W', 102, NULL, NULL),
(169, 'C&W', 105, NULL, NULL),
(170, 'PPH', 105, NULL, NULL),
(171, 'C&W', 106, NULL, NULL),
(172, 'PPH', 106, NULL, NULL),
(173, 'C&W', 107, NULL, NULL),
(174, 'PPH', 108, NULL, NULL),
(175, 'C&W', 109, NULL, NULL),
(176, 'PPH', 109, NULL, NULL),
(177, 'C&W', 110, NULL, NULL),
(178, 'PPH', 110, NULL, NULL),
(179, 'C&W', 111, NULL, NULL),
(180, 'PPH', 111, NULL, NULL),
(181, 'C&W', 117, NULL, NULL),
(182, 'C&W', 120, NULL, NULL),
(183, 'C&W', 121, NULL, NULL),
(184, 'PPH', 121, NULL, NULL),
(185, 'C&W', 122, NULL, NULL),
(186, 'C&W', 123, NULL, NULL),
(187, 'PPH', 123, NULL, NULL),
(188, 'PPH', 124, NULL, NULL),
(189, 'C&W', 125, NULL, NULL),
(190, 'PPH', 125, NULL, NULL),
(191, 'C&W', 126, NULL, NULL),
(192, 'PPH', 126, NULL, NULL),
(193, 'C&W', 127, NULL, NULL),
(194, 'PPH', 129, NULL, NULL),
(195, 'C&W', 132, NULL, NULL),
(196, 'PPH', 132, NULL, NULL),
(197, 'LG', 132, NULL, NULL),
(198, 'C&W', 133, NULL, NULL),
(199, 'PPH', 133, NULL, NULL),
(200, 'LG', 133, NULL, NULL),
(201, 'LCB', 133, NULL, NULL),
(202, 'Irrigation', 133, NULL, NULL),
(203, 'C&W', 136, NULL, NULL),
(204, 'PPH', 136, NULL, NULL),
(205, 'C&W', 137, NULL, NULL),
(206, 'C&W', 138, NULL, NULL),
(207, 'PPH', 138, NULL, NULL),
(208, 'LG', 138, NULL, NULL),
(209, 'LCB', 138, NULL, NULL),
(210, 'Irrigation', 138, NULL, NULL),
(211, 'C&W', 139, NULL, NULL),
(212, 'C&W', 140, NULL, NULL),
(213, 'PPH', 140, NULL, NULL),
(214, 'LG', 140, NULL, NULL),
(215, 'LCB', 140, NULL, NULL),
(216, 'Irrigation', 140, NULL, NULL),
(217, 'C&W', 141, NULL, NULL),
(218, 'PPH', 141, NULL, NULL),
(219, 'Irrigation', 141, NULL, NULL),
(220, 'C&W', 142, NULL, NULL),
(221, 'PPH', 142, NULL, NULL),
(222, 'C&W', 144, NULL, NULL),
(223, 'PPH', 144, NULL, NULL),
(224, 'LG', 144, NULL, NULL),
(225, 'LCB', 144, NULL, NULL),
(226, 'Irrigation', 144, NULL, NULL),
(227, 'LG', 145, NULL, NULL),
(228, 'C&W', 146, NULL, NULL),
(229, 'C&W', 148, NULL, NULL),
(230, 'PPH', 148, NULL, NULL),
(231, 'LG', 148, NULL, NULL),
(232, 'LCB', 148, NULL, NULL),
(233, 'Irrigation', 148, NULL, NULL),
(234, 'C&W', 149, NULL, NULL),
(235, 'PPH', 149, NULL, NULL),
(236, 'C&W', 151, NULL, NULL),
(237, 'PPH', 151, NULL, NULL),
(238, 'C&W', 152, NULL, NULL),
(239, 'PPH', 152, NULL, NULL),
(240, 'C&W', 154, NULL, NULL),
(241, 'PPH', 154, NULL, NULL),
(242, 'C&W', 155, NULL, NULL),
(243, 'C&W', 157, NULL, NULL),
(244, 'PPH', 161, NULL, NULL),
(245, 'C&W', 162, NULL, NULL),
(246, 'C&W', 163, NULL, NULL),
(247, 'PPH', 163, NULL, NULL),
(248, 'C&W', 164, NULL, NULL),
(249, 'PPH', 164, NULL, NULL),
(250, 'LG', 164, NULL, NULL),
(251, 'LCB', 164, NULL, NULL),
(252, 'Irrigation', 164, NULL, NULL),
(253, 'C&W', 165, NULL, NULL),
(254, 'PPH', 165, NULL, NULL),
(255, 'C&W', 166, NULL, NULL),
(256, 'PPH', 166, NULL, NULL),
(257, 'LG', 166, NULL, NULL),
(258, 'C&W', 167, NULL, NULL),
(259, 'LG', 167, NULL, NULL),
(260, 'LCB', 167, NULL, NULL),
(261, 'Irrigation', 167, NULL, NULL),
(262, 'C&W', 170, NULL, NULL),
(263, 'PPH', 170, NULL, NULL),
(264, 'C&W', 171, NULL, NULL),
(265, 'PPH', 171, NULL, NULL),
(266, 'C&W', 172, NULL, NULL),
(267, 'PPH', 172, NULL, NULL),
(268, 'C&W', 175, NULL, NULL),
(269, 'PPH', 175, NULL, NULL),
(270, 'LG', 175, NULL, NULL),
(271, 'LCB', 175, NULL, NULL),
(272, 'Irrigation', 175, NULL, NULL),
(273, 'C&W', 176, NULL, NULL),
(274, 'C&W', 177, NULL, NULL),
(275, 'PPH', 177, NULL, NULL),
(276, 'C&W', 179, NULL, NULL),
(277, 'PPH', 179, NULL, NULL),
(278, 'LG', 179, NULL, NULL),
(279, 'LCB', 179, NULL, NULL),
(280, 'Irrigation', 179, NULL, NULL),
(281, 'C&W', 180, NULL, NULL),
(282, 'PPH', 180, NULL, NULL),
(283, 'LG', 180, NULL, NULL),
(284, 'LCB', 180, NULL, NULL),
(285, 'Irrigation', 180, NULL, NULL),
(286, 'C&W', 182, NULL, NULL),
(287, 'C&W', 183, NULL, NULL),
(288, 'PPH', 183, NULL, NULL),
(289, 'LG', 183, NULL, NULL),
(290, 'LCB', 183, NULL, NULL),
(291, 'Irrigation', 183, NULL, NULL),
(292, 'C&W', 186, NULL, NULL),
(293, 'PPH', 186, NULL, NULL),
(294, 'C&W', 190, NULL, NULL),
(295, 'PPH', 190, NULL, NULL),
(296, 'C&W', 193, NULL, NULL),
(297, 'PPH', 193, NULL, NULL),
(298, 'LG', 193, NULL, NULL),
(299, 'Irrigation', 193, NULL, NULL),
(300, 'C&W', 194, NULL, NULL),
(301, 'PPH', 194, NULL, NULL),
(302, 'C&W', 195, NULL, NULL),
(303, 'PPH', 195, NULL, NULL),
(304, 'LG', 195, NULL, NULL),
(305, 'Irrigation', 195, NULL, NULL),
(306, 'C&W', 196, NULL, NULL),
(307, 'PPH', 196, NULL, NULL),
(308, 'LG', 196, NULL, NULL),
(309, 'LCB', 196, NULL, NULL),
(310, 'Irrigation', 196, NULL, NULL),
(311, 'C&W', 198, NULL, NULL),
(312, 'PPH', 198, NULL, NULL),
(313, 'LG', 198, NULL, NULL),
(314, 'LCB', 198, NULL, NULL),
(315, 'Irrigation', 198, NULL, NULL),
(316, 'C&W', 200, NULL, NULL),
(317, 'C&W', 203, NULL, NULL),
(318, 'PPH', 203, NULL, NULL),
(319, 'C&W', 205, NULL, NULL),
(320, 'PPH', 205, NULL, NULL),
(321, 'LG', 205, NULL, NULL),
(322, 'Irrigation', 205, NULL, NULL),
(323, 'C&W', 208, NULL, NULL),
(324, 'PPH', 208, NULL, NULL),
(325, 'LG', 208, NULL, NULL),
(326, 'LCB', 208, NULL, NULL),
(327, 'C&W', 209, NULL, NULL),
(328, 'PPH', 209, NULL, NULL),
(329, 'LG', 209, NULL, NULL),
(330, 'Irrigation', 209, NULL, NULL),
(331, 'C&W', 210, NULL, NULL),
(332, 'PPH', 210, NULL, NULL),
(333, 'C&W', 212, NULL, NULL),
(334, 'C&W', 213, NULL, NULL),
(335, 'PPH', 213, NULL, NULL),
(336, 'C&W', 214, NULL, NULL),
(337, 'C&W', 215, NULL, NULL),
(338, 'PPH', 215, NULL, NULL),
(339, 'LG', 215, NULL, NULL),
(340, 'LCB', 215, NULL, NULL),
(341, 'Irrigation', 215, NULL, NULL),
(342, 'C&W', 216, NULL, NULL),
(343, 'PPH', 216, NULL, NULL),
(344, 'LG', 216, NULL, NULL),
(345, 'LCB', 216, NULL, NULL),
(346, 'Irrigation', 216, NULL, NULL),
(347, 'C&W', 217, NULL, NULL),
(348, 'PPH', 217, NULL, NULL),
(349, 'C&W', 219, NULL, NULL),
(350, 'PPH', 219, NULL, NULL),
(351, 'LG', 219, NULL, NULL),
(352, 'LCB', 219, NULL, NULL),
(353, 'Irrigation', 219, NULL, NULL),
(354, 'LG', 220, NULL, NULL),
(355, 'C&W', 221, NULL, NULL),
(356, 'C&W', 222, NULL, NULL),
(357, 'PPH', 222, NULL, NULL),
(358, 'LG', 222, NULL, NULL),
(359, 'LCB', 222, NULL, NULL),
(360, 'C&W', 223, NULL, NULL),
(361, 'PPH', 223, NULL, NULL),
(362, 'C&W', 225, NULL, NULL),
(363, 'PPH', 225, NULL, NULL),
(364, 'C&W', 226, NULL, NULL),
(365, 'PPH', 226, NULL, NULL),
(366, 'C&W', 227, NULL, NULL),
(367, 'PPH', 227, NULL, NULL),
(368, 'Irrigation', 227, NULL, NULL),
(369, 'C&W', 228, NULL, NULL),
(370, 'PPH', 228, NULL, NULL),
(371, 'C&W', 229, NULL, NULL),
(372, 'PPH', 229, NULL, NULL),
(373, 'C&W', 231, NULL, NULL),
(374, 'PPH', 231, NULL, NULL),
(375, 'C&W', 232, NULL, NULL),
(376, 'PPH', 232, NULL, NULL),
(377, 'C&W', 234, NULL, NULL),
(378, 'PPH', 234, NULL, NULL),
(379, 'C&W', 235, NULL, NULL),
(380, 'PPH', 235, NULL, NULL),
(381, 'LG', 235, NULL, NULL),
(382, 'LCB', 235, NULL, NULL),
(383, 'Irrigation', 235, NULL, NULL),
(384, 'PPH', 236, NULL, NULL),
(385, 'C&W', 238, NULL, NULL),
(386, 'PPH', 238, NULL, NULL),
(387, 'C&W', 240, NULL, NULL),
(388, 'PPH', 240, NULL, NULL),
(389, 'C&W', 241, NULL, NULL),
(390, 'PPH', 241, NULL, NULL),
(391, 'C&W', 242, NULL, NULL),
(392, 'PPH', 242, NULL, NULL),
(393, 'C&W', 244, NULL, NULL),
(394, 'PPH', 244, NULL, NULL),
(395, 'C&W', 245, NULL, NULL),
(396, 'PPH', 245, NULL, NULL),
(397, 'C&W', 246, NULL, NULL),
(398, 'PPH', 246, NULL, NULL),
(399, 'C&W', 247, NULL, NULL),
(400, 'PPH', 247, NULL, NULL),
(401, 'C&W', 252, NULL, NULL),
(402, 'C&W', 254, NULL, NULL),
(403, 'PPH', 254, NULL, NULL),
(404, 'LG', 254, NULL, NULL),
(405, 'C&W', 255, NULL, NULL),
(406, 'PPH', 255, NULL, NULL),
(407, 'LG', 255, NULL, NULL),
(408, 'LCB', 255, NULL, NULL),
(409, 'Irrigation', 255, NULL, NULL),
(410, 'C&W', 256, NULL, NULL),
(411, 'PPH', 256, NULL, NULL),
(412, 'C&W', 257, NULL, NULL),
(413, 'LCB', 257, NULL, NULL),
(414, 'C&W', 258, NULL, NULL),
(415, 'PPH', 258, NULL, NULL),
(416, 'C&W', 259, NULL, NULL),
(417, 'PPH', 259, NULL, NULL),
(418, 'LG', 259, NULL, NULL),
(419, 'LCB', 259, NULL, NULL),
(420, 'Irrigation', 259, NULL, NULL),
(421, 'C&W', 261, NULL, NULL),
(422, 'PPH', 261, NULL, NULL),
(423, 'C&W', 262, NULL, NULL),
(424, 'C&W', 263, NULL, NULL),
(425, 'PPH', 263, NULL, NULL),
(426, 'C&W', 264, NULL, NULL),
(427, 'PPH', 264, NULL, NULL),
(428, 'C&W', 265, NULL, NULL),
(429, 'PPH', 265, NULL, NULL),
(430, 'C&W', 266, NULL, NULL),
(431, 'PPH', 266, NULL, NULL),
(432, 'LG', 266, NULL, NULL),
(433, 'LCB', 266, NULL, NULL),
(434, 'Irrigation', 266, NULL, NULL),
(435, 'C&W', 267, NULL, NULL),
(436, 'PPH', 267, NULL, NULL),
(437, 'LG', 267, NULL, NULL),
(438, 'LCB', 267, NULL, NULL),
(439, 'Irrigation', 267, NULL, NULL),
(440, 'C&W', 268, NULL, NULL),
(441, 'PPH', 268, NULL, NULL),
(442, 'C&W', 271, NULL, NULL),
(443, 'C&W', 273, NULL, NULL),
(444, 'PPH', 273, NULL, NULL),
(445, 'C&W', 274, NULL, NULL),
(446, 'PPH', 274, NULL, NULL),
(447, 'C&W', 275, NULL, NULL),
(448, 'PPH', 275, NULL, NULL),
(449, 'LG', 275, NULL, NULL),
(450, 'LCB', 275, NULL, NULL),
(451, 'Irrigation', 275, NULL, NULL),
(452, 'C&W', 276, NULL, NULL),
(453, 'PPH', 276, NULL, NULL),
(454, 'LG', 276, NULL, NULL),
(455, 'LCB', 276, NULL, NULL),
(456, 'Irrigation', 276, NULL, NULL),
(457, 'C&W', 277, NULL, NULL),
(458, 'C&W', 278, NULL, NULL),
(459, 'C&W', 280, NULL, NULL),
(460, 'C&W', 282, NULL, NULL),
(461, 'PPH', 282, NULL, NULL),
(462, 'LG', 282, NULL, NULL),
(463, 'LCB', 282, NULL, NULL),
(464, 'Irrigation', 282, NULL, NULL),
(465, 'C&W', 283, NULL, NULL),
(466, 'PPH', 283, NULL, NULL),
(467, 'LG', 283, NULL, NULL),
(468, 'LCB', 283, NULL, NULL),
(469, 'C&W', 284, NULL, NULL),
(470, 'C&W', 285, NULL, NULL),
(471, 'PPH', 285, NULL, NULL),
(472, 'C&W', 286, NULL, NULL),
(473, 'C&W', 287, NULL, NULL),
(474, 'Irrigation', 287, NULL, NULL),
(475, 'C&W', 290, NULL, NULL),
(476, 'C&W', 291, NULL, NULL),
(477, 'C&W', 292, NULL, NULL),
(478, 'LG', 292, NULL, NULL),
(479, 'Irrigation', 292, NULL, NULL),
(480, 'C&W', 293, NULL, NULL),
(481, 'C&W', 294, NULL, NULL),
(482, 'LG', 294, NULL, NULL),
(483, 'C&W', 296, NULL, NULL),
(484, 'PPH', 296, NULL, NULL),
(485, 'LG', 296, NULL, NULL),
(486, 'LCB', 296, NULL, NULL),
(487, 'Irrigation', 296, NULL, NULL),
(488, 'C&W', 298, NULL, NULL),
(489, 'C&W', 299, NULL, NULL),
(490, 'C&W', 301, NULL, NULL),
(491, 'PPH', 301, NULL, NULL),
(492, 'C&W', 302, NULL, NULL),
(493, 'PPH', 302, NULL, NULL),
(494, 'LG', 305, NULL, NULL),
(495, 'C&W', 307, NULL, NULL),
(496, 'PPH', 307, NULL, NULL),
(497, 'LG', 307, NULL, NULL),
(498, 'LCB', 307, NULL, NULL),
(499, 'Irrigation', 307, NULL, NULL),
(500, 'C&W', 310, NULL, NULL),
(501, 'PPH', 310, NULL, NULL),
(502, 'LG', 310, NULL, NULL),
(503, 'LCB', 310, NULL, NULL),
(504, 'Irrigation', 310, NULL, NULL),
(505, 'C&W', 311, NULL, NULL),
(506, 'PPH', 311, NULL, NULL),
(507, 'LG', 311, NULL, NULL),
(508, 'LCB', 311, NULL, NULL),
(509, 'Irrigation', 311, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `expense_head_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paying_date` date NOT NULL,
  `description` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_head_id`, `amount`, `paying_date`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 8.00, '1980-05-16', 'Quae non dignissimos', NULL, '2024-07-21 06:37:06', '2024-07-21 06:37:06'),
(2, 2, 72.00, '1984-11-14', 'Cumque eum sunt qui', '2024-07-21 06:39:26', '2024-07-21 06:39:20', '2024-07-21 06:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `expense_heads`
--

CREATE TABLE `expense_heads` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_heads`
--

INSERT INTO `expense_heads` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Utility Bills', 'descriptions', NULL, '2024-07-21 06:07:59', '2024-07-21 06:07:59'),
(2, 'Dinner', 'Aut qui corrupti vi', NULL, '2024-07-21 06:11:23', '2024-07-21 06:11:23'),
(3, 'Salary', 'Staff salary', NULL, '2024-07-21 09:44:14', '2024-07-21 09:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `e_registerations`
--

CREATE TABLE `e_registerations` (
  `id` bigint UNSIGNED NOT NULL,
  `NameOfOwner` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PECNo` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryAppliedFor` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NameOfContractor` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryPEC` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CNICNumber` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `speCODE` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fbrNONTN` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobNo` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegLimted` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CNICUpload` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fbrUpload` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PEC2020` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormHUpload` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PreEnlistmentUpload` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `decleration` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `progress` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_status` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_registerations`
--

INSERT INTO `e_registerations` (`id`, `NameOfOwner`, `district`, `PECNo`, `categoryAppliedFor`, `NameOfContractor`, `address`, `categoryPEC`, `CNICNumber`, `speCODE`, `fbrNONTN`, `Email`, `mobNo`, `RegLimted`, `CNICUpload`, `fbrUpload`, `PEC2020`, `FormHUpload`, `PreEnlistmentUpload`, `decleration`, `created_at`, `updated_at`, `status`, `progress`, `description`, `error`, `email_status`, `deleted_at`) VALUES
(1, 'Syed Usman Ali Shah', 'Bannu', '2913', 'PK-C-2', 'M/S Surani Construction Company', 'Narmi Khel , Baka Khel , Sain Tanga Rocha Distt Bannu', 'PK-C-2', '11101-1453629-5', '114578', '3998938', 'decentbannu@gmail.com', '0333-9739291', 'Yes', '', '', '', '', '', 'agree', '2022-08-15 13:29:20', '2022-08-15 13:29:20', 1, 'new', NULL, NULL, NULL, NULL),
(148, 'Asad Zareef', 'bagh', '14587', 'PK-C-4', 'M/S asad zareef construction company', 'P/O chaman kot tehsil dhir kot district bagh', 'PK-C-4', '82102-3534168-1', '0000', '8210235341681', 'Asadzareef091@gmail.com', '03459281280', 'Yes', '', '', '', '', '', 'agree', '2023-01-24 14:13:26', '2023-01-24 14:13:26', 1, 'new', NULL, NULL, NULL, NULL),
(2, 'Syed Sibtain Ali Gillani', 'Muzaffarabad', '3085', 'PK-C-2', 'Rawani Construction Company', 'Upper Adda C/O Pir Syed Rafi-ud-Din Gillani,\r\nOpp: Shah Anayat Zayarat Muzaffarabad', 'PK-C-2', '82203-9320381-3', 'BC01, BC02, CE01, CE04, CE09, CE10, EE01, EE02, EE04, EE06, EE09, EE11 (Solar), EE11 (General Electrical Works Only)', 'JSC&F-527-2018', 'rawani.constructin@gmail.com', '0346-9666980', 'Yes', '', '', '', '', '', 'agree', '2022-09-06 08:56:36', '2022-09-06 08:56:36', 1, 'new', NULL, NULL, NULL, NULL),
(147, 'Muhammad Hamza Misdaque Kiani', 'MUZAFFARABAD', '19674', 'PK-C-5', 'Muhammad Hamza Misdaque Kiani', 'Ward no 18 chella bandi Muzaffarabad', 'PK-C-5', '82203-1367620-7', 'BC01 - BC02 - CE01 - CE 04 -CE08 - CE09 - CE10 - EE01 - EE02 - EE03 - EE04 - EE06 - EE08 - EE10 - EE11', '82203-1367620-7', 'Awaisshaheen167@gmail.com', '0331-5687323', 'Yes', '', '', '', '', '', 'agree', '2023-01-24 09:06:27', '2023-01-24 09:06:27', 1, 'new', NULL, NULL, NULL, NULL),
(146, 'Shahzad Abbasi', 'BAGH', '24274', 'PK-C-5', 'M/s SHAHZAD ABBASI & BROTHERS A.K', 'House no 65 street 12 block E sector 4 Airport housing society Rawalpindi Pakistan', 'PK-C-5', '82102-8767653-7', 'CE05', '8210287676537', 'shahzad161102abbasi@gmail.com', '03109163301', 'Yes', '', '', '', '', '', 'agree', '2023-01-24 09:01:09', '2023-01-24 09:01:09', 1, 'new', NULL, NULL, NULL, NULL),
(145, 'Uzair Iftikhar', 'Punjab', '77108', 'PK-C-6', 'D Stars Construction', '20 B North star Plaza Rehmanabad Satellite Town Main Muree Road Rawalpindi', 'PK-C-6', '82303-2110023-3', 'BC01-CE01-CE04-CE09-CE10', '8230321100233', 'gmuzairkhan@gmail.com', '0341-0546833', 'Yes', '', '', '', '', '', 'agree', '2023-01-20 12:54:33', '2023-01-20 12:54:33', 1, 'new', NULL, NULL, NULL, NULL),
(3, 'Luqman zain ul abadin', 'Mirpur', '16184', 'PK-C-5', 'Project’s & Development Contractor', 'H.No 134 sector F3 part 1 Mirpur A.K.', 'PK-C-5', '81102-1207954-5', 'CE 01- CE 02- CE 04 - CE 09- CE 10', '01-12-0082720', 'luqman.zain@yahoo.com', '0344-1087699', 'Yes', '', '', '', '', '', 'agree', '2022-09-14 11:31:42', '2022-09-14 11:31:42', 1, 'new', NULL, NULL, NULL, NULL),
(144, 'Babar Hussain Khan', 'Muzaffarabad', '3194', 'PK-C-2', 'Babar G. Enterprises', 'Room No. 16, Prince Hotel, Tanga Stand Bank Road Muzaffarabad.', 'PK-C-2', '82203-5976616-1', 'BC01-BC02-CE01-CE04-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11-ME01-ME02-ME05-ME06', 'Z149909', 'rajamusa402@gmail.com', '03466090525', 'Yes', '', '', '', '', '', 'agree', '2023-01-20 05:03:12', '2023-01-20 05:03:12', 1, 'new', NULL, NULL, NULL, NULL),
(4, 'Tahir waqar', 'Bhimber', '14209', 'PK-C-4', 'Wazir\'s Sons Associate', 'Office #107, Sultan Plaza, Bhimber AJK', 'PK-C-4', '8110248884279', 'CE-01, CE-04, CE-08,CE-09, EE-03, EE-04, EE-06, EE-07, EE-011', '01-08-61890', 'tahirwaqar@gmail.com', '03006261115', 'Yes', '', '', '', '', '', 'agree', '2022-09-14 12:09:54', '2022-09-14 12:09:54', 1, 'new', NULL, NULL, NULL, NULL),
(143, 'Syed Basit Mukhtar', 'Muzaffarabad', '524428', 'PK-C-6', 'M/s Syed Basit Mukhtar', 'MOHALLAH ambore ward no 1 Muzaffarabad', 'PK-C-6', '82701-0367561-5', 'BC01 BC02 CE01 CE04 CE08 CE09 CE10', '82701-0367561-5', 'basitkazmi09@gmail.com', '03129784170', 'Yes', '', '', '', '', '', 'agree', '2023-01-19 19:15:35', '2023-01-23 12:23:21', 0, 'reject', NULL, NULL, NULL, NULL),
(5, 'Amjid Ali Malik', 'Abbottabad', '22114', 'PK-C-5', 'Abbotonian Group of Companies', 'House No. KL-202/3 Upper Kehal Abbottabad', 'PK-C-5', '1310178133347', 'CE01, CE04, CE09, CE10', '5000003-8', 'malik2pk@hotmail.com', '03335444141', 'No', '', '', '', '', '', 'agree', '2022-09-14 16:50:03', '2022-09-14 16:50:03', 1, 'new', NULL, NULL, NULL, NULL),
(6, 'Suleman Ahmed', 'Kotli', '17362', 'PK-C-5', 'Usman Constructions', 'Plot no 11-A sub sector D 3 west I mangla road mirpur ajk', 'PK-C-5', '8120218322377', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '8120218322377', 'suleman3477@gmail.com', '03415273477', 'Yes', '', '', '', '', '', 'agree', '2022-09-14 16:54:31', '2022-09-14 16:54:31', 1, 'new', NULL, NULL, NULL, NULL),
(7, 'Raja Muhammad Manaf', 'Bhimber', '17292', 'PK-C-4', 'Raja Muhammad Manaf', 'Vill Bharing dist and tahseel Bhimber Azad Kashmir', 'PK-C-4', '81102-0260972-7', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11-EE11-ME01-ME02-ME04-ME05-ME06-ME07', '8110202609727', 'raja.manaf789@gmail.com', '0345-5538786', 'No', '', '', '', '', '', 'agree', '2022-09-14 19:28:03', '2023-01-19 13:17:38', 0, 'approved', NULL, NULL, NULL, NULL),
(8, 'Ajaz ahmed', 'Poonch', '08790', 'PK-C-4', 'East associates', 'Office no 936 tabish plaza mong road Rawalakot poonch Azad Kashmir', 'PK-C-4', '8230309921265', 'CE01, CE04, CE09, CE10', '8230309921265', 'majazahmed786@gmail.com', '03339339215', 'Yes', '', '', '', '', '', 'agree', '2022-09-15 06:42:55', '2023-01-19 13:16:47', 0, 'approved', NULL, NULL, NULL, NULL),
(9, 'kashif shafique khawaja', 'muzaffarabad', '7821', 'PK-C-3', 'kashif shafque khawaja', 'ward no 13 dharria bommbia muzaffarabad', 'PK-C-3', '82203-6736189-7', 'BC01-BC02-CE01-CE04-CE09-CE10-CE11-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11-ME01-ME02-ME04-ME05-ME06', '8220367361897', 'king.kashif99@gmail.com', '0316-0887771', 'No', '', '', '', '', '', 'agree', '2022-09-15 07:14:30', '2023-01-19 13:15:29', 0, 'approved', NULL, NULL, NULL, NULL),
(10, 'Shazib', 'Poonch', '16487', 'PK-C-4', 'Reliable Construction Services', 'Opposite District Complex United Bypass Road  Rawalakot  Distt. Poonch', 'PK-C-4', '82303-5400127-5', 'BC01-BC02- CE01- CE04(Irrigation Only)-CE08-CE09-CE10', '82303-5400127-5', 'Rcs2k19@gmail.com', '03455477875', 'Yes', '', '', '', '', '', 'agree', '2022-09-15 07:21:48', '2022-09-15 07:21:48', 1, 'new', NULL, NULL, NULL, NULL),
(142, 'Ihtisham Chaudhry', 'Mirpur', '17362/E', 'PK-C-4', 'HM ENGINEERING WORKS', 'OPPOSITE VIEW POINT,NEAR HONDA EMPIRE MIRPUR,DISTT.', 'PK-C-4', '82203-9881089-1', 'BC01,BC02,CE01,CE04(IRRIGATION ONLY),CE08,CE09,CE10', '8220398810891', 'hmengineeringw@gmail.com', '0344-8892402', 'Yes', '', '', '', '', '', 'agree', '2023-01-18 19:05:13', '2023-01-18 19:05:13', 1, 'new', NULL, NULL, NULL, NULL),
(141, 'Ahmed Shahjahan', 'Jehlum valley', '26421', 'PK-C-5', 'Ahmed Shahjahan', 'Sarran, Sirinagar road, district jehlum valley, Muzaffarabad, Hattian bala.', 'PK-C-5', '8220283389939', '483806', '8220283389939', 'ahmedraja171@gmail.com', '03455180331', 'Yes', '', '', '', '', '', 'agree', '2023-01-18 09:24:39', '2023-01-18 09:24:39', 1, 'new', NULL, NULL, NULL, NULL),
(11, 'Shazib Tahir', 'Poonch', '16487', 'PK-C-4', 'Reliable Construction Services', 'Opposite District Complex  United Bypass Road Rawalakot Distt.Poonch', 'PK-C-4', '82303-5400127-5', 'BC01-BC02- CE01- CE04(Irrigation Only)-CE08-CE09-CE10', '82303-5400127-5', 'Rcs2k19@gmail.com', '03455477875', 'Yes', '', '', '', '', '', 'agree', '2022-09-15 07:43:24', '2022-09-15 07:43:24', 1, 'new', NULL, NULL, NULL, NULL),
(12, 'Mahfooz Ahmed abbasi', 'Bagh', '524152', 'PK-C-5', 'Haider builders & construction company', 'Opposite nishan e Haider school shoukat line muzaffarabad', 'PK-C-5', '82102-2418239-7', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE09', '82103-2418239-7', 'abbasimahfooz9@gmail.com', '03455938638', 'No', '', '', '', '', '', 'agree', '2022-09-15 07:43:41', '2022-09-15 07:43:41', 1, 'new', NULL, NULL, NULL, NULL),
(140, 'Yasir Manzoor Awan', 'Muzaffarabad', '323', 'PK-C-B', 'Naveed Constructions pvt ltd', 'Mujahid Colony H No 497 St No 8, Burewala District Vehari', 'PK-C-B', '82203-1170643-3', 'BC01, CE01, CE02, CE04, CE09, CE10, EE04, EE05, EE06, EE07, EE08, EE10, EE11,', '6072659-8', 'n.cons127@gmail.com', '0300-5229746', 'Yes', '', '', '', '', '', 'agree', '2023-01-17 12:31:30', '2023-01-17 12:31:30', 1, 'new', NULL, NULL, NULL, NULL),
(139, 'Akmal Naeem', 'Bagh', '22663', 'PK-C-5', 'Contractor', 'Near Grid Station Main Road Bagh', 'PK-C-5', '82101-7767275-7', 'CE01-CE04-CD09-CE10', '01-05-0037997', 'akmal.pmubagh@yahoo.com', '0300-9733331', 'No', '', '', '', '', '', 'agree', '2023-01-16 10:11:26', '2023-01-16 10:11:26', 1, 'new', NULL, NULL, NULL, NULL),
(13, 'Raja Zafar Ahmed Khan', 'Bagh', '3275', 'PK-C-2', 'Geo Engineering & Construction Services', 'ofiice no,5 Frist floor Sadiq Chamber Markaz G-7 Islamabad', 'PK-C-2', '61101-1915454-9', 'CE-01,CE-02,CE-04,CE-09,CE-10,BC-01,BC-02,EE-01,EE-02,EE-04,EE-11,ME-01,ME-02,ME-04,ME-06,ME-07', '2572230-1', 'geoengineering1@gmail.com', '0312-9898987', 'No', '', '', '', '', '', 'agree', '2022-09-15 07:57:43', '2023-01-19 13:09:11', 0, 'approved', NULL, NULL, NULL, NULL),
(138, 'Rashid Kamal', 'South Waziristan Trible District', '7042', 'PK-C-3', 'Mehsood Construction Private Limited', 'Rashid Kamal House,Ghozikai,spin kamar P/o and Tehsil Makin District South waziristan', 'PK-C-3', '1220178276717', 'C-1,C-4,C-9,C-10,EE-11,EE-4', '8263450', 'mccmehsood@gmail.com', '03328515164', 'Yes', '', '', '', '', '', 'agree', '2023-01-10 13:47:29', '2023-01-10 13:47:29', 1, 'new', NULL, NULL, NULL, NULL),
(137, 'Faisal Mehmood', 'Poonch', '16718', 'PK-C-4', 'MUMTAZ GROWMORE CONSTRUCTION (PRIVATE) LIMITED', 'Office No.02 Third Floor, Capital Plaza G-11 Markaz Islamabad', 'PK-C-4', '82302-0476437-9', 'BC01-BC02-CE01-CE04(Irrigation Only)-CE08-CE09-CE10-(SEVEN ONLY)', '4991559', 'Mumtazgrowmoreconstruction@gmail.com', '0345 3750087', 'Yes', '', '', '', '', '', 'agree', '2022-12-24 14:08:30', '2023-01-19 13:22:47', 0, 'approved', NULL, NULL, NULL, NULL),
(136, 'Azhar iqbal & Iqbal Akhtar(partnership firm)', 'Sudhnuti', '26327', 'PK-C-5', 'Consolidated contractors & Co', 'Shop no 173,near high school,ward no 8 ,sudhnuti pallandri AJK', 'PK-C-1', '82401-4709993-1', 'BC01,BC02,CE01,CE04,CE08,CE09,CE10', 'Z119506', 'sardarazhariqbal39@gmail.com', '0341-0014831', 'Yes', '', '', '', '', '', 'agree', '2022-12-22 05:26:25', '2022-12-22 05:26:25', 1, 'new', NULL, NULL, NULL, NULL),
(135, 'Muhammad Naveed Shahzad', 'LAHORE', '14689', 'PK-C-4', 'TRI TECH (PRIVATE) LIMITED', '21km, Ferozepur Road,\r\nMasjid Ibrahim Street, Lahore', 'PK-C-4', '34101-2575446-5', 'EE01-EE02-EE03-EE04-EE06-EE08-EE10', '3373173-0', 'tritech@tritech.pk', '0300-4436793', 'Yes', '', '', '', '', '', 'agree', '2022-12-08 04:54:01', '2023-01-19 13:33:30', 0, 'approved', NULL, NULL, NULL, NULL),
(134, 'Safdar Mehmood', 'Poonch', '15172', 'PK-C-4', 'AL-Buraq Engineering', 'Office # 01 Javed Arcade, Mehfil Restaurant Near Upper Capital Hospital G-12/1 Islamabad', 'PK-C-4', '37405-3027118-5', 'CE01,04,09,10, EE1,2,3,4,6,7,10,11', 'A024242', 'safdarmehmood91@gmail.com', '0345-5478617', 'Yes', '', '', '', '', '', 'agree', '2022-12-06 06:12:50', '2023-01-19 13:34:51', 0, 'reject', NULL, NULL, NULL, NULL),
(14, 'Mahfooz Ahmed abbasi', 'Bagh', '524152', 'PK-C-5', 'Contracter', 'Opposite nishan e Haider school shoukat line muzaffarabad', 'PK-C-5', '82102-1418239-7', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10EE09', '8210224182397', 'abbasimahfooz9@gmail.com', '03455938638', 'Yes', '', '', '', '', '', 'agree', '2022-09-15 08:05:06', '2022-09-15 08:05:06', 1, 'new', NULL, NULL, NULL, NULL),
(133, 'Taimour-ul-Hassan', 'Muzaffarabad', '7969', 'PK-C-3', 'M/s Raja Iftikhar Hussain', 'Bypass Road Jalalabad, Near ISI Office, Muzaffarabad', 'PK-C-3', '82203-7114950-5', 'BC-01, BC-02, CE-01, CE-04, CE-08, CE-09, CE-10, EE-01, EE-02, EE-03, EE-04, EE-06, EE-07, EE-08, EE-10, EE-11, EE-11', '8167053', 'rajaiftikharcontractor@gmail.com', '0306-5219846', 'No', '', '', '', '', '', 'agree', '2022-12-02 16:49:46', '2022-12-02 16:49:46', 1, 'new', NULL, NULL, NULL, NULL),
(132, 'Seikh Abdul Rashid', 'Muzaffarabd', '524372', 'PK-C-4', 'Sheikh Abul Rashid', 'Ward-18, Chella Bandi Near Qadeemi Cashima University Link Road Muzaffarabad', 'PK-C-4', '82203-1171458-7', 'BC01-BC02-CE01-CE04-CE08-CE10-EE03-EE11', '12183', 'abdulrashidsheikhajk@gmail.com', '0301-5089596', 'Yes', '', '', '', '', '', 'agree', '2022-11-30 08:40:41', '2022-11-30 08:40:41', 1, 'new', NULL, NULL, NULL, NULL),
(131, 'Azhar Rashid Qureshi', 'Muzaffarabad', '11035', 'PK-C-4', 'M/s Azhar Rashid Qureshi', 'DANYAL DEPARTMENTAL STORE, CENTRE UPPER PLATE WARD # 1, MUZAFFARABAD', 'PK-C-4', '82203-4082985-5', 'CE01, CE04(iv), BC02, ME02, ME82203408201, ME04, EE03, CE10, EE10, CE09, EE11(ii), EE02, EE07, EE04, EE11(iv), EE01, BC01', '0070685', 'azharqureshi@gmail.com', '0301-5224010', 'No', '', '', '', '', '', 'agree', '2022-11-29 11:17:52', '2023-01-19 13:47:15', 0, 'approved', NULL, NULL, NULL, NULL),
(130, 'Zaman Ali', 'kotli', '26404', 'PK-C-5', 'M/S Zaman Ali', 'R/O:Jandrot PO Khas Tehsil Fatehpur Distrcit Kotli', 'PK-C-5', '81201-1897470-5', 'CE01,CE04,CE08,CE09,CE10', '81201-1897470-5', 'zaman560ali@gmail.com', '0347-4980476', 'Yes', '', '', '', '', '', 'agree', '2022-11-28 12:18:12', '2023-01-19 13:50:10', 0, 'approved', NULL, NULL, NULL, NULL),
(15, 'FARMAN HUSSAIN', 'Bhimber AJK', '17963', 'PK-C-5', 'FARMAN HUSSAIN & CO.', 'P/O BOX SOKASAN, CHAPPRAN, TEHSIL & DISTT. BHIMBER AJK', 'PK-C-5', '81102-9078846-9', 'BC01-BC02-CE01-CE04(Irrigation only)-CE08-CE09-CE10', '8110290788469', 'farmanhussain754@gmail.com', '03455727395', 'Yes', '', '', '', '', '', 'agree', '2022-09-15 08:38:57', '2022-09-15 08:38:57', 1, 'new', NULL, NULL, NULL, NULL),
(129, 'ANWAR UL HAQ', 'KOTLI', '77113', 'PK-C-6', 'ANWAR UL HAQ & CO', 'P/O PANJERA GALA SAMIYAR KOTLI DISTT KOTLI AJK', 'PK-C-6', '81202-3473501-1', 'BC01-BC02-CE01-CE04 CE08-CE09-CE10-', '8120234735011', 'ulhaqanwar549@gmail.com', '0346-4120099', 'Yes', '', '', '', '', '', 'agree', '2022-11-28 11:11:41', '2022-11-28 11:11:41', 1, 'new', NULL, NULL, NULL, NULL),
(16, 'MUHAMMAD UZAIR', 'ISLAMABAD', '7476', 'PK-C-3', 'SKYL ENGINEERING', 'OFFICE NO. 9, PARAMOUNT ARCADE, G-15 MARKAZ, ISLAMABAD', 'PK-C-3', '42201-4380233-1', 'CE01, 04, 10', '4289290-2', 'M.OXAIR@GMAIL.COM', '03213865048', 'Yes', '', '', '', '', '', 'agree', '2022-09-15 12:57:48', '2022-09-15 12:57:48', 1, 'new', NULL, NULL, NULL, NULL),
(128, 'Aftab Aziz Malik', 'Kotli', '27717', 'PK-C-5', 'Aftab Aziz Builders', 'Mohallah Pathian, P/O Qamroti, Tehsil & District Kotli Azad Kashmir', 'PK-C-5', '81202-1817291-1', 'CE01-CE04', '81202-1817291-1', 'aftabazizmalik@gmail.com', '0303-8465521', 'No', '', '', '', '', '', 'agree', '2022-11-27 09:13:16', '2022-11-27 09:13:16', 1, 'new', NULL, NULL, NULL, NULL),
(17, 'Mahfooz Ahmed abbasi', 'Muzaffarabad', '28289', 'PK-C-5', 'HAIDER BUILDERS & CONSTRUCTION COMPANY', 'Opposite nishan e Haider', 'PK-C-5', '821224182397', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE09', '8210224182397', 'abbasimahfooz9@gmail.com', '03455938638', 'No', '', '', '', '', '', 'agree', '2022-09-15 15:54:08', '2022-09-15 15:54:08', 1, 'new', NULL, NULL, NULL, NULL),
(18, 'Muhammad Zaman sheikh', 'Muzaffarabad', '6914', 'PK-C-3', 'BKZ Construction Pvt ltd', 'Malik associate neer chanar dairy shop upper chattar muzaffarabad ajk', 'PK-C-3', '82203-6293688-9', 'Bc01-bc02 -ce01-ce04-ce08-ce09-ce10-ee01-ee02-ee03-ee04-ee6-ee07-ee08-ee10-ee11', '3130495-8', 'bkzconst@gmail.com', '03431084339', 'No', '', '', '', '', '', 'agree', '2022-09-16 02:39:25', '2022-09-16 02:39:25', 1, 'new', NULL, NULL, NULL, NULL),
(127, 'ZAHIR BASHIR', 'POONCH', '16719', 'PK-C-4', 'TJ CONSTRUCTION (PRIVATE) LIMITED', 'OFFICE No. 23 1st Floor, Capital Palaza G-11/Markaz, Islamabad', 'PK-C-4', '82302-7005199-5', 'BC01-BC02-CE01-CE04(Irrigation Only)-CE09-CE09-CE10-EE09-(EIGHT ONLY)', '4991563', 'TJConstruction2023@gmail.com', '923465879467', 'Yes', '', '', '', '', '', 'agree', '2022-11-24 14:09:46', '2022-11-24 14:09:46', 1, 'new', NULL, NULL, NULL, NULL),
(126, 'Bilal Saleem', 'Muzaffarabad', '18479', 'PK-C-5', 'Bilal Saleem', 'Lower chatter near ice factory muzaffarabad', 'PK-C-5', '82203-7960293-3', 'CE01,CE04,CE9,CE10', '8220379602933', 'be13apr@yahoo.com', '0314-5074314', 'Yes', '', '', '', '', '', 'agree', '2022-11-21 03:59:38', '2022-11-21 03:59:38', 1, 'new', NULL, NULL, NULL, NULL),
(19, 'ISHTIAQ MAHMOOD', 'Bhimber', 'C2/2770', 'PK-C-2', 'CH. ISHTIAQUE MAHMOOD', 'VILLAGE SOKASON POST OFFICE KHAS, TEHSIL & DISTT:', 'PK-C-2', '81102-8102930-7', 'CE01, CE02, CE04(v), CE09, CE10, EE01, EE02, EE04, EE11(i), EE05, ME06, ME02, EE06, ME01', '6158881-1', 'cimoffice3@gmail.com', '0311-8822222', 'Yes', '', '', '', '', '', 'agree', '2022-09-16 06:27:51', '2022-09-16 06:27:51', 1, 'new', NULL, NULL, NULL, NULL),
(20, 'Danish zameer', 'Muzzaffarabad', '11924', 'PK-C-5', 'Danish zameer mughal & co', 'best choice pco garhi duppata muzaffarabad azad jammu and kasmir', 'PK-C-5', '82203-0761221-1', 'CE01,CE04,CE08.CE09.CE10.BC01.BC02', '01-10-0071168', 'adeelmughal526@gmail.com', '0345-9548554', 'Yes', '', '', '', '', '', 'agree', '2022-09-16 06:52:48', '2022-09-16 06:52:48', 1, 'new', NULL, NULL, NULL, NULL),
(21, 'Sajid Hussain', 'Bagh', '20580', 'PK-C-5', 'Al Baari Construction & Builders', 'P.O Bagh, Kotla District Bagh Azad Kashmir', 'PK-C-5', '61101-1917177-5', 'C5', '6110119171775', 'mughals79@yahoo.com', '0312-6477202', 'Yes', '', '', '', '', '', 'agree', '2022-09-16 08:52:29', '2022-09-16 08:52:29', 1, 'new', NULL, NULL, NULL, NULL),
(125, 'Zeeshan Azmat', 'Muzaffarabad', 'Civil/47448', 'PK-C-4', 'ZW construction company', 'House no 8 officer colony near dc office bhimber', 'PK-C-4', '82203-0261049-7', 'BC01 - BC02 - CE-01 - CE04 - CE04 - CE08- CE09 - CE 10', '8220302610497', 'zeeshanawan149@gmail.com', '03040556486', 'Yes', '', '', '', '', '', 'agree', '2022-11-18 08:18:18', '2022-11-18 08:18:18', 1, 'new', NULL, NULL, NULL, NULL),
(22, 'Danish Munir Rathore', 'Haveli Kahuta', '14525', 'PK-C-4', 'M/s Sky Links & Co', '459-C Block, Pak Arab Housing Society, Ferozepur Road, Lahore', 'PK-C-4', '8210394547761', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '5810323-4', 'danishrathore625@gmail.com', '0336-7996807', 'Yes', '', '', '', '', '', 'agree', '2022-09-16 10:33:01', '2022-09-16 10:33:01', 1, 'new', NULL, NULL, NULL, NULL),
(23, 'Tariq saleem chughtai', 'Bagh', '526427', 'PK-C-6', 'Saleem and sons construction company', 'House no 11, street no 2, phase 4-c/1 ghouri town Islamabad', 'PK-C-6', '8210199748373', 'BC01- BC02-CE01-CE04-CE09-CE10', '8210199748373', 'tariqsaleem811@gmail.com', '03449031451', 'Yes', '', '', '', '', '', 'agree', '2022-09-16 10:59:39', '2022-09-16 10:59:39', 1, 'new', NULL, NULL, NULL, NULL),
(24, 'Danish Munir Rathore', 'Haveli Kahuta', '14525', 'PK-C-4', 'M/s Sky Links & Co', '459-C Block, Pak Arab Housing Society, Ferozpur Road, Lahore', 'PK-C-4', '82103-9454776-1', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '5810323-4', 'danishrathore625@gmail.com', '0336-7996807', 'Yes', '', '', '', '', '', 'agree', '2022-09-16 11:13:10', '2022-09-16 11:13:10', 1, 'new', NULL, NULL, NULL, NULL),
(88, 'Salman Sarwar Khan', 'Poonch', 'C3/7437', 'PK-C-3', 'BIN SARWAR CONTRACTING CO', 'H.# 288 ST.#11 SHAHZAD TOWN, PARK ROAD, ISLAMABAD', 'PK-C-3', '82303-0976950-9', 'CE01-CE04-CE09-CE10-EE01-EE04-EE06-EE11', '4177751-4', 'salman.sarwark@gmail.com', '0347-3345194', 'Yes', '', '', '', '', '', 'agree', '2022-11-16 08:06:07', '2022-11-16 08:06:07', 1, 'new', NULL, NULL, NULL, NULL),
(25, 'EHSAN DANISH', 'MUZAFFARABAD', '8216', 'PK-C-3', 'DAR UL ARABIA CONTRACTING', 'BLOCK NO #8 HOUSE NO #1 FIA COLONY G-8/1 ISLAMABAD', 'PK-C-3', '82202-1832101-5', '536007', '8220218321015', 'ammardanish1122@gmail.com', '0355-6566268', 'Yes', '', '', '', '', '', 'agree', '2022-09-16 18:08:54', '2022-09-16 18:08:54', 1, 'new', NULL, NULL, NULL, NULL),
(26, 'Suleman Ahmed', 'Kotli', '17362', 'PK-C-5', 'Usman Constructions', 'Plot No 11 A sub sector D 3 west I mangla road mirpur ajk', 'PK-C-5', '8120218322377', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '8120218322377', 'suleman3477@gmail.com', '03415273477', 'Yes', '', '', '', '', '', 'agree', '2022-09-16 18:41:02', '2022-09-16 18:41:02', 1, 'new', NULL, NULL, NULL, NULL),
(87, 'Muhammad Hanif', 'Mirpur', '1676', 'PK-C-1', 'M/S IDREES TRADERS', 'Sector F-3, Part I, Opposite Al-Khair University Kotli Road Mirpur.', 'PK-C-1', '33104-2096569-7', 'CE01, CE02, CE04, CE09, CE10, EE01, EE02, EE03, EE04, EE06, EE10, EE11', '3310420965697', 'chhanif1230@gmail.com', '0300-6539446', 'Yes', '', '', '', '', '', 'agree', '2022-11-16 04:58:55', '2022-11-16 04:58:55', 1, 'new', NULL, NULL, NULL, NULL),
(27, 'Shahnawaz khan', 'Bagh', '20692', 'PK-C-5', 'Kohsar Builders & developers', 'Post office chaarala ,sohawa sharif tehsil Dhirkot,bagh', 'PK-C-5', '4240154572999', 'Bc01-Bc02-CE04-CE01-CE09-CE10', '4240154572999', 'kohsarbuilders6@gmail.com', '03122222218', 'No', '', '', '', '', '', 'agree', '2022-09-17 07:19:52', '2022-09-17 07:19:52', 1, 'new', NULL, NULL, NULL, NULL),
(28, 'KHAWAJA MUAHHMAD USMAN NAEEM', 'MUZAFFRABAD', '20131', 'PK-C-5', 'GRAY STONE BUILDERS', 'BANO MARKET KAISAR CHINAR', 'PK-C-5', '37406-4473975', 'CE01 CE04 CE09 CE10', '3740644739751', 'usmannaeem936@yahoo.com', '0342-5004009', 'Yes', '', '', '', '', '', 'agree', '2022-09-17 11:01:19', '2022-09-17 11:01:19', 1, 'new', NULL, NULL, NULL, NULL),
(86, 'Sardar Waheed Hussain', 'Poonch', '524173', 'PK-C-3', 'M/S Sardar Waheed Hussain Khan', '2nd Floor Alhaider Plaza Rawalakot', 'PK-C-3', '8230342952673', 'CE 01  CE 10 CE 04 etc', '01040029200', 'waheedhussainkhan01@gmail.com', '03458500807', 'Yes', '', '', '', '', '', 'agree', '2022-11-15 13:02:20', '2022-11-15 13:02:20', 1, 'new', NULL, NULL, NULL, NULL),
(29, 'Muhammad Fayyaz', 'Khan', 'C4/14542', 'PK-C-4', 'Fayyaz Khan Engineering Solutions', 'Sher Bridge, Tehsil Jamrud, District Khyber, Khyber Jamrud', 'PK-C-4', '17301-1371631-3', 'CIVIL,MECHANICAL, ELECTRICAL, COMPUTER,OTHERS2-ME04-ME07', '2998121-2', 'fkes.engineering@gmail.com', '0334-1144551', 'No', '', '', '', '', '', 'agree', '2022-09-17 11:53:02', '2022-09-17 11:53:02', 1, 'new', NULL, NULL, NULL, NULL),
(85, 'Ali Noor', 'Skardu', '5549', 'PK-C-4', 'Noor & Sons Company', 'Al Noor House Near APS School House No. 5 Sakardu', 'PK-C-4', '71103-2130782-5', 'CE01, CE02. CE04. CE09, CE10, EE01, EE02, EE03, EE04, EE05, EE6, EE11', '71103-2130782-5', 'alinoor5549@gmail.com', '0346-9164335', 'Yes', '', '', '', '', '', 'agree', '2022-11-15 07:14:13', '2022-11-15 07:14:13', 1, 'new', NULL, NULL, NULL, NULL),
(84, 'Zaheer jannat', 'Poonch', '483898', 'PK-C-3', 'M/S Zaheer & Co', 'Shop no 2 , 3 Al zaheer market kachery chowk Rawalakot', 'PK-C-3', '8230342791117', 'C 01  CE 04 CE 10 etc', 'Z127202', 'zaheerjannat5@gmail.com', '03457665663', 'Yes', '', '', '', '', '', 'agree', '2022-11-14 12:44:26', '2022-11-14 12:44:26', 1, 'new', NULL, NULL, NULL, NULL),
(83, 'Muhammad Imtiaz Khan', 'Poonch', '22473', 'PK-C-5', 'Muhammad Imtiaz Khan', 'Village Baikh, Teh & District Rawalakot', 'PK-C-5', '82303-8806292-3', 'CE01, CE04, CE09, CE10', '82303-8806292-3', 'imtiazkhan@gmail.com', '0345-1518795', 'Yes', '', '', '', '', '', 'agree', '2022-11-08 11:05:15', '2022-11-08 11:05:15', 1, 'new', NULL, NULL, NULL, NULL),
(30, 'ISHTIAQ MAHMOOD', 'Bhimber', 'C2/2770', 'PK-C-2', 'CH. ISHTIAQUE MAHMOOD', 'VILLAGE SOKASON POST OFFICE KHAS, TEHSIL & DISTT BHIMBER AJK', 'PK-C-2', '81102-8102930-7', 'CE01, CE02, CE04(v), CE09, CE10, EE01, EE02, EE04, EE11(i), EE05, ME06, ME02, EE06, ME01', '6158881-1', 'cimoffice3@gmail.com', '0311-8822222', 'Yes', '', '', '', '', '', 'agree', '2022-09-17 12:36:46', '2022-09-17 12:36:46', 1, 'new', NULL, NULL, NULL, NULL),
(31, 'Shahnawaz khan', 'Bagh', '20692', 'PK-C-5', 'Kohsar Builders & developers', 'Post office chirala sohawa sherif tehsil dhirkot bagh', 'PK-C-5', '4240154572999', 'Bc01-Bc02-CE04-CE01-CE09-CE10', '4240154572999', 'kohsarbuilders6@gmail.com', '03122222218', 'No', '', '', '', '', '', 'agree', '2022-09-17 13:01:34', '2022-09-17 13:01:34', 1, 'new', NULL, NULL, NULL, NULL),
(32, 'umer sharif dar', 'muzaffarabad', '2854', 'PK-C-2', 'rafay construction', 'house no 463 ward no 20 zone b centre plate neelum fort road muzaffarabad azad kashmir', 'PK-C-2', '82203-5015962-1', 'BC01 - BC02-CE01 -CE02- CE04- CE08 -CE09 -CE10 -CE11 -EE09- ME01 -ME02 -ME04 -ME05 -ME06 -ME07', '01-10-0072295', 'darumer@gmail.com', '0333-3366344', 'Yes', '', '', '', '', '', 'agree', '2022-09-17 17:30:25', '2022-09-17 17:30:25', 1, 'new', NULL, NULL, NULL, NULL),
(82, 'Nisar Ahmed Khan', 'Poonch', '22690', 'PK-C-5', 'Nisar Ahmed Khan', 'P.O Rawalakot, Puthi Makwal Teh & Distt. Rawalakot, Poonch', 'PK-C-5', '82303-0987464-7', 'BC01,BC02, CE01, CE04, CE09, CE10', '82303-0987464-7', 'nisarkhan@gmail.com', '0345-8204441', 'Yes', '', '', '', '', '', 'agree', '2022-11-08 10:46:26', '2022-11-08 10:46:26', 1, 'new', NULL, NULL, NULL, NULL),
(33, 'Nayyer', 'Poonch', '14358', 'PK-C-4', 'Chinar associate', 'Office no 1 2nd floor Al QUDDS building Court kauchery Road rawalakot', 'PK-C-4', '8230329821157', 'CE 01 CE 10', '3359445', 'nayyernayyer786@gmail.com', '03455508990', 'Yes', '', '', '', '', '', 'agree', '2022-09-18 07:45:27', '2022-09-18 07:45:27', 1, 'new', NULL, NULL, NULL, NULL),
(34, 'Muhammad Zeewaqar Khan', 'Muzaffarabad', '17313', 'PK-C-4', 'K. Builders', 'Ward# 3 Upper Chatter , Hayatabad Muzaffarabad', 'PK-C-4', '8220388103107', 'BC01, BC02, CE01, CE04, CE08, CE09, CE10, EE01, EE02, EE03, EE04, EE06, EE10, EE11', '8220388103107', 'K.builders45@gmail.com', '03455347311', 'Yes', '', '', '', '', '', 'agree', '2022-09-18 11:11:43', '2022-09-18 11:11:43', 1, 'new', NULL, NULL, NULL, NULL),
(35, 'SHUJAT HUSSAIN KHAN', 'BAGH', '17305', 'PK-C-4', 'SMART CONSTRUCTION & ENGINEERING', 'SP OFFICE STREET NEAR URWA HOTEL BAGH', 'PK-C-4', '42301-3092689-1', 'BC-01, BC-02, CE-01, CE-8 CE-9, CE-10', '4230130926891', 'ceo@smart-c-eng.com', '0302-2664641', 'Yes', '', '', '', '', '', 'agree', '2022-09-18 16:01:56', '2022-09-18 16:01:56', 1, 'new', NULL, NULL, NULL, NULL),
(81, 'Ishtiaq Ahmed Chaudhry', 'Muzaffarabad', '12341', 'PK-C-4', 'Shabbir contractor', 'Ward no 11 center plate Muzaffarabad Ajk', 'PK-C-4', '82203-4847258-5', 'BC01, BC02 ,CE01 CE04, CE09 ,CE10', '82203_4847258-5', 'engg.ishtiaq@gmail.com', '03439881125', 'No', '', '', '', '', '', 'agree', '2022-11-08 03:17:16', '2022-11-08 03:17:16', 1, 'new', NULL, NULL, NULL, NULL),
(80, 'Fasi Ur Rehman', 'BAGH', '16996', 'PK-C-4', 'ALPHA CONSTRUCTION (Pvt) Ltd', 'Alpha House, Tehsil Dheerkot, Bagh, Ajk', 'PK-C-4', '82102-8842128-3', 'CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE09-EE10-EE11', 'Z123967', 'officialalphaconstruction@gmail.com', '0312-5070462', 'Yes', '', '', '', '', '', 'agree', '2022-11-06 07:30:16', '2022-11-06 07:30:16', 1, 'new', NULL, NULL, NULL, NULL),
(36, 'Roshan ajaz', 'Islamabad', '28077', 'PK-C-5', 'AZJA BUILDERS AND ASSOCIATES SMC-Pvt Ltd', 'Office # 302 3rd floor ASHAZ Plaza Ghouri Town islamabad', 'PK-C-5', '82101-0102263-7', 'CE-01-CE04 CE08- CE09 -CE10', '4611436', 'azjabuilds@gmail.com', '0300-5523342', 'Yes', '', '', '', '', '', 'agree', '2022-09-19 10:02:05', '2022-09-19 10:02:05', 1, 'new', NULL, NULL, NULL, NULL),
(37, 'Mehtab Ahmed', 'Muzaffarabad', '22193', 'PK-C-5', 'MILLENNIUM construction and general order supplier', 'City Hardware near total petrol pump chehlla muzaffarabad', 'PK-C-5', '8220364916221', 'CE01, CE04, CE09, CE10, EE01, EE02, EE04, EE06', '8220364916221', 'mehtabmughal099@gmail.com', '03478090805', 'Yes', '', '', '', '', '', 'agree', '2022-09-19 18:16:06', '2022-09-19 18:16:06', 1, 'new', NULL, NULL, NULL, NULL),
(38, 'Akmal Naeem', 'Bagh', '22667', 'PK-C-5', 'Bagh Construction & Engineering Services', 'Main Rawalpindi Road,  Near Grid Station Bagh AJK', 'PK-C-5', '8210177672757', 'CE01, CE04, CE09, CE10', '01-05-0037997', 'akmal.pmubagh@yahoo.com', '03009733331', 'No', '', '', '', '', '', 'agree', '2022-09-20 04:05:55', '2022-09-20 04:05:55', 1, 'new', NULL, NULL, NULL, NULL),
(39, 'Ahmer Mukhtar Abbasi', 'Islamabad', '222', 'PK-C-A', 'Progressive Technical Associate (Pvt) Ltd', 'House No 169, Street No 67, Sector F-10/3 Islamabad', 'PK-C-A', '61101-9958670-7', 'CE01-CE02-CE04-CE09-CE10-EE01-EE02-EE03-EE04-EE06', 'Z117229', 'progressivegroup15@gmail.com', '0302-4353333', 'Yes', '', '', '', '', '', 'agree', '2022-09-20 05:22:19', '2022-09-20 05:22:19', 1, 'new', NULL, NULL, NULL, NULL),
(40, 'Nisar Ahmed', 'Kotli', '11056', 'PK-C-4', 'Ch Nisar Ahmed & Co', 'Village Majwar P.O. Seri  Tehsil Khuiratta District Kotli', 'PK-C-4', '61101-8433639-9', '12345', '01-03-0023140', 'na6768351@gmail.com', '0303-8669600', 'Yes', '', '', '', '', '', 'agree', '2022-09-21 11:15:28', '2022-09-21 11:15:28', 1, 'new', NULL, NULL, NULL, NULL),
(41, 'Sheraz ajmal abbasi', 'Muzaffarabad', '7133', 'PK-C-3', 'Hill top engineering solution pvt ltd', 'St no 25 . house no 1731  I-10/2 islamabad', 'PK-C-3', '82203-2590476-5', 'CE 09-CE 10-EE01-EE02-EE 03-EE04 -EE06-EE11-ME02-ME04', '01100072513', 'hill.top7133@gmail.com', '0300-5075070', 'Yes', '', '', '', '', '', 'agree', '2022-09-21 18:03:28', '2022-09-21 18:03:28', 1, 'new', NULL, NULL, NULL, NULL),
(42, 'SYED AZADAR HUSSAIN NAQVI', 'MUZAFFARABAD', '10986', 'PK-C-5', 'M/S SYED AZADAR HUSSAIN NAQVI', 'VILL:KARDALA NEAR AIRPORT P.O TEH &DIST MUZAFFARABAD AZADKASHMIR', 'PK-C-5', '82203-2968071-1', 'BC 01,BC 02,CE 01,CE04,CE09,CE10', '82203-2968071-1', 'haider512naqvi@gmail.com', '03469682246', 'Yes', '', '', '', '', '', 'agree', '2022-09-23 05:14:04', '2022-09-23 05:14:04', 1, 'new', NULL, NULL, NULL, NULL),
(43, 'Mohsin majeed raja', 'muzaffarabad', '14248', 'PK-C-4', 'M/s Mohsin Majeed Raja', 'Vill nagni Mujahidabad, Near Dulai Camp Kohala Road Muzaffarabad', 'PK-C-4', '82203-2144904-7', '14248', '82203-2144904-7', 'mohsinmajeedraja@gmail.com', '03469682112', 'Yes', '', '', '', '', '', 'agree', '2022-09-23 06:45:40', '2023-01-19 13:20:27', 0, 'approved', NULL, NULL, NULL, NULL),
(44, 'Awais Ahmed', 'Muzaffrabad', '71607', 'PK-C-6', 'ECOSINAT CONSTRUCTION (SMC PRIVATE) LTD', 'OFFice No #4  Asghar Plaza Main Service Road Sohan Islamabad', 'PK-C-6', '82203-1634919-9', 'BC01-BC02-CE01-CE04-CE09-CE10', '5215536', 'awaismir288@gmail.com', '03491616673', 'Yes', '', '', '', '', '', 'agree', '2022-09-27 08:47:54', '2022-09-27 08:47:54', 1, 'new', NULL, NULL, NULL, NULL),
(45, 'ENGR. MUHAMMAD TAHIR AZAM KHAN', 'POONCH, AJ&K', '881', 'PK-C-1', 'M/S CONSULTRONIX INTERNATIONAL (PVT) LTD', 'OFFICE NO.1 3RD, FLOOR, GHOUSIA PLAZA, JINNAH AVENUE, BLOCK-C, BLUE AREA, ISLAMABAD.', 'PK-C-1', '61101-1918805-5', 'CE01-CE04-CE09-CE10-EE02-EE04-EE05-EE07-EE08-ME01-ME02-ME05-ME06', '2787083-9', 'consultronix@gmail.com', '0300-5012221', 'Yes', '', '', '', '', '', 'agree', '2022-09-27 09:56:41', '2022-09-27 09:56:41', 1, 'new', NULL, NULL, NULL, NULL),
(46, 'AZMAT ULLAH', 'NOWSHERA', '15623', 'PK-C-4', 'M/S AZMAT ULLAH & BROTHERS', 'VILLAGE KHOSH MUQAM P.O TARU JABBA TEH & DISTT NOWSHERA', 'PK-C-4', '17201-0350383-1', 'CE01-CE04-CE09-CE10-EE02-EE04-EE06-EE11-ME02-ME04-ME06-ME07', '1720103503831', 'Azmatullahbrothersnsr@gmail.com', '0333-9331030', 'Yes', '', '', '', '', '', 'agree', '2022-09-27 10:17:55', '2022-09-27 10:17:55', 1, 'new', NULL, NULL, NULL, NULL),
(47, 'Raja Muhammad Saddique Khan', 'muzaffarabad', '5264', 'PK-C-3', 'M/s Raja Muhammad Saddique khan', '01, Al madina,book depo, near boys high school Gojra Muzaffarabad', 'PK-C-3', '82203-0860067-9', '5264', '82203-0860067-9', 'rajazameerrajazameer994@gmail.com', '03015827303', 'Yes', '', '', '', '', '', 'agree', '2022-09-29 08:38:18', '2023-01-19 13:20:53', 0, 'approved', NULL, NULL, NULL, NULL),
(48, 'Maximum Builder', 'Thk', '1345', 'PK-C-5', 'Teh. Ajk', 'Teh. Ajk', 'PK-C-4', '728262778972888', 'Vsjsbsk', '1777', 'ttttt@t.com', '03333333334', 'Yes', '', '', '', '', '', 'agree', '2022-09-29 08:58:03', '2022-09-29 08:58:03', 1, 'new', NULL, NULL, NULL, NULL),
(49, 'Engr. Nazakat Ali', 'poonch', '17466', 'PK-C-4', 'M/S MY ENGINEERING', 'OFFICE#10, 1ST FLOOR, BLOCK 78-A ALI ARCADE 6TH ROAD RAWALPINDI', 'PK-C-4', '82302-7295630-7', 'CE01, CE09, CE10, EE01, EE03, EE04, EE05, EE06, EE07,EE11, ME01, ME02,ME06, ME07', '8230272956307', 'nazakat.ali54@yahoo.com', '0348-4433056', 'Yes', '', '', '', '', '', 'agree', '2022-09-30 14:29:11', '2022-09-30 14:29:11', 1, 'new', NULL, NULL, NULL, NULL),
(50, 'Ejaz Ahmad', 'Poonch', '17194', 'PK-C-4', 'Al-RAFAY CONSTRUCTIONS CO', 'Office 23 1st Floor Capital Plaza G11 Markaz Islamabad', 'PK-C-4', '82302-3528229-9', 'CE01 CE04 CE09 CE10', '82302-3528229-9', 'ea405746@gmail.com', '0343-5959815', 'No', '', '', '', '', '', 'agree', '2022-09-30 17:34:59', '2022-09-30 17:34:59', 1, 'new', NULL, NULL, NULL, NULL),
(51, 'hasham bashir', 'sudhnuti', '13535', 'PK-C-4', 'buildcrete construction private limited', 'ishfaq building adjacent altaf hussain cold drinks shop main bazar Mang,plandri,  district sudhnoti  Azad kashmir', 'PK-C-4', '82401-0412323-3', 'CE 01,04,09,10', '01020017944', 'buildcrete01@gmail.com', '0345-5503364', 'Yes', '', '', '', '', '', 'agree', '2022-09-30 17:44:05', '2022-09-30 17:44:05', 1, 'new', NULL, NULL, NULL, NULL),
(52, 'Sardar Zia Manzoor', 'Bagh', '14414', 'PK-C-4', 'SARDAR ZIA MANZOOR &CO', 'Room#1 Al Khariya Plaza Markazi Jamia Masjid Al Hades Khan Chowk Bagh', 'PK-C-4', '82101-3216242-9', 'CE-01-(Irrigation only)CE-04-CE09-CE10-EE01-EE02-EE04-EE06-EE11-(GENERAL ELECTRIC WORKS)', '8210132162429', 'ziamanzoor126@gmail.com', '03335737296', 'Yes', '', '', '', '', '', 'agree', '2022-09-30 18:09:08', '2022-09-30 18:09:08', 1, 'new', NULL, NULL, NULL, NULL),
(53, 'RAJA Nayyer Khan', 'Bagh', '79092', 'PK-C-6', 'Zain Muhammad & Sons Private Limited', 'Office No B-1, Malik Complex, Blue Area, Islamabad', 'PK-C-6', '82102-8258577-9', 'BC01-BC02-CE04-CE08-CE09-CE10', '9985391', 'rajanayyerk@gmail.com', '0345-5409663', 'Yes', '', '', '', '', '', 'agree', '2022-10-02 07:41:45', '2022-10-02 07:41:45', 1, 'new', NULL, NULL, NULL, NULL),
(54, 'Raja Muhammad Khurshid Khan', 'Muzaffarabad', '11771', 'PK-C-4', 'M/s Raja Muhammad Khurshid Khan', 'P.O Kulian, Nagni Mujahid Abad Muzaffarabad', 'PK-C-4', '82203-5548562-7', 'CE01, CE04, CE09, CE10, EE04, EE06, EE11', '8220355485627', 'raja.khurshidc4@gmail.com', '0301-5371514', 'Yes', '', '', '', '', '', 'agree', '2022-10-04 06:39:48', '2022-10-04 06:39:48', 1, 'new', NULL, NULL, NULL, NULL),
(55, 'zafar iqbal', 'lower dir', '6519', 'PK-C-3', 'Tormang Construction CO', 'Al awan manzil Saleem nagger near barrier no 2 wah cant tehsil Taxila district Rawalpindi', 'PK-C-3', '15705-5588885-7', 'CE01-CE02-CE04-CE09-CE10-EE04-EE06-EE11', '3422275-8', 'ms.tcc922@gmail.com', '0345-9530922', 'Yes', '', '', '', '', '', 'agree', '2022-10-05 08:53:27', '2022-10-05 08:53:27', 1, 'new', NULL, NULL, NULL, NULL),
(56, 'Ubaid Ullah Khan', 'Uper Dhir', '16047', 'PK-C-4', 'M/S Roghani Construction', 'Noor Rahman Food Green, Dealer Opposite Chapar Chowk Wari District Upper Dhir', 'PK-C-4', '15702-2512705-3', 'CE01 - CE04 - CE-09 CE-10 - EE01 EE04 - EE06 - EE11', '1570225127053', 'roghaniconstruction39@gmail.com', '0345-9007775', 'Yes', '', '', '', '', '', 'agree', '2022-10-05 10:52:51', '2022-10-05 10:52:51', 1, 'new', NULL, NULL, NULL, NULL),
(57, 'Tariq mehmood mughal', 'Neelum', '14532', 'PK-C-5', 'M/S THE MASTER MAN POWER ENGINEERS', 'Off # 12 ground floor Shalimar plaza chandni chowk murree road rawalpindi.', 'PK-C-5', '61101-7769917-5', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '2303518-8', 'mastermanpower1@yahoo.com', '03475777771', 'No', '', '', '', '', '', 'agree', '2022-10-05 14:08:02', '2022-10-05 14:08:02', 1, 'new', NULL, NULL, NULL, NULL),
(58, 'Muhammad Afzaal', 'Gujrat', '35021', 'PK-C-6', 'CHAUDHARY MUHAMMAD AFZAAL JATT', 'Ghial Bala p.o. Bulani Tehsil Sarai Alamgir District Gujrat', 'PK-C-6', '3740523190093', 'CE 01 - CE 04 (Irrigation Only) - CE 08 - CE 09 - CE 10', '2884287-1', 'afzaalch1985@gmail.com', '03000239225', 'Yes', '', '', '', '', '', 'agree', '2022-10-05 17:26:19', '2022-10-05 17:26:19', 1, 'new', NULL, NULL, NULL, NULL),
(59, 'Khawaja Shoukat Ali , Engr. Kh. Ahsan Shoukat', 'Muzaffarabad', '5151', 'PK-C-3', 'M/s Khawaja Shoukat Ali', 'Akbar House Near Kindergarten School of Studies Nalouchi Muzaffarabad AJK', 'PK-C-3', '8220331215397', 'BC01,BC02,CE01,CE02,CE04,CE08,CE09,CE10,CE11,EE01,EE02,EE03,EE04,EE05,EE06,EE07,EE08,EE10,EE11,ME02,ME04,ME05,ME06,ME07', 'Z134038', 'ahsan1995@live.com', '03459257973', 'Yes', '', '', '', '', '', 'agree', '2022-10-06 21:06:44', '2022-10-06 21:06:44', 1, 'new', NULL, NULL, NULL, NULL),
(60, 'Khawaja zulfiqar', 'Poonch', '483837', 'PK-C-5', 'Zulfiqar Ahmed Khawaja', 'Abbaspur District Poonch', 'PK-C-5', '8230109832841', 'CE01 CE04 CE10', '8230109832841', 'khawajazulfqar1@gmail.com', '03445144603', 'Yes', '', '', '', '', '', 'agree', '2022-10-08 18:24:44', '2022-10-08 18:24:44', 1, 'new', NULL, NULL, NULL, NULL),
(61, 'Kabeer ul Haq', 'Muzaffarabad', '17975', 'PK-C-5', 'BISMILLAH ENGINEERING AND CONSTRUCTION', 'Mohala Chella Bandi Muzaffarabad', 'PK-C-5', '82203-6606962-5', 'CE-01.CE-04,CE-09.CE-10', '01-10-0072247', 'Kabeerulhaq1@gmail.com', '0310-8572918', 'Yes', '', '', '', '', '', 'agree', '2022-10-09 17:37:08', '2022-10-09 17:37:08', 1, 'new', NULL, NULL, NULL, NULL),
(62, 'Muhammad Seemab', 'Kotli', '11', 'PK-C-5', 'M/S MUHAMMAD SEEMAB', 'Village Anohi sarhota, P/O Sarsawa , District and Tehsile Kotli Azad', 'PK-C-5', '8120299848569', 'CE01, CE04 ,CE08, CE09, CE10', '8120299848569', 'rajaseemab33@gmail.com', '03445032648', 'Yes', '', '', '', '', '', 'agree', '2022-10-10 11:10:57', '2022-10-10 11:10:57', 1, 'new', NULL, NULL, NULL, NULL),
(63, 'Khadija begum', 'Poonch', '504119', 'PK-C-4', 'M/S Arham & Aayan brothers co', 'Hajira poonch', 'PK-C-4', '8230320846126', 'CE01 CE04 CE10', '8230320846126', 'kkanwalkh86@gmail.com', '03455302717', 'Yes', '', '', '', '', '', 'agree', '2022-10-10 14:58:47', '2022-10-10 14:58:47', 1, 'new', NULL, NULL, NULL, NULL),
(64, 'Syed Nazakat Hussain Shah', 'Muzaffarabad', '2872', 'PK-C-2', 'M/s Syed Nazakat Hussain Shah & Co.', 'Namli Sydian, Muzaffarabad', 'PK-C-2', '82203-1190114-5', 'CE01-CE04-CE09-CE10-EE06-EE11', '8220311901145', 'syednazakat549@gmail.com', '0346-9613549', 'No', '', '', '', '', '', 'agree', '2022-10-11 05:32:12', '2022-10-11 05:32:12', 1, 'new', NULL, NULL, NULL, NULL),
(65, 'Muhammad Adeel Raza', 'Skardu, GB', '275', 'PK-C-A', 'AAJSONS (Pvt). Ltd.', 'Sadpara Road, Skardu Gilgit-Baltistan', 'PK-C-A', '61101-8320260-5', 'BC03-CE01-CE02-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE05-EE06-EE07-EE08-EE10-EE11-ME01-ME02-ME03-ME04-ME05-ME06-ME07', '4130407-1', 'info@aajsons.com', '0313 5655255', 'Yes', '', '', '', '', '', 'agree', '2022-10-12 07:35:12', '2022-10-12 07:35:12', 1, 'new', NULL, NULL, NULL, NULL),
(66, 'Khawaja Muhammad Mukhtar', 'Muzaffarabad', '27345', 'PK-C-5', 'OSAMA U.S CONTRACTOR', 'Near Boys High School Gojra Muzaffarabad', 'PK-C-5', '8220367014561', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '8220367014561', 'khawajamukhtar@ymail.com', '03000570666', 'Yes', '', '', '', '', '', 'agree', '2022-10-12 11:33:46', '2022-10-12 11:33:46', 1, 'new', NULL, NULL, NULL, NULL),
(67, 'Muhammad Seemab', 'kotli', '26449', 'PK-C-5', 'M/S Muhammad Seemab', 'Village Anohi Sarhota P.O Sarsawa Tehsil & District Kotli', 'PK-C-5', '81202-9984856-9', 'CE01,CE04,CE08,CE09,CE10', '81202-9984856-9', 'rajaseemab33@gmail.com', '0344-5032648', 'Yes', '', '', '', '', '', 'agree', '2022-10-14 10:10:54', '2022-10-14 10:10:54', 1, 'new', NULL, NULL, NULL, NULL),
(68, 'Asif Hussain shah kazmi', 'Jehlum valley', '7126', 'PK-C-3', 'M/s Asif Hussain shah kazmi', 'Agha Gee hotel Tanga stand muzaffarabad Distt', 'PK-C-3', '3540188518657', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE10-EE11', 'Z127922', 'asifkazmi5786@gmail.com', '03469641184', 'No', '', '', '', '', '', 'agree', '2022-10-14 15:08:26', '2023-01-20 06:22:48', 0, 'reject', NULL, NULL, NULL, NULL),
(69, 'Muhammad Israr Ul Haque Khan', 'Poonch', '16485', 'PK-C-4', 'VISION CONTRACTORS', 'Daakhaana  Hajira Ghamir Khaas  Poonch Hajira', 'PK-C-4', '82302-5003416-3', 'BC01,BC02,CE01,CE04,CE08,CE09,CE10,EE09', '8230250034163', 'misrarulhaqkhan@gmail.com', '0355-6177244', 'No', '', '', '', '', '', 'agree', '2022-10-14 18:27:41', '2022-10-14 18:27:41', 1, 'new', NULL, NULL, NULL, NULL),
(70, 'Raja M Azad Khan', 'Poonch Rawalakot', '11946', 'PK-C-5', 'M/s Raja M Azad Khan', 'Village & Post Office,Abbaspur , Near Madina Plaza Poonch,Rawalakot', 'PK-C-5', '82301-8510906-1', 'CE01-CE04-CEO9-CE10', '82301-8510906-1', 'azadkayani56@gmail.com', '0345-3968851', 'Yes', '', '', '', '', '', 'agree', '2022-10-15 03:42:29', '2022-10-15 03:42:29', 1, 'new', NULL, NULL, NULL, NULL),
(71, 'Aslam faqhi khan', 'Poonch', '526322', 'PK-C-4', 'M/S Danish & Ahtisam co', 'Hajira district poonch', 'PK-C-4', '8230265466351', 'CE01 CE04 CE10', '8230265466351', 'muhammadaslamkhan224@gmail.com', '03465216727', 'Yes', '', '', '', '', '', 'agree', '2022-10-17 07:52:27', '2022-10-17 07:52:27', 1, 'new', NULL, NULL, NULL, NULL),
(72, 'Syed Jaffar Raza Kazmi', 'Sialkot', '79208', 'PK-C-6', 'Jaffar Contractors', 'Village Nidokay Tehsil & District Sialkot Pakistan', 'PK-C-6', '81302-0809954-1', 'CE08 CE09 CE10 BC01 BC02 CE01 CE40', '8130208099541', 'jfrkazmi@gmail.com', '0343-5744260', 'Yes', '', '', '', '', '', 'agree', '2022-10-17 07:54:58', '2022-10-17 07:54:58', 1, 'new', NULL, NULL, NULL, NULL),
(73, 'Attiq ur Rehman', 'Mirpur', '14215', 'PK-C-4', 'PROCON  BUILDERS & DEVELOPERS', 'House No.65,Sector D/4 Block -5-A, Mirpur  AK', 'PK-C-4', '81302-8562131-9', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11', '81302-8562131-9', 'attiq.rehman88@gmail.com', '0334-5796108', 'Yes', '', '', '', '', '', 'agree', '2022-10-19 07:53:25', '2022-10-19 07:53:25', 1, 'new', NULL, NULL, NULL, NULL),
(74, 'Muhammad Iqbal', 'Bhimber', 'CB/300', 'PK-C-B', 'Ideal Engineering Constructors', 'Ward No.2 Gujrat Road Bhimber AK', 'PK-C-B', '34403-1937397-9', 'BC01, BC02, CE01, CE02, CE04, CE09, CE10, EE01, EE03, EE04, EE05, EE06, EE11, ME01, ME02, ME05, ME06, ME07', '7223560', 'makhdoomiqbal@yahoo.com', '0302-8507223', 'Yes', '', '', '', '', '', 'agree', '2022-10-21 19:05:01', '2022-10-21 19:05:01', 1, 'new', NULL, NULL, NULL, NULL),
(75, 'Imtiaz Hussain', 'Bhimber', 'C2/1538', 'PK-C-2', 'Imtiaz Hussain & Co. Pvt Ltd', 'House No. B1/1527-28 Service Road Muslim Town Rawalpindi', 'PK-C-2', '81102-3182533-3', 'CE01, CE02, CE04, CE09, CE10, EE01, EE04, EE06, EE11, ME02, ME06', '8717537', 'makhdoomiqbal@yahoo.com', '0302-8507224', 'Yes', '', '', '', '', '', 'agree', '2022-10-21 19:29:04', '2022-10-21 19:29:04', 1, 'new', NULL, NULL, NULL, NULL),
(76, 'Sajid ali', 'Malakand', '79539', 'PK-C-6', 'Revolution&Development', 'Village and post office palai khandi mashwani khel district malakand tehsil baizai', 'PK-C-6', '15402-2856572-5', 'CE01-CE04-CE09-CE10', '4116765-1', 'rdevolp@gmail.com', '0343-9191100', 'Yes', '', '', '', '', '', 'agree', '2022-10-24 17:42:33', '2022-10-24 17:42:33', 1, 'new', NULL, NULL, NULL, NULL),
(77, 'ADNAN SHABBIR SHEIKH', 'MUZAFFARABAD', '21842', 'PK-C-5', '03 STAR CONSTRUCTION COMPANY AND GOS', 'GOJRA BANDI, NEAR GOJRA FORT BRIDGE, DISTT MUZAFFARABAD', 'PK-C-5', '82203-6263536-1', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE9 - CE10 - EE01 - EE02 - EE03 - EE04 - EE06 - EE07 - EE08 - EE10', '01-10-0072716', '03starconstruction@gmail.com', '0345-7017867', 'Yes', '', '', '', '', '', 'agree', '2022-10-27 19:37:48', '2022-10-27 19:37:48', 1, 'new', NULL, NULL, NULL, NULL),
(78, 'Hassan Shah', 'Nowshera', '7529', 'PK-C-4', 'M/S  Hassan Shah', 'C/O:CH.GUL DAD SHOPKEEPER ROLI GALI P.O.TEH & DISTT:KOTLI', 'PK-C-4', '17201-2318366-3', 'BC01,BC02,CE01,CE04,CE09,CE10,EE01,EE02,EE03,EE04,EE05,EE06,EE07,EE08,EE10', '17201-2318366-3', 'alishah06045@gmail.com', '0346-5660281', 'Yes', '', '', '', '', '', 'agree', '2022-11-02 07:40:35', '2023-01-24 16:44:32', 0, 'approved', NULL, NULL, NULL, NULL),
(79, 'Zahid Hussain', 'Kotli', '13698', 'PK-C-4', 'M/S Zahid Hussain Malik', 'Village Rehan Phagwari P.O Kotli', 'PK-C-4', '81202-4444394-1', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '81202-4444394-1', 'zahidhussain111475@gmail.com', '0300-8111475', 'Yes', '', '', '', '', '', 'agree', '2022-11-03 07:44:45', '2023-01-24 16:48:42', 0, 'approved', NULL, NULL, NULL, NULL),
(149, 'Hamza Naseem khan Raja, Muhammad Naseem khan', 'Muzaffarabad', '27729', 'PK-C-5', 'Raja Muhammad Naseem khan And Sons Builders', 'House no 03, Street no 03, Ward no 24, Muhalla Gojra Muzaffarabad A.k.', 'PK-C-5', '82102-2919759-1', 'BC01,BC02,CE01,CE04,CE08,CE09,CE10', 'Z125805', 'rmnaseemksons@gmail.com', '0348-5159975', 'Yes', '', '', '', '', '', 'agree', '2023-01-24 16:47:15', '2023-01-24 16:47:15', 1, 'new', NULL, NULL, NULL, NULL),
(150, 'Mir Amjad Hassan', 'MUZAFFARABAD', '16997', 'PK-C-4', 'M/S Sky limit Constructions', 'Al Saif plaza ward#24 Mohalla Gojra Muaffarabad', 'PK-C-4', '82203-8148008-7', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11-', 'Z150335', 'miramjadhassanee2012@gmail.com', '0310-9464507', 'Yes', '', '', '', '', '', 'agree', '2023-01-26 08:25:09', '2023-01-26 08:25:09', 1, 'new', NULL, NULL, NULL, NULL),
(151, 'Muhammad Israr Malik', 'Muzaffarabad', '8372', 'PK-C-4', 'RUSTAM CONSTRUCTION CO', 'H. # 341 ST. # 2 ;AME # 5 GULISTAN COLONY NEAR AYOUB PARK RAWALPINDI', 'PK-C-4', '37406-3292872-9', 'BC01-BC02-CE01-CE04(Irrigation & Flood Control) CE04(Water Retaining Structure)-CE04(Irrigation Only)-CE08-CE09-CE10-ME07', '3083554-2', 'rustamconstructions@gmail.com', '0344-5033681', 'Yes', '', '', '', '', '', 'agree', '2023-01-26 14:11:27', '2023-01-26 14:11:27', 1, 'new', NULL, NULL, NULL, NULL),
(152, 'SHAHNAWAZ KHAN', 'BAGH', '17484', 'PK-C-4', 'KOHSAR BUILDERS AND DEVELOPERS', 'POST OFFICE CHAARALA SOHAWA SHARIF TEHSIL DHIRKOT, BAGH', 'PK-C-4', '42401-5457299-9', 'BC01,BC02, CE01,CE04,CE09, CE10,EE01,EE02,EE03,EE04,EE06,EE07,EE08,EE10', '4240154572999', 'kohsarbuildersanddevelprs@gmail.com', '0312-2222218', 'Yes', '', '', '', '', '', 'agree', '2023-01-31 16:45:26', '2023-01-31 16:45:26', 1, 'new', NULL, NULL, NULL, NULL),
(153, 'Awais Maqsood', 'Muzaffarabad', '11491', 'PK-C-4', 'M/s Fibrex Construction (Pvt) Limited', 'Near Wapda Colony Mohri Gojra Muzaffarabad', 'PK-C-4', '82203-1187918-5', 'BC01-BC02-CE01-CE02-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE05-EE06-EE07-EE-10-EE11', '01-02-0017832', 'mirazazu19@gmail.com', '0345-9600349', 'Yes', '', '', '', '', '', 'agree', '2023-01-31 20:55:56', '2023-01-31 20:55:56', 1, 'new', NULL, NULL, NULL, NULL),
(154, 'Engr. Labeeb Aslam', 'Kotli', '16481', 'PK-C-4', 'S TECH BUILDERS', 'Kashan e Rahim, mandi road, near sir syed college Sadiqabad Kotli AJK', 'PK-C-4', '8120261172145', 'BC01, BC02, CE01, CE04, CE08, CE09, CE10', '8120261172145', 'labeebaslam786@gmail.com', '03446656000', 'Yes', '', '', '', '', '', 'agree', '2023-02-02 18:26:02', '2023-02-02 18:26:02', 1, 'new', NULL, NULL, NULL, NULL),
(155, 'Azhar Mushtaq', 'Kotli', '17357', 'PK-C-4', 'AM construction', 'Al zamin palza Rawalpindi road kotli ajk', 'PK-C-4', '8120183765995', 'BC 01,BC 02,CE 01,CE 04,CE 08,CE 09,CE 10,EE 01,EE 02,EE 03,EE 04,EE 06,EE 07 ,EE 08,EE 10,EE 11', '8120183765995', 'azhar724722@gmail.com', '03338141515', 'No', '', '', '', '', '', 'agree', '2023-02-03 20:32:31', '2023-02-03 20:32:31', 1, 'new', NULL, NULL, NULL, NULL),
(156, 'Muhammad Usman', 'Islamabad', '345', 'PK-C-A', 'Treinador International Services Private Limited', 'office No 2, 1st Floor, 2D Plaza Pakeeza Market, I 8/4, Islamabad', 'PK-C-A', '38201-1095370-3', 'BC03,CE01, CE02, CE04, CE09, CE10, EE01, EE02, EE03, EE04, EE11, ME01, ME02, ME05, ME06, ME07', '8164638', 'treinadorinternational@yahoo.com', '0333-4405454', 'Yes', '', '', '', '', '', 'agree', '2023-02-03 21:58:39', '2023-02-03 21:58:39', 1, 'new', NULL, NULL, NULL, NULL),
(157, 'Majid Ashraf', 'Muzaffarabad', '22420', 'PK-C-5', 'Mir Associates Butdara', 'Near saif plaza gojra Muzaffarabad', 'PK-C-5', '82203-3942421-9', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '01-10-0072237', 'ma.butdara@gmail.com', '03457348891', 'Yes', '', '', '', '', '', 'agree', '2023-02-04 02:47:39', '2023-02-04 02:47:39', 1, 'new', NULL, NULL, NULL, NULL),
(158, 'Haider Khan', 'Islamabad', '7818', 'PK-C-3', 'Capital Constructors & Builders Private Limited', 'Office No. F-17, 1st Floor, Plot No. 72,  Afzal Center, G-10/1, Islamabad', 'PK-C-3', '16101-7265504-5', 'BC01, BC02, CE01, CE04', '8247681', 'capitalconstructorsbuilders@gmail.com', '0313-2887908', 'Yes', '', '', '', '', '', 'agree', '2023-02-04 10:56:21', '2023-02-04 10:56:21', 1, 'new', NULL, NULL, NULL, NULL),
(159, 'Waheed Gul', 'Lower Deer', '2520', 'PK-C-2', 'M/S Waheed Gul  Construction Company (Private) Limited', 'R/O.Sardar Altaf Hussain Village. Chatrian P.O & Tehsil Sehnsa District Kotli.', 'PK-C-2', '1530209795303', 'BC01 - BC02 - BC03 -  CE01 - CE02 - CE04 - CE08 - CE09 - CE10 - EE01 - EE04 - EE06 - EE11 -  ME01 -  ME02 - ME06 -  ME07', '1530209795303', 'gull24711@gmail.com', '03454472283', 'Yes', '', '', '', '', '', 'agree', '2023-02-15 06:24:00', '2023-02-15 06:24:00', 1, 'new', NULL, NULL, NULL, NULL);
INSERT INTO `e_registerations` (`id`, `NameOfOwner`, `district`, `PECNo`, `categoryAppliedFor`, `NameOfContractor`, `address`, `categoryPEC`, `CNICNumber`, `speCODE`, `fbrNONTN`, `Email`, `mobNo`, `RegLimted`, `CNICUpload`, `fbrUpload`, `PEC2020`, `FormHUpload`, `PreEnlistmentUpload`, `decleration`, `created_at`, `updated_at`, `status`, `progress`, `description`, `error`, `email_status`, `deleted_at`) VALUES
(160, 'Amir Nazir Choudhary', 'havelli', '30252', 'PK-C-3', 'Keystone Contracting (PVT) LTD', 'yasir mir 1st floor gondal plaza I-14/4', 'PK-C-3', '82103-5600395-7', 'BC01,BC02,CE01,CE04,CE09,CE10', '5412761', 'amirnazir2006@gmail.com', '0346-6162309', 'No', '', '', '', '', '', 'agree', '2023-02-19 09:47:20', '2023-02-19 09:47:20', 1, 'new', NULL, NULL, NULL, NULL),
(161, 'Khan Zaman', 'Upper Deer', '14057', 'PK-C-4', 'M/S Khan Zaman & Co', 'C/O Parawa Departmental Store Nakyal Tehsil FatehpurThakiala District Kotli', 'PK-C-4', '1570224971323', 'CE-01, CE-04,CE-09, CE-10, EE-01 , EE-02,  EE-03 , EE-04 , EE-06, EE-11', '1570224971323', 'kz378326@gmail.com', '0344-8813922', 'Yes', '', '', '', '', '', 'agree', '2023-03-15 03:34:48', '2023-03-15 03:34:48', 1, 'new', NULL, NULL, NULL, NULL),
(162, 'Raja Gul Zaman', 'Muzaffarabad AK', '20325', 'PK-C-5', 'RAJA GUL ZAMAN & BROTHERS', 'KOHSAR HOTEL NEAR GPO, OLD SECRETARIAT MUZAFFARABAD AZAD KASHMIR', 'PK-C-5', '82203-6272637-7', 'BC01-BC02-CE01-CE04 (Irrigation only) CE08-CE09-CE10-(SEVEN ONLY)', '8220362726377', 'rajamubashirgull@gmail.com', '0312-9055262', 'Yes', '', '', '', '', '', 'agree', '2023-03-16 09:11:20', '2023-03-16 09:11:20', 1, 'new', NULL, NULL, NULL, NULL),
(163, 'SULEMAN AHMED', 'MIRPUR', '17749', 'PK-C-4', 'USMAN CONSTRUCTIONS', 'PLOT NO. 11-A,, SUB SECTOR-D-3 WEST, DISTT. MIRPUR', 'PK-C-4', '81202-1832237-7', 'BC01- BC02- CE01- CE04- CE08- CE09- CE10- EE07- EE08', '01-12-0081769', 'SULEMAN3477@GMAIL.COM', '0314-5273477', 'Yes', '', '', '', '', '', 'agree', '2023-03-22 14:31:03', '2023-03-22 14:31:03', 1, 'new', NULL, NULL, NULL, NULL),
(164, 'Raja Awais Rasheed', 'Muzaffarabad', '20886', 'PK-C-5', 'M/S RAJA AWAIS RASHEED', 'Vill Grat P.O Qullian Teh & Distt Muzaffarabad', 'PK-C-5', '82203-4323123-9', 'BC 01 , BC 02 , CE 01 , CE 04 , CE 08 , CE 09, CE 10 .', '8220343231239', 'msawaisrasheed@gmail.com', '03115538071', 'Yes', '', '', '', '', '', 'agree', '2023-03-24 08:51:04', '2023-03-24 08:51:04', 1, 'new', NULL, NULL, NULL, NULL),
(165, 'AMAN ULLAH KHAN', 'RAWALPINDI', 'C4/E-14231', 'PK-C-4', 'ATIHAD CONSTRUCTION COMPANY', 'House# CB-227, street#2, sir syed colony , tipu road rawalpindi.', 'PK-C-4', '37405-0601819-3', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10 - EE01 - EE02 - EE04 - EE06 - EE11 - ME01 - ME02 - ME04 - ME05 - ME06 - ME07', '7384333', 'atihadconstruction@gmail.com', '0331-5365605', 'No', '', '', '', '', '', 'agree', '2023-03-26 15:13:44', '2023-03-27 11:52:22', 0, 'approved', NULL, NULL, NULL, NULL),
(166, 'sacdas', 'ascf', 'asc', 'PK-C-B', 'ascas', 'ascas', 'PK-C-B', '51566-5432651-5', '323', '458451', 'test@gmail.com', '6326-5985621', 'Yes', '', '', '', '', '', 'agree', '2023-03-28 05:04:33', '2023-03-28 05:04:33', 1, 'new', NULL, NULL, NULL, NULL),
(167, 'rehan', 'Islamabad', '12345', 'PK-C-A', 'Test', 'test', 'PK-C-A', '31205-9227475-6', '12345', '12345', 'vojiv96179@asoflex.com', '321536145646', 'Yes', '', '', '', '', '', 'agree', '2023-03-28 05:09:41', '2023-03-28 05:09:41', 1, 'new', NULL, NULL, NULL, NULL),
(168, 'Raja Muhammad Khurram Kayani', 'Haveli', '21836', 'PK-C-5', 'Raja Khurram Kayani & Co', 'Post office forwed Kahutta R/O Kalsan District Haveli', 'PK-C-5', '82103-5657377-3', 'CE-01\'CE-04\'CE-09\'CE10', '8210356573773', 'ghakhar128@gmail.com', '0355-7200300', 'Yes', '', '', '', '', '', 'agree', '2023-03-28 17:21:04', '2023-03-28 17:21:04', 1, 'new', NULL, NULL, NULL, NULL),
(169, 'Kabir Khan', 'Upper Dir', '5049', 'PK-C-3', 'M/S Star Builders', 'Fazal Malik Engineering Works Near Main Bridge Bypass Road Bagh', 'PK-C-3', '15701-2202501-9', 'CEO1-CE02-CE04,CE04,CE08-CE09-CE10-EE01-EE03-EE04-EE06-EE11', '32687184', 'ibimzd@gmail.com', '0355-6249381', 'Yes', '', '', '', '', '', 'agree', '2023-03-31 09:50:08', '2023-03-31 09:50:08', 1, 'new', NULL, NULL, NULL, NULL),
(170, 'Muhammad Shabir Khan', 'Haveli', '6585', 'PK-C-3', 'Lineman Private LImited', 'Plot#3, Behind Christian Graveyard, Lakhodair, Off Ring Road Lahore', 'PK-C-3', '82103-8049585-9', 'CE01, CE04, CE08, CE09,CE10, EE01, EE02, EE03,EE04, EE05,EE06,EE07,EE08,EE10,EE11', 'Z153530', 'shabir.khan@lineman.pk', '04237192123', 'Yes', '', '', '', '', '', 'agree', '2023-04-10 06:57:07', '2023-04-10 06:57:07', 1, 'new', NULL, NULL, NULL, NULL),
(171, 'Saddam Hussain', 'Haveli(Kahutta)', '13878', 'PK-C-4', 'Panjal Associates & Builders', 'House # 273, Street # 01-C ,Phase 4-C ,Ghouri Town, Islamabad Pakistan.', 'PK-C-4', '82601-0343768-3', 'BC01 - BC02 - CE01 - CE04 - CE09 - CE10- ME01 - ME02 - ME04 - ME07', '82601-0343768-3', 'saddamhussainhussain77@gmail.com', '0355-6145086', 'Yes', '', '', '', '', '', 'agree', '2023-04-10 07:13:23', '2023-04-10 07:13:23', 1, 'new', NULL, NULL, NULL, NULL),
(172, 'ABID Hussain', 'Haveli Kahuta', '79132', 'PK-C-6', 'M/S ABID HUSSAIN AND SONS', 'House no 25 Street no 24 Modren Colony  Naseer Abad Peshawar Road Rawalpandi', 'PK-C-6', '82103-5206299-7', 'BC01-BC02-CE01-CE04-CE10', '8210352062997', 'abidsheikh7300@gmail.com', '0355-7300974', 'No', '', '', '', '', '', 'agree', '2023-04-12 05:36:34', '2023-04-12 05:36:34', 1, 'new', NULL, NULL, NULL, NULL),
(173, 'Abdul Haseeb Zahid', 'Sudhnoti', 'C-4/15855', 'PK-C-4', 'Nawab Ali Constructions (SMC-Private) Limited', 'House#893, Block F, Satellite Town Rawalpindi', 'PK-C-4', '82401-7944816-9', 'CE01-CE04-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE10-ME01-ME02-ME04-ME05-ME06-ME10', '8285195', 'haseeb.khan485@gmail.com', '0345-3695231', 'Yes', '', '', '', '', '', 'agree', '2023-04-14 06:57:51', '2023-04-14 06:57:51', 1, 'new', NULL, NULL, NULL, NULL),
(174, 'Abdul Haseeb Zahid', 'Sudhnoti', '15855', 'PK-C-4', 'Nawab Ali Constructions (SMC-Private) Limited', 'House#893, Block F, Satellite Town Rawalpindi', 'PK-C-4', '8240179448169', 'CE01-CE04-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE10-ME01-ME02-ME04-ME05-ME06-ME10', '8285195', 'haseeb.khan485@gmail.com', '03453695231', 'Yes', '', '', '', '', '', 'agree', '2023-04-15 10:57:54', '2023-04-15 10:57:54', 1, 'new', NULL, NULL, NULL, NULL),
(175, 'afzal qadir', 'kotli', '10669', 'PK-C-3', 'MALIK AFZAL QADIR CONTRACTOR & CO', 'OFFICE no,01,ALTAF FAZAL MARKET, SHAHEED CHOWK PINDI ROAD\r\n KOTLI AZAD KASHMIR', 'PK-C-3', '81202-2187090-5', 'CE08-CE09-CE10-EE01-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11', '8120221870905', 'only.forumalik@gmail.com', '0346-5719495', 'Yes', '', '', '', '', '', 'agree', '2023-04-17 12:07:57', '2023-04-17 12:07:57', 1, 'new', NULL, NULL, NULL, NULL),
(176, 'azhar mushtaq', 'kotli', '17557', 'PK-C-4', 'AM CONSTRUCTION', 'AL ZAMAN PALAZA RAWALPINDI ROAD KOTLI AJK', 'PK-C-4', '81201-8376599-5', 'BC01-BE02-CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11', '81201-8376599-5', 'azhar924722@gmail.com', '0333-8141515', 'Yes', '', '', '', '', '', 'agree', '2023-04-17 12:52:12', '2023-04-17 12:52:12', 1, 'new', NULL, NULL, NULL, NULL),
(177, 'Roshan Ajaz', 'Bagh', '58083', 'PK-C-5', 'AZJA BUILDERS AND ASSOCIATES (SMC-PRIVATE) LIMITED', 'Office no.302, ASHAZ plaza ghouri town, Islamabad', 'PK-C-5', '8210101022637', 'CE01-CE04-CE08-CE09-CE10', '4611436', 'azjabuilds@gmail.com', '03005523342', 'Yes', '', '', '', '', '', 'agree', '2023-04-24 09:01:12', '2023-04-24 09:01:12', 1, 'new', NULL, NULL, NULL, NULL),
(178, 'Niaz ahmad', 'Sudhnuti', '17483', 'PK-C-4', 'M/s Niaz ahmad & co', 'Abdullah electric and electronic opp javaid building Pallandri sudhnuti ajk', 'PK-C-4', '82401-3029448-7', 'BC01,BC02,CE01,CE04,CE08,CE09,CE10', '82401-3029448-7', 'sardarniaz12@gmail.com', '03455004495', 'Yes', '', '', '', '', '', 'agree', '2023-04-26 04:48:42', '2023-04-26 04:48:42', 1, 'new', NULL, NULL, NULL, NULL),
(179, 'Muhammad Pervaiz khan', 'Sudhanuti', '16917', 'PK-C-4', 'M/s S.M PERVAIZ CO', 'PAKISTAN BOOK DEPOT, TEH. PALLANDRI  DISTT. SUDHNUTI AZAD  KASHMIR', 'PK-C-4', '8240124980617', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11-EE11', '8240124980617', 'parwazsardar20@gmail.com', '03425471610', 'Yes', '', '', '', '', '', 'agree', '2023-04-27 14:47:33', '2023-04-27 14:47:33', 1, 'new', NULL, NULL, NULL, NULL),
(180, 'Sardar Hassan Nazir', 'Kotli', 'C4/E 14723', 'PK-C-4', 'THE PROFESSIONAL BUILDERS', 'Shabnum meternity home and urology clinic near benazir income support office near dhq hospital kotli', 'PK-C-4', '81202-7818738-3', 'BC01,BC02,CE01,CE04,CE08,CE09,CE10', '01-03-0111674', 'theprofessionalbuilderajk@gmail.com', '03453729130', 'Yes', '', '', '', '', '', 'agree', '2023-05-02 10:41:39', '2023-05-02 10:41:39', 1, 'new', NULL, NULL, NULL, NULL),
(181, 'Shahid Manzoor & Brother', 'POONCH', '26413', 'PK-C-5', 'M/s Shahid Manzoor & Brothers', 'Dakhana Rawalakot, Matyalmaira District Poonch Rawalakot', 'PK-C-5', '82303-6075463-7', 'BC01-BC02-CE01-CE04-CE09-CE10', '82303-6075463-7', '111sardar666@gmail.com', '0334-5014326', 'Yes', '', '', '', '', '', 'agree', '2023-05-06 06:15:26', '2023-05-06 06:15:26', 1, 'new', NULL, NULL, NULL, NULL),
(182, 'Javed Anwar Abid', 'Bahawalpur', '1329', 'PK-C-1', 'M/S Subhan Construction Company', '04 Dubai Mahal Road Bahawalpur', 'PK-C-1', '31202-4318517-7', 'CE01 - CE04 - CE09 - CE10 - EE03 - EE04 - EE06 - EE10 - EE11 - ME05 - ME06', '4435036-8', 'subhancon@live.com', '0300-9685114', 'Yes', '', '', '', '', '', 'agree', '2023-05-09 11:59:11', '2023-05-09 11:59:11', 1, 'new', NULL, NULL, NULL, NULL),
(183, 'sher bahadar', 'mingora swat', '1687', 'PK-C-1', 'yusra builders and traders private limited', 'office no 104.105 ground floor yuth hostel building opposite to akram masjid madyan road shahdra chowk mingora swat', 'PK-C-1', '15602-0509924-3', 'ce01-ce02-ce04-ce09-ce10-ee01-ee02-ee03-ee04-ee06-ee10-ee11-me01-me02-me04-me05-me06-me07', '5404906', 'ybt1234@yahoo.com', '0347-9444345', 'Yes', '', '', '', '', '', 'agree', '2023-05-12 04:06:08', '2023-05-12 04:06:08', 1, 'new', NULL, NULL, NULL, NULL),
(184, 'Syed Ali Hassan Naqvi', 'Muzaffarabad', '13304', 'PK-C-4', 'M/S Hassan Ali Associates.', 'Po Box Muzaffarabad kardala chenjela Muzaffarabad', 'PK-C-4', '82203-9669490-9', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', 'Z147292', 'Hassan.naqvi2712@gmail.com', '03469694949', 'No', '', '', '', '', '', 'agree', '2023-05-17 15:58:52', '2023-05-17 15:58:52', 1, 'new', NULL, NULL, NULL, NULL),
(185, 'israr iqbal', 'Kotli', '79205', 'PK-C-6', 'ZIB Construction', 'Khoar, village Saidpur jabar tehsil khuiratta district kotli', 'PK-C-6', '8120221045501', 'CE01-CE04-CE09-CE10', '8120221045501', 'Israriqbal21@gmail.com', '03017472121', 'No', '', '', '', '', '', 'agree', '2023-05-18 06:46:59', '2023-05-18 06:46:59', 1, 'new', NULL, NULL, NULL, NULL),
(186, 'Roman Ajaz', 'Bagh', 'C5/28077', 'PK-C-5', 'AZJA BUILDERS AND ASSOCIATES (SMC-PRIVATE) LIMITED', 'Office no. 302 3rd floor, Ashaz plaza Ghouri town, Islamabad', 'PK-C-5', '82101-2849804-7', 'CE01-CE04(irrigation only)-CE08-CE09-CE10', '4611436', 'ajazroman642@gmail.com', '0335-6766606', 'Yes', '', '', '', '', '', 'agree', '2023-05-18 10:22:30', '2023-05-18 10:22:30', 1, 'new', NULL, NULL, NULL, NULL),
(187, 'Adil Hussain', 'Mehmnd', '1710', 'PK-C-1', 'M/S Manzar Hussain Construction Company PVT LTD', 'I/S Kabli Gate Mohjangi House no 4244 Tehsil and district Peshawar.', 'PK-C-1', '17301-8640715-7', 'Civil and electrical', '5538855', 'je.ea.bft@gmail.com', '03099994940', 'No', '', '', '', '', '', 'agree', '2023-05-18 10:26:01', '2023-05-18 10:26:01', 1, 'new', NULL, NULL, NULL, NULL),
(188, 'Syed Mukhtar Hussain Naqvi', 'Muzaffarabad', '1201', 'PK-C-2', 'M/S Syed Mukhtar Hussain Naqvi & CO (Private) Limited.', 'Lower Plate Neelum Road Muzaffarabad.', 'PK-C-2', '82203-4852471-5', 'BC01,BC02 ,CE01,CE04,CE08,CE09,CE,10 Electical Codes', 'Z132789', 'Mukhtarnaqvi942@gmail.com', '03065456844', 'No', '', '', '', '', '', 'agree', '2023-05-19 15:26:44', '2023-05-19 15:26:44', 1, 'new', NULL, NULL, NULL, NULL),
(189, 'Manzoor Hussain Khan', 'Poonch', '23708', 'PK-C-5', 'Arham Brothers', 'B-17, Madina Market CMH Road Rawalakot', 'PK-C-5', '82303-0743467-3', 'BC02, CE01,04,09,10', '01-04-0030716', 'safdarmehmood91@gmail.com', '0347-5556688', 'Yes', '', '', '', '', '', 'agree', '2023-05-20 08:47:49', '2023-05-20 08:47:49', 1, 'new', NULL, NULL, NULL, NULL),
(190, 'Muhammad Rizwan', 'Mirpur', '257', 'PK-C-A', '7 Star & Co Pvt Ltd', 'Suit No. 119J Sector G-1 Part-1 Tehsil & District Mirpur AJK', 'PK-C-A', '81102-1204031-7', 'BC01 BC02 BC03 CE01 CE02 CE04 CE08 CE09 CE10 EE01 EE02 EE03 EE04 EE06 EE11 ME01 Me02 ME065 ME06 ME07', '8110212040317', 'rizwan.07ak@gmail.com', '0345-6785164', 'Yes', '', '', '', '', '', 'agree', '2023-05-22 11:53:25', '2023-05-22 11:53:25', 1, 'new', NULL, NULL, NULL, NULL),
(191, 'Ijaz Ahmed Khan', 'Kotli', '524328 PEC-11', 'PK-C-5', 'Mosa Construction Company', 'P.O. Dabsi, Lanjot, Tehsil Fathepur Thakyala, District Kotli. AJK', 'PK-C-5', '8120120709117', 'CE01- CE04- CE09- CE10', '8120120709117', 'sardarejaz099@gmail.com', '03557123262', 'Yes', '', '', '', '', '', 'agree', '2023-05-22 15:50:41', '2023-05-22 15:50:41', 1, 'new', NULL, NULL, NULL, NULL),
(192, 'Malik Mustafa Kamal Pasha', 'Islamabad', '2346', 'PK-C-2', 'KKZ INTERNATIONAL Pvt Ltd', 'Office # F16 /F22 2nd Floor Irshad Arcade Aabpara near lebirty shopping center Islamabad Pakistan', 'PK-C-2', '3820109885979', 'Building construction', '7483108', 'kkzinternationalpvtltd1@gmail.com', '03004115711', 'Yes', '', '', '', '', '', 'agree', '2023-05-23 04:35:27', '2023-05-23 04:35:27', 1, 'new', NULL, NULL, NULL, NULL),
(193, 'Sikandar latif', 'Bagh', '26402', 'PK-C-5', 'M/S Sardar Latif Khan & Co.', 'Post Office Chatter No .2, Dharry Tehsil Bagh', 'PK-C-5', '82101-0606076-3', 'BC01-BC02-CE01-CE04(irrigation only)-CE08-CE09-CE10', '82101-0606076-3', 'sikandarlatif786@yahoo.com', '03455452703', 'Yes', '', '', '', '', '', 'agree', '2023-05-23 06:58:53', '2023-05-23 06:58:53', 1, 'new', NULL, NULL, NULL, NULL),
(194, 'Engr Hamza Rauf', 'BHIMBER', '81662', 'PK-C-6', 'HRC SERVICES', 'ward no.05 sher jeng colony bhimber', 'PK-C-6', '81102-7511096-9', 'BC01-BC02-CE01-CE04 - CE08-CE09-CE10 -EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11', '8110275110969', 'hamzarauf37@gmail.com', '0346-5413668', 'Yes', '', '', '', '', '', 'agree', '2023-05-23 09:52:31', '2023-05-23 09:52:31', 1, 'new', NULL, NULL, NULL, NULL),
(195, 'Sardar Babar Khan', 'Mirpur Azad Kashmir', '25422', 'PK-C-5', 'Sardar Babar Khan Company', 'H#642/KL Sector #C-4 Mirpur', 'PK-C-5', '81302-8035109-7', 'BC01-BC02-CE01-CE04-CE09-CE10', '8130280351097', 'sardarbabar22@gmail.com', '0344-889929', 'Yes', '', '', '', '', '', 'agree', '2023-05-25 15:08:22', '2023-05-25 15:08:22', 1, 'new', NULL, NULL, NULL, NULL),
(196, 'Ahmed Haroon Zubair', 'Bhimber', '17363', 'PK-C-4', 'AHZ BUILDERS', 'Village and P/O Pindi jhunja Teh & Distt Bhimber ajk', 'PK-C-4', '81102-5787397-1', 'BC01-BC02-CE01-CE04-CE08-CE09-CE-10-ME07', '81102-5787397-1', 'engrharoonch@gmail.com', '0301-6259478', 'Yes', '', '', '', '', '', 'agree', '2023-05-26 05:19:14', '2023-05-26 05:19:14', 1, 'new', NULL, NULL, NULL, NULL),
(197, 'Muhammad Younis Chaudhary', 'kotli', '82172', 'PK-C-6', 'M/S TAJ BUILDER & CONTRACTORS', 'Office No.1 Ch Aziz Building Main Bazar & P/O Panjera Tehsil and District Kotli', 'PK-C-6', '8120296694909', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '8120296694909', 'Tajbandc@gmail.com', '03455112074', 'Yes', '', '', '', '', '', 'agree', '2023-06-04 06:01:36', '2023-06-04 06:01:36', 1, 'new', NULL, NULL, NULL, NULL),
(198, 'Sabir Kiani', 'Muzaffarabad', '17247', 'PK-C-4', 'S.K.B Kiyani Builders', 'House No. 35 Chaklala, Scheme III Rawalpindi', 'PK-C-4', '82203-7289824-3', 'CE01-CE04-CE08-CE09-CE10', '8220372898243', 'skb.kianibuilders@gmail.com', '0344-9515211', 'Yes', '', '', '', '', '', 'agree', '2023-06-05 05:26:52', '2023-06-05 05:26:52', 1, 'new', NULL, NULL, NULL, NULL),
(199, 'Khurram Jamal Shahid', 'Muzaffarabad', '77862', 'PK-C-6', 'Development Associate', 'Khawar House, Near Water Supply Office,  Bala Pir Muzaffarabad,  AJK', 'PK-C-6', '82201-2927792-1', 'BC01, BC02, CE01, CE04, CE08, CE09, CE10', '8220129277921', 'khurram.shahid@live.com', '0300-9773466', 'Yes', '', '', '', '', '', 'agree', '2023-06-05 06:17:35', '2023-06-05 06:17:35', 1, 'new', NULL, NULL, NULL, NULL),
(200, 'Khalida Mushtaq', 'Muzaffarabad', '2964', 'PK-C-2', 'Ms Mushtaq Ahmed Khan', 'Al mughal house Opp Govt Girls degree college, Mushtaq Ahmed Khan road,nia muhalla', 'PK-C-2', '82203-2832857-0', 'CE01, CE02, CE04, CE09, CE10', 'Z130893', 'msmakbuilders@gmail.com', '0322-5011811', 'Yes', '', '', '', '', '', 'agree', '2023-06-12 18:24:48', '2023-06-12 18:24:48', 1, 'new', NULL, NULL, NULL, NULL),
(201, 'Mr. Asif Nazir', 'ISALMABAD', 'CA-314', 'PK-C-A', 'M/S DEV DEVELOPERS', 'SAIM PLAZA, TARNOL, ISLAMABAD', 'PK-C-A', '61101-3091588-9', 'CE-01, CE-04, CE-09, CE-10, ME-01, ME-02, ME-04, ME-05, ME-06 & ME-07 etc', '4193903-4', 'devdevelopers56@gmail.com', '0300-5010056', 'No', '', '', '', '', '', 'agree', '2023-06-14 12:01:27', '2023-06-14 12:01:27', 1, 'new', NULL, NULL, NULL, NULL),
(202, 'Tabish Hassam', 'Muzaffarabad', '28501', 'PK-C-5', 'M/s SILVER LINE ENGINEERING ASSOCIATES', '2, 1 Tandali Muzaffarabad', 'PK-C-5', '82203-3211137-1', 'BC01-BC02-CE01-CE04-CE04-CE08-CE09-CE10', '8220332111371', 'tabishhassam200@gmail.com', '0317-0505945', 'Yes', '', '', '', '', '', 'agree', '2023-06-17 16:04:09', '2023-06-17 16:04:09', 1, 'new', NULL, NULL, NULL, NULL),
(203, 'Mahmood Qasim', 'Kotli', '14240', 'PK-C-4', 'Mahmood Qasim & Co', 'Village Bobara P.O. Panjera Tehsil and District Kotli', 'PK-C-4', '8120219030935', 'CE01, CE04, CE09, CE10, EE07, EE08', '8120219030935', 'mahmoodqasim444@gmail.com', '03458886625', 'Yes', '', '', '', '', '', 'agree', '2023-06-19 09:53:37', '2023-06-19 09:53:37', 1, 'new', NULL, NULL, NULL, NULL),
(204, 'syed Fiaz Ali Shah', 'Bagh', '7005', 'PK-C-4', 'M/S Syed Fiaz Ali Shah & Co', 'House No 18,Street No B4,Sector-A,Shaheen Town Lehtrar Road , Rawalpindi', 'PK-C-4', '80101-5336494-5', 'BC01-BC02-CE01-CE04(Irrigation Only)-CE09-CE10-(Six Only)', '80101-5336494-5', 'Sayyed.Fiaz@gmail.com', '0345-5737225', 'No', '', '', '', '', '', 'agree', '2023-06-20 07:51:18', '2023-06-20 07:51:18', 1, 'new', NULL, NULL, NULL, NULL),
(205, 'Fazal Rahim', 'Dir Lower', '16260', 'PK-C-4', 'Fazal Rahim & Co', 'Qazi Surgical Distributor DHQ Hospital Timergara Distt: Dir Lower', 'PK-C-4', '1570225224165', 'CE01 - CE04 - CE09 - CE10', '1570225224165', 'frco094@gmail.com', '03145013091', 'Yes', '', '', '', '', '', 'agree', '2023-07-04 14:34:00', '2023-07-04 14:34:00', 1, 'new', NULL, NULL, NULL, NULL),
(206, 'Abdul Qadeer', 'Federal', '2996', 'PK-C-2', 'SRES (PRIVATE) LIMITED', 'Office # 8, First Floor, Orakzai Plaza, Khana Pull Islamabad', 'PK-C-2', '38401-6442804-7', 'BC01-CE01-CE04-CE09-CE10-EE01-EE02-EE04-EE06-EE07-EE08-EE11-ME02-ME05-ME06-', '8932907', 'abdulqadeer@sunrise.pk', '0300-8489896', 'Yes', '', '', '', '', '', 'agree', '2023-07-05 05:40:30', '2023-07-05 05:40:30', 1, 'new', NULL, NULL, NULL, NULL),
(207, 'Hamid Rashid', 'Islamabad', '538779', 'PK-C-6', 'Infravest SMC- Private Limited', 'Gulzar Plaza, D-Chowk, Ghauri Town, Phase 4-B, Islamabad', 'PK-C-6', '33104-7466571-7', 'EE01, EE02, EE03, EE06, EE10, EE11, CE08, CE09, CE10', '4740731', 'rasheedhamid@gmail.com', '0333-9933797', 'No', '', '', '', '', '', 'agree', '2023-07-13 15:20:38', '2023-07-13 15:20:38', 1, 'new', NULL, NULL, NULL, NULL),
(208, 'Muhammad Akhlaq', 'Kotli', '8269', 'PK-C-4', 'M/s Muhammad Akhlaque', 'R/O Anhoi Sarhota Post Office Sarsawa Tehsil & District Kotli Azad Kashmir', 'PK-C-4', '81202-3751773-1', 'BC-01, BC-02, CE-01, CE-04, CE-08, CE-09, CE-10', '81202-3751773-1', 'rma_12003@yahoo.co.uk', '0346-5550552', 'Yes', '', '', '', '', '', 'agree', '2023-07-14 12:36:36', '2023-07-14 12:36:36', 1, 'new', NULL, NULL, NULL, NULL),
(209, 'Rameez iftikhar lone', 'Muzaffarabad', '16915', 'PK-C-4', 'M/s IFTIKHAR AHMAD LONE', 'sectrait road muzaffarabad', 'PK-C-4', '82203-8380820-5', 'BC01,BC02,CE01,CE04,CE09,CE10', '01-10-0072377', 'rameezlone557@gmail.com', '0336-0111157', 'Yes', '', '', '', '', '', 'agree', '2023-07-16 18:54:10', '2023-07-16 18:54:10', 1, 'new', NULL, NULL, NULL, NULL),
(210, 'Atique Ahmed', 'Kotli', '15340', 'PK-C-4', 'Dynamic Engineering Construction Pvt. Ltd', 'House No 22 Najaf Street Sher Ahmed Road, Haron Chowk Kuri Road Rawalpindi', 'PK-C-4', '81202-8609747-3', 'CE01,CE04,CE09,CE10,EE01,EE02,EE03,EE04,EE06,EE10,EE11', 'A211944', 'dynamiceconstruction@gmail.com', '03465012607', 'Yes', '', '', '', '', '', 'agree', '2023-07-25 13:24:03', '2023-07-25 13:24:03', 1, 'new', NULL, NULL, NULL, NULL),
(211, 'M AMJAD IQBAL', 'FAISALABAD', '1409', 'PK-C-3', 'RAY SHAH MUHAMMAD', 'P-1 STREET NO 1 ILYAS TOWN CHAK 215 RB KAKU-ANA OPPOSITE SITRAR PARK CITY JARANWALA ROAD FAISALABAD', 'PK-C-3', '31303-8650099-5', 'CE10,CE09,CE01,CE04,EE01,EE02,EE04,EE06,EE10', '3130386500995', 'rsmcompany83@gmail.com', '0300-0939154', 'Yes', '', '', '', '', '', 'agree', '2023-07-27 09:21:00', '2023-07-27 09:21:00', 1, 'new', NULL, NULL, NULL, NULL),
(212, 'Ali Ubaid', 'Muzaffarabad', '29034', 'PK-C-5', 'Ali Builders & Engineering Works', 'Near Habib News Agency, Bank Road, Muzaffarabad', 'PK-C-5', '82203-6580723-5', 'BC01,BC02,CE01,CE04(IRRIGATION ONLY),CE08,CE09,CE10', '8220365807235', 'alibuilders2262@gmail.com', '0343-6272262', 'No', '', '', '', '', '', 'agree', '2023-08-22 23:22:25', '2023-08-22 23:22:25', 1, 'new', NULL, NULL, NULL, NULL),
(213, 'M/S Javeed Iqbal Construction', 'Haveli', '19480', 'PK-C-5', 'Abdul Quddous', 'Chaudhary Cement House & Raja Riaz Diesel Store Forward Kahuta Bagh Haveli', 'PK-C-5', '8210385858311', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '8210385858311', 'abdulquddousch1991@gmail.com', '03557208786', 'No', '', '', '', '', '', 'agree', '2023-08-23 09:40:08', '2023-08-23 09:40:08', 1, 'new', NULL, NULL, NULL, NULL),
(214, 'Aftab aziz', 'Poonch', '14238', 'PK-C-4', 'Chaudhary Aftab construction & co Pvt ltd', 'House no 7 street no 1 executive housing society qulzar e  Quaid Rawalpindi', 'PK-C-4', '8230173106823', 'Ce01-ce04-ce09-ce10-ee07-ee08-', '8376482', 'Aftabaziz65@gmail.com', '03455332111', 'Yes', '', '', '', '', '', 'agree', '2023-08-25 14:21:09', '2023-08-25 14:21:09', 1, 'new', NULL, NULL, NULL, NULL),
(215, 'Faizan Khalid Butt', 'Bhimber', '18222', 'PK-C-4', 'EZHAN CONSTRUCTION & BUILDERS', 'House No. 104, Sector D/4,  Block 1A Mirpur A.K.', 'PK-C-4', '81103-0734298-7', 'BC01- BC02- CE01- CE04 (Irrigation and Flood Control System) - CE04 (Water Retaining Structures) - CE09 - CE10', '8110307342987', 'ezhanconstruction@gmail.com', '0318-5749847', 'Yes', '', '', '', '', '', 'agree', '2023-08-26 05:38:47', '2023-08-31 15:25:57', 0, 'approved', NULL, NULL, NULL, NULL),
(216, 'Musharraf', 'Muzaffarabad', '83093', 'PK-C-6', 'M.S Enterprises and engineering', 'Nagni Dhari P\\O Domail Tehsil And Disitirt Muzaffarabad', 'PK-C-6', '82203-9739370-5', 'BC 01 , BC 02 , CE 01 , CE 04 , CE 08 , CE 09, CE 10 .', '8220397393705', 'rajamusharrafkhan@gmail.com', '03015227500', 'Yes', '', '', '', '', '', 'agree', '2023-09-05 17:59:29', '2023-09-05 17:59:29', 1, 'new', NULL, NULL, NULL, NULL),
(217, 'Nazakat Hussain', 'Kotli', '17480', 'PK-C-4', 'M/s Nazakat Hussain', 'R/O Anhoi Sarhota Post Office Sarsawa Tehsil & District Kotli Azad Kashmir', 'PK-C-4', '81202-9645914-5', 'BC01, BC02, CE01, CE04, CE09, CE10', '81202-9645914-5', 'nazakat1972hussain@gmail.com', '0346-5197570', 'No', '', '', '', '', '', 'agree', '2023-09-13 06:44:20', '2023-09-13 06:44:20', 1, 'new', NULL, NULL, NULL, NULL),
(218, 'Raja Muhammad Fayyaz', 'Kotli', '8795', 'PK-C-4', 'Fayyaz Enterprises', 'Office -17 shareef plaza g.t road new city Sharfo Wah cantt dist.rawalpindi.', 'PK-C-4', '6110169598647', 'Bc01,Bc02,CE01,CE04,CE09,CE10', '6110169598647', 'fayyazazam09@gmail.com', '03015379170', 'No', '', '', '', '', '', 'agree', '2023-09-13 07:10:11', '2023-09-13 07:10:11', 1, 'new', NULL, NULL, NULL, NULL),
(219, 'Adnan Nasim', 'Mirpur', '16482', 'PK-C-4', 'ENGR.ADNAN CONSTRUCTION COMPANY', '1,PLOT NO 11 MAIN KOTLI ROAD F3 MIRPUR', 'PK-C-4', '81302-0595466-5', 'BC01-BC02-CE01-CE04(IRRIGATION ONLY)-CE08-CE09-CE10', '8130205954665', 'nadeemgullkhan0001@gmail.com', '0341-5155823', 'Yes', '', '', '', '', '', 'agree', '2023-09-15 10:34:47', '2023-09-15 10:34:47', 1, 'new', NULL, NULL, NULL, NULL),
(220, 'Abdul Hafeez', 'Islamabad', '83071', 'PK-C-6', 'Trilines Construction Engineering Corporation', 'House No 321 Street 16 Ghouri town phase 1 Islamabad', 'PK-C-6', '3740223545005', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', 'A632628-0', 'trilinesconstruction@gmail.com', '03321549483', 'No', '', '', '', '', '', 'agree', '2023-09-25 05:53:57', '2023-09-25 05:53:57', 1, 'new', NULL, NULL, NULL, NULL),
(221, 'ali', 'lahore', '123456', 'PK-C-A', 'afdsf', 'gfdgdgfg', 'PK-C-B', '78945-6123078-9', '12345', '2323232', 'admin@pqa.gov.pk', '0312-3456798', 'Yes', '', '', '', '', '', 'agree', '2023-09-26 04:43:51', '2023-09-26 04:43:51', 1, 'new', NULL, NULL, NULL, NULL),
(222, 'Muhammad Sohaib', 'Kotli', '8758', 'PK-C-4', 'M/s Muhammad Sohiab & Co', 'R/O Anhoi Sarhota, P.O Sarsawa Tehsil & District Kotli Azad Kashmir Pakistan', 'PK-C-4', '81202-8288396-3', 'BC01-CE02-CE01, CE08-CE09-CE10', '8120282883963', 'muhammadsohiab42@gmail.com', '0345-8160222', 'Yes', '', '', '', '', '', 'agree', '2023-10-25 06:09:02', '2023-10-25 06:09:02', 1, 'new', NULL, NULL, NULL, NULL),
(223, 'Muhammad Nadeem', 'Sudhnoti', '24100', 'PK-C-5', 'Jugwal Engineering & Construction', 'Office # 89, 3rd Floor, Mobi Plaza Haider Road Saddar Rawalpindi, Pakistan.', 'PK-C-5', '82401-3920548-3', 'CE10-CE09-CE08-CE04-CE01-BC01-BC02', '8240139205483', 'jugwalconstruction@gmail.com', '0346-5233432', 'Yes', '', '', '', '', '', 'agree', '2023-10-30 11:00:30', '2023-10-30 11:00:30', 1, 'new', NULL, NULL, NULL, NULL),
(224, 'Junaid Abid Alvi', 'Islamabad', '84555', 'PK-C-6', 'M Hanzallah Traders', 'Shop No 8, Ground Floor, Plot No 6B, Block B, Sohan Garden, Islamabad', 'PK-C-6', '37405-2394763-9', 'BC01-BC02-CE01-CE04-CE09-CE10-EE01-EE04-EE06-EE10', '8651265', 'mhanzallahtraders@gmail.com', '03135533212', 'Yes', '', '', '', '', '', 'agree', '2023-11-15 15:29:36', '2023-11-15 15:29:36', 1, 'new', NULL, NULL, NULL, NULL),
(225, 'LIAQAT ALI', 'BHIMBER', '7712', 'PK-C-4', 'M/S LIAQAT ALI MUGHAL & CO', '1, VILL. KADHALA, TEH. BHERNALA BARNALA BHIMBER', 'PK-C-4', '81101-1256660-3', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10 - EE01 - EE02 - EE03 - EE04 - EE06 - EE07 - EE10 - EE11 - EE11', '8110112566603', 'liaqatmughal8523@gmail.com', '0345-8523713', 'Yes', '', '', '', '', '', 'agree', '2023-11-21 07:28:41', '2023-11-21 07:28:41', 1, 'new', NULL, NULL, NULL, NULL),
(226, 'Tayyab Rafique', 'Kotli', '18085', 'PK-C-4', 'HUZAIFA RAFIQ CONSTRUCTION COMPANY', 'NEAR GAIR PULL,KHUI RATTA P.O.KHUI RATTA,KOTLI', 'PK-C-4', '81202-5937454-5', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11', '8120259374545', 'Engr.tayyabrafiq@gmail.com', '0345-5006406', 'No', '', '', '', '', '', 'agree', '2023-11-23 05:20:46', '2023-11-23 05:20:46', 1, 'new', NULL, NULL, NULL, NULL),
(227, 'MUHAMMAD FURQAN', 'BHIMBER', '16700', 'PK-C-5', 'M/S FURQAN & SONS', 'VILLAGE MARYAL, P/O PANJERI, TEHSIL & DISTRICT BHIMBER A.K', 'PK-C-5', '81102-0799003-3', 'BC01 - BC02 - CE01 - CE04 - CE09 - CE10', '8110207990033', 'cmuhammadfurqan@gmail.com', '0346-1929355', 'Yes', '', '', '', '', '', 'agree', '2023-11-23 11:49:38', '2023-11-23 11:49:38', 1, 'new', NULL, NULL, NULL, NULL),
(228, 'AZEEM MAHRBAN', 'Mirpur', '7874', 'PK-C-3', 'AZEEM MEHARBAN & CO', 'H. NO. 1001, ST. NO.  66, SECTOR G-9/4, ISLAMABAD', 'PK-C-3', '81302-7845378-3', 'BC01 - BC02 - BC04 - CE01 - CE04  - CE08 - CE09 - CE10 - CE11 - EE01 - EE02 - EE03 - EE04 - EE06 - EE07 - EE08 -EE10 - EE11', '8130278453783', 'azeemmeherban538@gmail.com', '0345-5468732', 'Yes', '', '', '', '', '', 'agree', '2023-11-23 12:07:52', '2023-11-23 12:07:52', 1, 'new', NULL, NULL, NULL, NULL),
(229, 'ADEEL SAJID', 'MIRPUR', '7803', 'PK-C-4', 'M/S ILAM DIN CONSTRUCTION CO', 'HOUSE # a-68 SECTOR# B-4, MIRPUR AJK', 'PK-C-4', '81302-4252715-5', 'CE01 - CE04 - CE09 - CE10 - EE01 - EE04 - EE06 - EE10 - EE11', '8130242527155', 'chadeelsajid1979@gmail.com', '0343-8811909', 'Yes', '', '', '', '', '', 'agree', '2023-11-25 08:12:54', '2023-11-25 08:12:54', 1, 'new', NULL, NULL, NULL, NULL),
(230, 'Gdjh', 'Idknj', 'Bidj', 'PK-C-A', 'Shishh', 'Ddhjjd', 'PK-C-2', 'Gjbbjs', 'Hishj', 'Hdjjb', 'hjsbjk@gmail.com', '0567hjjd', 'No', '', '', '', '', '', 'agree', '2023-11-27 08:47:42', '2023-11-27 08:47:42', 1, 'new', NULL, NULL, NULL, NULL),
(231, 'Nisar Hussain', 'MIRPUR', '20386', 'PK-C-5', 'M/S NUMBERDAR NIAZ & CO', 'HOUSE NO 1128, SECTOR F/3 PART IV DISTT. MIRPUR', 'PK-C-5', '81302-7793262-5', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10', '8130277932625', 'niaznisar024@gmail.com', '0345-8582783', 'Yes', '', '', '', '', '', 'agree', '2023-11-27 08:49:41', '2023-11-27 08:49:41', 1, 'new', NULL, NULL, NULL, NULL),
(232, 'RAJA SOHAIL NADEEM', 'Bhimber', '9050', 'PK-C-4', 'M/S RAJA SOHAIL NADEEM', 'TASTE IN TRADER, NEW LARI ADDA P.O JATLAN, TEH & DISTT MIRPUR', 'PK-C-4', '81102-0259579-1', 'BC01-BC02-CE01-CE04-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11', '8110202595791', 'sohailnadeem2936@gmail.com', '03415764346', 'Yes', '', '', '', '', '', 'agree', '2023-11-28 14:00:00', '2023-11-28 14:00:00', 1, 'new', NULL, NULL, NULL, NULL),
(233, 'Jan Khaliq', 'Bhimber', '11965', 'PK-C-4', 'M/S Malik Construction & Builders', 'Ward No. 3 DC Office Road Near READ Foundation School Bhimber A.K.', 'PK-C-4', '15702-1329780-9', 'BC01-BC02-CE01-CE04, CE08-CE09-CE10-ME07', '15702-1329780-9', 'jankhalid2018@gmail.com', '0345-5743005', 'No', '', '', '', '', '', 'agree', '2023-11-30 07:19:36', '2023-11-30 07:19:36', 1, 'new', NULL, NULL, NULL, NULL),
(234, 'SAJID SULTAN', 'Mirpur', '76687', 'PK-C-6', 'M/S SAJID SULTAN', 'NEAR AGRICULTURE OFFICE, CHECHIYAN TOLL CHECHIYAN MIRPUR', 'PK-C-6', '81302-1679466-1', 'CE01-CE04-CE04-CE09-CE10', '8130216794661', 'sajidsultan30@gmail.com', '0345-4034238', 'Yes', '', '', '', '', '', 'agree', '2023-11-30 09:38:34', '2023-11-30 09:38:34', 1, 'new', NULL, NULL, NULL, NULL),
(235, 'CHAUDHARY NAEEM ILYAS', 'MIRPUR', '26484', 'PK-C-5', 'M/S HA ENTERPRISES', 'H#346, SECTOR C-4, MIRPRU', 'PK-C-5', '81302-4670217-3', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10', '81302-4670217-3', 'Naeemilyas90@gmail.com', '03139090092', 'Yes', '', '', '', '', '', 'agree', '2023-11-30 11:51:28', '2023-11-30 11:51:28', 1, 'new', NULL, NULL, NULL, NULL),
(236, 'Ikram ul haq', 'Bhimber', '17567', 'PK-C-4', 'Moonlight traders', 'Vill.channi thothal,p/oali baig,distt.bhimber', 'PK-C-4', '81102-0245165-7', 'BC01,BC02,CE01,CE04,CE08,CE09,CE10,EE01,EE02,EE03,EE04,EE06,EE07,EE08,EE10,EE11,', '8110202451657', 'pak_kashmir4@yahoo.com', '0340-5786670', 'Yes', '', '', '', '', '', 'agree', '2023-11-30 17:44:58', '2023-11-30 17:44:58', 1, 'new', NULL, NULL, NULL, NULL),
(237, 'Muhammad usman ul haq', 'Bhimber', '11067', 'PK-C-4', 'Innovative&protective construction', 'Vill.channi thothal,p/o ali baig,distt.bhimber', 'PK-C-4', '81102-0245153-7', 'BC01,BC02,CE01,CE04,ME01,ME02,ME04,ME05,ME06,ME07,CE08,CE09,CE10,', '8110202451537', 'msiandpc@gmail.com', '0344-5657753', 'Yes', '', '', '', '', '', 'agree', '2023-11-30 19:36:13', '2023-11-30 19:36:13', 1, 'new', NULL, NULL, NULL, NULL),
(238, 'Muhammad Irfan', 'Bhimber', '1545', 'PK-C-1', 'Muhammad Irfan Construction', 'Office # 1, Basement 7-Star Plaza, Near UBL Dhandar Khurd, Teh & Distt: Bhimber A.K', 'PK-C-1', '81102-6399819-5', 'BC01-BC02-BC04-CE01-CE04-CE09-CE10-EE01-EE02-EE04-EE06-EE09-EE11-EE11-EE11-ME01-ME02-ME05-ME06', '8110263998195', 'irfanch442@gmail.com', '0345-4428695', 'No', '', '', '', '', '', 'agree', '2023-12-02 10:12:39', '2023-12-02 10:12:39', 1, 'new', NULL, NULL, NULL, NULL),
(239, 'Tariq Hussain', 'Islamabad', '15610', 'PK-C-4', 'ZS Construction', 'House No 15 Street  No 40 jinnah garden, Islamabad', 'PK-C-4', '38101-0609743-1', 'CE01,CE04,CE08,CE09,CE10BC01,BC02,', '3087028-3', 'zsconstruction80@gmail.com', '03328271115', 'No', '', '', '', '', '', 'agree', '2023-12-03 14:00:46', '2023-12-03 14:00:46', 1, 'new', NULL, NULL, NULL, NULL),
(240, 'KHURRAM MUNIR', 'BHIMBER', '17487', 'PK-C-4', 'M/S K BROTHERS', 'BLOCK 1 A, SECTOR D/4 MIRPUR', 'PK-C-4', '81102-1237891-1', 'BC01 - BC02 -CE01 - CE04 - CE08 - CE09 - CE10 - EE01 - EE02 - EE04 - EE06 - EE11', '8110212378911', 'kanyalkhurram@yahoo.com', '0347-0111245', 'Yes', '', '', '', '', '', 'agree', '2023-12-04 07:44:52', '2023-12-04 07:44:52', 1, 'new', NULL, NULL, NULL, NULL),
(241, 'Muhammad Kamran', 'Mirpur', '14081', 'PK-C-4', 'Royal Constructon', 'Flat No. 1 Basement of Haji Karim Plaza, Haul Road Distt. Mirpur AJK', 'PK-C-4', '81102-8027418-5', 'BC01-BC02-CE01-CE05-CE09-CE10-ME01-ME02-ME04-ME05-ME06-ME07', '8110280274185', 'kamranch777@gmail.com', '03456904382', 'No', '', '', '', '', '', 'agree', '2023-12-05 12:07:12', '2023-12-05 12:07:12', 1, 'new', NULL, NULL, NULL, NULL),
(242, 'ZAHID SHAMIM', 'Bhimber', '15123', 'PK-C-5', 'M/S ZAHID SHAMIM & CO', 'VILL; CHANNI RIKI KHAS BHIMBER', 'PK-C-5', '81102-0252861-7', 'BC01-BC02-CE01-CE04-CE04-CE08-CE09-CE10', '8110202528617', 'zahidshamim540@gmail.com', '0345-5525540', 'Yes', '', '', '', '', '', 'agree', '2023-12-05 12:53:26', '2023-12-05 12:53:26', 1, 'new', NULL, NULL, NULL, NULL),
(243, 'Rustam Rabbani', 'Bhimber', '19707', 'PK-C-5', 'Subhani Builders', 'Samahni chowk Bhimber Ajk', 'PK-C-5', '81102-0906176-3', 'BC01-BC02-CE01-CE04(irrigation)-CE08-CE09-CE10', '8110209061763', 'rustamsubhani01@gmail.com', '0345-2477092', 'Yes', '', '', '', '', '', 'agree', '2023-12-06 08:56:19', '2023-12-06 08:56:19', 1, 'new', NULL, NULL, NULL, NULL),
(244, 'MUSHARAF KHAN', 'MIRPUR', '10467', 'PK-C-5', 'M/S HAJI MUSHARAF KHAN', 'SECTOR B-5, KHAMBAL MIRPUR', 'PK-C-5', '17201-5189144-1', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10', '1720151891441', 'hajimusharaf10467@gmail.com', '0345-9731941', 'Yes', '', '', '', '', '', 'agree', '2023-12-06 12:26:01', '2023-12-06 12:26:01', 1, 'new', NULL, NULL, NULL, NULL),
(245, 'HABIB UR REHMAN', 'MIRPUR', '16292', 'PK-C-4', 'M/S HABIB UR REHMAN CONSTRUCTION CO', 'HOUSE NO. 1001, STREET NO. 66, SECTOR G-9/4 ISLAMABAD', 'PK-C-4', '81302-1705595-3', 'BC01 - BC02 - CE01 - CE04  - CE08 - CE09 - CE10 - EE01 - EE02 - EE03 - EE04 - EE06 - EE07 - EE08 -EE10 - EE11', '8130217055953', 'urh1693@gmail.com', '0345-5678054', 'Yes', '', '', '', '', '', 'agree', '2023-12-06 12:40:32', '2023-12-06 12:40:32', 1, 'new', NULL, NULL, NULL, NULL),
(246, 'Shafiq Ur Rehman', 'Bhimber Ajk', '23121', 'PK-C-5', 'Sursons Private Limited', '82, Safari Homes Street No. 26 Sector B Bahria Town Phase 8 Rawalpindi', 'PK-C-5', '81302-1686454-1', 'BC01 BC02 CE01 CE04 CE08 CE09 CE10 CE11', '8177991-6', 'sursonslimited@hotmail.com', '03435311100', 'Yes', '', '', '', '', '', 'agree', '2023-12-06 13:20:03', '2023-12-06 13:20:03', 1, 'new', NULL, NULL, NULL, NULL),
(247, 'MEHMOOD AHMED', 'MIRPUR', '1618', 'PK-C-2', 'M/S CH MAHMOOD AHMED', 'MOH: BAN KANAIL P.O. TEH. &, DISTT: MIRPUR', 'PK-C-2', '81302-1891714-7', 'BC01 - BC02 - CE01 - CE02 - CE04 - CE08 - CE09 - CE10 - EE04 - EE05 - EE06 - EE11', '8130218917147', 'mao242015@gmail.com', '0318-2545370', 'Yes', '', '', '', '', '', 'agree', '2023-12-07 09:12:59', '2023-12-07 09:12:59', 1, 'new', NULL, NULL, NULL, NULL),
(248, 'Ali Noor', 'Skardu', '539759', 'PK-C-4', 'Noor and Sons', 'AL NOOR HOUSE NEAR APS SCHOOL HOUSE NO 5 SKARDU', 'PK-C-4', '7110321307825', 'CE01', '7110321307825', 'uzairdxbpro@gmail.com', '0310-9338133', 'No', '', '', '', '', '', 'agree', '2023-12-07 17:54:10', '2023-12-07 17:54:10', 1, 'new', NULL, NULL, NULL, NULL),
(249, 'Syed Usman Ali Shah', 'Islamabad', '19934', 'PK-C-5', 'Syed Usman Ali Shah', 'Office no 2 Sadat street jhang syedan Islamabad', 'PK-C-5', '6110132225785', 'CE09,CE10,EE01,EE02,EE03,EE04,EE06,EE07,EE07,EE08,EE10', '42299098', 'syedusmankazmi1992@gmail.com', '03469161761', 'Yes', '', '', '', '', '', 'agree', '2023-12-07 20:49:03', '2023-12-07 20:49:03', 1, 'new', NULL, NULL, NULL, NULL),
(250, 'egrgr', 'tgrtg', '123123123', 'PK-C-A', 'sfwerwer', 'fsdfsf', 'PK-C-3', '90008-0100170-5', '123123', '123123123', 'maiaaa@gmx.com', '1231-2312312', 'Yes', '', '', '', '', '', 'agree', '2023-12-08 02:47:33', '2023-12-08 02:47:33', 1, 'new', NULL, NULL, NULL, NULL),
(251, 'NAJAM SOHAIL NAROO', 'GUJRANWALA', '15909', 'PK-C-4', 'M/s NAJAM SOHAIL NAROO', 'ST. DR. ASLAM WALI NEAR MASJID SADIQUE AKBAR TOWN GUJRANWALA', 'PK-C-4', '34101-4013809-3', 'CE01', '2577275-9', 'srizwan786110@gmail.com', '0334-0151472', 'No', '', '', '', '', '', 'agree', '2023-12-09 16:58:11', '2023-12-09 16:58:11', 1, 'new', NULL, NULL, NULL, NULL),
(252, 'Syed Aftab Hussain Shah and Khalid Ismail', 'Islamabad', '3315', 'PK-C-2', 'AKB Construction and Allied Services Pvt. Limited', 'H. No.177 Street no.03 RAZZAQ VALLEY  Housing Scheme Kurri Road Pindoriyan Express highway Islamabad', 'PK-C-2', '82103-3135931-5', 'CE01, CE04, CE09, CE10, EE01, EE02,EE04,EE06,', '6577201', 'aftab_bukhari31@yahoo.com', '0300-9845651', 'Yes', '', '', '', '', '', 'agree', '2023-12-11 07:24:35', '2023-12-11 07:24:35', 1, 'new', NULL, NULL, NULL, NULL),
(253, 'Raja Azhar Mehmood', 'Kotli', '8164', 'PK-C-4', 'M\\s RAJA AZHAR MEHMOOD', 'PINDI ROAD OPP COLLEGE, ROAD KOTLI', 'PK-C-4', '81202-3410407-9', 'BC01-BC02-CE01-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE11 (General electrical works only)', '8120234104079', 'rajaazhar4901@gmail.com', '0345-8528490', 'No', '', '', '', '', '', 'agree', '2023-12-13 18:00:50', '2023-12-13 18:00:50', 1, 'new', NULL, NULL, NULL, NULL),
(254, 'CHOUDHRY RAZA ALI', 'MIRPUR', '5341', 'PK-C-3', 'M/S RAZA & SONS', 'BASEMENT MIAN MUHAMMAD HUSSAIN, ALI PLAZA ALLAMA IQBAL ROAD MIRPUR DISTT MIRPUR', 'PK-C-3', '81302-1696233-9', 'BC01 - BC02 - CE01 - CE02 - CE04 - CE08 - CE09 - CE10 - EE07 - EE08', '8130216962339', 'razaali770770770@gmail.com', '0300-9553770', 'Yes', '', '', '', '', '', 'agree', '2023-12-14 12:05:06', '2023-12-14 12:05:06', 1, 'new', NULL, NULL, NULL, NULL),
(255, 'ANSAR JAVED', 'SUDHNUTI', '18223', 'PK-C-4', 'M/s SARDAR ANSAR JAVED', 'Office at HOME CABLE PALLADRI P.O & THE PALLANDRI DISTRICT SUDHNUTI AZAD KASHMIR', 'PK-C-4', '8240123989869', 'BC01 BC02 CE01 CE04 CE08 CE09 CE10 EE01 EE02 EE03 EE04 EE06 EE07 EE08 EE10 EE11 EE11', '8240123989869', 'ansarjavedpec@gmail.com', '03465096032', 'Yes', '', '', '', '', '', 'agree', '2023-12-14 18:37:32', '2023-12-14 18:37:32', 1, 'new', NULL, NULL, NULL, NULL),
(256, 'Muhammad Hashim', 'Mirpur', '4682', 'PK-C-3', 'Hashim Khan &  Co', 'Chichian Road, Fazalabad Khan Colony Mirpur AJK', 'PK-C-3', '4682', 'BC01-BC02-CE01-CE04-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11-EE11', '3740503665411', 'hkc04682@gmail.com', '0344-8900200', 'No', '', '', '', '', '', 'agree', '2023-12-15 11:06:17', '2023-12-15 11:06:17', 1, 'new', NULL, NULL, NULL, NULL),
(257, 'Azmat Zaman Khan', 'Bagh', '22868', 'PK-C-5', 'SHAH ZAMAN KHAN BUILDERS', 'Shah Zaman Khan Plaza opposite Nadra Office By pass Road District Bagh Azad Kashmir', 'PK-C-5', '8210147136189', 'BC01-BC02-CE01-CE04', '8210147136189', 'shahzamankhanbuilders@gmail.com', '03445809810', 'Yes', '', '', '', '', '', 'agree', '2023-12-15 13:56:32', '2023-12-15 13:56:32', 1, 'new', NULL, NULL, NULL, NULL),
(258, 'MUHAMMAD SHAKIL', 'MIRPUR', '15649', 'PK-C-4', 'M/S SHAKIL & CO', 'NEW CITY, TARAPA, MIRPUR', 'PK-C-4', '81302-3983669-1', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10 - EE01 - EE02 - EE03 - EE04 - EE06 - EE07 - EE10 - EE11', '8130239836691', 'mshakeel11431143@gmail.com', '0311-9353786', 'Yes', '', '', '', '', '', 'agree', '2023-12-15 16:45:02', '2023-12-15 16:45:02', 1, 'new', NULL, NULL, NULL, NULL),
(259, 'Syed Sikander Gillani', 'Muzaffarabad', '18217', 'PK-C-4', 'M/S M.S.G CONSTRUCTION COMPANY', 'RAWANI, DISTT. MUZAFFARABAD', 'PK-C-4', '82203-8504120-7', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-EE01-EE02-EE03-EE04-EE06-EE07-EE08-EE10-EE11', 'Z135346', 'sikandergillani99@gmail.com', '0342-0590975', 'Yes', '', '', '', '', '', 'agree', '2023-12-15 19:25:53', '2023-12-15 19:25:53', 1, 'new', NULL, NULL, NULL, NULL),
(260, 'Muhammad Taimoor Younas', 'Bhimber', '84132', 'PK-C-6', 'Muhammad Taimoor Younas / Essence Builders', 'Ward No. 1, Mohallah Rasoolpur Colony Bhimber', 'PK-C-6', '81102-7967969-3', 'BC01 - BC02 - CE01 - CE04 -CE08 - CE09 - CE10', '8110279679693', 'msessencebuilders@gmail.com', '0344-1515270', 'No', '', '', '', '', '', 'agree', '2023-12-16 07:01:59', '2023-12-16 07:01:59', 1, 'new', NULL, NULL, NULL, NULL),
(261, 'WAZIR KHAN', 'MIRPUR', '28288', 'PK-C-5', 'M/S WAZIR KHAN BROTHERS 0007 & CO.', 'OFFICE AT, PURANI CHUNGI NO-4 TEHSIL & DISTT MIRPUR', 'PK-C-5', '81302-2440125-5', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10', '8130224401255', 'wazirkhanandbrothers@gmail.com', '03453984688', 'Yes', '', '', '', '', '', 'agree', '2023-12-16 07:48:51', '2023-12-16 07:48:51', 1, 'new', NULL, NULL, NULL, NULL),
(262, 'Salman Sarwar', 'Poonch', '24478', 'PK-C-3', 'BIN SARWAR CONTRACTING CO', 'H# 288, ST.11 Shahzad Town, Park Road, Islamabad', 'PK-C-3', '8230309769509', 'CE01-CE04-CE09-CE10-EE01-EE04-EE06-EE11', '41777514', 'salman.sarwark@gmail.com', '0341-5198177', 'Yes', '', '', '', '', '', 'agree', '2023-12-17 08:41:36', '2023-12-17 08:41:36', 1, 'new', NULL, NULL, NULL, NULL),
(263, 'SHAH NAWAZ KHAN', 'MIRPUR', '18216', 'PK-C-4', 'M/S MEGA STAR CONSTRUCTION COMPANY', 'FAZALABAD, KHAN COLONY DISTT. MIRPUR', 'PK-C-4', '81302-9129619-7', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10 - EE01 - EE02 - EE03 -  EE04 - EE06 - EE07 - EE08 - EE09 - EE10 - EE11', '8130291296197', 'shahnawazkhan91@icloud.com', '0343-4433341', 'Yes', '', '', '', '', '', 'agree', '2023-12-17 08:49:53', '2023-12-17 08:49:53', 1, 'new', NULL, NULL, NULL, NULL),
(264, 'RASOOL KHAN', 'MIRPUR', '27263', 'PK-C-5', 'M/S SAHIL & CO.', 'CHAICHIAN ROAD, FAZALABAD KHAN COLONY MIRPUR', 'PK-C-5', '81302-1050466-9', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10', '8130210504669', 'mssahilandco@gmail.com', '0300-5698639', 'Yes', '', '', '', '', '', 'agree', '2023-12-17 09:07:45', '2023-12-17 09:07:45', 1, 'new', NULL, NULL, NULL, NULL),
(265, 'EJAZ UL HAQ', 'MIRPUR', '18289', 'PK-C-4', 'MASTER K.H CONSTRUCTIONS', 'HOUSE 153D, STREET 9 SECTOR 2 KHYABAN E SIRSYED RAWALPINDI', 'PK-C-4', '81302-5156208-9', 'BC01 - BC02 - BC04 - CE01 - CE04 - CE08 - CE09 - CE10 - CE11  -EE01 - EE02 - EE03 - EE04 - EE06 - EE07 - EE08 -EE10 - EE11', '8130251562089', 'ejazulhaq7@gmail.com', '03445591150', 'Yes', '', '', '', '', '', 'agree', '2023-12-17 13:19:07', '2023-12-17 13:19:07', 1, 'new', NULL, NULL, NULL, NULL),
(266, 'Kamran Zeb', 'Mirpur, AJK', '20199', 'PK-C-5', 'KAMRAN ZEB', 'HOUSE # 733, SECTOR F-1 DISTRICT, MIRPUR', 'PK-C-5', '8130216819105', 'CE 01, CE 04, CE08, CE 09, CE 10, BC01, BC02', '7080810-6', 'kamranzaib933@gmail.com', '0345-5545445', 'No', '', '', '', '', '', 'agree', '2023-12-18 14:36:00', '2023-12-18 14:36:00', 1, 'new', NULL, NULL, NULL, NULL),
(267, 'Adnan Shabbir', 'BHIMBER AZAD KASHMIR', '11076', 'PK-C-4', 'Elektrika Engineering & Contracting', 'WARD NO 1 SATHABAWL BHIMBER DISTT.BHIMBER', 'PK-C-4', '3310036351975', 'CE01.CE04.CE08.CE09.CE10', '3310036351975', 'adnanshabbir201@gmail.com', '03346591076', 'Yes', '', '', '', '', '', 'agree', '2023-12-19 05:51:25', '2023-12-19 05:51:25', 1, 'new', NULL, NULL, NULL, NULL),
(268, 'Bilal Hussain', 'Bhimber', '14181', 'PK-C-4', 'ROYAL BROTHERS & CONSTRUSTION COMPANY', 'VALLY PLAZA ,MIRPUR CHOWK DISTT.BHIMBER', 'PK-C-4', '8110208366385', 'BC01- BC02 -CE01-CE-04-CE04-CE08-CE08-CE09-CE10', '8110208366385', 'bilal.aslam9321@yahoo.com', '03007169110', 'Yes', '', '', '', '', '', 'agree', '2023-12-19 08:14:23', '2023-12-19 08:14:23', 1, 'new', NULL, NULL, NULL, NULL),
(269, 'Atta ullah', 'Ghotki', '14487', 'PK-C-4', 'Avant Garde Construction & Supplier Company', 'BPO Darwesh Naich Tehsil Mirpur Mathelo District Ghotki', 'PK-C-4', '45104-1234510-3', 'BC01-BC02-CE01-CE02-CE04(Irrigation and Flood Control) - CE04 (Water Retaining Structures)- CE08- CE09- CE10', '1316149-7', 'mathelwi@yahoo.com', '0333-5475282', 'No', '', '', '', '', '', 'agree', '2023-12-19 08:43:01', '2023-12-19 08:43:01', 1, 'new', NULL, NULL, NULL, NULL),
(270, 'Tabassum Bashir', 'Bhimber', '12939', 'PK-C-4', 'Ideal Construction & Developers (Private) Limited', 'Ward No.1 Muhalla Rasool Pur Colony Bhimber A.k', 'PK-C-4', '81102-8784407-7', 'CE01- CE04- CE08-CE09- CE10- EE09', '6458858', 'tabassumbashir004@gmail.com', '0344-5593668', 'Yes', '', '', '', '', '', 'agree', '2023-12-19 10:24:35', '2023-12-19 10:24:35', 1, 'new', NULL, NULL, NULL, NULL),
(271, 'Choudhary Tariq Mehboob and Brothers', 'kotli', '4951', 'PK-C-3', 'Choudhary Tariq Mehboob and Brothers', 'Akbar house Bypass road pang piran kotli', 'PK-C-3', '81202-8558005-5', 'BC01,BC02,CE01,CE02,CE04,CE04,CE08,CE09,CE10', '81202-8558005-5', 'absharmehboob047@gmail.com', '0344-5410917', 'No', '', '', '', '', '', 'agree', '2023-12-19 15:26:07', '2023-12-19 15:26:07', 1, 'new', NULL, NULL, NULL, NULL),
(272, 'Abdur rahman Baig', 'Bagh azad kashmir', '64724', 'PK-C-5', 'BAIG BUILDERS COMPNAY CONSTRUCTION', 'Seekot rawli p/o Harighal bagh ajk', 'PK-C-5', '82101-2187607-7', 'BC01- BC02- CE01- CE04- (Irrigation & Flood Control system) CE04( water Retaining structures) - CE08 - CE09- CE10', '8210121876077', 'Abdurrahmanbaig26@gmail.com', '03452917609', 'Yes', '', '', '', '', '', 'agree', '2023-12-20 06:38:41', '2023-12-20 15:20:00', 0, 'reject', NULL, NULL, NULL, NULL),
(273, 'ISHTIAQ AHMED', 'MIRPUR', '24464', 'PK-C-5', 'M/S ISHTIAQ AHMAD CONTRACTOR', '1,, MERA BARKAY COLONY MIRPUR', 'PK-C-5', '81302-3205998-1', 'BC01 - BC02 - CE01 - CE04 - CE09 - CE10', '8130232059981', 'ishtiaqahmed19701970@gmail.com', '0345-8902528', 'Yes', '', '', '', '', '', 'agree', '2023-12-20 09:38:44', '2023-12-20 09:38:44', 1, 'new', NULL, NULL, NULL, NULL),
(274, 'MIRZA KAMRAN SAID', 'BHIMBER', '83097', 'PK-C-6', 'M/S AL-SAID CONSTRUCTION COMPANY', 'DAK KHANA KHAS, KADHALA, TEHSIL BARNALA, BHIMBER', 'PK-C-6', '81101-6549296-1', 'BC01 - BC02 - CE01 - CE04 - CE09 - CE10', '8110165492961', 'adnan.bhimber@gmail.com', '0345-5455709', 'Yes', '', '', '', '', '', 'agree', '2023-12-20 12:54:44', '2023-12-20 12:54:44', 1, 'new', NULL, NULL, NULL, NULL),
(275, 'Rahim Ullah', 'Mirpur', '16911', 'PK-C-4', 'Rahim Ullah Builders', 'Gorsya jatllan,The & distt,  Mirpur', 'PK-C-4', '8130263803217', 'BC01 BC02 EC01 EC04 EC09 EC10', '8130263803217', '9154@gmail.com', '03197378582', 'No', '', '', '', '', '', 'agree', '2023-12-21 06:28:22', '2023-12-21 06:28:22', 1, 'new', NULL, NULL, NULL, NULL),
(276, 'Shoaib Altaf', 'Sudhnuti', '22936', 'PK-C-5', 'M/S Sohaib Altaf & Co', 'Office at Batran Road Pallandri District Sudhnuti azad Kashmir', 'PK-C-5', '82401-0364042-7', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', '82401-0364042-7', 'shoaibaltaf101@gmail.com', '0345-5972538', 'Yes', '', '', '', '', '', 'agree', '2023-12-21 08:12:10', '2023-12-21 08:12:10', 1, 'new', NULL, NULL, NULL, NULL),
(277, 'Ghulam Farid', 'Mirpur', '83091', 'PK-C-6', 'M/S GHULAM FARID CONTRACTOR', 'Mohallah New Town, Rara P/O Islamgarh Moah Tehsil & District Mirpur', 'PK-C-6', '81302-1649222-3', 'BC01 - BC02 - CE01 - CE04', '8130216492223', 'gh.farid1968@gmail.com', '0344-7456592', 'Yes', '', '', '', '', '', 'agree', '2023-12-21 12:07:20', '2023-12-21 12:07:20', 1, 'new', NULL, NULL, NULL, NULL),
(278, 'Mohsin Hayat', 'Mirpur', '5386', 'PK-C-3', 'M/S FALCON ENTERPRISES', 'GOJRA HOUSE, LALAZAR COLONY, MANDI BAHAUDDIN', 'PK-C-3', '34402-8011353-3', 'BC01 - CE01 - CE04 - CE08 - CE09 - CE10 - ME01 - ME02 - ME05 - ME06 - ME07', '3440280113533', 'imchmuhammadilyas@gmail.com', '0306-8980687', 'Yes', '', '', '', '', '', 'agree', '2023-12-21 12:11:56', '2023-12-21 12:11:56', 1, 'new', NULL, NULL, NULL, NULL),
(279, 'Muhammad Rafi Kayani', 'Haveli', '29387', 'PK-C-5', 'Muhammad Rafi Kayani Construction Company', 'Plot# 43, Main commercial Ghouri Town, Phase 4-C, Islamabad', 'PK-C-5', '8210329552429', 'BC 01, BC 02, CE 01, CE 04, CE 09, CE 10', '8210329552429', 'Kianirafi786@gmail.Com', '03557115555', 'Yes', '', '', '', '', '', 'agree', '2023-12-21 14:38:16', '2023-12-21 14:38:16', 1, 'new', NULL, NULL, NULL, NULL),
(280, 'NAEEM KHURSHID', 'MIRPUR', '16736', 'PK-C-4', 'Z.A.K CONSTRUCTION', '1, PLOT NO 11, OPPOSITE WATER WATER SUPPLY OFFICE, KOTLI ROAD F/3 PART 1 MIRPUR', 'PK-C-4', '81103-1219027-1', 'BC01 - BC02 - CE01 - CE04 - CE09 - CE08', '8110312190271', 'chnaeemkhurshid@gmail.com', '0314 7625237', 'Yes', '', '', '', '', '', 'agree', '2023-12-22 05:21:00', '2023-12-22 05:21:00', 1, 'new', NULL, NULL, NULL, NULL),
(281, 'Abdul Mateen', 'Lakki Marwat', '15175', 'PK-C-5', 'M S K GLOBAL CONSTRUCTION COMPANY', 'HAMEED ABAD SERAI NAURANG, DISTT. LAKKI MARWAT', 'PK-C-5', '11201-8095932-1', 'CE01 to CE10, BC01 to BC03, ME01 to ME06, EE01 to EE10', '1120180959321', 'Adnan_khan6080@yahoo.com', '0308-8008977', 'Yes', '', '', '', '', '', 'agree', '2023-12-22 06:36:01', '2023-12-22 06:36:01', 1, 'new', NULL, NULL, NULL, NULL),
(282, 'Haroon saleem', 'Kotli ak', 'C6/83094', 'PK-C-6', 'MHS CONSTRUCTION', 'Haroon autos near munnaza hospital highway road kotli azad kashmir', 'PK-C-6', '81202-8050216-1', 'BC01,BC02,CE01,CE04,CE08,CE09,CE10', '8120280502161', 'saleemharoon855@gmail.com', '0344-5806563', 'Yes', '', '', '', '', '', 'agree', '2023-12-22 07:47:52', '2023-12-22 07:47:52', 1, 'new', NULL, NULL, NULL, NULL),
(283, 'Rabnawaz', 'Mirpur', '11386', 'PK-C-5', 'RAB NAWAZ CONSTRUCTION CO', 'Abdullah plaza,kotli road sector F5/1 Mirpur', 'PK-C-5', '81102-2570683-1', 'BC01,BC02,CE01,CE04 ,CE09,CE10', '81102-2570683-1', 'rabnawazfkrt@gmail.com', '03225145837', 'Yes', '', '', '', '', '', 'agree', '2023-12-22 09:51:48', '2023-12-22 09:51:48', 1, 'new', NULL, NULL, NULL, NULL);
INSERT INTO `e_registerations` (`id`, `NameOfOwner`, `district`, `PECNo`, `categoryAppliedFor`, `NameOfContractor`, `address`, `categoryPEC`, `CNICNumber`, `speCODE`, `fbrNONTN`, `Email`, `mobNo`, `RegLimted`, `CNICUpload`, `fbrUpload`, `PEC2020`, `FormHUpload`, `PreEnlistmentUpload`, `decleration`, `created_at`, `updated_at`, `status`, `progress`, `description`, `error`, `email_status`, `deleted_at`) VALUES
(284, 'ZIA MEHMOOD', 'MIRPUR', '20322', 'PK-C-5', 'ZIA MEHMOOD BUILDERS & DEVELOPERS', 'SAHANG LOHARAN ,DISTRICT MIRPUR', 'PK-C-5', '81302-3023731-9', 'BC01 - BC02 - CE01 - CE04 - CE09 - CE10', '8130230237319', 'ziamahmood542@gmail.com', '0345-5732190', 'Yes', '', '', '', '', '', 'agree', '2023-12-22 10:42:50', '2023-12-22 10:42:50', 1, 'new', NULL, NULL, NULL, NULL),
(285, 'IKRAM ULLAH SHEIKH', 'MIRPUR', '14575', 'PK-C-4', 'M/S IKRAM ULLAH BUILDERS', 'H#235, SECTOR B-3, MIRPUR', 'PK-C-4', '81302-2262040-5', 'BC01 - BC02 - CE01 - CE04 - CE08 - CE09 - CE10 - EE01 - EE02 - EE03 - EE04 - EE06 - EE07 - EE08 -EE10 - EE11', '8130222620405', 'moon69pk@gmail.com', '0345-8829888', 'Yes', '', '', '', '', '', 'agree', '2023-12-23 06:27:36', '2023-12-23 06:27:36', 1, 'new', NULL, NULL, NULL, NULL),
(286, 'RAJA UMAR KHATAB & BROTHERS', 'Kotli', '13581', 'PK-C-4', 'RAJA UMAR KHATAB & BROTHERS', 'VILL ANOHI SARHOTA..P O OANJERA TEH& DIST KOTLI', 'PK-C-4', '8120272888107', 'BC01 BC02 CE01 CE 04 CE 08 CE 09 CE10', '8120272888107', 'sgsgsgsh594@gmail.com', '03455727926', 'No', '', '', '', '', '', 'agree', '2023-12-23 17:11:30', '2023-12-23 17:11:30', 1, 'new', NULL, NULL, NULL, NULL),
(287, 'Shair khan', 'Lahore', '1731', 'PK-C-1', 'Firm', 'G T road rana town khan plaza near lasani flour Mills shahdara lahore', 'PK-C-1', '35401-4469408-5', 'CE 02', '41941837', 'shairkhanbrothers665@gmail.com', '0301 4210778', 'Yes', '', '', '', '', '', 'agree', '2023-12-24 17:32:43', '2023-12-24 17:32:43', 1, 'new', NULL, NULL, NULL, NULL),
(288, 'Noman Akbar', 'Kotli', '57157', 'PK-C-6', 'M/S NC CONSTRUCTION COMPANY', 'Moh:Haveli Chowki Mong Tehsil & District KotliAK,', 'PK-C-6', '81202-5429496-5', 'BC01-BC02-CE01-CE04-CE04-CE09-CE-10', '81202-5429496-5', 'noumanakbar273@gmail.com', '0302-8165555', 'Yes', '', '', '', '', '', 'agree', '2023-12-25 04:29:30', '2023-12-25 04:29:30', 1, 'new', NULL, NULL, NULL, NULL),
(289, 'Mohsin Ali khan', 'poonch', '17084', 'PK-C-4', 'M/S MMR construction & Co', 'get car western by pass road near saddar police station muzaffarabad', 'PK-C-4', '82203-1566376-7', 'bco1 bc02 ce01 ce04 ce09 ce10 ee01 ee02', '82203-1566376-7', 'ziaaleem786@gmail.com', '0300-5236072', 'Yes', '', '', '', '', '', 'agree', '2023-12-25 07:08:43', '2023-12-25 07:08:43', 1, 'new', NULL, NULL, NULL, NULL),
(290, 'M/S ASGHAR IQBAL MUGHAL', 'Kotli', '17748', 'PK-C-4', 'M/S ASGHAR IQBAL MUGHAL', 'DHARA  KHUIRATTA DIST KOTLI', 'PK-C-4', '8120264797375', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10-Ee09', '8120264797375', 'asghariqbalmughal5@gmail.com', '0318500009', 'Yes', '', '', '', '', '', 'agree', '2023-12-25 10:02:12', '2023-12-25 10:02:12', 1, 'new', NULL, NULL, NULL, NULL),
(291, 'Zafar Iqbal', 'Kotli', '4960', 'PK-C-3', 'M/s Zafar Iqbal Builders & Constructors', 'Near Sikandar, Stadium & Waqas Petroleum Bypass Rass Road Kotli', 'PK-C-3', '38301-9815039-1', 'BC01, BC02, CE01, CE04', '3830198150391', 'zafariqbal13021975@gmail.com', '0345-5834291', 'No', '', '', '', '', '', 'agree', '2023-12-25 11:40:35', '2023-12-25 11:40:35', 1, 'new', NULL, NULL, NULL, NULL),
(292, 'Muhammad Qasim', 'Shangla', '29030', 'PK-C-5', 'MQ BUILDERS AND ENGINEERS', 'Shanglaa2z pipe and sanitary store Near swat cinema Madyan Road Mingora swat', 'PK-C-5', '15502-6358136-9', 'BC01 - BC02 - CE01 - CE04 (Irrigation Only) - CE09 - CEI0', 'A624246-6', 'mqbandengg@gmail.com', '0347-9711006', 'Yes', '', '', '', '', '', 'agree', '2023-12-26 15:35:58', '2023-12-26 15:35:58', 1, 'new', NULL, NULL, NULL, NULL),
(293, 'TOUQEER AHMED', 'Kotli', '80415', 'PK-C-6', 'BUILDUP CONSTRUCTION SERVICES PRIVATE LIMITED', 'Flat No Block No 37-A Sector G-9/2 Islamabad', 'PK-C-6', '8120274965611', 'BC01-BC2-BC04-CE01-CE04-CE08-CE10-CE11', '8120274965611', 'Ashariqbal133@gmail.com', '0331-8000907', 'Yes', '', '', '', '', '', 'agree', '2023-12-27 04:18:57', '2023-12-27 04:18:57', 1, 'new', NULL, NULL, NULL, NULL),
(294, 'Tariq Pervaiz', 'Faisalabad', '203', 'PK-C-A', 'M/S Highways Construction', '9-D Galaxy Madina Plaza behind center Point, Kohinoor Jaranwala Road Faisalabad', 'PK-C-A', '33100-5635237-9', 'CE01,CE02,CE04,CE11', '0678260-4', 'highway.construction@yahoo.com', '0300-8658957', 'No', '', '', '', '', '', 'agree', '2023-12-28 04:45:24', '2023-12-28 04:45:24', 1, 'new', NULL, NULL, NULL, NULL),
(295, 'Engr.Eijaz Ahmed Khan', 'bagh', '17288', 'PK-C-4', 'MUSA ENGINEERING SERVICES', 'OFFICE NO.B-1,(BASEMENT),MALIK COMPLEX,JINNAH AVENUE BLUE AREA ISLAMABD.', 'PK-C-4', '82101-3686921-7', 'CE01,CE04,CE09,CE10,BC01,BC02,EE01,EE02,EE03,EE04,EE05,EE06,EE07,EE08,EE10,EE11,EE11(Solar)', '5049785-2', 'mespk786@gmail.com', '0332-5712303', 'Yes', '', '', '', '', '', 'agree', '2023-12-28 09:39:28', '2023-12-28 09:39:28', 1, 'new', NULL, NULL, NULL, NULL),
(296, 'Shehzad Zafar Khan', 'Mianwali', '1008', 'PK-C-3', 'M/S Zafar Iqbal Khan & Co', 'Malik Muzaffar street Muslim Bazar Mianwali', 'PK-C-3', '3520176130813', '4', '2144230-4', 'zafariqbalkhanco@gmail.com', '03000250013', 'No', '', '', '', '', '', 'agree', '2024-03-10 13:32:23', '2024-03-10 13:32:23', 1, 'new', NULL, NULL, NULL, NULL),
(297, 'CELMORE TECHNOLOGIES  PVT LTD', 'Rawalpindi', '1508', 'PK-C-2', 'CELMORE TECHNOLOGIES (PVT) LTD', 'NAQEEB PLAZA, PLOT NO 3, TULIP ROAD, SECTOR A, DHA PHASE II, RAWALPINDI', 'PK-C-1', '37301-4787023-3', 'EE02, EE03, EE07, EE08, EE09, EE11', '4016041-6', 'info@celmoretech.com', '0333-1589766', 'Yes', '', '', '', '', '', 'agree', '2024-03-22 07:05:20', '2024-03-22 07:05:20', 1, 'new', NULL, NULL, NULL, NULL),
(298, 'Shahid Gulzar', 'Punjab', '522', 'PK-C-A', 'STZ Engineers (Ultimate Solution in Technological Zones)', 'Suit # 2-B 2nd Floor Kiran, Plaza Civic Centre Model Town Extension, Lahore.', 'PK-C-A', '36402-9657129-7', 'CE10, EE-11, EE01, EE02, EE05, EE06, EE11', '2635690-0', 'info@stzengineers.com', '0321-4474467', 'Yes', '', '', '', '', '', 'agree', '2024-03-25 10:20:09', '2024-03-25 10:20:09', 1, 'new', NULL, NULL, NULL, NULL),
(299, 'Wajahat Hussain', 'Peshawar', '1788', 'PK-C-1', 'Sitara Engineering & Construction Co', 'Jabeen Plaza Shuba Bazar', 'PK-C-1', '17301-5623504-9', 'CE01,CE04,CE09,CE10,EE01,EE02,EE03,EE04,EE05,EE06,EE07,EE08,EE11,ME01,ME02,ME03,ME04,ME05,ME06,ME07', '4742553', 'misty_capricon@yahoo.com', '03444588885', 'Yes', '', '', '', '', '', 'agree', '2024-03-26 09:28:06', '2024-03-26 09:28:06', 1, 'new', NULL, NULL, NULL, NULL),
(300, 'Engr Abid Pervez Malik', 'Federal', 'CA-291', 'PK-C-A', 'Abid Brothers Contractors Pvt Ltd', 'Office No. 2, Second Floor, Super Trade Center, Near NBP Bank, F-10 Markaz, Islamabad', 'PK-C-A', '61101-7130705-7', 'BC01-03,CE01,02,04,08,09,10,11-EE01-07-EE09-11-ME01-07', '1319913', 'abidbrotherscontractors@yahoo.com', '0321-5777775', 'No', '', '', '', '', '', 'agree', '2024-03-27 07:21:18', '2024-03-27 07:21:18', 1, 'new', NULL, NULL, NULL, NULL),
(301, 'MEHRAN ALI', 'MIRPUR', '85821', 'PK-C-6', 'M/S CH MEHRAN ALI', 'KHASRA NO 202 DK, SAFOO PIRWADAI RAWALPINDI', 'PK-C-6', '81302-5718954-3', 'BC01 - BC02 - BC04 - C6(11) - CE01 - CE04 - CE08 - CE09 - CE10 - CE11', '8130257189543', 'mschmehranali@gmail.com', '0345-7786701', 'Yes', '', '', '', '', '', 'agree', '2024-03-28 08:47:03', '2024-03-28 08:47:03', 1, 'new', NULL, NULL, NULL, NULL),
(302, 'MUHAMMAD SAFEER', 'MIRPUR', '83086', 'PK-C-6', 'M/S MUHAMMAD SAFEER', 'C/O MUHAMMAD SAFEER SITRA CLOTH NEAR GOVT BOYS COLLEGE MAIN BAZAR CHAKSWARI MIRPUR', 'PK-C-6', '81302-1985423-1', 'BC01 - BC02 - CE01 - CE04 - CE08 -CE09 - CE10', '8130219854231', 'msmuhammadsafeer300@gmail.com', '0345-9731608', 'Yes', '', '', '', '', '', 'agree', '2024-03-28 09:11:00', '2024-03-28 09:11:00', 1, 'new', NULL, NULL, NULL, NULL),
(303, 'Mohsin Tariq', 'GUJRAT', '61091', 'PK-C-B', 'T.M ENGINEERING SERVICES', '01,MAIN STREET, LALAZAR MARKET, BHIMBER ROAD, GUJRAT, PAKISTAN', 'PK-C-B', '34201-9443079-7', 'BC01-BC02-CE01-CE04-CE08-CE09-CE10', 'B566037-0', 'mohsinengr7@gmail.com', '07477892092', 'No', '', '', '', '', '', 'agree', '2024-03-31 05:49:56', '2024-03-31 05:49:56', 1, 'new', NULL, NULL, NULL, NULL),
(304, 'Waseem Ahmed (CEO)', 'Lahore', '4662', 'PK-C-3', 'SPS PVT LIMITED', 'Suit No. 501-C 5th Floor City Towers Main Boulevard Gulberg II  Lahore', 'PK-C-3', '35202-2918051-9', 'EE-01, EE02, EE-04, EE-06, EE-08, EE-10, EE-11 (solar)', '3634581-4', 'info@sps.com.pk', '0321-4464920', 'Yes', '', '', '', '', '', 'agree', '2024-04-05 18:29:17', '2024-04-05 18:29:17', 1, 'new', NULL, NULL, NULL, NULL),
(305, 'Naseem Ahmad Chughtai', 'Federal Capital Territory', '16750', 'PK-C-4', 'Media Electronics', '#114, Street 40, G-6/1-3, Islamabad', 'PK-C-4', '37405-0211533-5', 'EE01, EE02,EE03, EE04, EE06, EE07, EE08, EE09, EE10, EE11, ME01, ME02, ME04. ME05, ME06, ME07', '2524434-5', 'chughtaina@gmail.com', '0321-5184127', 'Yes', '', '', '', '', '', 'agree', '2024-04-08 07:42:17', '2024-04-08 07:42:17', 1, 'new', NULL, NULL, NULL, NULL),
(306, 'Ch. Muhammad Ilyas', 'Bhimber', '6827', 'PK-C-4', 'M/s CH. MUHAMMAD ILYAS', 'BLOCK# 8 FLAT# G10 DHA2 DEFANCE RESIDENCIA NEAR LIGNUM TOWER DHA2', 'PK-C-4', '6110124360297', 'CE01 EE03 CE08 CE10 CE09 CE04(v) EE04 EE11(vi)', '6110124360297', 'b.hussain.szabist@gmail.com', '0345-4839296', 'No', '', '', '', '', '', 'agree', '2024-04-15 06:48:09', '2024-04-15 06:48:09', 1, 'new', NULL, NULL, NULL, NULL),
(307, 'Altaf Ahmed', 'Mianwali', 'CA-549', 'PK-C-A', 'M/S Bashir Ahmed & Company', 'E/2 Near Rabi Center Mianwali.', 'PK-C-A', '38302-1150677-9', 'CE01, CE02,CE04(vii),CE04(v),CE04(vii),CE04(v),CE09,CE10,EE03,EE04,EE06,ME01,ME02', '33877416', 'Haseeb07890@gmail.com', '0079665181', 'Yes', '', '', '', '', '', 'agree', '2024-04-27 05:12:13', '2024-04-27 05:12:13', 1, 'new', NULL, NULL, NULL, NULL),
(308, 'Muhammad Azimullah Malik', 'Islamabad', '594', 'PK-C-2', 'Adnan Builders', '32 MNDR F-10/4 Islamabad', 'PK-C-2', '6110108277837', 'CE01 CE02 CE04 CE09 CE10 ME01 ME02 ME03 EE01 EE02 EE03 EE04 EE05 EE06', '0997321-4', 'adnanbuilders@hotmail.com', '03218315552', 'No', '', '', '', '', '', 'agree', '2024-05-08 05:06:15', '2024-05-08 05:06:15', 1, 'new', NULL, NULL, NULL, NULL),
(309, 'Wajid Ali', 'Swat', '569487', 'PK-C-4', 'M/S MINGORA CONSTRUCTION COMPANY', 'Saidu sharif road makanbagh mingora swat', 'PK-C-4', '15602-3690384-1', 'CE01, CE04, CE09, CE10, EE01, EE04, EE06, EE11(solar), EE 11( general electric works)', '1560236903841', 'mingoraconstructionco@gmail.com', '0345-9450007', 'No', '', '', '', '', '', 'agree', '2024-05-13 21:02:45', '2024-05-13 21:02:45', 1, 'new', NULL, NULL, NULL, NULL),
(310, 'Allah Akbar', 'Lahore', '4151234123412341', 'PK-C-2', '12341234213421342134', 'fdsf qwer2341fewq rqwerqerqwerqwevr', 'PK-C-A', '23412-3412342-1', '1234123421341234', '1234123412342134', '1234231423@14312dfsssa.com', '4123-4123412', 'Yes', '', '', '', '', '', 'agree', '2024-05-15 13:15:52', '2024-05-15 13:15:52', 1, 'new', NULL, NULL, NULL, NULL),
(311, 'qwerqwe', 'rqwerqw', '2123434234234234', 'PK-C-B', '12341234213421342134', 'asdfsadfqwerqwerq23412314234', 'PK-C-3', '24123-4123421-3', '1234123421341234', '1234123412342134', 'melodramachuhiha@outlook.com', '4123-1341234', 'Yes', '', '', '', '', '', 'agree', '2024-05-15 13:26:35', '2024-05-15 13:26:35', 1, 'new', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint UNSIGNED NOT NULL,
  `registration_id` bigint UNSIGNED NOT NULL,
  `fee_date` date NOT NULL DEFAULT '2024-07-01',
  `amount` decimal(10,2) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `registration_id`, `fee_date`, `amount`, `paid_amount`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-07-01', 6000.00, 0.00, 'unpaid', NULL, '2024-07-20 16:53:20', '2024-07-20 16:53:20'),
(2, 2, '2024-07-01', 5500.00, 0.00, 'unpaid', NULL, '2024-07-20 16:53:20', '2024-07-20 16:53:20'),
(3, 3, '2024-07-01', 6000.00, 0.00, 'unpaid', NULL, '2024-07-20 16:53:20', '2024-07-20 16:53:20'),
(4, 1, '2024-06-01', 4000.00, 3000.00, 'partial-payment', NULL, '2024-07-20 16:53:35', '2024-07-21 03:20:19'),
(5, 2, '2024-06-01', 6000.00, 6000.00, 'paid', NULL, '2024-07-20 16:53:35', '2024-07-21 03:19:03'),
(6, 3, '2024-06-01', 6000.00, 6000.00, 'paid', NULL, '2024-07-20 16:53:35', '2024-07-21 02:35:08'),
(7, 1, '2024-05-01', 6000.00, 0.00, 'unpaid', NULL, '2024-07-21 03:35:05', '2024-07-21 03:35:05'),
(8, 2, '2024-05-01', 5500.00, 0.00, 'unpaid', NULL, '2024-07-21 03:35:05', '2024-07-21 03:35:05'),
(9, 3, '2024-05-01', 6000.00, 0.00, 'unpaid', NULL, '2024-07-21 03:35:05', '2024-07-21 03:35:05'),
(10, 1, '2024-08-01', 6000.00, 0.00, 'unpaid', NULL, '2024-07-21 04:17:23', '2024-07-21 04:17:23'),
(11, 2, '2024-08-01', 5500.00, 0.00, 'unpaid', NULL, '2024-07-21 04:17:23', '2024-07-21 04:17:23'),
(12, 3, '2024-08-01', 6000.00, 0.00, 'unpaid', NULL, '2024-07-21 04:17:23', '2024-07-21 04:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` bigint UNSIGNED NOT NULL,
  `floor_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rooms` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `floor_name`, `description`, `total_rooms`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ground Floor - Floor A', 'Some description', 22, '2024-07-20 04:06:59', '2024-07-20 04:09:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallaries`
--

CREATE TABLE `gallaries` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallaries`
--

INSERT INTO `gallaries` (`id`, `title`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'dfsaasd', '<p>dsafads</p>', 0, '2022-07-27 03:01:18', NULL, NULL, NULL),
(2, 'test', '<p>test</p>', 0, '2022-08-11 21:44:57', NULL, '2022-08-11 21:44:57', NULL),
(3, 'Gallery', '<p>Gallery</p>', 1, '2022-08-13 06:52:48', '2022-08-11 21:40:23', '2022-08-13 06:52:48', NULL),
(4, 'sddsa', NULL, 0, '2022-08-12 08:56:42', '2022-08-12 08:56:39', '2022-08-12 08:56:42', NULL),
(5, 'Bagh', '<p>Bagh</p>', 1, '2022-08-15 13:34:25', '2022-08-13 06:55:03', '2022-08-15 13:34:25', 12),
(6, 'Haveli', NULL, 1, '2022-08-15 13:34:29', '2022-08-13 07:29:32', '2022-08-15 13:34:29', 12),
(7, 'MuzafarAbad', NULL, 1, '2022-08-15 13:34:33', '2022-08-13 09:48:34', '2022-08-15 13:34:33', 12),
(8, 'Bagh', NULL, 0, '2022-08-15 13:36:44', '2022-08-15 13:35:55', '2022-08-15 13:36:44', 12),
(9, 'Bagh', NULL, 1, NULL, '2022-08-15 13:37:22', '2022-08-15 13:37:22', 12),
(10, 'Haveli', NULL, 1, NULL, '2022-08-15 13:38:33', '2022-08-15 13:38:33', 12),
(11, 'MuzafarAbad', NULL, 1, NULL, '2022-08-15 13:39:22', '2022-08-15 13:39:22', 12),
(12, 'Neelum', NULL, 1, NULL, '2022-08-15 13:40:07', '2022-08-15 13:40:07', 12),
(13, 'Sadhanoti', NULL, 1, NULL, '2022-08-15 13:41:23', '2022-08-15 13:41:23', 12),
(14, 'Kotli', NULL, 1, NULL, '2022-08-15 13:42:31', '2022-08-15 13:42:31', 13),
(15, 'Bhimber', NULL, 1, NULL, '2022-08-15 13:43:31', '2022-08-15 13:43:31', 13),
(16, 'Mirpur', NULL, 1, NULL, '2022-08-15 13:44:25', '2022-08-15 13:44:25', 13);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_hospital` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `district_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `category`, `number_of_hospital`, `link`, `deleted_at`, `created_at`, `updated_at`, `status`, `category_id`, `name`, `lat`, `lng`, `slug`, `phone`, `email`, `address`, `district_id`) VALUES
(7, NULL, NULL, NULL, NULL, '2022-08-10 02:51:53', '2022-08-10 23:53:08', 1, 4, 'Kth Hospital', '33.9973067941825', '71.48588283863845', 'kth-hospital', '0919224400', 'kth@kth.com', 'University Rd, Rahat Abad, Peshawar, Khyber', 2);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `category_id`, `type`, `link`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Home', NULL, 'quick', 'https://cwd.ajk.gov.pk/', 1, NULL, '2022-08-10 22:16:39', '2022-08-25 09:08:43'),
(2, 'Team', NULL, 'quick', 'https://cwd.ajk.gov.pk/teams', 1, NULL, '2022-08-10 22:20:02', '2022-08-25 09:08:52'),
(3, 'Events', NULL, 'quick', 'https://cwd.ajk.gov.pk/news', 1, NULL, '2022-08-10 22:20:19', '2022-08-25 09:09:00'),
(4, 'Downloads', NULL, 'quick', NULL, 1, '2022-08-15 02:57:36', '2022-08-10 22:20:40', '2022-08-15 02:57:36'),
(5, 'About', NULL, 'quick', 'https://cwd.ajk.gov.pk/pages/about-us', 1, NULL, '2022-08-10 22:20:52', '2022-08-25 09:09:08'),
(6, 'Home', NULL, 'important', NULL, 1, NULL, '2022-08-10 22:21:07', '2022-08-10 22:21:20'),
(7, 'Why Choose', NULL, 'important', NULL, 1, NULL, '2022-08-10 22:21:29', '2022-08-10 22:21:29'),
(8, 'Why Us?', NULL, 'important', NULL, 1, NULL, '2022-08-10 22:21:42', '2022-08-10 22:21:42'),
(9, 'Clients', NULL, 'important', NULL, 1, NULL, '2022-08-10 22:21:53', '2022-08-10 22:21:53'),
(10, 'Home', NULL, 'footer', 'https://cwd.ajk.gov.pk/', 1, NULL, '2022-08-11 00:10:17', '2022-08-25 09:09:30'),
(11, 'About', NULL, 'footer', 'https://cwd.ajk.gov.pk/pages/about-us', 1, NULL, '2022-08-11 00:10:30', '2022-08-25 09:09:40'),
(12, 'Events', NULL, 'footer', 'https://cwd.ajk.gov.pk/news', 1, NULL, '2022-08-11 00:10:45', '2022-08-25 09:09:57'),
(13, 'Downloads', NULL, 'footer', NULL, 1, '2022-08-15 02:59:13', '2022-08-11 00:11:03', '2022-08-15 02:59:13'),
(14, NULL, NULL, 'quick', NULL, 0, '2022-08-12 08:48:58', '2022-08-12 08:48:53', '2022-08-12 08:48:58'),
(15, 'Notice Inviting Tender- NIT', NULL, 'initiative', 'https://cwd.ajk.gov.pk/public/tenders/', 1, NULL, '2022-08-12 14:12:12', '2023-01-16 11:08:04'),
(16, 'E-Registration', NULL, 'initiative', 'https://cwd.ajk.gov.pk/applyonline', 1, NULL, '2022-08-12 14:12:39', '2022-08-25 09:10:09'),
(17, 'Contractor Login', NULL, 'initiative', 'https://cwdtenders.ajk.gov.pk/', 1, NULL, '2022-08-12 14:15:32', '2023-01-17 05:42:03'),
(18, 'Official Login', NULL, 'initiative', 'https://cwdtenders.ajk.gov.pk/of_ajk.php', 1, NULL, '2022-08-12 14:15:49', '2023-01-17 05:42:25'),
(19, 'Approved Contractors List', NULL, 'initiative', NULL, 1, NULL, '2022-08-12 14:16:07', '2022-08-12 14:39:00'),
(20, 'Debared Contractors List', NULL, 'initiative', NULL, 1, NULL, '2022-08-12 14:16:36', '2022-08-12 14:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'AhmedAliraqi\\LaravelMediaUploader\\Entities\\TemporaryFile', 545, 'ed26e86b-e852-49a1-95b1-b8adc8c4c2a8', 'cnic', 'media-libraryy9bcHp', '1721459600.png', 'image/png', 'media', 'media', 575324, '[]', '{\"type\":\"image\",\"width\":563,\"height\":745,\"ratio\":\"0.756\",\"status\":\"processing\",\"progress\":100}', '{\"thumb\":true,\"small\":true,\"medium\":true,\"large\":true}', '[]', 1, '2024-07-20 07:13:20', '2024-07-20 07:13:21'),
(2, 'AhmedAliraqi\\LaravelMediaUploader\\Entities\\TemporaryFile', 546, 'e4e1236a-e7e8-47c9-9127-d6eed3a9f010', 'image', 'media-librarybYEJGk', '1721459603.png', 'image/png', 'media', 'media', 575324, '[]', '{\"type\":\"image\",\"width\":563,\"height\":745,\"ratio\":\"0.756\",\"status\":\"processing\",\"progress\":100}', '{\"thumb\":true,\"small\":true,\"medium\":true,\"large\":true}', '[]', 1, '2024-07-20 07:13:23', '2024-07-20 07:13:24'),
(3, 'App\\Models\\Registration', 3, 'c874da18-b5e8-4c5b-9a27-f4c0c3b04852', 'cnic', 'media-librarySxAcm9', '1721459623.png', 'image/png', 'media', 'media', 575324, '[]', '{\"type\":\"image\",\"width\":563,\"height\":745,\"ratio\":\"0.756\",\"status\":\"processing\",\"progress\":100}', '{\"thumb\":true,\"small\":true,\"medium\":true,\"large\":true}', '[]', 1, '2024-07-20 07:13:43', '2024-07-20 07:13:49'),
(4, 'App\\Models\\Registration', 3, 'e7d1b0bd-55d9-4581-9c06-3e290a5d8549', 'image', 'media-libraryK2LDyH', '1721459626.png', 'image/png', 'media', 'media', 575324, '[]', '{\"type\":\"image\",\"width\":563,\"height\":745,\"ratio\":\"0.756\",\"status\":\"processing\",\"progress\":100}', '{\"thumb\":true,\"small\":true,\"medium\":true,\"large\":true}', '[]', 1, '2024-07-20 07:13:46', '2024-07-20 07:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(2, 'role', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(3, 'setting', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(4, 'slide', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(5, 'Notification', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(6, 'Download', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(7, 'Team', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(8, 'Project', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(9, 'Alert', '2022-07-06 20:56:31', '2022-07-06 20:56:31'),
(11, 'news', '2022-07-27 01:51:08', '2022-07-27 01:51:08'),
(12, 'gallary', '2022-07-27 02:45:35', '2022-07-27 02:45:35'),
(13, 'link', '2022-08-03 00:50:44', '2022-08-03 00:50:44'),
(14, 'page', '2022-08-04 00:50:02', '2022-08-04 00:50:02'),
(15, 'category', '2022-08-04 23:58:48', '2022-08-04 23:58:48'),
(16, 'achievement', '2022-08-09 07:11:32', '2022-08-09 07:11:32'),
(17, 'e_registeration', '2022-08-13 02:45:09', '2022-08-13 02:45:09'),
(18, 'telephone', '2022-08-13 02:45:09', '2022-08-13 02:45:09'),
(19, 'tender', '2022-08-13 10:20:12', '2022-08-13 10:20:12'),
(20, 'Road Status', '2022-08-31 16:30:54', '2022-08-31 16:30:54'),
(22, 'Road Info', '2024-05-16 07:12:56', '2024-05-16 07:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_07_06_045742_create_permission_tables', 2),
(5, '2022_01_17_121437_create_menus_table', 3),
(6, '2022_01_17_122356_add_menu_id_to_users_table', 4),
(7, '2022_07_13_030105_create_settings_table', 5),
(11, '2022_07_18_060348_create_media_table', 8),
(9, '2022_07_13_060304_add_status_to_settings', 6),
(10, '2022_07_14_043913_add_contentsidebar_class_to_settings', 7),
(12, '2020_06_03_131044_create_temporary_files_table', 9),
(15, '2022_07_19_054509_create_notifications_table', 11),
(16, '2022_07_20_024916_create_downloads_table', 12),
(17, '2022_07_20_025014_create_teams_table', 13),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 14),
(19, '2022_07_25_084735_create_alerts_table', 14),
(20, '2022_07_25_090807_create_hospitals_table', 14),
(21, '2022_07_25_091149_create_projects_table', 14),
(22, '2022_07_26_101537_add_status_to_projects', 15),
(23, '2022_07_26_101629_add_status_to_hospitals', 15),
(24, '2022_07_26_110225_add_status_to_alerts', 16),
(25, '2022_07_27_064820_create_news_table', 17),
(26, '2022_07_25_073541_create_gallaries_table', 18),
(31, '2022_08_01_044703_add_ur_title_to_slides', 19),
(30, '2022_07_18_084437_create_slides_table', 19),
(32, '2022_08_02_002639_add_status_to_slides', 20),
(48, '2022_08_03_052044_create_links_table', 29),
(34, '2022_08_03_053418_add_address_to_settings', 21),
(35, '2022_08_03_111542_add_slug_to_news', 19),
(36, '2022_08_03_111542_add_slug_to_news', 19),
(37, '2022_08_03_111647_add_slug_to_projects', 22),
(38, '2022_08_03_111737_create_newstypes_table', 22),
(39, '2022_08_03_111928_create_teamtypes_table', 22),
(40, '2022_08_04_054202_create_pages_table', 23),
(41, '2022_08_04_061822_add_loadwithlink_to_pages', 24),
(42, '2022_08_05_042609_create_categories_table', 25),
(43, '2022_08_05_055231_add_category_id_to_news', 26),
(45, '2022_08_05_064318_add_banner_title_to_pages', 27),
(46, '2022_08_09_120945_create_achievements_table', 28),
(47, '2022_08_10_073022_add_category_id_to_hospitals', 28),
(49, '2022_08_10_150529_add_slug_to_categories', 28),
(50, '2022_08_11_044153_add_districts_id_to_hospitals', 30),
(51, '2022_08_11_095047_add_category_id_to_downloads', 31),
(54, '2022_08_12_045840_create_weather_table', 32),
(55, '2022_08_12_122440_add_client_name_to_projects', 33),
(56, '2022_08_04_072153_create_e_registerations_table', 34),
(57, '2022_08_04_084741_create_enlisted_departments_table', 34),
(58, '2022_08_06_043126_add_status_to_e_registerations', 34),
(59, '2022_07_29_112426_create_telephones_table', 35),
(60, '2022_08_13_080125_add_category_id_to_gallaries', 36),
(61, '2022_08_13_142810_add_district_to_telephones', 37),
(62, '2022_08_13_150750_create_tenders_table', 38),
(63, '2022_08_13_213607_add_slug_to_tenders', 39),
(64, '2022_08_30_055311_create_roads_table', 40),
(65, '2024_05_16_121721_create_road_infos_table', 41),
(66, '2024_07_20_084525_create_floors_table', 42),
(67, '2024_07_20_091840_create_rooms_table', 43),
(68, '2024_07_20_091958_add_soft_to_floor', 43),
(69, '2024_07_20_093930_create_registrations_table', 44),
(70, '2024_07_20_201500_create_fees_table', 45),
(72, '2024_07_21_075804_create_transactions_table', 46),
(73, '2024_07_21_100938_create_expense_heads_table', 47),
(74, '2024_07_21_112010_create_expenses_table', 48),
(75, '2024_07_21_120017_create_staff_table', 49);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `link`, `short_description`, `status`, `description`, `deleted_at`, `created_at`, `updated_at`, `slug`, `category_id`) VALUES
(3, 'Final Comparative Report For Covid1-9 Response Items', NULL, 'Final comparative report for covid19 response items', 1, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.</p><p>And a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><ul><li>Nullam at erat quis eros finibus aliquam.</li><li>Cras nec risus lobortis, auctor ipsum quis, vulputate purus.</li><li>Morbi id tellus non arcu pulvinar gravida.</li><li>Nulla bibendum odio non felis pulvinar interdum.</li><li>Aliquam condimentum mauris et velit tempus dictum.</li><li>Curabitur non libero eu lectus facilisis aliquet ac maximus justo.</li></ul><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '2022-08-15 01:20:16', '2022-08-02 06:09:45', '2022-08-15 01:20:16', 'final-comparative-report-for-covid19-response-items2', 14),
(4, 'Lights you have never seen', NULL, 'C&W Department, State of AJ&K', 1, '<p>State of the art LED Floodlights are being installed Installed in the Muzaffarabad Cricket Stadium.</p>', '2022-09-10 16:51:19', '2022-08-02 06:10:33', '2022-09-10 16:51:19', 'final-comparative-report-for-covid19-response-items', 14),
(5, 'C&W Department, State of AJ&K', NULL, 'C&W Department, State of AJ&K', 1, '<p class=\"ql-align-justify\">Muzaffarabad: PM AJ&amp;K Sardar Abdul Qayuum Niazi addresses to inaugural ceremony of Martyrdom on Feb 5, 2022.</p><p><br></p><p><br></p>', '2022-09-10 16:51:25', '2022-08-02 06:11:30', '2022-09-10 16:51:25', 'final-comparative-report-for-covid19-response-items3', 14),
(7, 'E-Systems', NULL, 'C&W Department, State of AJ&K', 1, '<p>C&amp;W Department, State of AJ&amp;K will soon launch the ICT system.</p>', NULL, '2022-08-15 01:45:38', '2022-08-15 07:02:38', 'c-w-department-aj-k', 14),
(8, 'Inauguration of e-Tendering System in C&W/PP&H department', NULL, 'Inauguration of e-Tendering System', 1, NULL, '2022-12-21 16:04:13', '2022-09-10 16:15:44', '2022-12-21 16:04:13', 'flood-2022', 14),
(9, 'Departmental Briefing with Honorable PM', NULL, NULL, 0, NULL, '2022-12-23 16:36:00', '2022-09-14 18:14:36', '2022-12-23 16:36:00', 'departmental-briefing-with-honorable-pm', 2),
(10, 'Departmental Brief with Honorable PM', NULL, NULL, 1, NULL, NULL, '2022-09-14 18:18:15', '2022-09-14 18:18:15', 'departmental-brief-with-honorable-pm', 2),
(11, 'Inauguration by Minster C&W', NULL, NULL, 1, NULL, NULL, '2022-09-14 18:19:14', '2022-12-21 16:04:51', 'departmental-briefing-with-honorable-pm-2', 2),
(12, 'NIT District Poonch', NULL, NULL, 1, NULL, '2022-09-15 02:31:32', '2022-09-15 02:30:22', '2022-09-15 02:31:32', 'nit-district-poonch', 14),
(13, 'e-Tendering inauguration Ceremony', NULL, NULL, 1, NULL, NULL, '2022-12-23 16:38:33', '2022-12-23 16:38:33', 'e-tendering-inauguration-ceremony', 2),
(14, 'Secretary C&W visit to Mirpur Division', NULL, NULL, 1, NULL, NULL, '2022-12-27 15:27:01', '2022-12-27 15:27:36', 'secretary-c-w-visit-to-mirpur-division', 2),
(15, 'Inauguration Ceremony at Mirpur', NULL, NULL, 1, NULL, NULL, '2023-01-10 13:50:00', '2023-01-10 13:50:00', 'inauguration-ceremony-at-mirpur', 2),
(16, 'Presentation on e-Tendering System to Honorable Managing Director AJ&K-PPRA', NULL, NULL, 1, NULL, NULL, '2023-01-10 14:09:30', '2023-01-10 14:09:30', 'presentation-on-e-tendering-system-to-honorable-managing-director-aj-k-ppra', 2),
(17, 'First E - Bidding Inaugurated by Honorable Chief Secretary Govt. of AJ&K', NULL, NULL, 1, NULL, NULL, '2023-01-17 15:33:45', '2023-01-17 15:33:45', 'first-e-bidding-inaugurated-by-honorable-chief-secretary-govt-of-aj-k', 2);

-- --------------------------------------------------------

--
-- Table structure for table `newstypes`
--

CREATE TABLE `newstypes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `status`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Test', 1, '<p>Test</p>', '2022-07-19 01:05:05', '2022-07-19 01:03:59', '2022-07-19 01:05:05'),
(2, 'Testing Notification', 1, '<p>Testing Notification</p>', NULL, '2022-07-19 01:09:12', '2022-07-19 01:09:12'),
(3, 'KPBIT UPDATE', 0, '<p>KPBIT UPDATE</p>', '2022-09-20 02:41:35', '2022-07-19 01:09:33', '2022-09-20 02:41:35'),
(4, NULL, 0, NULL, '2022-08-12 09:29:12', '2022-08-12 09:29:07', '2022-08-12 09:29:12'),
(5, NULL, 0, NULL, '2022-08-12 09:29:21', '2022-08-12 09:29:17', '2022-08-12 09:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deletable` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `loadwithlink` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `deletable`, `deleted_at`, `created_at`, `updated_at`, `loadwithlink`, `slogan`, `image_caption`, `banner_title`) VALUES
(1, 'Introduction', 'health-department-kp-is-a-public-entity-guiding-health-policies', '<h3><br></h3><p>Communications &amp; Works Department was established in 1979. Since establishment the Department is working to promote safe, sustainable, cost effective and environment friendly road infrastructure leading to socio-economic development. Following are attached Departments:</p><ul><li>HIGHWAYS- NORTH</li><li>HIGHWAYS- SOUTH</li><li>Central Design Office- CDO</li></ul><p class=\"ql-align-justify\">Our Future plane regarding paperless envoirment is to developed the system for tendering process to make it more transparent, accurate and easy. Following are the systems</p>', 0, NULL, '2022-08-04 01:40:12', '2022-08-12 13:40:50', 'index', 'Welcome To Communication & Works Department State Of AJ&K', 'Communications & Works Department was established in 1979. Since establishment the Department is working to promote safe, sustainable, cost effective and environment friendly road infrastructure leading to socio-economic development', 'blank'),
(2, 'To make sure citizens Receive the quality of life', 'to-make-sure-citizens-receive-the-quality-of-life', '<p>Health Department-KP is a public entity; guiding health policies, governing healthcare institutions and leading healthcare interventions in Khyber Pakhtunkhwa. Towards decentralization and digitalization, it aims to provide healthcare at your doorstep. Devolved into healthcare education and service provision, the department; ensure and realizes supply and demand equilibrium, channelizing healthcare knowledge attitudes and practices on modern scientific patterns, however, synchronizing learned techniques with beliefs, local values and norms.</p><p>Statistically prioritized interventions; concentrating epidemics, outbreaks, mutations and precautions; being learnt, advised, intervened, supervised and data-banked for future referrals.</p>', 0, NULL, '2022-08-04 02:18:27', '2022-08-05 05:31:55', 'projects', 'Health Department KP is continuously working with stakeholders', NULL, 'Projects'),
(3, 'Events', 'news', NULL, 0, NULL, '2022-08-05 01:04:48', '2022-08-13 05:41:55', 'News', 'Events', NULL, 'Events'),
(4, 'newsDetails', 'newsdetails', NULL, 0, NULL, '2022-08-09 04:26:30', '2022-08-09 04:26:30', 'newsDetails', 'newsDetails', NULL, 'News'),
(5, 'ProjectDetails', 'projectdetails', NULL, 0, NULL, '2022-08-10 01:41:32', '2022-08-10 01:41:32', 'ProjectDetails', 'ProjectDetails', NULL, 'ProjectDetails'),
(6, 'Achievement', 'achievement', NULL, 0, NULL, '2022-08-10 02:21:00', '2022-09-20 02:12:43', 'Achievement', NULL, NULL, 'Achievement'),
(7, 'Hospitals', 'hospitals', NULL, 0, NULL, '2022-08-10 10:26:37', '2022-08-10 10:26:37', 'Hospitals', 'Hospitals', NULL, 'Hospitals'),
(8, 'About Us', 'about-us', '<h3>INTRODUCTION</h3><p>About Communication &amp; Works Department, State of Azad Jammu &amp; Kashmir</p><p>Communications &amp; Works Department was established in 1979. Since establishment the Department is working to promote safe, sustainable, cost effective and environment friendly road infrastructure leading to socio-economic development. Following are attached Departments.</p><h3>HighWays - North</h3><h3>HighWays - South</h3><h3>Central Design Office - CDO</h3><p>AJ&amp;K inherited 100-km black topped and 165 Km fair-weather road in 1947 whereas at present road network has extended to 8865 Km having road density of 0.66 km/ sq-km.</p><h3>Ecnomic/Social Potential</h3><ul><li>Civilization travels through roads.</li><li>Roads are the only mode of transportation in Azad Kashmir.</li><li>Road network under C&amp;W in AJK has expanded to 8968 Km with road density 0.67 Kilometer per Kilometer square.</li><li>Socio-Economic development and realization of natural resource potential i.e Tourism, Hydro-Power generation, Mineral development etc. largely depends on availability of modern road network.</li><li>Cultural trade, Commerce, Economic development and Social integration require well developed road network in AJK.</li><li>Agri products from Farm to Market moves through road.</li><li>Roads improve accessibility to socio-economic services, viz-a-viz Education, Health and other facilities.</li></ul><p><br></p>', 0, NULL, '2022-08-11 00:14:29', '2022-08-13 07:43:24', 'ABOUT US', 'ABOUT US', NULL, 'About Us'),
(9, 'OUR VISION', 'our-vision', '<p><span style=\"color: rgb(119, 119, 119);\">To be the most competitive construction firm C&amp;W in AJK insure to customer satisfaction by constantly building superlative quality of material, cutting-edge technology, timely completion and demonstrating the highest standards road network up to village level.</span></p>', 0, NULL, '2022-08-11 00:36:25', '2022-08-13 08:46:54', 'OUR VISION', 'OUR VISION', NULL, 'Our Vision'),
(18, 'Our Achievements', 'our-achievements', '<p><span style=\"color: rgb(119, 119, 119);\">AJ&amp;K inherited 100-km black topped and 165 Km fair-weather road in 1947 whereas at present road network has extended to 8865 Km having road density of 0.66 km/ sq-km.</span></p>', 0, NULL, '2022-08-13 08:53:43', '2022-08-13 08:53:43', 'Our Achievements', NULL, NULL, 'Our Achievements'),
(10, 'Our Mission', 'our-mission', '<p><span style=\"color: rgb(119, 119, 119);\">Develop and maintain the public road network infrastructure in a cost effective manner with a view to providing an accessible, reliable, efficient, safe, sustainable, economic and environmentally friendly transport system in AJK through a highly motivated and professional team.</span></p>', 0, NULL, '2022-08-11 00:42:11', '2022-08-15 13:31:53', 'Our Mission', 'Our Mission', NULL, 'Our Mission'),
(11, 'LAWS & RULES', 'laws-rules', '<p><strong>What is a coronavirus?</strong></p><p><span style=\"color: rgb(60, 66, 69);\">Coronaviruses are a large family of viruses which may cause illness in animals or humans.&nbsp;In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19.</span></p><p><br></p>', 0, NULL, '2022-08-11 01:12:52', '2022-08-11 01:16:17', 'LAWS & RULES', NULL, NULL, 'LAWS & RULES'),
(12, 'C&W Sector ADP', 'download', NULL, 0, NULL, '2022-08-11 05:05:45', '2022-09-20 02:45:13', 'Download', NULL, NULL, 'C&W Sector ADP'),
(13, 'Team', 'team', NULL, 0, NULL, '2022-08-11 06:12:00', '2022-08-11 06:12:00', 'Team', NULL, NULL, 'Team'),
(14, 'Gallery', 'gallery', NULL, 0, NULL, '2022-08-11 21:46:00', '2022-08-11 21:46:00', 'Gallery', NULL, NULL, 'Gallery'),
(15, 'Contact Us', 'contact-us', NULL, 0, NULL, '2022-08-12 07:18:13', '2022-08-12 07:19:00', 'contact Us', NULL, NULL, 'Contact Us'),
(16, 'test', 'test', NULL, 1, '2022-08-12 08:54:21', '2022-08-12 08:54:16', '2022-08-12 08:54:21', 'test', NULL, NULL, 'Test'),
(17, 'E-Registration', 'e-registration', NULL, 0, NULL, '2022-08-13 08:28:14', '2022-08-13 08:28:14', 'E-Registration', NULL, NULL, 'E-Registration'),
(19, 'Road Map', 'road-map', NULL, 0, NULL, '2022-08-13 09:16:26', '2022-08-13 09:16:26', 'Road Map', NULL, NULL, 'Road Map'),
(20, 'Development Expenditures', 'development-expenditures', NULL, 0, NULL, '2022-08-13 10:35:18', '2022-08-13 10:35:18', 'Development Expenditures', NULL, NULL, 'Development Expenditures'),
(21, 'Targets & Achievements', 'notice-inviting-tender', NULL, 0, NULL, '2022-08-13 10:37:34', '2022-08-13 10:45:14', 'Notice Inviting Tender', NULL, NULL, 'Targets & Achievements'),
(22, 'ADP- North', 'adp-north', '<h3>ADP- North</h3><p><br></p>', 0, NULL, '2022-08-13 10:49:26', '2022-08-13 10:49:26', 'ADP- North', NULL, NULL, 'ADP- North'),
(23, 'tender', 'tender', NULL, 0, NULL, '2022-08-13 16:58:58', '2022-08-13 16:58:58', 'tender', NULL, NULL, 'Tender'),
(24, 'Roads Status', 'roads-status', '<p>Roads Status</p>', 0, NULL, '2022-08-31 16:38:17', '2022-08-31 16:38:17', 'Roads Status', NULL, NULL, 'Roads Status');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `menu_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES
(1, 'role-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 2),
(2, 'role-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 2),
(3, 'role-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 2),
(4, 'role-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 2),
(5, 'user-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 1),
(6, 'user-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 1),
(7, 'user-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 1),
(8, 'user-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 1),
(9, 'setting-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 3),
(10, 'setting-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 3),
(11, 'setting-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 3),
(12, 'setting-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 3),
(13, 'slide-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 4),
(14, 'slide-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 4),
(15, 'slide-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 4),
(16, 'slide-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 4),
(17, 'notification-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 5),
(18, 'notification-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 5),
(19, 'notification-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 5),
(20, 'notification-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 5),
(21, 'download-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 6),
(22, 'download-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 6),
(23, 'download-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 6),
(24, 'download-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 6),
(25, 'team-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 7),
(26, 'team-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 7),
(27, 'team-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 7),
(28, 'team-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 7),
(29, 'project-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 8),
(30, 'project-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 8),
(31, 'project-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 8),
(32, 'project-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 8),
(33, 'alert-list', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 9),
(34, 'alert-create', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 9),
(35, 'alert-edit', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 9),
(36, 'alert-delete', 'web', '2022-07-06 20:45:39', '2022-07-06 20:45:39', 9),
(41, 'news-list', 'web', '2022-07-27 01:51:08', '2022-07-27 01:51:08', 11),
(42, 'news-create', 'web', '2022-07-27 01:51:08', '2022-07-27 01:51:08', 11),
(43, 'news-edit', 'web', '2022-07-27 01:51:08', '2022-07-27 01:51:08', 11),
(44, 'news-delete', 'web', '2022-07-27 01:51:08', '2022-07-27 01:51:08', 11),
(45, 'gallary-list', 'web', '2022-07-27 02:45:35', '2022-07-27 02:45:35', 12),
(46, 'gallary-create', 'web', '2022-07-27 02:45:35', '2022-07-27 02:45:35', 12),
(47, 'gallary-edit', 'web', '2022-07-27 02:45:35', '2022-07-27 02:45:35', 12),
(48, 'gallary-delete', 'web', '2022-07-27 02:45:35', '2022-07-27 02:45:35', 12),
(49, 'link-list', 'web', '2022-08-03 00:50:44', '2022-08-03 00:50:44', 13),
(50, 'link-create', 'web', '2022-08-03 00:50:44', '2022-08-03 00:50:44', 13),
(51, 'link-edit', 'web', '2022-08-03 00:50:44', '2022-08-03 00:50:44', 13),
(52, 'link-delete', 'web', '2022-08-03 00:50:44', '2022-08-03 00:50:44', 13),
(53, 'page-list', 'web', '2022-08-04 00:50:02', '2022-08-04 00:50:02', 14),
(54, 'page-create', 'web', '2022-08-04 00:50:03', '2022-08-04 00:50:03', 14),
(55, 'page-edit', 'web', '2022-08-04 00:50:03', '2022-08-04 00:50:03', 14),
(56, 'page-delete', 'web', '2022-08-04 00:50:03', '2022-08-04 00:50:03', 14),
(57, 'category-list', 'web', '2022-08-04 23:58:48', '2022-08-04 23:58:48', 15),
(58, 'category-create', 'web', '2022-08-04 23:58:48', '2022-08-04 23:58:48', 15),
(59, 'category-edit', 'web', '2022-08-04 23:58:48', '2022-08-04 23:58:48', 15),
(60, 'category-delete', 'web', '2022-08-04 23:58:48', '2022-08-04 23:58:48', 15),
(61, 'achievement-list', 'web', '2022-08-09 07:11:32', '2022-08-09 07:11:32', 16),
(62, 'achievement-create', 'web', '2022-08-09 07:11:32', '2022-08-09 07:11:32', 16),
(63, 'achievement-edit', 'web', '2022-08-09 07:11:32', '2022-08-09 07:11:32', 16),
(64, 'achievement-delete', 'web', '2022-08-09 07:11:32', '2022-08-09 07:11:32', 16),
(65, 'e_registeration-list', 'web', '2022-08-13 02:45:09', '2022-08-13 02:45:09', 17),
(66, 'e_registeration-create', 'web', '2022-08-13 02:45:09', '2022-08-13 02:45:09', 17),
(67, 'e_registeration-edit', 'web', '2022-08-13 02:45:09', '2022-08-13 02:45:09', 17),
(68, 'e_registeration-delete', 'web', '2022-08-13 02:45:09', '2022-08-13 02:45:09', 17),
(69, 'telephone-list', 'web', '2022-08-13 02:45:09', '2022-08-13 02:45:09', 18),
(70, 'telephone-create', 'web', '2022-08-13 02:45:09', '2022-08-13 02:45:09', 18),
(71, 'telephone-edit', 'web', '2022-08-13 02:45:09', '2022-08-13 02:45:09', 18),
(72, 'telephone-delete', 'web', '2022-08-13 02:45:09', '2022-08-13 02:45:09', 18),
(73, 'tender-list', 'web', '2022-08-13 10:20:12', '2022-08-13 10:20:12', 19),
(74, 'tender-create', 'web', '2022-08-13 10:20:12', '2022-08-13 10:20:12', 19),
(75, 'tender-edit', 'web', '2022-08-13 10:20:12', '2022-08-13 10:20:12', 19),
(76, 'tender-delete', 'web', '2022-08-13 10:20:12', '2022-08-13 10:20:12', 19),
(77, 'road-list', 'web', '2022-08-31 16:30:54', '2022-08-31 16:30:54', 20),
(78, 'road-create', 'web', '2022-08-31 16:30:54', '2022-08-31 16:30:54', 20),
(79, 'road-edit', 'web', '2022-08-31 16:30:54', '2022-08-31 16:30:54', 20),
(80, 'road-delete', 'web', '2022-08-31 16:30:54', '2022-08-31 16:30:54', 20),
(87, 'road_info-edit', 'web', '2024-05-16 07:12:56', '2024-05-16 07:12:56', 22),
(86, 'road_info-create', 'web', '2024-05-16 07:12:56', '2024-05-16 07:12:56', 22),
(85, 'road_info-list', 'web', '2024-05-16 07:12:56', '2024-05-16 07:12:56', 22),
(88, 'road_info-delete', 'web', '2024-05-16 07:12:56', '2024-05-16 07:12:56', 22);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_company_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `client_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `link`, `description`, `deleted_at`, `created_at`, `updated_at`, `status`, `slug`, `client_name`, `client_company_name`, `start_date`, `end_date`, `client_comment`) VALUES
(4, 'Strengthening of Rehabilitation Services for Physically Disabled', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.</p><p>And a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><ul><li>Nullam at erat quis eros finibus aliquam.</li><li>Cras nec risus lobortis, auctor ipsum quis, vulputate purus.</li><li>Morbi id tellus non arcu pulvinar gravida.</li><li>Nulla bibendum odio non felis pulvinar interdum.</li><li>Aliquam condimentum mauris et velit tempus dictum.</li><li>Curabitur non libero eu lectus facilisis aliquet ac maximus justo.</li></ul><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', NULL, '2022-08-03 06:46:25', '2022-08-12 09:11:23', 1, 'strengthening-of-rehabilitation-services-for-physically-disabled', 'Imran Khan', 'KPTIB', '2022-06-07', '2022-08-19', NULL),
(2, 'Extension of D-Talk and Insulin for Life Program', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.</p><p>And a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><ul><li>Nullam at erat quis eros finibus aliquam.</li><li>Cras nec risus lobortis, auctor ipsum quis, vulputate purus.</li><li>Morbi id tellus non arcu pulvinar gravida.</li><li>Nulla bibendum odio non felis pulvinar interdum.</li><li>Aliquam condimentum mauris et velit tempus dictum.</li><li>Curabitur non libero eu lectus facilisis aliquet ac maximus justo.</li></ul><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', NULL, '2022-08-03 06:44:45', '2022-08-10 01:27:47', 1, 'extension-of-d-talk-and-insulin-for-life-program', NULL, NULL, NULL, NULL, NULL),
(3, 'Expanded Program on immunization', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.</p><p>And a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><ul><li>Nullam at erat quis eros finibus aliquam.</li><li>Cras nec risus lobortis, auctor ipsum quis, vulputate purus.</li><li>Morbi id tellus non arcu pulvinar gravida.</li><li>Nulla bibendum odio non felis pulvinar interdum.</li><li>Aliquam condimentum mauris et velit tempus dictum.</li><li>Curabitur non libero eu lectus facilisis aliquet ac maximus justo.</li></ul><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', NULL, '2022-08-03 06:45:15', '2022-08-10 01:28:00', 1, 'expanded-program-on-immunization', NULL, NULL, NULL, NULL, NULL),
(5, 'Extension of D-Talk and Insulin for Life Program', NULL, '<p>Extension of D-Talk and Insulin for Life Program</p>', NULL, '2022-08-03 06:47:01', '2022-08-09 06:58:51', 1, 'extension-of-d-talk-and-insulin-for-life-program-2', NULL, NULL, NULL, NULL, NULL),
(6, 'Expanded Program on immunization', NULL, '<p>Expanded Program on immunization</p>', NULL, '2022-08-09 06:59:17', '2022-08-11 21:37:44', 1, 'expanded-program-on-immunization-2', NULL, NULL, NULL, NULL, NULL),
(7, 'Expanded Program on immunization', NULL, '<p>Expanded Program on immunization</p>', NULL, '2022-08-09 07:00:01', '2022-08-09 07:00:01', 1, 'expanded-program-on-immunization-3', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `cnic` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `address` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_date` date NOT NULL,
  `phone_no` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_no` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `name`, `father_name`, `floor_id`, `room_id`, `cnic`, `amount`, `address`, `image`, `registration_date`, `phone_no`, `whatsapp_no`, `dob`, `email`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sylvia Henry', 'Reagan Meadows', 1, 1, 'Libero unde omnis sa', 6000, 'Deserunt ea similiqu', NULL, '2007-04-26', '+1 (848) 209-3217', '260', '1983-08-10', 'qihasytep@mailinator.com', '1', NULL, '2024-07-20 06:56:55', '2024-07-20 06:56:55'),
(2, 'Sylvia Henry', 'Reagan Meadows', 1, 1, 'Libero unde omnis sa', 5500, 'Deserunt ea similiqu', NULL, '2007-04-26', '+1 (848) 209-3217', '260', '1983-08-10', 'qihasytep@mailinator.com', '1', NULL, '2024-07-20 06:57:56', '2024-07-20 06:57:56'),
(3, 'Davis Roman', 'Jordan Dawson', 1, 1, 'Distinctio Voluptat', 6000, 'Facilis perspiciatis', NULL, '1996-08-09', '+1 (126) 792-1384', '68', '2005-02-09', 'fydezahify@mailinator.com', '1', NULL, '2024-07-20 07:13:49', '2024-07-20 07:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `roads`
--

CREATE TABLE `roads` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `road_length` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_status` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roads`
--

INSERT INTO `roads` (`id`, `name`, `road_length`, `note`, `current_status`, `telephone_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Noseri to Athmuqam Road', '37 KM', 'Stone and sliding occur, removal work is in progress', 'Road is open for traffic.', 11, 1, NULL, '2022-09-10 10:05:44', '2023-01-30 09:56:45'),
(2, 'Authmuqam to Dawarian Road', '22 KM', 'Boulders are fallen on road work is in progress', 'Road is open for traffic.', 11, 1, NULL, '2022-09-10 10:06:57', '2022-09-10 10:06:57'),
(3, 'Dawarian to Sharda Road', '28 KM', 'Small deposit occur, work is in progress', 'Road is open for traffic.', 11, 1, NULL, '2022-09-10 10:08:12', '2022-09-10 10:08:12'),
(4, 'Sharda to Kel road', '20 KM', 'Stone and sliding occur, removal work is in progress', 'Road is open for traffic.', 11, 1, NULL, '2022-09-10 10:09:31', '2022-09-10 10:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `road_infos`
--

CREATE TABLE `road_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `attachment` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `road_infos`
--

INSERT INTO `road_infos` (`id`, `district_id`, `dated`, `attachment`, `created_at`, `updated_at`) VALUES
(2, 2, '2024-05-16', NULL, '2024-05-16 09:27:00', '2024-05-16 10:05:31'),
(3, 2, '2024-05-17', NULL, '2024-05-16 09:50:16', '2024-05-16 09:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'Super Admin', 'web', '2022-07-06 21:18:16', '2022-07-06 21:18:16'),
(5, 'XEN', 'web', '2023-05-31 09:50:14', '2023-05-31 09:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(3, 2),
(3, 3),
(4, 3),
(5, 2),
(5, 3),
(5, 4),
(6, 2),
(6, 3),
(7, 2),
(7, 3),
(8, 2),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(13, 5),
(14, 3),
(14, 5),
(15, 3),
(15, 5),
(16, 3),
(16, 5),
(17, 3),
(17, 5),
(18, 3),
(18, 5),
(19, 3),
(19, 5),
(20, 3),
(20, 5),
(21, 3),
(21, 5),
(22, 3),
(22, 5),
(23, 3),
(23, 5),
(24, 3),
(24, 5),
(25, 3),
(25, 5),
(26, 3),
(26, 5),
(27, 3),
(27, 5),
(28, 3),
(28, 5),
(29, 3),
(29, 5),
(30, 3),
(30, 5),
(31, 3),
(31, 5),
(32, 3),
(32, 5),
(33, 3),
(33, 5),
(34, 3),
(34, 5),
(35, 3),
(35, 5),
(36, 3),
(36, 5),
(41, 3),
(41, 5),
(42, 3),
(42, 5),
(43, 3),
(43, 5),
(44, 3),
(44, 5),
(45, 3),
(45, 5),
(46, 3),
(46, 5),
(47, 3),
(47, 5),
(48, 3),
(48, 5),
(49, 3),
(49, 5),
(50, 3),
(50, 5),
(51, 3),
(51, 5),
(52, 3),
(52, 5),
(53, 3),
(53, 5),
(54, 3),
(54, 5),
(55, 3),
(55, 5),
(56, 3),
(56, 5),
(57, 3),
(57, 5),
(58, 3),
(58, 5),
(59, 3),
(59, 5),
(60, 3),
(60, 5),
(61, 3),
(61, 5),
(62, 3),
(62, 5),
(63, 3),
(63, 5),
(64, 3),
(64, 5),
(65, 3),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 3),
(69, 5),
(70, 3),
(70, 5),
(71, 3),
(71, 5),
(72, 3),
(72, 5),
(73, 3),
(73, 5),
(74, 3),
(74, 5),
(75, 3),
(75, 5),
(76, 3),
(76, 5),
(77, 3),
(77, 5),
(78, 3),
(78, 5),
(79, 3),
(79, 5),
(80, 3),
(80, 5),
(85, 3),
(86, 3),
(87, 3),
(88, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `room_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_id` bigint UNSIGNED NOT NULL,
  `room_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_seats` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `price` double(10,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `floor_id`, `room_type`, `no_of_seats`, `status`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Room 1 - A1', 1, 'Single', '4', 'inactive', 20000.00, NULL, '2024-07-20 04:33:06', '2024-07-20 04:35:13'),
(2, 'Devin Colon', 1, 'Multiple', '2', 'inactive', 478.00, '2024-07-20 04:35:46', '2024-07-20 04:35:41', '2024-07-20 04:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'KPITB',
  `footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mainLayoutType` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vertical',
  `theme` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `sidebarCollapsed` tinyint(1) NOT NULL DEFAULT '0',
  `navbarColor` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bg-primary',
  `horizontalMenuType` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'floating',
  `verticalMenuNavbarType` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'floating',
  `footerType` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `layoutWidth` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'boxed',
  `showMenu` tinyint(1) NOT NULL DEFAULT '1',
  `bodyClass` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pageHeader` tinyint(1) NOT NULL DEFAULT '1',
  `contentLayout` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `defaultLanguage` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `blankPage` tinyint(1) NOT NULL DEFAULT '0',
  `direction` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `contentsidebarClass` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'content-left-sidebar',
  `sidebarPositionClass` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'content-left-sidebar',
  `horizontalMenuClass` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `websiteName` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_app_link` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `ios_app_link` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `footer_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `facebook` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `instagram` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `youtube` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `footer`, `mainLayoutType`, `theme`, `sidebarCollapsed`, `navbarColor`, `horizontalMenuType`, `verticalMenuNavbarType`, `footerType`, `layoutWidth`, `showMenu`, `bodyClass`, `pageHeader`, `contentLayout`, `defaultLanguage`, `blankPage`, `direction`, `created_at`, `updated_at`, `status`, `deleted_at`, `contentsidebarClass`, `sidebarPositionClass`, `horizontalMenuClass`, `websiteName`, `email`, `android_app_link`, `ios_app_link`, `footer_note`, `address`, `phone`, `twitter`, `facebook`, `instagram`, `youtube`) VALUES
(1, 'Main Theme', '<p class=\"clearfix mb-0\">\n    <span class=\"float-md-left d-block d-md-inline-block mt-25\">COPYRIGHT &copy; <script>document.write(new Date().getFullYear())</script>\n      <span class=\"d-none d-sm-inline-block\">, All rights Reserved</span>\n    </span>\n    <span class=\"float-md-right d-none d-md-block\">Hand-crafted & Made with<i data-feather=\"heart\"></i></span>\n  </p>', 'vertical', 'light', 0, 'bg-primary', 'floating', 'floating', 'static', 'boxed', 1, '', 1, 'default', 'en', 0, 'ltr', '2022-08-03 08:11:28', '2024-07-20 03:28:30', 1, NULL, 'default', 'content-right-sidebar', 'static', 'Abdali Hostel', 'info@abdalihostel.com', '#', '#', '<p><span style=\"color: rgb(0, 0, 0);\">Footer Note</span></p>', 'XCGJ+FVR Nauman Engineeing Works, Phase-1 Phase 1 Hayatabad, Peshawar, Khyber Pakhtunkhwa', '+92(321)-1234567', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `en_title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ur_title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ur_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `deleted_at`, `created_at`, `updated_at`, `en_title`, `en_description`, `ur_title`, `ur_description`, `status`) VALUES
(1, '2022-08-01 20:03:57', '2022-08-01 01:28:28', '2022-08-01 20:03:57', 'For the entire population of KHYBER PAKHTUNKHWA', '<p><strong>Free medical treatment facilities under Sehat Card Program</strong></p><p>Sehat Card Plus is a Micro-health Insurance Programme for all the citizens of Khyber Pakhtunkhwa. It is one of the flagship programmes of Government of Khyber Pakhtunkhwa</p>', 'خیبرپختونخوا کی پوری آبادی کے لیے', '<p><strong>صحت کارڈ پروگرام کے تحت مفت علاج کی سہولیات</strong></p><p>﻿صحت کارڈ پلس خیبرپختونخوا کے تمام شہریوں کے لیے ایک مائیکرو ہیلتھ انشورنس پروگرام ہے۔ یہ خیبرپختونخوا حکومت کے اہم پروگراموں میں سے ایک ہے۔</p>', 1),
(2, '2022-08-12 13:09:06', '2022-08-01 21:44:11', '2022-08-12 13:09:06', 'For the entire population of KHYBER PAKHTUNKHWA', '<h1><strong style=\"color: rgb(255, 255, 255);\">Free medical treatment facilities under Sehat Card Program</strong></h1><p><span class=\"ql-size-large\" style=\"color: rgb(255, 255, 255);\">﻿Sehat Card Plus is a Micro-health Insurance Programme for all the citizens of Khyber Pakhtunkhwa. It is one of the flagship programmes of Government of Khyber Pakhtunkhwa.</span></p>', 'خیبرپختونخوا کی پوری آبادی کے لیے', '<h1 class=\"ql-align-right\"><strong style=\"color: rgb(255, 255, 255);\">صحت کارڈ پروگرام کے تحت مفت علاج کی سہولیات</strong></h1><p class=\"ql-align-right\"><span class=\"ql-size-large\" style=\"color: rgb(255, 255, 255);\">﻿صحت کارڈ پلس خیبرپختونخوا کے تمام شہریوں کے لیے ایک مائیکرو ہیلتھ انشورنس پروگرام ہے۔ یہ خیبرپختونخوا حکومت کے اہم پروگراموں میں سے ایک ہے۔</span></p><p><br></p>', 1),
(3, '2022-08-12 13:09:10', '2022-08-01 21:54:08', '2022-08-12 13:09:10', 'For the entire population of KHYBER PAKHTUNKHWA 2', '<h1><strong style=\"color: rgb(255, 255, 255);\">Free medical treatment facilities under Sehat Card Program</strong></h1><p><span class=\"ql-size-large\" style=\"color: rgb(255, 255, 255);\">Sehat Card Plus is a Micro-health Insurance Programme for all the citizens of Khyber Pakhtunkhwa. It is one of the flagship programmes of Government of Khyber Pakhtunkhwa.</span></p>', 'خیبرپختونخوا کی پوری آبادی کے لیے 2', '<h1 class=\"ql-align-right\"><strong style=\"color: rgb(255, 255, 255);\">صحت کارڈ پروگرام کے تحت مفت علاج کی سہولیات</strong></h1><p class=\"ql-align-right\"><span class=\"ql-size-large\" style=\"color: rgb(255, 255, 255);\">صحت کارڈ پلس خیبرپختونخوا کے تمام شہریوں کے لیے ایک مائیکرو ہیلتھ انشورنس پروگرام ہے۔ یہ خیبرپختونخوا حکومت کے اہم پروگراموں میں سے ایک ہے۔</span></p><p><br></p>', 1),
(4, '2022-08-12 09:54:51', '2022-08-12 09:54:47', '2022-08-12 09:54:51', 'test', NULL, NULL, NULL, 0),
(5, NULL, '2022-08-12 13:13:45', '2022-08-12 13:52:18', 'Welcome To Communication & Works Department State Of AJ&K', '<p><span style=\"color: rgb(255, 255, 255);\">Communications &amp; Works Department was established in 1979. Since establishment the Department is working to promote safe, sustainable, cost effective and environment friendly road infrastructure leading to socio-economic development.&nbsp;</span></p>', NULL, NULL, 1),
(6, '2022-12-21 11:35:03', '2022-09-10 17:02:27', '2022-12-21 11:35:03', 'Welcome To Communication & Works Department State Of AJ&K', NULL, NULL, NULL, 1),
(7, '2022-09-10 17:04:19', '2022-09-10 17:04:02', '2022-09-10 17:04:19', 'Damages', NULL, NULL, NULL, 1),
(8, '2022-09-10 17:06:10', '2022-09-10 17:05:33', '2022-09-10 17:06:10', 'Leswa Bypass Road', NULL, NULL, NULL, 1),
(9, '2022-09-14 18:01:15', '2022-09-14 18:00:40', '2022-09-14 18:01:15', 'Dhulli Lasnada Road', NULL, NULL, NULL, 1),
(10, NULL, '2022-09-14 18:03:12', '2024-03-11 09:23:43', 'Honorable PM AJ&K Inauguration Ceremony of Prestressed RCC Bridge Shah Sultan M\'abad', NULL, NULL, NULL, 1),
(11, NULL, '2022-09-14 18:07:19', '2024-03-11 09:25:09', 'Inauguration Ceremony of Shah Sultan Bridge', NULL, NULL, NULL, 1),
(12, '2022-12-23 16:27:50', '2022-12-21 11:56:57', '2022-12-23 16:27:50', 'Inauguration of E-Tendering System', NULL, NULL, NULL, 0),
(13, '2023-01-10 14:04:30', '2022-12-23 16:29:34', '2023-01-10 14:04:30', 'e-Tendering System', NULL, NULL, NULL, 1),
(14, NULL, '2022-12-23 16:31:04', '2024-03-11 09:26:10', 'Shah Sultan Bridge Muzaffarabad', NULL, NULL, NULL, 1),
(15, NULL, '2022-12-23 16:32:16', '2024-03-11 09:28:26', 'Snow removing activities', NULL, NULL, NULL, 1),
(16, '2023-01-10 13:57:28', '2022-12-23 16:34:56', '2023-01-10 13:57:28', 'e-Tendering System for C&W', NULL, NULL, NULL, 1),
(17, '2023-01-10 14:04:10', '2023-01-10 13:56:40', '2023-01-10 14:04:10', 'Presentation on E-Tendering System to Honorable Managing Director PPRA', NULL, NULL, NULL, 1),
(18, NULL, '2023-01-10 13:58:15', '2024-03-11 09:30:04', 'Glaciers removing activities', NULL, NULL, NULL, 1),
(19, NULL, '2024-03-11 09:31:09', '2024-03-11 09:31:09', 'Snow removing activities-2', NULL, NULL, NULL, 1),
(20, NULL, '2024-03-11 09:32:17', '2024-03-11 09:32:17', 'Road infrastructure Damages', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `father_name`, `cnic`, `address`, `image`, `phone_no`, `email`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Daquan Wallace', 'Karleigh Delaney', 'Esse mollitia non i', 'Natus qui eu aliqua', NULL, '345434565', 'kidusepy@mailinator.com', 'Active', '2024-07-21 08:07:58', '2024-07-21 08:03:50', '2024-07-21 08:07:58'),
(2, 'Aladdin Sullivan', 'Nadine Horn', 'Sit ea sunt volupta', 'Voluptatem rerum qui', NULL, '2345654', 'tuhirekyc@mailinator.com', 'Active', NULL, '2024-07-21 08:07:55', '2024-07-21 08:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `facebook`, `twitter`, `phone`, `type`, `status`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'IMRAN ALI', NULL, 'https://www.twitter.com', 'https://www.twitter.com', '03133434571', 'team', 1, '<p>03133434571</p>', '2022-07-24 21:52:29', '2022-07-20 00:44:27', '2022-07-24 21:52:29'),
(2, '- Ch. Azhar Sadiq', 'Minister C&W AJ&K', NULL, 'https://www.twitter.com', '(+92) 91 1234567', 'addministrator', 1, '<p class=\"ql-align-center\"><span style=\"color: rgb(142, 141, 141);\">Communication and Works Department doesn\'t only deal with the bricks and mortar, and nuts and bolts. It has another very crucial dimension associated to it. And that is that the roads it builds are travelled by millions of living souls daily. Similarly the buildings it constructs are inhabited by millions of people.</span></p>', NULL, '2022-07-24 21:52:24', '2022-08-12 14:07:47'),
(3, '- Zaheer Ud Din', 'Secretary C&W', NULL, 'https://www.twitter.com', '(+92) 5822921925', 'addministrator', 1, '<p><span style=\"color: rgb(142, 141, 141);\">Communication and Works Department has been in the vanguard to translate practically on the ground the wishes, desires and dreams of the people. It is the working limb of the government, which implements the development agenda of the popular executive for the benefit of the people at gross root level.</span></p>', NULL, '2022-07-25 00:25:46', '2024-04-05 05:25:21'),
(4, '- Muhammad Shafique-ur-Rehman Dar', 'Chief Engineer Highways (Poonch Zone)', NULL, 'https://www.twitter.com', '(+92) 05822920085', 'addministrator', 1, '<p><span style=\"color: rgb(142, 141, 141);\">&nbsp;It is an uphill task for a spending department to earn public appreciation and Communication and Works Department has been experiencing this dilemma, as well. It is very laudable that the department has embarked upon the much needed task of muscle building to enhance its capacity, vitality and capability to handle its functions, efficiently.</span></p>', NULL, '2022-07-25 00:35:29', '2024-04-05 05:25:43'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '<p>afdsadsfads</p><p><br></p><p><br></p><p><br></p><p><br></p>', '2022-07-27 01:47:07', '2022-07-26 05:29:06', '2022-07-27 01:47:07'),
(6, '- Abdul Basit', 'Chief Engineer Highways (Muzaffarabad Zone)', NULL, 'https://www.twitter.com', '(+92) 5822920099', 'addministrator', 1, '<p class=\"ql-align-center\"><span style=\"color: rgb(142, 141, 141); letter-spacing: 0.01rem;\">The planners, designers and Engineers need to grasp latest technology and innovation to make their service delivery compatible with the surroundings. Quality, progress and wise utilization of tax payers\' money are the prime objectives of the department, which are not to be compromised at any level.</span></p>', NULL, '2022-07-24 21:52:24', '2024-04-05 05:26:06'),
(7, 'Test', NULL, NULL, 'https://www.twitter.com', NULL, 'addministrator', 0, NULL, '2022-09-09 11:54:19', '2022-08-15 03:52:28', '2022-09-09 11:54:19'),
(8, 'Raja Amjid Siddique', 'Superintending Engineer', NULL, 'https://www.twitter.com', '05822920085', 'north', 1, NULL, '2022-09-23 11:54:52', '2022-09-23 11:53:35', '2022-09-23 11:54:52'),
(9, 'Raja Amjid Siddique', 'Superintending Engineer', NULL, 'https://www.twitter.com', '05822920085', 'north', 1, NULL, '2022-09-23 11:54:42', '2022-09-23 11:53:39', '2022-09-23 11:54:42'),
(10, 'Nadeem Ahmed Mughal', 'Chief Engineer Highways (Mirpur Zone)', NULL, 'https://www.twitter.com', NULL, 'addministrator', 1, NULL, NULL, '2024-04-05 05:17:54', '2024-04-05 05:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `teamtypes`
--

CREATE TABLE `teamtypes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telephones`
--

CREATE TABLE `telephones` (
  `id` bigint UNSIGNED NOT NULL,
  `division` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `officename` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `moblieNO` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faxNO` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNO` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `district` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telephones`
--

INSERT INTO `telephones` (`id`, `division`, `officename`, `moblieNO`, `faxNO`, `phoneNO`, `created_at`, `updated_at`, `district`) VALUES
(1, 'other', 'Secretary C&W', '0301-5999045', '921925', '0522-921410', '2022-08-13 07:57:30', '2022-08-13 07:57:30', NULL),
(7, 'north', 'Chief Engineer Highways - North', '0300-8111685', '920087', '05822-920085', '2022-08-15 12:43:35', '2022-08-15 12:43:35', 'MuzafarAbad'),
(8, 'north', 'Executive Engineer H/W MuzafarAbad', '0341-9058969', '----', '0522-920101', '2022-08-15 12:44:51', '2022-08-15 12:44:51', 'MuzafarAbad'),
(9, 'north', 'Executive Engineer H/W Rawalakot-Circle', '---', '---', '05822-920135', '2022-08-15 12:45:40', '2022-08-15 12:45:40', 'Rawalakot'),
(10, 'north', 'Executive Engineer Highways MuzafarAbad-Division', '0355-6238837', '---', '920020', '2022-08-15 12:46:22', '2022-08-15 12:46:22', 'MuzafarAbad'),
(11, 'north', 'Executive Engineer Highways - Neelum Division', '0355-6238837', '---', '05821-920057', '2022-08-15 12:47:26', '2022-08-15 12:47:26', 'Neelum'),
(12, 'north', 'Executive Engineer Highways - Jehlum Division', '0344-5063462', '---', '922646', '2022-08-15 12:48:36', '2022-08-15 12:48:36', 'Jehlum'),
(13, 'north', 'Executive Engineer Highways - Bagh Division', '0345-5888603', '---', '05823-920071', '2022-08-15 12:49:25', '2022-08-15 12:49:25', 'Bagh'),
(14, 'north', 'Executive Engineer Highways - Rawlakot Division', '0313-7997999', '---', '05824-920144', '2022-08-15 12:50:10', '2022-08-15 12:50:10', 'Rawlakot'),
(15, 'north', 'Executive Engineer Highways - Sadhanoti Division', '0313-7997999', '--', '05825-920144', '2022-08-15 12:50:57', '2022-08-15 12:50:57', 'Sadhanoti'),
(16, 'north', 'Executive Engineer Highways - Haveli Division', '0355-6271755', '---', '05823-921781', '2022-08-15 12:51:40', '2022-08-15 12:51:40', 'Haveli'),
(17, 'other', 'Section Officer-Litigation C&W Deptt', '0300-9883812', '---', '921107', '2022-08-15 12:52:22', '2022-08-15 12:52:22', 'MuzafarAbad'),
(18, 'other', 'Section Officer-Litigation Law Deptt.', '0345-5933276', '---', '921107', '2022-08-15 12:54:06', '2022-08-15 12:54:06', 'MuzafarAbad'),
(19, 'other', 'Section Officer-Appeal Law Deptt.', '0346-7136682', '---', '921108', '2022-08-15 12:54:46', '2022-08-15 12:54:46', 'MuzafarAbad'),
(21, 'other', 'Legal Officer at Chief Engineer Highways', '0346-7201607', '---', '920125', '2022-08-15 12:56:09', '2022-08-15 12:56:09', 'MuzafarAbad'),
(22, 'south', 'Chief Engineer Highways - South', '0301-5349301', '920100', '920099', '2022-08-15 12:57:03', '2022-08-15 12:57:03', 'MuzafarAbad'),
(23, 'other', 'Executive Engineer Highways Circle Kotli', '0301-52600899', '920565', '920561', '2022-08-15 12:57:51', '2022-08-15 12:57:51', 'Kotli'),
(24, 'south', 'Executive Engineer Highways Division Kotli', '0346-0725195', '920554', '920555', '2022-08-15 12:58:36', '2022-08-15 12:58:36', 'Kotli'),
(25, 'south', 'Executive Engineer Highways Division Mirpur', '0346-5846189', '925900', '925900', '2022-08-15 12:59:28', '2022-08-15 12:59:28', 'Mirpur'),
(26, 'south', 'Executive Engineer Highways Circle Bhimber', '0345-6824455', '923502', '923500', '2022-08-15 13:00:27', '2022-08-15 13:00:27', 'Bhimber'),
(27, 'south', 'Executive Engineer Highways Division Bhimber', '0344-9725460', '925908', '925907', '2022-08-15 13:01:06', '2022-08-15 13:01:06', 'Bhimber'),
(28, 'north', 'XEN (PHE) Division Neelum', '12345', '12345', '12345', '2023-06-10 07:44:08', '2023-06-10 07:47:43', '12345'),
(29, 'north', 'XEN Building Division Muzaffarabad', '12345', '12345', '12345', '2023-06-10 07:58:18', '2023-06-10 07:58:18', '12345'),
(30, 'north', 'XEN PHE Division Muzaffarabad', '12345', '12345', '12345', '2023-06-10 07:58:48', '2023-06-10 07:58:48', '12345'),
(31, 'north', 'XEN Mechanical Division Muzaffarabad', '12345', '12345', '12345', '2023-06-10 07:59:15', '2023-06-10 07:59:15', '12345'),
(32, 'north', 'XEN Maintenance Division Muzaffarabad', '12345', '12345', '12345', '2023-06-10 07:59:45', '2023-06-10 07:59:45', '12345'),
(33, 'north', 'XEN Building Division Bagh', '12345', '12345', '12345', '2023-06-10 08:00:24', '2023-06-10 08:00:24', '12345'),
(34, 'north', 'XEN Public Health Engineering Division Bagh', '12345', '12345', '12345', '2023-06-10 08:00:48', '2023-06-10 08:00:48', '12345'),
(35, 'north', 'XEN Building Division Rawalakot', '12345', '12345', '12345', '2023-06-10 08:01:13', '2023-06-10 08:01:13', '12345'),
(36, 'north', 'XEN (PHE) Division Rawalakot', '12345', '12345', '12345', '2023-06-10 08:01:38', '2023-06-10 08:01:38', '12345'),
(37, 'north', 'XEN Building/PHE Division Haveli', '12345', '12345', '12345', '2023-06-10 08:02:04', '2023-06-10 08:02:04', '12345'),
(38, 'north', 'XEN Building/PHE Division Sudhnuti', '12345', '12345', '12345', '2023-06-10 08:02:41', '2023-06-10 08:02:41', '12345'),
(39, 'north', 'Executive Engineer Building Division Mirpur', '12345', '12345', '12345', '2023-06-10 08:03:16', '2023-06-10 08:03:16', '12345'),
(40, 'north', 'Executive Engineer PHE Division Mirpur-I', '12345', '12345', '12345', '2023-06-10 08:03:49', '2023-06-10 08:03:49', '12345'),
(41, 'north', 'Executive Engineer PHE Division  Mirpur-II', '12345', '12345', '12345', '2023-06-10 08:04:43', '2023-06-10 08:04:43', '12345'),
(42, 'north', 'XEN Building Division Kotli', '12345', '12345', '12345', '2023-06-10 08:05:12', '2023-06-10 08:05:12', '12345'),
(43, 'north', 'XEN PHE Kotli', '12345', '12345', '12345', '2023-06-10 08:06:46', '2023-06-10 08:06:46', '12345'),
(44, 'north', 'XEN Building Division Bhimber', '12345', '12345', '12345', '2023-06-10 08:07:13', '2023-06-10 08:07:13', '12345'),
(45, 'north', 'XEN PHE Bhimber', '12345', '12345', '12345', '2023-06-10 08:07:37', '2023-06-10 08:07:37', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `temporary_files`
--

CREATE TABLE `temporary_files` (
  `id` bigint UNSIGNED NOT NULL,
  `token` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temporary_files`
--

INSERT INTO `temporary_files` (`id`, `token`, `collection`, `created_at`, `updated_at`) VALUES
(2, 'tz3seGJoKMJ1tNmC06T3czYoPx0uu9wbWL363MWZPXFsXJ7eWIGYzMWH6fex', 'logo', '2022-07-18 01:51:35', '2022-07-18 01:51:35'),
(3, 'CXtioO4eYONl5eoJYOX5VAMsPeWi6Ho4oDWzOxhq7O4gdYzyJvQTW0Fmn7jZ', 'logo', '2022-07-18 01:57:59', '2022-07-18 01:57:59'),
(5, 'crwyZW45zt9mcD89s0DQEiquhUG9vaLD7h6Z82eJvOTWAIwBw5ZZJtBeVQr1', 'logo', '2022-07-18 02:58:39', '2022-07-18 02:58:39'),
(6, 'GRomVrhhqgy8zRnCjeXn5TWRIueqtWviJGBv6iUn2RtUCd6X4WOWMCWUBfmz', 'logo', '2022-07-18 03:42:24', '2022-07-18 03:42:24'),
(7, 'iCh7FCnipEXD92ttX39HAkvUV3qRZ260DIqRGTkwSsiHws8x1tWRHjsXMll1', 'logo', '2022-07-18 06:36:17', '2022-07-18 06:36:17'),
(8, 'LhQ27HFeFYgKjAotmY9ysQKApAJBC0lF3WEmaB1z0X3Agwo6GdhXd7WJ89nj', 'logo', '2022-07-18 06:36:39', '2022-07-18 06:36:39'),
(9, 'NxoPhgcltzICKjx5G4uFWe3MmdamcF1cSO2aD2zu5HPQdbzLDPXBwjL2yiJo', 'slide', '2022-07-18 23:46:19', '2022-07-18 23:46:19'),
(11, 'sMzoblyJ26cDveevW9JZdizBPIHc8A2VeKsDf0QQxqNQpgjoCpHCHr2XqdKP', 'slide', '2022-07-19 22:12:34', '2022-07-19 22:12:34'),
(17, 'mpl5v2SRUBrMMHtflhy1BrCF087XruTgmWzRGySNXVC2J50VRbyRx7UHyugm', 'team', '2022-07-20 00:10:38', '2022-07-20 00:10:38'),
(16, 'bzDKEjOA0PZxSLLCEB45BZ3igG8LtYAR9lH9AYDmWugH16rVo0zX12g6gdNM', 'slide', '2022-07-19 23:49:29', '2022-07-19 23:49:29'),
(15, 'WfxVzn7iMX3FASVycEjKZV6WZmWSoysuEtQydgleyxsLwM2yE4QGHQFZREfg', 'download', '2022-07-19 22:17:56', '2022-07-19 22:17:56'),
(18, 'BHdsBazCXCoCrKXHblKJEyQdUmrYEcF9zmZfTLgo8tXdrUMWwvmykqEzxADH', 'download', '2022-07-20 00:23:18', '2022-07-20 00:23:18'),
(19, 'eE1Q6fFCpUXlThfaulcbJXP2B6AUo2sEvRZp7U5copX9MWK57V0r27knXd6x', 'download', '2022-07-20 00:23:20', '2022-07-20 00:23:20'),
(20, 'SGkHTMTY42M9vDqt4iH4gSlMoRzj1scv4XLirNlzvqnGyGrA9BqrlI8QJI0y', 'download', '2022-07-20 00:23:23', '2022-07-20 00:23:23'),
(21, '3Ja4mjWI4zGfRkvoOTKhzHwGl7D4YADfux68AtHe9boFEhkEWWUoUz9MPyCl', 'download', '2022-07-20 00:23:27', '2022-07-20 00:23:27'),
(24, 'KFQ5ZuyhFoy9Bi4FSMayfQv4GbMecmCoOZl3qzI4cHXOroYSf5IoD1bQd93K', 'slide', '2022-07-20 02:29:09', '2022-07-20 02:29:09'),
(25, 'RRSZduLpW69CDg35yMpw62k7r7brIn1PXCTdjPmpUgfdZyLK90MX5gwvxslm', 'download', '2022-07-20 02:30:30', '2022-07-20 02:30:30'),
(26, 'h41p00sspK3ek9fxw9cWZO3p9FCYgj71MgFJxvQ3jKO3byQWEdBZDwv9hfTq', 'download', '2022-07-20 02:30:31', '2022-07-20 02:30:31'),
(36, 'ssGbh206TwKlfodTELCoyGPYaPB3szhNzSgK725LWy6ZKKiyRz9sCP0Cwy54', 'hospital', '2022-07-26 03:36:26', '2022-07-26 03:36:26'),
(35, 'nmPxpzESrvjuCLvYWNOGUPPjbiWHv106lzbYNxlvJW5VJZe3hBhUrffFQ8Zf', 'hospital', '2022-07-26 03:34:50', '2022-07-26 03:34:50'),
(48, '8jxxtFFqQz5ihk8OhPMlJsZCtA7hPWgFgPJ3DFHVMAwWpaMFUgd2gUdau3cZ', 'icon', '2022-08-01 22:29:41', '2022-08-01 22:29:41'),
(71, 'LhXbfesM90MYJmxHprZuSPmgzm6cbjRIOxseicZbjvoRRRkqGQ7pIMyzhMAE', 'banner', '2022-08-09 04:25:38', '2022-08-09 04:25:38'),
(70, 'PHQHZDC08qcdDb56hsJzaOSB76hPAfNqWJl90xj4FPNC7VO9P7BVtT6gSSrE', 'banner', '2022-08-09 04:25:02', '2022-08-09 04:25:02'),
(69, 'jpAsp6U9OhVCuSs5w1tIxRVFl7WPZkDIDNg8ZDIfyNH1QASy8ykk7jm8mWJq', 'banner', '2022-08-09 04:24:27', '2022-08-09 04:24:27'),
(85, '0GvaKGXZXmnio79VOgdUzvyu4sE8IpP0vJClD8uo93Nbp0GMUM6HHFxdVOz5', 'hospital', '2022-08-10 02:48:53', '2022-08-10 02:48:53'),
(83, 'SjK8HT3f0hfJ9Gx4YB24MKJqNm3jUSiyP19UUutmXjViuKQw08h7DgxDMGNm', 'banner', '2022-08-10 02:15:49', '2022-08-10 02:15:49'),
(91, 'jXzmXCLCFfQ63DlmmxjdFdY1qypZ0ZKPCp9Kq4B3Zx6XThI9iDL07OmRkCz8', 'banner', '2022-08-11 01:11:00', '2022-08-11 01:11:00'),
(96, '8T3oEg1x15NVSefUqvqZE1kCNSgKUz6Fk1HXThiY354ZEXsrSlRIHlkYxsih', 'gallary', '2022-08-11 21:27:57', '2022-08-11 21:27:57'),
(97, 'bCzO4RlXwXRvTLGqtU7FEQt37lR3yL07yMafst05f1DC1Qog1EUVlF8BxtOD', 'gallary', '2022-08-11 21:28:03', '2022-08-11 21:28:03'),
(98, '6sarnFHVzKCREOUFc8GDN6SZXS9kYyeeZZVwrUybVcNMCuecAJ9w0FhAn98j', 'gallary', '2022-08-11 21:28:06', '2022-08-11 21:28:06'),
(99, 'tQDVBFCadAAQzFflyYxhNBBzXKCek6dgTGBOcSK4gvFvdSGMq3o2q35HvRUe', 'gallary', '2022-08-11 21:28:10', '2022-08-11 21:28:10'),
(100, 'qQxawki4FhjrEmjCDnitmKebctywYDtBecexNlYBjBg2iqGeZhyVdzCGL5B2', 'gallary', '2022-08-11 21:28:14', '2022-08-11 21:28:14'),
(101, 'L0lTHeFYp02dAwHnayB42NrDA3XMn93SENONkWQ2oG4j6ypHrEKtUhZYySu2', 'gallary', '2022-08-11 21:28:59', '2022-08-11 21:28:59'),
(102, 'r9KyIlgIREakENdqBg16a0xlbAYI9dmdVsAwR2FpMahS4tReoapLMJuCnfig', 'gallary', '2022-08-11 21:33:33', '2022-08-11 21:33:33'),
(103, 'Zg5YlTo9UPgCN0LcNxvADSuL6Pjx99aHGgGYCCvJaiNydTPbxsIRYF5ql1tR', 'gallary', '2022-08-11 21:33:37', '2022-08-11 21:33:37'),
(104, 'T6S8WX4zq4du7CZfaHIFW6m63yLZlyfJgESUdqaaunrEgD0fgOARNtCDe9QP', 'gallary', '2022-08-11 21:33:41', '2022-08-11 21:33:41'),
(105, '5uCTtDuxTb5WdMF5SzN3FYayMXLm3U9TsZehGDkYkVILHFMmO15bgoG5YOET', 'gallary', '2022-08-11 21:33:44', '2022-08-11 21:33:44'),
(106, 'LjjNarmn6yV5J3qv0jM371sB8XcEbV5fzEMieZdN6R0LnQ6HLbko9QT1hCUE', 'gallary', '2022-08-11 21:36:10', '2022-08-11 21:36:10'),
(107, 'x4LbnLpLQGalsMlyw02RAQY9JQZlhmYNPM1TeIFBIepwgIlDLWLZ3dlbw0Sa', 'gallary', '2022-08-11 21:36:54', '2022-08-11 21:36:54'),
(109, '9Sh412PucOQ2EYaZU64IbOQZbbMRhw9n8YE6nVzSuGQJlgZOoUXjEUCgyrCh', 'gallary', '2022-08-11 21:38:32', '2022-08-11 21:38:32'),
(111, '5c4YtlLk5JGdQB2Tz38qIhRSjN5qgDjnYsWi24xreL7NvXA60x6q8F9oahQQ', 'gallary', '2022-08-11 21:41:50', '2022-08-11 21:41:50'),
(156, 'ZhaFTI3XNedYa3eZfRwhDa0Q5FPSKElZZEzwGv8gMw2cOR1olkk4mMV1EuLQ', 'gallary', '2022-08-13 07:28:34', '2022-08-13 07:28:34'),
(155, '2ULCnXkLkfeLtXh7J0WEJNxHRNkTrKL5mlXXvwDoQ70iw5qL0DDmVDRv7kFl', 'gallary', '2022-08-13 07:28:02', '2022-08-13 07:28:02'),
(183, 'lSJUqcXxuXKc1qQ7KEQuXi4toDUkFlypHGlrER7VytwnapDwlbzRxKjA74nJ', 'news', '2022-08-15 02:24:07', '2022-08-15 02:24:07'),
(184, 'mUMlQJBDRmlBlDZ7TQvm4w7evq0mYRRjbIhmNUcWEFXlpwlwqulVMPmXJamr', 'news', '2022-08-15 02:24:37', '2022-08-15 02:24:37'),
(185, 'XkjIfrqea4n37lOzireC6VQZmRaAzg4YLF7e9RnhWfMxazcLl6W1lCPlTyYU', 'news', '2022-08-15 02:27:23', '2022-08-15 02:27:23'),
(186, 'Z1CLd5O0bNzIByYwvlouT8dij9klvbcKEnNKiq7jKh65sMYLJFSuPdI2Gc4J', 'icon', '2022-08-15 02:28:49', '2022-08-15 02:28:49'),
(187, 'AJmckpmdTkQF579M323y9TxD58TR8RQ1ZXE5vZUUWyl5kHIfGBslxxcdfllI', 'news', '2022-08-15 02:46:09', '2022-08-15 02:46:09'),
(188, '7H298UwYu8ywDvnP57HteFLbEeAAoaDje3nAy9OUu2uMuJHnZIn5jtgVe12X', 'news', '2022-08-15 02:53:08', '2022-08-15 02:53:08'),
(189, 'iFKoXvsUNYJRjhzPa7O2qf4BoXHv6qIllasSmzII09XGtuI86wScUbP7kYVH', 'news', '2022-08-15 03:01:36', '2022-08-15 03:01:36'),
(190, '5FvydMt7CB1jXA51AhJaikgM6a3QgG7yOR4qP9xdguSsTHXiUDCGDs06IBiK', 'news', '2022-08-15 03:03:38', '2022-08-15 03:03:38'),
(191, 'Pw5ZDUDwytCULbFrhN73xMyG1ytaMbzd9ulDbnJNRvxSzZ7BQ1y4c1kgrAEQ', 'news', '2022-08-15 03:04:17', '2022-08-15 03:04:17'),
(192, 'mRABZCRPm2c9cMjCtGfErIwuSeqUnXcNG8iildXRSA5GH9J3r21NaQxKMpZC', 'news', '2022-08-15 03:07:15', '2022-08-15 03:07:15'),
(193, 'opNdkbBBQEcvvOlwDxvLq7WfcdBWMYcecHQXumG9mbrg2J1tMNVjVW0ry31z', 'news', '2022-08-15 03:12:45', '2022-08-15 03:12:45'),
(194, 'N6hwBT7CzLaea1gQH5pRLIZM1HkD3VGKql73my5gKPTH4DZUE5JPJa4V9fl5', 'news', '2022-08-15 03:15:43', '2022-08-15 03:15:43'),
(195, 'l77M4jf6PpxYQSn1YbR96IYtdKmXR6S3XLK01l5VvBBhOYgtRgmc3XChMYWI', 'gallary', '2022-08-15 03:18:06', '2022-08-15 03:18:06'),
(198, 'qbzz55j8eICVyfAJOkHNpWdlHRoLCCMvORBssYIVUsQZkKmHwLguG39ET7po', 'team', '2022-08-15 04:00:50', '2022-08-15 04:00:50'),
(199, 'Yo7WIKEta6sK1fY3HcUQLgNaCIMy1Gn55KcsK2vWaqbecSxIpfCtnHC3ekdC', 'team', '2022-08-15 04:04:59', '2022-08-15 04:04:59'),
(200, '2AlbwrP6yD7ZH3S4YbNigys92bHwKqw5DCKqGEqIQlqxAlXUKTcpge4rgl6E', 'news', '2022-08-15 06:24:37', '2022-08-15 06:24:37'),
(201, 'OmP1QCw5r2ZWD3aPaOjx7Az9NAamikYCuNBBr67q1sbAj6Dt5DZghe3hG8LV', 'slide', '2022-08-15 06:24:54', '2022-08-15 06:24:54'),
(202, 'roG0xWnsbmjKUlMHGNBMhQhplb09QUH1F86hkpFCYD6GXNkRo76sP6jTmuT3', 'slide', '2022-08-15 06:25:29', '2022-08-15 06:25:29'),
(210, 'w9lsOKPjK0eQoeDj1QGOjL4cev2kT98ZYeWSxM7uiWpPxXLNMdWGNARP78pD', 'slide', '2022-08-15 11:56:43', '2022-08-15 11:56:43'),
(209, 'BTvfoOpoN63wYi70uzq0FF0AHF2EihfUTXX8RUzzaoUaEeUrjfjlz2ROZaTe', 'tender', '2022-08-15 07:18:39', '2022-08-15 07:18:39'),
(211, 'psuahlHrFOadwos4DfpkI8PXQDh0QG4eTCOspzwWB3YBLaoboEwXjPYyxCEW', 'slide', '2022-08-15 12:11:43', '2022-08-15 12:11:43'),
(212, '30ymhunouPbwNoXRfZhI70tpXj0ypiJz7luSe79z2ZvsQrLOOkmrJwJfso7r', 'achievement', '2022-08-15 12:12:27', '2022-08-15 12:12:27'),
(213, '6WhES6kQpdOTDdN4PiWya43mbRC0hw9Lu1Ktw8I2qrcuJOMHFXVcPdI5CKLq', 'team', '2022-08-15 12:15:27', '2022-08-15 12:15:27'),
(257, 'BSAsdupp7GQZFBdFWmkYTwBv0U0IYIteIiA0eiDUVmBlqm9StzeucvfoDB2w', 'banner', '2022-08-31 16:33:48', '2022-08-31 16:33:48'),
(258, 'UwTE3AFe3jCDJZGderz2C7wO1YMyclkKEzM1iVPwTCTOocvL7HFw6c9tAw0y', 'banner', '2022-08-31 16:34:29', '2022-08-31 16:34:29'),
(259, 'uQ9o64IZfUskM01Oci2DUGSlIUYtznW97hibZPNVbiAeV9JVRgYVu4bBy0UW', 'profile', '2022-09-09 10:48:02', '2022-09-09 10:48:02'),
(260, 'ctWcLq4m5NLlaG3jclMTVVo1AzlmMFbm75Op2rlnMCWK4saFg6oY2MtRisCm', 'default', '2022-09-09 10:55:17', '2022-09-09 10:55:17'),
(261, 'u4WvxrlIf45YG0Xn7ySPdpUpef43JGWoFfauvyXdmLymJbFdl6s9wfx5O5cw', 'default', '2022-09-09 10:57:17', '2022-09-09 10:57:17'),
(262, 'PkREQxkDxiHV2uX0zw43OfCnchWEnZD37Xur4FQVH1k1XDuSXrUrEdoZcZ10', 'team', '2022-09-09 11:30:10', '2022-09-09 11:30:10'),
(263, 'wmrH89gJb50QlWj5NBzmMcQPALFS0L1XUAcKFFWbeGQv59KOdZsAbnMIiLU8', 'team', '2022-09-09 11:32:40', '2022-09-09 11:32:40'),
(264, 'BhGEuyVBZeJA7YzKmzjFaipj3pW48DcUtsIDMwdVRlzE1EBHj9lvxdv71RU2', 'team', '2022-09-09 11:34:42', '2022-09-09 11:34:42'),
(265, 'wqYISpNc0AWoj00JNx5Xj5kOsxAF5Uq6qQWGzyrrwJgEe8IyvE8UhuVK4kyl', 'team', '2022-09-09 11:44:30', '2022-09-09 11:44:30'),
(266, 'kbawS8qkJWnqzjmWDQG8UL8vyuBebQXqfCjzq8AXsYFZNKqq1Py2vPzBKR26', 'team', '2022-09-09 11:45:26', '2022-09-09 11:45:26'),
(267, 'OBzlkEKdkcSPhvRS3N4m2S3GemYjAXo9tz7K65mXcAJIWsK5q0QwH7VIgw5h', 'team', '2022-09-09 11:52:29', '2022-09-09 11:52:29'),
(268, 'FEiuuNx7Tvc3oLHrKayi6ksvMt16h3V1EnwBHdIxGLtpsW9tJznB1ZGhMykf', 'team', '2022-09-09 11:54:43', '2022-09-09 11:54:43'),
(269, 'y3KtBTD8UQtiL0wfIpKlv0CAibx2Mh1XIUpiMzinaqeDlzFbC5gkN1SzMApW', 'profile', '2022-09-10 10:15:56', '2022-09-10 10:15:56'),
(270, 'aMItP3bbCDBhd1SiqfmEmTzwk01I8PruFiZd7xWAjza0844N3CmTcvDg7PFD', 'profile', '2022-09-10 10:17:16', '2022-09-10 10:17:16'),
(271, 'VyCrdUBBO0ePsqIH7878Hc1eJ80uvjrUOCIU6B7Ez53fz237n4uHDgAx3hcn', 'profile', '2022-09-10 10:20:08', '2022-09-10 10:20:08'),
(272, '1JT5jYn0k0goaetyRbY67JHRyWCSURGc8SYXk5XWfUuYaz1F6VhstSYy8Vqv', 'news', '2022-09-10 10:30:42', '2022-09-10 10:30:42'),
(273, '8y4k2rl2Zg9COXqzPyFOrMQnvjrcW2vZHfBen7o46lUyD08m6C4FNT6VFw0N', 'news', '2022-09-10 10:35:13', '2022-09-10 10:35:13'),
(274, 'RQkkDtfbvLVrSruQsw5AsAcjKXHLnPq1eiKsY89jC4TZBJF1kQvIl27eKxo7', 'news', '2022-09-10 10:35:35', '2022-09-10 10:35:35'),
(275, '8Cg4ni9lxO00Ypcu8c5bhysOGVsTZPzS9h8FyJ0jgOP58pYfyWKadHKBdAl2', 'news', '2022-09-10 10:35:39', '2022-09-10 10:35:39'),
(276, 'UfXott0N0MH1qP14Uvfr0UkhvC5k27iOVL8rzziKk7ZJtPhnDkgZCBsJb6CX', 'default', '2022-09-10 10:35:43', '2022-09-10 10:35:43'),
(277, 'j3QCTsB2UhYUXxV3xvrvdiRO3I7d6nl8r1j6KlkE348Kvduoquer1YA0nL6k', 'slide', '2022-09-10 15:24:42', '2022-09-10 15:24:42'),
(278, '6czXOsuUX4yWbj1ItUvrlpzRcP3yGBZJR9R0AcjASxPvoFFxNP2rvy24MDdC', 'slide', '2022-09-10 15:25:54', '2022-09-10 15:25:54'),
(279, 'a69YIY3nInLUI2DFi5n2kp76gpJw3WVS1wtbyxuWWxhuzeMCECdya75x1PGC', 'slide', '2022-09-10 15:33:02', '2022-09-10 15:33:02'),
(350, 'mfKi2lbskxbUs2qi7IFN8cQs2kD5NDM17vXysCTwINC54NsTUM59nP2Iow6p', 'icon', '2022-09-23 11:46:38', '2022-09-23 11:46:38'),
(348, 'sh3fEkaVx4wAAHObDsX0hQrOkDv515MPbJ7MOp9h42bL2T5MRSDQsGG5QNVc', 'default', '2022-09-22 11:18:42', '2022-09-22 11:18:42'),
(351, '6TXfHZJDuEmBzQJ2k1EYotJ1dS4g7QSuNaFVFZtV8E4fSHprhY2NZzzxYJlQ', 'project', '2022-09-23 11:46:58', '2022-09-23 11:46:58'),
(356, 'EGaRffrcWMQaUk3VpQdalWBDpnszP7OXYckPbikL6bkWB3GD7MqBYzc2hqpt', 'download', '2022-09-26 12:08:34', '2022-09-26 12:08:34'),
(358, 'drOHI9AVSe3Ylc4UeIu5XdbDuBMRqp2JBwZ31K9gCj3w5WVjCWWDDePXZTPn', 'download', '2022-09-26 12:12:16', '2022-09-26 12:12:16'),
(359, 'fWwcUGbzoeyXCYjWuUWWOd5lxWerpePMLoVKlDavugnCuGudN97Tbyj6giep', 'download', '2022-09-28 08:45:24', '2022-09-28 08:45:24'),
(360, 'mmDM9nXix6yi3kOmH1sx9VIDHp6tbkTY1EQmOu08reE0uDbEf8vdZ6v91YGY', 'download', '2022-09-28 08:47:50', '2022-09-28 08:47:50'),
(361, 'zTw2vUoGMKOJYxj61GisTanH6d3AtuVmht17HJZT0jv5GklpTyArW0CkIaC2', 'download', '2022-09-28 09:00:46', '2022-09-28 09:00:46'),
(362, 'SbHS9rbLI8TVwYO9eVRWTxfeD31jLqhuQjSx24KGMmm50wecR0TxjayY55Zi', 'download', '2022-09-28 09:03:44', '2022-09-28 09:03:44'),
(363, 'LObbsOnKou96Sekns7ugNhYx4wWOoOLk1Gqk9kwGNUOttJAnHERtqg0TASMR', 'download', '2022-09-28 09:05:50', '2022-09-28 09:05:50'),
(364, 'iPsm60FCXGAEOq1RFVMiQxJCmGLw6I6wbzhOL52BYrD5ESSGVf38o6f9fvC0', 'download', '2022-09-28 09:10:40', '2022-09-28 09:10:40'),
(365, 'KLOT8OuYxWcB1CCHFWKlDlsoDpskYs8Cfn8iwYlKJX4mhHraeBOLN2V5W6Yr', 'download', '2022-09-28 09:17:45', '2022-09-28 09:17:45'),
(368, '78cDmCAKFtPxlaFW1WdyQIFM99t4iFeczoWRD36PszHbITRZY48Rnhfqilm7', 'download', '2022-09-28 09:29:38', '2022-09-28 09:29:38'),
(367, 'VddbIfcm5AEGypWAVZ9NHcO8LQruqVnnrP4W8MnkxauNMCM9pudxguk7ZLXa', 'download', '2022-09-28 09:24:08', '2022-09-28 09:24:08'),
(369, 'sTfiNUg15ymTetel719MyyLHLVlRu8SVqUtXULJUvcQAp4jTQ1wKIH3s7Ej7', 'download', '2022-09-29 08:07:38', '2022-09-29 08:07:38'),
(388, '3bbpDtXeWWj3njqmuLtyDyCFzYvch4xQu1txhqcUxcQnanFU4EKPsQ83V7Jn', 'download', '2022-12-23 16:42:11', '2022-12-23 16:42:11'),
(504, 'U9hneYPBdfCyyP6qJT20YbYoxPLu7FYiyOSMc3c9DslVd481PeVeJaIM4kfH', 'tender', '2024-01-31 15:17:38', '2024-01-31 15:17:38'),
(505, 'FeKxZKk8LFaID8bAATnb0NFjGelbmGkmcaMmDZ3IAGqqKzSBBoCWLUIYnCKM', 'tender', '2024-01-31 15:23:15', '2024-01-31 15:23:15'),
(533, 'AVBAiltqNEXRmRYPu22QkiWd3kgAJ3wZHGqGwO8dndkHKCvIPfBy1Xw0TXO8', 'attachment', '2024-05-16 07:48:42', '2024-05-16 07:48:42'),
(534, 'HguZu7xDJYxpy6DdBpRJ5Hc6msePhYYHUqM4NOmMUTLvmXb61i9Qv1stUn8q', 'attachment', '2024-05-16 07:50:14', '2024-05-16 07:50:14'),
(535, 'Y9z2gKvMYtvdaKE6aSZ2gL7Pq1WNuxppAOsJrerNeHYZUYCqJIxKq51yPv0k', 'attachment', '2024-05-16 09:26:02', '2024-05-16 09:26:02'),
(536, 'RxXhpMk5dmUyDocUT01DxaaRKtmt7PbARGl77fhCkQ9YvihzwqnS6Z494rFq', 'attachment', '2024-05-16 09:26:56', '2024-05-16 09:26:56'),
(539, 'FnZ5LLplMc2FJfkvOnAK6fePzuKaGmdAdexNXKQg4nKYTZxhh1nKOHxm1ml4', 'cnic', '2024-07-20 06:51:08', '2024-07-20 06:51:08'),
(540, 'R0cbLYR6yGmes5JIB6IoHGK1Y3kASj3edTKkf6KPI1FTqVFzbup9azznOxHA', 'image', '2024-07-20 06:51:15', '2024-07-20 06:51:15'),
(541, 'kvBQdB9KuvtQ5GkurebqM6TqWg2S4ugPCkXvhuLdkzegLVtytHAlnVvcTDbw', 'cnic', '2024-07-20 06:53:37', '2024-07-20 06:53:37'),
(542, 'Vkt8wdu7MF6cA9ZZmXFH4DKHUqZYzq4kqPAw3s1aBqMCZyC3sbyOe9SXMWAP', 'image', '2024-07-20 06:53:45', '2024-07-20 06:53:45'),
(546, '3ftNtD2AUGR5yaxROyoPG5xPhcAP2V4IraMxR9yakTALAYn01cM3zk5tQ8D6', 'image', '2024-07-20 07:13:23', '2024-07-20 07:13:23'),
(545, 'ZSKWYv49vK5AiG3KLLWq0i1bCgcBKbZToRvC7PHMXDYit8uZNK6X1xyUjvEs', 'cnic', '2024-07-20 07:13:20', '2024-07-20 07:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `tenders`
--

CREATE TABLE `tenders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `division` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenders`
--

INSERT INTO `tenders` (`id`, `title`, `description`, `status`, `division`, `telephone_id`, `deleted_at`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'NOTICE INVITING E-BIDDING SYSTEM', '<p><span style=\"color: rgb(70, 66, 66);\">NOTICE INVITING E-BIDDING SYSTEM EXECUTIVE ENGINEER C&amp;W HIGHWAY DIVISION NELLUM </span></p>', 1, NULL, 2, '2022-08-15 13:02:42', '2022-08-13 16:39:39', '2022-08-15 13:02:42', 'tender-example'),
(2, 'Notice Inviting E-tendering  Executive Engineer Highways - Neelum Division', '<p>SINGLE STAGE TWO ENVELOPE E-BIDDING SYSTEM EXECUTIVE ENGINEER Neelum</p>', 1, NULL, 7, '2022-09-16 18:19:14', '2022-08-15 13:05:18', '2022-09-16 18:19:14', 'notice-inviting-through-e-tender'),
(3, 'Notice Inviting E-tendering Executive Engineer Highways - Muzafarabad Division', '<p>REQUEST FOR PROPOSAL (RFP) EXECUTIVE ENGINEER HIGHWAY DIVISION Muzafarabad&nbsp;</p>', 1, NULL, 7, '2022-09-16 18:19:10', '2022-08-15 13:09:17', '2022-09-16 18:19:10', 'notice-inviting-e-tendering-executive-engineer-highways-muzafarabad-division'),
(4, 'NIT District Neelum', NULL, 1, NULL, 7, '2022-09-16 18:19:04', '2022-09-14 14:14:21', '2022-09-16 18:19:04', 'nit-district-neelum'),
(5, 'Invitation for Bids', NULL, 1, NULL, 7, '2022-09-20 01:36:49', '2022-09-16 18:15:32', '2022-09-20 01:36:49', 'notice-inviting-tender-nit'),
(6, 'Invitation for Bids', NULL, 1, NULL, 7, '2022-09-20 01:36:54', '2022-09-19 11:25:48', '2022-09-20 01:36:54', 'notice-inviting-tender-nit-highway-division-muzaffarabad'),
(7, 'Invitation for Bids', NULL, 1, NULL, 7, '2022-09-20 01:36:58', '2022-09-19 11:26:47', '2022-09-20 01:36:58', 'invitation-for-bids-nit-highway-division-muzaffarabad'),
(8, 'Invitation for Bids', NULL, 1, NULL, 7, '2022-09-20 01:37:02', '2022-09-19 11:28:03', '2022-09-20 01:37:02', 'notice-inviting-tender-nit-2'),
(9, 'Invitation for Bids', NULL, 1, NULL, 7, '2022-09-20 01:37:06', '2022-09-19 11:28:45', '2022-09-20 01:37:06', 'notice-invitation-tender-nit'),
(10, 'Invitation for Bids', NULL, 1, NULL, 12, '2022-09-20 01:37:09', '2022-09-19 11:30:30', '2022-09-20 01:37:09', 'invitation-for-bids'),
(11, 'Invitation for Bids', NULL, 1, NULL, 11, '2022-09-20 01:37:12', '2022-09-19 11:33:07', '2022-09-20 01:37:12', 'invitation-for-bids-2'),
(12, 'Invitation for Bids', NULL, 1, NULL, 11, '2022-09-20 01:37:16', '2022-09-19 11:33:43', '2022-09-20 01:37:16', 'invitation-for-bids-3'),
(13, 'Invitation for Bids', NULL, 1, NULL, 14, '2022-09-20 01:37:53', '2022-09-19 11:34:29', '2022-09-20 01:37:53', 'invitation-for-bids-4'),
(14, 'Invitation for Bids', NULL, 1, NULL, 14, '2022-09-20 01:38:06', '2022-09-19 11:34:58', '2022-09-20 01:38:06', 'invitation-for-bids-5'),
(15, 'Invitation for Bids', NULL, 1, NULL, 14, '2022-09-20 01:38:09', '2022-09-19 11:35:27', '2022-09-20 01:38:09', 'invitation-for-bids-6'),
(16, 'Invitation for Bids', NULL, 1, NULL, 14, '2022-09-20 01:38:13', '2022-09-19 11:35:54', '2022-09-20 01:38:13', 'invitation-for-bids-7'),
(17, 'Invitation for Bids', NULL, 1, NULL, 25, '2022-09-20 01:38:16', '2022-09-19 11:36:26', '2022-09-20 01:38:16', 'invitation-for-bids-8'),
(18, 'Invitation for Bids', NULL, 1, NULL, 25, '2022-09-20 01:38:19', '2022-09-19 11:36:59', '2022-09-20 01:38:19', 'invitation-for-bids-9'),
(19, 'Haveli', NULL, 1, NULL, 16, '2022-09-20 01:38:22', '2022-09-19 11:37:49', '2022-09-20 01:38:22', 'haveli'),
(20, 'Invitation for Bids', NULL, 1, NULL, 24, '2022-09-20 01:38:26', '2022-09-19 11:38:23', '2022-09-20 01:38:26', 'invitation-for-bids-10'),
(21, 'Invitation for Bids', NULL, 1, NULL, 24, '2022-09-20 01:38:34', '2022-09-19 11:38:47', '2022-09-20 01:38:34', 'invitation-for-bids-11'),
(22, 'Invitation for Bids', NULL, 1, NULL, 24, '2022-09-20 01:38:49', '2022-09-19 11:39:11', '2022-09-20 01:38:49', 'invitation-for-bids-12'),
(23, 'Invitation for Bids', NULL, 1, NULL, 24, '2022-09-20 01:38:52', '2022-09-19 11:39:36', '2022-09-20 01:38:52', 'invitation-for-bids-13'),
(24, 'NIT Highway Division Bhimber', NULL, 1, NULL, 7, '2022-09-20 01:38:56', '2022-09-19 11:40:11', '2022-09-20 01:38:56', 'invitation-for-bids-14'),
(25, 'Notice Inviting Tender for the Highway Division Pallandri (NIT-001)', NULL, 1, NULL, 7, '2023-01-22 15:34:07', '2022-09-19 11:40:50', '2023-01-22 15:34:07', 'invitation-for-bids-15'),
(26, 'Highway Division Pallandri (NIT-002))', NULL, 1, NULL, 15, '2023-01-22 15:34:13', '2022-09-19 11:41:19', '2023-01-22 15:34:13', 'invitation-for-bids-16'),
(27, 'District Bhimber (NIT-001)', NULL, 1, NULL, 7, '2023-01-22 15:34:16', '2022-09-20 01:46:29', '2023-01-22 15:34:16', 'district-bhimber-nit-001'),
(28, 'Highway Division Kotli (NIT-001)', NULL, 1, NULL, 24, '2023-01-22 15:34:18', '2022-09-20 01:49:57', '2023-01-22 15:34:18', 'highway-division-kotli-nit-001'),
(29, 'Highway Division Kotli (NIT-002)', NULL, 1, NULL, 24, '2023-01-22 15:34:20', '2022-09-20 01:50:34', '2023-01-22 15:34:20', 'highway-division-kotli-nit-002'),
(30, 'Highway Division Kotli (NIT-003)', NULL, 1, NULL, 24, '2023-01-22 15:34:23', '2022-09-20 01:51:21', '2023-01-22 15:34:23', 'highway-division-kotli-nit-003'),
(31, 'Highway Division Neelum (NIT-001)', NULL, 1, NULL, 11, '2023-01-22 15:34:25', '2022-09-20 01:52:14', '2023-01-22 15:34:25', 'highway-division-neelum-nit-001'),
(32, 'Highway Division Neelum (NIT-002)', NULL, 1, NULL, 11, '2023-01-22 15:34:28', '2022-09-20 01:53:01', '2023-01-22 15:34:28', 'highway-division-neelum-nit-002'),
(33, 'Highway Division Haveli (NIT-001)', NULL, 1, NULL, 16, '2023-01-22 15:34:30', '2022-09-20 01:53:52', '2023-01-22 15:34:30', 'highway-division-haveli-nit-001'),
(34, 'Highway Division Rawalakot (NIT-001)', NULL, 1, NULL, 14, '2023-01-22 15:34:33', '2022-09-20 01:54:49', '2023-01-22 15:34:33', 'highway-division-rawalakot-nit-001'),
(35, 'Highway Division Rawalakot (NIT-002)', NULL, 1, NULL, 14, '2023-01-22 15:34:36', '2022-09-20 01:55:38', '2023-01-22 15:34:36', 'highway-division-rawalakot-nit-002'),
(36, 'Highway Division Rawalakot (NIT-003)', NULL, 1, NULL, 14, '2023-01-22 15:34:38', '2022-09-20 01:56:12', '2023-01-22 15:34:38', 'highway-division-rawalakot-nit-003'),
(37, 'Highway Division Rawalakot (NIT-004)', NULL, 1, NULL, 14, '2023-01-22 15:34:41', '2022-09-20 01:56:40', '2023-01-22 15:34:41', 'highway-division-rawalakot-nit-004'),
(38, 'Highway Division Muzaffarabad (NIT-001)', NULL, 1, NULL, 10, '2023-01-22 15:34:44', '2022-09-20 01:57:59', '2023-01-22 15:34:44', 'highway-division-muzaffarabad-nit-001'),
(39, 'Highway Division Muzaffarabad (NIT-002)', NULL, 1, NULL, 10, '2023-01-22 15:34:47', '2022-09-20 01:58:40', '2023-01-22 15:34:47', 'highway-division-muzaffarabad-nit-002'),
(40, 'Highway Division Muzaffarabad (NIT-003)', NULL, 1, NULL, 10, '2023-01-22 15:34:49', '2022-09-20 01:59:26', '2023-01-22 15:34:49', 'highway-division-muzaffarabad-nit-003'),
(41, 'Highway Division Muzaffarabad (NIT-004)', NULL, 1, NULL, 10, '2023-01-22 15:34:52', '2022-09-20 01:59:57', '2023-01-22 15:34:52', 'highway-division-muzaffarabad-nit-004'),
(42, 'Highway Division Mirpur (NIT-001)', NULL, 1, NULL, 25, '2023-01-22 15:34:55', '2022-09-20 02:01:01', '2023-01-22 15:34:55', 'highway-division-mirpur-nit-001'),
(43, 'Highway Division Mirpur (NIT-002)', NULL, 1, NULL, 25, '2023-01-22 15:34:57', '2022-09-20 02:01:36', '2023-01-22 15:34:57', 'highway-division-mirpur-nit-002'),
(44, 'Highway Division Bagh (NIT-001)', NULL, 1, NULL, 13, '2023-01-22 15:35:00', '2022-09-20 02:02:56', '2023-01-22 15:35:00', 'highway-division-bagh-nit-001'),
(45, 'Highway Division Jhelum Valley (NIT-001)', NULL, 1, NULL, 12, '2023-01-22 15:35:03', '2022-09-20 02:03:57', '2023-01-22 15:35:03', 'highway-division-jhelum-valley-nit-001'),
(46, 'NOTICE INVITING E-Tendering - Establishment of Rest Areas along Kohala - Muzaffarabad Road', '<p>Establishment of Rest Areas along Kohala - Muzaffarabad Road</p>', 0, NULL, 7, NULL, '2023-01-16 10:56:56', '2023-03-09 08:34:22', 'notice-inviting-e-tendering'),
(47, 'NOTICE INVITING E-Tendering- Establishment of Rest Areas along Azad Pattan Rawlakot Road, District Poonch', '<p>Establishment of Rest Areas along Azad Pattan Rawlakot Road, District Poonch</p>', 0, NULL, 7, NULL, '2023-01-16 11:01:59', '2023-03-09 08:34:30', 'notice-inviting-e-tendering-2'),
(48, 'Construction of Rest Places Along Kohala Muzaffarabad Road', NULL, 1, NULL, 8, '2023-01-22 15:35:07', '2023-01-22 15:32:20', '2023-01-22 15:35:07', 'construction-of-rest-places-along-kohala-muzaffarabad-road'),
(49, 'Corrigendum Construction of Rest Place along Kohala Muzaffarabad Road', NULL, 0, NULL, 7, NULL, '2023-01-23 10:17:13', '2023-03-09 08:34:38', 'corrigendum-construction-of-rest-place-along-kohala-muzaffarabad-road'),
(50, 'Corrigendum Establishment of Rest Areas along Azad Pattan Rawlakot Road, District Poonch', NULL, 0, NULL, 7, NULL, '2023-01-24 09:48:29', '2023-03-09 08:34:46', 'corrigendum-establishment-of-rest-areas-along-azad-pattan-rawlakot-road-district-poonch'),
(51, 'NOTICE INVITING E-BIDING', NULL, 0, NULL, 7, NULL, '2023-03-09 08:36:03', '2023-04-07 07:41:49', 'notice-inviting-e-biding'),
(52, 'Notice Inviting Tender PHE Haveli', NULL, 0, NULL, 7, NULL, '2023-03-27 12:50:37', '2023-04-14 05:13:47', 'phe-haveli'),
(53, 'Corrigendum Building division Havili', NULL, 0, NULL, 7, NULL, '2023-04-07 07:43:29', '2023-04-14 05:14:00', 'corrigendum-building-division-havili'),
(54, 'E-Bidding Building/Public Health Engineering Division Sudhnuti', NULL, 0, NULL, 7, NULL, '2023-04-14 05:25:30', '2023-05-02 17:57:32', 'e-bidding-building-public-health-engineering-division-sudhnuti'),
(55, 'NIT E-Bidding Building Division Rawalakot', NULL, 0, NULL, 7, NULL, '2023-04-14 09:41:08', '2023-05-26 16:49:38', 'nit-e-bidding-building-division-rawalakot'),
(56, 'Notice Inviting Tender Building Division Bagh', NULL, 0, NULL, 7, NULL, '2023-04-18 11:00:13', '2023-05-26 16:49:59', 'notice-inviting-tender-building-division-bagh'),
(57, 'Corrigendum PHE Division Bagh', NULL, 0, NULL, 7, NULL, '2023-05-02 18:13:40', '2023-05-26 16:51:39', 'corrigendum-phe-division-bagh'),
(58, 'NIT E-Bidding Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-05-15 09:56:39', '2023-05-26 16:51:02', 'nit-e-bidding-highway-division-kotli'),
(59, 'Corrigendum Highway Division Rawalakot (Single Stage Two Envelope)', NULL, 0, NULL, 7, NULL, '2023-05-19 07:09:21', '2023-05-26 16:50:27', 'corrigendum-highway-division-rawalakot-single-stage-two-envelope'),
(60, 'Corrigendum Highway Division Rawalakot (Single State Single Envelope)', NULL, 0, NULL, 7, NULL, '2023-05-19 07:10:59', '2023-05-26 16:51:20', 'corrigendum-highway-division-rawalakot-single-state-single-envelope'),
(61, 'NIT-E-Bidding Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-05-26 16:49:10', '2023-05-26 17:18:23', 'nit-e-bidding-highway-division-kotli-2'),
(62, 'NIT - E-Bidding Bagh Development Authority', NULL, 0, NULL, 7, NULL, '2023-05-26 16:56:42', '2023-06-12 05:19:09', 'nit-e-bidding-bagh-development-authority'),
(63, 'NIT - E-Bidding Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-05-26 17:16:29', '2023-06-12 05:19:19', 'nit-e-bidding-highway-division-muzaffarabad'),
(64, 'NIT - E-Bidding Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-05-26 17:17:21', '2023-06-16 09:06:18', 'nit-e-bidding-highway-division-bagh'),
(65, 'NIT - E-Bidding Bagh Development Authority', NULL, 0, NULL, 7, NULL, '2023-05-31 06:41:16', '2023-06-12 05:19:29', 'nit-e-bidding-bagh-development-authority-2'),
(66, 'NIT E-Bidding Single Stage Single Envelope Highway Division Rawalakot', NULL, 0, NULL, 7, NULL, '2023-06-08 13:06:58', '2023-07-24 05:08:24', 'e-bidding-highway-division-rawalakot'),
(67, 'NIT E - Bidding Single State Two Envelope Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-06-12 05:17:42', '2023-07-21 05:17:36', 'notice-inviting-tenders-e-bidding-bagh-single-state-two-envelope'),
(68, 'NIT E-Bidding Single State Single Envelope Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-06-12 05:18:36', '2023-07-21 05:18:43', 'notice-inviting-e-bidding-tender-single-state-single-envelope'),
(69, 'Corrigendum Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-06-14 11:36:57', '2023-07-21 05:28:18', 'corrigendum-highway-division-bagh'),
(70, 'Corrigendum Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-06-21 08:53:54', '2023-07-17 07:41:09', 'corrigendum-highway-division-kotli'),
(76, 'Notice Inviting Tender E-Bidding (Buildings Division) PP&H Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-07-24 05:13:02', '2023-08-02 08:48:47', 'notice-inviting-tender-e-bidding-buildings-division-pp-h-muzaffarabad'),
(71, 'Tehnical Evaluation Report \"Improvement and Reconditioning of Tatta Pani Goi Road Km -1 to 12 length 12-Km District Kotli', NULL, 0, NULL, 7, NULL, '2023-07-01 17:29:36', '2023-07-15 04:58:49', 'tehnical-evaluation-report-improvement-and-reconditioning-of-tatta-pani-goi-road-km-1-to-12-length-12-km-district-kotli'),
(72, 'Date Extension Corrigendum Single Stage two Envelope Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-07-05 07:14:41', '2023-07-21 05:28:48', 'date-extension-corrigendum-single-stage-two-envelope-highway-division-bagh'),
(73, 'Date Extension Corrigendum Single Stage Single Envelope Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-07-05 07:15:20', '2023-07-21 05:29:39', 'date-extension-corrigendum-single-stage-single-envelope-highway-division-bagh'),
(74, 'Notice Inviting Tender for E-Bidding Building/PHE Division Neelum', NULL, 0, NULL, 7, NULL, '2023-07-05 08:33:34', '2023-07-24 05:08:42', 'notice-inviting-tender-for-e-bidding-building-phe-division-neelum'),
(75, 'NIT for E-Bidding Single Stage One Envelope Highway Division Jhelum Valley', NULL, 0, NULL, 7, NULL, '2023-07-17 07:39:18', '2023-08-02 08:49:24', 'nit-for-e-bidding-single-state-one-envelope-highway-division-jhelum-valley'),
(77, 'Notice Inviting Tender E-Bidding Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-07-24 05:13:53', '2023-08-01 10:18:40', 'notice-inviting-tender-e-bidding-highway-division-muzaffarabad'),
(78, 'Notice Inviting Tender E-Bidding XEN Building/PHE Division Haveli', NULL, 0, NULL, 7, NULL, '2023-08-09 07:05:04', '2023-08-31 15:03:49', 'notice-inviting-tender-xen-building-phe-division-haveli'),
(79, 'Notice Inviting Tender for E-Bidding Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-08-16 12:23:24', '2023-09-08 16:19:50', 'notice-inviting-tender-for-e-bidding-highway-division-bagh'),
(80, 'Notice Inviting Tender for E-Bidding Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-08-18 06:16:21', '2023-08-25 07:50:38', 'notice-inviting-tender-for-e-bidding-highway-division-muzaffarabad'),
(81, 'Notice Inviting Tender for E-Bidding Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-08-31 15:06:21', '2023-09-21 11:34:43', 'notice-inviting-tender-for-e-bidding-highway-division-kotli'),
(82, 'Notice Inviting Tender E-Bidding Public Health Engineering Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-09-08 16:21:23', '2023-10-02 07:08:03', 'notice-inviting-tender-public-health-engineering-division-muzaffarabad'),
(83, 'Notice Inviting Tender for E-Bidding Highway Division Neelum', NULL, 0, NULL, 7, NULL, '2023-09-08 16:36:46', '2023-09-21 11:34:55', 'notice-inviting-tender-for-e-bidding-highway-division-neelum'),
(84, 'NIT for E-Bidding Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-09-14 09:30:12', '2023-10-02 07:09:56', 'nit-for-e-bidding-highway-division-muzaffarabad'),
(85, 'NIT for E-Bidding Highway Division Haveli', NULL, 0, NULL, 7, NULL, '2023-09-18 05:56:17', '2023-10-11 04:21:20', 'nit-for-e-bidding-highway-division-haveli'),
(86, 'Notice Inviting Tender for E-Bidding Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-09-21 11:33:21', '2023-10-02 07:07:39', 'notice-inviting-tender-for-e-bidding-highway-division-bagh-2'),
(87, 'Notice Inviting Tender for E-Bidding Muzaffarabad Development Authority', NULL, 0, NULL, 7, NULL, '2023-09-26 06:10:26', '2023-10-11 04:21:40', 'notice-inviting-tender-for-e-bidding-muzaffarabad-development-authority'),
(88, 'News Alert.!!!    The High Court of Azad Kashmir has issued a stay order on the disbursal of development funds.', NULL, 0, NULL, 7, NULL, '2023-10-11 04:26:40', '2023-10-11 04:26:40', 'news-alert-the-high-court-of-azad-kashmir-has-issued-a-stay-order-on-the-disbursal-of-development-funds'),
(89, 'News Alert.!!!    The High Court of Azad Kashmir has issued a stay order on the disbursal of development funds.', NULL, 1, NULL, 7, '2023-10-11 04:28:16', '2023-10-11 04:26:42', '2023-10-11 04:28:16', 'news-alert-the-high-court-of-azad-kashmir-has-issued-a-stay-order-on-the-disbursal-of-development-funds-2'),
(90, 'Notice Inviting Tenders for E-Bidding Highways Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-10-16 09:14:44', '2023-11-17 06:44:00', 'notice-inviting-tenders-for-e-bidding-highways-division-muzaffarabad'),
(91, 'Notice Inviting Tenders for E-Bidding Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-11-10 06:33:53', '2023-11-29 16:28:05', 'notice-inviting-tenders-for-e-bidding-highway-division-bagh'),
(92, 'NIT for E-Bidding LA-27 Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-11-29 17:06:58', '2024-01-11 09:50:17', 'nit-for-e-bidding-tameer-e-kashmir-programme-la-27-highway-division-muzaffarabad'),
(93, 'NIT for E-Bidding LA-28 Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-11-29 17:08:16', '2024-01-11 09:50:31', 'nit-for-e-bidding-tameer-e-kashmir-programme-la-28-highway-division-muzaffarabad'),
(94, 'NIT for E-Bidding LA-31 Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-11-29 17:09:33', '2024-01-11 09:50:46', 'nit-for-e-bidding-la-31-highway-division-muzaffarabad'),
(95, 'NIT for E-Bidding LA-30 Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2023-11-29 17:10:17', '2024-01-11 09:51:09', 'nit-for-e-bidding-la-30-highway-division-muzaffarabad'),
(96, 'NIT for E-Bidding LA-26 Highway Division Neelum', NULL, 0, NULL, 7, NULL, '2023-11-29 17:11:41', '2024-01-11 09:51:30', 'nit-for-e-bidding-la-26-highway-division-neelum'),
(97, 'NIT for E-Bidding LA-05 & LA-07 Highway Division Bhimber', NULL, 0, NULL, 7, NULL, '2023-11-29 17:13:53', '2024-01-11 09:54:13', 'nit-for-e-bidding-la-05-la-07-highway-division-bhimber'),
(98, 'NIT for E-Bidding LA-08 Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-11-29 17:14:43', '2024-01-11 09:54:27', 'nit-for-e-bidding-la-08-highway-division-kotli'),
(99, 'NIT for E-Bidding LA-09 Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-11-29 17:15:22', '2024-01-11 09:54:45', 'nit-for-e-bidding-la-09-highway-division-kotli'),
(100, 'NIT for E-Bidding LA-10 Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-11-29 17:16:05', '2024-01-11 09:54:59', 'nit-for-e-bidding-la-10-highway-division-kotli'),
(101, 'NIT for E-Bidding LA-11 Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-11-29 17:16:50', '2024-01-11 09:55:11', 'nit-for-e-bidding-la-11-highway-division-kotli'),
(102, 'NIT for E-Bidding LA-12 Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-11-29 17:17:23', '2024-01-11 09:55:24', 'nit-for-e-bidding-la-12-highway-division-kotli'),
(103, 'NIT for E-Bidding LA-13 Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2023-11-29 17:18:16', '2024-01-11 09:55:35', 'nit-for-e-bidding-la-13-highway-division-kotli'),
(104, 'NIT for E-Bidding LA-14 Highway Division BAgh', NULL, 0, NULL, 7, NULL, '2023-12-02 14:02:09', '2024-01-11 09:56:24', 'nit-for-e-bidding-la-14-highway-division-bagh'),
(105, 'NIT for E-Bidding LA-15 Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-12-02 15:15:01', '2024-01-11 09:56:39', 'nit-for-e-bidding-la-15-highway-division-bagh'),
(106, 'NIT for E-Bidding LA-16 Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-12-02 15:16:18', '2024-01-11 10:05:07', 'nit-for-e-bidding-la-16-highway-division-bagh'),
(107, 'NIT for E-Bidding LA-16 Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-12-02 15:17:36', '2024-01-11 10:05:31', 'nit-for-e-bidding-la-16-highway-division-bagh-2'),
(108, 'NIT for E-Bidding LA-17 Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2023-12-02 15:18:10', '2024-01-11 09:49:54', 'nit-for-e-bidding-la-17-highway-division-bagh'),
(109, 'NIT for E-Bidding LA-20 Highway Division Rawalakot', NULL, 0, NULL, 7, NULL, '2023-12-02 15:19:27', '2024-01-11 09:56:53', 'nit-for-e-bidding-la-20-highway-division-rawalakot'),
(110, 'NIT for E-Bidding LA-21 Highway Division Pallandri', NULL, 0, NULL, 7, NULL, '2023-12-02 15:20:28', '2024-01-11 09:57:22', 'nit-for-e-bidding-la-21-highway-division-pallandri'),
(111, 'NIT for E-Bidding LA-22 Highway Division Rawalakot', NULL, 0, NULL, 7, NULL, '2023-12-02 15:21:16', '2024-01-11 09:57:40', 'nit-for-e-bidding-la-22-highway-division-rawalakot'),
(112, 'NIT for E-Bidding LA-22 Highway Division Rawalakot', NULL, 1, NULL, 14, '2023-12-02 15:22:58', '2023-12-02 15:22:36', '2023-12-02 15:22:58', 'nit-for-e-bidding-la-22-highway-division-rawalakot-2'),
(113, 'NIT for E-Bidding LA-32 Highway Division Jhelum Valley', NULL, 0, NULL, 7, NULL, '2023-12-02 15:24:37', '2024-01-11 09:57:53', 'nit-for-e-bidding-la-32-highway-division-jhelum-valley'),
(114, 'NIT for E-Bidding LA-33 Highway Division Jhelum Valley', NULL, 0, NULL, 7, NULL, '2023-12-02 15:25:26', '2024-01-11 09:58:06', 'nit-for-e-bidding-la-33-highway-division-jhelum-valley'),
(115, 'Corrigendum Highway Division Neelum', NULL, 0, NULL, 7, NULL, '2023-12-20 16:22:42', '2024-01-11 09:58:21', 'corrigendum-highway-division-neelum'),
(116, 'Corrigendum Highway Division Pallandri', NULL, 0, NULL, 7, NULL, '2023-12-20 16:23:35', '2024-01-11 09:58:35', 'corrigendum-highway-division-pallandri'),
(117, 'Corrigendum Highway Division Rawalakot', NULL, 0, NULL, 7, NULL, '2023-12-20 16:24:31', '2024-01-11 09:58:48', 'corrigendum-highway-division-rawalakot'),
(118, 'NIT for E-Bidding Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2024-01-16 10:45:49', '2024-01-31 15:13:32', 'nit-for-e-bidding-highway-division-muzaffarabad-2'),
(119, 'NIT for E-Bidding Public Health Engineering Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2024-01-16 10:47:04', '2024-01-31 15:13:56', 'nit-for-e-bidding-public-health-engineering-division-muzaffarabad'),
(120, 'NIT for E-Bidding Highway Division Bagh', NULL, 0, NULL, 7, NULL, '2024-01-16 10:47:56', '2024-01-31 15:14:38', 'nit-for-e-bidding-highway-division-bagh'),
(121, 'NIT for E-Bidding Highway Division Neelum', NULL, 0, NULL, 7, NULL, '2024-02-20 09:51:20', '2024-03-06 18:18:14', 'nit-for-e-bidding-highway-division-neelum'),
(122, 'NIT for E-Bidding Highway Division Rawalakot', NULL, 0, NULL, 7, NULL, '2024-02-20 09:52:25', '2024-03-06 18:18:37', 'nit-for-e-bidding-highway-division-rawalakot'),
(123, 'NIT for E-Bidding Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2024-02-20 09:54:14', '2024-03-06 18:20:21', 'nit-for-e-bidding-highway-division-muzaffarabad-3'),
(124, 'Corrigendum Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2024-02-20 09:54:59', '2024-03-06 18:20:43', 'corrigendum-highway-division-muzaffarabad'),
(125, 'NIT for E-Bidding Highway Division Bhimber', NULL, 0, NULL, 7, NULL, '2024-02-22 09:41:00', '2024-03-21 07:54:48', 'nit-for-e-bidding-highway-division-bhimber'),
(126, 'NIT for E-Bidding Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2024-03-06 18:22:00', '2024-03-22 05:01:55', 'nit-for-e-bidding-highway-division-muzaffarabad-4'),
(127, 'NIT for E-Bidding Highway Division Pallandri', NULL, 0, NULL, 7, NULL, '2024-03-06 18:23:28', '2024-03-22 05:02:18', 'nit-for-e-bidding-highway-division-pallandri'),
(128, 'NIT for E-Bidding Highway Division Pallandri', NULL, 0, NULL, 7, NULL, '2024-03-06 18:24:12', '2024-03-22 05:02:32', 'nit-for-e-bidding-highway-division-pallandri-2'),
(129, 'Notice Inviting Tender for E-Bidding Highway Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2024-03-13 10:29:18', '2024-03-22 05:01:34', 'notice-inviting-tender-for-e-bidding-highway-division-muzaffarabad-2'),
(130, 'NIT for E-Bidding Highway Division M\'abad', NULL, 0, NULL, 7, NULL, '2024-03-22 05:04:22', '2024-04-03 04:58:52', 'nit-for-e-bidding-highway-division-m-abad'),
(131, 'NIT for E-Bidding Highway Division Jhelum Valley', NULL, 0, NULL, 7, NULL, '2024-03-22 05:06:02', '2024-04-21 05:32:15', 'nit-for-e-bidding-highway-division-jhelum-valley'),
(132, 'NIT for E-Bidding Maintenance Division Muzaffarabad', NULL, 0, NULL, 7, NULL, '2024-03-22 05:07:45', '2024-04-21 05:31:33', 'nit-for-e-bidding-maintenance-division-muzaffarabad'),
(133, 'NIT for E-Bidding Highway Division Kotli', NULL, 0, NULL, 7, NULL, '2024-04-03 04:57:54', '2024-04-21 05:31:51', 'nit-for-e-bidding-highway-division-kotli'),
(134, 'NIT for E-Bidding Highway Division Bhimber', NULL, 1, NULL, 27, NULL, '2024-04-21 05:34:00', '2024-04-21 05:34:00', 'nit-for-e-bidding-highway-division-bhimber-2'),
(135, 'NIT for E-Bidding Highway Division Bagh', NULL, 1, NULL, 13, NULL, '2024-04-21 05:34:53', '2024-04-21 05:34:53', 'nit-for-e-bidding-highway-division-bagh-2'),
(136, 'NIT for E-Bidding Public Health Engineering Division Bhimber', NULL, 1, NULL, 45, NULL, '2024-04-21 05:36:01', '2024-04-21 05:36:01', 'nit-for-e-bidding-public-health-engineering-division-bhimber'),
(137, 'Current Roads Status C&W Highways Muzaffarabad Zone', NULL, 1, NULL, 7, '2024-04-22 16:03:27', '2024-04-22 16:01:16', '2024-04-22 16:03:27', 'current-roads-status-c-w-highways-muzaffarabad-zone'),
(138, 'NI', NULL, 0, NULL, 7, NULL, '2024-04-27 17:08:49', '2024-04-27 17:08:49', 'ni'),
(139, 'NIT for E-Bidding Highway Division Rawalakot', NULL, 1, NULL, 14, NULL, '2024-04-27 17:11:03', '2024-04-27 17:11:03', 'nit-for-e-bidding-highway-division-rawalakot-2');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transection_type` bigint UNSIGNED NOT NULL,
  `transection_type_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transection_date` date NOT NULL,
  `description` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transection_type`, `transection_type_id`, `amount`, `transection_date`, `description`, `type`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 6000.00, '2024-07-21', 'Fee payment for fee ID 5. Paid amount: 6000.00', 'credit', 'completed', NULL, '2024-07-21 03:20:09', '2024-07-21 03:20:09'),
(2, 3, 2, 3000.00, '2024-07-21', 'Fee payment for fee ID 4. Paid amount: 3000', 'credit', 'completed', NULL, '2024-07-21 03:20:19', '2024-07-21 03:20:19'),
(3, 3, 2, 23000.00, '2024-07-21', 'dsf', 'debit', 'completed', NULL, '2024-07-21 11:21:28', '2024-07-21 11:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '2022-07-05 07:09:21', '$2y$10$0TYaX4UUGhR6NaxhhGELDuyHRjdnVS8SL90dwDWvxET83CQDlut7K', 'suaSbx3FSUZAPIiMwGSSWgonJ3wJvdwk8gqNqmVhqbCdcKJz2UoeUSOF5Awi', '2022-07-05 02:07:37', '2024-07-20 15:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `id` bigint UNSIGNED NOT NULL,
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lat` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `response`, `lat`, `lng`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"coord\":{\"lon\":71.5785000000000053432813729159533977508544921875,\"lat\":34.00800000000000267164068645797669887542724609375},\"weather\":[{\"id\":721,\"main\":\"Haze\",\"description\":\"haze\",\"icon\":\"50d\"}],\"base\":\"stations\",\"main\":{\"temp\":14.0800000000000000710542735760100185871124267578125,\"feels_like\":12.53999999999999914734871708787977695465087890625,\"temp_min\":14.0800000000000000710542735760100185871124267578125,\"temp_max\":14.0800000000000000710542735760100185871124267578125,\"pressure\":1022,\"humidity\":38},\"visibility\":6000,\"wind\":{\"speed\":2.060000000000000053290705182007513940334320068359375,\"deg\":180},\"clouds\":{\"all\":20},\"dt\":\"02\\/06\\/2024 03:18 PM\",\"sys\":{\"type\":1,\"id\":7590,\"country\":\"PK\",\"sunrise\":\"02\\/06\\/2024 12:07 PM\",\"sunset\":\"02\\/06\\/2024 10:47 PM\"},\"timezone\":18000,\"id\":1168197,\"name\":\"Peshawar\",\"cod\":200}', NULL, NULL, NULL, '2024-02-06 05:18:15', '2024-02-06 05:18:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `achievements_slug_unique` (`slug`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloads_category_id_foreign` (`category_id`);

--
-- Indexes for table `enlisted_departments`
--
ALTER TABLE `enlisted_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_heads`
--
ALTER TABLE `expense_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_registerations`
--
ALTER TABLE `e_registerations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallaries`
--
ALTER TABLE `gallaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallaries_category_id_foreign` (`category_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospitals_category_id_foreign` (`category_id`),
  ADD KEY `hospitals_district_id_foreign` (`district_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Indexes for table `newstypes`
--
ALTER TABLE `newstypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD UNIQUE KEY `pages_loadwithlink_unique` (`loadwithlink`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `permissions_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_slug_unique` (`slug`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roads`
--
ALTER TABLE `roads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roads_telephone_id_foreign` (`telephone_id`);

--
-- Indexes for table `road_infos`
--
ALTER TABLE `road_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `road_infos_district_id_foreign` (`district_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamtypes`
--
ALTER TABLE `teamtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telephones`
--
ALTER TABLE `telephones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temporary_files`
--
ALTER TABLE `temporary_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenders`
--
ALTER TABLE `tenders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenders_slug_unique` (`slug`),
  ADD KEY `tenders_telephone_id_foreign` (`telephone_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `enlisted_departments`
--
ALTER TABLE `enlisted_departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_heads`
--
ALTER TABLE `expense_heads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `e_registerations`
--
ALTER TABLE `e_registerations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallaries`
--
ALTER TABLE `gallaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `newstypes`
--
ALTER TABLE `newstypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roads`
--
ALTER TABLE `roads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `road_infos`
--
ALTER TABLE `road_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teamtypes`
--
ALTER TABLE `teamtypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telephones`
--
ALTER TABLE `telephones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `temporary_files`
--
ALTER TABLE `temporary_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `tenders`
--
ALTER TABLE `tenders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `road_infos`
--
ALTER TABLE `road_infos`
  ADD CONSTRAINT `road_infos_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
