-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 07:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `adminId` int(11) NOT NULL,
  `phone` char(15) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contactsupport`
--

CREATE TABLE `contactsupport` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `optiongroup`
--

CREATE TABLE `optiongroup` (
  `OptionGroupId` int(11) NOT NULL,
  `OptionGroupName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `OptionId` int(11) NOT NULL,
  `OptionGroupName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `DetailsID` int(11) NOT NULL,
  `DetailsOrderID` int(11) NOT NULL,
  `DetailsProductID` int(11) NOT NULL,
  `DetailsName` varchar(50) NOT NULL,
  `DetailsPrice` float NOT NULL,
  `DetailsQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `OrderUserID` int(11) NOT NULL,
  `OrderAmount` float NOT NULL,
  `OrderShipName` varchar(100) NOT NULL,
  `OrderShipAddr` varchar(100) NOT NULL,
  `OrderShipAddr2` varchar(100) DEFAULT NULL,
  `OrderCity` varchar(50) NOT NULL,
  `OrderState` varchar(50) NOT NULL,
  `OrderCountry` varchar(50) NOT NULL,
  `OrderPhoneNo` int(15) NOT NULL,
  `OrderTax` float DEFAULT NULL,
  `OrderEmail` varchar(50) NOT NULL,
  `OrderZipCode` varchar(25) NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `OrderIsShipped` tinyint(1) NOT NULL,
  `OrderTrackStatus` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` mediumtext NOT NULL,
  `ProductPrice` float NOT NULL,
  `ProductWeight` float NOT NULL,
  `ProductDescription` longtext NOT NULL,
  `ProductThumb` varchar(100) NOT NULL,
  `ProductImage` varchar(1000) NOT NULL,
  `ProductUpdateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ProductShortDescription` mediumtext NOT NULL,
  `ProductCatagoryName` varchar(100) NOT NULL,
  `discountPercentage` float NOT NULL,
  `rating` float NOT NULL,
  `stock` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductDescription`, `ProductThumb`, `ProductImage`, `ProductUpdateDate`, `ProductShortDescription`, `ProductCatagoryName`, `discountPercentage`, `rating`, `stock`, `brand`) VALUES
