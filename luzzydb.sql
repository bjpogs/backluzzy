-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 07:00 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

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
-- Table structure for table `carttbl`
--

CREATE TABLE `carttbl` (
  `cart_num` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `request` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carttbl`
--

INSERT INTO `carttbl` (`cart_num`, `user_id`, `product_id`, `request`) VALUES
(36, 123123123, 10425875, ''),
(37, 123123123, 11743053, ''),
(38, 123123123, 10425875, '');

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl`
--

CREATE TABLE `ordertbl` (
  `num` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `order_request` varchar(250) NOT NULL
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
  `product_size` varchar(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `product_description` varchar(250) DEFAULT NULL,
  `product_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttbl`
--

INSERT INTO `producttbl` (`num`, `product_id`, `product_name`, `product_category`, `product_price`, `product_size`, `product_qty`, `product_image`, `product_description`, `product_status`) VALUES
(21, 13658271, 'ANNIVERSARY DESIGN 1', 'ANNIVERSARY', 600, '', 3, 'http://localhost:4000\\Images\\product_image-1655199597986.jpg', '', 0),
(22, 15129064, 'ANNIVERSARY DESIGN 2', 'ANNIVERSARY', 600, '', 3, 'http://localhost:4000\\Images\\product_image-1655199858614.jpg', '', 0),
(23, 18766323, 'ANNIVERSARY CAKE 1', 'ANNIVERSARY', 1200, '', 2, 'http://localhost:4000\\Images\\product_image-1655440974545.jpg', '', 0),
(24, 17356989, 'ANNIVERSARY CAKE 2', 'ANNIVERSARY', 1000, '', 2, 'http://localhost:4000\\Images\\product_image-1655440994209.jpg', '', 0),
(25, 10757590, 'BENTO 1', 'BENTO', 300, '', 2, 'http://localhost:4000\\Images\\product_image-1655441053167.jpg', '', 0),
(26, 10711029, 'BENTO 2', 'BENTO', 300, '', 2, 'http://localhost:4000\\Images\\product_image-1655441058696.jpg', '', 0),
(27, 14267702, 'BENTO 3', 'BENTO', 300, '', 2, 'http://localhost:4000\\Images\\product_image-1655441064402.jpg', '', 0),
(28, 14819923, 'BENTO 4', 'BENTO', 300, '', 2, 'http://localhost:4000\\Images\\product_image-1655441069767.jpg', '', 0),
(29, 14666078, 'BENTO 5', 'BENTO', 300, '', 2, 'http://localhost:4000\\Images\\product_image-1655441074756.jpg', '', 0),
(30, 15080663, 'BENTO 6', 'BENTO', 300, '', 2, 'http://localhost:4000\\Images\\product_image-1655441082042.jpg', '', 0),
(31, 13632354, 'BIRTHDAY 1', 'BIRTHDAY', 1200, '7X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441307718.jpg', 'Birthday cake', 0),
(32, 16223096, 'BIRTHDAY 2', 'BIRTHDAY', 1200, '7X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441322451.jpg', 'Birthday cake', 0),
(33, 15233437, 'BIRTHDAY 3', 'BIRTHDAY', 1200, '7X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441333557.jpg', 'Birthday cake', 0),
(34, 11054841, 'BIRTHDAY 4', 'BIRTHDAY', 1200, '7X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441339675.jpg', 'Birthday cake', 0),
(35, 18101179, 'CHARACTER 1', 'CHARACTER', 1000, '6X4\"', 1, 'http://localhost:4000\\Images\\product_image-1655441436034.jpg', 'Birthday cake', 0),
(36, 13723330, 'CHARACTER 2', 'CHARACTER', 1000, '6X4\"', 1, 'http://localhost:4000\\Images\\product_image-1655441440667.jpg', 'Birthday cake', 0),
(37, 17951320, 'CHRISTENING 1', 'CHRISTENING', 1300, '8X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441471914.jpg', 'Birthday cake', 0),
(38, 18159052, 'CHRISTENING 2', 'CHRISTENING', 1300, '8X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441490217.jpg', 'Birthday cake', 0),
(39, 11922610, 'CUPCAKE 1', 'CUPCAKE', 600, '6X2\"', 1, 'http://localhost:4000\\Images\\product_image-1655441524296.jpg', 'Birthday cake', 0),
(40, 16519532, 'CUPCAKE 2', 'CUPCAKE', 600, '6X2\"', 1, 'http://localhost:4000\\Images\\product_image-1655441529052.jpg', 'Birthday cake', 0),
(41, 14989330, 'CUPCAKE 3', 'CUPCAKE', 600, '6X2\"', 1, 'http://localhost:4000\\Images\\product_image-1655441538668.jpg', 'Birthday cake', 0),
(42, 17375893, 'CUPCAKE 4', 'CUPCAKE', 600, '6X2\"', 1, 'http://localhost:4000\\Images\\product_image-1655441546616.jpg', 'Birthday cake', 0),
(43, 10093668, 'DEBUT 1', 'DEBUT', 3000, '8X5\"', 1, 'http://localhost:4000\\Images\\product_image-1655441622506.jpg', 'Birthday cake', 0),
(44, 14490939, 'DEBUT 2', 'DEBUT', 3000, '8X5\"', 1, 'http://localhost:4000\\Images\\product_image-1655441630679.jpg', 'Birthday cake', 0),
(45, 17523095, 'DEBUT 3', 'DEBUT', 3000, '8X5\"', 1, 'http://localhost:4000\\Images\\product_image-1655441638594.jpg', 'Birthday cake', 0),
(46, 15414933, 'GENDER 1', 'GENDER', 1300, '8X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441757914.jpg', 'Gender reveal cake', 0),
(47, 16238302, 'GENDER 2', 'GENDER', 1300, '8X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441765413.jpg', 'Gender reveal cake', 0),
(48, 15872710, 'NUMBER 1', 'NUMBER', 1000, '', 1, 'http://localhost:4000\\Images\\product_image-1655441803285.jpg', 'Gender reveal cake', 0),
(49, 15430861, 'NUMBER 2', 'NUMBER', 1000, '', 1, 'http://localhost:4000\\Images\\product_image-1655441819131.jpg', 'number cakes', 0),
(50, 13729403, 'NUMBER 3', 'NUMBER', 1000, '', 1, 'http://localhost:4000\\Images\\product_image-1655441827156.jpg', 'number cakes', 0),
(51, 12105926, 'WEDDING 1', 'WEDDING', 1500, '7X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441881728.jpg', 'Wedding Cake', 0),
(52, 12897483, 'WEDDING 2', 'WEDDING', 1500, '7X3\"', 1, 'http://localhost:4000\\Images\\product_image-1655441895264.jpg', 'Wedding Cake', 0),
(53, 12159310, 'WEDDING 3', 'WEDDING', 3000, '8x5\"', 1, 'http://localhost:4000\\Images\\product_image-1655441909906.jpg', 'Wedding Cake', 0);

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
(1, 12506414, 'kaguya', 'shinomiya', '123123', '213123', 'bjpogs26@gmail.com', '2022-06-23', '10:00 AM', 'http://localhost:4000\\Images\\image-1655091226665.jpg', '6x2', ''),
(2, 14380299, 'asd', 'asdf', 'asdfasdf', '123123', 'asdf.asdfa@asdf.asdf', '2022-06-23', '10:00 AM', 'http://localhost:4000\\Images\\image-1655174030628.jpg', '6x2', ''),
(3, 15582251, 'asd', 'asd', 'asdasd', '12323', 'asd@asd.asd', '2022-06-22', '10:00 AM', 'http://localhost:4000\\Images\\image-1655174130989.jpg', '6x2', ''),
(4, 15033801, 'asd', 'asd', 'asd', '123', 'asdf.asdfa@asdf.asdf', '2022-06-24', '10:00 AM', 'http://localhost:4000\\Images\\image-1655174177641.jpg', '6x2', '');

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
(2, 123123123, 'Shouko', '', 'Komi', '12/25/2005', '123', '12312', '3123', 'cavite', '12312312', 'shouko.komi@gmail.com');

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
-- Indexes for table `carttbl`
--
ALTER TABLE `carttbl`
  ADD PRIMARY KEY (`cart_num`);

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
-- AUTO_INCREMENT for table `carttbl`
--
ALTER TABLE `carttbl`
  MODIFY `cart_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ordertbl`
--
ALTER TABLE `ordertbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producttbl`
--
ALTER TABLE `producttbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `reservationtbl`
--
ALTER TABLE `reservationtbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
