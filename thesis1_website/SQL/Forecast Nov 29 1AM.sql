-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2023 at 01:08 AM
-- Server version: 10.6.16-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbndatabase`
--

DELIMITER $$
--
-- Procedures
--
$$

$$

$$

$$

$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `audittrailmarketing`
--

CREATE TABLE `audittrailmarketing` (
  `ID` int(11) NOT NULL,
  `DateAction` datetime NOT NULL,
  `UserID` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audittrailmarketing`
--

INSERT INTO `audittrailmarketing` (`ID`, `DateAction`, `UserID`, `Description`) VALUES
(1, '2023-10-30 19:09:39', '1', 'Confirm Stock - TrackingID: 1'),
(2, '2023-10-31 11:27:02', '1', 'KBN Manual Create Account - Bryan Ken S Altes'),
(3, '2023-10-31 13:13:10', '1', 'Approved Order - Reference #: ref1'),
(4, '2023-10-31 13:13:28', '1', 'Approved Order - Reference #: ref2'),
(5, '2023-10-31 13:13:48', '1', 'Approved Order - Reference #: ref3'),
(6, '2023-10-31 13:41:53', '1', 'KBN Manual Create Account - Miguel Antonio  A Besa'),
(7, '2023-10-31 13:47:43', '1', 'Approved Order - Reference #: ref4'),
(8, '2023-10-31 14:05:58', '1', 'KBN Product Archive - Age Eraser Soap(135g)'),
(9, '2023-11-01 22:18:14', '1', 'Approved Order - Reference #: ref6'),
(10, '2023-11-01 23:16:43', '1', 'Approved Order - Reference #: ref7'),
(11, '2023-11-03 12:12:39', '1', 'KBN Manual Create Account - Nola D Schmidt'),
(12, '2023-11-03 12:33:01', '1', 'Confirm Stock - TrackingID: 2'),
(13, '2023-11-05 23:14:37', '1', 'Rebranding Add Product to admin#253 - Anti-Aging Serum (30ml)'),
(14, '2023-11-05 23:24:40', '1', 'Rebranding Add Product to admin#253 - Moisturizing Cream (50ml)'),
(15, '2023-11-05 23:33:04', '1', 'Rebranding Add Product to admin#253 - Hydrating Toner (200ml)'),
(16, '2023-11-07 20:47:59', '1', 'KBN Manual Create Account - Amanda Mag Mason'),
(17, '2023-11-07 22:42:24', '1', 'KBN Manual Create Account - Rizal P Jose'),
(18, '2023-11-08 01:30:08', '1', 'Rebranding Product Archive - Anti-Aging Serum (30ml)'),
(19, '2023-11-08 01:31:05', '1', 'Rebranding Product Restore - Anti-Aging Serum (30ml)'),
(20, '2023-11-08 01:40:03', '1', 'Rebranding Product Archive - Anti-Aging Serum (30ml)'),
(21, '2023-11-08 01:40:08', '1', 'Rebranding Product Restore - Anti-Aging Serum (30ml)'),
(22, '2023-11-08 19:56:55', '1', 'KBN Manual Create Account - raven a berenguila'),
(23, '2023-11-09 22:38:12', '1', 'Rebranding Product Archive - Anti-Aging Serum (30ml)'),
(24, '2023-11-09 22:38:17', '1', 'Rebranding Product Restore - Anti-Aging Serum (30ml)'),
(25, '2023-11-11 02:08:32', '1', 'KBN Manual Create Account - test test test'),
(26, '2023-11-11 02:18:10', '1', 'KBN Manual Create Account - Bryan Ken S Altes'),
(27, '2023-11-11 02:21:44', '1', 'KBN Manual Create Account - TestF TestM TestL'),
(28, '2023-11-11 05:53:34', '1', 'Approved Order - Reference #: ref8'),
(29, '2023-11-12 10:08:15', '1', 'Approved Order - Reference #: ref9'),
(30, '2023-11-12 16:15:17', '1', 'Approved Order - Reference #: ref10'),
(31, '2023-11-14 14:13:30', '1', 'Confirm Stock - TrackingID: 6'),
(32, '2023-11-15 09:54:49', '1', 'Approved Order - Reference #: ref11'),
(33, '2023-11-15 11:09:03', '1', 'KBN Manual Create Account - asd as asda'),
(34, '2023-11-18 02:25:25', '1', 'KBN Product Archive - Toner(60ml)'),
(35, '2023-11-18 02:25:34', '1', 'KBN Product Restore - Toner(60ml)'),
(36, '2023-11-18 02:25:37', '1', 'KBN Product Restore - Age Eraser Soap(135g)'),
(37, '2023-11-18 02:35:27', '1', 'Approved Order - Reference #: ref15'),
(38, '2023-11-19 00:52:55', '1', 'Approved Order - Reference #: ref14'),
(39, '2023-11-19 13:32:02', '1', 'Add Item: Packaging - Clear Plastic'),
(40, '2023-11-20 01:08:35', '1', 'Approved Order - Reference #: ref16'),
(41, '2023-11-20 01:08:39', '1', 'Approved Order - Reference #: ref17'),
(42, '2023-11-20 01:08:44', '1', 'Approved Order - Reference #: ref18'),
(43, '2023-11-20 01:08:49', '1', 'Approved Order - Reference #: ref19'),
(44, '2023-11-20 01:08:53', '1', 'Approved Order - Reference #: ref20'),
(45, '2023-11-20 01:09:00', '1', 'Approved Order - Reference #: ref21'),
(46, '2023-11-20 01:09:06', '1', 'Approved Order - Reference #: ref22'),
(47, '2023-11-20 01:09:11', '1', 'Approved Order - Reference #: ref23'),
(48, '2023-11-20 01:09:14', '1', 'Approved Order - Reference #: ref24'),
(49, '2023-11-20 01:09:17', '1', 'Approved Order - Reference #: ref25'),
(50, '2023-11-20 01:09:22', '1', 'Approved Order - Reference #: ref26'),
(51, '2023-11-20 01:09:25', '1', 'Approved Order - Reference #: ref27'),
(52, '2023-11-20 01:09:30', '1', 'Approved Order - Reference #: ref28'),
(53, '2023-11-20 01:09:33', '1', 'Approved Order - Reference #: ref29'),
(54, '2023-11-20 01:20:07', '1', 'Approved Order - Reference #: ref30'),
(55, '2023-11-20 01:26:12', '1', 'Approved Order - Reference #: ref31'),
(56, '2023-11-20 20:56:31', '1', 'Approved Order - Reference #: ref39'),
(57, '2023-11-20 20:56:34', '1', 'Approved Order - Reference #: ref38'),
(58, '2023-11-20 20:56:38', '1', 'Approved Order - Reference #: ref37'),
(59, '2023-11-20 20:56:41', '1', 'Approved Order - Reference #: ref36'),
(60, '2023-11-20 20:56:45', '1', 'Approved Order - Reference #: ref35'),
(61, '2023-11-20 20:56:49', '1', 'Approved Order - Reference #: ref34'),
(62, '2023-11-20 20:56:52', '1', 'Approved Order - Reference #: ref33'),
(63, '2023-11-20 20:56:55', '1', 'Approved Order - Reference #: ref32'),
(64, '2023-11-20 22:51:46', '1', 'Approved Order - Reference #: ref40'),
(65, '2023-11-20 22:51:50', '1', 'Approved Order - Reference #: ref41'),
(66, '2023-11-20 22:51:57', '1', 'Approved Order - Reference #: ref42'),
(67, '2023-11-20 22:52:02', '1', 'Approved Order - Reference #: ref43'),
(68, '2023-11-20 22:52:06', '1', 'Approved Order - Reference #: ref44'),
(69, '2023-11-20 22:52:10', '1', 'Approved Order - Reference #: ref45'),
(70, '2023-11-20 22:52:13', '1', 'Approved Order - Reference #: ref46'),
(71, '2023-11-20 22:52:17', '1', 'Approved Order - Reference #: ref47'),
(72, '2023-11-20 22:52:20', '1', 'Approved Order - Reference #: ref48'),
(73, '2023-11-20 22:52:24', '1', 'Approved Order - Reference #: ref49'),
(74, '2023-11-20 22:52:27', '1', 'Approved Order - Reference #: ref50'),
(75, '2023-11-20 22:52:32', '1', 'Approved Order - Reference #: ref51'),
(76, '2023-11-20 22:52:43', '1', 'Approved Order - Reference #: ref52'),
(77, '2023-11-20 22:53:24', '1', 'Approved Order - Reference #: ref53'),
(78, '2023-11-20 22:53:28', '1', 'Approved Order - Reference #: ref54'),
(79, '2023-11-20 22:53:31', '1', 'Approved Order - Reference #: ref55'),
(80, '2023-11-20 22:53:34', '1', 'Approved Order - Reference #: ref56'),
(81, '2023-11-20 22:53:38', '1', 'Approved Order - Reference #: ref57'),
(82, '2023-11-20 22:53:42', '1', 'Approved Order - Reference #: ref58'),
(83, '2023-11-20 22:53:46', '1', 'Approved Order - Reference #: ref59'),
(84, '2023-11-20 22:53:50', '1', 'Approved Order - Reference #: ref60'),
(85, '2023-11-22 17:27:20', '1', 'Approved Order - Reference #: ref63'),
(86, '2023-11-22 17:28:58', '1', 'Approved Order - Reference #: ref64'),
(87, '2023-11-22 20:51:16', '1', 'Approved Order - Reference #: ref68'),
(88, '2023-11-22 23:28:30', '1', 'Approved Order - Reference #: ref65'),
(89, '2023-11-22 23:28:44', '1', 'Approved Order - Reference #: ref70'),
(90, '2023-11-22 23:28:49', '1', 'Approved Order - Reference #: ref69'),
(91, '2023-11-22 23:28:55', '1', 'Approved Order - Reference #: ref67'),
(92, '2023-11-22 23:29:00', '1', 'Approved Order - Reference #: ref66'),
(93, '2023-11-23 03:50:52', '1', 'Approved Order - Reference #: ref71'),
(94, '2023-11-27 00:01:35', '1', 'KBN Product Added - Test(Testtt)'),
(95, '2023-11-27 00:08:37', '1', 'KBN Product - Update Test(Testtt)'),
(96, '2023-11-27 00:44:05', '1', 'KBN Manual Create Account - Armand Er French'),
(97, '2023-11-27 00:52:01', '1', 'KBN Manual Create Account - Armand Er French'),
(98, '2023-11-27 18:18:57', '1', 'KBN Manual Create Account - Bryan Ken S Altes'),
(99, '2023-11-27 18:21:30', '1', 'KBN Manual Create Account - Carson It Waller'),
(100, '2023-11-28 13:36:54', '1', 'KBN Manual Create Account - Dahlia Fu Brennan'),
(101, '2023-11-28 13:41:56', '1', 'Rebranding Add Product to lidew27774#732 - Test (1ML)'),
(102, '2023-11-28 21:25:55', '1', 'Confirm Stock - TrackingID: 9'),
(103, '2023-11-28 22:39:45', '1', 'Approved Order - Reference #: ref72'),
(104, '2023-11-28 22:39:50', '1', 'Approved Order - Reference #: ref73'),
(105, '2023-11-28 22:39:52', '1', 'Approved Order - Reference #: ref74'),
(106, '2023-11-28 22:39:58', '1', 'Approved Order - Reference #: ref75'),
(107, '2023-11-28 22:40:01', '1', 'Approved Order - Reference #: ref76'),
(108, '2023-11-28 22:40:04', '1', 'Approved Order - Reference #: ref77'),
(109, '2023-11-28 22:40:13', '1', 'Approved Order - Reference #: ref78'),
(110, '2023-11-28 22:40:16', '1', 'Approved Order - Reference #: ref79'),
(111, '2023-11-28 22:40:21', '1', 'Approved Order - Reference #: ref80'),
(112, '2023-11-28 22:40:24', '1', 'Approved Order - Reference #: ref81'),
(113, '2023-11-28 22:40:27', '1', 'Approved Order - Reference #: ref82'),
(114, '2023-11-28 22:40:50', '1', 'Approved Order - Reference #: ref83'),
(115, '2023-11-28 22:40:53', '1', 'Approved Order - Reference #: ref84'),
(116, '2023-11-28 22:40:56', '1', 'Approved Order - Reference #: ref85'),
(117, '2023-11-28 22:40:59', '1', 'Approved Order - Reference #: ref86'),
(118, '2023-11-28 22:41:01', '1', 'Approved Order - Reference #: ref87'),
(119, '2023-11-28 22:41:04', '1', 'Approved Order - Reference #: ref88'),
(120, '2023-11-28 22:41:11', '1', 'Approved Order - Reference #: ref89'),
(121, '2023-11-28 22:41:14', '1', 'Approved Order - Reference #: ref90'),
(122, '2023-11-28 22:41:16', '1', 'Approved Order - Reference #: ref91'),
(123, '2023-11-28 22:41:19', '1', 'Approved Order - Reference #: ref92'),
(124, '2023-11-28 22:41:21', '1', 'Approved Order - Reference #: ref93'),
(125, '2023-11-28 22:41:26', '1', 'Approved Order - Reference #: ref94'),
(126, '2023-11-28 22:41:28', '1', 'Approved Order - Reference #: ref95'),
(127, '2023-11-28 22:41:31', '1', 'Approved Order - Reference #: ref96'),
(128, '2023-11-28 22:41:33', '1', 'Approved Order - Reference #: ref97'),
(129, '2023-11-28 22:41:36', '1', 'Approved Order - Reference #: ref98'),
(130, '2023-11-28 22:41:40', '1', 'Approved Order - Reference #: ref99'),
(131, '2023-11-28 22:41:42', '1', 'Approved Order - Reference #: ref100'),
(132, '2023-11-28 22:41:45', '1', 'Approved Order - Reference #: ref101'),
(133, '2023-11-28 22:41:47', '1', 'Approved Order - Reference #: ref102'),
(134, '2023-11-28 22:41:50', '1', 'Approved Order - Reference #: ref103'),
(135, '2023-11-28 22:41:52', '1', 'Approved Order - Reference #: ref104'),
(136, '2023-11-28 22:41:59', '1', 'Approved Order - Reference #: ref105'),
(137, '2023-11-28 22:42:03', '1', 'Approved Order - Reference #: ref106'),
(138, '2023-11-28 22:42:05', '1', 'Approved Order - Reference #: ref107'),
(139, '2023-11-28 22:42:08', '1', 'Approved Order - Reference #: ref108'),
(140, '2023-11-28 22:42:11', '1', 'Approved Order - Reference #: ref109'),
(141, '2023-11-28 22:42:24', '1', 'Approved Order - Reference #: ref110'),
(142, '2023-11-28 22:42:29', '1', 'Approved Order - Reference #: ref111'),
(143, '2023-11-28 22:42:32', '1', 'Approved Order - Reference #: ref112'),
(144, '2023-11-28 22:42:34', '1', 'Approved Order - Reference #: ref113'),
(145, '2023-11-28 22:42:37', '1', 'Approved Order - Reference #: ref114'),
(146, '2023-11-28 22:42:40', '1', 'Approved Order - Reference #: ref115'),
(147, '2023-11-28 22:42:48', '1', 'Approved Order - Reference #: ref116'),
(148, '2023-11-28 22:42:54', '1', 'Approved Order - Reference #: ref117'),
(149, '2023-11-28 22:43:00', '1', 'Approved Order - Reference #: ref118'),
(150, '2023-11-28 22:43:04', '1', 'Approved Order - Reference #: ref119'),
(151, '2023-11-28 22:43:08', '1', 'Approved Order - Reference #: ref120'),
(152, '2023-11-28 22:43:12', '1', 'Approved Order - Reference #: ref121'),
(153, '2023-11-28 22:43:16', '1', 'Approved Order - Reference #: ref122'),
(154, '2023-11-28 22:43:19', '1', 'Approved Order - Reference #: ref123'),
(155, '2023-11-28 22:43:21', '1', 'Approved Order - Reference #: ref124'),
(156, '2023-11-28 22:43:24', '1', 'Approved Order - Reference #: ref125'),
(157, '2023-11-28 22:43:27', '1', 'Approved Order - Reference #: ref126'),
(158, '2023-11-28 22:43:32', '1', 'Approved Order - Reference #: ref127'),
(159, '2023-11-28 22:43:35', '1', 'Approved Order - Reference #: ref128'),
(160, '2023-11-28 22:43:38', '1', 'Approved Order - Reference #: ref129'),
(161, '2023-11-28 22:43:42', '1', 'Approved Order - Reference #: ref130'),
(162, '2023-11-28 22:43:45', '1', 'Approved Order - Reference #: ref131'),
(163, '2023-11-28 22:43:48', '1', 'Approved Order - Reference #: ref132'),
(164, '2023-11-28 22:43:50', '1', 'Approved Order - Reference #: ref133'),
(165, '2023-11-28 22:43:53', '1', 'Approved Order - Reference #: ref134'),
(166, '2023-11-28 22:43:57', '1', 'Approved Order - Reference #: ref135'),
(167, '2023-11-28 22:43:59', '1', 'Approved Order - Reference #: ref136'),
(168, '2023-11-28 22:44:01', '1', 'Approved Order - Reference #: ref137'),
(169, '2023-11-28 22:44:04', '1', 'Approved Order - Reference #: ref138'),
(170, '2023-11-28 22:44:07', '1', 'Approved Order - Reference #: ref139'),
(171, '2023-11-28 22:44:10', '1', 'Approved Order - Reference #: ref140'),
(172, '2023-11-28 22:44:12', '1', 'Approved Order - Reference #: ref141'),
(173, '2023-11-28 22:44:15', '1', 'Approved Order - Reference #: ref142'),
(174, '2023-11-28 22:44:19', '1', 'Approved Order - Reference #: ref143'),
(175, '2023-11-28 22:44:22', '1', 'Approved Order - Reference #: ref144'),
(176, '2023-11-28 22:44:24', '1', 'Approved Order - Reference #: ref145'),
(177, '2023-11-28 22:44:28', '1', 'Approved Order - Reference #: ref146'),
(178, '2023-11-28 22:44:30', '1', 'Approved Order - Reference #: ref147'),
(179, '2023-11-28 22:44:33', '1', 'Approved Order - Reference #: ref148'),
(180, '2023-11-28 22:44:40', '1', 'Approved Order - Reference #: ref149'),
(181, '2023-11-28 22:44:42', '1', 'Approved Order - Reference #: ref150'),
(182, '2023-11-28 22:44:45', '1', 'Approved Order - Reference #: ref151'),
(183, '2023-11-28 22:44:50', '1', 'Approved Order - Reference #: ref152'),
(184, '2023-11-28 22:44:53', '1', 'Approved Order - Reference #: ref153'),
(185, '2023-11-28 22:44:57', '1', 'Approved Order - Reference #: ref154'),
(186, '2023-11-28 22:45:00', '1', 'Approved Order - Reference #: ref155'),
(187, '2023-11-28 23:53:35', '1', 'Approved Order - Reference #: ref156'),
(188, '2023-11-28 23:53:37', '1', 'Approved Order - Reference #: ref157'),
(189, '2023-11-28 23:53:42', '1', 'Approved Order - Reference #: ref158'),
(190, '2023-11-28 23:53:44', '1', 'Approved Order - Reference #: ref159'),
(191, '2023-11-28 23:53:47', '1', 'Approved Order - Reference #: ref160'),
(192, '2023-11-28 23:53:50', '1', 'Approved Order - Reference #: ref161'),
(193, '2023-11-28 23:53:53', '1', 'Approved Order - Reference #: ref162'),
(194, '2023-11-28 23:53:55', '1', 'Approved Order - Reference #: ref163'),
(195, '2023-11-28 23:53:58', '1', 'Approved Order - Reference #: ref164'),
(196, '2023-11-28 23:54:00', '1', 'Approved Order - Reference #: ref165'),
(197, '2023-11-28 23:54:05', '1', 'Approved Order - Reference #: ref166'),
(198, '2023-11-28 23:54:07', '1', 'Approved Order - Reference #: ref167'),
(199, '2023-11-28 23:54:10', '1', 'Approved Order - Reference #: ref168'),
(200, '2023-11-28 23:54:12', '1', 'Approved Order - Reference #: ref169'),
(201, '2023-11-28 23:54:16', '1', 'Approved Order - Reference #: ref170'),
(202, '2023-11-28 23:54:19', '1', 'Approved Order - Reference #: ref171'),
(203, '2023-11-28 23:54:21', '1', 'Approved Order - Reference #: ref172'),
(204, '2023-11-28 23:54:23', '1', 'Approved Order - Reference #: ref173'),
(205, '2023-11-28 23:54:26', '1', 'Approved Order - Reference #: ref174'),
(206, '2023-11-28 23:54:30', '1', 'Approved Order - Reference #: ref175'),
(207, '2023-11-28 23:54:32', '1', 'Approved Order - Reference #: ref176'),
(208, '2023-11-28 23:54:34', '1', 'Approved Order - Reference #: ref177'),
(209, '2023-11-28 23:54:37', '1', 'Approved Order - Reference #: ref178'),
(210, '2023-11-28 23:54:39', '1', 'Approved Order - Reference #: ref179'),
(211, '2023-11-28 23:54:43', '1', 'Approved Order - Reference #: ref180'),
(212, '2023-11-28 23:54:47', '1', 'Approved Order - Reference #: ref181'),
(213, '2023-11-28 23:54:49', '1', 'Approved Order - Reference #: ref182'),
(214, '2023-11-28 23:54:52', '1', 'Approved Order - Reference #: ref183'),
(215, '2023-11-28 23:54:56', '1', 'Approved Order - Reference #: ref184'),
(216, '2023-11-28 23:54:58', '1', 'Approved Order - Reference #: ref185'),
(217, '2023-11-28 23:55:01', '1', 'Approved Order - Reference #: ref186'),
(218, '2023-11-28 23:55:08', '1', 'Approved Order - Reference #: ref187'),
(219, '2023-11-28 23:55:11', '1', 'Approved Order - Reference #: ref188'),
(220, '2023-11-28 23:55:13', '1', 'Approved Order - Reference #: ref189'),
(221, '2023-11-28 23:55:15', '1', 'Approved Order - Reference #: ref190'),
(222, '2023-11-28 23:55:18', '1', 'Approved Order - Reference #: ref191'),
(223, '2023-11-28 23:55:21', '1', 'Approved Order - Reference #: ref192'),
(224, '2023-11-28 23:55:23', '1', 'Approved Order - Reference #: ref193'),
(225, '2023-11-28 23:55:26', '1', 'Approved Order - Reference #: ref194'),
(226, '2023-11-28 23:55:29', '1', 'Approved Order - Reference #: ref195'),
(227, '2023-11-28 23:55:32', '1', 'Approved Order - Reference #: ref196'),
(228, '2023-11-28 23:55:34', '1', 'Approved Order - Reference #: ref197'),
(229, '2023-11-28 23:55:40', '1', 'Approved Order - Reference #: ref198'),
(230, '2023-11-28 23:55:44', '1', 'Approved Order - Reference #: ref199'),
(231, '2023-11-28 23:55:46', '1', 'Approved Order - Reference #: ref200'),
(232, '2023-11-28 23:55:54', '1', 'Approved Order - Reference #: ref202'),
(233, '2023-11-28 23:55:56', '1', 'Approved Order - Reference #: ref203'),
(234, '2023-11-28 23:56:00', '1', 'Approved Order - Reference #: ref204'),
(235, '2023-11-28 23:56:03', '1', 'Approved Order - Reference #: ref205'),
(236, '2023-11-28 23:56:07', '1', 'Approved Order - Reference #: ref206'),
(237, '2023-11-28 23:56:10', '1', 'Approved Order - Reference #: ref207'),
(238, '2023-11-28 23:56:12', '1', 'Approved Order - Reference #: ref208'),
(239, '2023-11-28 23:56:15', '1', 'Approved Order - Reference #: ref209'),
(240, '2023-11-28 23:56:19', '1', 'Approved Order - Reference #: ref210'),
(241, '2023-11-28 23:56:23', '1', 'Approved Order - Reference #: ref211'),
(242, '2023-11-28 23:56:25', '1', 'Approved Order - Reference #: ref212'),
(243, '2023-11-28 23:56:30', '1', 'Approved Order - Reference #: ref214'),
(244, '2023-11-28 23:56:33', '1', 'Approved Order - Reference #: ref215'),
(245, '2023-11-28 23:56:47', '1', 'Approved Order - Reference #: ref216'),
(246, '2023-11-28 23:56:49', '1', 'Approved Order - Reference #: ref217'),
(247, '2023-11-28 23:56:52', '1', 'Approved Order - Reference #: ref218'),
(248, '2023-11-28 23:56:55', '1', 'Approved Order - Reference #: ref219'),
(249, '2023-11-28 23:57:38', '1', 'Approved Order - Reference #: ref220'),
(250, '2023-11-29 00:16:58', '1', 'Confirm Stock - TrackingID: 10'),
(251, '2023-11-29 00:40:52', '1', 'Approved Order - Reference #: ref201'),
(252, '2023-11-29 00:40:57', '1', 'Approved Order - Reference #: ref213'),
(253, '2023-11-29 00:41:00', '1', 'Approved Order - Reference #: ref221'),
(254, '2023-11-29 00:41:02', '1', 'Approved Order - Reference #: ref222'),
(255, '2023-11-29 00:41:05', '1', 'Approved Order - Reference #: ref223'),
(256, '2023-11-29 00:41:07', '1', 'Approved Order - Reference #: ref224'),
(257, '2023-11-29 00:41:11', '1', 'Approved Order - Reference #: ref225'),
(258, '2023-11-29 00:41:13', '1', 'Approved Order - Reference #: ref226'),
(259, '2023-11-29 00:41:15', '1', 'Approved Order - Reference #: ref227'),
(260, '2023-11-29 00:41:17', '1', 'Approved Order - Reference #: ref228'),
(261, '2023-11-29 00:41:20', '1', 'Approved Order - Reference #: ref229'),
(262, '2023-11-29 00:41:23', '1', 'Approved Order - Reference #: ref230'),
(263, '2023-11-29 00:42:17', '1', 'Approved Order - Reference #: ref231'),
(264, '2023-11-29 00:42:20', '1', 'Approved Order - Reference #: ref232'),
(265, '2023-11-29 00:42:23', '1', 'Approved Order - Reference #: ref233'),
(266, '2023-11-29 00:42:25', '1', 'Approved Order - Reference #: ref234'),
(267, '2023-11-29 00:42:28', '1', 'Approved Order - Reference #: ref235'),
(268, '2023-11-29 00:42:33', '1', 'Approved Order - Reference #: ref236'),
(269, '2023-11-29 00:42:36', '1', 'Approved Order - Reference #: ref237'),
(270, '2023-11-29 00:42:38', '1', 'Approved Order - Reference #: ref238'),
(271, '2023-11-29 00:42:41', '1', 'Approved Order - Reference #: ref239'),
(272, '2023-11-29 00:42:43', '1', 'Approved Order - Reference #: ref240'),
(273, '2023-11-29 00:42:46', '1', 'Approved Order - Reference #: ref241'),
(274, '2023-11-29 00:42:49', '1', 'Approved Order - Reference #: ref242'),
(275, '2023-11-29 00:42:51', '1', 'Approved Order - Reference #: ref243'),
(276, '2023-11-29 00:42:53', '1', 'Approved Order - Reference #: ref244'),
(277, '2023-11-29 00:42:56', '1', 'Approved Order - Reference #: ref245'),
(278, '2023-11-29 00:42:59', '1', 'Approved Order - Reference #: ref246'),
(279, '2023-11-29 00:43:01', '1', 'Approved Order - Reference #: ref247'),
(280, '2023-11-29 00:43:05', '1', 'Approved Order - Reference #: ref248'),
(281, '2023-11-29 00:43:09', '1', 'Approved Order - Reference #: ref249'),
(282, '2023-11-29 00:43:11', '1', 'Approved Order - Reference #: ref250'),
(283, '2023-11-29 00:43:13', '1', 'Approved Order - Reference #: ref251'),
(284, '2023-11-29 00:43:16', '1', 'Approved Order - Reference #: ref252'),
(285, '2023-11-29 00:43:19', '1', 'Approved Order - Reference #: ref253'),
(286, '2023-11-29 00:43:21', '1', 'Approved Order - Reference #: ref254'),
(287, '2023-11-29 00:43:23', '1', 'Approved Order - Reference #: ref255'),
(288, '2023-11-29 00:43:26', '1', 'Approved Order - Reference #: ref256'),
(289, '2023-11-29 00:43:29', '1', 'Approved Order - Reference #: ref257'),
(290, '2023-11-29 00:43:31', '1', 'Approved Order - Reference #: ref258'),
(291, '2023-11-29 00:43:34', '1', 'Approved Order - Reference #: ref259'),
(292, '2023-11-29 00:43:37', '1', 'Approved Order - Reference #: ref260'),
(293, '2023-11-29 00:43:40', '1', 'Approved Order - Reference #: ref261'),
(294, '2023-11-29 00:43:43', '1', 'Approved Order - Reference #: ref262'),
(295, '2023-11-29 00:43:46', '1', 'Approved Order - Reference #: ref263'),
(296, '2023-11-29 00:43:49', '1', 'Approved Order - Reference #: ref264'),
(297, '2023-11-29 00:43:51', '1', 'Approved Order - Reference #: ref265'),
(298, '2023-11-29 00:43:54', '1', 'Approved Order - Reference #: ref266'),
(299, '2023-11-29 00:43:59', '1', 'Approved Order - Reference #: ref267'),
(300, '2023-11-29 00:44:02', '1', 'Approved Order - Reference #: ref268'),
(301, '2023-11-29 00:44:04', '1', 'Approved Order - Reference #: ref269'),
(302, '2023-11-29 00:44:07', '1', 'Approved Order - Reference #: ref270'),
(303, '2023-11-29 00:44:09', '1', 'Approved Order - Reference #: ref271'),
(304, '2023-11-29 00:44:12', '1', 'Approved Order - Reference #: ref272'),
(305, '2023-11-29 00:44:15', '1', 'Approved Order - Reference #: ref273'),
(306, '2023-11-29 00:44:17', '1', 'Approved Order - Reference #: ref274'),
(307, '2023-11-29 00:44:20', '1', 'Approved Order - Reference #: ref275'),
(308, '2023-11-29 00:44:24', '1', 'Approved Order - Reference #: ref276'),
(309, '2023-11-29 00:44:26', '1', 'Approved Order - Reference #: ref277'),
(310, '2023-11-29 00:44:30', '1', 'Approved Order - Reference #: ref278'),
(311, '2023-11-29 00:44:33', '1', 'Approved Order - Reference #: ref279'),
(312, '2023-11-29 00:44:37', '1', 'Approved Order - Reference #: ref280'),
(313, '2023-11-29 00:44:40', '1', 'Approved Order - Reference #: ref281'),
(314, '2023-11-29 00:44:43', '1', 'Approved Order - Reference #: ref282'),
(315, '2023-11-29 00:44:46', '1', 'Approved Order - Reference #: ref283'),
(316, '2023-11-29 00:44:48', '1', 'Approved Order - Reference #: ref284'),
(317, '2023-11-29 00:44:52', '1', 'Approved Order - Reference #: ref285'),
(318, '2023-11-29 00:44:54', '1', 'Approved Order - Reference #: ref286'),
(319, '2023-11-29 00:44:58', '1', 'Approved Order - Reference #: ref287'),
(320, '2023-11-29 00:45:00', '1', 'Approved Order - Reference #: ref288'),
(321, '2023-11-29 00:45:04', '1', 'Approved Order - Reference #: ref289'),
(322, '2023-11-29 00:45:07', '1', 'Approved Order - Reference #: ref290'),
(323, '2023-11-29 00:45:10', '1', 'Approved Order - Reference #: ref291');

