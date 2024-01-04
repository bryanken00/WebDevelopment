-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2024 at 08:36 PM
-- Server version: 10.6.16-MariaDB
-- PHP Version: 8.1.26

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeliveryProcess` ()   BEGIN 
INSERT INTO tblcourierdelivery(OrderRefNumber,courierID) VALUES('ref155','CourierID0');
UPDATE tblordercheckout SET shippingFee = '100' WHERE OrderRefNumber = 'ref155';
INSERT INTO tblcourierdeliverydate(OrderRefNumber, DeliveryDate) VALUES('ref155','2024-01-04 20:09:40');
UPDATE tblorderstatus SET Status = 'Delivery' WHERE OrderRefNumber = 'ref155';

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertAndDeleteWithRollback` ()   BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  INSERT INTO tblproductsarchive
  (prodID, prodImg, prodName, prodPrice, prodVolume, Quantity, Sold, prodCategory, Description)
  SELECT
    prodID,
    prodImg,
    prodName,
    prodPrice,
    prodVolume,
    Quantity,
    Sold,
    prodCategory,
    Description 
  FROM tblproducts
  WHERE prodID = 21;

  -- Delete the inserted rows from tblproducts
  DELETE FROM tblproducts WHERE prodID IN (SELECT prodID FROM tblproductsarchive);

  COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `placeOrder` ()   BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;
INSERT INTO tblordercheckoutdata(OrderRefNumber,ProductName, volume, Quantity, Price) 
    SELECT 'ref155', prodName, prodVolume, 90, prodPrice 
    FROM tblproducts 
    WHERE prodName = 'Kojic Rejuvinating Soap' AND prodVolume = '110g'
    AND CONCAT(prodName, prodVolume) NOT IN (SELECT CONCAT(ProductName, volume) FROM tblordercheckoutdata WHERE OrderRefNumber = 'ref155'); 
INSERT INTO tblordercheckoutdata(OrderRefNumber,ProductName, volume, Quantity, Price) 
    SELECT 'ref155', prodName, prodVolume, 90, prodPrice 
    FROM tblrebrandingproducts 
    WHERE prodName = 'Kojic Rejuvinating Soap' AND prodVolume = '110g' AND userID = 'ravenberenguila#536'
    AND CONCAT(prodName, prodVolume) NOT IN (SELECT CONCAT(ProductName, volume) FROM tblordercheckoutdata WHERE OrderRefNumber = 'ref155'); 
UPDATE tblproducts
    SET Quantity = Quantity - 90,
    Sold = Sold + 90
    WHERE prodName = 'Kojic Rejuvinating Soap' AND prodVolume = '110g'; 
UPDATE tblrebrandingproducts
    SET Sold = Sold + 90
    WHERE prodName = 'Kojic Rejuvinating Soap' AND prodVolume = '110g'; 
DELETE FROM tblcartdata WHERE prodName = 'Kojic Rejuvinating Soap' AND prodVariant = '110g'; 
INSERT INTO tblordercheckoutdata(OrderRefNumber,ProductName, volume, Quantity, Price) 
    SELECT 'ref155', prodName, prodVolume, 90, prodPrice 
    FROM tblproducts 
    WHERE prodName = 'Isopropyl Alcohol' AND prodVolume = '1 Liter'
    AND CONCAT(prodName, prodVolume) NOT IN (SELECT CONCAT(ProductName, volume) FROM tblordercheckoutdata WHERE OrderRefNumber = 'ref155'); 
INSERT INTO tblordercheckoutdata(OrderRefNumber,ProductName, volume, Quantity, Price) 
    SELECT 'ref155', prodName, prodVolume, 90, prodPrice 
    FROM tblrebrandingproducts 
    WHERE prodName = 'Isopropyl Alcohol' AND prodVolume = '1 Liter' AND userID = 'ravenberenguila#536'
    AND CONCAT(prodName, prodVolume) NOT IN (SELECT CONCAT(ProductName, volume) FROM tblordercheckoutdata WHERE OrderRefNumber = 'ref155'); 
UPDATE tblproducts
    SET Quantity = Quantity - 90,
    Sold = Sold + 90
    WHERE prodName = 'Isopropyl Alcohol' AND prodVolume = '1 Liter'; 
UPDATE tblrebrandingproducts
    SET Sold = Sold + 90
    WHERE prodName = 'Isopropyl Alcohol' AND prodVolume = '1 Liter'; 
