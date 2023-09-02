-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2023 at 08:31 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(7, 1, '001', 1500, 1, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(24, 1, '001', 'name', 1234567891, 'user@gmail.com', 'user at adddres'),
(25, 1, '001', 'name', 1234567891, 'user@gmail.com', 'user at adddres');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(11, 'img/istockphoto-1201582098-612x612.jpg'),
(12, 'img/photo-1584440772680-63bec399984b.jpeg'),
(13, 'img/istockphoto-1094434216-612x612.jpg'),
(14, 'img/istockphoto-1212447634-612x612.jpg'),
(15, 'img/photo-1638436684761-7e59f8a9072f.jpeg'),
(16, 'img/istockphoto-688602284-612x612.jpg'),
(17, 'img/istockphoto-1398348650-612x612.jpg'),
(18, 'img/photo-1583946193644-49fe1fe958cf.jpeg'),
(19, 'img/photo-1488477304112-4944851de03d.jpeg'),
(20, 'img/istockphoto-1212462756-612x612.jpg'),
(21, 'img/istockphoto-1383962772-612x612.jpg'),
(22, 'img/photo-1604329760661-e71dc83f8f26.jpeg'),
(24, 'img/photo-1505253364048-bf56659875a6.jpeg'),
(25, 'img/istockphoto-1299613532-612x612.jpg'),
(26, 'img/photo-1561994028-cc03b9f2b6ca.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(1, 'Commonfoods', '', 'Jollof Rice', 'Jollof Rice, Jollof Rice.', 1500, 'mimg/istockphoto-1383962716-612x612.jpg'),
(2, 'Commonfoods', '', 'Akara and Pap', 'Akara and Pap, Akara and Pap', 1300, 'mimg/istockphoto-1398348790-612x612.jpg'),
(3, 'Commonfoods', '', 'Spaghetti', 'Spaghetti, Spaghetti.', 1200, 'mimg/istockphoto-1169418585-612x612.jpg'),
(4, 'Swallow', '', 'Semo and Egusi', 'Semo and Egusi, Semo and Egusi.', 1300, 'mimg/istockphoto-1398351215-612x612.jpg'),
(5, 'Swallow', '', 'Amala and Ewedu with Assorted Stew', 'Amala and Ewedu, Amala and Ewedu.', 1600, 'mimg/istockphoto-1398349488-612x612.jpg'),
(6, 'Swallow', '', 'Eba and Vegetable Soup', 'Eba and Vegetable Soup, Eba and Vegetable Soup.', 1300, 'mimg/istockphoto-1327486548-612x612.jpg'),
(7, 'Bakedfoods', '', 'Oreo Cake', 'Oreo Cake, Oreo Cake.', 3000, 'mimg/istockphoto-1066186336-612x612.jpg'),
(8, 'Bakedfoods', '', 'Pizza', 'Pizza, Pizza.', 2000, 'mimg/photo-1506354666786-959d6d497f1a.jpeg'),
(9, 'Bakedfoods', '', 'Banana Bread', 'Banana Bread, Banana Bread.', 2500, 'mimg/photo-1505253364048-bf56659875a6.jpeg'),
(10, 'Snacks', '', 'Small chops', 'Pof pof, small chops.', 1200, 'mimg/pexels-photo-13915068.jpeg'),
(11, 'Snacks', '', 'Pancakes', 'Pancakes, Pancakes.', 1400, 'mimg/photo-1561994028-cc03b9f2b6ca.jpeg'),
(12, 'Snacks', '', 'Burger and Chips', 'Burger and Chips, Burger and Chips.', 3500, 'mimg/photo-1584313529099-8699b740540f.jpeg'),
(13, 'Snacks', '', 'Shawarma', 'Shawarma, Shawarma', 2500, 'mimg/istockphoto-1067935326-612x612.jpg'),
(14, 'Commonfoods', '', 'White Rice and Vegetables', 'White Rice and Vegetables, White Rice and Vegetables.', 1300, 'mimg/istockphoto-1218683959-612x612.jpg'),
(15, 'Commonfoods', '', 'Bread, Plantain and Beans', 'Bread, Plantain and Beans.', 1500, 'mimg/istockphoto-654775018-612x612.jpg'),
(16, 'Swallow', '', 'Pounded Yam and Efo Riro', 'Pounded Yam and Efo Riro.', 1600, 'mimg/istockphoto-1327486591-612x612.jpg'),
(17, 'Commonfoods', '', 'Jollof Rice with Grilled Chicken', 'Jollof Rice with Grilled Chicken.', 1700, 'mimg/istockphoto-688602284-612x612.jpg'),
(18, 'Commonfoods', '', 'White Rice and Stew', 'White Rice and Stew.', 1200, 'mimg/istockphoto-1169414404-612x612.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(6, '001', 'user', 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'Jack John', 'Excellent', 'Best Food, No go dey, inside that buksmi bite another bite dey inside!'),
(6, 'Cassian Tana', 'Excellent', 'Best Food in the Biz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