-- --------------------------------------------------------

--
-- Table structure for table `audittrailproduction`
--

CREATE TABLE `audittrailproduction` (
  `ID` int(11) NOT NULL,
  `DateAction` datetime NOT NULL,
  `UserID` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audittrailproduction`
--

INSERT INTO `audittrailproduction` (`ID`, `DateAction`, `UserID`, `Description`) VALUES
(1, '2023-11-07 15:11:44', '1', 'Added Rebranding Product - Moisturizing Cream (50ml)'),
(2, '2023-11-07 15:19:53', '1', 'Added KBN Product - 100pcs, Isopropyl Alcohol (1 litter)'),
(3, '2023-11-07 15:20:16', '1', 'Delete KBN Product - TrackingID = 4, ID = 23'),
(4, '2023-11-14 14:08:05', '1', 'Added KBN Product - 1000pcs, Glutamansi Soap (50g)'),
(5, '2023-11-14 14:08:17', '1', 'Delete KBN Product - TrackingID = 5, ID = 24'),
(6, '2023-11-14 14:08:43', '1', 'Added KBN Product - 10000pcs, Glutamansi Soap (50g)'),
(7, '2023-11-14 14:08:56', '1', 'Added KBN Product - 10000pcs, Kojic Rejuvinating Soap (135g)'),
(8, '2023-11-14 14:09:06', '1', 'Added KBN Product - 10000pcs, Kojic Rejuvinating Soap (110g)'),
(9, '2023-11-14 14:09:29', '1', 'Added KBN Product - 10000pcs, Bleaching Soap (70g)'),
(10, '2023-11-14 14:09:41', '1', 'Added KBN Product - 10000pcs, Revitalize Whitening Beauty Bar (135g)'),
(11, '2023-11-14 14:09:54', '1', 'Added KBN Product - 10000pcs, Snail Max White Lotion (250ml)'),
(12, '2023-11-14 14:10:04', '1', 'Added KBN Product - 10000pcs, Glutamansi Lotion (250ml)'),
(13, '2023-11-14 14:10:14', '1', 'Added KBN Product - 10000pcs, Bleaching Lotion (250ml)'),
(14, '2023-11-14 14:10:23', '1', 'Added KBN Product - 10000pcs, Gluta White Lotion (250ml)'),
(15, '2023-11-14 14:10:47', '1', 'Added KBN Product - 10000pcs, Sunblock (10g)'),
(16, '2023-11-14 14:11:26', '1', 'Added KBN Product - 10000pcs, Bright Cream (10g)'),
(17, '2023-11-14 14:11:39', '1', 'Added KBN Product - 10000pcs, Toner (60ml)'),
(18, '2023-11-14 14:11:50', '1', 'Added KBN Product - 10000pcs, Rejuvenating Set (Kojic Soap, Sunblock, Night Cream, Toner)'),
(19, '2023-11-14 14:12:03', '1', 'Added KBN Product - 10000pcs, Gel Toner (60ml)'),
(20, '2023-11-14 14:12:11', '1', 'Added KBN Product - 10000pcs, Facial Wash (80ml)'),
(21, '2023-11-14 14:12:24', '1', 'Added KBN Product - 10000pcs, Serum (5g)'),
(22, '2023-11-14 14:12:32', '1', 'Added KBN Product - 10000pcs, Sun Block (10g)'),
(23, '2023-11-14 14:12:43', '1', 'Added KBN Product - 10000pcs, Radiant Glow Facial Set (Gel Toner, Facial Wash, Serum, Sunblock)'),
(24, '2023-11-14 14:12:53', '1', 'Added KBN Product - 10000pcs, Isopropyl Alcohol (1 litter)'),
(25, '2023-11-14 14:13:01', '1', 'Added KBN Product - 10000pcs, Isopropyl Alcohol (60ml)'),
(26, '2023-11-18 10:18:28', '1', 'Added KBN Product - 0pcs, Bleaching Soap (70g)'),
(27, '2023-11-18 10:18:36', '1', 'Delete KBN Product - TrackingID = 7, ID = 45'),
(28, '2023-11-18 10:22:46', '1', 'Added KBN Product - 100pcs, Moisturizing Cream (50ml)'),
(29, '2023-11-18 10:28:49', '1', 'Delete Rebranding Product - TrackingID = 8, ID = 2'),
(30, '2023-11-23 01:00:07', '1', 'Add Stock Packaging Materials - Clear Plastic'),
(31, '2023-11-23 01:01:23', '1', 'Add Stock Packaging Materials - Clear Plastic'),
(32, '2023-11-23 01:03:28', '1', 'Add Stock Packaging Materials - Clear Plastic'),
(33, '2023-11-23 03:51:17', '1', 'Process Order - ref71'),
(34, '2023-11-28 21:25:30', '1', 'Added KBN Product - 10000pcs, Isopropyl Alcohol (1 Liter)'),
(35, '2023-11-29 00:00:08', '1', 'Process Order - ref99'),
(36, '2023-11-29 00:00:20', '1', 'Process Order - ref98'),
(37, '2023-11-29 00:00:28', '1', 'Process Order - ref100'),
(38, '2023-11-29 00:00:33', '1', 'Process Order - ref101'),
(39, '2023-11-29 00:00:39', '1', 'Process Order - ref102'),
(40, '2023-11-29 00:00:44', '1', 'Process Order - ref103'),
(41, '2023-11-29 00:00:49', '1', 'Process Order - ref104'),
(42, '2023-11-29 00:00:54', '1', 'Process Order - ref105'),
(43, '2023-11-29 00:00:59', '1', 'Process Order - ref106'),
(44, '2023-11-29 00:01:05', '1', 'Process Order - ref107'),
(45, '2023-11-29 00:01:09', '1', 'Process Order - ref108'),
(46, '2023-11-29 00:01:13', '1', 'Process Order - ref109'),
(47, '2023-11-29 00:01:18', '1', 'Process Order - ref110'),
(48, '2023-11-29 00:01:23', '1', 'Process Order - ref111'),
(49, '2023-11-29 00:01:28', '1', 'Process Order - ref112'),
(50, '2023-11-29 00:01:33', '1', 'Process Order - ref113'),
(51, '2023-11-29 00:01:37', '1', 'Process Order - ref114'),
(52, '2023-11-29 00:01:42', '1', 'Process Order - ref115'),
(53, '2023-11-29 00:01:47', '1', 'Process Order - ref116'),
(54, '2023-11-29 00:01:51', '1', 'Process Order - ref117'),
(55, '2023-11-29 00:01:56', '1', 'Process Order - ref118'),
(56, '2023-11-29 00:02:00', '1', 'Process Order - ref119'),
(57, '2023-11-29 00:02:06', '1', 'Process Order - ref120'),
(58, '2023-11-29 00:02:11', '1', 'Process Order - ref121'),
(59, '2023-11-29 00:02:15', '1', 'Process Order - ref122'),
(60, '2023-11-29 00:02:20', '1', 'Process Order - ref123'),
(61, '2023-11-29 00:02:35', '1', 'Process Order - ref124'),
(62, '2023-11-29 00:02:41', '1', 'Process Order - ref125'),
(63, '2023-11-29 00:02:45', '1', 'Process Order - ref126'),
(64, '2023-11-29 00:02:50', '1', 'Process Order - ref127'),
(65, '2023-11-29 00:02:54', '1', 'Process Order - ref128'),
(66, '2023-11-29 00:03:00', '1', 'Process Order - ref129'),
(67, '2023-11-29 00:03:07', '1', 'Process Order - ref130'),
(68, '2023-11-29 00:03:11', '1', 'Process Order - ref131'),
(69, '2023-11-29 00:03:13', '1', 'Process Order - ref131'),
(70, '2023-11-29 00:03:18', '1', 'Process Order - ref132'),
(71, '2023-11-29 00:03:23', '1', 'Process Order - ref133'),
(72, '2023-11-29 00:03:28', '1', 'Process Order - ref134'),
(73, '2023-11-29 00:03:32', '1', 'Process Order - ref135'),
(74, '2023-11-29 00:03:36', '1', 'Process Order - ref136'),
(75, '2023-11-29 00:03:41', '1', 'Process Order - ref137'),
(76, '2023-11-29 00:03:45', '1', 'Process Order - ref138'),
(77, '2023-11-29 00:03:50', '1', 'Process Order - ref139'),
(78, '2023-11-29 00:03:54', '1', 'Process Order - ref140'),
(79, '2023-11-29 00:03:59', '1', 'Process Order - ref141'),
(80, '2023-11-29 00:04:03', '1', 'Process Order - ref142'),
(81, '2023-11-29 00:04:07', '1', 'Process Order - ref143'),
(82, '2023-11-29 00:04:11', '1', 'Process Order - ref144'),
(83, '2023-11-29 00:04:16', '1', 'Process Order - ref145'),
(84, '2023-11-29 00:04:24', '1', 'Process Order - ref146'),
(85, '2023-11-29 00:04:28', '1', 'Process Order - ref147'),
(86, '2023-11-29 00:04:33', '1', 'Process Order - ref148'),
(87, '2023-11-29 00:04:38', '1', 'Process Order - ref149'),
(88, '2023-11-29 00:04:42', '1', 'Process Order - ref150'),
(89, '2023-11-29 00:04:46', '1', 'Process Order - ref151'),
(90, '2023-11-29 00:04:51', '1', 'Process Order - ref152'),
(91, '2023-11-29 00:04:55', '1', 'Process Order - ref153'),
(92, '2023-11-29 00:07:45', '1', 'Process Order - ref154'),
(93, '2023-11-29 00:07:49', '1', 'Process Order - ref155'),
(94, '2023-11-29 00:07:56', '1', 'Process Order - ref156'),
(95, '2023-11-29 00:08:00', '1', 'Process Order - ref157'),
(96, '2023-11-29 00:08:05', '1', 'Process Order - ref158'),
(97, '2023-11-29 00:08:10', '1', 'Process Order - ref159'),
(98, '2023-11-29 00:08:15', '1', 'Process Order - ref160'),
(99, '2023-11-29 00:08:20', '1', 'Process Order - ref161'),
(100, '2023-11-29 00:08:25', '1', 'Process Order - ref162'),
(101, '2023-11-29 00:08:29', '1', 'Process Order - ref163'),
(102, '2023-11-29 00:08:35', '1', 'Process Order - ref164'),
(103, '2023-11-29 00:08:40', '1', 'Process Order - ref165'),
(104, '2023-11-29 00:08:46', '1', 'Process Order - ref166'),
(105, '2023-11-29 00:08:51', '1', 'Process Order - ref167'),
(106, '2023-11-29 00:08:56', '1', 'Process Order - ref168'),
(107, '2023-11-29 00:09:00', '1', 'Process Order - ref169'),
(108, '2023-11-29 00:09:04', '1', 'Process Order - ref170'),
(109, '2023-11-29 00:09:09', '1', 'Process Order - ref171'),
(110, '2023-11-29 00:09:14', '1', 'Process Order - ref172'),
(111, '2023-11-29 00:09:20', '1', 'Process Order - ref173'),
(112, '2023-11-29 00:09:24', '1', 'Process Order - ref174'),
(113, '2023-11-29 00:09:29', '1', 'Process Order - ref175'),
(114, '2023-11-29 00:09:33', '1', 'Process Order - ref177'),
(115, '2023-11-29 00:09:38', '1', 'Process Order - ref178'),
(116, '2023-11-29 00:09:41', '1', 'Process Order - ref179'),
(117, '2023-11-29 00:09:48', '1', 'Process Order - ref180'),
(118, '2023-11-29 00:09:52', '1', 'Process Order - ref181'),
(119, '2023-11-29 00:09:57', '1', 'Process Order - ref182'),
(120, '2023-11-29 00:10:01', '1', 'Process Order - ref183'),
(121, '2023-11-29 00:10:06', '1', 'Process Order - ref184'),
(122, '2023-11-29 00:12:19', '1', 'Process Order - ref186'),
(123, '2023-11-29 00:12:23', '1', 'Process Order - ref188'),
(124, '2023-11-29 00:12:27', '1', 'Process Order - ref189'),
(125, '2023-11-29 00:12:31', '1', 'Process Order - ref190'),
(126, '2023-11-29 00:12:37', '1', 'Process Order - ref191'),
(127, '2023-11-29 00:12:42', '1', 'Process Order - ref192'),
(128, '2023-11-29 00:12:48', '1', 'Process Order - ref193'),
(129, '2023-11-29 00:12:53', '1', 'Process Order - ref194'),
(130, '2023-11-29 00:12:57', '1', 'Process Order - ref195'),
(131, '2023-11-29 00:13:01', '1', 'Process Order - ref196'),
(132, '2023-11-29 00:13:06', '1', 'Process Order - ref197'),
(133, '2023-11-29 00:13:10', '1', 'Process Order - ref198'),
(134, '2023-11-29 00:13:14', '1', 'Process Order - ref199'),
(135, '2023-11-29 00:13:18', '1', 'Process Order - ref200'),
(136, '2023-11-29 00:13:23', '1', 'Process Order - ref202'),
(137, '2023-11-29 00:13:26', '1', 'Process Order - ref203'),
(138, '2023-11-29 00:13:30', '1', 'Process Order - ref204'),
(139, '2023-11-29 00:13:34', '1', 'Process Order - ref205'),
(140, '2023-11-29 00:13:39', '1', 'Process Order - ref206'),
(141, '2023-11-29 00:13:43', '1', 'Process Order - ref207'),
(142, '2023-11-29 00:13:47', '1', 'Process Order - ref208'),
(143, '2023-11-29 00:13:53', '1', 'Process Order - ref209'),
(144, '2023-11-29 00:13:57', '1', 'Process Order - ref210'),
(145, '2023-11-29 00:14:01', '1', 'Process Order - ref211'),
(146, '2023-11-29 00:14:04', '1', 'Process Order - ref212'),
(147, '2023-11-29 00:14:08', '1', 'Process Order - ref214'),
(148, '2023-11-29 00:14:33', '1', 'Process Order - ref215'),
(149, '2023-11-29 00:14:42', '1', 'Process Order - ref216'),
(150, '2023-11-29 00:16:38', '1', 'Added KBN Product - 10000pcs, Isopropyl Alcohol (1 Liter)'),
(151, '2023-11-29 00:20:00', '1', 'Process Order - ref217'),
(152, '2023-11-29 00:20:05', '1', 'Process Order - ref218'),
(153, '2023-11-29 00:20:09', '1', 'Process Order - ref219'),
(154, '2023-11-29 00:20:13', '1', 'Process Order - ref220'),
(155, '2023-11-29 00:20:17', '1', 'Process Order - ref72'),
(156, '2023-11-29 00:20:21', '1', 'Process Order - ref73'),
(157, '2023-11-29 00:20:26', '1', 'Process Order - ref74'),
(158, '2023-11-29 00:20:29', '1', 'Process Order - ref75'),
(159, '2023-11-29 00:20:34', '1', 'Process Order - ref76'),
(160, '2023-11-29 00:20:39', '1', 'Process Order - ref77'),
(161, '2023-11-29 00:20:44', '1', 'Process Order - ref78'),
(162, '2023-11-29 00:20:48', '1', 'Process Order - ref79'),
(163, '2023-11-29 00:20:52', '1', 'Process Order - ref80'),
(164, '2023-11-29 00:20:56', '1', 'Process Order - ref81'),
(165, '2023-11-29 00:21:00', '1', 'Process Order - ref82'),
(166, '2023-11-29 00:21:04', '1', 'Process Order - ref83'),
(167, '2023-11-29 00:21:08', '1', 'Process Order - ref84'),
(168, '2023-11-29 00:21:12', '1', 'Process Order - ref85'),
(169, '2023-11-29 00:21:16', '1', 'Process Order - ref86'),
(170, '2023-11-29 00:21:20', '1', 'Process Order - ref87'),
(171, '2023-11-29 00:21:29', '1', 'Process Order - ref88'),
(172, '2023-11-29 00:21:54', '1', 'Process Order - ref89'),
(173, '2023-11-29 00:21:59', '1', 'Process Order - ref90'),
(174, '2023-11-29 00:22:03', '1', 'Process Order - ref91'),
(175, '2023-11-29 00:22:08', '1', 'Process Order - ref92'),
(176, '2023-11-29 00:22:12', '1', 'Process Order - ref94'),
(177, '2023-11-29 00:22:19', '1', 'Process Order - ref93'),
(178, '2023-11-29 00:22:25', '1', 'Process Order - ref95'),
(179, '2023-11-29 00:22:29', '1', 'Process Order - ref96'),
(180, '2023-11-29 00:22:34', '1', 'Process Order - ref97'),
(181, '2023-11-29 00:48:44', '1', 'Process Order - ref222'),
(182, '2023-11-29 00:48:48', '1', 'Process Order - ref223'),
(183, '2023-11-29 00:48:52', '1', 'Process Order - ref224'),
(184, '2023-11-29 00:48:57', '1', 'Process Order - ref225'),
(185, '2023-11-29 00:49:01', '1', 'Process Order - ref226'),
(186, '2023-11-29 00:49:06', '1', 'Process Order - ref227'),
(187, '2023-11-29 00:49:10', '1', 'Process Order - ref228'),
(188, '2023-11-29 00:49:14', '1', 'Process Order - ref229'),
(189, '2023-11-29 00:49:18', '1', 'Process Order - ref230'),
(190, '2023-11-29 00:49:23', '1', 'Process Order - ref232'),
(191, '2023-11-29 00:49:27', '1', 'Process Order - ref233'),
(192, '2023-11-29 00:49:31', '1', 'Process Order - ref235'),
(193, '2023-11-29 00:49:36', '1', 'Process Order - ref236'),
(194, '2023-11-29 00:49:40', '1', 'Process Order - ref238'),
(195, '2023-11-29 00:49:44', '1', 'Process Order - ref239'),
(196, '2023-11-29 00:49:47', '1', 'Process Order - ref240'),
(197, '2023-11-29 00:49:52', '1', 'Process Order - ref241'),
(198, '2023-11-29 00:49:58', '1', 'Process Order - ref242'),
(199, '2023-11-29 00:50:02', '1', 'Process Order - ref243'),
(200, '2023-11-29 00:50:06', '1', 'Process Order - ref244'),
(201, '2023-11-29 00:50:10', '1', 'Process Order - ref245'),
(202, '2023-11-29 00:50:13', '1', 'Process Order - ref246'),
(203, '2023-11-29 00:50:17', '1', 'Process Order - ref247'),
(204, '2023-11-29 00:50:21', '1', 'Process Order - ref248'),
(205, '2023-11-29 00:50:25', '1', 'Process Order - ref249'),
(206, '2023-11-29 00:50:29', '1', 'Process Order - ref250'),
(207, '2023-11-29 00:50:33', '1', 'Process Order - ref251'),
(208, '2023-11-29 00:50:38', '1', 'Process Order - ref252'),
(209, '2023-11-29 00:50:42', '1', 'Process Order - ref253'),
(210, '2023-11-29 00:50:45', '1', 'Process Order - ref254'),
(211, '2023-11-29 00:50:49', '1', 'Process Order - ref255'),
(212, '2023-11-29 00:50:53', '1', 'Process Order - ref257'),
(213, '2023-11-29 00:50:56', '1', 'Process Order - ref259'),
(214, '2023-11-29 00:51:00', '1', 'Process Order - ref260'),
(215, '2023-11-29 00:51:03', '1', 'Process Order - ref261'),
(216, '2023-11-29 00:51:08', '1', 'Process Order - ref262'),
(217, '2023-11-29 00:51:45', '1', 'Process Order - ref263'),
(218, '2023-11-29 00:51:49', '1', 'Process Order - ref265'),
(219, '2023-11-29 00:51:53', '1', 'Process Order - ref266'),
(220, '2023-11-29 00:51:57', '1', 'Process Order - ref267'),
(221, '2023-11-29 00:52:01', '1', 'Process Order - ref268'),
(222, '2023-11-29 00:52:05', '1', 'Process Order - ref269'),
(223, '2023-11-29 00:52:10', '1', 'Process Order - ref270'),
(224, '2023-11-29 00:52:13', '1', 'Process Order - ref272'),
(225, '2023-11-29 00:52:17', '1', 'Process Order - ref273'),
(226, '2023-11-29 00:52:21', '1', 'Process Order - ref274'),
(227, '2023-11-29 00:52:26', '1', 'Process Order - ref275'),
(228, '2023-11-29 00:52:30', '1', 'Process Order - ref276'),
(229, '2023-11-29 00:52:34', '1', 'Process Order - ref277'),
(230, '2023-11-29 00:52:38', '1', 'Process Order - ref278'),
(231, '2023-11-29 00:52:42', '1', 'Process Order - ref279'),
(232, '2023-11-29 00:52:46', '1', 'Process Order - ref280'),
(233, '2023-11-29 00:52:51', '1', 'Process Order - ref281'),
(234, '2023-11-29 00:52:56', '1', 'Process Order - ref282'),
(235, '2023-11-29 00:53:00', '1', 'Process Order - ref283'),
(236, '2023-11-29 00:53:05', '1', 'Process Order - ref284'),
(237, '2023-11-29 00:53:09', '1', 'Process Order - ref285'),
(238, '2023-11-29 00:53:12', '1', 'Process Order - ref287'),
(239, '2023-11-29 00:53:16', '1', 'Process Order - ref288'),
(240, '2023-11-29 00:53:20', '1', 'Process Order - ref289'),
(241, '2023-11-29 00:53:23', '1', 'Process Order - ref290'),
(242, '2023-11-29 00:53:27', '1', 'Process Order - ref291'),
(243, '2023-11-29 00:53:37', '1', 'Process Order - ref88');

-- --------------------------------------------------------

--
-- Table structure for table `audittrailwarehouse`
--

CREATE TABLE `audittrailwarehouse` (
  `ID` int(11) NOT NULL,
  `DateAction` datetime NOT NULL,
  `UserID` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audittrailwarehouse`
--

INSERT INTO `audittrailwarehouse` (`ID`, `DateAction`, `UserID`, `Description`) VALUES
(1, '2023-11-19 13:32:02', '1', 'Add Item: Packaging - Clear Plastic'),
(2, '2023-11-19 13:53:38', '1', 'Add Item: Packaging - Clear Plastic'),
(3, '2023-11-19 13:54:15', '1', 'Add Item: Packaging - Shrink Wrap Lip Tin');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE `tblaccount` (
  `AccountID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `accType` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblaccount`
--

INSERT INTO `tblaccount` (`AccountID`, `Username`, `Password`, `accType`, `Department`, `Position`) VALUES
(1, 'admin', 'admin', 'Admin', '', ''),
(2, 'managerM', 'password', 'Manager', 'Marketing', 'All'),
(3, 'managerP', 'password', 'Manager', 'Production', 'All'),
(4, 'managerW', 'password', 'Manager', 'Warehouse', 'All'),
(5, 'staffM', 'password', 'Staff', 'Marketing', 'Inventory and Ordering'),
(6, 'staffW', 'password', 'Staff', 'Warehouse', 'Materials Inventory'),
(7, 'superadmin', 'admin', 'superadmin', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccountinfo`
--

CREATE TABLE `tblaccountinfo` (
  `AccountID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `Birthdate` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `EmailAdd` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblaccountinfo`
--

INSERT INTO `tblaccountinfo` (`AccountID`, `FirstName`, `LastName`, `MiddleName`, `Address`, `Birthdate`, `Age`, `Gender`, `EmailAdd`, `Contact`) VALUES
(1, 'Bryan Ken', 'Altes', 'Sayson', 'Angon Rizal', '2000-09-25', 23, 'Male', 'bryanken01230@gmail.com', '09123456789'),
(2, 'Angelo', 'Geronimo', 'A', 'Angono Rizal', '2000-11-16', 23, 'Male', 'angelogeronimo@gmail.com', '09123456789'),
(3, 'Miguel', 'Besa', 'A', 'Taytay Rizal', '2002-11-10', 21, 'Male', 'miguelbesa@gmail.com', '09123456789'),
(4, 'Raven', 'Berenguila', 'A', 'Binangonan Rizal', '2002-11-13', 21, 'Male', 'ravenberenguila', '09123456789'),
(5, 'Ivan', 'Castillo', 'M', 'Angono Rizal', '2000-11-16', 23, 'Male', 'ivancastillo@gmail.com', '09123456789'),
(6, 'Vincent', 'Santiago', 'S', 'Angono Rizal', '2000-11-16', 23, 'Male', 'vicentsantigago@gmail.com', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `tblarchiveuser`
--

CREATE TABLE `tblarchiveuser` (
  `itemID` int(11) NOT NULL,
  `userAccount` varchar(20) NOT NULL,
  `ArchiveDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblarchiveuser`
--

INSERT INTO `tblarchiveuser` (`itemID`, `userAccount`, `ArchiveDate`) VALUES
(1, 'admin', '2023-11-04 01:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblcancelledorder`
--

CREATE TABLE `tblcancelledorder` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `CancelDate` datetime NOT NULL,
  `Reason` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcancelledorder`
--

INSERT INTO `tblcancelledorder` (`ID`, `OrderRefNumber`, `CancelDate`, `Reason`) VALUES
(1, 'ref5', '2023-10-31 13:58:00', 'hgjjhg'),
(5, 'ref1', '2023-11-05 11:47:14', 'Expired'),
(6, 'ref2', '2023-11-05 11:54:34', 'Expired'),
(7, 'ref3', '2023-11-05 12:01:24', 'Expired'),
(8, 'ref4', '2023-11-05 13:45:54', 'Expired'),
(9, 'ref6', '2023-11-06 22:15:44', 'Expired'),
(10, 'ref7', '2023-11-06 22:21:54', 'Expired'),
(11, 'ref12', '2023-11-17 08:29:44', 'Expired'),
(12, 'ref13', '2023-11-17 09:12:54', 'Expired'),
(13, 'ref62', '2023-11-22 11:48:07', ''),
(17, 'ref61', '2023-11-22 11:48:45', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcartdata`
--

CREATE TABLE `tblcartdata` (
  `ID` int(11) NOT NULL,
  `uID` varchar(100) NOT NULL,
  `prodName` varchar(100) NOT NULL,
  `prodQuantity` int(11) NOT NULL,
  `prodVariant` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcartdata`
--

INSERT INTO `tblcartdata` (`ID`, `uID`, `prodName`, `prodQuantity`, `prodVariant`) VALUES
(29, '', 'Radiant Glow Facial Set', 1, 'Gel Toner, Facial Wash, Serum, Sunblock'),
(128, 'admin#253', 'Snail Max White Lotion', 1, '250ml'),
(129, 'admin#253', 'Isopropyl Alcohol', 1, '60ml'),
(130, 'admin#253', 'Moisturizing Cream', 1, '50ml'),
(357, 'joserizal#868', 'Isopropyl Alcohol', 1, '1 Liter');

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmationproduct`
--

CREATE TABLE `tblconfirmationproduct` (
  `ID` int(11) NOT NULL,
  `TrackingID` int(11) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductVariant` varchar(100) NOT NULL,
  `ProductQuantity` int(11) NOT NULL,
  `TimeAdded` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblconfirmationproduct`
--

INSERT INTO `tblconfirmationproduct` (`ID`, `TrackingID`, `ProductName`, `ProductVariant`, `ProductQuantity`, `TimeAdded`) VALUES
(3, 1, 'Kojic Rejuvinating Soap', '135g', 100, '19:04:16'),
(4, 1, 'Kojic Rejuvinating Soap', '110g', 100, '19:04:24'),
(5, 1, 'Bleaching Soap', '70g', 100, '19:04:34'),
(6, 1, 'Revitalize Whitening Beauty Bar', '135g', 100, '19:04:43'),
(7, 1, 'Snail Max White Lotion', '250ml', 100, '19:04:53'),
(8, 1, 'Glutamansi Lotion', '250ml', 100, '19:05:03'),
(9, 1, 'Bleaching Lotion', '250ml', 100, '19:05:13'),
(10, 1, 'Gluta White Lotion', '250ml', 100, '19:05:25'),
(11, 1, 'Sunblock', '10g', 100, '19:05:40'),
(12, 1, 'Bright Cream', '10g', 100, '19:05:49'),
(13, 1, 'Toner', '60ml', 100, '19:05:59'),
(14, 1, 'Rejuvenating Set', 'Kojic Soap, Sunblock, Night Cream, Toner', 100, '19:06:08'),
(15, 1, 'Gel Toner', '60ml', 100, '19:06:18'),
(16, 1, 'Facial Wash', '80ml', 100, '19:06:29'),
(17, 1, 'Serum', '5g', 100, '19:06:38'),
(18, 1, 'Sun Block', '10g', 100, '19:06:48'),
(19, 1, 'Radiant Glow Facial Set', 'Gel Toner, Facial Wash, Serum, Sunblock', 100, '19:06:57'),
(20, 1, 'Isopropyl Alcohol', '1 litter', 100, '19:07:06'),
(21, 1, 'Isopropyl Alcohol', '60ml', 100, '19:07:13'),
(22, 2, 'Isopropyl Alcohol', '1 litter', 100, '14:05:31'),
(25, 6, 'Glutamansi Soap', '50g', 10000, '14:08:43'),
(26, 6, 'Kojic Rejuvinating Soap', '135g', 10000, '14:08:56'),
(27, 6, 'Kojic Rejuvinating Soap', '110g', 10000, '14:09:06'),
(28, 6, 'Bleaching Soap', '70g', 10000, '14:09:29'),
(29, 6, 'Revitalize Whitening Beauty Bar', '135g', 10000, '14:09:41'),
(30, 6, 'Snail Max White Lotion', '250ml', 10000, '14:09:54'),
(31, 6, 'Glutamansi Lotion', '250ml', 10000, '14:10:04'),
(32, 6, 'Bleaching Lotion', '250ml', 10000, '14:10:13'),
(33, 6, 'Gluta White Lotion', '250ml', 10000, '14:10:23'),
(34, 6, 'Sunblock', '10g', 10000, '14:10:47'),
(35, 6, 'Bright Cream', '10g', 10000, '14:11:26'),
(36, 6, 'Toner', '60ml', 10000, '14:11:39'),
(37, 6, 'Rejuvenating Set', 'Kojic Soap, Sunblock, Night Cream, Toner', 10000, '14:11:50'),
(38, 6, 'Gel Toner', '60ml', 10000, '14:12:03'),
(39, 6, 'Facial Wash', '80ml', 10000, '14:12:11'),
(40, 6, 'Serum', '5g', 10000, '14:12:23'),
(41, 6, 'Sun Block', '10g', 10000, '14:12:32'),
(42, 6, 'Radiant Glow Facial Set', 'Gel Toner, Facial Wash, Serum, Sunblock', 10000, '14:12:43'),
(43, 6, 'Isopropyl Alcohol', '1 litter', 10000, '14:12:53'),
(44, 6, 'Isopropyl Alcohol', '60ml', 10000, '14:13:01'),
(46, 9, 'Isopropyl Alcohol', '1 Liter', 10000, '21:25:30'),
(47, 10, 'Isopropyl Alcohol', '1 Liter', 10000, '00:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmationproductarchive`
--

CREATE TABLE `tblconfirmationproductarchive` (
  `ID` int(11) NOT NULL,
  `TrackingID` int(11) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductVariant` varchar(100) NOT NULL,
  `ProductQuantity` int(11) NOT NULL,
  `TimeAdded` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblconfirmationproductarchive`
--

INSERT INTO `tblconfirmationproductarchive` (`ID`, `TrackingID`, `ProductName`, `ProductVariant`, `ProductQuantity`, `TimeAdded`) VALUES
(23, 4, 'Isopropyl Alcohol', '1 litter', 100, '15:19:52'),
(24, 5, 'Glutamansi Soap', '50g', 1000, '14:08:05'),
(45, 7, 'Bleaching Soap', '70g', 0, '10:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmationproductRebranding`
--

CREATE TABLE `tblconfirmationproductRebranding` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(100) NOT NULL,
  `TrackingID` int(11) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductVariant` varchar(100) NOT NULL,
  `ProductQuantity` int(11) NOT NULL,
  `TimeAdded` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblconfirmationproductRebranding`
--

INSERT INTO `tblconfirmationproductRebranding` (`ID`, `UserID`, `TrackingID`, `ProductName`, `ProductVariant`, `ProductQuantity`, `TimeAdded`) VALUES
(1, 'admin#253', 3, 'Moisturizing Cream', '50ml', 100, '15:11:43'),
(2, 'admin#253', 8, 'Moisturizing Cream', '50ml', 100, '10:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmationproductRebrandingarchive`
--

CREATE TABLE `tblconfirmationproductRebrandingarchive` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(100) NOT NULL,
  `TrackingID` int(11) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductVariant` varchar(100) NOT NULL,
  `ProductQuantity` int(11) NOT NULL,
  `TimeAdded` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblconfirmationproductRebrandingarchive`
--

INSERT INTO `tblconfirmationproductRebrandingarchive` (`ID`, `UserID`, `TrackingID`, `ProductName`, `ProductVariant`, `ProductQuantity`, `TimeAdded`) VALUES
(1, 'admin#253', 3, 'Moisturizing Cream', '50ml', 100, '15:11:43'),
(2, 'admin#253', 8, 'Moisturizing Cream', '50ml', 100, '10:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmationtracking`
--

CREATE TABLE `tblconfirmationtracking` (
  `TrackingID` int(11) NOT NULL,
  `DateAdded` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  `AddedBy` varchar(100) NOT NULL,
  `ProductType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblconfirmationtracking`
--

INSERT INTO `tblconfirmationtracking` (`TrackingID`, `DateAdded`, `Status`, `AddedBy`, `ProductType`) VALUES
(1, '2023-10-30', 'COMPLETED', 'admin', 'KBN'),
(2, '2023-10-31', 'COMPLETED', 'admin', 'KBN'),
(6, '2023-11-14', 'COMPLETED', 'admin', 'KBN'),
(9, '2023-11-28', 'COMPLETED', 'admin', 'KBN'),
(10, '2023-11-29', 'COMPLETED', 'admin', 'KBN');

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmationtrackingarchive`
--

CREATE TABLE `tblconfirmationtrackingarchive` (
  `TrackingID` int(11) NOT NULL,
  `DateAdded` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  `AddedBy` varchar(100) NOT NULL,
  `ProductType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblconfirmationtrackingarchive`
--

INSERT INTO `tblconfirmationtrackingarchive` (`TrackingID`, `DateAdded`, `Status`, `AddedBy`, `ProductType`) VALUES
(3, '2023-11-07', 'PENDING', 'admin', 'REBRANDING'),
(4, '2023-11-07', 'PENDING', 'admin', 'KBN'),
(5, '2023-11-14', 'PENDING', 'admin', 'KBN'),
(7, '2023-11-18', 'PENDING', 'admin', 'KBN'),
(8, '2023-11-18', 'PENDING', 'admin', 'REBRANDING');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourieraccount`
--

CREATE TABLE `tblcourieraccount` (
  `courierID` varchar(25) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourieraccount`
--

INSERT INTO `tblcourieraccount` (`courierID`, `Username`, `Password`) VALUES
('CourierID0', 'bryanken00', 'password'),
('CourierID2', 'delivery', 'password'),
('CourierID3', 'testemail', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourierdelivery`
--

CREATE TABLE `tblcourierdelivery` (
  `deliveryID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `courierID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourierdelivery`
--

INSERT INTO `tblcourierdelivery` (`deliveryID`, `OrderRefNumber`, `courierID`) VALUES
(7, 'ref9', 'CourierID2'),
(8, 'ref8', 'CourierID2'),
(9, 'ref10', 'CourierID2'),
(10, 'ref11', 'CourierID2'),
(11, 'ref15', 'CourierID2'),
(12, 'ref14', 'CourierID2'),
(13, 'ref16', 'CourierID2'),
(14, 'ref17', 'CourierID2'),
(15, 'ref18', 'CourierID2'),
(16, 'ref19', 'CourierID2'),
(17, 'ref20', 'CourierID2'),
(18, 'ref21', 'CourierID2'),
(19, 'ref22', 'CourierID2'),
(20, 'ref23', 'CourierID2'),
(21, 'ref24', 'CourierID2'),
(22, 'ref25', 'CourierID2'),
(23, 'ref26', 'CourierID2'),
(24, 'ref27', 'CourierID2'),
(25, 'ref28', 'CourierID2'),
(26, 'ref29', 'CourierID2'),
(27, 'ref30', 'CourierID2'),
(28, 'ref31', 'CourierID2'),
(29, 'ref32', 'CourierID2'),
(30, 'ref33', 'CourierID2'),
(31, 'ref34', 'CourierID2'),
(32, 'ref35', 'CourierID2'),
(33, 'ref36', 'CourierID2'),
(34, 'ref37', 'CourierID2'),
(35, 'ref38', 'CourierID2'),
(36, 'ref39', 'CourierID2'),
(37, 'ref60', 'CourierID2'),
(38, 'ref59', 'CourierID2'),
(39, 'ref58', 'CourierID2'),
(40, 'ref57', 'CourierID2'),
(41, 'ref56', 'CourierID2'),
(42, 'ref55', 'CourierID2'),
(43, 'ref54', 'CourierID2'),
(44, 'ref53', 'CourierID2'),
(45, 'ref51', 'CourierID2'),
(46, 'ref50', 'CourierID2'),
(47, 'ref49', 'CourierID2'),
(48, 'ref48', 'CourierID2'),
(49, 'ref47', 'CourierID2'),
(50, 'ref46', 'CourierID2'),
(51, 'ref45', 'CourierID2'),
(52, 'ref44', 'CourierID2'),
(53, 'ref43', 'CourierID2'),
(54, 'ref42', 'CourierID2'),
(55, 'ref41', 'CourierID2'),
(56, 'ref40', 'CourierID2'),
(57, 'ref63', 'CourierID2'),
(58, 'ref64', 'CourierID2'),
(59, 'ref68', 'CourierID0'),
(60, 'ref65', 'CourierID2'),
(61, 'ref66', 'CourierID2'),
(62, 'ref67', 'CourierID2'),
(63, 'ref70', 'CourierID2'),
(64, 'ref69', 'CourierID2'),
(65, 'ref71', 'CourierID2'),
(66, 'ref99', 'CourierID0'),
(67, 'ref98', 'CourierID0'),
(68, 'ref100', 'CourierID0'),
(69, 'ref101', 'CourierID0'),
(70, 'ref102', 'CourierID0'),
(71, 'ref103', 'CourierID0'),
(72, 'ref104', 'CourierID0'),
(73, 'ref105', 'CourierID0'),
(74, 'ref106', 'CourierID0'),
(75, 'ref107', 'CourierID0'),
(76, 'ref108', 'CourierID0'),
(77, 'ref109', 'CourierID0'),
(78, 'ref110', 'CourierID0'),
(79, 'ref111', 'CourierID0'),
(80, 'ref112', 'CourierID0'),
(81, 'ref113', 'CourierID0'),
(82, 'ref114', 'CourierID0'),
(83, 'ref115', 'CourierID0'),
(84, 'ref116', 'CourierID0'),
(85, 'ref117', 'CourierID0'),
(86, 'ref118', 'CourierID0'),
(87, 'ref119', 'CourierID0'),
(88, 'ref120', 'CourierID0'),
(89, 'ref121', 'CourierID0'),
(90, 'ref122', 'CourierID0'),
(91, 'ref123', 'CourierID0'),
(92, 'ref124', 'CourierID0'),
(93, 'ref125', 'CourierID0'),
(94, 'ref126', 'CourierID0'),
(95, 'ref127', 'CourierID0'),
(96, 'ref128', 'CourierID0'),
(97, 'ref129', 'CourierID0'),
(98, 'ref130', 'CourierID0'),
(99, 'ref131', 'CourierID0'),
(100, 'ref132', 'CourierID0'),
(101, 'ref133', 'CourierID0'),
(102, 'ref134', 'CourierID0'),
(103, 'ref135', 'CourierID0'),
(104, 'ref136', 'CourierID0'),
(105, 'ref137', 'CourierID0'),
(106, 'ref138', 'CourierID0'),
(107, 'ref139', 'CourierID0'),
(108, 'ref140', 'CourierID0'),
(109, 'ref141', 'CourierID0'),
(110, 'ref142', 'CourierID0'),
(111, 'ref143', 'CourierID0'),
(112, 'ref144', 'CourierID0'),
(113, 'ref145', 'CourierID0'),
(114, 'ref146', 'CourierID0'),
(115, 'ref147', 'CourierID0'),
(116, 'ref148', 'CourierID0'),
(117, 'ref149', 'CourierID0'),
(118, 'ref150', 'CourierID0'),
(119, 'ref151', 'CourierID0'),
(120, 'ref152', 'CourierID0'),
(121, 'ref153', 'CourierID0'),
(122, 'ref154', 'CourierID0'),
(123, 'ref155', 'CourierID0'),
(124, 'ref156', 'CourierID0'),
(125, 'ref157', 'CourierID0'),
(126, 'ref158', 'CourierID0'),
(127, 'ref159', 'CourierID0'),
(128, 'ref160', 'CourierID0'),
(129, 'ref161', 'CourierID0'),
(130, 'ref162', 'CourierID0'),
(131, 'ref163', 'CourierID0'),
(132, 'ref164', 'CourierID0'),
(133, 'ref165', 'CourierID0'),
(134, 'ref166', 'CourierID0'),
(135, 'ref167', 'CourierID0'),
(136, 'ref168', 'CourierID0'),
(137, 'ref169', 'CourierID0'),
(138, 'ref170', 'CourierID0'),
(139, 'ref171', 'CourierID0'),
(140, 'ref172', 'CourierID0'),
(141, 'ref173', 'CourierID0'),
(142, 'ref174', 'CourierID0'),
(143, 'ref175', 'CourierID0'),
(144, 'ref177', 'CourierID0'),
(145, 'ref178', 'CourierID0'),
(146, 'ref179', 'CourierID0'),
(147, 'ref180', 'CourierID0'),
(148, 'ref181', 'CourierID0'),
(149, 'ref182', 'CourierID0'),
(150, 'ref183', 'CourierID0'),
(151, 'ref184', 'CourierID0'),
(152, 'ref186', 'CourierID0'),
(153, 'ref188', 'CourierID0'),
(154, 'ref189', 'CourierID0'),
(155, 'ref190', 'CourierID0'),
(156, 'ref191', 'CourierID0'),
(157, 'ref192', 'CourierID0'),
(158, 'ref193', 'CourierID0'),
(159, 'ref194', 'CourierID0'),
(160, 'ref195', 'CourierID0'),
(161, 'ref196', 'CourierID0'),
(162, 'ref197', 'CourierID0'),
(163, 'ref198', 'CourierID0'),
(164, 'ref199', 'CourierID0'),
(165, 'ref200', 'CourierID0'),
(166, 'ref202', 'CourierID0'),
(167, 'ref203', 'CourierID0'),
(168, 'ref204', 'CourierID0'),
(169, 'ref205', 'CourierID0'),
(170, 'ref206', 'CourierID0'),
(171, 'ref207', 'CourierID0'),
(172, 'ref208', 'CourierID0'),
(173, 'ref209', 'CourierID0'),
(174, 'ref210', 'CourierID0'),
(175, 'ref211', 'CourierID0'),
(176, 'ref212', 'CourierID0'),
(177, 'ref214', 'CourierID0'),
(178, 'ref215', 'CourierID0'),
(179, 'ref216', 'CourierID0'),
(180, 'ref217', 'CourierID0'),
(181, 'ref217', 'CourierID0'),
(182, 'ref218', 'CourierID0'),
(183, 'ref219', 'CourierID0'),
(184, 'ref220', 'CourierID0'),
(185, 'ref72', 'CourierID0'),
(186, 'ref73', 'CourierID0'),
(187, 'ref74', 'CourierID0'),
(188, 'ref75', 'CourierID0'),
(189, 'ref76', 'CourierID0'),
(190, 'ref77', 'CourierID0'),
(191, 'ref78', 'CourierID0'),
(192, 'ref79', 'CourierID0'),
(193, 'ref80', 'CourierID0'),
(194, 'ref81', 'CourierID0'),
(195, 'ref82', 'CourierID0'),
(196, 'ref83', 'CourierID0'),
(197, 'ref84', 'CourierID0'),
(198, 'ref85', 'CourierID0'),
(199, 'ref86', 'CourierID0'),
(200, 'ref87', 'CourierID0'),
(201, 'ref89', 'CourierID0'),
(202, 'ref90', 'CourierID0'),
(203, 'ref91', 'CourierID0'),
(204, 'ref92', 'CourierID0'),
(205, 'ref94', 'CourierID0'),
(206, 'ref93', 'CourierID0'),
(207, 'ref95', 'CourierID0'),
(208, 'ref96', 'CourierID0'),
(209, 'ref97', 'CourierID0'),
(210, 'ref222', 'CourierID0'),
(211, 'ref223', 'CourierID0'),
(212, 'ref224', 'CourierID0'),
(213, 'ref225', 'CourierID0'),
(214, 'ref226', 'CourierID0'),
(215, 'ref227', 'CourierID0'),
(216, 'ref228', 'CourierID0'),
(217, 'ref229', 'CourierID0'),
(218, 'ref230', 'CourierID0'),
(219, 'ref232', 'CourierID0'),
(220, 'ref233', 'CourierID0'),
(221, 'ref235', 'CourierID0'),
(222, 'ref236', 'CourierID0'),
(223, 'ref238', 'CourierID0'),
(224, 'ref239', 'CourierID0'),
(225, 'ref240', 'CourierID0'),
(226, 'ref241', 'CourierID0'),
(227, 'ref242', 'CourierID0'),
(228, 'ref243', 'CourierID0'),
(229, 'ref244', 'CourierID0'),
(230, 'ref245', 'CourierID0'),
(231, 'ref246', 'CourierID0'),
(232, 'ref247', 'CourierID0'),
(233, 'ref248', 'CourierID0'),
(234, 'ref249', 'CourierID0'),
(235, 'ref250', 'CourierID0'),
(236, 'ref251', 'CourierID0'),
(237, 'ref252', 'CourierID0'),
(238, 'ref253', 'CourierID0'),
(239, 'ref254', 'CourierID0'),
(240, 'ref255', 'CourierID0'),
(241, 'ref257', 'CourierID0'),
(242, 'ref259', 'CourierID0'),
(243, 'ref260', 'CourierID0'),
(244, 'ref261', 'CourierID0'),
(245, 'ref262', 'CourierID0'),
(246, 'ref263', 'CourierID0'),
(247, 'ref265', 'CourierID0'),
(248, 'ref266', 'CourierID0'),
(249, 'ref267', 'CourierID0'),
(250, 'ref268', 'CourierID0'),
(251, 'ref269', 'CourierID0'),
(252, 'ref270', 'CourierID0'),
(253, 'ref272', 'CourierID0'),
(254, 'ref273', 'CourierID0'),
(255, 'ref274', 'CourierID0'),
(256, 'ref275', 'CourierID0'),
(257, 'ref276', 'CourierID0'),
(258, 'ref277', 'CourierID0'),
(259, 'ref278', 'CourierID0'),
(260, 'ref279', 'CourierID0'),
(261, 'ref280', 'CourierID0'),
(262, 'ref281', 'CourierID0'),
(263, 'ref282', 'CourierID0'),
(264, 'ref283', 'CourierID0'),
(265, 'ref284', 'CourierID0'),
(266, 'ref285', 'CourierID0'),
(267, 'ref287', 'CourierID0'),
(268, 'ref288', 'CourierID0'),
(269, 'ref289', 'CourierID0'),
(270, 'ref290', 'CourierID0'),
(271, 'ref291', 'CourierID0');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourierdeliverycompleted`
--

CREATE TABLE `tblcourierdeliverycompleted` (
  `ID` int(11) NOT NULL,
  `deliveryID` int(11) NOT NULL,
  `DeliveryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourierdeliverycompleted`
--

INSERT INTO `tblcourierdeliverycompleted` (`ID`, `deliveryID`, `DeliveryDate`) VALUES
(5, 7, '2023-11-12 11:14:45'),
(6, 8, '2023-11-12 11:14:53'),
(7, 9, '2023-11-15 09:14:41'),
(8, 10, '2023-11-15 10:00:15'),
(9, 11, '2023-11-20 01:12:26'),
(10, 12, '2023-11-20 01:12:33'),
(11, 13, '2023-11-20 01:12:47'),
(12, 14, '2023-11-20 01:12:55'),
(13, 15, '2023-11-20 01:13:03'),
(14, 16, '2023-11-20 01:13:10'),
(15, 17, '2023-11-20 01:13:17'),
(16, 18, '2023-11-20 01:13:25'),
(17, 19, '2023-11-20 01:13:32'),
(18, 20, '2023-11-20 01:13:40'),
(19, 21, '2023-11-20 01:13:50'),
(20, 22, '2023-11-20 01:13:58'),
(21, 23, '2023-11-20 01:14:06'),
(22, 24, '2023-11-20 01:14:12'),
(23, 25, '2023-11-20 01:14:20'),
(24, 26, '2023-11-20 01:14:28'),
(25, 27, '2023-11-20 01:20:30'),
(26, 28, '2023-11-20 01:26:33'),
(27, 29, '2023-11-20 21:10:13'),
(28, 30, '2023-11-20 21:10:21'),
(29, 31, '2023-11-20 21:10:29'),
(30, 32, '2023-11-20 21:10:42'),
(31, 33, '2023-11-20 21:10:56'),
(32, 34, '2023-11-20 21:11:02'),
(33, 35, '2023-11-20 21:11:09'),
(34, 36, '2023-11-20 21:11:16'),
(35, 56, '2023-11-20 23:34:43'),
(36, 55, '2023-11-20 23:35:12'),
(37, 54, '2023-11-20 23:35:21'),
(38, 53, '2023-11-20 23:35:29'),
(39, 52, '2023-11-20 23:35:37'),
(40, 51, '2023-11-20 23:35:44'),
(41, 50, '2023-11-20 23:36:24'),
(42, 49, '2023-11-20 23:36:50'),
(43, 48, '2023-11-20 23:37:02'),
(44, 47, '2023-11-20 23:41:34'),
(45, 46, '2023-11-20 23:41:45'),
(46, 45, '2023-11-20 23:41:53'),
(47, 44, '2023-11-20 23:42:02'),
(48, 43, '2023-11-20 23:42:10'),
(49, 42, '2023-11-20 23:42:16'),
(50, 41, '2023-11-20 23:42:24'),
(51, 40, '2023-11-20 23:42:58'),
(52, 39, '2023-11-20 23:43:05'),
(53, 38, '2023-11-20 23:43:12'),
(54, 37, '2023-11-20 23:43:19'),
(55, 57, '2023-11-22 17:27:51'),
(56, 58, '2023-11-22 17:29:20'),
(57, 59, '2023-11-22 23:31:22'),
(58, 58, '2023-11-22 23:31:49'),
(59, 60, '2023-11-22 23:32:01'),
(60, 61, '2023-11-22 23:32:18'),
(61, 62, '2023-11-22 23:32:28'),
(62, 63, '2023-11-22 23:32:40'),
(63, 64, '2023-11-22 23:32:50'),
(64, 65, '2023-11-23 03:51:34'),
(65, 66, '2023-11-29 00:26:35'),
(66, 67, '2023-11-29 00:26:40'),
(67, 68, '2023-11-29 00:26:43'),
(68, 69, '2023-11-29 00:26:48'),
(69, 70, '2023-11-29 00:26:52'),
(70, 71, '2023-11-29 00:26:57'),
(71, 72, '2023-11-29 00:27:01'),
(72, 73, '2023-11-29 00:27:04'),
(73, 74, '2023-11-29 00:27:09'),
(74, 75, '2023-11-29 00:27:15'),
(75, 76, '2023-11-29 00:27:19'),
(76, 77, '2023-11-29 00:27:22'),
(77, 78, '2023-11-29 00:27:25'),
(78, 79, '2023-11-29 00:27:33'),
(79, 80, '2023-11-29 00:27:36'),
(80, 81, '2023-11-29 00:27:41'),
(81, 82, '2023-11-29 00:27:45'),
(82, 83, '2023-11-29 00:27:48'),
(83, 84, '2023-11-29 00:27:52'),
(84, 85, '2023-11-29 00:27:56'),
(85, 86, '2023-11-29 00:27:59'),
(86, 87, '2023-11-29 00:28:03'),
(87, 88, '2023-11-29 00:28:07'),
(88, 89, '2023-11-29 00:28:15'),
(89, 90, '2023-11-29 00:28:18'),
(90, 91, '2023-11-29 00:28:22'),
(91, 92, '2023-11-29 00:28:26'),
(92, 93, '2023-11-29 00:28:31'),
(93, 94, '2023-11-29 00:30:38'),
(94, 95, '2023-11-29 00:30:43'),
(95, 96, '2023-11-29 00:30:47'),
(96, 97, '2023-11-29 00:30:51'),
(97, 98, '2023-11-29 00:30:55'),
(98, 99, '2023-11-29 00:30:59'),
(99, 100, '2023-11-29 00:31:04'),
(100, 101, '2023-11-29 00:31:08'),
(101, 102, '2023-11-29 00:31:12'),
(102, 103, '2023-11-29 00:31:16'),
(103, 104, '2023-11-29 00:31:21'),
(104, 105, '2023-11-29 00:31:25'),
(105, 106, '2023-11-29 00:31:28'),
(106, 107, '2023-11-29 00:31:31'),
(107, 108, '2023-11-29 00:31:35'),
(108, 109, '2023-11-29 00:31:37'),
(109, 110, '2023-11-29 00:31:41'),
(110, 111, '2023-11-29 00:31:44'),
(111, 112, '2023-11-29 00:31:49'),
(112, 113, '2023-11-29 00:31:52'),
(113, 114, '2023-11-29 00:31:56'),
(114, 115, '2023-11-29 00:31:58'),
(115, 116, '2023-11-29 00:32:01'),
(116, 117, '2023-11-29 00:32:04'),
(117, 118, '2023-11-29 00:32:08'),
(118, 119, '2023-11-29 00:32:12'),
(119, 120, '2023-11-29 00:32:16'),
(120, 121, '2023-11-29 00:32:19'),
(121, 122, '2023-11-29 00:32:22'),
(122, 123, '2023-11-29 00:32:25'),
(123, 124, '2023-11-29 00:32:28'),
(124, 125, '2023-11-29 00:32:31'),
(125, 126, '2023-11-29 00:32:35'),
(126, 127, '2023-11-29 00:32:38'),
(127, 128, '2023-11-29 00:32:41'),
(128, 129, '2023-11-29 00:32:44'),
(129, 130, '2023-11-29 00:32:49'),
(130, 131, '2023-11-29 00:32:52'),
(131, 132, '2023-11-29 00:32:55'),
(132, 133, '2023-11-29 00:32:58'),
(133, 134, '2023-11-29 00:33:02'),
(134, 135, '2023-11-29 00:33:05'),
(135, 136, '2023-11-29 00:33:08'),
(136, 137, '2023-11-29 00:33:12'),
(137, 138, '2023-11-29 00:33:15'),
(138, 139, '2023-11-29 00:33:18'),
(139, 140, '2023-11-29 00:33:22'),
(140, 141, '2023-11-29 00:33:26'),
(141, 142, '2023-11-29 00:33:29'),
(142, 143, '2023-11-29 00:33:33'),
(143, 144, '2023-11-29 00:33:36'),
(144, 145, '2023-11-29 00:33:46'),
(145, 146, '2023-11-29 00:37:16'),
(146, 147, '2023-11-29 00:37:19'),
(147, 148, '2023-11-29 00:37:23'),
(148, 149, '2023-11-29 00:37:27'),
(149, 150, '2023-11-29 00:37:31'),
(150, 151, '2023-11-29 00:37:34'),
(151, 152, '2023-11-29 00:37:36'),
(152, 153, '2023-11-29 00:37:39'),
(153, 154, '2023-11-29 00:37:44'),
(154, 155, '2023-11-29 00:37:47'),
(155, 156, '2023-11-29 00:37:50'),
(156, 157, '2023-11-29 00:37:53'),
(157, 158, '2023-11-29 00:37:56'),
(158, 159, '2023-11-29 00:38:00'),
(159, 160, '2023-11-29 00:38:03'),
(160, 161, '2023-11-29 00:38:06'),
(161, 162, '2023-11-29 00:38:09'),
(162, 163, '2023-11-29 00:38:12'),
(163, 164, '2023-11-29 00:38:14'),
(164, 165, '2023-11-29 00:38:17'),
(165, 166, '2023-11-29 00:38:19'),
(166, 167, '2023-11-29 00:38:22'),
(167, 168, '2023-11-29 00:38:26'),
(168, 170, '2023-11-29 00:38:29'),
(169, 169, '2023-11-29 00:38:31'),
(170, 171, '2023-11-29 00:38:34'),
(171, 172, '2023-11-29 00:38:38'),
(172, 173, '2023-11-29 00:38:41'),
(173, 174, '2023-11-29 00:38:43'),
(174, 175, '2023-11-29 00:38:46'),
(175, 176, '2023-11-29 00:38:49'),
(176, 177, '2023-11-29 00:38:52'),
(177, 178, '2023-11-29 00:38:55'),
(178, 179, '2023-11-29 00:38:57'),
(179, 181, '2023-11-29 00:39:00'),
(180, 182, '2023-11-29 00:39:02'),
(181, 182, '2023-11-29 00:39:03'),
(182, 183, '2023-11-29 00:39:13'),
(183, 184, '2023-11-29 00:39:17'),
(184, 185, '2023-11-29 00:39:20'),
(185, 186, '2023-11-29 00:39:23'),
(186, 187, '2023-11-29 00:39:26'),
(187, 188, '2023-11-29 00:39:28'),
(188, 189, '2023-11-29 00:39:31'),
(189, 190, '2023-11-29 00:39:33'),
(190, 191, '2023-11-29 00:39:35'),
(191, 192, '2023-11-29 00:39:38'),
(192, 193, '2023-11-29 00:39:40'),
(193, 194, '2023-11-29 00:39:56'),
(194, 195, '2023-11-29 00:40:00'),
(195, 196, '2023-11-29 00:40:04'),
(196, 197, '2023-11-29 00:40:06'),
(197, 198, '2023-11-29 00:40:09'),
(198, 199, '2023-11-29 00:40:11'),
(199, 200, '2023-11-29 00:40:14'),
(200, 201, '2023-11-29 00:40:16'),
(201, 202, '2023-11-29 00:40:19'),
(202, 203, '2023-11-29 00:40:21'),
(203, 204, '2023-11-29 00:40:24'),
(204, 205, '2023-11-29 00:40:27'),
(205, 206, '2023-11-29 00:40:30'),
(206, 207, '2023-11-29 00:40:33'),
(207, 208, '2023-11-29 00:40:35'),
(208, 209, '2023-11-29 00:40:39'),
(209, 210, '2023-11-29 00:53:49'),
(210, 211, '2023-11-29 00:53:53'),
(211, 212, '2023-11-29 00:53:56'),
(212, 213, '2023-11-29 00:53:59'),
(213, 214, '2023-11-29 00:54:01'),
(214, 215, '2023-11-29 00:54:04'),
(215, 216, '2023-11-29 00:54:07'),
(216, 217, '2023-11-29 00:54:09'),
(217, 218, '2023-11-29 00:54:12'),
(218, 219, '2023-11-29 00:54:14'),
(219, 220, '2023-11-29 00:54:17'),
(220, 221, '2023-11-29 00:54:19'),
(221, 222, '2023-11-29 00:54:22'),
(222, 223, '2023-11-29 00:54:24'),
(223, 224, '2023-11-29 00:54:27'),
(224, 225, '2023-11-29 00:54:29'),
(225, 226, '2023-11-29 00:54:32'),
(226, 227, '2023-11-29 00:54:34'),
(227, 228, '2023-11-29 00:54:37'),
(228, 229, '2023-11-29 00:54:39'),
(229, 230, '2023-11-29 00:54:42'),
(230, 231, '2023-11-29 00:54:44'),
(231, 232, '2023-11-29 00:54:46'),
(232, 233, '2023-11-29 00:54:49'),
(233, 234, '2023-11-29 00:54:51'),
(234, 235, '2023-11-29 00:54:54'),
(235, 236, '2023-11-29 00:54:57'),
(236, 237, '2023-11-29 00:54:59'),
(237, 238, '2023-11-29 00:55:05'),
(238, 239, '2023-11-29 00:55:08'),
(239, 240, '2023-11-29 00:55:11'),
(240, 241, '2023-11-29 00:55:13'),
(241, 242, '2023-11-29 01:01:44'),
(242, 243, '2023-11-29 01:01:47'),
(243, 244, '2023-11-29 01:01:49'),
(244, 245, '2023-11-29 01:01:52'),
(245, 246, '2023-11-29 01:01:54'),
(246, 247, '2023-11-29 01:01:56'),
(247, 248, '2023-11-29 01:01:59'),
(248, 249, '2023-11-29 01:02:01'),
(249, 250, '2023-11-29 01:02:03'),
(250, 251, '2023-11-29 01:02:05'),
(251, 252, '2023-11-29 01:02:08'),
(252, 253, '2023-11-29 01:02:10'),
(253, 254, '2023-11-29 01:02:12'),
(254, 255, '2023-11-29 01:02:15'),
(255, 256, '2023-11-29 01:02:18'),
(256, 257, '2023-11-29 01:03:33'),
(257, 258, '2023-11-29 01:03:36'),
(258, 259, '2023-11-29 01:03:38'),
(259, 260, '2023-11-29 01:03:41'),
(260, 261, '2023-11-29 01:03:43'),
(261, 262, '2023-11-29 01:03:46'),
(262, 263, '2023-11-29 01:03:49'),
(263, 264, '2023-11-29 01:03:51'),
(264, 265, '2023-11-29 01:03:54'),
(265, 266, '2023-11-29 01:03:57'),
(266, 267, '2023-11-29 01:03:59'),
(267, 268, '2023-11-29 01:04:02'),
(268, 269, '2023-11-29 01:04:04'),
(269, 270, '2023-11-29 01:04:06'),
(270, 271, '2023-11-29 01:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourierdeliverydate`
--

CREATE TABLE `tblcourierdeliverydate` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `DeliveryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourierdeliverydate`
--

INSERT INTO `tblcourierdeliverydate` (`ID`, `OrderRefNumber`, `DeliveryDate`) VALUES
(7, 'ref8', '2023-11-12 11:14:18'),
(8, 'ref9', '2023-11-12 11:14:24'),
(9, 'ref10', '2023-11-15 09:13:48'),
(10, 'ref11', '2023-11-15 09:54:58'),
(11, 'ref15', '2023-11-18 02:35:23'),
(12, 'ref14', '2023-11-19 15:59:26'),
(13, 'ref16', '2023-11-20 01:09:26'),
(14, 'ref17', '2023-11-20 01:09:32'),
(15, 'ref18', '2023-11-20 01:09:39'),
(16, 'ref19', '2023-11-20 01:09:52'),
(17, 'ref20', '2023-11-20 01:09:59'),
(18, 'ref21', '2023-11-20 01:10:07'),
(19, 'ref22', '2023-11-20 01:10:15'),
(20, 'ref23', '2023-11-20 01:10:21'),
(21, 'ref24', '2023-11-20 01:10:27'),
(22, 'ref25', '2023-11-20 01:10:34'),
(23, 'ref26', '2023-11-20 01:10:40'),
(24, 'ref27', '2023-11-20 01:10:53'),
(25, 'ref28', '2023-11-20 01:10:59'),
(26, 'ref29', '2023-11-20 01:11:04'),
(27, 'ref30', '2023-11-20 01:19:52'),
(28, 'ref31', '2023-11-20 01:25:58'),
(29, 'ref32', '2023-11-20 21:08:32'),
(30, 'ref33', '2023-11-20 21:08:43'),
(31, 'ref34', '2023-11-20 21:08:48'),
(32, 'ref35', '2023-11-20 21:08:55'),
(33, 'ref36', '2023-11-20 21:09:01'),
(34, 'ref37', '2023-11-20 21:09:06'),
(35, 'ref38', '2023-11-20 21:09:12'),
(36, 'ref39', '2023-11-20 21:09:19'),
(37, 'ref60', '2023-11-20 23:30:20'),
(38, 'ref59', '2023-11-20 23:30:30'),
(39, 'ref58', '2023-11-20 23:30:38'),
(40, 'ref57', '2023-11-20 23:30:46'),
(41, 'ref56', '2023-11-20 23:30:53'),
(42, 'ref55', '2023-11-20 23:31:00'),
(43, 'ref54', '2023-11-20 23:31:07'),
(44, 'ref53', '2023-11-20 23:31:32'),
(45, 'ref51', '2023-11-20 23:31:39'),
(46, 'ref50', '2023-11-20 23:31:46'),
(47, 'ref49', '2023-11-20 23:31:56'),
(48, 'ref48', '2023-11-20 23:32:06'),
(49, 'ref47', '2023-11-20 23:32:14'),
(50, 'ref46', '2023-11-20 23:32:21'),
(51, 'ref45', '2023-11-20 23:32:27'),
(52, 'ref44', '2023-11-20 23:32:44'),
(53, 'ref43', '2023-11-20 23:32:50'),
(54, 'ref42', '2023-11-20 23:33:09'),
(55, 'ref41', '2023-11-20 23:33:15'),
(56, 'ref40', '2023-11-20 23:33:22'),
(57, 'ref63', '2023-11-22 17:26:59'),
(58, 'ref64', '2023-11-22 17:28:35'),
(59, 'ref68', '2023-11-22 21:04:00'),
(60, 'ref65', '2023-11-22 23:29:46'),
(61, 'ref66', '2023-11-22 23:29:56'),
(62, 'ref67', '2023-11-22 23:30:08'),
(63, 'ref70', '2023-11-22 23:30:19'),
(64, 'ref69', '2023-11-22 23:30:27'),
(65, 'ref71', '2023-11-23 03:50:37'),
(66, 'ref99', '2023-11-28 23:59:08'),
(67, 'ref98', '2023-11-28 23:59:21'),
(68, 'ref100', '2023-11-28 23:59:29'),
(69, 'ref101', '2023-11-28 23:59:34'),
(70, 'ref102', '2023-11-28 23:59:39'),
(71, 'ref103', '2023-11-28 23:59:45'),
(72, 'ref104', '2023-11-28 23:59:50'),
(73, 'ref105', '2023-11-28 23:59:55'),
(74, 'ref106', '2023-11-29 00:00:00'),
(75, 'ref107', '2023-11-29 00:00:06'),
(76, 'ref108', '2023-11-29 00:00:10'),
(77, 'ref109', '2023-11-29 00:00:15'),
(78, 'ref110', '2023-11-29 00:00:19'),
(79, 'ref111', '2023-11-29 00:00:24'),
(80, 'ref112', '2023-11-29 00:00:29'),
(81, 'ref113', '2023-11-29 00:00:34'),
(82, 'ref114', '2023-11-29 00:00:38'),
(83, 'ref115', '2023-11-29 00:00:43'),
(84, 'ref116', '2023-11-29 00:00:48'),
(85, 'ref117', '2023-11-29 00:00:52'),
(86, 'ref118', '2023-11-29 00:00:57'),
(87, 'ref119', '2023-11-29 00:01:01'),
(88, 'ref120', '2023-11-29 00:01:07'),
(89, 'ref121', '2023-11-29 00:01:12'),
(90, 'ref122', '2023-11-29 00:01:16'),
(91, 'ref123', '2023-11-29 00:01:21'),
(92, 'ref124', '2023-11-29 00:01:36'),
(93, 'ref125', '2023-11-29 00:01:42'),
(94, 'ref126', '2023-11-29 00:01:46'),
(95, 'ref127', '2023-11-29 00:01:51'),
(96, 'ref128', '2023-11-29 00:01:55'),
(97, 'ref129', '2023-11-29 00:02:01'),
(98, 'ref130', '2023-11-29 00:02:07'),
(99, 'ref131', '2023-11-29 00:02:13'),
(100, 'ref132', '2023-11-29 00:02:19'),
(101, 'ref133', '2023-11-29 00:02:24'),
(102, 'ref134', '2023-11-29 00:02:29'),
(103, 'ref135', '2023-11-29 00:02:33'),
(104, 'ref136', '2023-11-29 00:02:37'),
(105, 'ref137', '2023-11-29 00:02:42'),
(106, 'ref138', '2023-11-29 00:02:47'),
(107, 'ref139', '2023-11-29 00:02:51'),
(108, 'ref140', '2023-11-29 00:02:55'),
(109, 'ref141', '2023-11-29 00:02:59'),
(110, 'ref142', '2023-11-29 00:03:05'),
(111, 'ref143', '2023-11-29 00:03:09'),
(112, 'ref144', '2023-11-29 00:03:13'),
(113, 'ref145', '2023-11-29 00:03:17'),
(114, 'ref146', '2023-11-29 00:03:25'),
(115, 'ref147', '2023-11-29 00:03:29'),
(116, 'ref148', '2023-11-29 00:03:35'),
(117, 'ref149', '2023-11-29 00:03:39'),
(118, 'ref150', '2023-11-29 00:03:43'),
(119, 'ref151', '2023-11-29 00:03:47'),
(120, 'ref152', '2023-11-29 00:03:52'),
(121, 'ref153', '2023-11-29 00:03:56'),
(122, 'ref154', '2023-11-29 00:06:46'),
(123, 'ref155', '2023-11-29 00:06:50'),
(124, 'ref156', '2023-11-29 00:06:57'),
(125, 'ref157', '2023-11-29 00:07:02'),
(126, 'ref158', '2023-11-29 00:07:07'),
(127, 'ref159', '2023-11-29 00:07:11'),
(128, 'ref160', '2023-11-29 00:07:16'),
(129, 'ref161', '2023-11-29 00:07:21'),
(130, 'ref162', '2023-11-29 00:07:25'),
(131, 'ref163', '2023-11-29 00:07:30'),
(132, 'ref164', '2023-11-29 00:07:36'),
(133, 'ref165', '2023-11-29 00:07:41'),
(134, 'ref166', '2023-11-29 00:07:47'),
(135, 'ref167', '2023-11-29 00:07:52'),
(136, 'ref168', '2023-11-29 00:07:57'),
(137, 'ref169', '2023-11-29 00:08:01'),
(138, 'ref170', '2023-11-29 00:08:05'),
(139, 'ref171', '2023-11-29 00:08:10'),
(140, 'ref172', '2023-11-29 00:08:14'),
(141, 'ref173', '2023-11-29 00:08:21'),
(142, 'ref174', '2023-11-29 00:08:25'),
(143, 'ref175', '2023-11-29 00:08:30'),
(144, 'ref177', '2023-11-29 00:08:35'),
(145, 'ref178', '2023-11-29 00:08:39'),
(146, 'ref179', '2023-11-29 00:08:43'),
(147, 'ref180', '2023-11-29 00:08:49'),
(148, 'ref181', '2023-11-29 00:08:54'),
(149, 'ref182', '2023-11-29 00:08:58'),
(150, 'ref183', '2023-11-29 00:09:02'),
(151, 'ref184', '2023-11-29 00:09:07'),
(152, 'ref186', '2023-11-29 00:11:20'),
(153, 'ref188', '2023-11-29 00:11:24'),
(154, 'ref189', '2023-11-29 00:11:28'),
(155, 'ref190', '2023-11-29 00:11:32'),
(156, 'ref191', '2023-11-29 00:11:38'),
(157, 'ref192', '2023-11-29 00:11:43'),
(158, 'ref193', '2023-11-29 00:11:49'),
(159, 'ref194', '2023-11-29 00:11:54'),
(160, 'ref195', '2023-11-29 00:11:58'),
(161, 'ref196', '2023-11-29 00:12:02'),
(162, 'ref197', '2023-11-29 00:12:07'),
(163, 'ref198', '2023-11-29 00:12:11'),
(164, 'ref199', '2023-11-29 00:12:15'),
(165, 'ref200', '2023-11-29 00:12:20'),
(166, 'ref202', '2023-11-29 00:12:24'),
(167, 'ref203', '2023-11-29 00:12:28'),
(168, 'ref204', '2023-11-29 00:12:31'),
(169, 'ref205', '2023-11-29 00:12:35'),
(170, 'ref206', '2023-11-29 00:12:41'),
(171, 'ref207', '2023-11-29 00:12:45'),
(172, 'ref208', '2023-11-29 00:12:49'),
(173, 'ref209', '2023-11-29 00:12:54'),
(174, 'ref210', '2023-11-29 00:12:58'),
(175, 'ref211', '2023-11-29 00:13:02'),
(176, 'ref212', '2023-11-29 00:13:06'),
(177, 'ref214', '2023-11-29 00:13:10'),
(178, 'ref215', '2023-11-29 00:13:34'),
(179, 'ref216', '2023-11-29 00:13:43'),
(180, 'ref217', '2023-11-29 00:19:01'),
(181, 'ref218', '2023-11-29 00:19:06'),
(182, 'ref219', '2023-11-29 00:19:10'),
(183, 'ref220', '2023-11-29 00:19:14'),
(184, 'ref72', '2023-11-29 00:19:19'),
(185, 'ref73', '2023-11-29 00:19:23'),
(186, 'ref74', '2023-11-29 00:19:27'),
(187, 'ref75', '2023-11-29 00:19:31'),
(188, 'ref76', '2023-11-29 00:19:35'),
(189, 'ref77', '2023-11-29 00:19:40'),
(190, 'ref78', '2023-11-29 00:19:45'),
(191, 'ref79', '2023-11-29 00:19:49'),
(192, 'ref80', '2023-11-29 00:19:53'),
(193, 'ref81', '2023-11-29 00:19:57'),
(194, 'ref82', '2023-11-29 00:20:01'),
(195, 'ref83', '2023-11-29 00:20:05'),
(196, 'ref84', '2023-11-29 00:20:09'),
(197, 'ref85', '2023-11-29 00:20:13'),
(198, 'ref86', '2023-11-29 00:20:18'),
(199, 'ref87', '2023-11-29 00:20:22'),
(200, 'ref89', '2023-11-29 00:20:55'),
(201, 'ref90', '2023-11-29 00:21:00'),
(202, 'ref91', '2023-11-29 00:21:04'),
(203, 'ref92', '2023-11-29 00:21:09'),
(204, 'ref94', '2023-11-29 00:21:13'),
(205, 'ref93', '2023-11-29 00:21:20'),
(206, 'ref95', '2023-11-29 00:21:26'),
(207, 'ref96', '2023-11-29 00:21:30'),
(208, 'ref97', '2023-11-29 00:21:35'),
(209, 'ref222', '2023-11-29 00:47:44'),
(210, 'ref223', '2023-11-29 00:47:49'),
(211, 'ref224', '2023-11-29 00:47:53'),
(212, 'ref225', '2023-11-29 00:47:58'),
(213, 'ref226', '2023-11-29 00:48:02'),
(214, 'ref227', '2023-11-29 00:48:06'),
(215, 'ref228', '2023-11-29 00:48:11'),
(216, 'ref229', '2023-11-29 00:48:15'),
(217, 'ref230', '2023-11-29 00:48:19'),
(218, 'ref232', '2023-11-29 00:48:24'),
(219, 'ref233', '2023-11-29 00:48:29'),
(220, 'ref235', '2023-11-29 00:48:32'),
(221, 'ref236', '2023-11-29 00:48:37'),
(222, 'ref238', '2023-11-29 00:48:41'),
(223, 'ref239', '2023-11-29 00:48:45'),
(224, 'ref240', '2023-11-29 00:48:49'),
(225, 'ref241', '2023-11-29 00:48:53'),
(226, 'ref242', '2023-11-29 00:48:59'),
(227, 'ref243', '2023-11-29 00:49:03'),
(228, 'ref244', '2023-11-29 00:49:07'),
(229, 'ref245', '2023-11-29 00:49:11'),
(230, 'ref246', '2023-11-29 00:49:15'),
(231, 'ref247', '2023-11-29 00:49:18'),
(232, 'ref248', '2023-11-29 00:49:22'),
(233, 'ref249', '2023-11-29 00:49:26'),
(234, 'ref250', '2023-11-29 00:49:30'),
(235, 'ref251', '2023-11-29 00:49:34'),
(236, 'ref252', '2023-11-29 00:49:39'),
(237, 'ref253', '2023-11-29 00:49:43'),
(238, 'ref254', '2023-11-29 00:49:47'),
(239, 'ref255', '2023-11-29 00:49:50'),
(240, 'ref257', '2023-11-29 00:49:54'),
(241, 'ref259', '2023-11-29 00:49:57'),
(242, 'ref260', '2023-11-29 00:50:01'),
(243, 'ref261', '2023-11-29 00:50:05'),
(244, 'ref262', '2023-11-29 00:50:10'),
(245, 'ref263', '2023-11-29 00:50:46'),
(246, 'ref265', '2023-11-29 00:50:50'),
(247, 'ref266', '2023-11-29 00:50:54'),
(248, 'ref267', '2023-11-29 00:50:58'),
(249, 'ref268', '2023-11-29 00:51:02'),
(250, 'ref269', '2023-11-29 00:51:07'),
(251, 'ref270', '2023-11-29 00:51:11'),
(252, 'ref272', '2023-11-29 00:51:15'),
(253, 'ref273', '2023-11-29 00:51:18'),
(254, 'ref274', '2023-11-29 00:51:23'),
(255, 'ref275', '2023-11-29 00:51:27'),
(256, 'ref276', '2023-11-29 00:51:31'),
(257, 'ref277', '2023-11-29 00:51:35'),
(258, 'ref278', '2023-11-29 00:51:39'),
(259, 'ref279', '2023-11-29 00:51:43'),
(260, 'ref280', '2023-11-29 00:51:47'),
(261, 'ref281', '2023-11-29 00:51:52'),
(262, 'ref282', '2023-11-29 00:51:58'),
(263, 'ref283', '2023-11-29 00:52:02'),
(264, 'ref284', '2023-11-29 00:52:06'),
(265, 'ref285', '2023-11-29 00:52:10'),
(266, 'ref287', '2023-11-29 00:52:14'),
(267, 'ref288', '2023-11-29 00:52:18'),
(268, 'ref289', '2023-11-29 00:52:21'),
(269, 'ref290', '2023-11-29 00:52:25'),
(270, 'ref291', '2023-11-29 00:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourierinformation`
--

CREATE TABLE `tblcourierinformation` (
  `courierID` varchar(25) NOT NULL,
  `ID` int(11) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `MI` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ContactNo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourierinformation`
--

INSERT INTO `tblcourierinformation` (`courierID`, `ID`, `Lastname`, `Firstname`, `MI`, `Address`, `Email`, `ContactNo`) VALUES
('CourierID0', 1, 'Hamill', 'Tyrell', 'Tyrell', 'Angono Rizal', 'bryanken01230@gmail.com', '09123456789'),
('CourierID2', 2, 'Gorembalim', 'Rodney', 'James', 'Cainta Rizal', 'rodneyjames@gmail.com', '0912345678'),
('CourierID3', 3, 'Besa', 'Miguel', 'A', 'Taytay Rizal', 'testemail@gmail.com', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrentmonth`
--

CREATE TABLE `tblcurrentmonth` (
  `itemID` int(11) NOT NULL,
  `todayCurrentVolume` varchar(100) DEFAULT '0',
  `RECEIVED_VOLUME` int(11) DEFAULT NULL,
  `APPEARANCE` varchar(100) DEFAULT NULL,
  `RELEASED_VOLUME` int(11) DEFAULT NULL,
  `REJECT_VOLUME` int(11) DEFAULT NULL,
  `HOLD_VOLUME` int(11) DEFAULT NULL,
  `PROD_RETURN` int(11) DEFAULT NULL,
  `DATE_TODAY` datetime NOT NULL,
  `MATERIAL_NAME` varchar(100) DEFAULT NULL,
  `CODE_NAME` varchar(100) NOT NULL,
  `SUPPLIER` varchar(100) DEFAULT NULL,
  `CATEGORIES` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcurrentmonth`
--

INSERT INTO `tblcurrentmonth` (`itemID`, `todayCurrentVolume`, `RECEIVED_VOLUME`, `APPEARANCE`, `RELEASED_VOLUME`, `REJECT_VOLUME`, `HOLD_VOLUME`, `PROD_RETURN`, `DATE_TODAY`, `MATERIAL_NAME`, `CODE_NAME`, `SUPPLIER`, `CATEGORIES`) VALUES
(2, '1000', 0, 'test', 0, 0, 0, 0, '2023-11-04 11:07:54', 'test', 'test', 'test', 'test'),
(20, '0', 0, 'test', 1000, 0, 0, 0, '2023-11-18 00:00:00', 'test', 'test', 'test', 'test'),
(21, '0', 0, 'TestAppearance', 0, 0, 0, 0, '2023-11-19 15:49:28', 'TestName', 'TestCodeName', 'TestSupplier', 'TestCat');

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrentmonthPackaging`
--

CREATE TABLE `tblcurrentmonthPackaging` (
  `itemID` int(11) NOT NULL,
  `todayCurrentVolume` varchar(100) DEFAULT '0',
  `RECEIVED_VOLUME` int(11) DEFAULT 0,
  `RELEASED_VOLUME` int(11) DEFAULT 0,
  `REJECT_VOLUME` int(11) DEFAULT 0,
  `HOLD_VOLUME` int(11) DEFAULT 0,
  `PROD_RETURN` int(11) DEFAULT 0,
  `DATE_TODAY` datetime NOT NULL,
  `MATERIAL_NAME` varchar(100) DEFAULT NULL,
  `VARIANT` varchar(100) NOT NULL,
  `CATEGORIES` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcurrentmonthPackaging`
--

INSERT INTO `tblcurrentmonthPackaging` (`itemID`, `todayCurrentVolume`, `RECEIVED_VOLUME`, `RELEASED_VOLUME`, `REJECT_VOLUME`, `HOLD_VOLUME`, `PROD_RETURN`, `DATE_TODAY`, `MATERIAL_NAME`, `VARIANT`, `CATEGORIES`) VALUES
(2, '0', 0, 0, 0, 0, 0, '2023-11-19 13:32:02', 'Clear Plastic', '5x7', 'Plastic'),
(3, '0', 0, 0, 0, 0, 0, '2023-11-19 13:53:38', 'Clear Plastic', '5x8', 'Plastic'),
(4, '0', 0, 0, 0, 0, 0, '2023-11-19 13:54:15', 'Shrink Wrap Lip Tint', '5 ml', 'SHRINK WRAP'),
(5, '1000', 1000, 0, 0, 0, 0, '2023-11-23 01:02:43', 'Clear Plastic', '5x7', 'Plastic'),
(6, '1000', 1000, 1000, 0, 0, 0, '2023-11-22 00:00:00', 'Clear Plastic', '5x7', 'Plastic');

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrentmonth_archive`
--

CREATE TABLE `tblcurrentmonth_archive` (
  `itemID` int(11) NOT NULL,
  `todayCurrentVolume` varchar(100) DEFAULT NULL,
  `RECEIVED_VOLUME` int(11) DEFAULT NULL,
  `APPEARANCE` varchar(100) DEFAULT NULL,
  `RELEASED_VOLUME` int(11) DEFAULT NULL,
  `REJECT_VOLUME` int(11) DEFAULT NULL,
  `HOLD_VOLUME` int(11) DEFAULT NULL,
  `PROD_RETURN` int(11) DEFAULT NULL,
  `DATE_TODAY` datetime NOT NULL,
  `MATERIAL_NAME` varchar(100) DEFAULT NULL,
  `CODE_NAME` varchar(100) NOT NULL,
  `SUPPLIER` varchar(100) DEFAULT NULL,
  `CATEGORIES` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcurrentmonth_archive`
--

INSERT INTO `tblcurrentmonth_archive` (`itemID`, `todayCurrentVolume`, `RECEIVED_VOLUME`, `APPEARANCE`, `RELEASED_VOLUME`, `REJECT_VOLUME`, `HOLD_VOLUME`, `PROD_RETURN`, `DATE_TODAY`, `MATERIAL_NAME`, `CODE_NAME`, `SUPPLIER`, `CATEGORIES`) VALUES
(1, '1000', 0, 'test2', 0, 0, 0, 0, '2023-11-04 00:52:59', 'test1', 'test3', 'test4', 'test5');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomeraccount`
--

CREATE TABLE `tblcustomeraccount` (
  `UserID` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcustomeraccount`
--

INSERT INTO `tblcustomeraccount` (`UserID`, `Username`, `Password`) VALUES
('admin#253', 'admin', 'admin'),
('asd#982', 'asd', 'dglnpt1z'),
('bryanken01230#175', 'bryanken01230@gmail.com', 'f77rsf87'),
('bryanken01230#508', 'bryanken01230', 'password'),
('bryanken012301#441', 'bryanken012301@gmail.com', 'i5x6b57q'),
('joserizal#868', 'joserizal', 'password'),
('lidew27774#732', 'lidew27774@mainoj.com', '3j5hhto1'),
('miguelbesa249#321', 'miguelbesa249', 'password'),
('pebini#710', 'pebini', 'u2do1ab5'),
('ravenberenguila#536', 'ravenberenguila', 'password'),
('test#497', 'test', '0276q3vi'),
('test1#667', 'test1', 'password'),
('testEmail#715', 'testEmail', 'gghjuvxd'),
('testestest#781', 'testestest', '4dlujod7'),
('yedat23115#316', 'yedat23115@marksia.com', 'cu5yixqt');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomerdiscount`
--

CREATE TABLE `tblcustomerdiscount` (
  `userID` varchar(25) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomerinformation`
--

CREATE TABLE `tblcustomerinformation` (
  `UserID` varchar(25) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `Firstname` varchar(20) NOT NULL,
  `MI` varchar(5) DEFAULT NULL,
  `Address` text NOT NULL,
  `Number` varchar(15) NOT NULL,
  `Description` text DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `AccountType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcustomerinformation`
--

INSERT INTO `tblcustomerinformation` (`UserID`, `Lastname`, `Firstname`, `MI`, `Address`, `Number`, `Description`, `Discount`, `email`, `AccountType`) VALUES
('admin#253', 'Altes', 'Bryan Ken', 'D', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', '09158350780', 'testProduct', 0, 'xyzy@mailinator.com', 'Rebranding'),
('asd#982', 'asda', 'asd', 'as', 'asdasd', '00', 'asda', 0, 'asd@testmail.com', 'Rebranding'),
('bryanken01230#175', 'French', 'Armand', 'Er', 'Porro error eius con Bohetambis Tuburan, Basilan', '09123456789', 'Brand X', 0, 'bryanken01230@gmail.comRENAME1', 'Rebranding'),
('bryanken01230#508', 'Altes', 'Bryan Ken', 'S', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', '09158350780', 'Brand X', 0, 'bryanken01230RENAME@gmail.com', ''),
('bryanken012301#441', 'French', 'Armand', 'Er', 'Porro error eius con Bohetambis Tuburan, Basilan', '09123456789', 'Brand X', 0, 'bryanken01230@gmail.com', 'Rebranding'),
('joserizal#868', 'Jose', 'Rizal', 'P', 'Kalayaan Kalayaan Angono, Rizal', '09123456789', 'Jose Rizal', 0, 'kenkenaltesRENAME@gmail.com', 'Rebranding'),
('lidew27774#732', 'Brennan', 'Dahlia', 'Fu', 'Libero voluptate odi    ,  ', '09123456789', 'Brand X', 0, 'lidew27774@mainoj.com', 'Rebranding'),
('miguelbesa249#321', 'Besa', 'Miguel Antonio ', 'A', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', '09297879863', 'Brand x', 0, 'miguelbesa249RENAME@gmail.com', ''),
('pebini#710', 'Mason', 'Amanda', 'Mag', 'Rerum eveniet non p Bangilan Kabacan, Cotabato', '09123456789', '', 0, 'pebini5150@rdluxe.com', 'Rebranding'),
('ravenberenguila#536', 'berenguila', 'raven', 'a', 'luklukan Bilibiran Binangonan, Rizal', '09212121211', '', 0, 'ravenberenguilaRENAME@gmail.com', 'Rebranding'),
('test#497', 'TestL', 'TestF', 'TestM', 'testAdd', '0912345', '', 0, 'testEmailll@gma.com', 'Rebranding'),
('test1#667', 'Altes', 'Bryan Ken', 'S', 'Angono Rizal', '09123456789', 'Test', 0, 'goropip520@notedns.com', 'Rebranding'),
('testEmail#715', 'Altes', 'Bryan Ken', 'S', 'Test Address', '09123456789', '', 0, 'testEmailgmail.com', 'Rebranding'),
('testestest#781', 'test', 'test', 'test', 'testtestest', '09123456789', '123123', 0, 'test@gmail.com', 'Rebranding'),
('yedat23115#316', 'Waller', 'Carson', 'It', 'Sunt iste cum ea do Talahik Surallah, South Cotabato', '09123456789', '', 0, 'yedat23115@marksia.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbldisposproduct`
--

CREATE TABLE `tbldisposproduct` (
  `ID` int(11) NOT NULL,
  `ProdName` varchar(100) NOT NULL,
  `Variant` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmonthlysummary`
--

CREATE TABLE `tblmonthlysummary` (
  `itemID` int(11) NOT NULL,
  `MATERIAL_NAME` varchar(100) DEFAULT NULL,
  `CODE_NAME` varchar(100) NOT NULL,
  `CONTROL_NUMBER` varchar(100) DEFAULT NULL,
  `SUPPLIER` varchar(100) DEFAULT NULL,
  `CATEGORIES` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblorderapproved`
--

CREATE TABLE `tblorderapproved` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `ApprovedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorderapproved`
--

INSERT INTO `tblorderapproved` (`ID`, `OrderRefNumber`, `ApprovedBy`) VALUES
(1, 'ref1', '1'),
(2, 'ref2', '1'),
(3, 'ref3', '1'),
(4, 'ref4', '1'),
(5, 'ref6', '1'),
(6, 'ref7', '1'),
(7, 'ref8', '1'),
(8, 'ref9', '1'),
(9, 'ref10', '1'),
(10, 'ref11', '1'),
(11, 'ref15', '1'),
(12, 'ref14', '1'),
(13, 'ref16', '1'),
(14, 'ref17', '1'),
(15, 'ref18', '1'),
(16, 'ref19', '1'),
(17, 'ref20', '1'),
(18, 'ref21', '1'),
(19, 'ref22', '1'),
(20, 'ref23', '1'),
(21, 'ref24', '1'),
(22, 'ref25', '1'),
(23, 'ref26', '1'),
(24, 'ref27', '1'),
(25, 'ref28', '1'),
(26, 'ref29', '1'),
(27, 'ref30', '1'),
(28, 'ref31', '1'),
(29, 'ref39', '1'),
(30, 'ref38', '1'),
(31, 'ref37', '1'),
(32, 'ref36', '1'),
(33, 'ref35', '1'),
(34, 'ref34', '1'),
(35, 'ref33', '1'),
(36, 'ref32', '1'),
(37, 'ref40', '1'),
(38, 'ref41', '1'),
(39, 'ref42', '1'),
(40, 'ref43', '1'),
(41, 'ref44', '1'),
(42, 'ref45', '1'),
(43, 'ref46', '1'),
(44, 'ref47', '1'),
(45, 'ref48', '1'),
(46, 'ref49', '1'),
(47, 'ref50', '1'),
(48, 'ref51', '1'),
(49, 'ref52', '1'),
(50, 'ref53', '1'),
(51, 'ref54', '1'),
(52, 'ref55', '1'),
(53, 'ref56', '1'),
(54, 'ref57', '1'),
(55, 'ref58', '1'),
(56, 'ref59', '1'),
(57, 'ref60', '1'),
(58, 'ref63', '1'),
(59, 'ref64', '1'),
(60, 'ref68', '1'),
(61, 'ref65', '1'),
(62, 'ref70', '1'),
(63, 'ref69', '1'),
(64, 'ref67', '1'),
(65, 'ref66', '1'),
(66, 'ref71', '1'),
(67, 'ref72', '1'),
(68, 'ref73', '1'),
(69, 'ref74', '1'),
(70, 'ref75', '1'),
(71, 'ref76', '1'),
(72, 'ref77', '1'),
(73, 'ref78', '1'),
(74, 'ref79', '1'),
(75, 'ref80', '1'),
(76, 'ref81', '1'),
(77, 'ref82', '1'),
(78, 'ref83', '1'),
(79, 'ref84', '1'),
(80, 'ref85', '1'),
(81, 'ref86', '1'),
(82, 'ref87', '1'),
(83, 'ref88', '1'),
(84, 'ref89', '1'),
(85, 'ref90', '1'),
(86, 'ref91', '1'),
(87, 'ref92', '1'),
(88, 'ref93', '1'),
(89, 'ref94', '1'),
(90, 'ref95', '1'),
(91, 'ref96', '1'),
(92, 'ref97', '1'),
(93, 'ref98', '1'),
(94, 'ref99', '1'),
(95, 'ref100', '1'),
(96, 'ref101', '1'),
(97, 'ref102', '1'),
(98, 'ref103', '1'),
(99, 'ref104', '1'),
(100, 'ref105', '1'),
(101, 'ref106', '1'),
(102, 'ref107', '1'),
(103, 'ref108', '1'),
(104, 'ref109', '1'),
(105, 'ref110', '1'),
(106, 'ref111', '1'),
(107, 'ref112', '1'),
(108, 'ref113', '1'),
(109, 'ref114', '1'),
(110, 'ref115', '1'),
(111, 'ref116', '1'),
(112, 'ref117', '1'),
(113, 'ref118', '1'),
(114, 'ref119', '1'),
(115, 'ref120', '1'),
(116, 'ref121', '1'),
(117, 'ref122', '1'),
(118, 'ref123', '1'),
(119, 'ref124', '1'),
(120, 'ref125', '1'),
(121, 'ref126', '1'),
(122, 'ref127', '1'),
(123, 'ref128', '1'),
(124, 'ref129', '1'),
(125, 'ref130', '1'),
(126, 'ref131', '1'),
(127, 'ref132', '1'),
(128, 'ref133', '1'),
(129, 'ref134', '1'),
(130, 'ref135', '1'),
(131, 'ref136', '1'),
(132, 'ref137', '1'),
(133, 'ref138', '1'),
(134, 'ref139', '1'),
(135, 'ref140', '1'),
(136, 'ref141', '1'),
(137, 'ref142', '1'),
(138, 'ref143', '1'),
(139, 'ref144', '1'),
(140, 'ref145', '1'),
(141, 'ref146', '1'),
(142, 'ref147', '1'),
(143, 'ref148', '1'),
(144, 'ref149', '1'),
(145, 'ref150', '1'),
(146, 'ref151', '1'),
(147, 'ref152', '1'),
(148, 'ref153', '1'),
(149, 'ref154', '1'),
(150, 'ref155', '1'),
(151, 'ref156', '1'),
(152, 'ref157', '1'),
(153, 'ref158', '1'),
(154, 'ref159', '1'),
(155, 'ref160', '1'),
(156, 'ref161', '1'),
(157, 'ref162', '1'),
(158, 'ref163', '1'),
(159, 'ref164', '1'),
(160, 'ref165', '1'),
(161, 'ref166', '1'),
(162, 'ref167', '1'),
(163, 'ref168', '1'),
(164, 'ref169', '1'),
(165, 'ref170', '1'),
(166, 'ref171', '1'),
(167, 'ref172', '1'),
(168, 'ref173', '1'),
(169, 'ref174', '1'),
(170, 'ref175', '1'),
(171, 'ref176', '1'),
(172, 'ref177', '1'),
(173, 'ref178', '1'),
(174, 'ref179', '1'),
(175, 'ref180', '1'),
(176, 'ref181', '1'),
(177, 'ref182', '1'),
(178, 'ref183', '1'),
(179, 'ref184', '1'),
(180, 'ref185', '1'),
(181, 'ref186', '1'),
(182, 'ref187', '1'),
(183, 'ref188', '1'),
(184, 'ref189', '1'),
(185, 'ref190', '1'),
(186, 'ref191', '1'),
(187, 'ref192', '1'),
(188, 'ref193', '1'),
(189, 'ref194', '1'),
(190, 'ref195', '1'),
(191, 'ref196', '1'),
(192, 'ref197', '1'),
(193, 'ref198', '1'),
(194, 'ref199', '1'),
(195, 'ref200', '1'),
(196, 'ref202', '1'),
(197, 'ref203', '1'),
(198, 'ref204', '1'),
(199, 'ref205', '1'),
(200, 'ref206', '1'),
(201, 'ref207', '1'),
(202, 'ref208', '1'),
(203, 'ref209', '1'),
(204, 'ref210', '1'),
(205, 'ref211', '1'),
(206, 'ref212', '1'),
(207, 'ref214', '1'),
(208, 'ref215', '1'),
(209, 'ref216', '1'),
(210, 'ref217', '1'),
(211, 'ref218', '1'),
(212, 'ref219', '1'),
(213, 'ref220', '1'),
(214, 'ref201', '1'),
(215, 'ref213', '1'),
(216, 'ref221', '1'),
(217, 'ref222', '1'),
(218, 'ref223', '1'),
(219, 'ref224', '1'),
(220, 'ref225', '1'),
(221, 'ref226', '1'),
(222, 'ref227', '1'),
(223, 'ref228', '1'),
(224, 'ref229', '1'),
(225, 'ref230', '1'),
(226, 'ref231', '1'),
(227, 'ref232', '1'),
(228, 'ref233', '1'),
(229, 'ref234', '1'),
(230, 'ref235', '1'),
(231, 'ref236', '1'),
(232, 'ref237', '1'),
(233, 'ref238', '1'),
(234, 'ref239', '1'),
(235, 'ref240', '1'),
(236, 'ref241', '1'),
(237, 'ref242', '1'),
(238, 'ref243', '1'),
(239, 'ref244', '1'),
(240, 'ref245', '1'),
(241, 'ref246', '1'),
(242, 'ref247', '1'),
(243, 'ref248', '1'),
(244, 'ref249', '1'),
(245, 'ref250', '1'),
(246, 'ref251', '1'),
(247, 'ref252', '1'),
(248, 'ref253', '1'),
(249, 'ref254', '1'),
(250, 'ref255', '1'),
(251, 'ref256', '1'),
(252, 'ref257', '1'),
(253, 'ref258', '1'),
(254, 'ref259', '1'),
(255, 'ref260', '1'),
(256, 'ref261', '1'),
(257, 'ref262', '1'),
(258, 'ref263', '1'),
(259, 'ref264', '1'),
(260, 'ref265', '1'),
(261, 'ref266', '1'),
(262, 'ref267', '1'),
(263, 'ref268', '1'),
(264, 'ref269', '1'),
(265, 'ref270', '1'),
(266, 'ref271', '1'),
(267, 'ref272', '1'),
(268, 'ref273', '1'),
(269, 'ref274', '1'),
(270, 'ref275', '1'),
(271, 'ref276', '1'),
(272, 'ref277', '1'),
(273, 'ref278', '1'),
(274, 'ref279', '1'),
(275, 'ref280', '1'),
(276, 'ref281', '1'),
(277, 'ref282', '1'),
(278, 'ref283', '1'),
(279, 'ref284', '1'),
(280, 'ref285', '1'),
(281, 'ref286', '1'),
(282, 'ref287', '1'),
(283, 'ref288', '1'),
(284, 'ref289', '1'),
(285, 'ref290', '1'),
(286, 'ref291', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblorderarchive`
--

CREATE TABLE `tblorderarchive` (
  `OrderNumber` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `UserID` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `shippingFee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorderarchive`
--

INSERT INTO `tblorderarchive` (`OrderNumber`, `OrderRefNumber`, `OrderDate`, `UserID`, `address`, `contact`, `email`, `shippingFee`) VALUES
(5, 'ref5', '2023-10-31 13:57:05', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249@gmail.com', NULL),
(1, 'ref1', '2023-10-31 11:39:50', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230@gmail.com', NULL),
(2, 'ref2', '2023-10-31 11:48:20', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230@gmail.com', NULL),
(3, 'ref3', '2023-10-31 11:57:04', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230@gmail.com', NULL),
(4, 'ref4', '2023-10-31 13:45:46', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249@gmail.com', NULL),
(6, 'ref6', '2023-11-01 22:15:35', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230@gmail.com', NULL),
(7, 'ref7', '2023-11-01 22:21:45', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230@gmail.com', NULL),
(12, 'ref12', '2023-11-12 16:29:36', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', NULL),
(13, 'ref13', '2023-11-12 17:12:45', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', NULL),
(62, 'ref62', '2023-11-22 11:35:53', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', NULL),
(61, 'ref61', '2023-11-22 11:33:20', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblordercheckout`
--

CREATE TABLE `tblordercheckout` (
  `OrderNumber` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `UserID` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `shippingFee` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblordercheckout`
--

INSERT INTO `tblordercheckout` (`OrderNumber`, `OrderRefNumber`, `OrderDate`, `UserID`, `address`, `contact`, `email`, `shippingFee`) VALUES
(8, 'ref8', '2023-11-07 21:17:17', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(9, 'ref9', '2023-11-12 10:07:21', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(10, 'ref10', '2023-11-12 15:27:56', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(11, 'ref11', '2023-11-12 16:12:49', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(14, 'ref14', '2023-11-14 14:58:33', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(15, 'ref15', '2023-11-15 21:58:45', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(16, 'ref16', '2023-11-19 18:29:52', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(17, 'ref17', '2023-11-19 23:42:21', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(18, 'ref18', '2023-11-19 23:47:38', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(19, 'ref19', '2023-11-09 00:43:02', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(20, 'ref20', '2023-11-10 00:43:47', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(21, 'ref21', '2023-11-20 00:44:35', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(22, 'ref22', '2023-11-13 00:50:23', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(23, 'ref23', '2023-11-12 00:55:05', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(24, 'ref24', '2023-11-11 00:55:40', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(25, 'ref25', '2023-11-10 00:57:14', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(26, 'ref26', '2023-11-14 00:58:48', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(27, 'ref27', '2023-11-04 01:01:22', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(28, 'ref28', '2023-11-03 01:01:46', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(29, 'ref29', '2023-11-02 01:02:16', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(30, 'ref30', '2023-11-01 01:19:41', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(31, 'ref31', '2023-11-12 01:25:59', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(32, 'ref32', '2023-11-13 20:52:47', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(33, 'ref33', '2023-11-14 20:53:15', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(34, 'ref34', '2023-11-15 20:53:54', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(35, 'ref35', '2023-11-16 20:54:24', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(36, 'ref36', '2023-11-17 20:54:41', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(37, 'ref37', '2023-11-18 20:55:19', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(38, 'ref38', '2023-11-19 20:55:41', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(39, 'ref39', '2023-11-20 20:55:58', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(40, 'ref40', '2023-10-01 22:42:59', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(41, 'ref41', '2023-10-02 22:43:16', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(42, 'ref42', '2023-10-03 22:44:08', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(43, 'ref43', '2023-10-04 22:44:28', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(44, 'ref44', '2023-10-05 22:44:45', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(45, 'ref45', '2023-10-06 22:45:02', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(46, 'ref46', '2023-10-07 22:45:19', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(47, 'ref47', '2023-10-08 22:45:48', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(48, 'ref48', '2023-10-09 22:46:26', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(49, 'ref49', '2023-10-10 22:46:42', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(50, 'ref50', '2023-10-11 22:46:58', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(51, 'ref51', '2023-10-12 22:47:15', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(53, 'ref53', '2023-10-13 22:48:18', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(54, 'ref54', '2023-10-14 22:48:34', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(55, 'ref55', '2023-10-15 22:49:08', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(56, 'ref56', '2023-10-16 22:49:31', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(57, 'ref57', '2023-10-17 22:49:51', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(58, 'ref58', '2023-10-18 22:50:06', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(59, 'ref59', '2023-10-19 22:50:20', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(60, 'ref60', '2023-10-20 22:50:36', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(63, 'ref63', '2023-11-22 14:28:03', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(64, 'ref64', '2023-11-22 17:28:29', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0),
(65, 'ref65', '2023-11-22 18:12:41', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(66, 'ref66', '2023-11-22 18:13:18', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(67, 'ref67', '2023-11-22 18:15:18', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(68, 'ref68', '2023-11-22 18:15:59', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(69, 'ref69', '2023-11-22 22:23:31', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(70, 'ref70', '2023-11-22 22:26:43', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(71, 'ref71', '2023-11-23 03:38:43', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(72, 'ref72', '2023-11-28 21:16:47', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(73, 'ref73', '2023-11-28 21:17:41', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(74, 'ref74', '2023-11-28 21:17:56', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(75, 'ref75', '2023-11-28 21:18:17', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(76, 'ref76', '2023-11-28 21:18:42', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(77, 'ref77', '2023-11-28 21:18:54', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(78, 'ref78', '2023-11-28 21:19:55', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(79, 'ref79', '2023-11-28 21:20:04', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(80, 'ref80', '2023-11-28 21:20:25', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(81, 'ref81', '2023-11-28 21:20:39', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(82, 'ref82', '2023-11-28 21:20:56', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(83, 'ref83', '2023-11-28 21:21:10', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(84, 'ref84', '2023-11-28 21:21:21', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(85, 'ref85', '2023-11-28 21:21:32', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(86, 'ref86', '2023-11-28 21:21:42', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(87, 'ref87', '2023-11-28 21:22:00', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(88, 'ref88', '2023-11-28 21:22:22', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(89, 'ref89', '2023-11-28 21:22:39', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(90, 'ref90', '2023-11-28 21:22:50', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(91, 'ref91', '2023-11-28 21:22:59', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(92, 'ref92', '2023-11-28 21:23:12', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(93, 'ref93', '2023-11-28 21:23:36', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(94, 'ref94', '2023-11-28 21:24:15', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(95, 'ref95', '2023-11-28 21:24:35', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(96, 'ref96', '2023-11-28 21:38:07', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(97, 'ref97', '2023-11-28 21:40:50', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(98, 'ref98', '2023-11-28 21:41:15', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(99, 'ref99', '2023-11-28 21:41:33', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(100, 'ref100', '2023-11-28 21:41:39', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(101, 'ref101', '2023-11-28 21:51:08', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(102, 'ref102', '2023-11-28 21:52:01', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(103, 'ref103', '2023-11-28 21:52:38', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(104, 'ref104', '2023-11-28 21:52:53', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(105, 'ref105', '2023-11-28 21:53:05', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(106, 'ref106', '2023-11-28 21:53:17', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(107, 'ref107', '2023-11-28 21:53:30', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(108, 'ref108', '2023-11-28 21:53:41', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(109, 'ref109', '2023-11-28 21:54:08', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(110, 'ref110', '2023-11-28 21:54:19', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(111, 'ref111', '2023-11-28 21:54:29', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(112, 'ref112', '2023-11-28 21:54:50', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(113, 'ref113', '2023-11-28 22:05:23', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(114, 'ref114', '2023-11-28 22:05:41', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(115, 'ref115', '2023-11-28 22:05:59', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(116, 'ref116', '2023-11-28 22:06:11', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(117, 'ref117', '2023-11-28 22:06:22', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(118, 'ref118', '2023-11-28 22:06:33', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(119, 'ref119', '2023-11-28 22:06:43', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(120, 'ref120', '2023-11-28 22:07:43', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(121, 'ref121', '2023-11-28 22:07:53', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(122, 'ref122', '2023-11-28 22:08:02', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(123, 'ref123', '2023-11-28 22:08:14', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(124, 'ref124', '2023-11-28 22:08:24', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(125, 'ref125', '2023-11-28 22:08:38', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(126, 'ref126', '2023-11-28 22:14:02', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(127, 'ref127', '2023-11-28 22:15:57', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(128, 'ref128', '2023-11-28 22:28:37', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(129, 'ref129', '2023-11-28 22:28:45', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(130, 'ref130', '2023-11-28 22:29:27', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(131, 'ref131', '2023-11-28 22:29:54', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(132, 'ref132', '2023-11-28 22:30:28', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(133, 'ref133', '2023-11-28 22:30:39', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(134, 'ref134', '2023-11-28 22:30:49', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(135, 'ref135', '2023-11-28 22:31:00', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(136, 'ref136', '2023-11-28 22:31:10', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(137, 'ref137', '2023-11-28 22:31:28', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(138, 'ref138', '2023-11-28 22:31:50', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(139, 'ref139', '2023-11-28 22:32:01', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(140, 'ref140', '2023-11-28 22:32:21', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(141, 'ref141', '2023-11-28 22:32:33', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(142, 'ref142', '2023-11-28 22:33:22', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(143, 'ref143', '2023-11-28 22:33:42', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(144, 'ref144', '2023-11-28 22:33:47', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(145, 'ref145', '2023-11-28 22:33:58', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(146, 'ref146', '2023-11-28 22:34:10', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(147, 'ref147', '2023-11-28 22:34:19', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(148, 'ref148', '2023-11-28 22:34:28', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(149, 'ref149', '2023-11-28 22:34:38', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(150, 'ref150', '2023-11-28 22:34:59', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(151, 'ref151', '2023-11-28 22:35:08', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(152, 'ref152', '2023-11-28 22:35:18', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(153, 'ref153', '2023-11-28 22:35:27', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(154, 'ref154', '2023-11-28 22:35:36', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 0),
(155, 'ref155', '2023-11-28 22:37:33', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(156, 'ref156', '2023-11-28 23:07:19', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(157, 'ref157', '2023-11-28 23:10:32', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(158, 'ref158', '2023-11-28 23:11:39', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(159, 'ref159', '2023-11-28 23:12:29', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(160, 'ref160', '2023-11-28 23:13:29', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(161, 'ref161', '2023-11-28 23:14:33', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(162, 'ref162', '2023-11-28 23:15:06', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(163, 'ref163', '2023-11-28 23:15:40', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(164, 'ref164', '2023-11-28 23:16:18', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(165, 'ref165', '2023-11-28 23:16:39', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(166, 'ref166', '2023-11-28 23:16:55', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(167, 'ref167', '2023-11-28 23:17:21', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(168, 'ref168', '2023-11-28 23:17:54', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(169, 'ref169', '2023-11-28 23:18:19', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(170, 'ref170', '2023-11-28 23:18:38', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(171, 'ref171', '2023-11-28 23:18:54', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(172, 'ref172', '2023-11-28 23:19:19', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(173, 'ref173', '2023-11-28 23:19:35', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(174, 'ref174', '2023-11-28 23:20:04', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(175, 'ref175', '2023-11-28 23:20:30', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(176, 'ref176', '2023-11-28 23:21:01', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(177, 'ref177', '2023-11-28 23:21:32', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(178, 'ref178', '2023-11-28 23:21:47', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(179, 'ref179', '2023-11-28 23:22:09', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(180, 'ref180', '2023-11-28 23:22:35', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(181, 'ref181', '2023-11-28 23:22:50', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(182, 'ref182', '2023-11-28 23:23:06', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(183, 'ref183', '2023-11-28 23:23:20', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(184, 'ref184', '2023-11-28 23:23:54', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(185, 'ref185', '2023-11-28 23:24:10', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(186, 'ref186', '2023-11-28 23:24:23', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(187, 'ref187', '2023-11-28 23:24:40', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(188, 'ref188', '2023-11-28 23:24:49', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(189, 'ref189', '2023-11-28 23:25:02', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(190, 'ref190', '2023-11-28 23:25:19', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(191, 'ref191', '2023-11-28 23:26:09', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(192, 'ref192', '2023-11-28 23:26:25', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(193, 'ref193', '2023-11-28 23:26:48', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(194, 'ref194', '2023-11-28 23:27:17', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(195, 'ref195', '2023-11-28 23:28:05', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(196, 'ref196', '2023-11-28 23:28:51', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(197, 'ref197', '2023-11-28 23:30:00', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(198, 'ref198', '2023-11-28 23:30:58', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(199, 'ref199', '2023-11-28 23:32:33', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(200, 'ref200', '2023-11-28 23:34:08', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(201, 'ref201', '2023-11-28 23:35:04', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(202, 'ref202', '2023-11-28 23:35:13', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(203, 'ref203', '2023-11-28 23:35:53', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(204, 'ref204', '2023-11-28 23:36:18', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(205, 'ref205', '2023-11-28 23:39:42', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(206, 'ref206', '2023-11-28 23:41:34', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(207, 'ref207', '2023-11-28 23:41:47', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(208, 'ref208', '2023-11-28 23:42:10', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(209, 'ref209', '2023-11-28 23:42:32', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(210, 'ref210', '2023-11-28 23:44:20', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(211, 'ref211', '2023-11-28 23:47:37', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(212, 'ref212', '2023-11-28 23:50:11', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(213, 'ref213', '2023-11-28 23:51:21', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(214, 'ref214', '2023-11-28 23:51:46', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(215, 'ref215', '2023-11-28 23:52:45', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 0),
(216, 'ref216', '2023-11-28 23:54:38', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(217, 'ref217', '2023-11-28 23:55:22', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(218, 'ref218', '2023-11-28 23:55:44', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(219, 'ref219', '2023-11-28 23:56:07', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(220, 'ref220', '2023-11-28 23:56:55', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(221, 'ref221', '2023-11-28 23:58:07', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(222, 'ref222', '2023-11-28 23:59:07', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(223, 'ref223', '2023-11-28 23:59:33', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(224, 'ref224', '2023-11-28 23:59:55', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(225, 'ref225', '2023-11-29 00:00:09', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(226, 'ref226', '2023-11-29 00:01:04', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(227, 'ref227', '2023-11-29 00:01:18', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(228, 'ref228', '2023-11-29 00:01:53', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(229, 'ref229', '2023-11-29 00:02:08', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(230, 'ref230', '2023-11-29 00:02:23', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(231, 'ref231', '2023-11-29 00:02:38', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(232, 'ref232', '2023-11-29 00:02:51', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(233, 'ref233', '2023-11-29 00:03:04', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(234, 'ref234', '2023-11-29 00:03:17', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(235, 'ref235', '2023-11-29 00:03:24', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(236, 'ref236', '2023-11-29 00:03:40', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(237, 'ref237', '2023-11-29 00:04:02', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(238, 'ref238', '2023-11-29 00:04:13', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(239, 'ref239', '2023-11-29 00:04:36', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(240, 'ref240', '2023-11-29 00:06:29', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(241, 'ref241', '2023-11-29 00:07:26', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(242, 'ref242', '2023-11-29 00:07:41', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(243, 'ref243', '2023-11-29 00:08:16', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(244, 'ref244', '2023-11-29 00:08:37', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(245, 'ref245', '2023-11-29 00:08:52', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(246, 'ref246', '2023-11-29 00:09:23', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(247, 'ref247', '2023-11-29 00:09:46', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(248, 'ref248', '2023-11-29 00:10:11', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(249, 'ref249', '2023-11-29 00:10:26', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(250, 'ref250', '2023-11-29 00:10:39', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(251, 'ref251', '2023-11-29 00:10:54', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(252, 'ref252', '2023-11-29 00:11:08', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(253, 'ref253', '2023-11-29 00:11:23', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(254, 'ref254', '2023-11-29 00:11:39', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(255, 'ref255', '2023-11-29 00:12:12', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(256, 'ref256', '2023-11-29 00:12:26', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(257, 'ref257', '2023-11-29 00:12:36', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(258, 'ref258', '2023-11-29 00:12:52', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(259, 'ref259', '2023-11-29 00:13:01', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(260, 'ref260', '2023-11-29 00:13:22', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(261, 'ref261', '2023-11-29 00:13:46', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(262, 'ref262', '2023-11-29 00:14:11', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(263, 'ref263', '2023-11-29 00:14:31', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(264, 'ref264', '2023-11-29 00:14:58', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(265, 'ref265', '2023-11-29 00:15:19', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(266, 'ref266', '2023-11-29 00:15:49', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(267, 'ref267', '2023-11-29 00:16:25', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(268, 'ref268', '2023-11-29 00:16:46', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(269, 'ref269', '2023-11-29 00:17:03', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(270, 'ref270', '2023-11-29 00:17:42', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(271, 'ref271', '2023-11-29 00:18:03', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(272, 'ref272', '2023-11-29 00:18:15', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 0),
(273, 'ref273', '2023-11-29 00:19:07', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(274, 'ref274', '2023-11-29 00:19:51', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(275, 'ref275', '2023-11-29 00:20:23', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(276, 'ref276', '2023-11-29 00:20:42', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(277, 'ref277', '2023-11-29 00:20:56', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(278, 'ref278', '2023-11-29 00:21:14', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(279, 'ref279', '2023-11-29 00:21:37', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(280, 'ref280', '2023-11-29 00:21:54', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(281, 'ref281', '2023-11-29 00:22:18', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(282, 'ref282', '2023-11-29 00:22:35', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(283, 'ref283', '2023-11-29 00:22:53', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(284, 'ref284', '2023-11-29 00:23:14', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(285, 'ref285', '2023-11-29 00:23:29', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(286, 'ref286', '2023-11-29 00:23:55', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(287, 'ref287', '2023-11-29 00:24:04', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(288, 'ref288', '2023-11-29 00:24:34', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(289, 'ref289', '2023-11-29 00:24:58', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(290, 'ref290', '2023-11-29 00:25:14', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0),
(291, 'ref291', '2023-11-29 00:25:36', 'joserizal#868', 'Kalayaan Kalayaan Angono, Rizal', 2147483647, 'kenkenaltesRENAME@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblordercheckoutdata`
--

CREATE TABLE `tblordercheckoutdata` (
  `OrderRefNumber` varchar(100) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `volume` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblordercheckoutdata`
--

INSERT INTO `tblordercheckoutdata` (`OrderRefNumber`, `ProductName`, `volume`, `Quantity`, `Price`) VALUES
('ref8', 'Facial Wash', '80ml', 1, 50),
('ref8', 'Isopropyl Alcohol', '1 Liter', 1, 50),
('ref9', 'Isopropyl Alcohol', '1 Liter', 5, 50),
('ref10', 'Radiant Glow Facial Set', 'Gel Toner, Facial Wash, Serum, Sunblock', 3, 350),
('ref11', 'Isopropyl Alcohol', '1 Liter', 1, 50),
('ref14', 'Revitalize Whitening Beauty Bar', '135g', 2, 90),
('ref14', 'Kojic Rejuvinating Soap', '110g', 1, 40),
('ref15', 'Facial Wash', '80ml', 1, 50),
('ref15', 'Serum', '5g', 1, 40),
('ref15', 'Sun Block', '10g', 1, 90),
('ref15', 'Moisturizing Cream', '50ml', 1, 20),
('ref16', 'Sunblock', '10g', 1, 90),
('ref17', 'Snail Max White Lotion', '250ml', 100, 50),
('ref18', 'Revitalize Whitening Beauty Bar', '135g', 10, 90),
('ref19', 'Isopropyl Alcohol', '1 Liter', 87, 50),
('ref20', 'Isopropyl Alcohol', '1 Liter', 94, 50),
('ref21', 'Isopropyl Alcohol', '60ml', 99, 40),
('ref22', 'Isopropyl Alcohol', '1 Liter', 85, 50),
('ref23', 'Isopropyl Alcohol', '1 Liter', 93, 50),
('ref24', 'Isopropyl Alcohol', '1 Liter', 88, 50),
('ref25', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref26', 'Isopropyl Alcohol', '1 Liter', 89, 50),
('ref27', 'Isopropyl Alcohol', '1 Liter', 96, 50),
('ref28', 'Isopropyl Alcohol', '1 Liter', 84, 50),
('ref29', 'Isopropyl Alcohol', '1 Liter', 91, 50),
('ref30', 'Isopropyl Alcohol', '1 Liter', 99, 50),
('ref31', 'Isopropyl Alcohol', '1 Liter', 91, 50),
('ref32', 'Isopropyl Alcohol', '1 Liter', 82, 50),
('ref33', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref34', 'Isopropyl Alcohol', '1 Liter', 88, 50),
('ref35', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref36', 'Isopropyl Alcohol', '1 Liter', 83, 50),
('ref37', 'Isopropyl Alcohol', '1 Liter', 89, 50),
('ref38', 'Isopropyl Alcohol', '1 Liter', 94, 50),
('ref39', 'Isopropyl Alcohol', '1 Liter', 81, 50),
('ref40', 'Isopropyl Alcohol', '1 Liter', 92, 50),
('ref41', 'Isopropyl Alcohol', '1 Liter', 86, 50),
('ref42', 'Isopropyl Alcohol', '1 Liter', 98, 50),
('ref43', 'Isopropyl Alcohol', '1 Liter', 84, 50),
('ref44', 'Isopropyl Alcohol', '1 Liter', 87, 50),
('ref45', 'Isopropyl Alcohol', '1 Liter', 91, 50),
('ref46', 'Isopropyl Alcohol', '1 Liter', 89, 50),
('ref47', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref48', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref49', 'Isopropyl Alcohol', '1 Liter', 83, 50),
('ref50', 'Isopropyl Alcohol', '1 Liter', 96, 50),
('ref51', 'Isopropyl Alcohol', '1 Liter', 88, 50),
('ref53', 'Isopropyl Alcohol', '1 Liter', 94, 50),
('ref54', 'Isopropyl Alcohol', '1 Liter', 81, 50),
('ref55', 'Isopropyl Alcohol', '1 Liter', 99, 50),
('ref56', 'Isopropyl Alcohol', '1 Liter', 82, 50),
('ref57', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref58', 'Isopropyl Alcohol', '1 Liter', 85, 50),
('ref59', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref60', 'Isopropyl Alcohol', '1 Liter', 93, 50),
('ref63', 'Isopropyl Alcohol', '1 Liter', 1, 50),
('ref64', 'Snail Max White Lotion', '250ml', 100, 50),
('ref64', 'Sun Block', '10g', 5, 90),
('ref65', 'Isopropyl Alcohol', '60ml', 1, 40),
('ref66', 'Gel Toner', '60ml', 6, 100),
('ref66', 'Facial Wash', '80ml', 4, 50),
('ref66', 'Serum', '5g', 3, 40),
('ref67', 'Anti-Aging Serum', '30ml', 3, 100),
('ref67', 'Moisturizing Cream', '50ml', 5, 20),
('ref67', 'Hydrating Toner', '200ml', 3, 60),
('ref67', 'Anti-Aging Serum', '30ml', 3, 100),
('ref67', 'Moisturizing Cream', '50ml', 5, 20),
('ref67', 'Hydrating Toner', '200ml', 3, 60),
('ref68', 'Anti-Aging Serum', '30ml', 1, 100),
('ref68', 'Moisturizing Cream', '50ml', 1, 20),
('ref68', 'Hydrating Toner', '200ml', 1, 60),
('ref68', 'Gel Toner', '60ml', 1, 100),
('ref68', 'Facial Wash', '80ml', 1, 50),
('ref68', 'Serum', '5g', 1, 40),
('ref68', 'Anti-Aging Serum', '30ml', 1, 100),
('ref68', 'Moisturizing Cream', '50ml', 1, 20),
('ref68', 'Hydrating Toner', '200ml', 1, 60),
('ref69', 'Gel Toner', '60ml', 9, 100),
('ref70', 'Gel Toner', '60ml', 10, 100),
('ref71', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref72', 'Isopropyl Alcohol', '1 Liter', 91, 50),
('ref73', 'Isopropyl Alcohol', '1 Liter', 85, 50),
('ref74', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref75', 'Isopropyl Alcohol', '1 Liter', 88, 50),
('ref76', 'Isopropyl Alcohol', '1 Liter', 89, 50),
('ref77', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref78', 'Isopropyl Alcohol', '1 Liter', 94, 50),
('ref79', 'Isopropyl Alcohol', '1 Liter', 120, 50),
('ref80', 'Isopropyl Alcohol', '1 Liter', 82, 50),
('ref81', 'Isopropyl Alcohol', '1 Liter', 98, 50),
('ref82', 'Isopropyl Alcohol', '1 Liter', 86, 50),
('ref83', 'Isopropyl Alcohol', '1 Liter', 83, 50),
('ref84', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref85', 'Isopropyl Alcohol', '1 Liter', 92, 50),
('ref86', 'Isopropyl Alcohol', '1 Liter', 87, 50),
('ref87', 'Isopropyl Alcohol', '1 Liter', 96, 50),
('ref88', 'Age Eraser Soap', '135g', 80, 100),
('ref89', 'Isopropyl Alcohol', '1 Liter', 81, 50),
('ref90', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref91', 'Isopropyl Alcohol', '1 Liter', 99, 50),
('ref92', 'Isopropyl Alcohol', '1 Liter', 84, 50),
('ref93', 'Isopropyl Alcohol', '1 Liter', 93, 50),
('ref94', 'Kojic Rejuvinating Soap', '135g', 80, 70),
('ref95', 'Glutamansi Soap', '50g', 75, 50),
('ref96', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref97', 'Isopropyl Alcohol', '1 Liter', 120, 50),
('ref98', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref99', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref100', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref101', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref102', 'Isopropyl Alcohol', '1 Liter', 200, 50),
('ref103', 'Isopropyl Alcohol', '1 Liter', 88, 50),
('ref104', 'Isopropyl Alcohol', '1 Liter', 91, 50),
('ref105', 'Isopropyl Alcohol', '1 Liter', 84, 50),
('ref106', 'Isopropyl Alcohol', '1 Liter', 86, 50),
('ref107', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref108', 'Isopropyl Alcohol', '1 Liter', 89, 50),
('ref109', 'Isopropyl Alcohol', '1 Liter', 98, 50),
('ref110', 'Isopropyl Alcohol', '1 Liter', 81, 50),
('ref111', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref112', 'Isopropyl Alcohol', '1 Liter', 93, 50),
('ref113', 'Isopropyl Alcohol', '1 Liter', 87, 50),
('ref114', 'Isopropyl Alcohol', '1 Liter', 92, 50),
('ref115', 'Isopropyl Alcohol', '1 Liter', 99, 50),
('ref116', 'Isopropyl Alcohol', '1 Liter', 83, 50),
('ref117', 'Isopropyl Alcohol', '1 Liter', 94, 50),
('ref118', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref119', 'Isopropyl Alcohol', '1 Liter', 85, 50),
('ref120', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref121', 'Isopropyl Alcohol', '1 Liter', 96, 50),
('ref122', 'Isopropyl Alcohol', '1 Liter', 82, 50),
('ref123', 'Isopropyl Alcohol', '1 Liter', 91, 50),
('ref124', 'Isopropyl Alcohol', '1 Liter', 89, 50),
('ref125', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref126', 'Isopropyl Alcohol', '1 Liter', 86, 50),
('ref127', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref128', 'Isopropyl Alcohol', '1 Liter', 94, 50),
('ref129', 'Isopropyl Alcohol', '1 Liter', 82, 50),
('ref130', 'Isopropyl Alcohol', '1 Liter', 88, 50),
('ref131', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref132', 'Isopropyl Alcohol', '1 Liter', 99, 50),
('ref133', 'Isopropyl Alcohol', '1 Liter', 83, 50),
('ref134', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref135', 'Isopropyl Alcohol', '1 Liter', 84, 50),
('ref136', 'Isopropyl Alcohol', '1 Liter', 92, 50),
('ref137', 'Isopropyl Alcohol', '1 Liter', 87, 50),
('ref138', 'Isopropyl Alcohol', '1 Liter', 96, 50),
('ref139', 'Isopropyl Alcohol', '1 Liter', 81, 50),
('ref140', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref141', 'Isopropyl Alcohol', '1 Liter', 98, 50),
('ref142', 'Isopropyl Alcohol', '1 Liter', 83, 50),
('ref143', 'Isopropyl Alcohol', '1 Liter', 89, 50),
('ref144', 'Isopropyl Alcohol', '1 Liter', 200, 50),
('ref145', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref146', 'Isopropyl Alcohol', '1 Liter', 82, 50),
('ref147', 'Isopropyl Alcohol', '1 Liter', 91, 50),
('ref148', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref149', 'Isopropyl Alcohol', '1 Liter', 88, 50),
('ref150', 'Isopropyl Alcohol', '1 Liter', 94, 50),
('ref151', 'Isopropyl Alcohol', '1 Liter', 86, 50),
('ref152', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref153', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref154', 'Isopropyl Alcohol', '1 Liter', 93, 50),
('ref155', 'Isopropyl Alcohol', '1 Liter', 85, 50),
('ref156', 'Isopropyl Alcohol', '1 Liter', 98, 50),
('ref157', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref158', 'Isopropyl Alcohol', '1 Liter', 130, 50),
('ref159', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref160', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref161', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref162', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref163', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref164', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref165', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref166', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref167', 'Isopropyl Alcohol', '1 Liter', 78, 50),
('ref168', 'Isopropyl Alcohol', '1 Liter', 67, 50),
('ref169', 'Isopropyl Alcohol', '1 Liter', 81, 50),
('ref170', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref171', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref172', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref173', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref174', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref175', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref177', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref178', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref179', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref180', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref181', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref182', 'Isopropyl Alcohol', '1 Liter', 50, 50),
('ref183', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref184', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref186', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref188', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref189', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref190', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref191', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref192', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref193', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref194', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref195', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref196', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref197', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref198', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref199', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref200', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref202', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref203', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref204', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref205', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref206', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref207', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref208', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref209', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref210', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref211', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref212', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref214', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref215', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref216', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref217', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref218', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref219', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref220', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref222', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref223', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref224', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref225', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref226', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref227', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref228', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref229', 'Isopropyl Alcohol', '1 Liter', 65, 50),
('ref230', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref232', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref233', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref235', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref236', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref238', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref239', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref240', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref241', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref242', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref243', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref244', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref245', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref246', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref247', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref248', 'Isopropyl Alcohol', '1 Liter', 65, 50),
('ref249', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref250', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref251', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref252', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref253', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref254', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref255', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref257', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref259', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref260', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref261', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref262', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref263', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref265', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref266', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref267', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref268', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref269', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref270', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref272', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref273', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref274', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref275', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref276', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref277', 'Isopropyl Alcohol', '1 Liter', 200, 50),
('ref278', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref279', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref280', 'Isopropyl Alcohol', '1 Liter', 60, 50),
('ref281', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref282', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref283', 'Isopropyl Alcohol', '1 Liter', 75, 50),
('ref284', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref285', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref287', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref288', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref289', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref290', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref291', 'Isopropyl Alcohol', '1 Liter', 75, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tblordercheckoutdataarchive`
--

CREATE TABLE `tblordercheckoutdataarchive` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `volume` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `checker` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblordercheckoutdataarchive`
--

INSERT INTO `tblordercheckoutdataarchive` (`ID`, `OrderRefNumber`, `ProductName`, `volume`, `Quantity`, `Price`, `checker`) VALUES
(1, 'ref5', 'Isopropyl Alcohol', '1 litter', 1, 50, 'Added'),
(2, 'ref5', 'Isopropyl Alcohol', '60ml', 1, 40, 'Added'),
(4, 'ref1', 'Isopropyl Alcohol', '1 litter', 5, 50, 'Added'),
(5, 'ref2', 'Gel Toner', '60ml', 4, 100, 'Added'),
(6, 'ref3', 'Isopropyl Alcohol', '1 litter', 10, 50, 'Added'),
(7, 'ref4', 'Isopropyl Alcohol', '1 litter', 2, 50, 'Added'),
(8, 'ref6', 'Kojic Rejuvinating Soap', '110g', 1, 40, 'Added'),
(9, 'ref7', 'Gluta White Lotion', '250ml', 5, 100, 'Added'),
(10, 'ref12', 'Kojic Rejuvinating Soap', '135g', 1, 70, 'Added'),
(11, 'ref12', 'Kojic Rejuvinating Soap', '110g', 1, 40, 'Added'),
(13, 'ref13', 'Gel Toner', '60ml', 1, 100, 'Added'),
(14, 'ref62', 'Facial Wash', '80ml', 1, 50, 'Added'),
(15, 'ref61', 'Revitalize Whitening Beauty Bar', '135g', 1, 90, 'Added'),
(16, 'ref61', 'Anti-Aging Serum', '30ml', 1, 100, 'Added');

-- --------------------------------------------------------

--
-- Table structure for table `tblorderexpirationtime`
--

CREATE TABLE `tblorderexpirationtime` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `Expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblorderstatus`
--

CREATE TABLE `tblorderstatus` (
  `OrderRefNumber` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorderstatus`
--

INSERT INTO `tblorderstatus` (`OrderRefNumber`, `Status`) VALUES
('ref1', 'Cancelled'),
('ref10', 'Completed'),
('ref100', 'Completed'),
('ref101', 'Completed'),
('ref102', 'Completed'),
('ref103', 'Completed'),
('ref104', 'Completed'),
('ref105', 'Completed'),
('ref106', 'Completed'),
('ref107', 'Completed'),
('ref108', 'Completed'),
('ref109', 'Completed'),
('ref11', 'Completed'),
('ref110', 'Completed'),
('ref111', 'Completed'),
('ref112', 'Completed'),
('ref113', 'Completed'),
('ref114', 'Completed'),
('ref115', 'Completed'),
('ref116', 'Completed'),
('ref117', 'Completed'),
('ref118', 'Completed'),
('ref119', 'Completed'),
('ref12', 'Expired'),
('ref120', 'Completed'),
('ref121', 'Completed'),
('ref122', 'Completed'),
('ref123', 'Completed'),
('ref124', 'Completed'),
('ref125', 'Completed'),
('ref126', 'Completed'),
('ref127', 'Completed'),
('ref128', 'Completed'),
('ref129', 'Completed'),
('ref13', 'Expired'),
('ref130', 'Completed'),
('ref131', 'Completed'),
('ref132', 'Completed'),
('ref133', 'Completed'),
('ref134', 'Completed'),
('ref135', 'Completed'),
('ref136', 'Completed'),
('ref137', 'Completed'),
('ref138', 'Completed'),
('ref139', 'Completed'),
('ref14', 'Completed'),
('ref140', 'Completed'),
('ref141', 'Completed'),
('ref142', 'Completed'),
('ref143', 'Completed'),
('ref144', 'Completed'),
('ref145', 'Completed'),
('ref146', 'Completed'),
('ref147', 'Completed'),
('ref148', 'Completed'),
('ref149', 'Completed'),
('ref15', 'Completed'),
('ref150', 'Completed'),
('ref151', 'Completed'),
('ref152', 'Completed'),
('ref153', 'Completed'),
('ref154', 'Completed'),
('ref155', 'Completed'),
('ref156', 'Completed'),
('ref157', 'Completed'),
('ref158', 'Completed'),
('ref159', 'Completed'),
('ref16', 'Completed'),
('ref160', 'Completed'),
('ref161', 'Completed'),
('ref162', 'Completed'),
('ref163', 'Completed'),
('ref164', 'Completed'),
('ref165', 'Completed'),
('ref166', 'Completed'),
('ref167', 'Completed'),
('ref168', 'Completed'),
('ref169', 'Completed'),
('ref17', 'Completed'),
('ref170', 'Completed'),
('ref171', 'Completed'),
('ref172', 'Completed'),
('ref173', 'Completed'),
('ref174', 'Completed'),
('ref175', 'Completed'),
('ref176', 'Approved'),
('ref177', 'Completed'),
('ref178', 'Completed'),
('ref179', 'Completed'),
('ref18', 'Completed'),
('ref180', 'Completed'),
('ref181', 'Completed'),
('ref182', 'Completed'),
('ref183', 'Completed'),
('ref184', 'Completed'),
('ref185', 'Approved'),
('ref186', 'Completed'),
('ref187', 'Approved'),
('ref188', 'Completed'),
('ref189', 'Completed'),
('ref19', 'Completed'),
('ref190', 'Completed'),
('ref191', 'Completed'),
('ref192', 'Completed'),
('ref193', 'Completed'),
('ref194', 'Completed'),
('ref195', 'Completed'),
('ref196', 'Completed'),
('ref197', 'Completed'),
('ref198', 'Completed'),
('ref199', 'Completed'),
('ref2', 'Cancelled'),
('ref20', 'Completed'),
('ref200', 'Completed'),
('ref201', 'Approved'),
('ref202', 'Completed'),
('ref203', 'Completed'),
('ref204', 'Completed'),
('ref205', 'Completed'),
('ref206', 'Completed'),
('ref207', 'Completed'),
('ref208', 'Completed'),
('ref209', 'Completed'),
('ref21', 'Completed'),
('ref210', 'Completed'),
('ref211', 'Completed'),
('ref212', 'Completed'),
('ref213', 'Approved'),
('ref214', 'Completed'),
('ref215', 'Completed'),
('ref216', 'Completed'),
('ref217', 'Completed'),
('ref218', 'Completed'),
('ref219', 'Completed'),
('ref22', 'Completed'),
('ref220', 'Completed'),
('ref221', 'Approved'),
('ref222', 'Completed'),
('ref223', 'Completed'),
('ref224', 'Completed'),
('ref225', 'Completed'),
('ref226', 'Completed'),
('ref227', 'Completed'),
('ref228', 'Completed'),
('ref229', 'Completed'),
('ref23', 'Completed'),
('ref230', 'Completed'),
('ref231', 'Approved'),
('ref232', 'Completed'),
('ref233', 'Completed'),
('ref234', 'Approved'),
('ref235', 'Completed'),
('ref236', 'Completed'),
('ref237', 'Approved'),
('ref238', 'Completed'),
('ref239', 'Completed'),
('ref24', 'Completed'),
('ref240', 'Completed'),
('ref241', 'Completed'),
('ref242', 'Completed'),
('ref243', 'Completed'),
('ref244', 'Completed'),
('ref245', 'Completed'),
('ref246', 'Completed'),
('ref247', 'Completed'),
('ref248', 'Completed'),
('ref249', 'Completed'),
('ref25', 'Completed'),
('ref250', 'Completed'),
('ref251', 'Completed'),
('ref252', 'Completed'),
('ref253', 'Completed'),
('ref254', 'Completed'),
('ref255', 'Completed'),
('ref256', 'Approved'),
('ref257', 'Completed'),
('ref258', 'Approved'),
('ref259', 'Completed'),
('ref26', 'Completed'),
('ref260', 'Completed'),
('ref261', 'Completed'),
('ref262', 'Completed'),
('ref263', 'Completed'),
('ref264', 'Approved'),
('ref265', 'Completed'),
('ref266', 'Completed'),
('ref267', 'Completed'),
('ref268', 'Completed'),
('ref269', 'Completed'),
('ref27', 'Completed'),
('ref270', 'Completed'),
('ref271', 'Approved'),
('ref272', 'Completed'),
('ref273', 'Completed'),
('ref274', 'Completed'),
('ref275', 'Completed'),
('ref276', 'Completed'),
('ref277', 'Completed'),
('ref278', 'Completed'),
('ref279', 'Completed'),
('ref28', 'Completed'),
('ref280', 'Completed'),
('ref281', 'Completed'),
('ref282', 'Completed'),
('ref283', 'Completed'),
('ref284', 'Completed'),
('ref285', 'Completed'),
('ref286', 'Approved'),
('ref287', 'Completed'),
('ref288', 'Completed'),
('ref289', 'Completed'),
('ref29', 'Completed'),
('ref290', 'Completed'),
('ref291', 'Completed'),
('ref3', 'Expired'),
('ref30', 'Completed'),
('ref31', 'Completed'),
('ref32', 'Completed'),
('ref33', 'Completed'),
('ref34', 'Completed'),
('ref35', 'Completed'),
('ref36', 'Completed'),
('ref37', 'Completed'),
('ref38', 'Completed'),
('ref39', 'Completed'),
('ref4', 'Expired'),
('ref40', 'Completed'),
('ref41', 'Completed'),
('ref42', 'Completed'),
('ref43', 'Completed'),
('ref44', 'Completed'),
('ref45', 'Completed'),
('ref46', 'Completed'),
('ref47', 'Completed'),
('ref48', 'Completed'),
('ref49', 'Completed'),
('ref5', 'Cancelled'),
('ref50', 'Completed'),
('ref51', 'Completed'),
('ref52', 'Approved'),
('ref53', 'Completed'),
('ref54', 'Completed'),
('ref55', 'Completed'),
('ref56', 'Completed'),
('ref57', 'Completed'),
('ref58', 'Completed'),
('ref59', 'Completed'),
('ref6', 'Expired'),
('ref60', 'Completed'),
('ref61', 'Cancelled'),
('ref62', 'Cancelled'),
('ref63', 'Completed'),
('ref64', 'Completed'),
('ref65', 'Completed'),
('ref66', 'Completed'),
('ref67', 'Completed'),
('ref68', 'Completed'),
('ref69', 'Completed'),
('ref7', 'Expired'),
('ref70', 'Completed'),
('ref71', 'Completed'),
('ref72', 'Completed'),
('ref73', 'Completed'),
('ref74', 'Completed'),
('ref75', 'Completed'),
('ref76', 'Completed'),
('ref77', 'Completed'),
('ref78', 'Completed'),
('ref79', 'Completed'),
('ref8', 'Completed'),
('ref80', 'Completed'),
('ref81', 'Completed'),
('ref82', 'Completed'),
('ref83', 'Completed'),
('ref84', 'Completed'),
('ref85', 'Completed'),
('ref86', 'Completed'),
('ref87', 'Completed'),
('ref88', 'Approved'),
('ref89', 'Completed'),
('ref9', 'Completed'),
('ref90', 'Completed'),
('ref91', 'Completed'),
('ref92', 'Completed'),
('ref93', 'Completed'),
('ref94', 'Completed'),
('ref95', 'Completed'),
('ref96', 'Completed'),
('ref97', 'Completed'),
('ref98', 'Completed'),
('ref99', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `tblpreregistration`
--

CREATE TABLE `tblpreregistration` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Middlename` varchar(100) DEFAULT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Contactnum` varchar(100) NOT NULL,
  `Emailadd` varchar(100) NOT NULL,
  `Region` varchar(100) NOT NULL,
  `Province` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Barangay` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `Zipcode` varchar(100) NOT NULL,
  `Brand` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpreregistration`
--

INSERT INTO `tblpreregistration` (`ID`, `Firstname`, `Middlename`, `Lastname`, `Contactnum`, `Emailadd`, `Region`, `Province`, `City`, `Barangay`, `Street`, `Zipcode`, `Brand`, `Status`) VALUES
(26, 'raven', 'a', 'berenguila', '09123456789', 'ravenberenguila@gmail.com', 'CALABARZON', 'Rizal', 'Binangonan', 'Bilibiran', 'luklukan', '1040', '', 'pending'),
(27, 'Carson', 'It', 'Waller', '09123456789', 'yedat23115@marksia.com', 'SOCCSKSARGEN', 'South Cotabato', 'Surallah', 'Talahik', 'Sunt iste cum ea do', '2000', '', 'Completed'),
(28, 'Armand', 'Er', 'French', '09123456789', 'bryanken01230@gmail.com', 'BARMM', 'Basilan', 'Tuburan', 'Bohetambis', 'Porro error eius con', '1000', 'Brand X', 'Completed'),
(29, 'Bryan Ken', 'S', 'Altes', '09123456789', 'goropip520@notedns.com', ' ', ' ', ' ', ' ', 'Angono Rizal', '1000', 'Not Set', 'Completed'),
(30, 'Riley', 'Ve', 'Franks', '09123456789', 'notogo7403@cumzle.com', ' ', ' ', ' ', ' ', 'Inventore eius deser', '1000', 'Not Set', 'pending'),
(31, 'Dahlia', 'Fu', 'Brennan', '09123456789', 'lidew27774@mainoj.com', ' ', ' ', ' ', ' ', 'Libero voluptate odi', '1000', 'Not Set', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `tblprocedurestorage`
--

CREATE TABLE `tblprocedurestorage` (
  `procedureID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblprocedurestorage`
--

INSERT INTO `tblprocedurestorage` (`procedureID`, `email`, `expiration`) VALUES
(28, 'rberenguila', '2023-11-23 03:24:08'),
(31, 'ravenroseberenguila_12', '2023-11-23 03:25:56'),
(33, 'ravenberenguila', '2023-11-23 03:34:29'),
(34, 'yedat23115', '2023-11-23 09:34:41'),
(35, 'videhi9548', '2023-11-23 09:35:33'),
(40, 'bryanken01230', '2023-11-23 09:37:21'),
(41, 'goropip520', '2023-11-27 13:32:46'),
(44, 'corol42773', '2023-11-28 14:22:34'),
(47, 'notogo7403', '2023-11-28 14:27:54'),
(48, 'lidew27774', '2023-11-28 14:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblproductcategories`
--

CREATE TABLE `tblproductcategories` (
  `prodCategory` varchar(100) NOT NULL,
  `CategoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproductcategories`
--

INSERT INTO `tblproductcategories` (`prodCategory`, `CategoryName`) VALUES
('Alcohol', 'Alcohol'),
('Glass Skin', 'Glass Skin Set'),
('Lotion', 'Lotion'),
('Rejuvenating', 'Rejuvenating Set'),
('Soap', 'Soap');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `prodID` int(11) NOT NULL,
  `prodImg` varchar(100) NOT NULL,
  `prodName` varchar(100) NOT NULL,
  `prodPrice` int(11) NOT NULL,
  `prodVolume` varchar(100) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Sold` int(11) DEFAULT NULL,
  `prodCategory` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`prodID`, `prodImg`, `prodName`, `prodPrice`, `prodVolume`, `Quantity`, `Sold`, `prodCategory`, `Description`) VALUES
(1, 'age-eraser-soap.png', 'Age Eraser Soap', 100, '135g', 20, 80, 'Soap', 'The best ingredients in nature are blended in this unique anti-ageing black beauty soap. You now have the power to renew your skin and make younger, whiter and fresher. With micro beads that gently exfoliate and remove dead skin cells.'),
(2, '', 'Glutamansi Soap', 50, '50g', 10025, 75, 'Soap', 'Whitening, Moisturizing, Skin Clarifying, Exfoliating, Micro-peeling, Deodorizing'),
(3, 'alcohol.png', 'Kojic Rejuvinating Soap', 70, '135g', 10020, 80, 'Soap', NULL),
(4, 'frejuv.png', 'Bleaching Soap', 25, '70g', 10100, 0, 'Soap', NULL),
(5, 'glow-set.png', 'Revitalize Whitening Beauty Bar', 90, '135g', 10088, 12, 'Soap', NULL),
(6, '', 'Snail Max White Lotion', 50, '250ml', 9900, 200, 'Lotion', ''),
(7, 'glutamansi-lotion.png', 'Glutamansi Lotion', 70, '250ml', 10100, 0, 'Lotion', 'Achieve that rosy skin and radiant glow with this non-sticky premium lotion. Made with effective natural ingredients such as glutathione, calamansi extract, baking soda, shea butter, kojic acid,  glycolic, moisturize and hydrate your skin fast while keeping it soft, smooth, form and young-looking.'),
(8, 'alcohol.png', 'Bleaching Lotion', 40, '250ml', 10100, 0, 'Lotion', NULL),
(9, 'frejuv.png', 'Gluta White Lotion', 100, '250ml', 10100, 0, 'Lotion', NULL),
(10, 'age-eraser-soap.png', 'Kojic Rejuvinating Soap', 40, '110g', 10099, 1, 'Rejuvenating', NULL),
(11, 'sunblock-rejuv.png', 'Sunblock', 90, '10g', 10099, 1, 'Rejuvenating', NULL),
(12, 'cream-rejuv.png', 'Bright Cream', 150, '10g', 10100, 0, 'Rejuvenating', NULL),
(13, 'frejuv.png', 'Toner', 125, '60ml', 10100, 0, 'Rejuvenating', NULL),
(14, 'rejuv-set.png', 'Rejuvenating Set', 250, 'Kojic Soap, Sunblock, Night Cream, Toner', 10100, 0, 'Rejuvenating', 'Improves skin texture+Removes dead skin cell+Improves skin barriers+Reduce fine lines and wrinkles+Increase skin moisture results to healthy glowing skin'),
(15, 'gel-toner-radiantGlow.png', 'Gel Toner', 100, '60ml', 10074, 26, 'Glass Skin', NULL),
(16, 'facialwash-radiantGlow.png', 'Facial Wash', 50, '80ml', 10093, 7, 'Glass Skin', NULL),
(17, 'alcohol.png', 'Serum', 40, '5g', 10095, 5, 'Glass Skin', NULL),
(18, 'sunblock-radiantGlow.png', 'Sun Block', 90, '10g', 10094, 6, 'Glass Skin', NULL),
(19, 'glow-set.png', 'Radiant Glow Facial Set', 350, 'Gel Toner, Facial Wash, Serum, Sunblock', 10097, 3, 'Glass Skin', 'Young looking, fair smooth, firm and perfect glass skin is finally within your reach.'),
(20, 'alcohol.png', 'Isopropyl Alcohol', 50, '1 Liter', 8925, 21275, 'Alcohol', NULL),
(21, 'alcohol.png', 'Isopropyl Alcohol', 40, '60ml', 10000, 100, 'Alcohol', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblproductsarchive`
--

CREATE TABLE `tblproductsarchive` (
  `prodID` int(11) NOT NULL,
  `prodImg` varchar(100) NOT NULL,
  `prodName` varchar(100) NOT NULL,
  `prodPrice` int(11) NOT NULL,
  `prodVolume` varchar(100) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Sold` int(11) DEFAULT NULL,
  `prodCategory` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `Ingredients` text DEFAULT NULL,
  `Howtouse` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrebrandingfinishproduct`
--

CREATE TABLE `tblrebrandingfinishproduct` (
  `ID` int(11) NOT NULL,
  `FinishProduct` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrebrandingproducts`
--

CREATE TABLE `tblrebrandingproducts` (
  `prodID` int(11) NOT NULL,
  `userID` varchar(25) NOT NULL,
  `prodImg` varchar(100) DEFAULT NULL,
  `prodName` varchar(100) NOT NULL,
  `prodVolume` varchar(100) NOT NULL,
  `prodPrice` int(11) NOT NULL,
  `prodCategory` varchar(100) NOT NULL,
  `Sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrebrandingproducts`
--

INSERT INTO `tblrebrandingproducts` (`prodID`, `userID`, `prodImg`, `prodName`, `prodVolume`, `prodPrice`, `prodCategory`, `Sold`) VALUES
(1, 'admin#253', 'Serum.png', 'Anti-Aging Serum', '30ml', 100, 'Serum', 4),
(2, 'admin#253', 'Moisturizing Cream.png', 'Moisturizing Cream', '50ml', 20, 'Face Cream', 7),
(3, 'admin#253', 'Hydrating Toner.png', 'Hydrating Toner', '200ml', 60, 'Toner', 4),
(4, 'lidew27774#732', 'Screenshot 2023-11-28 134131.png', 'Test', '1ML', 100, 'Brand X', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblrebrandingproductsarchive`
--

CREATE TABLE `tblrebrandingproductsarchive` (
  `prodID` int(11) NOT NULL,
  `userID` varchar(25) NOT NULL,
  `prodImg` varchar(100) DEFAULT NULL,
  `prodName` varchar(100) NOT NULL,
  `prodVolume` varchar(100) NOT NULL,
  `prodPrice` int(11) NOT NULL,
  `prodCategory` varchar(100) NOT NULL,
  `Sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblreturndetails`
--

CREATE TABLE `tblreturndetails` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `DateAdded` datetime NOT NULL,
  `Reason` varchar(1000) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `imgPath1` varchar(100) DEFAULT NULL,
  `imgPath2` varchar(100) DEFAULT NULL,
  `imgPath3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreturndetails`
--

INSERT INTO `tblreturndetails` (`ID`, `OrderRefNumber`, `DateAdded`, `Reason`, `Category`, `imgPath1`, `imgPath2`, `imgPath3`) VALUES
(1, 'ref64', '2023-11-22 21:32:02', 'test', 'null', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblreturnproduct`
--

CREATE TABLE `tblreturnproduct` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `prodName` varchar(100) NOT NULL,
  `prodVariant` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreturnproduct`
--

INSERT INTO `tblreturnproduct` (`ID`, `OrderRefNumber`, `prodName`, `prodVariant`, `Quantity`) VALUES
(1, 'ref64', 'Snail Max White Lotion', '250ml', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblreturnstatus`
--

CREATE TABLE `tblreturnstatus` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreturnstatus`
--

INSERT INTO `tblreturnstatus` (`ID`, `OrderRefNumber`, `Status`) VALUES
(1, 'ref64', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tblverificationcode`
--

CREATE TABLE `tblverificationcode` (
  `verificationID` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `verificationcode` varchar(4) NOT NULL,
  `Expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblvolumemonth`
--

CREATE TABLE `tblvolumemonth` (
  `MATERIAL_NAME` varchar(100) NOT NULL,
  `SUPPLIER` varchar(100) NOT NULL,
  `CODE_NAME` varchar(100) NOT NULL,
  `CURRENT_VOLUME` int(11) NOT NULL,
  `CURRENT_MONTH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audittrailmarketing`
--
ALTER TABLE `audittrailmarketing`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `audittrailproduction`
--
ALTER TABLE `audittrailproduction`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `audittrailwarehouse`
--
ALTER TABLE `audittrailwarehouse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblaccount`
--
ALTER TABLE `tblaccount`
  ADD PRIMARY KEY (`AccountID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `tblaccountinfo`
--
ALTER TABLE `tblaccountinfo`
  ADD PRIMARY KEY (`AccountID`);

--
-- Indexes for table `tblarchiveuser`
--
ALTER TABLE `tblarchiveuser`
  ADD UNIQUE KEY `itemID` (`itemID`);

--
-- Indexes for table `tblcancelledorder`
--
ALTER TABLE `tblcancelledorder`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uc_OrderRefNumber` (`OrderRefNumber`);

--
-- Indexes for table `tblcartdata`
--
ALTER TABLE `tblcartdata`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblconfirmationproduct`
--
ALTER TABLE `tblconfirmationproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblconfirmationproductarchive`
--
ALTER TABLE `tblconfirmationproductarchive`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblconfirmationproductRebranding`
--
ALTER TABLE `tblconfirmationproductRebranding`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblconfirmationproductRebrandingarchive`
--
ALTER TABLE `tblconfirmationproductRebrandingarchive`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblconfirmationtracking`
--
ALTER TABLE `tblconfirmationtracking`
  ADD PRIMARY KEY (`TrackingID`);

--
-- Indexes for table `tblcourieraccount`
--
ALTER TABLE `tblcourieraccount`
  ADD PRIMARY KEY (`courierID`);

--
-- Indexes for table `tblcourierdelivery`
--
ALTER TABLE `tblcourierdelivery`
  ADD PRIMARY KEY (`deliveryID`);

--
-- Indexes for table `tblcourierdeliverycompleted`
--
ALTER TABLE `tblcourierdeliverycompleted`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourierdeliverydate`
--
ALTER TABLE `tblcourierdeliverydate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourierinformation`
--
ALTER TABLE `tblcourierinformation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcurrentmonth`
--
ALTER TABLE `tblcurrentmonth`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `tblcurrentmonthPackaging`
--
ALTER TABLE `tblcurrentmonthPackaging`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `tblcustomeraccount`
--
ALTER TABLE `tblcustomeraccount`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `tblcustomerinformation`
--
ALTER TABLE `tblcustomerinformation`
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `tbldisposproduct`
--
ALTER TABLE `tbldisposproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmonthlysummary`
--
ALTER TABLE `tblmonthlysummary`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `tblorderapproved`
--
ALTER TABLE `tblorderapproved`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblordercheckout`
--
ALTER TABLE `tblordercheckout`
  ADD PRIMARY KEY (`OrderNumber`),
  ADD UNIQUE KEY `OrderRefNumber` (`OrderRefNumber`);

--
-- Indexes for table `tblordercheckoutdataarchive`
--
ALTER TABLE `tblordercheckoutdataarchive`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderexpirationtime`
--
ALTER TABLE `tblorderexpirationtime`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderstatus`
--
ALTER TABLE `tblorderstatus`
  ADD UNIQUE KEY `OrderRefNumber` (`OrderRefNumber`);

--
-- Indexes for table `tblpreregistration`
--
ALTER TABLE `tblpreregistration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblprocedurestorage`
--
ALTER TABLE `tblprocedurestorage`
  ADD PRIMARY KEY (`procedureID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tblproductcategories`
--
ALTER TABLE `tblproductcategories`
  ADD PRIMARY KEY (`prodCategory`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`prodID`);

--
-- Indexes for table `tblrebrandingproducts`
--
ALTER TABLE `tblrebrandingproducts`
  ADD PRIMARY KEY (`prodID`);

--
-- Indexes for table `tblrebrandingproductsarchive`
--
ALTER TABLE `tblrebrandingproductsarchive`
  ADD PRIMARY KEY (`prodID`);

--
-- Indexes for table `tblreturndetails`
--
ALTER TABLE `tblreturndetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblreturnproduct`
--
ALTER TABLE `tblreturnproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblreturnstatus`
--
ALTER TABLE `tblreturnstatus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblverificationcode`
--
ALTER TABLE `tblverificationcode`
  ADD PRIMARY KEY (`verificationID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audittrailmarketing`
--
ALTER TABLE `audittrailmarketing`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `audittrailproduction`
--
ALTER TABLE `audittrailproduction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `audittrailwarehouse`
--
ALTER TABLE `audittrailwarehouse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblaccount`
--
ALTER TABLE `tblaccount`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcancelledorder`
--
ALTER TABLE `tblcancelledorder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcartdata`
--
ALTER TABLE `tblcartdata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `tblconfirmationproduct`
--
ALTER TABLE `tblconfirmationproduct`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tblconfirmationproductRebranding`
--
ALTER TABLE `tblconfirmationproductRebranding`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblconfirmationtracking`
--
ALTER TABLE `tblconfirmationtracking`
  MODIFY `TrackingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcourierdelivery`
--
ALTER TABLE `tblcourierdelivery`
  MODIFY `deliveryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `tblcourierdeliverycompleted`
--
ALTER TABLE `tblcourierdeliverycompleted`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `tblcourierdeliverydate`
--
ALTER TABLE `tblcourierdeliverydate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `tblcourierinformation`
--
ALTER TABLE `tblcourierinformation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcurrentmonth`
--
ALTER TABLE `tblcurrentmonth`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcurrentmonthPackaging`
--
ALTER TABLE `tblcurrentmonthPackaging`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblmonthlysummary`
--
ALTER TABLE `tblmonthlysummary`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblorderapproved`
--
ALTER TABLE `tblorderapproved`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `tblordercheckout`
--
ALTER TABLE `tblordercheckout`
  MODIFY `OrderNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `tblordercheckoutdataarchive`
--
ALTER TABLE `tblordercheckoutdataarchive`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblorderexpirationtime`
--
ALTER TABLE `tblorderexpirationtime`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `tblpreregistration`
--
ALTER TABLE `tblpreregistration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblprocedurestorage`
--
ALTER TABLE `tblprocedurestorage`
  MODIFY `procedureID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `prodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblrebrandingproducts`
--
ALTER TABLE `tblrebrandingproducts`
  MODIFY `prodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblreturndetails`
--
ALTER TABLE `tblreturndetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblreturnproduct`
--
ALTER TABLE `tblreturnproduct`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblreturnstatus`
--
ALTER TABLE `tblreturnstatus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblverificationcode`
--
ALTER TABLE `tblverificationcode`
  MODIFY `verificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `deleteVerificationCode` ON SCHEDULE EVERY 10 SECOND STARTS '2023-10-31 12:00:24' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    DELETE FROM tblverificationcode WHERE NOW() > Expiration;
END$$

CREATE DEFINER=`root`@`localhost` EVENT `verification` ON SCHEDULE EVERY 10 SECOND STARTS '2023-10-31 12:00:24' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN

    -- DELETE Expired CODE
    DECLARE emailVar VARCHAR(255);
    DECLARE done INT DEFAULT 0;
    DECLARE cur CURSOR FOR
        SELECT email FROM tblprocedurestorage WHERE NOW() > expiration;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    
    event_loop: LOOP
        FETCH cur INTO emailVar;
        IF done = 1 THEN
            LEAVE event_loop;
        END IF;
        
        -- Store the email in a user-defined variable, e.g., @email_list
        SET @email_list = CONCAT_WS(',', @email_list, emailVar);
    END LOOP;
    
    CLOSE cur;
    
    -- Execute the DROP PROCEDURE statement for each email in the list
    SET @sql = CONCAT('DROP PROCEDURE IF EXISTS ', @email_list);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    -- Clear the email list variable
    SET @email_list = NULL;

    DELETE FROM tblprocedurestorage WHERE NOW() > expiration;
    
END$$

CREATE DEFINER=`root`@`localhost` EVENT `CheckAndMoveExpiredOrders` ON SCHEDULE EVERY 10 SECOND STARTS '2023-10-31 12:00:24' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
#auto add ExpirationTime

  INSERT INTO tblorderexpirationtime (OrderRefNumber, Expiration)
  SELECT o.OrderRefNumber, DATE_ADD(NOW(), INTERVAL 5 DAY) AS ExpirationTime
  FROM tblorderstatus o
  LEFT JOIN tblorderexpirationtime e ON o.OrderRefNumber = e.OrderRefNumber
  WHERE o.Status = 'toPay'
  AND e.OrderRefNumber IS NULL;

  -- checker

  -- insert to archive
  INSERT INTO tblorderarchive (OrderNumber, OrderRefNumber, OrderDate, UserID, address, contact, email)
  SELECT b.OrderNumber, b.OrderRefNumber, b.OrderDate , b.UserID, b.address, b.contact, b.email
  FROM tblorderexpirationtime AS a
  JOIN tblordercheckout AS b ON b.OrderRefNumber = a.OrderRefNumber
  WHERE a.Expiration <= NOW() AND b.OrderRefNumber NOT IN (SELECT OrderRefNumber FROM tblorderarchive);

  INSERT INTO tblorderarchive (OrderNumber, OrderRefNumber, OrderDate, UserID, address, contact, email)
  SELECT b.OrderNumber, b.OrderRefNumber, b.OrderDate , b.UserID, b.address, b.contact, b.email
  FROM tblcancelledorder AS a
  JOIN tblordercheckout AS b ON b.OrderRefNumber = a.OrderRefNumber
  WHERE b.OrderRefNumber NOT IN(SELECT OrderRefNumber FROM tblorderarchive);

  -- for keep tracking data
  INSERT INTO tblordercheckoutdataarchive (OrderRefNumber, ProductName, volume, Quantity, Price)
  SELECT b.OrderRefNumber, b.ProductName, b.volume, b.Quantity, b.Price
  FROM tblorderarchive AS a
  JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber
  WHERE b.OrderRefNumber NOT IN (SELECT OrderRefNumber FROM tblordercheckoutdataarchive);
  

  -- bring back the Quantity of Expired order
  UPDATE tblproducts AS a
  JOIN tblordercheckoutdataarchive AS b ON a.prodName = b.ProductName AND a.prodVolume = b.volume
  SET a.Quantity = a.Quantity + b.Quantity,
  a.Sold = a.Sold - b.Quantity,
  b.checker = 'Added'
  WHERE b.checker IS NULL;

  UPDATE tblrebrandingproducts AS a
  JOIN tblordercheckoutdataarchive AS b ON a.prodName = b.ProductName AND a.prodVolume = b.volume
  JOIN tblorderarchive AS c ON c.UserID = a.userID
  SET a.Sold = a.Sold - b.Quantity,
  b.checker = 'Added'
  WHERE b.checker IS NULL;

  -- delete

  -- Delete if already archive
    DELETE a
    FROM tblorderexpirationtime AS a
    JOIN tblorderstatus AS b ON a.OrderRefNumber = b.OrderRefNumber
    WHERE a.Expiration < NOW() || b.Status != 'toPay';

  -- Delete from toPay order
  DELETE a FROM tblordercheckout AS a
  JOIN tblorderarchive AS b
  WHERE a.OrderRefNumber = b.OrderRefNumber;

  -- Delete data
  DELETE a FROM tblordercheckoutdata AS a
  JOIN tblorderarchive AS b
  WHERE a.OrderRefNumber = b.OrderRefNumber;

  -- Update status

  UPDATE tblorderstatus AS a
  JOIN tblcancelledorder AS b ON a.OrderRefNumber = b.OrderRefNumber
  SET a.status = 'Cancelled'
  WHERE a.status != 'Expired' AND a.status != 'Cancelled';

  -- Expired
  UPDATE tblorderstatus AS a
  JOIN tblorderarchive AS b ON a.OrderRefNumber = b.OrderRefNumber
  SET a.status = 'Expired'
  WHERE b.OrderRefNumber NOT IN (SELECT OrderRefNumber FROM tblcancelledorder);
  
    -- Expired add to Cancel Table
    INSERT INTO tblcancelledorder (OrderRefNumber, CancelDate, Reason)
  SELECT a.OrderRefNumber, NOW(), 'Expired'
  FROM tblorderstatus AS a
  WHERE a.OrderRefNumber NOT IN (SELECT OrderRefNumber FROM tblcancelledorder)
  AND (a.Status = 'Cancelled' OR a.Status = 'Expired');
  
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