DELETE FROM tblcartdata WHERE prodName = 'Isopropyl Alcohol' AND prodVariant = '1 Liter'; 
INSERT INTO tblordercheckout(OrderRefNumber, OrderDate, UserID, address, contact, email, shippingFee) VALUES('ref155', NOW(), 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', '09212121211', 'ravenberenguilaRENAME@gmail.com',0); 
INSERT INTO tblorderstatus VALUES('ref155','toPay'); 

    -- If successful, commit the transaction
    COMMIT;
END$$

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
(1, '2024-01-01 20:14:09', '1', 'Approved Order - Reference #: ref2'),
(2, '2024-01-01 20:14:13', '1', 'Approved Order - Reference #: ref3'),
(3, '2024-01-01 22:15:05', '1', 'KBN Product Archive - Isopropyl Alcohol(60ml)'),
(4, '2024-01-02 21:06:11', '1', 'Approved Order - Reference #: ref18'),
(5, '2024-01-02 21:06:14', '1', 'Approved Order - Reference #: ref17'),
(6, '2024-01-02 21:06:17', '1', 'Approved Order - Reference #: ref16'),
(7, '2024-01-02 21:06:20', '1', 'Approved Order - Reference #: ref15'),
(8, '2024-01-02 21:06:25', '1', 'Approved Order - Reference #: ref14'),
(9, '2024-01-02 21:06:29', '1', 'Approved Order - Reference #: ref13'),
(10, '2024-01-02 21:06:32', '1', 'Approved Order - Reference #: ref12'),
(11, '2024-01-02 21:06:35', '1', 'Approved Order - Reference #: ref11'),
(12, '2024-01-02 21:06:40', '1', 'Approved Order - Reference #: ref10'),
(13, '2024-01-02 21:06:43', '1', 'Approved Order - Reference #: ref9'),
(14, '2024-01-02 21:06:49', '1', 'Approved Order - Reference #: ref8'),
(15, '2024-01-02 21:06:53', '1', 'Approved Order - Reference #: ref7'),
(16, '2024-01-02 21:07:01', '1', 'Approved Order - Reference #: ref6'),
(17, '2024-01-02 21:07:04', '1', 'Approved Order - Reference #: ref5'),
(18, '2024-01-02 21:07:07', '1', 'Approved Order - Reference #: ref4'),
(19, '2024-01-02 21:23:57', '1', 'Approved Order - Reference #: ref19'),
(20, '2024-01-03 21:59:46', '1', 'Approved Order - Reference #: ref20'),
(21, '2024-01-03 21:59:50', '1', 'Approved Order - Reference #: ref21'),
(22, '2024-01-03 21:59:53', '1', 'Approved Order - Reference #: ref22'),
(23, '2024-01-03 21:59:57', '1', 'Approved Order - Reference #: ref23'),
(24, '2024-01-03 22:00:00', '1', 'Approved Order - Reference #: ref24'),
(25, '2024-01-03 22:00:03', '1', 'Approved Order - Reference #: ref25'),
(26, '2024-01-03 22:00:24', '1', 'Approved Order - Reference #: ref26'),
(27, '2024-01-03 22:00:27', '1', 'Approved Order - Reference #: ref27'),
(28, '2024-01-03 22:00:30', '1', 'Approved Order - Reference #: ref28'),
(29, '2024-01-03 22:00:32', '1', 'Approved Order - Reference #: ref29'),
(30, '2024-01-03 22:00:34', '1', 'Approved Order - Reference #: ref30'),
(31, '2024-01-03 22:00:37', '1', 'Approved Order - Reference #: ref31'),
(32, '2024-01-03 22:00:43', '1', 'Approved Order - Reference #: ref32'),
(33, '2024-01-03 22:00:46', '1', 'Approved Order - Reference #: ref33'),
(34, '2024-01-03 22:00:48', '1', 'Approved Order - Reference #: ref34'),
(35, '2024-01-03 22:00:52', '1', 'Approved Order - Reference #: ref35'),
(36, '2024-01-03 22:00:57', '1', 'Approved Order - Reference #: ref36'),
(37, '2024-01-03 22:01:00', '1', 'Approved Order - Reference #: ref37'),
(38, '2024-01-03 22:01:03', '1', 'Approved Order - Reference #: ref38'),
(39, '2024-01-03 22:01:05', '1', 'Approved Order - Reference #: ref39'),
(40, '2024-01-03 22:01:10', '1', 'Approved Order - Reference #: ref40'),
(41, '2024-01-03 22:01:12', '1', 'Approved Order - Reference #: ref41'),
(42, '2024-01-03 22:01:15', '1', 'Approved Order - Reference #: ref42'),
(43, '2024-01-03 22:01:18', '1', 'Approved Order - Reference #: ref43'),
(44, '2024-01-03 22:01:21', '1', 'Approved Order - Reference #: ref44'),
(45, '2024-01-03 22:01:25', '1', 'Approved Order - Reference #: ref45'),
(46, '2024-01-03 22:01:27', '1', 'Approved Order - Reference #: ref46'),
(47, '2024-01-03 22:01:29', '1', 'Approved Order - Reference #: ref47'),
(48, '2024-01-03 22:01:32', '1', 'Approved Order - Reference #: ref48'),
(49, '2024-01-03 22:01:37', '1', 'Approved Order - Reference #: ref49'),
(50, '2024-01-03 22:01:40', '1', 'Approved Order - Reference #: ref50'),
(51, '2024-01-03 22:01:42', '1', 'Approved Order - Reference #: ref51'),
(52, '2024-01-03 22:01:45', '1', 'Approved Order - Reference #: ref52'),
(53, '2024-01-03 22:01:48', '1', 'Approved Order - Reference #: ref53'),
(54, '2024-01-03 22:01:55', '1', 'Approved Order - Reference #: ref54'),
(55, '2024-01-03 22:01:58', '1', 'Approved Order - Reference #: ref55'),
(56, '2024-01-03 22:02:00', '1', 'Approved Order - Reference #: ref56'),
(57, '2024-01-03 22:02:04', '1', 'Approved Order - Reference #: ref57'),
(58, '2024-01-03 22:02:07', '1', 'Approved Order - Reference #: ref58'),
(59, '2024-01-03 22:02:16', '1', 'Approved Order - Reference #: ref59'),
(60, '2024-01-03 22:02:19', '1', 'Approved Order - Reference #: ref60'),
(61, '2024-01-03 22:02:21', '1', 'Approved Order - Reference #: ref61'),
(62, '2024-01-03 22:02:24', '1', 'Approved Order - Reference #: ref62'),
(63, '2024-01-03 22:02:26', '1', 'Approved Order - Reference #: ref63'),
(64, '2024-01-03 22:02:29', '1', 'Approved Order - Reference #: ref64'),
(65, '2024-01-03 22:02:33', '1', 'Approved Order - Reference #: ref65'),
(66, '2024-01-03 22:02:36', '1', 'Approved Order - Reference #: ref66'),
(67, '2024-01-03 22:02:38', '1', 'Approved Order - Reference #: ref67'),
(68, '2024-01-03 22:02:40', '1', 'Approved Order - Reference #: ref68'),
(69, '2024-01-03 22:02:43', '1', 'Approved Order - Reference #: ref69'),
(70, '2024-01-03 22:02:47', '1', 'Approved Order - Reference #: ref70'),
(71, '2024-01-03 22:02:49', '1', 'Approved Order - Reference #: ref71'),
(72, '2024-01-03 22:02:52', '1', 'Approved Order - Reference #: ref72'),
(73, '2024-01-03 22:02:55', '1', 'Approved Order - Reference #: ref73'),
(74, '2024-01-03 22:02:59', '1', 'Approved Order - Reference #: ref74'),
(75, '2024-01-03 22:03:02', '1', 'Approved Order - Reference #: ref75'),
(76, '2024-01-03 22:03:04', '1', 'Approved Order - Reference #: ref76'),
(77, '2024-01-03 22:04:09', '1', 'Approved Order - Reference #: ref77'),
(78, '2024-01-03 22:04:12', '1', 'Approved Order - Reference #: ref78'),
(79, '2024-01-03 22:04:15', '1', 'Approved Order - Reference #: ref79'),
(80, '2024-01-03 22:04:19', '1', 'Approved Order - Reference #: ref80'),
(81, '2024-01-03 22:04:22', '1', 'Approved Order - Reference #: ref81'),
(82, '2024-01-03 22:04:58', '1', 'Approved Order - Reference #: ref82'),
(83, '2024-01-03 22:05:04', '1', 'Approved Order - Reference #: ref83'),
(84, '2024-01-03 22:05:06', '1', 'Approved Order - Reference #: ref84'),
(85, '2024-01-03 22:05:08', '1', 'Approved Order - Reference #: ref85'),
(86, '2024-01-03 22:05:11', '1', 'Approved Order - Reference #: ref86'),
(87, '2024-01-03 22:05:15', '1', 'Approved Order - Reference #: ref87'),
(88, '2024-01-03 22:05:17', '1', 'Approved Order - Reference #: ref88'),
(89, '2024-01-03 22:05:19', '1', 'Approved Order - Reference #: ref89'),
(90, '2024-01-03 22:05:22', '1', 'Approved Order - Reference #: ref90'),
(91, '2024-01-03 22:05:25', '1', 'Approved Order - Reference #: ref91'),
(92, '2024-01-03 22:05:27', '1', 'Approved Order - Reference #: ref92'),
(93, '2024-01-03 22:05:30', '1', 'Approved Order - Reference #: ref93'),
(94, '2024-01-03 22:05:33', '1', 'Approved Order - Reference #: ref94'),
(95, '2024-01-03 22:05:36', '1', 'Approved Order - Reference #: ref95'),
(96, '2024-01-03 22:05:39', '1', 'Approved Order - Reference #: ref96'),
(97, '2024-01-03 22:06:13', '1', 'Approved Order - Reference #: ref97'),
(98, '2024-01-03 22:06:16', '1', 'Approved Order - Reference #: ref98'),
(99, '2024-01-03 22:06:20', '1', 'Approved Order - Reference #: ref99'),
(100, '2024-01-03 22:06:22', '1', 'Approved Order - Reference #: ref100'),
(101, '2024-01-03 22:06:25', '1', 'Approved Order - Reference #: ref101'),
(102, '2024-01-03 22:06:27', '1', 'Approved Order - Reference #: ref102'),
(103, '2024-01-03 22:06:30', '1', 'Approved Order - Reference #: ref103'),
(104, '2024-01-03 22:06:39', '1', 'Approved Order - Reference #: ref104'),
(105, '2024-01-03 22:06:42', '1', 'Approved Order - Reference #: ref105'),
(106, '2024-01-03 22:06:44', '1', 'Approved Order - Reference #: ref106'),
(107, '2024-01-03 22:06:46', '1', 'Approved Order - Reference #: ref107'),
(108, '2024-01-03 22:06:49', '1', 'Approved Order - Reference #: ref108'),
(109, '2024-01-03 22:06:58', '1', 'Approved Order - Reference #: ref109'),
(110, '2024-01-03 22:37:34', '1', 'Approved Order - Reference #: ref110'),
(111, '2024-01-03 22:37:37', '1', 'Approved Order - Reference #: ref111'),
(112, '2024-01-03 22:37:39', '1', 'Approved Order - Reference #: ref112'),
(113, '2024-01-03 22:37:42', '1', 'Approved Order - Reference #: ref113'),
(114, '2024-01-03 22:37:48', '1', 'Approved Order - Reference #: ref114'),
(115, '2024-01-03 22:37:51', '1', 'Approved Order - Reference #: ref115'),
(116, '2024-01-03 22:37:54', '1', 'Approved Order - Reference #: ref116'),
(117, '2024-01-03 22:37:57', '1', 'Approved Order - Reference #: ref117'),
(118, '2024-01-03 22:38:03', '1', 'Approved Order - Reference #: ref118'),
(119, '2024-01-03 22:38:06', '1', 'Approved Order - Reference #: ref119'),
(120, '2024-01-03 22:38:08', '1', 'Approved Order - Reference #: ref120'),
(121, '2024-01-03 22:38:12', '1', 'Approved Order - Reference #: ref121'),
(122, '2024-01-03 22:40:13', '1', 'Approved Order - Reference #: ref122'),
(123, '2024-01-03 22:40:17', '1', 'Approved Order - Reference #: ref123'),
(124, '2024-01-03 22:40:20', '1', 'Approved Order - Reference #: ref124'),
(125, '2024-01-03 22:40:25', '1', 'Approved Order - Reference #: ref125'),
(126, '2024-01-03 22:40:28', '1', 'Approved Order - Reference #: ref126'),
(127, '2024-01-03 22:40:31', '1', 'Approved Order - Reference #: ref127'),
(128, '2024-01-03 22:40:35', '1', 'Approved Order - Reference #: ref128'),
(129, '2024-01-03 22:40:37', '1', 'Approved Order - Reference #: ref129'),
(130, '2024-01-03 22:40:40', '1', 'Approved Order - Reference #: ref130'),
(131, '2024-01-03 22:54:40', '1', 'Approved Order - Reference #: ref131'),
(132, '2024-01-03 22:54:42', '1', 'Approved Order - Reference #: ref132'),
(133, '2024-01-03 22:54:45', '1', 'Approved Order - Reference #: ref133'),
(134, '2024-01-03 22:54:47', '1', 'Approved Order - Reference #: ref134'),
(135, '2024-01-03 22:54:49', '1', 'Approved Order - Reference #: ref135'),
(136, '2024-01-03 22:54:52', '1', 'Approved Order - Reference #: ref136'),
(137, '2024-01-03 22:54:56', '1', 'Approved Order - Reference #: ref137'),
(138, '2024-01-03 22:54:58', '1', 'Approved Order - Reference #: ref138'),
(139, '2024-01-03 22:55:01', '1', 'Approved Order - Reference #: ref139'),
(140, '2024-01-03 22:55:03', '1', 'Approved Order - Reference #: ref140'),
(141, '2024-01-03 22:55:07', '1', 'Approved Order - Reference #: ref141'),
(142, '2024-01-03 22:55:10', '1', 'Approved Order - Reference #: ref142'),
(143, '2024-01-03 22:55:13', '1', 'Approved Order - Reference #: ref143'),
(144, '2024-01-03 22:55:15', '1', 'Approved Order - Reference #: ref144'),
(145, '2024-01-03 22:55:18', '1', 'Approved Order - Reference #: ref145'),
(146, '2024-01-03 22:55:21', '1', 'Approved Order - Reference #: ref146'),
(147, '2024-01-03 22:55:23', '1', 'Approved Order - Reference #: ref147'),
(148, '2024-01-03 22:55:26', '1', 'Approved Order - Reference #: ref148'),
(149, '2024-01-03 22:55:29', '1', 'Approved Order - Reference #: ref149'),
(150, '2024-01-03 22:55:33', '1', 'Approved Order - Reference #: ref150'),
(151, '2024-01-03 22:55:36', '1', 'Approved Order - Reference #: ref151'),
(152, '2024-01-03 22:55:40', '1', 'Approved Order - Reference #: ref152'),
(153, '2024-01-03 22:55:42', '1', 'Approved Order - Reference #: ref153'),
(154, '2024-01-03 22:55:45', '1', 'Approved Order - Reference #: ref154'),
(155, '2024-01-03 22:55:48', '1', 'Approved Order - Reference #: ref155');

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
(1, '2024-01-01 20:14:37', '1', 'Process Order - ref2'),
(2, '2024-01-01 20:14:44', '1', 'Process Order - ref3'),
(3, '2024-01-02 21:08:36', '1', 'Process Order - ref10'),
(4, '2024-01-02 21:08:40', '1', 'Process Order - ref11'),
(5, '2024-01-02 21:08:45', '1', 'Process Order - ref12'),
(6, '2024-01-02 21:08:49', '1', 'Process Order - ref13'),
(7, '2024-01-02 21:08:53', '1', 'Process Order - ref14'),
(8, '2024-01-02 21:10:47', '1', 'Process Order - ref15'),
(9, '2024-01-02 21:11:49', '1', 'Process Order - ref16'),
(10, '2024-01-02 21:11:55', '1', 'Process Order - ref17'),
(11, '2024-01-02 21:12:00', '1', 'Process Order - ref18'),
(12, '2024-01-02 21:12:04', '1', 'Process Order - ref4'),
(13, '2024-01-02 21:12:09', '1', 'Process Order - ref5'),
(14, '2024-01-02 21:12:13', '1', 'Process Order - ref6'),
(15, '2024-01-02 21:12:30', '1', 'Process Order - ref7'),
(16, '2024-01-02 21:12:34', '1', 'Process Order - ref8'),
(17, '2024-01-02 21:12:39', '1', 'Process Order - ref9'),
(18, '2024-01-02 21:24:15', '1', 'Process Order - ref19'),
(19, '2024-01-03 23:25:09', '1', 'Process Order - ref20'),
(20, '2024-01-03 23:25:19', '1', 'Process Order - ref21'),
(21, '2024-01-03 23:27:46', '1', 'Process Order - ref22'),
(22, '2024-01-03 23:28:03', '1', 'Process Order - ref23'),
(23, '2024-01-03 23:28:08', '1', 'Process Order - ref24'),
(24, '2024-01-03 23:28:12', '1', 'Process Order - ref25'),
(25, '2024-01-03 23:28:17', '1', 'Process Order - ref26'),
(26, '2024-01-03 23:28:23', '1', 'Process Order - ref27'),
(27, '2024-01-03 23:28:29', '1', 'Process Order - ref28'),
(28, '2024-01-03 23:28:33', '1', 'Process Order - ref29'),
(29, '2024-01-03 23:28:41', '1', 'Process Order - ref30'),
(30, '2024-01-03 23:28:46', '1', 'Process Order - ref31'),
(31, '2024-01-03 23:28:51', '1', 'Process Order - ref32'),
(32, '2024-01-03 23:28:55', '1', 'Process Order - ref33'),
(33, '2024-01-03 23:29:01', '1', 'Process Order - ref34'),
(34, '2024-01-03 23:29:06', '1', 'Process Order - ref35'),
(35, '2024-01-03 23:29:10', '1', 'Process Order - ref36'),
(36, '2024-01-03 23:29:17', '1', 'Process Order - ref37'),
(37, '2024-01-03 23:29:21', '1', 'Process Order - ref38'),
(38, '2024-01-03 23:29:26', '1', 'Process Order - ref39'),
(39, '2024-01-03 23:29:32', '1', 'Process Order - ref40'),
(40, '2024-01-03 23:29:37', '1', 'Process Order - ref41'),
(41, '2024-01-03 23:29:43', '1', 'Process Order - ref42'),
(42, '2024-01-03 23:32:07', '1', 'Process Order - ref43'),
(43, '2024-01-03 23:32:15', '1', 'Process Order - ref44'),
(44, '2024-01-03 23:32:21', '1', 'Process Order - ref45'),
(45, '2024-01-03 23:32:25', '1', 'Process Order - ref46'),
(46, '2024-01-03 23:32:30', '1', 'Process Order - ref47'),
(47, '2024-01-03 23:32:34', '1', 'Process Order - ref48'),
(48, '2024-01-03 23:32:38', '1', 'Process Order - ref49'),
(49, '2024-01-03 23:32:42', '1', 'Process Order - ref50'),
(50, '2024-01-03 23:32:46', '1', 'Process Order - ref51'),
(51, '2024-01-03 23:32:50', '1', 'Process Order - ref52'),
(52, '2024-01-03 23:52:22', '1', 'Process Order - ref53'),
(53, '2024-01-03 23:52:30', '1', 'Process Order - ref54'),
(54, '2024-01-03 23:52:34', '1', 'Process Order - ref55'),
(55, '2024-01-03 23:52:48', '1', 'Process Order - ref56'),
(56, '2024-01-03 23:52:54', '1', 'Process Order - ref57'),
(57, '2024-01-03 23:52:59', '1', 'Process Order - ref58'),
(58, '2024-01-04 00:18:36', '1', 'Process Order - ref59'),
(59, '2024-01-04 00:18:43', '1', 'Process Order - ref60'),
(60, '2024-01-04 00:18:49', '1', 'Process Order - ref61'),
(61, '2024-01-04 00:18:53', '1', 'Process Order - ref62'),
(62, '2024-01-04 00:18:58', '1', 'Process Order - ref63'),
(63, '2024-01-04 00:19:02', '1', 'Process Order - ref64'),
(64, '2024-01-04 00:31:48', '1', 'Process Order - ref65'),
(65, '2024-01-04 00:31:54', '1', 'Process Order - ref66'),
(66, '2024-01-04 00:31:58', '1', 'Process Order - ref67'),
(67, '2024-01-04 00:32:05', '1', 'Process Order - ref68'),
(68, '2024-01-04 00:32:09', '1', 'Process Order - ref69'),
(69, '2024-01-04 00:32:13', '1', 'Process Order - ref70'),
(70, '2024-01-04 00:32:17', '1', 'Process Order - ref71'),
(71, '2024-01-04 00:32:21', '1', 'Process Order - ref72'),
(72, '2024-01-04 00:32:25', '1', 'Process Order - ref73'),
(73, '2024-01-04 00:32:30', '1', 'Process Order - ref74'),
(74, '2024-01-04 00:32:34', '1', 'Process Order - ref75'),
(75, '2024-01-04 00:32:38', '1', 'Process Order - ref76'),
(76, '2024-01-04 00:32:42', '1', 'Process Order - ref77'),
(77, '2024-01-04 00:32:49', '1', 'Process Order - ref78'),
(78, '2024-01-04 00:34:42', '1', 'Process Order - ref79'),
(79, '2024-01-04 00:34:46', '1', 'Process Order - ref80'),
(80, '2024-01-04 00:34:50', '1', 'Process Order - ref81'),
(81, '2024-01-04 00:34:54', '1', 'Process Order - ref82'),
(82, '2024-01-04 00:34:59', '1', 'Process Order - ref83'),
(83, '2024-01-04 00:35:05', '1', 'Process Order - ref84'),
(84, '2024-01-04 00:35:09', '1', 'Process Order - ref85'),
(85, '2024-01-04 00:35:13', '1', 'Process Order - ref86'),
(86, '2024-01-04 00:35:19', '1', 'Process Order - ref87'),
(87, '2024-01-04 00:35:25', '1', 'Process Order - ref88'),
(88, '2024-01-04 00:35:31', '1', 'Process Order - ref89'),
(89, '2024-01-04 00:35:47', '1', 'Process Order - ref90'),
(90, '2024-01-04 00:35:51', '1', 'Process Order - ref91'),
(91, '2024-01-04 00:35:55', '1', 'Process Order - ref92'),
(92, '2024-01-04 00:35:59', '1', 'Process Order - ref93'),
(93, '2024-01-04 00:36:03', '1', 'Process Order - ref94'),
(94, '2024-01-04 00:36:07', '1', 'Process Order - ref95'),
(95, '2024-01-04 00:36:11', '1', 'Process Order - ref96'),
(96, '2024-01-04 00:36:15', '1', 'Process Order - ref97'),
(97, '2024-01-04 00:36:18', '1', 'Process Order - ref98'),
(98, '2024-01-04 00:36:23', '1', 'Process Order - ref99'),
(99, '2024-01-04 00:36:28', '1', 'Process Order - ref100'),
(100, '2024-01-04 20:02:22', '1', 'Process Order - ref101'),
(101, '2024-01-04 20:02:27', '1', 'Process Order - ref102'),
(102, '2024-01-04 20:03:26', '1', 'Process Order - ref103'),
(103, '2024-01-04 20:03:29', '1', 'Process Order - ref104'),
(104, '2024-01-04 20:03:33', '1', 'Process Order - ref105'),
(105, '2024-01-04 20:03:37', '1', 'Process Order - ref106'),
(106, '2024-01-04 20:03:42', '1', 'Process Order - ref107'),
(107, '2024-01-04 20:03:46', '1', 'Process Order - ref108'),
(108, '2024-01-04 20:03:49', '1', 'Process Order - ref109'),
(109, '2024-01-04 20:03:53', '1', 'Process Order - ref110'),
(110, '2024-01-04 20:03:58', '1', 'Process Order - ref111'),
(111, '2024-01-04 20:04:01', '1', 'Process Order - ref112'),
(112, '2024-01-04 20:04:05', '1', 'Process Order - ref113'),
(113, '2024-01-04 20:04:09', '1', 'Process Order - ref114'),
(114, '2024-01-04 20:04:12', '1', 'Process Order - ref115'),
(115, '2024-01-04 20:04:15', '1', 'Process Order - ref116'),
(116, '2024-01-04 20:04:19', '1', 'Process Order - ref117'),
(117, '2024-01-04 20:04:22', '1', 'Process Order - ref118'),
(118, '2024-01-04 20:04:26', '1', 'Process Order - ref119'),
(119, '2024-01-04 20:04:29', '1', 'Process Order - ref120'),
(120, '2024-01-04 20:04:35', '1', 'Process Order - ref121'),
(121, '2024-01-04 20:05:12', '1', 'Process Order - ref122'),
(122, '2024-01-04 20:05:15', '1', 'Process Order - ref123'),
(123, '2024-01-04 20:05:20', '1', 'Process Order - ref124'),
(124, '2024-01-04 20:05:23', '1', 'Process Order - ref125'),
(125, '2024-01-04 20:05:27', '1', 'Process Order - ref126'),
(126, '2024-01-04 20:05:30', '1', 'Process Order - ref127'),
(127, '2024-01-04 20:05:34', '1', 'Process Order - ref128'),
(128, '2024-01-04 20:05:40', '1', 'Process Order - ref129'),
(129, '2024-01-04 20:08:53', '1', 'Process Order - ref130'),
(130, '2024-01-04 20:08:56', '1', 'Process Order - ref131'),
(131, '2024-01-04 20:09:00', '1', 'Process Order - ref132'),
(132, '2024-01-04 20:09:03', '1', 'Process Order - ref133'),
(133, '2024-01-04 20:09:07', '1', 'Process Order - ref134'),
(134, '2024-01-04 20:09:10', '1', 'Process Order - ref135'),
(135, '2024-01-04 20:09:13', '1', 'Process Order - ref136'),
(136, '2024-01-04 20:09:17', '1', 'Process Order - ref137'),
(137, '2024-01-04 20:09:20', '1', 'Process Order - ref138'),
(138, '2024-01-04 20:09:23', '1', 'Process Order - ref139'),
(139, '2024-01-04 20:09:26', '1', 'Process Order - ref140'),
(140, '2024-01-04 20:09:30', '1', 'Process Order - ref141'),
(141, '2024-01-04 20:09:34', '1', 'Process Order - ref142'),
(142, '2024-01-04 20:09:37', '1', 'Process Order - ref143'),
(143, '2024-01-04 20:09:41', '1', 'Process Order - ref144'),
(144, '2024-01-04 20:09:45', '1', 'Process Order - ref145'),
(145, '2024-01-04 20:09:48', '1', 'Process Order - ref146'),
(146, '2024-01-04 20:09:51', '1', 'Process Order - ref147'),
(147, '2024-01-04 20:09:55', '1', 'Process Order - ref148'),
(148, '2024-01-04 20:09:58', '1', 'Process Order - ref149'),
(149, '2024-01-04 20:10:02', '1', 'Process Order - ref150'),
(150, '2024-01-04 20:10:07', '1', 'Process Order - ref151'),
(151, '2024-01-04 20:10:10', '1', 'Process Order - ref152'),
(152, '2024-01-04 20:10:14', '1', 'Process Order - ref153'),
(153, '2024-01-04 20:10:17', '1', 'Process Order - ref154'),
(154, '2024-01-04 20:10:20', '1', 'Process Order - ref155');

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
(1, 'ref1', '2024-01-01 03:40:14', 'Expired');

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
(381, 'miguelbesa249#321', 'Kojic Rejuvinating Soap', 1, '110g'),
(382, 'ravenberenguila#536', 'Kojic Rejuvinating Soap', 1, '110g'),
(383, 'miguelbesa249#321', 'Isopropyl Alcohol', 1, '1 Liter');

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
(1, 'ref2', 'CourierID2'),
(2, 'ref3', 'CourierID2'),
(3, 'ref10', 'CourierID0'),
(4, 'ref11', 'CourierID0'),
(5, 'ref12', 'CourierID0'),
(6, 'ref13', 'CourierID0'),
(7, 'ref14', 'CourierID0'),
(8, 'ref15', 'CourierID0'),
(9, 'ref16', 'CourierID0'),
(10, 'ref17', 'CourierID0'),
(11, 'ref18', 'CourierID0'),
(12, 'ref4', 'CourierID0'),
(13, 'ref5', 'CourierID0'),
(14, 'ref6', 'CourierID0'),
(15, 'ref7', 'CourierID0'),
(16, 'ref8', 'CourierID0'),
(17, 'ref9', 'CourierID0'),
(18, 'ref19', 'CourierID0'),
(19, 'ref20', 'CourierID0'),
(20, 'ref21', 'CourierID0'),
(21, 'ref22', 'CourierID0'),
(22, 'ref23', 'CourierID0'),
(23, 'ref24', 'CourierID0'),
(24, 'ref25', 'CourierID0'),
(25, 'ref26', 'CourierID0'),
(26, 'ref27', 'CourierID0'),
(27, 'ref28', 'CourierID0'),
(28, 'ref29', 'CourierID0'),
(29, 'ref30', 'CourierID0'),
(30, 'ref31', 'CourierID0'),
(31, 'ref32', 'CourierID0'),
(32, 'ref33', 'CourierID0'),
(33, 'ref34', 'CourierID0'),
(34, 'ref35', 'CourierID0'),
(35, 'ref36', 'CourierID0'),
(36, 'ref37', 'CourierID0'),
(37, 'ref38', 'CourierID0'),
(38, 'ref39', 'CourierID0'),
(39, 'ref40', 'CourierID0'),
(40, 'ref41', 'CourierID0'),
(41, 'ref42', 'CourierID0'),
(42, 'ref43', 'CourierID0'),
(43, 'ref44', 'CourierID0'),
(44, 'ref45', 'CourierID0'),
(45, 'ref46', 'CourierID0'),
(46, 'ref47', 'CourierID0'),
(47, 'ref48', 'CourierID0'),
(48, 'ref49', 'CourierID0'),
(49, 'ref50', 'CourierID0'),
(50, 'ref51', 'CourierID0'),
(51, 'ref52', 'CourierID0'),
(52, 'ref53', 'CourierID0'),
(53, 'ref54', 'CourierID0'),
(54, 'ref55', 'CourierID0'),
(55, 'ref56', 'CourierID0'),
(56, 'ref57', 'CourierID0'),
(57, 'ref58', 'CourierID0'),
(58, 'ref59', 'CourierID0'),
(59, 'ref60', 'CourierID0'),
(60, 'ref61', 'CourierID0'),
(61, 'ref62', 'CourierID0'),
(62, 'ref63', 'CourierID0'),
(63, 'ref64', 'CourierID0'),
(64, 'ref65', 'CourierID0'),
(65, 'ref66', 'CourierID0'),
(66, 'ref67', 'CourierID0'),
(67, 'ref68', 'CourierID0'),
(68, 'ref69', 'CourierID0'),
(69, 'ref70', 'CourierID0'),
(70, 'ref71', 'CourierID0'),
(71, 'ref72', 'CourierID0'),
(72, 'ref73', 'CourierID0'),
(73, 'ref74', 'CourierID0'),
(74, 'ref75', 'CourierID0'),
(75, 'ref76', 'CourierID0'),
(76, 'ref77', 'CourierID0'),
(77, 'ref78', 'CourierID0'),
(78, 'ref79', 'CourierID0'),
(79, 'ref80', 'CourierID0'),
(80, 'ref81', 'CourierID0'),
(81, 'ref82', 'CourierID0'),
(82, 'ref83', 'CourierID0'),
(83, 'ref84', 'CourierID0'),
(84, 'ref85', 'CourierID0'),
(85, 'ref86', 'CourierID0'),
(86, 'ref87', 'CourierID0'),
(87, 'ref88', 'CourierID0'),
(88, 'ref89', 'CourierID0'),
(89, 'ref90', 'CourierID0'),
(90, 'ref91', 'CourierID0'),
(91, 'ref92', 'CourierID0'),
(92, 'ref93', 'CourierID0'),
(93, 'ref94', 'CourierID0'),
(94, 'ref95', 'CourierID0'),
(95, 'ref96', 'CourierID0'),
(96, 'ref97', 'CourierID0'),
(97, 'ref98', 'CourierID0'),
(98, 'ref99', 'CourierID0'),
(99, 'ref100', 'CourierID0'),
(100, 'ref101', 'CourierID0'),
(101, 'ref102', 'CourierID0'),
(102, 'ref103', 'CourierID0'),
(103, 'ref104', 'CourierID0'),
(104, 'ref105', 'CourierID0'),
(105, 'ref106', 'CourierID0'),
(106, 'ref107', 'CourierID0'),
(107, 'ref108', 'CourierID0'),
(108, 'ref109', 'CourierID0'),
(109, 'ref110', 'CourierID0'),
(110, 'ref111', 'CourierID0'),
(111, 'ref112', 'CourierID0'),
(112, 'ref113', 'CourierID0'),
(113, 'ref114', 'CourierID0'),
(114, 'ref115', 'CourierID0'),
(115, 'ref116', 'CourierID0'),
(116, 'ref117', 'CourierID0'),
(117, 'ref118', 'CourierID0'),
(118, 'ref119', 'CourierID0'),
(119, 'ref120', 'CourierID0'),
(120, 'ref121', 'CourierID0'),
(121, 'ref122', 'CourierID0'),
(122, 'ref123', 'CourierID0'),
(123, 'ref124', 'CourierID0'),
(124, 'ref125', 'CourierID0'),
(125, 'ref126', 'CourierID0'),
(126, 'ref127', 'CourierID0'),
(127, 'ref128', 'CourierID0'),
(128, 'ref129', 'CourierID0'),
(129, 'ref130', 'CourierID0'),
(130, 'ref131', 'CourierID0'),
(131, 'ref132', 'CourierID0'),
(132, 'ref133', 'CourierID0'),
(133, 'ref134', 'CourierID0'),
(134, 'ref135', 'CourierID0'),
(135, 'ref136', 'CourierID0'),
(136, 'ref137', 'CourierID0'),
(137, 'ref138', 'CourierID0'),
(138, 'ref139', 'CourierID0'),
(139, 'ref140', 'CourierID0'),
(140, 'ref141', 'CourierID0'),
(141, 'ref142', 'CourierID0'),
(142, 'ref143', 'CourierID0'),
(143, 'ref144', 'CourierID0'),
(144, 'ref145', 'CourierID0'),
(145, 'ref146', 'CourierID0'),
(146, 'ref147', 'CourierID0'),
(147, 'ref148', 'CourierID0'),
(148, 'ref149', 'CourierID0'),
(149, 'ref150', 'CourierID0'),
(150, 'ref151', 'CourierID0'),
(151, 'ref152', 'CourierID0'),
(152, 'ref153', 'CourierID0'),
(153, 'ref154', 'CourierID0'),
(154, 'ref155', 'CourierID0');

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
(1, 1, '2024-01-01 20:15:13'),
(2, 2, '2024-01-01 20:15:17'),
(3, 3, '2024-01-02 21:14:26'),
(4, 4, '2024-01-02 21:14:30'),
(5, 5, '2024-01-02 21:14:33'),
(6, 6, '2024-01-02 21:14:47'),
(7, 7, '2024-01-02 21:14:51'),
(8, 8, '2024-01-02 21:20:02'),
(9, 9, '2024-01-02 21:21:35'),
(10, 10, '2024-01-02 21:22:15'),
(11, 11, '2024-01-02 21:22:18'),
(12, 12, '2024-01-02 21:22:20'),
(13, 13, '2024-01-02 21:22:23'),
(14, 14, '2024-01-02 21:22:26'),
(15, 15, '2024-01-02 21:22:30'),
(16, 16, '2024-01-02 21:22:33'),
(17, 17, '2024-01-02 21:22:36'),
(18, 18, '2024-01-04 20:12:27'),
(19, 19, '2024-01-04 20:12:30'),
(20, 20, '2024-01-04 20:12:34'),
(21, 21, '2024-01-04 20:12:37'),
(22, 22, '2024-01-04 20:12:40'),
(23, 23, '2024-01-04 20:12:42'),
(24, 24, '2024-01-04 20:12:45'),
(25, 25, '2024-01-04 20:12:48'),
(26, 26, '2024-01-04 20:12:50'),
(27, 27, '2024-01-04 20:12:53'),
(28, 28, '2024-01-04 20:12:59'),
(29, 29, '2024-01-04 20:13:02'),
(30, 30, '2024-01-04 20:13:05'),
(31, 31, '2024-01-04 20:13:08'),
(32, 32, '2024-01-04 20:13:11'),
(33, 33, '2024-01-04 20:13:13'),
(34, 34, '2024-01-04 20:13:16'),
(35, 35, '2024-01-04 20:13:19'),
(36, 36, '2024-01-04 20:13:21'),
(37, 37, '2024-01-04 20:13:24'),
(38, 38, '2024-01-04 20:13:27'),
(39, 39, '2024-01-04 20:13:29'),
(40, 40, '2024-01-04 20:13:32'),
(41, 41, '2024-01-04 20:13:35'),
(42, 42, '2024-01-04 20:13:37'),
(43, 43, '2024-01-04 20:13:42'),
(44, 44, '2024-01-04 20:13:45'),
(45, 45, '2024-01-04 20:13:48'),
(46, 46, '2024-01-04 20:13:50'),
(47, 47, '2024-01-04 20:13:53'),
(48, 48, '2024-01-04 20:13:55'),
(49, 49, '2024-01-04 20:13:58'),
(50, 50, '2024-01-04 20:14:00'),
(51, 51, '2024-01-04 20:14:03'),
(52, 52, '2024-01-04 20:14:05'),
(53, 53, '2024-01-04 20:14:08'),
(54, 54, '2024-01-04 20:14:10'),
(55, 55, '2024-01-04 20:14:12'),
(56, 56, '2024-01-04 20:14:15'),
(57, 57, '2024-01-04 20:14:17'),
(58, 58, '2024-01-04 20:14:19'),
(59, 59, '2024-01-04 20:14:22'),
(60, 60, '2024-01-04 20:14:24'),
(61, 61, '2024-01-04 20:14:26'),
(62, 62, '2024-01-04 20:14:29'),
(63, 63, '2024-01-04 20:14:31'),
(64, 64, '2024-01-04 20:14:34'),
(65, 65, '2024-01-04 20:14:36'),
(66, 66, '2024-01-04 20:14:38'),
(67, 67, '2024-01-04 20:14:40'),
(68, 68, '2024-01-04 20:14:43'),
(69, 69, '2024-01-04 20:14:46'),
(70, 70, '2024-01-04 20:14:48'),
(71, 71, '2024-01-04 20:14:50'),
(72, 72, '2024-01-04 20:15:32'),
(73, 73, '2024-01-04 20:15:34'),
(74, 74, '2024-01-04 20:15:37'),
(75, 75, '2024-01-04 20:15:40'),
(76, 76, '2024-01-04 20:15:42'),
(77, 77, '2024-01-04 20:15:44'),
(78, 78, '2024-01-04 20:15:50'),
(79, 79, '2024-01-04 20:16:58'),
(80, 80, '2024-01-04 20:19:16'),
(81, 81, '2024-01-04 20:19:44'),
(82, 82, '2024-01-04 20:26:44'),
(83, 83, '2024-01-04 20:27:02'),
(84, 84, '2024-01-04 20:27:23'),
(85, 85, '2024-01-04 20:27:44'),
(86, 86, '2024-01-04 20:27:47'),
(87, 87, '2024-01-04 20:27:50'),
(88, 88, '2024-01-04 20:27:53'),
(89, 89, '2024-01-04 20:27:56'),
(90, 90, '2024-01-04 20:27:59'),
(91, 91, '2024-01-04 20:28:02'),
(92, 92, '2024-01-04 20:31:47'),
(93, 93, '2024-01-04 20:31:52'),
(94, 94, '2024-01-04 20:31:57'),
(95, 95, '2024-01-04 20:32:00'),
(96, 96, '2024-01-04 20:32:27'),
(97, 97, '2024-01-04 20:32:30'),
(98, 98, '2024-01-04 20:32:33'),
(99, 99, '2024-01-04 20:32:35'),
(100, 100, '2024-01-04 20:32:38'),
(101, 101, '2024-01-04 20:32:40'),
(102, 102, '2024-01-04 20:32:43'),
(103, 103, '2024-01-04 20:32:46'),
(104, 104, '2024-01-04 20:32:48'),
(105, 105, '2024-01-04 20:32:51'),
(106, 106, '2024-01-04 20:32:54'),
(107, 107, '2024-01-04 20:32:57'),
(108, 108, '2024-01-04 20:33:01'),
(109, 109, '2024-01-04 20:33:03'),
(110, 110, '2024-01-04 20:33:06'),
(111, 111, '2024-01-04 20:33:08'),
(112, 112, '2024-01-04 20:33:11'),
(113, 113, '2024-01-04 20:34:00'),
(114, 114, '2024-01-04 20:34:03'),
(115, 115, '2024-01-04 20:34:06'),
(116, 116, '2024-01-04 20:34:09'),
(117, 117, '2024-01-04 20:34:11'),
(118, 118, '2024-01-04 20:34:13'),
(119, 119, '2024-01-04 20:34:16'),
(120, 120, '2024-01-04 20:34:18'),
(121, 121, '2024-01-04 20:34:21'),
(122, 122, '2024-01-04 20:34:23'),
(123, 123, '2024-01-04 20:34:26'),
(124, 124, '2024-01-04 20:34:28'),
(125, 125, '2024-01-04 20:34:31'),
(126, 126, '2024-01-04 20:34:34'),
(127, 127, '2024-01-04 20:34:37'),
(128, 128, '2024-01-04 20:34:40'),
(129, 129, '2024-01-04 20:34:42'),
(130, 130, '2024-01-04 20:34:45'),
(131, 131, '2024-01-04 20:34:47'),
(132, 132, '2024-01-04 20:34:50'),
(133, 133, '2024-01-04 20:34:53'),
(134, 134, '2024-01-04 20:34:55'),
(135, 135, '2024-01-04 20:34:58'),
(136, 136, '2024-01-04 20:35:01'),
(137, 137, '2024-01-04 20:35:05'),
(138, 138, '2024-01-04 20:35:07'),
(139, 139, '2024-01-04 20:35:09'),
(140, 140, '2024-01-04 20:35:13'),
(141, 141, '2024-01-04 20:35:16'),
(142, 142, '2024-01-04 20:35:31'),
(143, 143, '2024-01-04 20:35:34'),
(144, 144, '2024-01-04 20:35:38'),
(145, 145, '2024-01-04 20:35:40'),
(146, 146, '2024-01-04 20:35:43'),
(147, 147, '2024-01-04 20:35:45'),
(148, 148, '2024-01-04 20:35:48'),
(149, 149, '2024-01-04 20:35:51'),
(150, 150, '2024-01-04 20:35:54'),
(151, 151, '2024-01-04 20:35:57'),
(152, 152, '2024-01-04 20:35:59'),
(153, 153, '2024-01-04 20:36:02'),
(154, 154, '2024-01-04 20:36:04');

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
(1, 'ref2', '2024-01-01 20:14:06'),
(2, 'ref3', '2024-01-01 20:14:13'),
(3, 'ref10', '2024-01-02 21:08:01'),
(4, 'ref11', '2024-01-02 21:08:06'),
(5, 'ref12', '2024-01-02 21:08:10'),
(6, 'ref13', '2024-01-02 21:08:14'),
(7, 'ref14', '2024-01-02 21:08:19'),
(8, 'ref15', '2024-01-02 21:10:13'),
(9, 'ref16', '2024-01-02 21:11:15'),
(10, 'ref17', '2024-01-02 21:11:20'),
(11, 'ref18', '2024-01-02 21:11:26'),
(12, 'ref4', '2024-01-02 21:11:30'),
(13, 'ref5', '2024-01-02 21:11:34'),
(14, 'ref6', '2024-01-02 21:11:38'),
(15, 'ref7', '2024-01-02 21:11:42'),
(16, 'ref8', '2024-01-02 21:11:59'),
(17, 'ref9', '2024-01-02 21:12:05'),
(18, 'ref19', '2024-01-02 21:23:40'),
(19, 'ref20', '2024-01-03 23:24:31'),
(20, 'ref21', '2024-01-03 23:24:41'),
(21, 'ref22', '2024-01-03 23:27:08'),
(22, 'ref23', '2024-01-03 23:27:25'),
(23, 'ref24', '2024-01-03 23:27:30'),
(24, 'ref25', '2024-01-03 23:27:35'),
(25, 'ref26', '2024-01-03 23:27:39'),
(26, 'ref27', '2024-01-03 23:27:45'),
(27, 'ref28', '2024-01-03 23:27:51'),
(28, 'ref29', '2024-01-03 23:27:55'),
(29, 'ref30', '2024-01-03 23:28:03'),
(30, 'ref31', '2024-01-03 23:28:08'),
(31, 'ref32', '2024-01-03 23:28:13'),
(32, 'ref33', '2024-01-03 23:28:17'),
(33, 'ref34', '2024-01-03 23:28:22'),
(34, 'ref35', '2024-01-03 23:28:27'),
(35, 'ref36', '2024-01-03 23:28:32'),
(36, 'ref37', '2024-01-03 23:28:38'),
(37, 'ref38', '2024-01-03 23:28:43'),
(38, 'ref39', '2024-01-03 23:28:48'),
(39, 'ref40', '2024-01-03 23:28:52'),
(40, 'ref41', '2024-01-03 23:28:59'),
(41, 'ref42', '2024-01-03 23:29:05'),
(42, 'ref43', '2024-01-03 23:31:28'),
(43, 'ref44', '2024-01-03 23:31:38'),
(44, 'ref45', '2024-01-03 23:31:43'),
(45, 'ref46', '2024-01-03 23:31:47'),
(46, 'ref47', '2024-01-03 23:31:52'),
(47, 'ref48', '2024-01-03 23:31:56'),
(48, 'ref49', '2024-01-03 23:32:00'),
(49, 'ref50', '2024-01-03 23:32:05'),
(50, 'ref51', '2024-01-03 23:32:08'),
(51, 'ref52', '2024-01-03 23:32:13'),
(52, 'ref53', '2024-01-03 23:51:44'),
(53, 'ref54', '2024-01-03 23:51:52'),
(54, 'ref55', '2024-01-03 23:51:57'),
(55, 'ref56', '2024-01-03 23:52:11'),
(56, 'ref57', '2024-01-03 23:52:16'),
(57, 'ref58', '2024-01-03 23:52:21'),
(58, 'ref59', '2024-01-04 00:17:57'),
(59, 'ref60', '2024-01-04 00:18:05'),
(60, 'ref61', '2024-01-04 00:18:10'),
(61, 'ref62', '2024-01-04 00:18:16'),
(62, 'ref63', '2024-01-04 00:18:20'),
(63, 'ref64', '2024-01-04 00:18:25'),
(64, 'ref65', '2024-01-04 00:31:10'),
(65, 'ref66', '2024-01-04 00:31:16'),
(66, 'ref67', '2024-01-04 00:31:21'),
(67, 'ref68', '2024-01-04 00:31:27'),
(68, 'ref69', '2024-01-04 00:31:31'),
(69, 'ref70', '2024-01-04 00:31:35'),
(70, 'ref71', '2024-01-04 00:31:39'),
(71, 'ref72', '2024-01-04 00:31:43'),
(72, 'ref73', '2024-01-04 00:31:47'),
(73, 'ref74', '2024-01-04 00:31:52'),
(74, 'ref75', '2024-01-04 00:31:56'),
(75, 'ref76', '2024-01-04 00:32:00'),
(76, 'ref77', '2024-01-04 00:32:04'),
(77, 'ref78', '2024-01-04 00:32:11'),
(78, 'ref79', '2024-01-04 00:34:04'),
(79, 'ref80', '2024-01-04 00:34:08'),
(80, 'ref81', '2024-01-04 00:34:12'),
(81, 'ref82', '2024-01-04 00:34:16'),
(82, 'ref83', '2024-01-04 00:34:21'),
(83, 'ref84', '2024-01-04 00:34:27'),
(84, 'ref85', '2024-01-04 00:34:31'),
(85, 'ref86', '2024-01-04 00:34:35'),
(86, 'ref87', '2024-01-04 00:34:41'),
(87, 'ref88', '2024-01-04 00:34:47'),
(88, 'ref89', '2024-01-04 00:34:53'),
(89, 'ref90', '2024-01-04 00:35:09'),
(90, 'ref91', '2024-01-04 00:35:13'),
(91, 'ref92', '2024-01-04 00:35:17'),
(92, 'ref93', '2024-01-04 00:35:21'),
(93, 'ref94', '2024-01-04 00:35:25'),
(94, 'ref95', '2024-01-04 00:35:29'),
(95, 'ref96', '2024-01-04 00:35:33'),
(96, 'ref97', '2024-01-04 00:35:37'),
(97, 'ref98', '2024-01-04 00:35:40'),
(98, 'ref99', '2024-01-04 00:35:45'),
(99, 'ref100', '2024-01-04 00:35:50'),
(100, 'ref101', '2024-01-04 20:01:42'),
(101, 'ref102', '2024-01-04 20:01:46'),
(102, 'ref103', '2024-01-04 20:02:46'),
(103, 'ref104', '2024-01-04 20:02:49'),
(104, 'ref105', '2024-01-04 20:02:53'),
(105, 'ref106', '2024-01-04 20:02:57'),
(106, 'ref107', '2024-01-04 20:03:02'),
(107, 'ref108', '2024-01-04 20:03:05'),
(108, 'ref109', '2024-01-04 20:03:09'),
(109, 'ref110', '2024-01-04 20:03:13'),
(110, 'ref111', '2024-01-04 20:03:17'),
(111, 'ref112', '2024-01-04 20:03:21'),
(112, 'ref113', '2024-01-04 20:03:25'),
(113, 'ref114', '2024-01-04 20:03:28'),
(114, 'ref115', '2024-01-04 20:03:32'),
(115, 'ref116', '2024-01-04 20:03:35'),
(116, 'ref117', '2024-01-04 20:03:39'),
(117, 'ref118', '2024-01-04 20:03:42'),
(118, 'ref119', '2024-01-04 20:03:46'),
(119, 'ref120', '2024-01-04 20:03:49'),
(120, 'ref121', '2024-01-04 20:03:55'),
(121, 'ref122', '2024-01-04 20:04:32'),
(122, 'ref123', '2024-01-04 20:04:35'),
(123, 'ref124', '2024-01-04 20:04:40'),
(124, 'ref125', '2024-01-04 20:04:43'),
(125, 'ref126', '2024-01-04 20:04:47'),
(126, 'ref127', '2024-01-04 20:04:50'),
(127, 'ref128', '2024-01-04 20:04:54'),
(128, 'ref129', '2024-01-04 20:04:58'),
(129, 'ref130', '2024-01-04 20:08:13'),
(130, 'ref131', '2024-01-04 20:08:16'),
(131, 'ref132', '2024-01-04 20:08:20'),
(132, 'ref133', '2024-01-04 20:08:23'),
(133, 'ref134', '2024-01-04 20:08:26'),
(134, 'ref135', '2024-01-04 20:08:30'),
(135, 'ref136', '2024-01-04 20:08:33'),
(136, 'ref137', '2024-01-04 20:08:37'),
(137, 'ref138', '2024-01-04 20:08:40'),
(138, 'ref139', '2024-01-04 20:08:43'),
(139, 'ref140', '2024-01-04 20:08:46'),
(140, 'ref141', '2024-01-04 20:08:50'),
(141, 'ref142', '2024-01-04 20:08:54'),
(142, 'ref143', '2024-01-04 20:08:57'),
(143, 'ref144', '2024-01-04 20:09:01'),
(144, 'ref145', '2024-01-04 20:09:04'),
(145, 'ref146', '2024-01-04 20:09:08'),
(146, 'ref147', '2024-01-04 20:09:11'),
(147, 'ref148', '2024-01-04 20:09:15'),
(148, 'ref149', '2024-01-04 20:09:18'),
(149, 'ref150', '2024-01-04 20:09:22'),
(150, 'ref151', '2024-01-04 20:09:27'),
(151, 'ref152', '2024-01-04 20:09:30'),
(152, 'ref153', '2024-01-04 20:09:33'),
(153, 'ref154', '2024-01-04 20:09:37'),
(154, 'ref155', '2024-01-04 20:09:40');

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
('CourierID0', 1, 'Altes', 'Bryan Ken', 'Sayson', 'Angono Rizal', 'bryanken01230@gmail.com', '09158350780');

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
(1, 'ref2', '1'),
(2, 'ref3', '1'),
(3, 'ref18', '1'),
(4, 'ref17', '1'),
(5, 'ref16', '1'),
(6, 'ref15', '1'),
(7, 'ref14', '1'),
(8, 'ref13', '1'),
(9, 'ref12', '1'),
(10, 'ref11', '1'),
(11, 'ref10', '1'),
(12, 'ref9', '1'),
(13, 'ref8', '1'),
(14, 'ref7', '1'),
(15, 'ref6', '1'),
(16, 'ref5', '1'),
(17, 'ref4', '1'),
(18, 'ref19', '1'),
(19, 'ref20', '1'),
(20, 'ref21', '1'),
(21, 'ref22', '1'),
(22, 'ref23', '1'),
(23, 'ref24', '1'),
(24, 'ref25', '1'),
(25, 'ref26', '1'),
(26, 'ref27', '1'),
(27, 'ref28', '1'),
(28, 'ref29', '1'),
(29, 'ref30', '1'),
(30, 'ref31', '1'),
(31, 'ref32', '1'),
(32, 'ref33', '1'),
(33, 'ref34', '1'),
(34, 'ref35', '1'),
(35, 'ref36', '1'),
(36, 'ref37', '1'),
(37, 'ref38', '1'),
(38, 'ref39', '1'),
(39, 'ref40', '1'),
(40, 'ref41', '1'),
(41, 'ref42', '1'),
(42, 'ref43', '1'),
(43, 'ref44', '1'),
(44, 'ref45', '1'),
(45, 'ref46', '1'),
(46, 'ref47', '1'),
(47, 'ref48', '1'),
(48, 'ref49', '1'),
(49, 'ref50', '1'),
(50, 'ref51', '1'),
(51, 'ref52', '1'),
(52, 'ref53', '1'),
(53, 'ref54', '1'),
(54, 'ref55', '1'),
(55, 'ref56', '1'),
(56, 'ref57', '1'),
(57, 'ref58', '1'),
(58, 'ref59', '1'),
(59, 'ref60', '1'),
(60, 'ref61', '1'),
(61, 'ref62', '1'),
(62, 'ref63', '1'),
(63, 'ref64', '1'),
(64, 'ref65', '1'),
(65, 'ref66', '1'),
(66, 'ref67', '1'),
(67, 'ref68', '1'),
(68, 'ref69', '1'),
(69, 'ref70', '1'),
(70, 'ref71', '1'),
(71, 'ref72', '1'),
(72, 'ref73', '1'),
(73, 'ref74', '1'),
(74, 'ref75', '1'),
(75, 'ref76', '1'),
(76, 'ref77', '1'),
(77, 'ref78', '1'),
(78, 'ref79', '1'),
(79, 'ref80', '1'),
(80, 'ref81', '1'),
(81, 'ref82', '1'),
(82, 'ref83', '1'),
(83, 'ref84', '1'),
(84, 'ref85', '1'),
(85, 'ref86', '1'),
(86, 'ref87', '1'),
(87, 'ref88', '1'),
(88, 'ref89', '1'),
(89, 'ref90', '1'),
(90, 'ref91', '1'),
(91, 'ref92', '1'),
(92, 'ref93', '1'),
(93, 'ref94', '1'),
(94, 'ref95', '1'),
(95, 'ref96', '1'),
(96, 'ref97', '1'),
(97, 'ref98', '1'),
(98, 'ref99', '1'),
(99, 'ref100', '1'),
(100, 'ref101', '1'),
(101, 'ref102', '1'),
(102, 'ref103', '1'),
(103, 'ref104', '1'),
(104, 'ref105', '1'),
(105, 'ref106', '1'),
(106, 'ref107', '1'),
(107, 'ref108', '1'),
(108, 'ref109', '1'),
(109, 'ref110', '1'),
(110, 'ref111', '1'),
(111, 'ref112', '1'),
(112, 'ref113', '1'),
(113, 'ref114', '1'),
(114, 'ref115', '1'),
(115, 'ref116', '1'),
(116, 'ref117', '1'),
(117, 'ref118', '1'),
(118, 'ref119', '1'),
(119, 'ref120', '1'),
(120, 'ref121', '1'),
(121, 'ref122', '1'),
(122, 'ref123', '1'),
(123, 'ref124', '1'),
(124, 'ref125', '1'),
(125, 'ref126', '1'),
(126, 'ref127', '1'),
(127, 'ref128', '1'),
(128, 'ref129', '1'),
(129, 'ref130', '1'),
(130, 'ref131', '1'),
(131, 'ref132', '1'),
(132, 'ref133', '1'),
(133, 'ref134', '1'),
(134, 'ref135', '1'),
(135, 'ref136', '1'),
(136, 'ref137', '1'),
(137, 'ref138', '1'),
(138, 'ref139', '1'),
(139, 'ref140', '1'),
(140, 'ref141', '1'),
(141, 'ref142', '1'),
(142, 'ref143', '1'),
(143, 'ref144', '1'),
(144, 'ref145', '1'),
(145, 'ref146', '1'),
(146, 'ref147', '1'),
(147, 'ref148', '1'),
(148, 'ref149', '1'),
(149, 'ref150', '1'),
(150, 'ref151', '1'),
(151, 'ref152', '1'),
(152, 'ref153', '1'),
(153, 'ref154', '1'),
(154, 'ref155', '1');

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
(1, 'ref1', '2023-12-27 11:40:07', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', NULL);

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
(2, 'ref2', '2024-01-01 20:12:42', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(3, 'ref3', '2024-01-01 20:13:06', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 100),
(4, 'ref4', '2024-01-01 22:21:24', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(5, 'ref5', '2024-01-01 22:22:04', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(6, 'ref6', '2024-01-01 22:23:57', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(7, 'ref7', '2024-01-01 22:24:50', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(8, 'ref8', '2024-01-01 22:25:45', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(9, 'ref9', '2024-01-01 22:26:22', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(10, 'ref10', '2024-01-01 22:27:01', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(11, 'ref11', '2024-01-01 22:27:25', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(12, 'ref12', '2024-01-01 22:27:53', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(13, 'ref13', '2024-01-02 20:51:52', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 100),
(14, 'ref14', '2024-01-02 20:51:52', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 100),
(15, 'ref15', '2024-01-02 20:52:22', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 100),
(16, 'ref16', '2024-01-02 20:54:32', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 100),
(17, 'ref17', '2024-01-02 20:55:01', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 100),
(18, 'ref18', '2024-01-02 20:55:38', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 100),
(19, 'ref19', '2024-01-02 21:23:48', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 100),
(20, 'ref20', '2024-01-03 10:15:18', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(21, 'ref21', '2024-01-03 10:17:26', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(22, 'ref22', '2024-01-03 10:21:52', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(23, 'ref23', '2024-01-03 10:22:56', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(24, 'ref24', '2024-01-03 10:24:28', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(25, 'ref25', '2024-01-03 10:25:51', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(26, 'ref26', '2024-01-03 10:35:26', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(27, 'ref27', '2024-01-03 10:36:23', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(28, 'ref28', '2024-01-03 10:38:35', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(29, 'ref29', '2024-01-03 10:39:06', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(30, 'ref30', '2024-01-03 11:28:08', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(31, 'ref31', '2024-01-03 11:33:26', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(32, 'ref32', '2024-01-03 11:34:20', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(33, 'ref33', '2024-01-03 11:46:12', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(34, 'ref34', '2024-01-03 11:46:50', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(35, 'ref35', '2024-01-03 11:47:29', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(36, 'ref36', '2024-01-03 11:52:02', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(37, 'ref37', '2024-01-03 12:02:17', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(38, 'ref38', '2024-01-03 12:08:20', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(39, 'ref39', '2024-01-03 12:09:19', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(40, 'ref40', '2024-01-03 12:10:01', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(41, 'ref41', '2024-01-03 14:51:55', 'bryanken01230#508', 'Del Rosario st. Brgy Kalayaan Kalayaan Angono, Rizal', 2147483647, 'bryanken01230RENAME@gmail.com', 100),
(42, 'ref42', '2024-01-03 20:04:38', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(43, 'ref43', '2024-01-03 20:07:44', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(44, 'ref44', '2024-01-03 20:13:33', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(45, 'ref45', '2024-01-03 20:43:08', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(46, 'ref46', '2024-01-03 20:44:52', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(47, 'ref47', '2024-01-03 20:45:30', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(48, 'ref48', '2024-01-03 20:46:24', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(49, 'ref49', '2024-01-03 20:48:24', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(50, 'ref50', '2024-01-03 20:49:38', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(51, 'ref51', '2024-01-03 20:50:03', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(52, 'ref52', '2024-01-03 20:50:47', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(53, 'ref53', '2024-01-03 20:51:14', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(54, 'ref54', '2024-01-03 20:52:51', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(55, 'ref55', '2024-01-03 20:53:18', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(56, 'ref56', '2024-01-03 20:54:29', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(57, 'ref57', '2024-01-03 20:56:21', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(58, 'ref58', '2024-01-03 21:14:15', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(59, 'ref59', '2024-01-03 21:15:51', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(60, 'ref60', '2024-01-03 21:17:18', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(61, 'ref61', '2024-01-03 21:19:08', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(62, 'ref62', '2024-01-03 21:20:49', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(63, 'ref63', '2024-01-03 21:23:15', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(64, 'ref64', '2024-01-03 21:25:12', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(65, 'ref65', '2024-01-03 21:25:57', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(66, 'ref66', '2024-01-03 21:27:51', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(67, 'ref67', '2024-01-03 21:28:08', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(68, 'ref68', '2024-01-03 21:29:06', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(69, 'ref69', '2024-01-03 21:29:54', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(70, 'ref70', '2024-01-03 21:31:18', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(71, 'ref71', '2024-01-03 21:32:52', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(72, 'ref72', '2024-01-03 21:33:36', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(73, 'ref73', '2024-01-03 21:35:47', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(74, 'ref74', '2024-01-03 21:39:58', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(75, 'ref75', '2024-01-03 21:42:34', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(76, 'ref76', '2024-01-03 21:43:35', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(77, 'ref77', '2024-01-03 21:45:56', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(78, 'ref78', '2024-01-03 21:46:48', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(79, 'ref79', '2024-01-03 21:47:56', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(80, 'ref80', '2024-01-03 21:49:33', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(81, 'ref81', '2024-01-03 21:49:37', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(82, 'ref82', '2024-01-03 21:50:50', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(83, 'ref83', '2024-01-03 21:51:19', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(84, 'ref84', '2024-01-03 21:53:08', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(85, 'ref85', '2024-01-03 21:53:34', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(86, 'ref86', '2024-01-03 21:53:40', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(87, 'ref87', '2024-01-03 21:54:27', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(88, 'ref88', '2024-01-03 21:54:59', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(89, 'ref89', '2024-01-03 21:55:46', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(90, 'ref90', '2024-01-03 21:57:11', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(91, 'ref91', '2024-01-03 21:57:47', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(92, 'ref92', '2024-01-03 21:58:27', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(93, 'ref93', '2024-01-03 21:59:04', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(94, 'ref94', '2024-01-03 21:59:27', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(95, 'ref95', '2024-01-03 21:59:48', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(96, 'ref96', '2024-01-03 22:00:27', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(97, 'ref97', '2024-01-03 22:01:07', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(98, 'ref98', '2024-01-03 22:01:40', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(99, 'ref99', '2024-01-03 22:02:10', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(100, 'ref100', '2024-01-03 22:02:31', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(101, 'ref101', '2024-01-03 22:03:06', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(102, 'ref102', '2024-01-03 22:03:37', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(103, 'ref103', '2024-01-03 22:03:58', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(104, 'ref104', '2024-01-03 22:04:36', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(105, 'ref105', '2024-01-03 22:05:36', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(106, 'ref106', '2024-01-03 22:05:40', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(107, 'ref107', '2024-01-03 22:06:08', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(108, 'ref108', '2024-01-03 22:06:32', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(109, 'ref109', '2024-01-03 22:06:54', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(110, 'ref110', '2024-01-03 22:08:05', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(111, 'ref111', '2024-01-03 22:08:25', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(112, 'ref112', '2024-01-03 22:09:11', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(113, 'ref113', '2024-01-03 22:10:00', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(114, 'ref114', '2024-01-03 22:10:33', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(115, 'ref115', '2024-01-03 22:10:59', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(116, 'ref116', '2024-01-03 22:12:03', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(117, 'ref117', '2024-01-03 22:12:47', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(118, 'ref118', '2024-01-03 22:12:48', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(119, 'ref119', '2024-01-03 22:13:16', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(120, 'ref120', '2024-01-03 22:13:22', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(121, 'ref121', '2024-01-03 22:13:48', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(122, 'ref122', '2024-01-03 22:14:23', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(123, 'ref123', '2024-01-03 22:14:58', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(124, 'ref124', '2024-01-03 22:15:51', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(125, 'ref125', '2024-01-03 22:16:18', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(126, 'ref126', '2024-01-03 22:16:38', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(127, 'ref127', '2024-01-03 22:17:01', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(128, 'ref128', '2024-01-03 22:17:24', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(129, 'ref129', '2024-01-03 22:18:33', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(130, 'ref130', '2024-01-03 22:19:26', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(131, 'ref131', '2024-01-03 22:19:49', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(132, 'ref132', '2024-01-03 22:20:11', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(133, 'ref133', '2024-01-03 22:20:47', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(134, 'ref134', '2024-01-03 22:21:25', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(135, 'ref135', '2024-01-03 22:22:25', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(136, 'ref136', '2024-01-03 22:23:04', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(137, 'ref137', '2024-01-03 22:23:08', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(138, 'ref138', '2024-01-03 22:32:59', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(139, 'ref139', '2024-01-03 22:37:06', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(140, 'ref140', '2024-01-03 22:39:42', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(141, 'ref141', '2024-01-03 22:40:24', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(142, 'ref142', '2024-01-03 22:40:52', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(143, 'ref143', '2024-01-03 22:41:20', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(144, 'ref144', '2024-01-03 22:41:48', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(145, 'ref145', '2024-01-03 22:42:26', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(146, 'ref146', '2024-01-03 22:43:27', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(147, 'ref147', '2024-01-03 22:43:48', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(148, 'ref148', '2024-01-03 22:44:33', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(149, 'ref149', '2024-01-03 22:45:01', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(150, 'ref150', '2024-01-03 22:45:11', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(151, 'ref151', '2024-01-03 22:45:38', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(152, 'ref152', '2024-01-03 22:46:32', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(153, 'ref153', '2024-01-03 22:47:03', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100),
(154, 'ref154', '2024-01-03 22:47:10', 'miguelbesa249#321', 'purok 1, Abnai, Lupang Arenda Santa Ana Taytay, Rizal', 2147483647, 'miguelbesa249RENAME@gmail.com', 100),
(155, 'ref155', '2024-01-03 22:47:33', 'ravenberenguila#536', 'luklukan Bilibiran Binangonan, Rizal', 2147483647, 'ravenberenguilaRENAME@gmail.com', 100);

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
('ref2', 'Gel Toner', '60ml', 1, 100),
('ref2', 'Facial Wash', '80ml', 1, 50),
('ref2', 'Serum', '5g', 1, 40),
('ref3', 'Isopropyl Alcohol', '60ml', 1, 40),
('ref4', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref4', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref5', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref5', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref6', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref6', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref7', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref7', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref8', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref8', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref9', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref9', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref10', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref10', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref11', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref11', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref12', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref12', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref13', 'Kojic Rejuvinating Soap', '110g', 88, 40),
('ref13', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref14', 'Kojic Rejuvinating Soap', '110g', 88, 40),
('ref14', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref15', 'Kojic Rejuvinating Soap', '110g', 89, 40),
('ref15', 'Isopropyl Alcohol', '1 Liter', 82, 50),
('ref16', 'Kojic Rejuvinating Soap', '110g', 98, 40),
('ref16', 'Isopropyl Alcohol', '1 Liter', 120, 50),
('ref17', 'Kojic Rejuvinating Soap', '110g', 89, 40),
('ref17', 'Isopropyl Alcohol', '1 Liter', 123, 50),
('ref18', 'Kojic Rejuvinating Soap', '110g', 94, 40),
('ref18', 'Isopropyl Alcohol', '1 Liter', 118, 50),
('ref19', 'Kojic Rejuvinating Soap', '110g', 81, 40),
('ref19', 'Isopropyl Alcohol', '1 Liter', 128, 50),
('ref20', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref20', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref21', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref21', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref22', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref22', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref23', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref23', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref24', 'Kojic Rejuvinating Soap', '110g', 85, 40),
('ref24', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref25', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref25', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref26', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref26', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref27', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref27', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref28', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref28', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref29', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref29', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref30', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref30', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref31', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref31', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref32', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref32', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref33', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref33', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref34', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref34', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref35', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref35', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref36', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref36', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref37', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref37', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref38', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref38', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref39', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref39', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref40', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref40', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref41', 'Kojic Rejuvinating Soap', '110g', 89, 40),
('ref41', 'Isopropyl Alcohol', '1 Liter', 130, 50),
('ref42', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref42', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref43', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref43', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref44', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref44', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref45', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref45', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref46', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref46', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref47', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref47', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref48', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref48', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref49', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref49', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref50', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref50', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref51', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref51', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref52', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref52', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref53', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref53', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref54', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref54', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref55', 'Kojic Rejuvinating Soap', '110g', 85, 40),
('ref55', 'Isopropyl Alcohol', '1 Liter', 97, 50),
('ref56', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref56', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref57', 'Kojic Rejuvinating Soap', '110g', 85, 40),
('ref57', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref58', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref58', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref59', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref59', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref60', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref60', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref61', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref61', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref62', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref62', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref63', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref63', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref64', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref64', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref65', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref65', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref66', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref66', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref67', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref67', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref68', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref68', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref69', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref69', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref70', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref70', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref71', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref71', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref72', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref72', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref73', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref73', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref74', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref74', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref75', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref75', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref76', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref76', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref77', 'Kojic Rejuvinating Soap', '110g', 95, 40),
('ref77', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref78', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref78', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref79', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref79', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref80', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref80', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref81', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref81', 'Isopropyl Alcohol', '1 Liter', 89, 50),
('ref82', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref82', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref83', 'Kojic Rejuvinating Soap', '110g', 95, 40),
('ref83', 'Isopropyl Alcohol', '1 Liter', 85, 50),
('ref84', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref84', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref85', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref85', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref86', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref86', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref87', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref87', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref88', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref88', 'Isopropyl Alcohol', '1 Liter', 85, 50),
('ref89', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref89', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref90', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref90', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref91', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref91', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref92', 'Kojic Rejuvinating Soap', '110g', 1, 40),
('ref92', 'Isopropyl Alcohol', '1 Liter', 1, 50),
('ref93', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref93', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref94', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref94', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref95', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref95', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref96', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref96', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref97', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref97', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref98', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref98', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref99', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref99', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref100', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref100', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref101', 'Kojic Rejuvinating Soap', '110g', 88, 40),
('ref101', 'Isopropyl Alcohol', '1 Liter', 98, 50),
('ref102', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref102', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref103', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref103', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref104', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref104', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref105', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref105', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref106', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref106', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref107', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref107', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref108', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref108', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref109', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref109', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref110', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref110', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref111', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref111', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref112', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref112', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref113', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref113', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref114', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref114', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref115', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref115', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref116', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref116', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref117', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref117', 'Isopropyl Alcohol', '1 Liter', 70, 50),
('ref118', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref118', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref119', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref119', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref120', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref120', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref121', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref121', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref122', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref122', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref123', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref123', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref124', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref124', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref125', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref125', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref126', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref126', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref127', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref127', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref128', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref128', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref129', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref129', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref130', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref130', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref131', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref131', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref132', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref132', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref133', 'Kojic Rejuvinating Soap', '110g', 95, 40),
('ref133', 'Isopropyl Alcohol', '1 Liter', 95, 50),
('ref134', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref134', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref135', 'Kojic Rejuvinating Soap', '110g', 98, 40),
('ref135', 'Isopropyl Alcohol', '1 Liter', 81, 50),
('ref136', 'Kojic Rejuvinating Soap', '110g', 87, 40),
('ref136', 'Isopropyl Alcohol', '1 Liter', 98, 50),
('ref137', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref137', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref138', 'Kojic Rejuvinating Soap', '110g', 85, 40),
('ref138', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref139', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref139', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref140', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref140', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref141', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref141', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref142', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref142', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref143', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref143', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref144', 'Kojic Rejuvinating Soap', '110g', 80, 40),
('ref144', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref145', 'Kojic Rejuvinating Soap', '110g', 95, 40),
('ref145', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref146', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref146', 'Isopropyl Alcohol', '1 Liter', 86, 50),
('ref147', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref147', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref148', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref148', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref149', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref149', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref150', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref150', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref151', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref151', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref152', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref152', 'Isopropyl Alcohol', '1 Liter', 100, 50),
('ref153', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref153', 'Isopropyl Alcohol', '1 Liter', 80, 50),
('ref154', 'Kojic Rejuvinating Soap', '110g', 100, 40),
('ref154', 'Isopropyl Alcohol', '1 Liter', 90, 50),
('ref155', 'Kojic Rejuvinating Soap', '110g', 90, 40),
('ref155', 'Isopropyl Alcohol', '1 Liter', 90, 50);

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
(1, 'ref1', 'Gel Toner', '60ml', 1, 100, 'Added');

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
('ref1', 'Expired'),
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
('ref12', 'Completed'),
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
('ref13', 'Completed'),
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
('ref16', 'Completed'),
('ref17', 'Completed'),
('ref18', 'Completed'),
('ref19', 'Completed'),
('ref2', 'Completed'),
('ref20', 'Completed'),
('ref21', 'Completed'),
('ref22', 'Completed'),
('ref23', 'Completed'),
('ref24', 'Completed'),
('ref25', 'Completed'),
('ref26', 'Completed'),
('ref27', 'Completed'),
('ref28', 'Completed'),
('ref29', 'Completed'),
('ref3', 'Completed'),
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
('ref4', 'Completed'),
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
('ref5', 'Completed'),
('ref50', 'Completed'),
('ref51', 'Completed'),
('ref52', 'Completed'),
('ref53', 'Completed'),
('ref54', 'Completed'),
('ref55', 'Completed'),
('ref56', 'Completed'),
('ref57', 'Completed'),
('ref58', 'Completed'),
('ref59', 'Completed'),
('ref6', 'Completed'),
('ref60', 'Completed'),
('ref61', 'Completed'),
('ref62', 'Completed'),
('ref63', 'Completed'),
('ref64', 'Completed'),
('ref65', 'Completed'),
('ref66', 'Completed'),
('ref67', 'Completed'),
('ref68', 'Completed'),
('ref69', 'Completed'),
('ref7', 'Completed'),
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
('ref88', 'Completed'),
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

-- --------------------------------------------------------

--
-- Table structure for table `tblprocedurestorage`
--

CREATE TABLE `tblprocedurestorage` (
  `procedureID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(1, 'age-eraser-soap.png', 'Age Eraser Soap', 100, '135g', 100000, 80, 'Soap', 'The best ingredients in nature are blended in this unique anti-ageing black beauty soap. You now have the power to renew your skin and make younger, whiter and fresher. With micro beads that gently exfoliate and remove dead skin cells.'),
(2, '', 'Glutamansi Soap', 50, '50g', 100000, 75, 'Soap', 'Whitening, Moisturizing, Skin Clarifying, Exfoliating, Micro-peeling, Deodorizing'),
(3, 'alcohol.png', 'Kojic Rejuvinating Soap', 70, '135g', 100000, 80, 'Soap', NULL),
(4, 'frejuv.png', 'Bleaching Soap', 25, '70g', 100000, 0, 'Soap', NULL),
(5, 'glow-set.png', 'Revitalize Whitening Beauty Bar', 90, '135g', 100000, 12, 'Soap', NULL),
(6, '', 'Snail Max White Lotion', 50, '250ml', 100000, 200, 'Lotion', ''),
(7, 'glutamansi-lotion.png', 'Glutamansi Lotion', 70, '250ml', 100000, 0, 'Lotion', 'Achieve that rosy skin and radiant glow with this non-sticky premium lotion. Made with effective natural ingredients such as glutathione, calamansi extract, baking soda, shea butter, kojic acid,  glycolic, moisturize and hydrate your skin fast while keeping it soft, smooth, form and young-looking.'),
(8, 'alcohol.png', 'Bleaching Lotion', 40, '250ml', 100000, 0, 'Lotion', NULL),
(9, 'frejuv.png', 'Gluta White Lotion', 100, '250ml', 100000, 0, 'Lotion', NULL),
(10, 'age-eraser-soap.png', 'Kojic Rejuvinating Soap', 40, '110g', 85710, 14291, 'Alcohol', NULL),
(11, 'sunblock-rejuv.png', 'Sunblock', 90, '10g', 100000, 1, 'Rejuvenating', NULL),
(12, 'cream-rejuv.png', 'Bright Cream', 150, '10g', 100000, 0, 'Rejuvenating', NULL),
(13, 'frejuv.png', 'Toner', 125, '60ml', 100000, 0, 'Rejuvenating', NULL),
(14, 'rejuv-set.png', 'Rejuvenating Set', 250, 'Kojic Soap, Sunblock, Night Cream, Toner', 100000, 0, 'Rejuvenating', 'Improves skin texture+Removes dead skin cell+Improves skin barriers+Reduce fine lines and wrinkles+Increase skin moisture results to healthy glowing skin'),
(15, 'gel-toner-radiantGlow.png', 'Gel Toner', 100, '60ml', 100000, 27, 'Glass Skin', NULL),
(16, 'facialwash-radiantGlow.png', 'Facial Wash', 50, '80ml', 100000, 8, 'Glass Skin', NULL),
(17, 'alcohol.png', 'Serum', 40, '5g', 100000, 6, 'Glass Skin', NULL),
(18, 'sunblock-radiantGlow.png', 'Sun Block', 90, '10g', 100000, 6, 'Glass Skin', NULL),
(19, 'glow-set.png', 'Radiant Glow Facial Set', 350, 'Gel Toner, Facial Wash, Serum, Sunblock', 100000, 3, 'Glass Skin', 'Young looking, fair smooth, firm and perfect glass skin is finally within your reach.'),
(20, 'alcohol.png', 'Isopropyl Alcohol', 50, '1 Liter', 85760, 35515, 'Alcohol', NULL);

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

--
-- Dumping data for table `tblproductsarchive`
--

INSERT INTO `tblproductsarchive` (`prodID`, `prodImg`, `prodName`, `prodPrice`, `prodVolume`, `Quantity`, `Sold`, `prodCategory`, `Description`, `Ingredients`, `Howtouse`) VALUES
(21, 'alcohol.png', 'Isopropyl Alcohol', 40, '60ml', 100000, 101, 'Alcohol', NULL, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `tblreturnstatus`
--

CREATE TABLE `tblreturnstatus` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `deliveryID` (`deliveryID`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `audittrailproduction`
--
ALTER TABLE `audittrailproduction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `audittrailwarehouse`
--
ALTER TABLE `audittrailwarehouse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblaccount`
--
ALTER TABLE `tblaccount`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcancelledorder`
--
ALTER TABLE `tblcancelledorder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcartdata`
--
ALTER TABLE `tblcartdata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `tblconfirmationproduct`
--
ALTER TABLE `tblconfirmationproduct`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblconfirmationproductRebranding`
--
ALTER TABLE `tblconfirmationproductRebranding`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblconfirmationtracking`
--
ALTER TABLE `tblconfirmationtracking`
  MODIFY `TrackingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcourierdelivery`
--
ALTER TABLE `tblcourierdelivery`
  MODIFY `deliveryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tblcourierdeliverycompleted`
--
ALTER TABLE `tblcourierdeliverycompleted`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tblcourierdeliverydate`
--
ALTER TABLE `tblcourierdeliverydate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tblcourierinformation`
--
ALTER TABLE `tblcourierinformation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcurrentmonth`
--
ALTER TABLE `tblcurrentmonth`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcurrentmonthPackaging`
--
ALTER TABLE `tblcurrentmonthPackaging`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmonthlysummary`
--
ALTER TABLE `tblmonthlysummary`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblorderapproved`
--
ALTER TABLE `tblorderapproved`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tblordercheckout`
--
ALTER TABLE `tblordercheckout`
  MODIFY `OrderNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `tblordercheckoutdataarchive`
--
ALTER TABLE `tblordercheckoutdataarchive`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblorderexpirationtime`
--
ALTER TABLE `tblorderexpirationtime`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `tblpreregistration`
--
ALTER TABLE `tblpreregistration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprocedurestorage`
--
ALTER TABLE `tblprocedurestorage`
  MODIFY `procedureID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreturnproduct`
--
ALTER TABLE `tblreturnproduct`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreturnstatus`
--
ALTER TABLE `tblreturnstatus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
