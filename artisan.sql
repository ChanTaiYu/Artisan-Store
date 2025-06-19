-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2025 at 02:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artisan`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop_admin_registrations`
--

CREATE TABLE `shop_admin_registrations` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_admin_registrations`
--

INSERT INTO `shop_admin_registrations` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'password', 'ad@cake.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Keycap', 'cat1.jpg'),
(2, 'Keychain', 'cat2.jpg'),
(3, 'Mousepad\r\n', 'cat3.jpg'),
(4, 'Camera Skin', 'cat4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_orders`
--

CREATE TABLE `shop_orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_orders`
--

INSERT INTO `shop_orders` (`orders_id`, `users_id`, `delivery_date`, `payment_method`, `total_amount`) VALUES
(1, 2, '2020-08-09', 'Cash', '1000'),
(2, 3, '2022-10-04', 'Cash', '500'),
(3, 3, '2025-06-13', 'Cash', '500'),
(4, 3, '2025-06-05', 'Cash', '500');

-- --------------------------------------------------------

--
-- Table structure for table `shop_orders_detail`
--

CREATE TABLE `shop_orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_orders_detail`
--

INSERT INTO `shop_orders_detail` (`orders_detail_id`, `orders_id`, `product_name`, `quantity`) VALUES
(4, 3, 'Keycap #4', 1),
(5, 4, 'Keycap #3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'Keycap #1', 1, '500', 'this is a testing product', 'Tralalelo Tralala.jpg'),
(2, 'Keycap #2', 1, '500', 'This is a testing product.', 'Tralalelo Tralala.jpg'),
(3, 'Keycap #3', 1, '500', 'This is a testing product.', 'Tralalelo Tralala.jpg'),
(4, 'Keycap #4', 1, '500', 'This is testing 123123', 'Tralalelo Tralala.jpg'),
(5, 'Keychain #1', 2, '100', 'This is a testing prodct', 'Tralalelo Tralala.jpg'),
(6, 'Keychain #2', 2, '100', 'This is a testsss', 'Tralalelo Tralala.jpg'),
(7, 'Keychain #3', 2, '100', 'smooth~ like butter~', 'Tralalelo Tralala.jpg'),
(8, 'Cam Skin', 4, '050', 'This a testing product', 'Tralalelo Tralala.jpg'),
(9, 'mousepad #1', 3, '025', 'testing123', 'Tralalelo Tralala.jpg'),
(10, 'Mousepad #2', 3, '025', 'bgiafakfbfquffedgeq', 'Tralalelo Tralala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_registrations`
--

CREATE TABLE `users_registrations` (
  `users_id` int(11) NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_registrations`
--

INSERT INTO `users_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`) VALUES
(1, 'abhie', 'abhie@hh.com', '123456789', '2147483647', 'this is address'),
(2, 'two', '2@vo.com', '147258', '9876543210', 'This is address'),
(3, 'junjie', 'teohjunjie@gmail.com', '12345', '0123456789', 'testing123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shop_admin_registrations`
--
ALTER TABLE `shop_admin_registrations`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `shop_orders_detail`
--
ALTER TABLE `shop_orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users_registrations`
--
ALTER TABLE `users_registrations`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop_admin_registrations`
--
ALTER TABLE `shop_admin_registrations`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_orders`
--
ALTER TABLE `shop_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop_orders_detail`
--
ALTER TABLE `shop_orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_registrations`
--
ALTER TABLE `users_registrations`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
