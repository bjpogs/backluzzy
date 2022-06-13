-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 12:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luzzydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl`
--

CREATE TABLE `ordertbl` (
  `num` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `producttbl`
--

CREATE TABLE `producttbl` (
  `num` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `product_description` varchar(250) NOT NULL,
  `product_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttbl`
--

INSERT INTO `producttbl` (`num`, `product_id`, `product_name`, `product_category`, `product_price`, `product_qty`, `product_image`, `product_description`, `product_status`) VALUES
(13, 14442715, 'BENTO CAKE xdqw', 'BENTO', 300, 2, 'http://localhost:4000\\Images\\product_image-1655054226033.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec augue nunc, pretium at augue at, convallis pellentesque ipsum. Vestibulum diam risus, sagittis at fringilla at, pulvinar vel risus. \r\n', 1),
(14, 10425875, 'BENTO CAKE pt1', 'BENTO', 300, 2, 'http://localhost:4000\\Images\\product_image-1655054344083.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec augue nunc, pretium at augue at, convallis pellentesque ipsum. Vestibulum diam risus, sagittis at fringilla at, pulvinar vel risus. asdasdasdasd', 1),
(15, 12290141, 'BENTO CAKE pt 2', 'BENTO', 300, 2, 'http://localhost:4000\\Images\\product_image-1655054368258.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec augue nunc, pretium at augue at, convallis pellentesque ipsum. Vestibulum diam risus, sagittis at fringilla at, pulvinar vel risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservationtbl`
--

CREATE TABLE `reservationtbl` (
  `num` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pickupdate` varchar(50) NOT NULL,
  `pickuptime` varchar(10) NOT NULL,
  `image` varchar(250) NOT NULL,
  `size` varchar(20) NOT NULL,
  `specialrequest` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservationtbl`
--

INSERT INTO `reservationtbl` (`num`, `reservation_id`, `first_name`, `last_name`, `address`, `contact_number`, `email`, `pickupdate`, `pickuptime`, `image`, `size`, `specialrequest`) VALUES
(1, 12506414, 'kaguya', 'shinomiya', '123123', '213123', 'bjpogs26@gmail.com', '2022-06-23', '10:00 AM', 'http://localhost:4000\\Images\\image-1655091226665.jpg', '6x2', '');

-- --------------------------------------------------------

--
-- Table structure for table `userinfotbl`
--

CREATE TABLE `userinfotbl` (
  `num` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birthday` varchar(15) NOT NULL,
  `add_house` varchar(250) NOT NULL,
  `add_brgy` varchar(250) NOT NULL,
  `add_city` varchar(250) NOT NULL,
  `add_province` varchar(250) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email_address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfotbl`
--

INSERT INTO `userinfotbl` (`num`, `user_id`, `first_name`, `middle_name`, `last_name`, `birthday`, `add_house`, `add_brgy`, `add_city`, `add_province`, `contact_no`, `email_address`) VALUES
(1, 202200001, 'Kaguya', '', 'Shinomiya', '01/01/2003', 'kanto lang\r\n', 'Navarro', 'General Trias', 'Cavite', '09123456789', 'kaguya.shinomiya@cvsu.edu.ph'),
(2, 123123123, 'Shouko', '', 'Komi', '12/25/2005', '123', '12312', '3123', '123', '12312312', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE `usertbl` (
  `num` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `usercategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`num`, `user_id`, `username`, `password`, `usercategory`) VALUES
(2, 202200001, 'testuser', '$2a$10$iVuPQIC5qmNd16VpPzebMOn3VLfCU8erkn1TGN37tqa.Rsmch5E5u', 123),
(3, 123123123, 'test', '$2a$10$X.gt9P/6u8pCiHxOLzrJv.apItTrYD1stHB0hiYKDvfPtIo.Sa6eq', 0),
(4, 123123123, 'test', '$2a$10$S0MYXTtOXssSIh081q4WWufu5Sm5mXHQ6457kU0t1ptHobumDOhPu', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ordertbl`
--
ALTER TABLE `ordertbl`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `producttbl`
--
ALTER TABLE `producttbl`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `reservationtbl`
--
ALTER TABLE `reservationtbl`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `userinfotbl`
--
ALTER TABLE `userinfotbl`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ordertbl`
--
ALTER TABLE `ordertbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producttbl`
--
ALTER TABLE `producttbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reservationtbl`
--
ALTER TABLE `reservationtbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userinfotbl`
--
ALTER TABLE `userinfotbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
