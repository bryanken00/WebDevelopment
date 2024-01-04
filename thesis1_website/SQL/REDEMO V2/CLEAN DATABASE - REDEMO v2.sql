-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 27, 2023 at 11:41 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `tblcourierdeliverycompleted`
--

CREATE TABLE `tblcourierdeliverycompleted` (
  `ID` int(11) NOT NULL,
  `deliveryID` int(11) NOT NULL,
  `DeliveryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcourierdeliverydate`
--

CREATE TABLE `tblcourierdeliverydate` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `DeliveryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'ref1', '2023-12-27 11:40:07', 'admin#253', 'Alias dignissimos il Pao San Pablo, Zamboanga Del Sur', 2147483647, 'xyzy@mailinator.com', 0);

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
('ref1', 'Gel Toner', '60ml', 1, 100);

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

-- --------------------------------------------------------

--
-- Table structure for table `tblorderexpirationtime`
--

CREATE TABLE `tblorderexpirationtime` (
  `ID` int(11) NOT NULL,
  `OrderRefNumber` varchar(100) NOT NULL,
  `Expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorderexpirationtime`
--

INSERT INTO `tblorderexpirationtime` (`ID`, `OrderRefNumber`, `Expiration`) VALUES
(1, 'ref1', '2024-01-01 03:40:14');

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
('ref1', 'toPay');

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
(15, 'gel-toner-radiantGlow.png', 'Gel Toner', 100, '60ml', 10073, 27, 'Glass Skin', NULL),
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audittrailproduction`
--
ALTER TABLE `audittrailproduction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcartdata`
--
ALTER TABLE `tblcartdata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `deliveryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcourierdeliverycompleted`
--
ALTER TABLE `tblcourierdeliverycompleted`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcourierdeliverydate`
--
ALTER TABLE `tblcourierdeliverydate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcourierinformation`
--
ALTER TABLE `tblcourierinformation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblordercheckout`
--
ALTER TABLE `tblordercheckout`
  MODIFY `OrderNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblordercheckoutdataarchive`
--
ALTER TABLE `tblordercheckoutdataarchive`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblorderexpirationtime`
--
ALTER TABLE `tblorderexpirationtime`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
