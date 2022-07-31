-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 04:39 PM
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
-- Table structure for table `buildcaketbl`
--

CREATE TABLE `buildcaketbl` (
  `buildcakenum` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `size` varchar(100) NOT NULL,
  `shape` varchar(50) NOT NULL,
  `flavor` varchar(100) NOT NULL,
  `design` varchar(100) NOT NULL,
  `topping` varchar(100) NOT NULL,
  `topper` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL,
  `icing` varchar(25) NOT NULL,
  `number` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `dateplaced` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buildcaketbl`
--

INSERT INTO `buildcaketbl` (`buildcakenum`, `product_id`, `user_id`, `size`, `shape`, `flavor`, `design`, `topping`, `topper`, `message`, `icing`, `number`, `price`, `dateplaced`) VALUES
(15, 10315949, 123123123, '6x2 inch (1 tier)', 'Circle', 'Ube', 'Design 1', 'None', 'None', '', 'Butter Cream', '0', 0, '2022-07-31 13:27:56'),
(16, 17222996, 123123123, '7x3 inch (1 tier)', 'Square', 'Moist Chocolate', 'Design 4', 'Topping 3', 'Dedication', 'Wala lang trip trip ko lang', 'Fondant', '', 0, '2022-07-31 14:21:44');

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

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl`
--

CREATE TABLE `ordertbl` (
  `num` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_date` varchar(100) DEFAULT NULL,
  `order_request` varchar(250) NOT NULL,
  `placeddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertbl`
--

INSERT INTO `ordertbl` (`num`, `order_id`, `user_id`, `product_id`, `order_date`, `order_request`, `placeddate`) VALUES
(18, 14330845, 123123123, 13632354, NULL, '', '2022-07-31 14:17:49'),
(19, 18328614, 123123123, 17222996, '2022-08-26', '', '2022-07-31 14:21:44');

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
  `product_status` int(11) NOT NULL,
  `product_flavor` varchar(25) NOT NULL,
  `product_shape` varchar(25) NOT NULL,
  `product_icing` varchar(25) NOT NULL,
  `product_layer` int(11) NOT NULL,
  `product_tier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttbl`
--

INSERT INTO `producttbl` (`num`, `product_id`, `product_name`, `product_category`, `product_price`, `product_size`, `product_qty`, `product_image`, `product_description`, `product_status`, `product_flavor`, `product_shape`, `product_icing`, `product_layer`, `product_tier`) VALUES
(23, 18766323, 'ANNIVERSARY CAKE 1', 'Events', 1200, '6 x 4 inch', 2, 'http://localhost:4000\\Images\\product_image-1656337854053.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(24, 17356989, 'ANNIVERSARY CAKE 2', 'Events', 1000, '6 x 4 inch', 2, 'http://localhost:4000\\Images\\product_image-1655440994209.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(25, 10757590, 'BENTO 1', 'Simple', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441053167.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(26, 10711029, 'BENTO 2', 'Simple', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441058696.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(27, 14267702, 'BENTO 3', 'Simple', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441064402.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(28, 14819923, 'BENTO 4', 'Simple', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441069767.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(29, 14666078, 'BENTO 5', 'Simple', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441074756.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(30, 15080663, 'BENTO 6', 'Simple', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441082042.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(31, 13632354, 'BIRTHDAY 1', 'Events', 1200, '7 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441307718.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(32, 16223096, 'BIRTHDAY 2', 'Events', 1200, '7 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441322451.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(33, 15233437, 'BIRTHDAY 3', 'Events', 1200, '7 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441333557.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(34, 11054841, 'BIRTHDAY 4', 'Events', 1200, '7 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441339675.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(35, 18101179, 'CHARACTER 1', 'Events', 1000, '6 x 4 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441436034.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(36, 13723330, 'CHARACTER 2', 'Events', 1000, '6 x 4 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441440667.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(37, 17951320, 'CHRISTENING 1', 'Events', 1300, '8 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441471914.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(38, 18159052, 'CHRISTENING 2', 'Events', 1300, '8 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441490217.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(39, 11922610, 'CUPCAKE 1', 'Cupcake', 600, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441524296.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(40, 16519532, 'CUPCAKE 2', 'Cupcake', 600, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441529052.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(41, 14989330, 'CUPCAKE 3', 'Cupcake', 600, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441538668.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(42, 17375893, 'CUPCAKE 4', 'Cupcake', 600, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441546616.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(43, 10093668, 'DEBUT 1', 'Events', 5000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441622506.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(44, 14490939, 'DEBUT 2', 'Events', 5000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441630679.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(45, 17523095, 'DEBUT 3', 'Events', 5000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441638594.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(46, 15414933, 'GENDER 1', 'Events', 1500, '8 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441757914.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 2, 1),
(47, 16238302, 'GENDER 2', 'Events', 1500, '8 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441765413.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 2, 1),
(48, 15872710, 'NUMBER 1', 'Simple', 1000, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441803285.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(49, 15430861, 'NUMBER 2', 'Simple', 1000, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441819131.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(50, 13729403, 'NUMBER 3', 'Simple', 1000, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441827156.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(51, 12105926, 'WEDDING 1', 'Events', 5000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441881728.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 3),
(52, 12897483, 'WEDDING 2', 'Events', 1500, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441895264.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(53, 12159310, 'WEDDING 3', 'Events', 3000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441909906.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(54, 11409034, 'ANNIVERSARRY CAKE 3', 'Events', 1500, '6 x 3 inch', 0, 'http://localhost:4000\\Images\\product_image-1656324317866.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 3, 1);

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
  `flavor` varchar(25) NOT NULL,
  `icing` varchar(25) NOT NULL,
  `specialrequest` varchar(250) NOT NULL,
  `placeddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservationtbl`
--

INSERT INTO `reservationtbl` (`num`, `reservation_id`, `first_name`, `last_name`, `address`, `contact_number`, `email`, `pickupdate`, `pickuptime`, `image`, `size`, `flavor`, `icing`, `specialrequest`, `placeddate`) VALUES
(10, 16275924, 'Aki', 'Shino', 'somewhere in etivac', '012312', 'shino.aki@gmail.com', '2022-08-26', '10:00 AM', 'http://localhost:4000\\Images\\image-1659278312189.jpeg', '7x3 inch', 'Moist-Chocolate', 'Whipped Cream', '', '2022-07-31 14:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `selecttbl`
--

CREATE TABLE `selecttbl` (
  `num` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selecttbl`
--

INSERT INTO `selecttbl` (`num`, `id`, `name`, `price`) VALUES
(1, 'size', '6x2 inch (1 tier)', 600),
(2, 'size', '6x4 inch (1 tier)', 1000),
(3, 'size', '7x3 inch (1 tier)', 1200),
(4, 'size', '8x3 inch (1 tier)', 1400),
(5, 'size', '7x3 inch (2 tier)', 1500),
(6, 'size', '8x5 inch (2 tier)', 3000),
(10, 'flavor', 'Ube', 0),
(11, 'flavor', 'Moist Chocolate', 0),
(12, 'flavor', 'Vanilla Caramel', 0),
(13, 'design', 'Design 1', 0),
(14, 'design', 'Design 2', 0),
(15, 'design', 'Design 3', 0),
(16, 'design', 'Design 4', 0),
(17, 'design', 'Design 5', 0),
(18, 'topping', 'Topping 1', 200),
(19, 'topping', 'Topping 2', 100),
(20, 'topping', 'Topping 3', 200),
(21, 'topping', 'Topping 4', 200),
(22, 'topping', 'Topping 5', 200),
(23, 'topper', 'Topper 1', 200),
(24, 'topper', 'Topper 2', 200),
(25, 'topper', 'Topper 3', 200),
(26, 'topper', 'Topper 4', 200),
(27, 'topper', 'Topper 5', 200),
(28, 'icing', 'Butter Cream', 0),
(29, 'icing', 'Fondant', 0),
(30, 'icing', 'Whipped Cream', 0),
(36, 'shape', 'Circle', 0),
(37, 'shape', 'Square', 0),
(38, 'shape', 'Rectangle', 0),
(39, 'design', 'Design 6', 0),
(40, 'design', 'Design 7', 0),
(41, 'design', 'Design 8', 0),
(42, 'design', 'Design 9', 0),
(43, 'design', 'Design 10', 0),
(44, 'topping', 'Topping 6', 200),
(45, 'topper', 'Topper 6', 200),
(46, 'topper', 'Number', 50),
(47, 'topper', 'Dedication', 0),
(48, 'topper', 'Money Pulling', 300),
(49, 'topper', 'Gender Reveal', 300);

-- --------------------------------------------------------

--
-- Table structure for table `statustbl`
--

CREATE TABLE `statustbl` (
  `num` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statustbl`
--

INSERT INTO `statustbl` (`num`, `order_id`, `user_id`, `status`) VALUES
(13, 14330845, 123123123, 'Completed'),
(14, 18328614, 123123123, 'To Pick Up'),
(16, 16275924, 16275924, 'Pending');

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
(2, 123123123, 'Shouko', '', 'Komi', '12/25/2005', '123', '12312', '3123', 'cavite', '12312312', 'shouko.komi@gmail.com'),
(3, 12646981, 'Chika', '', 'Fujiwara', '2015-01-14', 'no', 'no', 'no', 'no', '123123123', 'chika.fujiwara@gmail.com');

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
(2, 202200001, 'adminluzzy', '$2a$10$iVuPQIC5qmNd16VpPzebMOn3VLfCU8erkn1TGN37tqa.Rsmch5E5u', 123),
(4, 123123123, 'test', '$2a$10$S0MYXTtOXssSIh081q4WWufu5Sm5mXHQ6457kU0t1ptHobumDOhPu', 0),
(5, 12978673, 'asd', '$2a$10$Rlpoq.SXGwXWDkGNjFjvueAvk4bgXG1Kf8c673hmqOMP7D6ptRc2G', 0),
(16, 12646981, 'test1', '$2a$10$BYk6dVFDUo34V6jO1CaeiO2EvGJ0OqCHtK0oy4rsI94O6jhHjPtcm', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildcaketbl`
--
ALTER TABLE `buildcaketbl`
  ADD PRIMARY KEY (`buildcakenum`),
  ADD UNIQUE KEY `order_id` (`product_id`);

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
-- Indexes for table `selecttbl`
--
ALTER TABLE `selecttbl`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `statustbl`
--
ALTER TABLE `statustbl`
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
  ADD PRIMARY KEY (`num`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildcaketbl`
--
ALTER TABLE `buildcaketbl`
  MODIFY `buildcakenum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `carttbl`
--
ALTER TABLE `carttbl`
  MODIFY `cart_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `ordertbl`
--
ALTER TABLE `ordertbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `producttbl`
--
ALTER TABLE `producttbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `reservationtbl`
--
ALTER TABLE `reservationtbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `selecttbl`
--
ALTER TABLE `selecttbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `statustbl`
--
ALTER TABLE `statustbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userinfotbl`
--
ALTER TABLE `userinfotbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
