-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 06:17 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pasword` varchar(200) NOT NULL,
  `is_active` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'LG'),
(2, 'Samsung'),
(3, 'Apple\r\n\r\n'),
(4, 'Vivo'),
(5, 'Oppo'),
(6, 'allen solly'),
(7, 'peter england'),
(8, 'manyavar'),
(9, 'van hussen'),
(10, 'boat'),
(11, 'noise'),
(12, 'potronics'),
(13, 'potron'),
(14, 'tanishq'),
(15, 'malabar'),
(16, 'bluestone'),
(17, 'kalyan'),
(18, 'lakme'),
(19, 'maybelline'),
(20, 'mac'),
(21, 'minimalist'),
(22, 'kay beauty'),
(23, 'rimmel'),
(24, 'cocacola'),
(25, 'haldiram'),
(26, 'nescafe'),
(27, 'pilgrim');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_title` varchar(300) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Mobiles'),
(2, 'Fuenitures'),
(7, 'clothes'),
(8, 'jwellery'),
(9, 'electronics'),
(10, 'pharmacy'),
(11, 'beauty'),
(12, 'fresh');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `p_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product-id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product-title` varchar(255) NOT NULL,
  `product-price` int(100) NOT NULL,
  `product-qty` int(11) NOT NULL,
  `product-desc` text NOT NULL,
  `product-image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product-id`, `product_cat`, `product_brand`, `product-title`, `product-price`, `product-qty`, `product-desc`, `product-image`, `product_keywords`) VALUES
(3, 1, 2, 's22', 35000, 2, 'newly launched', 'phone1.jpg', 'mobiles,phones'),
(4, 1, 3, 'SE 2nd generation', 65000, 1, '', 'phone2.jpg', 'mobiles,phones'),
(5, 1, 4, 'y16', 10000, 1, 'newly lauched', 'phone3.jpg', 'mobiles,phones'),
(6, 1, 5, 'v15', 15999, 0, 'newly launched', 'phone4.jpg', 'mobiles,phones'),
(7, 7, 6, 'formal black blazer', 5960, 3, 'black colour\r\ncomfortable\r\nhigh quality', 'blzr.jpg', 'cloths'),
(8, 7, 7, 'formal pants for men', 2000, 1, 'grey colour\r\ncomfortable\r\nhighly recommended', 'frmlpnts.jpg', 'pants,men,formal,formalpants'),
(9, 7, 8, 'silk lehenga', 6799, 1, 'pink and black gradient lehenga\r\nart silk', 'lhnga.jpg', 'cloths,women,lehenga,silk,ethnic'),
(10, 7, 9, 'winters jacket for men', 3980, 1, 'white colour\r\nthick material\r\nhigh quality', 'shrtmen.jpg', 'shirt'),
(11, 9, 10, 'wireless blutooth', 890, 4, 'blue colour\r\ncomfortable\r\nsweat proof\r\nwireless', 'blutoth.jpg', 'blutooth,wireless headphones,wireless'),
(12, 9, 11, 'smart watch for men and women', 2999, 1, 'grey colour\r\nhighly recommended\r\nwater proof\r\ncalling', 'smrtwtch.jpg', 'watch,smart watch'),
(13, 9, 1, 'doubledoor black fridge', 40000, 1, '', 'fridge.jpg', 'fridge,doubledoor fridge,blackfridge'),
(14, 9, 2, 'smart tv 65inch', 89000, 1, '', 'smarttv.jpg', 'smart tv,tv,65inch tv'),
(15, 9, 13, 'oven', 15000, 1, 'highly recommend\r\nfamily size oven\r\n', 'ovn.jpg', 'oven'),
(16, 9, 12, 'induction', 4000, 1, 'black colour\r\nhighly recommended\r\n', 'indcton.jpg', 'induction oven,induction'),
(17, 8, 15, 'gold pendant', 5999, 1, 'girly pendant\r\nsmall in size\r\nquality checked', 'gldpndnt.jpg', 'pendant,women jewellery,gold'),
(18, 8, 14, 'gold and silver chain', 7568, 1, 'daily wear chain for women', 'gldslchain.jpg', 'gold chain,silver chain,gold and silver chain,chain'),
(19, 11, 18, 'mini lipstick', 1200, 2, 'red wine colour\r\ntravel friendly\r\nmini pack set of 2', 'lipstk.jpg', 'lipstick,mini lipstick,set lipstick'),
(20, 11, 22, 'aqua perfume', 1999, 1, 'aqua cool perfume fresh\r\n60ml\r\nfor women', 'prfum.jpg', 'perfume,scent'),
(21, 11, 20, 'nail enamel', 500, 1, 'rosegold colour\r\n15ml\r\nmirror shine', 'nailpnt.jpg', 'nail paint,nail enamel'),
(22, 11, 27, 'sulphate and paraben free shampoo', 599, 1, '100ml\r\nkorean beauty product\r\nfor men & women', 'shampoo.jpg', 'shampoo,pilgrim,sulphate and paraben free'),
(23, 11, 23, 'eyeshadow', 600, 1, '4 shades in one palate\r\nshade-brown', 'eyeshadow.jpg', 'eyeshadow,4 shades eyeshadow'),
(24, 11, 21, 'face serum', 600, 1, 'hayluronic acid\r\n30ml', 'fceserum.jpg', 'face serum,serum '),
(25, 12, 24, 'coke', 50, 1, '750ml\r\ncoke original', 'coke.jpg', 'fresh,coke'),
(26, 12, 25, 'mix namkeen', 100, 1, '350gram', 'mixnmkn.jpg', 'fresh,snacks,namkeen,mix namkeen'),
(27, 12, 26, 'nescafe gold', 300, 1, '150 gram', 'coffee.jpg', 'coffee,nescafe,nescafe gold'),
(28, 12, 27, '', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user-info`
--

CREATE TABLE `user-info` (
  `user-id` int(11) NOT NULL,
  `first-name` varchar(100) NOT NULL,
  `last-name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product-id`),
  ADD KEY `product-brand` (`product_brand`),
  ADD KEY `product-cat` (`product_cat`);

--
-- Indexes for table `user-info`
--
ALTER TABLE `user-info`
  ADD PRIMARY KEY (`user-id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product-id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user-info`
--
ALTER TABLE `user-info`
  MODIFY `user-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
