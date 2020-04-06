-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2020 at 01:20 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wtproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `UID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Contact` int(10) NOT NULL,
  `Address` text NOT NULL,
  `Age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `IID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Gender` varchar(25) DEFAULT NULL,
  `Image` varchar(100) NOT NULL,
  `Price` double NOT NULL,
  `Category` varchar(100) NOT NULL,
  `SubCategory` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`IID`, `Name`, `Description`, `Gender`, `Image`, `Price`, `Category`, `SubCategory`) VALUES
(1, 'Fitness-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Fitness-Polo-T-Shirt---Black.jpg', 2099, 'Tshirts', 'Black'),
(2, 'Fitness-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Fitness-Polo-T-Shirt---White.jpg', 1199, 'Tshirts', 'White'),
(3, 'Golf', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Golf-T-Shirt---Blue.jpg', 1599, 'Tshirts', 'Blue'),
(4, 'Striped-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Striped-White-Polo-T-Shirt.jpg', 2541, 'Tshirts', 'White'),
(5, 'Full-Sleeve-Polo', 'Duke', 'M', 'images/M/Tshirts/Duke-Black-Full-Sleeve-Polo-T-Shirt.jpg', 3001, 'Tshirts', 'Black'),
(6, 'Full-Sleeve-Polo', 'Duke', 'M', 'images/M/Tshirts/Duke-Blue-Full-Sleeve-Polo-T-Shirt.jpg', 3099, 'Tshirts', 'Blue'),
(7, 'Polo', 'Lee', 'M', 'images/M/Tshirts/Lee-Green-Polo-T-Shirt.jpg', 999, 'Tshirts', 'Green'),
(8, 'Polo', 'Lee', 'M', 'images/M/Tshirts/Lee-White-Polo-T-Shirt.jpg', 1099, 'Tshirts', 'White'),
(9, 'Round-Neck', 'Levis', 'M', 'images/M/Tshirts/Levi27s-Black-Round-Neck-T-Shirt.jpg', 2599, 'Tshirts', 'Black'),
(10, 'Polo', 'Levis', 'M', 'images/M/Tshirts/Levi27s-Blue-Polo-T-Shirt.jpg', 2099, 'Tshirts', 'Blue'),
(11, 'Polo', 'Levis', 'M', 'images/M/Tshirts/Levi27s-Blue-Polo-T-Shirt1.jpg', 1899, 'Tshirts', 'Blue'),
(12, 'Round neck', 'Levis', 'M', 'images/M/Tshirts/Levi27s-Blue-T-Shirts.jpg', 1888, 'Tshirts', 'Blue'),
(13, 'Off', 'Levis', 'M', 'images/M/Tshirts/Levi27s-Off-White-T-Shirts.jpg', 1599, 'Tshirts', 'White'),
(14, 'Polo', 'Spykar', 'M', 'images/M/Tshirts/Spykar-Blue-Polo-T-Shirt.jpg', 1949, 'Tshirts', 'Blue'),
(15, 'Round-Neck', 'Spykar', 'M', 'images/M/Tshirts/Spykar-Blue-Round-Neck-T-Shirt.jpg', 2049, 'Tshirts', 'Blue'),
(17, 'Round-Neck', 'Spykar', 'M', 'images/M/Tshirts/Spykar-Off-White-Round-Neck-T-Shirt.jpg', 1599, 'Tshirts', 'White'),
(18, 'Regular-Fit--Milange-Polo', 'Spykar', 'M', 'images/M/Tshirts/Spykar-Regular-Fit-Grey-Milange-Polo-Tshirts.jpg', 2999, 'Tshirts', 'Grey'),
(19, 'Short-Sleeve-Stripes--Polo', 'Spykar', 'M', 'images/M/Tshirts/Spykar-Short-Sleeve-Stripes-White-Polo-Tshirts.jpg', 1515, 'Tshirts', 'White'),
(20, 'Fitness-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Fitness-Polo-T-Shirt---Black.jpg', 2099, 'Tshirts', 'Black'),
(21, 'Fitness-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Fitness-Polo-T-Shirt---White.jpg', 1199, 'Tshirts', 'White'),
(22, 'Golf', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Golf-T-Shirt---Blue.jpg', 1599, 'Tshirts', 'Blue'),
(23, 'Striped-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Striped-White-Polo-T-Shirt.jpg', 2541, 'Tshirts', 'White'),
(24, 'Full-Sleeve-Polo', 'Duke', 'M', 'images/M/Tshirts/Duke-Black-Full-Sleeve-Polo-T-Shirt.jpg', 3001, 'Tshirts', 'Black'),
(25, 'Full-Sleeve-Polo', 'Duke', 'M', 'images/M/Tshirts/Duke-Blue-Full-Sleeve-Polo-T-Shirt.jpg', 3099, 'Tshirts', 'Blue'),
(26, 'Polo', 'Lee', 'M', 'images/M/Tshirts/Lee-Green-Polo-T-Shirt.jpg', 999, 'Tshirts', 'Green'),
(27, 'Fitness-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Fitness-Polo-T-Shirt---Black.jpg', 2099, 'Tshirts', 'Black'),
(28, 'Fitness-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Fitness-Polo-T-Shirt---White.jpg', 1199, 'Tshirts', 'White'),
(29, 'Golf', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Golf-T-Shirt---Blue.jpg', 1599, 'Tshirts', 'Blue'),
(30, 'Striped-Polo', 'Adidas', 'M', 'images/M/Tshirts/Adidas-Striped-White-Polo-T-Shirt.jpg', 2541, 'Tshirts', 'White'),
(31, 'Full-Sleeve-Polo', 'Duke', 'M', 'images/M/Tshirts/Duke-Black-Full-Sleeve-Polo-T-Shirt.jpg', 3001, 'Tshirts', 'Black'),
(32, 'Full-Sleeve-Polo', 'Duke', 'M', 'images/M/Tshirts/Duke-Blue-Full-Sleeve-Polo-T-Shirt.jpg', 3099, 'Tshirts', 'Blue'),
(33, 'Polo', 'Lee', 'M', 'images/M/Tshirts/Lee-Green-Polo-T-Shirt.jpg', 999, 'Tshirts', 'Green'),
(34, 'Arrow_tshirt01', 'Arrow', 'M', 'images/M/Tshirts/a.jpg', 799, 'Tshirts', 'black'),
(35, 'lee_tshirt01', 'lee', 'M', 'images/M/Tshirts/b.jpg', 699, 'Tshirts', 'red'),
(36, 'van heusen01', 'Van Heusen', 'M', 'images/M/Tshirts/c.jpg', 750, 'Tshirts', 'min'),
(37, 'UCB_tshirt01', 'UCB', 'M', 'images/M/Tshirts/d.jpg', 999, 'Tshirts', 'black'),
(38, 'leecooper_tshirt0112', 'Lee copper', 'M', 'images/M/Tshirts/e.jpeg', 1099, 'Tshirts', 'black'),
(39, 'lee_tshirt0221', 'lee', 'M', 'images/M/Tshirts/f.jpg', 750, 'Tshirts', 'grey'),
(40, 'raymond0123', 'raymond', 'M', 'images/M/Tshirts/g.jpg', 850, 'Tshirts', 'black'),
(41, 'Arrow_tshirt025', 'Arrow', 'M', 'images/M/Tshirts/h.jpg', 950, 'Tshirts', 'black'),
(42, 'Arrow_tshirt033', 'Arrow', 'M', 'images/M/Tshirts/i.jpg', 800, 'Tshirts', 'blue'),
(43, 'leecopper_tshirt302', 'lee copper', 'M', 'images/M/Tshirts/j.jpg', 799, 'Tshirts', 'grey'),
(44, 'UCB_tshirt026', 'UCB', 'M', 'images/M/Tshirts/k.jpg', 699, 'Tshirts', 'blue'),
(45, 'Arrow_tshirt023', 'Arrow', 'M', 'images/M/Tshirts/l.jpg', 800, 'Tshirts', 'grey'),
(46, 'Arrow_tshirt011', 'Arrow', 'F', 'images/F/Tshirts/a.jpg', 799, 'Tshirts', 'white'),
(47, 'lee_tshirt0165', 'lee', 'F', 'images/F/Tshirts/b.jpg', 699, 'Tshirts', 'pink'),
(48, 'van heusen0123', 'Van Heusen', 'F', 'images/F/Tshirts/c.jpg', 750, 'Tshirts', 'black'),
(49, 'UCB_tshirt0111', 'UCB', 'F', 'images/F/Tshirts/d.jpg', 999, 'Tshirts', 'maroon'),
(50, 'leecooper_tshirt018', 'Lee copper', 'F', 'images/F/Tshirts/e.jpg', 1099, 'Tshirts', 'black'),
(51, 'lee_tshirt0290', 'lee', 'F', 'images/F/Tshirts/f.jpg', 750, 'Tshirts', 'black'),
(52, 'raymond0152', 'raymond', 'F', 'images/F/Tshirts/g.jpg', 850, 'Tshirts', 'white'),
(53, 'Arrow_tshirt9502', 'Arrow', 'F', 'images/F/Tshirts/h.jpg', 950, 'Tshirts', 'pink'),
(54, 'lee_tshirt025', 'lee copper', 'F', 'images/F/Tshirts/j.jpg', 799, 'Tshirts', 'blue'),
(55, 'leecopper_tshirt0252', 'lee copper', 'F', 'images/F/Tshirts/j.jpg', 799, 'Tshirts', 'red'),
(56, 'UCB_tshirt022', 'UCB', 'F', 'images/F/Tshirts/k.jpg', 699, 'Tshirts', 'orange'),
(57, 'Arrow_tshirt0451', 'Arrow', 'F', 'images/F/Jeans/a.jpg', 1799, 'Jeans', 'black'),
(58, 'lee_tshirt061', 'lee', 'F', 'images/F/Jeans/b.jpg', 1699, 'Jeans', 'black'),
(59, 'van heusen051', 'Van Heusen', 'F', 'images/F/Jeans/c.jpg', 1750, 'Jeans', 'black'),
(60, 'UCB_tshirt101', 'UCB', 'F', 'images/F/Jeans/d.jpg', 1999, 'Jeans', 'blue'),
(61, 'leecooper_tshirt0451', 'Lee copper', 'F', 'images/F/Jeans/e.jpg', 1499, 'Jeans', 'Dark blue'),
(62, 'lee_tshirt2302', 'lee', 'F', 'images/F/Jeans/f.jpg', 1750, 'Jeans', 'Dark blue'),
(63, 'raymond0444', 'raymond', 'F', 'images/F/Jeans/g.jpg', 1850, 'Jeans', 'white'),
(64, 'Arrow_tshirt02562', 'Arrow', 'F', 'images/F/Jeans/h.jpg', 1950, 'Jeans', 'black'),
(65, 'lee_tshirt2503', 'lee', 'F', 'images/F/Jeans/i.jpg', 1799, 'Jeans', 'black'),
(67, 'Arrow_tshirt0351', 'Arrow', 'M', 'images/M/Jeans/a.jpg', 1799, 'Jeans', 'dark blue'),
(68, 'lee_tshirt031', 'lee', 'M', 'images/M/Jeans/b.jpg', 1699, 'Jeans', 'dark blue'),
(69, 'van heusen054', 'Van Heusen', 'M', 'images/M/Jeans/c.jpg', 1750, 'Jeans', 'light blue'),
(70, 'UCB_tshirt1012', 'UCB', 'M', 'images/M/Jeans/d.jpg', 1999, 'Jeans', 'light blue'),
(71, 'leecooper_tshirt0351', 'black', 'M', 'images/M/Jeans/e.jpg', 2099, 'Jeans', 'black'),
(72, 'lee_tshirt232', 'lee', 'M', 'images/M/Jeans/f.jpg', 1750, 'Jeans', 'dark blue'),
(73, 'raymond0434', 'raymond', 'M', 'images/M/Jeans/g.jpg', 1850, 'Jeans', 'back'),
(74, 'Arrow_tshirt562', 'Arrow', 'M', 'images/M/Jeans/h.jpg', 1950, 'Jeans', 'light blue'),
(75, 'leecopper_tshirt02', 'lee', 'M', 'images/M/Jeans/i.jpg', 1799, 'Jeans', 'black'),
(76, 'leecopper_tshirt02', 'black', 'M', 'images/M/Jeans/j.jpg', 1799, 'Jeans', 'red'),
(77, 'UCB_tshirt60', 'UCB', 'M', 'images/M/Jeans/k.jpg', 1799, 'Jeans', 'light blue'),
(79, 'Arrow_shirt0452', 'Arrow', 'F', 'images/F/Shirts/a.jpg', 1799, 'Shirts', 'red'),
(80, 'lee_shirt062', 'lee', 'F', 'images/F/Shirts/b.jpg', 1699, 'Shirts', 'blue'),
(81, 'van heusen052', 'Van Heusen', 'F', 'images/F/Shirts/c.jpg', 1750, 'Shirts', 'pink'),
(82, 'UCB_shirt102', 'UCB', 'F', 'images/F/Shirts/d.jpg', 1999, 'Shirts', 'black'),
(83, 'leecooper_shirt0452', 'Lee copper', 'F', 'images/F/Shirts/e.jpg', 1499, 'Shirts', 'white'),
(84, 'lee_shirt230', 'lee', 'F', 'images/F/Shirts/f.jpg', 1750, 'Shirts', 'blue'),
(85, 'raymond0441', 'raymond', 'F', 'images/F/Shirts/g.jpg', 1850, 'Shirts', 'red'),
(86, 'Arrow_shirt02561', 'Arrow', 'F', 'images/F/Shirts/h.jpg', 1950, 'Shirts', 'white'),
(87, 'lee_shirt2501', 'lee', 'F', 'images/F/Shirts/i.jpg', 1699, 'Shirts', 'pink'),
(88, 'leecopper_shirt2303', 'leecopper', 'F', 'images/F/Shirts/j.jpg', 1750, 'Shirts', 'pink'),
(89, 'lee_shirt0623', 'lee', 'F', 'images/F/Shirts/k.jpg', 1699, 'Shirts', 'orange'),
(90, 'Arrow_shirt0352', 'Arrow', 'M', 'images/M/Shirts/a.jpg', 1799, 'Shirts', 'black'),
(91, 'lee_shirt032', 'lee', 'M', 'images/M/Shirts/b.jpg', 1699, 'Shirts', 'black'),
(92, 'van heusen053', 'Van Heusen', 'M', 'images/M/Shirts/c.jpg', 1750, 'Shirts', 'denim blue'),
(93, 'UCB_shirt1012', 'UCB', 'M', 'images/M/Shirts/d.jpg', 1999, 'Shirts', 'white'),
(94, 'leecooper_shirt351', 'lee cooper', 'M', 'images/M/Shirts/e.jpg', 2099, 'Shirts', 'red'),
(95, 'lee_shirt23', 'lee', 'M', 'images/M/Shirts/f.jpg', 1750, 'Shirts', 'white'),
(96, 'raymond043', 'raymond', 'M', 'images/M/Shirts/g.jpg', 1850, 'Shirts', 'brown'),
(97, 'Arrow_shirt52', 'Arrow', 'M', 'images/M/Shirts/h.jpg', 1950, 'Shirts', 'cream'),
(98, 'lee_shirt23', 'lee', 'M', 'images/M/Shirts/i.jpg', 1799, 'Shirts', 'light blue'),
(99, 'leecopper_shirt022', 'lee cooper', 'M', 'images/M/Shirts/j.jpg', 1799, 'Shirts', 'light blue'),
(100, 'UCB_shirt602', 'UCB', 'M', 'images/M/Shirts/k.jpg', 1799, 'Shirts', 'light blue'),
(101, 'UCB_shirt0452', 'UCB', 'F', 'images/F/Kids/a.jpg', 599, 'Shirts', 'white'),
(102, 'gini n jony_shirt062', 'gini n jony', 'F', 'images/F/Kids/b.jpg', 399, 'Shirts', 'white'),
(103, 'palmtree052', 'palm tree', 'F', 'images/F/Kids/c.jpg', 340, 'Shirts', 'white'),
(104, 'UCB_shirt102', 'UCB', 'F', 'images/F/Kids/d.jpg', 399, 'Shirts', 'red'),
(105, 'disney0452', 'disney', 'F', 'images/F/Kids/e.jpg', 499, 'Shirts', 'orange'),
(106, 'UCB_shirt045', 'UCB', 'F', 'images/F/Kids/a.jpg', 599, 'Shirts', 'pink'),
(107, 'gini n jony_shirt065', 'gini n jony', 'F', 'images/F/Kids/b.jpg', 399, 'Shirts', 'pink'),
(108, 'palmtree055', 'palm tree', 'F', 'images/F/Kids/c.jpg', 340, 'Shirts', 'pink'),
(109, 'UCB_shirt105', 'UCB', 'F', 'images/F/Kids/d.jpg', 399, 'Shirts', 'black'),
(110, 'disney0455', 'disney', 'F', 'images/F/Kids/e.jpg', 499, 'Shirts', 'black'),
(111, 'UCB_jeans047', 'UCB', 'F', 'images/F/Kids/a.jpg', 599, 'Kids', 'blue'),
(112, 'gini n jony_jeans067', 'gini n jony', 'F', 'images/F/Kids/b.jpg', 799, 'Kids', 'blue'),
(113, 'palmtree057', 'palm tree', 'F', 'images/F/Kids/c.jpg', 340, 'Kids', 'blue'),
(114, 'UCB_jeans107', 'UCB', 'F', 'images/F/Kids/d.jpg', 399, 'Kids', 'blue'),
(115, 'disney0457', 'disney', 'F', 'images/F/Kids/e.jpg', 499, 'Kids', 'blue'),
(116, 'UCB_jeans047', 'UCB', 'F', 'images/F/Kids/f.jpg', 599, 'Kids', 'blue'),
(117, 'gini n jony_jeans067', 'gini n jony', 'F', 'images/F/Kids/g.jpg', 399, 'Kids', 'grey'),
(118, 'palmtree057', 'palm tree', 'F', 'images/F/Kids/h.jpg', 340, 'Kids', 'blue'),
(119, 'UCB_jeans107', 'UCB', 'F', 'images/F/Kids/i.jpg', 399, 'Kids', 'blue'),
(120, 'UCB_jeans048', 'UCB', 'M', 'images/M/Kids/a.jpg', 599, 'Kids', 'blue'),
(121, 'gini n jony_jeans068', 'gini n jony', 'M', 'images/M/Kids/b.jpg', 799, 'Kids', 'white'),
(122, 'palmtree058', 'palm tree', 'M', 'images/M/Kids/c.jpg', 340, 'Kids', 'red'),
(123, 'UCB_jeans108', 'UCB', 'M', 'images/M/Kids/d.jpg', 399, 'Kids', 'black'),
(124, 'disney0458', 'disney', 'M', 'images/M/Kids/e.jpg', 499, 'Kids', 'white'),
(125, 'UCB_jeans048', 'UCB', 'M', 'images/M/Kids/f.jpg', 599, 'Kids', 'blue'),
(126, 'gini n jony_shirt068', 'gini n jony', 'M', 'images/M/Kids/g.jpg', 399, 'Kids', 'white'),
(127, 'palmtree058', 'palm tree', 'M', 'images/M/Kids/h.jpg', 340, 'Kids', 'blue'),
(128, 'UCB_shirt10', 'UCB', 'M', 'images/M/Kids/i.jpg', 399, 'Kids', 'orange'),
(130, 'UCB_jeans068', 'UCB', 'M', 'images/M/Kids/a.jpg', 599, 'Kids', 'black'),
(131, 'gini n jony_tshirt048', 'gini n jony', 'M', 'images/M/Kids/b.jpg', 799, 'Kids', 'black'),
(132, 'palmtree068', 'palm tree', 'M', 'images/M/Kids/c.jpg', 340, 'Kids', 'black'),
(133, 'UCB_tshirt168', 'UCB', 'M', 'images/M/Kids/d.jpg', 399, 'Kids', 'black'),
(134, 'disney0468', 'disney', 'M', 'images/M/Kids/e.jpg', 499, 'Kids', 'cream'),
(135, 'UCB_tshirt068', 'UCB', 'M', 'images/M/Kids/f.jpg', 599, 'Kids', 'cream'),
(136, 'UCB_jeans069', 'UCB', 'M', 'images/M/Kids/a.jpg', 599, 'Kids', 'black'),
(137, 'gini n jony_jeans049', 'gini n jony', 'M', 'images/M/Kids/b.jpg', 799, 'Kids', 'black'),
(138, 'palmtree069', 'palm tree', 'M', 'images/M/Kids/c.jpg', 340, 'Kids', 'black'),
(139, 'UCB_jeans169', 'UCB', 'M', 'images/M/Kids/d.jpg', 399, 'Kids', 'cream'),
(140, 'disney0469', 'disney', 'M', 'images/M/Kids/e.jpg', 499, 'Kids', 'cream'),
(141, 'UCB_shirt069', 'UCB', 'M', 'images/M/Kids/a.jpg', 599, 'Kids', 'white'),
(142, 'gini n jony_shirt049', 'gini n jony', 'M', 'images/M/Kids/b.jpg', 799, 'Kids', 'white'),
(143, 'palmtree069', 'palm tree', 'M', 'images/M/Kids/c.jpg', 340, 'Kids', 'white'),
(144, 'UCB_shirt169', 'UCB', 'M', 'images/M/Kids/d.jpg', 399, 'Kids', 'black'),
(145, 'disney0469', 'disney', 'M', 'images/M/Kids/e.jpg', 499, 'Kids', 'red'),
(146, 'UCB_shirt069', 'UCB', 'M', 'images/M/Kids/f.jpg', 599, 'Kids', 'white'),
(147, 'palmtree062', 'palm tree', 'M', 'images/M/Kids/g.jpg', 340, 'Kids', 'white'),
(148, 'UCB_shirt162', 'UCB', 'M', 'images/M/Kids/h.jpg', 399, 'Kids', 'blue'),
(149, 'disney0462', 'disney', 'M', 'images/M/Kids/i.jpg', 499, 'Kids', 'white'),
(150, 'UCB_shirt062', 'UCB', 'M', 'images/M/Kids/j.jpg', 599, 'Kids', 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `IID` int(11) NOT NULL,
  `Timestamp` int(11) NOT NULL,
  `Location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`UID`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`IID`),
  ADD KEY `IID` (`IID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `IID` (`IID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_item` FOREIGN KEY (`IID`) REFERENCES `item` (`IID`) ON DELETE NO ACTION,
  ADD CONSTRAINT `transaction_user` FOREIGN KEY (`UID`) REFERENCES `customer` (`UID`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