(910, 'iPhone 9', 549, 0, 'An apple mobile which is nothing like apple', 'https://dummyjson.com/image/i/products/1/thumbnail.jpg', 'YTo1OntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMS8xLmpwZyI7aToxO3M6NDY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzEvMi5qcGciO2k6MjtzOjQ2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xLzMuanBnIjtpOjM7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMS80LmpwZyI7aTo0O3M6NTQ6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzEvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'smartphones', 12.96, 4.69, 94, 'Apple'),
(911, 'iPhone X', 899, 0, 'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...', 'https://dummyjson.com/image/i/products/2/thumbnail.jpg', 'YTo0OntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMi8xLmpwZyI7aToxO3M6NDY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzIvMi5qcGciO2k6MjtzOjQ2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yLzMuanBnIjtpOjM7czo1NDoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMi90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'smartphones', 17.94, 4.44, 34, 'Apple'),
(912, 'Samsung Universe 9', 1249, 0, 'Samsung\'s new variant which goes beyond Galaxy to the Universe', 'https://dummyjson.com/image/i/products/3/thumbnail.jpg', 'YToxOntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMy8xLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'smartphones', 15.46, 4.09, 36, 'Samsung'),
(913, 'OPPOF19', 280, 0, 'OPPO F19 is officially announced on April 2021.', 'https://dummyjson.com/image/i/products/4/thumbnail.jpg', 'YTo1OntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNC8xLmpwZyI7aToxO3M6NDY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQvMi5qcGciO2k6MjtzOjQ2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80LzMuanBnIjtpOjM7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNC80LmpwZyI7aTo0O3M6NTQ6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'smartphones', 17.91, 4.3, 123, 'OPPO'),
(914, 'Huawei P30', 499, 0, 'Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.', 'https://dummyjson.com/image/i/products/5/thumbnail.jpg', 'YTozOntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNS8xLmpwZyI7aToxO3M6NDY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzUvMi5qcGciO2k6MjtzOjQ2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81LzMuanBnIjt9', '0000-00-00 00:00:00', '', 'smartphones', 10.58, 4.09, 32, 'Huawei'),
(915, 'MacBook Pro', 1749, 0, 'MacBook Pro 2021 with mini-LED display may launch between September, November', 'https://dummyjson.com/image/i/products/6/thumbnail.png', 'YTo0OntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNi8xLnBuZyI7aToxO3M6NDY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzYvMi5qcGciO2k6MjtzOjQ2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82LzMucG5nIjtpOjM7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNi80LmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'laptops', 11.02, 4.57, 83, 'APPle'),
(916, 'Samsung Galaxy Book', 1499, 0, 'Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched', 'https://dummyjson.com/image/i/products/7/thumbnail.jpg', 'YTo0OntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNy8xLmpwZyI7aToxO3M6NDY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzcvMi5qcGciO2k6MjtzOjQ2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83LzMuanBnIjtpOjM7czo1NDoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNy90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'laptops', 4.15, 4.25, 50, 'Samsung'),
(917, 'Microsoft Surface Laptop 4', 1499, 0, 'Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.', 'https://dummyjson.com/image/i/products/8/thumbnail.jpg', 'YTo1OntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOC8xLmpwZyI7aToxO3M6NDY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzgvMi5qcGciO2k6MjtzOjQ2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84LzMuanBnIjtpOjM7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOC80LmpwZyI7aTo0O3M6NTQ6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzgvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'laptops', 10.23, 4.43, 68, 'Microsoft Surface'),
(918, 'Infinix INBOOK', 1099, 0, 'Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty', 'https://dummyjson.com/image/i/products/9/thumbnail.jpg', 'YTo1OntpOjA7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOS8xLmpwZyI7aToxO3M6NDY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzkvMi5wbmciO2k6MjtzOjQ2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85LzMucG5nIjtpOjM7czo0NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOS80LmpwZyI7aTo0O3M6NTQ6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzkvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'laptops', 11.83, 4.54, 96, 'Infinix'),
(919, 'HP Pavilion 15-DK1056WM', 1099, 0, 'HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10', 'https://dummyjson.com/image/i/products/10/thumbnail.jpeg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTAvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xMC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzEwLzMuanBnIjtpOjM7czo1NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTAvdGh1bWJuYWlsLmpwZWciO30=', '0000-00-00 00:00:00', '', 'laptops', 6.18, 4.43, 89, 'HP Pavilion'),
(920, 'perfume Oil', 13, 0, 'Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil', 'https://dummyjson.com/image/i/products/11/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTEvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xMS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzExLzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTEvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'fragrances', 8.4, 4.26, 65, 'Impression of Acqua Di Gio'),
(921, 'Brown Perfume', 40, 0, 'Royal_Mirage Sport Brown Perfume for Men & Women - 120ml', 'https://dummyjson.com/image/i/products/12/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTIvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xMi8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzEyLzMucG5nIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTIvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xMi90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'fragrances', 15.66, 4, 52, 'Royal_Mirage'),
(922, 'Fog Scent Xpressio Perfume', 13, 0, 'Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men', 'https://dummyjson.com/image/i/products/13/thumbnail.webp', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTMvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xMy8yLnBuZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzEzLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTMvNC5qcGciO2k6NDtzOjU2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xMy90aHVtYm5haWwud2VicCI7fQ==', '0000-00-00 00:00:00', '', 'fragrances', 8.14, 4.59, 61, 'Fog Scent Xpressio'),
(923, 'Non-Alcoholic Concentrated Perfume Oil', 120, 0, 'Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil', 'https://dummyjson.com/image/i/products/14/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTQvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xNC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzE0LzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTQvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'fragrances', 15.6, 4.21, 114, 'Al Munakh'),
(924, 'Eau De Perfume Spray', 30, 0, 'Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality', 'https://dummyjson.com/image/i/products/15/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTUvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xNS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzE1LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTUvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xNS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'fragrances', 10.99, 4.7, 105, 'Lord - Al-Rehab'),
(925, 'Hyaluronic Acid Serum', 19, 0, 'L\'OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid', 'https://dummyjson.com/image/i/products/16/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTYvMS5wbmciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xNi8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xNi8zLmpwZyI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzE2LzQuanBnIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTYvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'skincare', 13.31, 4.83, 110, 'L\'Oreal Paris'),
(926, 'Tree Oil 30ml', 12, 0, 'Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,', 'https://dummyjson.com/image/i/products/17/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xNy8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzE3LzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTcvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'skincare', 4.09, 4.52, 78, 'Hemani Tea'),
(927, 'Oil Free Moisturizer 100ml', 40, 0, 'Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.', 'https://dummyjson.com/image/i/products/18/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTgvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xOC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzE4LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTgvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xOC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'skincare', 13.1, 4.56, 88, 'Dermive'),
(928, 'Skin Beauty Serum.', 46, 0, 'Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m', 'https://dummyjson.com/image/i/products/19/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTkvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8xOS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzE5LzMucG5nIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTkvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'skincare', 10.68, 4.42, 54, 'ROREC White Rice'),
(929, 'Freckle Treatment Cream- 15gm', 70, 0, 'Fair & Clear is Pakistan\'s only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects.', 'https://dummyjson.com/image/i/products/20/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjAvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yMC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzIwLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjAvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yMC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'skincare', 16.99, 4.06, 140, 'Fair & Clear'),
(930, '- Daal Masoor 500 grams', 20, 0, 'Fine quality Branded Product Keep in a cool and dry place', 'https://dummyjson.com/image/i/products/21/thumbnail.png', 'YTozOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjEvMS5wbmciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yMS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzIxLzMuanBnIjt9', '0000-00-00 00:00:00', '', 'groceries', 4.81, 4.44, 133, 'Saaf & Khaas'),
(931, 'Elbow Macaroni - 400 gm', 14, 0, 'Product details of Bake Parlor Big Elbow Macaroni - 400 gm', 'https://dummyjson.com/image/i/products/22/thumbnail.jpg', 'YTozOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjIvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yMi8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzIyLzMuanBnIjt9', '0000-00-00 00:00:00', '', 'groceries', 15.58, 4.57, 146, 'Bake Parlor Big'),
(932, 'Orange Essence Food Flavou', 14, 0, 'Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item', 'https://dummyjson.com/image/i/products/23/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjMvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yMy8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzIzLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjMvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yMy90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'groceries', 8.04, 4.85, 26, 'Baking Food Items'),
(933, 'cereals muesli fruit nuts', 46, 0, 'original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji', 'https://dummyjson.com/image/i/products/24/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjQvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yNC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI0LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjQvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yNC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'groceries', 16.8, 4.94, 113, 'fauji'),
(934, 'Gulab Powder 50 Gram', 70, 0, 'Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds', 'https://dummyjson.com/image/i/products/25/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjUvMS5wbmciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yNS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI1LzMucG5nIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjUvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yNS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'groceries', 13.58, 4.87, 47, 'Dry Rose'),
(935, 'Plant Hanger For Home', 41, 0, 'Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf', 'https://dummyjson.com/image/i/products/26/thumbnail.jpg', 'YTo2OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjYvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yNi8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI2LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjYvNC5qcGciO2k6NDtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yNi81LmpwZyI7aTo1O3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI2L3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'home-decoration', 17.86, 4.08, 131, 'Boho Decor'),
(936, 'Flying Wooden Bird', 51, 0, 'Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm', 'https://dummyjson.com/image/i/products/27/thumbnail.webp', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yNy8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI3LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjcvNC5qcGciO2k6NDtzOjU2OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yNy90aHVtYm5haWwud2VicCI7fQ==', '0000-00-00 00:00:00', '', 'home-decoration', 15.58, 4.41, 17, 'Flying Wooden'),
(937, '3D Embellishment Art Lamp', 20, 0, '3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)', 'https://dummyjson.com/image/i/products/28/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjgvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yOC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI4LzMucG5nIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjgvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yOC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'home-decoration', 16.49, 4.82, 54, 'LED Lights'),
(938, 'Handcraft Chinese style', 60, 0, 'Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate', 'https://dummyjson.com/image/i/products/29/thumbnail.webp', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMjkvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8yOS8yLmpwZyI7aToyO3M6NDg6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI5LzMud2VicCI7aTozO3M6NDg6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI5LzQud2VicCI7aTo0O3M6NTY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzI5L3RodW1ibmFpbC53ZWJwIjt9', '0000-00-00 00:00:00', '', 'home-decoration', 15.34, 4.44, 7, 'luxury palace'),
(939, 'Key Holder', 30, 0, 'Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality', 'https://dummyjson.com/image/i/products/30/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzAvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zMC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzMwLzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzAvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'home-decoration', 2.92, 4.92, 54, 'Golden'),
(940, 'Mornadi Velvet Bed', 40, 0, 'Mornadi Velvet Bed Base with Headboard Slats Support Classic Style Bedroom Furniture Bed Set', 'https://dummyjson.com/image/i/products/31/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzEvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zMS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzMxLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzEvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zMS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'furniture', 17, 4.16, 140, 'Furniture Bed Set'),
(941, 'Sofa for Coffe Cafe', 50, 0, 'Ratttan Outdoor furniture Set Waterproof  Rattan Sofa for Coffe Cafe', 'https://dummyjson.com/image/i/products/32/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzIvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zMi8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzMyLzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzIvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'furniture', 15.59, 4.74, 30, 'Ratttan Outdoor'),
(942, '3 Tier Corner Shelves', 700, 0, '3 Tier Corner Shelves | 3 PCs Wall Mount Kitchen Shelf | Floating Bedroom Shelf', 'https://dummyjson.com/image/i/products/33/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzMvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zMy8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzMzLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzMvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zMy90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'furniture', 17, 4.31, 106, 'Kitchen Shelf'),
(943, 'Plastic Table', 50, 0, 'V﻿ery good quality plastic table for multi purpose now in reasonable price', 'https://dummyjson.com/image/i/products/34/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzQvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzM0LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzQvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'furniture', 4, 4.01, 136, 'Multi Purpose'),
(944, '3 DOOR PORTABLE', 41, 0, 'Material: Stainless Steel and Fabric  Item Size: 110 cm x 45 cm x 175 cm Package Contents: 1 Storage Wardrobe', 'https://dummyjson.com/image/i/products/35/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzUvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzM1LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzUvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'furniture', 7.98, 4.06, 68, 'AmnaMart'),
(945, 'Sleeve Shirt Womens', 90, 0, 'Cotton Solid Color Professional Wear Sleeve Shirt Womens Work Blouses Wholesale Clothing Casual Plain Custom Top OEM Customized', 'https://dummyjson.com/image/i/products/36/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzYvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNi8yLndlYnAiO2k6MjtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNi8zLndlYnAiO2k6MztzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNi80LmpwZyI7aTo0O3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzM2L3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'tops', 10.89, 4.26, 39, 'Professional Wear'),
(946, 'ank Tops for Womens/Girls', 50, 0, 'PACK OF 3 CAMISOLES ,VERY COMFORTABLE SOFT COTTON STUFF, COMFORTABLE IN ALL FOUR SEASONS', 'https://dummyjson.com/image/i/products/37/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNy8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzM3LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzcvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zNy90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'tops', 12.05, 4.52, 107, 'Soft Cotton'),
(947, 'sublimation plain kids tank', 100, 0, 'sublimation plain kids tank tops wholesale', 'https://dummyjson.com/image/i/products/38/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzgvMS5wbmciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zOC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzM4LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzgvNC5qcGciO30=', '0000-00-00 00:00:00', '', 'tops', 11.12, 4.8, 20, 'Soft Cotton'),
(948, 'Women Sweaters Wool', 600, 0, '2021 Custom Winter Fall Zebra Knit Crop Top Women Sweaters Wool Mohair Cos Customize Crew Neck Women\' S Crop Top Sweater', 'https://dummyjson.com/image/i/products/39/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzkvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zOS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzM5LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMzkvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy8zOS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'tops', 17.2, 4.55, 55, 'Top Sweater'),
(949, 'women winter clothes', 57, 0, 'women winter clothes thick fleece hoodie top with sweat pantjogger women sweatsuit set joggers pants two piece pants set', 'https://dummyjson.com/image/i/products/40/thumbnail.jpg', 'YToyOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDAvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80MC8yLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'tops', 13.39, 4.91, 84, 'Top Sweater'),
(950, 'NIGHT SUIT', 55, 0, 'NIGHT SUIT RED MICKY MOUSE..  For Girls. Fantastic Suits.', 'https://dummyjson.com/image/i/products/41/thumbnail.webp', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDEvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80MS8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80MS8zLmpwZyI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQxLzQuanBnIjtpOjQ7czo1NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDEvdGh1bWJuYWlsLndlYnAiO30=', '0000-00-00 00:00:00', '', 'womens-dresses', 15.05, 4.65, 21, 'RED MICKY MOUSE..'),
(951, 'Stiched Kurta plus trouser', 80, 0, 'FABRIC: LILEIN CHEST: 21 LENGHT: 37 TROUSER: (38) :ARABIC LILEIN', 'https://dummyjson.com/image/i/products/42/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDIvMS5wbmciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80Mi8yLnBuZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQyLzMucG5nIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDIvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80Mi90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'womens-dresses', 15.37, 4.05, 148, 'Digital Printed'),
(952, 'frock gold printed', 600, 0, 'Ghazi fabric long frock gold printed ready to wear stitched collection (G992)', 'https://dummyjson.com/image/i/products/43/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDMvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80My8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQzLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDMvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80My90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'womens-dresses', 15.55, 4.31, 150, 'Ghazi Fabric'),
(953, 'Ladies Multicolored Dress', 79, 0, 'This classy shirt for women gives you a gorgeous look on everyday wear and specially for semi-casual wears.', 'https://dummyjson.com/image/i/products/44/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDQvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80NC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQ0LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDQvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80NC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'womens-dresses', 16.88, 4.03, 2, 'Ghazi Fabric'),
(954, 'Malai Maxi Dress', 50, 0, 'Ready to wear, Unique design according to modern standard fashion, Best fitting ,Imported stuff', 'https://dummyjson.com/image/i/products/45/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDUvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80NS8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80NS8zLmpwZyI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQ1LzQuanBnIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDUvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'womens-dresses', 5.07, 4.67, 96, 'IELGY'),
(955, 'women\'s shoes', 40, 0, 'Close: Lace, Style with bottom: Increased inside, Sole Material: Rubber', 'https://dummyjson.com/image/i/products/46/thumbnail.jpg', 'YTo1OntpOjA7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDYvMS53ZWJwIjtpOjE7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDYvMi5qcGciO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80Ni8zLmpwZyI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQ2LzQuanBnIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDYvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'womens-shoes', 16.96, 4.14, 72, 'IELGY fashion'),
(956, 'Sneaker shoes', 120, 0, 'Synthetic Leather Casual Sneaker shoes for Women/girls Sneakers For Women', 'https://dummyjson.com/image/i/products/47/thumbnail.jpeg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80Ny8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQ3LzMuanBnIjtpOjM7czo1NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDcvdGh1bWJuYWlsLmpwZWciO30=', '0000-00-00 00:00:00', '', 'womens-shoes', 10.37, 4.19, 50, 'Synthetic Leather'),
(957, 'Women Strip Heel', 40, 0, 'Features: Flip-flops, Mid Heel, Comfortable, Striped Heel, Antiskid, Striped', 'https://dummyjson.com/image/i/products/48/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDgvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80OC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQ4LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDgvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80OC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'womens-shoes', 10.83, 4.02, 25, 'Sandals Flip Flops'),
(958, 'Chappals & Shoe Ladies Metallic', 23, 0, 'Womens Chappals & Shoe Ladies Metallic Tong Thong Sandal Flat Summer 2020 Maasai Sandals', 'https://dummyjson.com/image/i/products/49/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNDkvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy80OS8yLmpwZyI7aToyO3M6NDg6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQ5LzMud2VicCI7aTozO3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzQ5L3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'womens-shoes', 2.62, 4.72, 107, 'Maasai Sandals'),
(959, 'Women Shoes', 36, 0, '2020 New Arrivals Genuine Leather Fashion Trend Platform Summer Women Shoes', 'https://dummyjson.com/image/i/products/50/thumbnail.jpg', 'YTozOntpOjA7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTAvMS5qcGVnIjtpOjE7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTAvMi5qcGciO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81MC8zLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'womens-shoes', 16.87, 4.33, 46, 'Arrivals Genuine'),
(960, 'half sleeves T shirts', 23, 0, 'Many store is creating new designs and trend every month and every year. Daraz.pk have a beautiful range of men fashion brands', 'https://dummyjson.com/image/i/products/51/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTEvMS5wbmciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81MS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzUxLzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTEvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'mens-shirts', 12.76, 4.26, 132, 'Vintage Apparel'),
(961, 'FREE FIRE T Shirt', 10, 0, 'quality and professional print - It doesn\'t just look high quality, it is high quality.', 'https://dummyjson.com/image/i/products/52/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTIvMS5wbmciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81Mi8yLnBuZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzUyLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTIvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81Mi90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'mens-shirts', 14.72, 4.52, 128, 'FREE FIRE'),
(962, 'printed high quality T shirts', 35, 0, 'Brand: vintage Apparel ,Export quality', 'https://dummyjson.com/image/i/products/53/thumbnail.jpg', 'YTo1OntpOjA7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTMvMS53ZWJwIjtpOjE7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTMvMi5qcGciO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81My8zLmpwZyI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzUzLzQuanBnIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTMvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'mens-shirts', 7.54, 4.89, 6, 'Vintage Apparel'),
(963, 'Pubg Printed Graphic T-Shirt', 46, 0, 'Product Description Features: 100% Ultra soft Polyester Jersey. Vibrant & colorful printing on front. Feels soft as cotton without ever cracking', 'https://dummyjson.com/image/i/products/54/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTQvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81NC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzU0LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTQvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81NC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'mens-shirts', 16.44, 4.62, 136, 'The Warehouse'),
(964, 'Money Heist Printed Summer T Shirts', 66, 0, 'Fabric Jercy, Size: M & L Wear Stylish Dual Stiched', 'https://dummyjson.com/image/i/products/55/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTUvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81NS8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81NS8zLmpwZyI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzU1LzQuanBnIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTUvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'mens-shirts', 15.97, 4.9, 122, 'The Warehouse'),
(965, 'Sneakers Joggers Shoes', 40, 0, 'Gender: Men , Colors: Same as DisplayedCondition: 100% Brand New', 'https://dummyjson.com/image/i/products/56/thumbnail.jpg', 'YTo2OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTYvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81Ni8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzU2LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTYvNC5qcGciO2k6NDtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81Ni81LmpwZyI7aTo1O3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzU2L3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'mens-shoes', 12.57, 4.38, 6, 'Sneakers'),
(966, 'Loafers for men', 47, 0, 'Men Shoes - Loafers for men - Rubber Shoes - Nylon Shoes - Shoes for men - Moccassion - Pure Nylon (Rubber) Expot Quality.', 'https://dummyjson.com/image/i/products/57/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81Ny8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzU3LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTcvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81Ny90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'mens-shoes', 10.91, 4.91, 20, 'Rubber'),
(967, 'formal offices shoes', 57, 0, 'Pattern Type: Solid, Material: PU, Toe Shape: Pointed Toe ,Outsole Material: Rubber', 'https://dummyjson.com/image/i/products/58/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTgvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81OC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzU4LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTgvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81OC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'mens-shoes', 12, 4.41, 68, 'The Warehouse'),
(968, 'Spring and summershoes', 20, 0, 'Comfortable stretch cloth, lightweight body; ,rubber sole, anti-skid wear;', 'https://dummyjson.com/image/i/products/59/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTkvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81OS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzU5LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNTkvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy81OS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'mens-shoes', 8.71, 4.33, 137, 'Sneakers'),
(969, 'Stylish Casual Jeans Shoes', 58, 0, 'High Quality ,Stylish design ,Comfortable wear ,FAshion ,Durable', 'https://dummyjson.com/image/i/products/60/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjAvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82MC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzYwLzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjAvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'mens-shoes', 7.55, 4.55, 129, 'Sneakers'),
(970, 'Leather Straps Wristwatch', 120, 0, 'Style:Sport ,Clasp:Buckles ,Water Resistance Depth:3Bar', 'https://dummyjson.com/image/i/products/61/thumbnail.jpg', 'YTozOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjEvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82MS8yLnBuZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzYxLzMuanBnIjt9', '0000-00-00 00:00:00', '', 'mens-watches', 7.14, 4.63, 91, 'Naviforce'),
(971, 'Waterproof Leather Brand Watch', 46, 0, 'Watch Crown With Environmental IPS Bronze Electroplating; Display system of 12 hours', 'https://dummyjson.com/image/i/products/62/thumbnail.jpg', 'YToyOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjIvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82Mi8yLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'mens-watches', 3.15, 4.05, 95, 'SKMEI 9117'),
(972, 'Royal Blue Premium Watch', 50, 0, 'Men Silver Chain Royal Blue Premium Watch Latest Analog Watch', 'https://dummyjson.com/image/i/products/63/thumbnail.webp', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjMvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82My8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzYzLzMucG5nIjtpOjM7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjMvNC5qcGVnIjt9', '0000-00-00 00:00:00', '', 'mens-watches', 2.56, 4.89, 142, 'SKMEI 9117'),
(973, 'Leather Strap Skeleton Watch', 46, 0, 'Leather Strap Skeleton Watch for Men - Stylish and Latest Design', 'https://dummyjson.com/image/i/products/64/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjQvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82NC8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82NC8zLmpwZyI7aTozO3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzY0L3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'mens-watches', 10.2, 4.98, 61, 'Strap Skeleton'),
(974, 'Stainless Steel Wrist Watch', 47, 0, 'Stylish Watch For Man (Luxury) Classy Men\'s Stainless Steel Wrist Watch - Box Packed', 'https://dummyjson.com/image/i/products/65/thumbnail.webp', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjUvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82NS8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82NS8zLmpwZyI7aTozO3M6NDg6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzY1LzQud2VicCI7aTo0O3M6NTY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzY1L3RodW1ibmFpbC53ZWJwIjt9', '0000-00-00 00:00:00', '', 'mens-watches', 17.79, 4.79, 94, 'Stainless'),
(975, 'Steel Analog Couple Watches', 35, 0, 'Elegant design, Stylish ,Unique & Trendy,Comfortable wear', 'https://dummyjson.com/image/i/products/66/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjYvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82Ni8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzY2LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjYvNC5KUEciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82Ni90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'womens-watches', 3.23, 4.79, 24, 'Eastern Watches'),
(976, 'Fashion Magnetic Wrist Watch', 60, 0, 'Buy this awesome  The product is originally manufactured by the company and it\'s a top selling product with a very reasonable', 'https://dummyjson.com/image/i/products/67/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82Ny8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzY3LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjcvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82Ny90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'womens-watches', 16.69, 4.03, 46, 'Eastern Watches'),
(977, 'Stylish Luxury Digital Watch', 57, 0, 'Stylish Luxury Digital Watch For Girls / Women - Led Smart Ladies Watches For Girls', 'https://dummyjson.com/image/i/products/68/thumbnail.webp', 'YToyOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjgvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82OC8yLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'womens-watches', 9.03, 4.55, 77, 'Luxury Digital'),
(978, 'Golden Watch Pearls Bracelet Watch', 47, 0, 'Product details of Golden Watch Pearls Bracelet Watch For Girls - Golden Chain Ladies Bracelate Watch for Women', 'https://dummyjson.com/image/i/products/69/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjkvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy82OS8yLmpwZyI7aToyO3M6NDg6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzY5LzMud2VicCI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzY5LzQuanBnIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNjkvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'womens-watches', 17.55, 4.77, 89, 'Watch Pearls'),
(979, 'Stainless Steel Women', 35, 0, 'Fashion Skmei 1830 Shell Dial Stainless Steel Women Wrist Watch Lady Bracelet Watch Quartz Watches Ladies', 'https://dummyjson.com/image/i/products/70/thumbnail.jpg', 'YTozOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzAvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83MC8yLmpwZyI7aToyO3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzcwL3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'womens-watches', 8.98, 4.08, 111, 'Bracelet'),
(980, 'Women Shoulder Bags', 46, 0, 'LouisWill Women Shoulder Bags Long Clutches Cross Body Bags Phone Bags PU Leather Hand Bags Large Capacity Card Holders Zipper Coin Purses Fashion Crossbody Bags for Girls Ladies', 'https://dummyjson.com/image/i/products/71/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzEvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83MS8yLmpwZyI7aToyO3M6NDg6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzcxLzMud2VicCI7aTozO3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzcxL3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'womens-bags', 14.65, 4.71, 17, 'LouisWill'),
(981, 'Handbag For Girls', 23, 0, 'This fashion is designed to add a charming effect to your casual outfit. This Bag is made of synthetic leather.', 'https://dummyjson.com/image/i/products/72/thumbnail.webp', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzIvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83Mi8yLnBuZyI7aToyO3M6NDg6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzcyLzMud2VicCI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzcyLzQuanBnIjtpOjQ7czo1NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzIvdGh1bWJuYWlsLndlYnAiO30=', '0000-00-00 00:00:00', '', 'womens-bags', 17.5, 4.91, 27, 'LouisWill'),
(982, 'Fancy hand clutch', 44, 0, 'This fashion is designed to add a charming effect to your casual outfit. This Bag is made of synthetic leather.', 'https://dummyjson.com/image/i/products/73/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzMvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83My8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83My8zLmpwZyI7aTozO3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzczL3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'womens-bags', 10.39, 4.18, 101, 'Bracelet'),
(983, 'Leather Hand Bag', 57, 0, 'It features an attractive design that makes it a must have accessory in your collection. We sell different kind of bags for boys, kids, women, girls and also for unisex.', 'https://dummyjson.com/image/i/products/74/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzQvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83NC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzc0LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzQvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83NC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'womens-bags', 11.19, 4.01, 43, 'Copenhagen Luxe'),
(984, 'Seven Pocket Women Bag', 68, 0, 'Seven Pocket Women Bag Handbags Lady Shoulder Crossbody Bag Female Purse Seven Pocket Bag', 'https://dummyjson.com/image/i/products/75/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzUvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83NS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzc1LzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzUvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'womens-bags', 14.87, 4.93, 13, 'Steal Frame'),
(985, 'Silver Ring Set Women', 70, 0, 'Jewelry Type:RingsCertificate Type:NonePlating:Silver PlatedShapeattern:noneStyle:CLASSICReligious', 'https://dummyjson.com/image/i/products/76/thumbnail.jpg', 'YTozOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzYvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83Ni8yLmpwZyI7aToyO3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzc2L3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'womens-jewellery', 13.57, 4.61, 51, 'Darojay'),
(986, 'Rose Ring', 100, 0, 'Brand: The Greetings Flower Colour: RedRing Colour: GoldenSize: Adjustable', 'https://dummyjson.com/image/i/products/77/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy83Ny8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzc3LzMuanBnIjtpOjM7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzcvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'womens-jewellery', 3.22, 4.21, 149, 'Copenhagen Luxe'),
(987, 'Rhinestone Korean Style Open Rings', 30, 0, 'Fashion Jewellery 3Pcs Adjustable Pearl Rhinestone Korean Style Open Rings For Women', 'https://dummyjson.com/image/i/products/78/thumbnail.jpg', 'YToxOntpOjA7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzgvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'womens-jewellery', 8.02, 4.69, 9, 'Fashion Jewellery'),
(988, 'Elegant Female Pearl Earrings', 30, 0, 'Elegant Female Pearl Earrings Set Zircon Pearl Earings Women Party Accessories 9 Pairs/Set', 'https://dummyjson.com/image/i/products/79/thumbnail.jpg', 'YToxOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvNzkvMS5qcGciO30=', '0000-00-00 00:00:00', '', 'womens-jewellery', 12.8, 4.74, 16, 'Fashion Jewellery');
INSERT INTO `product` (`ProductID`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductDescription`, `ProductThumb`, `ProductImage`, `ProductUpdateDate`, `ProductShortDescription`, `ProductCatagoryName`, `discountPercentage`, `rating`, `stock`, `brand`) VALUES
(989, 'Chain Pin Tassel Earrings', 45, 0, 'Pair Of Ear Cuff Butterfly Long Chain Pin Tassel Earrings - Silver ( Long Life Quality Product)', 'https://dummyjson.com/image/i/products/80/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODAvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84MC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzgwLzMucG5nIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODAvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84MC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'womens-jewellery', 17.75, 4.59, 9, 'Cuff Butterfly'),
(990, 'Round Silver Frame Sun Glasses', 19, 0, 'A pair of sunglasses can protect your eyes from being hurt. For car driving, vacation travel, outdoor activities, social gatherings,', 'https://dummyjson.com/image/i/products/81/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODEvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84MS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzgxLzMuanBnIjtpOjM7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODEvNC53ZWJwIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODEvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'sunglasses', 10.1, 4.94, 78, 'Designer Sun Glasses'),
(991, 'Kabir Singh Square Sunglass', 50, 0, 'Orignal Metal Kabir Singh design 2020 Sunglasses Men Brand Designer Sun Glasses Kabir Singh Square Sunglass', 'https://dummyjson.com/image/i/products/82/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODIvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84Mi8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84Mi8zLmpwZyI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzgyLzQuanBnIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODIvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'sunglasses', 15.6, 4.62, 78, 'Designer Sun Glasses'),
(992, 'Wiley X Night Vision Yellow Glasses', 30, 0, 'Wiley X Night Vision Yellow Glasses for Riders - Night Vision Anti Fog Driving Glasses - Free Night Glass Cover - Shield Eyes From Dust and Virus- For Night Sport Matches', 'https://dummyjson.com/image/i/products/83/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODMvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84My8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzgzLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODMvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84My90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'sunglasses', 6.33, 4.97, 115, 'mastar watch'),
(993, 'Square Sunglasses', 28, 0, 'Fashion Oversized Square Sunglasses Retro Gradient Big Frame Sunglasses For Women One Piece Gafas Shade Mirror Clear Lens 17059', 'https://dummyjson.com/image/i/products/84/thumbnail.jpg', 'YTozOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODQvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84NC8yLmpwZyI7aToyO3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzg0L3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'sunglasses', 13.89, 4.64, 64, 'mastar watch'),
(994, 'LouisWill Men Sunglasses', 50, 0, 'LouisWill Men Sunglasses Polarized Sunglasses UV400 Sunglasses Day Night Dual Use Safety Driving Night Vision Eyewear AL-MG Frame Sun Glasses with Free Box for Drivers', 'https://dummyjson.com/image/i/products/85/thumbnail.jpg', 'YTozOntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODUvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84NS8yLmpwZyI7aToyO3M6NTU6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzg1L3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'sunglasses', 11.27, 4.98, 92, 'LouisWill'),
(995, 'Bluetooth Aux', 25, 0, 'Bluetooth Aux Bluetooth Car Aux Car Bluetooth Transmitter Aux Audio Receiver Handfree Car Bluetooth Music Receiver Universal 3.5mm Streaming A2DP Wireless Auto AUX Audio Adapter With Mic For Phone MP3', 'https://dummyjson.com/image/i/products/86/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODYvMS5qcGciO2k6MTtzOjQ4OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84Ni8yLndlYnAiO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84Ni8zLmpwZyI7aTozO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzg2LzQuanBnIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODYvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'automotive', 10.56, 4.57, 22, 'Car Aux'),
(996, 't Temperature Controller Incubator Controller', 40, 0, 'Both Heat and Cool Purpose, Temperature control range; -50 to +110, Temperature measurement accuracy; 0.1, Control accuracy; 0.1', 'https://dummyjson.com/image/i/products/87/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84Ny8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzg3LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODcvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84Ny90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'automotive', 11.3, 4.54, 37, 'W1209 DC12V'),
(997, 'TC Reusable Silicone Magic Washing Gloves', 29, 0, 'TC Reusable Silicone Magic Washing Gloves with Scrubber, Cleaning Brush Scrubber Gloves Heat Resistant Pair for Cleaning of Kitchen, Dishes, Vegetables and Fruits, Bathroom, Car Wash, Pet Care and Multipurpose', 'https://dummyjson.com/image/i/products/88/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODgvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84OC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzg4LzMuanBnIjtpOjM7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODgvNC53ZWJwIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODgvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'automotive', 3.19, 4.98, 42, 'TC Reusable'),
(998, 'Qualcomm original Car Charger', 40, 0, 'best Quality CHarger , Highly Recommended to all best Quality CHarger , Highly Recommended to all', 'https://dummyjson.com/image/i/products/89/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODkvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84OS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzg5LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvODkvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy84OS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'automotive', 17.53, 4.2, 79, 'TC Reusable'),
(999, 'Cycle Bike Glow', 35, 0, 'Universal fitment and easy to install no special wires, can be easily installed and removed. Fits most standard tyre air stem valves of road, mountain bicycles, motocycles and cars.Bright led will turn on w', 'https://dummyjson.com/image/i/products/90/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTAvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85MC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzkwLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTAvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85MC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'automotive', 11.08, 4.1, 63, 'Neon LED Light'),
(1000, 'Black Motorbike', 569, 0, 'Engine Type:Wet sump, Single Cylinder, Four Stroke, Two Valves, Air Cooled with SOHC (Single Over Head Cam) Chain Drive Bore & Stroke:47.0 x 49.5 MM', 'https://dummyjson.com/image/i/products/91/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTEvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85MS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzkxLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTEvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85MS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'motorcycle', 13.63, 4.04, 115, 'METRO 70cc Motorcycle - MR70'),
(1001, 'HOT SALE IN EUROPE electric racing motorcycle', 920, 0, 'HOT SALE IN EUROPE electric racing motorcycle electric motorcycle for sale adult electric motorcycles', 'https://dummyjson.com/image/i/products/92/thumbnail.jpg', 'YTo0OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTIvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85Mi8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzkyLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTIvNC5qcGciO30=', '0000-00-00 00:00:00', '', 'motorcycle', 14.4, 4.19, 22, 'BRAVE BULL'),
(1002, 'Automatic Motor Gas Motorcycles', 1050, 0, '150cc 4-Stroke Motorcycle Automatic Motor Gas Motorcycles Scooter motorcycles 150cc scooter', 'https://dummyjson.com/image/i/products/93/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTMvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85My8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzkzLzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTMvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85My90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'motorcycle', 3.34, 4.84, 127, 'shock absorber'),
(1003, 'new arrivals Fashion motocross goggles', 900, 0, 'new arrivals Fashion motocross goggles motorcycle motocross racing motorcycle', 'https://dummyjson.com/image/i/products/94/thumbnail.webp', 'YTo0OntpOjA7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTQvMS53ZWJwIjtpOjE7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTQvMi5qcGciO2k6MjtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85NC8zLmpwZyI7aTozO3M6NTY6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzk0L3RodW1ibmFpbC53ZWJwIjt9', '0000-00-00 00:00:00', '', 'motorcycle', 3.85, 4.06, 109, 'JIEPOLLY'),
(1004, 'Wholesale cargo lashing Belt', 930, 0, 'Wholesale cargo lashing Belt Tie Down end Ratchet strap customized strap 25mm motorcycle 1500kgs with rubber handle', 'https://dummyjson.com/image/i/products/95/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTUvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85NS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzk1LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTUvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85NS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'motorcycle', 17.67, 4.21, 144, 'Xiangle'),
(1005, 'lighting ceiling kitchen', 30, 0, 'Wholesale slim hanging decorative kid room lighting ceiling kitchen chandeliers pendant light modern', 'https://dummyjson.com/image/i/products/96/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTYvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85Ni8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzk2LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTYvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85Ni90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'lighting', 14.89, 4.83, 96, 'lightingbrilliance'),
(1006, 'Metal Ceramic Flower', 35, 0, 'Metal Ceramic Flower Chandelier Home Lighting American Vintage Hanging Lighting Pendant Lamp', 'https://dummyjson.com/image/i/products/97/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTcvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85Ny8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzk3LzMuanBnIjtpOjM7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTcvNC53ZWJwIjtpOjQ7czo1NToiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTcvdGh1bWJuYWlsLmpwZyI7fQ==', '0000-00-00 00:00:00', '', 'lighting', 10.94, 4.93, 146, 'Ifei Home'),
(1007, '3 lights lndenpant kitchen islang', 34, 0, '3 lights lndenpant kitchen islang dining room pendant rice paper chandelier contemporary led pendant light modern chandelier', 'https://dummyjson.com/image/i/products/98/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTgvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85OC8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzk4LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTgvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85OC90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'lighting', 5.92, 4.99, 44, 'DADAWU'),
(1008, 'American Vintage Wood Pendant Light', 46, 0, 'American Vintage Wood Pendant Light Farmhouse Antique Hanging Lamp Lampara Colgante', 'https://dummyjson.com/image/i/products/99/thumbnail.jpg', 'YTo1OntpOjA7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTkvMS5qcGciO2k6MTtzOjQ3OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85OS8yLmpwZyI7aToyO3M6NDc6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pbWFnZS9pL3Byb2R1Y3RzLzk5LzMuanBnIjtpOjM7czo0NzoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvOTkvNC5qcGciO2k6NDtzOjU1OiJodHRwczovL2R1bW15anNvbi5jb20vaW1hZ2UvaS9wcm9kdWN0cy85OS90aHVtYm5haWwuanBnIjt9', '0000-00-00 00:00:00', '', 'lighting', 8.84, 4.32, 138, 'Ifei Home'),
(1009, 'Crystal chandelier maria theresa for 12 light', 47, 0, 'Crystal chandelier maria theresa for 12 light', 'https://dummyjson.com/image/i/products/100/thumbnail.jpg', 'YTo0OntpOjA7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTAwLzEuanBnIjtpOjE7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTAwLzIuanBnIjtpOjI7czo0ODoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTAwLzMuanBnIjtpOjM7czo1NjoiaHR0cHM6Ly9kdW1teWpzb24uY29tL2ltYWdlL2kvcHJvZHVjdHMvMTAwL3RodW1ibmFpbC5qcGciO30=', '0000-00-00 00:00:00', '', 'lighting', 16, 4.74, 133, 'YIOSI');

-- --------------------------------------------------------

--
-- Table structure for table `productcatagory`
--

CREATE TABLE `productcatagory` (
  `CatagoryID` int(101) NOT NULL,
  `CatagoryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productcatagory`
--

INSERT INTO `productcatagory` (`CatagoryID`, `CatagoryName`) VALUES
(90, 'automotive'),
(15, 'fragrances'),
(35, 'furniture'),
(25, 'groceries'),
(30, 'home-decoration'),
(10, 'laptops'),
(100, 'lighting'),
(55, 'mens-shirts'),
(60, 'mens-shoes'),
(65, 'mens-watches'),
(95, 'motorcycle'),
(20, 'skincare'),
(1, 'smartphones'),
(85, 'sunglasses'),
(40, 'tops'),
(75, 'womens-bags'),
(45, 'womens-dresses'),
(80, 'womens-jewellery'),
(50, 'womens-shoes'),
(70, 'womens-watches');

-- --------------------------------------------------------

--
-- Table structure for table `productoptions`
--

CREATE TABLE `productoptions` (
  `ProductOptionID` int(10) NOT NULL,
  `OptionID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `OptionGroupID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblall`
--

CREATE TABLE `tblall` (
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionID` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` float NOT NULL,
  `date` date NOT NULL,
  `CatagoryID` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserEmail` varchar(50) NOT NULL,
  `UserPassword` varchar(100) NOT NULL,
  `UserFname` varchar(60) NOT NULL,
  `UserLname` varchar(60) NOT NULL,
  `UserCity` varchar(50) NOT NULL,
  `UserState` varchar(50) NOT NULL,
  `UserZipCode` varchar(25) NOT NULL,
  `UserEmailVerified` tinyint(1) NOT NULL,
  `UserRegistrationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UserPhoneNo` int(15) DEFAULT NULL,
  `UserCountry` varchar(50) NOT NULL,
  `UserAddr` varchar(50) NOT NULL,
  `UserAddr2` varchar(50) DEFAULT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `optiongroup`
--
ALTER TABLE `optiongroup`
  ADD PRIMARY KEY (`OptionGroupId`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`OptionId`),
  ADD KEY `OptionGroupName` (`OptionGroupName`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`DetailsID`),
  ADD KEY `DetailsOrderID` (`DetailsOrderID`),
  ADD KEY `DetailsProductID` (`DetailsProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `OrderUserID` (`OrderUserID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ProductCatagoryName` (`ProductCatagoryName`);

--
-- Indexes for table `productcatagory`
--
ALTER TABLE `productcatagory`
  ADD PRIMARY KEY (`CatagoryID`),
  ADD UNIQUE KEY `CatagoryName` (`CatagoryName`);

--
-- Indexes for table `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`ProductOptionID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `OptionID` (`OptionID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD KEY `productId` (`productId`),
  ADD KEY `CatagoryID` (`CatagoryID`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `optiongroup`
--
ALTER TABLE `optiongroup`
  MODIFY `OptionGroupId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `OptionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `DetailsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- AUTO_INCREMENT for table `productcatagory`
--
ALTER TABLE `productcatagory`
  MODIFY `CatagoryID` int(101) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `ProductOptionID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`DetailsOrderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`DetailsProductID`) REFERENCES `product` (`ProductID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`OrderUserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ProductCatagoryName`) REFERENCES `productcatagory` (`CatagoryName`);

--
-- Constraints for table `productoptions`
--
ALTER TABLE `productoptions`
  ADD CONSTRAINT `productoptions_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  ADD CONSTRAINT `productoptions_ibfk_2` FOREIGN KEY (`OptionID`) REFERENCES `options` (`OptionId`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`ProductID`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`CatagoryID`) REFERENCES `productcatagory` (`CatagoryID`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
