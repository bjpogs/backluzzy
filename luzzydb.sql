-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 10:59 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

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
  `layer` varchar(50) NOT NULL,
  `flavor` varchar(100) NOT NULL,
  `design` varchar(100) NOT NULL,
  `design1` varchar(100) NOT NULL,
  `topper` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL,
  `specialrequest` varchar(25) NOT NULL,
  `number` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `dateplaced` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buildcaketbl`
--

INSERT INTO `buildcaketbl` (`buildcakenum`, `product_id`, `user_id`, `size`, `layer`, `flavor`, `design`, `design1`, `topper`, `message`, `specialrequest`, `number`, `price`, `dateplaced`, `date`) VALUES
(20, 14126965, 123123123, '6x2', '1', 'Ube', 'Plain', '', 'None', '', '', '', 600, '2022-12-18 09:32:02', ''),
(21, 15121431, 16026877, '6x2', '1', 'Ube', 'Choco-Strawberry', '', 'Anniversary', '', '', '', 700, '2023-01-17 09:36:15', '');

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
  `order_request` varchar(250) DEFAULT NULL,
  `placeddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertbl`
--

INSERT INTO `ordertbl` (`num`, `order_id`, `user_id`, `product_id`, `order_date`, `order_request`, `placeddate`) VALUES
(27, 18189926, 123123123, 14126965, '', NULL, '2022-12-18 09:32:02'),
(28, 15076337, 16026877, 15121431, '', NULL, '2023-01-17 09:36:15'),
(29, 10416955, 16026877, 10757590, NULL, '', '2023-01-17 09:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `producttbl`
--

CREATE TABLE `producttbl` (
  `num` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_subcategory` varchar(50) NOT NULL,
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

INSERT INTO `producttbl` (`num`, `product_id`, `product_name`, `product_category`, `product_subcategory`, `product_price`, `product_size`, `product_qty`, `product_image`, `product_description`, `product_status`, `product_flavor`, `product_shape`, `product_icing`, `product_layer`, `product_tier`) VALUES
(23, 18766323, 'ANNIVERSARY CAKE 1', 'Events', 'Anniversary', 1200, '6 x 4 inch', 2, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1656337854053.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(24, 17356989, 'ANNIVERSARY CAKE 2', 'Events', 'Anniversary', 1000, '6 x 4 inch', 2, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655440994209.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(25, 10757590, 'BENTO 1', 'Simple', '', 300, '6 x 2 inch', 2, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441053167.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(26, 10711029, 'BENTO 2', 'Simple', '', 300, '6 x 2 inch', 2, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441058696.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(27, 14267702, 'BENTO 3', 'Simple', '', 300, '6 x 2 inch', 2, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441064402.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(28, 14819923, 'BENTO 4', 'Simple', '', 300, '6 x 2 inch', 2, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441069767.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(29, 14666078, 'BENTO 5', 'Simple', '', 300, '6 x 2 inch', 2, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441074756.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(30, 15080663, 'BENTO 6', 'Simple', '', 300, '6 x 2 inch', 2, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441082042.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(31, 13632354, 'BIRTHDAY 1', 'Events', 'Birthday', 1200, '7 x 3 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441307718.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(32, 16223096, 'BIRTHDAY 2', 'Events', 'Birthday', 1200, '7 x 3 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441322451.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(33, 15233437, 'BIRTHDAY 3', 'Events', 'Birthday', 1200, '7 x 3 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441333557.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(34, 11054841, 'BIRTHDAY 4', 'Events', 'Birthday', 1200, '7 x 3 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441339675.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(35, 18101179, 'CHARACTER 1', 'Events', 'Character', 1000, '6 x 4 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441436034.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(36, 13723330, 'CHARACTER 2', 'Events', 'Character', 1000, '6 x 4 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441440667.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(37, 17951320, 'CHRISTENING 1', 'Events', 'Christening', 1300, '8 x 3 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441471914.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(38, 18159052, 'CHRISTENING 2', 'Events', 'Christening', 1300, '8 x 3 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441490217.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(39, 11922610, 'CUPCAKE 1', 'Cupcake', '', 600, '2 x 2 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441524296.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(40, 16519532, 'CUPCAKE 2', 'Cupcake', '', 600, '2 x 2 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441529052.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(41, 14989330, 'CUPCAKE 3', 'Cupcake', '', 600, '2 x 2 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441538668.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(42, 17375893, 'CUPCAKE 4', 'Cupcake', '', 600, '2 x 2 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441546616.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(43, 10093668, 'DEBUT 1', 'Events', 'Debut', 5000, '8 x 5 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441622506.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(44, 14490939, 'DEBUT 2', 'Events', 'Debut', 5000, '8 x 5 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441630679.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(45, 17523095, 'DEBUT 3', 'Events', 'Debut', 5000, '8 x 5 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441638594.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(46, 15414933, 'GENDER 1', 'Events', 'Gender', 1500, '8 x 3 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441757914.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 2, 1),
(47, 16238302, 'GENDER 2', 'Events', 'Gender', 1500, '8 x 3 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441765413.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 2, 1),
(48, 15872710, 'NUMBER 1', 'Simple', '', 1000, '2 x 2 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441803285.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(49, 15430861, 'NUMBER 2', 'Simple', '', 1000, '2 x 2 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441819131.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(50, 13729403, 'NUMBER 3', 'Simple', '', 1000, '2 x 2 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441827156.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(51, 12105926, 'WEDDING 1', 'Events', 'Wedding', 5000, '8 x 5 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441881728.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 3),
(52, 12897483, 'WEDDING 2', 'Events', 'Wedding', 1500, '8 x 5 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441895264.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(53, 12159310, 'WEDDING 3', 'Events', 'Wedding', 3000, '8 x 5 inch', 1, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1655441909906.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(54, 11409034, 'ANNIVERSARRY CAKE', 'Events', 'Anniversary', 1500, '6 x 3 inch', 0, 'http://luzzysupremesweets.shop:4000\\Images\\product_image-1656324317866.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 3, 1);

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
  `price` double NOT NULL,
  `placeddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservationtbl`
--

INSERT INTO `reservationtbl` (`num`, `reservation_id`, `first_name`, `last_name`, `address`, `contact_number`, `email`, `pickupdate`, `pickuptime`, `image`, `size`, `flavor`, `icing`, `specialrequest`, `price`, `placeddate`) VALUES
(14, 11336767, 'Test', 'tsasd', '123124', '11241231', 'asd@asdas.asdf', '2022-12-14', '10:00 AM', 'http://luzzysupremesweets.shop:4000\\Images\\image-1671015457410.jpg', '6x2 inch', 'Ube', 'Butter Cream', '', 0, '2022-12-14 10:57:37'),
(15, 14884785, 'adf', 'asdf', 'asdf', '12312', 'bjpogs26@gmail.com', '2023-01-22', '10:00 AM', 'http://luzzysupremesweets.shop:4000\\Images\\image-1673946028928.jpg', '6x2 inch', 'Ube', 'Butter Cream', 'asdfasdf', 10000, '2023-01-17 09:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `selecttbl`
--

CREATE TABLE `selecttbl` (
  `num` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selecttbl`
--

INSERT INTO `selecttbl` (`num`, `id`, `name`, `price`, `image`) VALUES
(51, 'size', '6x2', 600, ''),
(52, 'size', '6x4', 1000, ''),
(53, 'size', '7x3', 1200, ''),
(54, 'size', '8x3', 1400, ''),
(55, 'flavor', 'Ube', 0, ''),
(56, 'flavor', 'Moist Chocolate', 0, ''),
(57, 'flavor', 'Vanilla Caramel', 0, ''),
(60, 'layer', '1', 0, ''),
(61, 'layer', '2', 500, ''),
(63, 'topper', 'number', 50, ''),
(64, 'topper', 'number - double', 100, ''),
(65, 'design', 'Chocolate', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671253637065.png'),
(66, 'design', 'Chocolate-Sprinkles', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255270324.png'),
(67, 'design', 'Strawberry', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255289143.png'),
(68, 'design', 'Cheese', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255308972.png'),
(72, 'topper', 'Anniversary', 100, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255460714.png'),
(73, 'topper', 'Birthday', 100, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255637415.png'),
(74, 'topper', 'Debut', 100, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255658322.png'),
(75, 'topper', 'Christening', 100, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255693388.png'),
(76, 'topper', 'Gender', 100, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255757255.png'),
(77, 'topper', 'Gender - Boy', 100, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255775260.png'),
(78, 'topper', 'Gender - Girl', 100, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671255789675.png'),
(79, 'design', 'Choco-Strawberry', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671272778049.png'),
(90, 'topper-number', '0', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671276950869.png'),
(91, 'topper-number', '1', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671276975499.png'),
(92, 'topper-number', '2', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671276984953.png'),
(93, 'topper-number', '3', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671277862252.png'),
(94, 'topper-number', '4', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671277871873.png'),
(95, 'topper-number', '5', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671277881196.png'),
(96, 'topper-number', '6', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671277893455.png'),
(97, 'topper-number', '7', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671277902830.png'),
(98, 'topper-number', '8', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671277912945.png'),
(99, 'topper-number', '9', 0, 'http://luzzysupremesweets.shop:4000\\Images\\image-1671277933789.png');

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
(25, 11336767, 11336767, 'Pending'),
(26, 18189926, 123123123, 'Pending'),
(27, 14884785, 14884785, 'To Pick Up'),
(28, 15076337, 16026877, 'To Pick Up'),
(29, 10416955, 16026877, 'To Pick Up');

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
(1, 202200001, 'Admin', '', 'Admin', '01/01/2003', 'kanto lang\r\n', 'Navarro', 'General Trias', 'Cavite', '09123456789', 'kaguya.shinomiya@cvsu.edu.ph'),
(2, 123123123, 'Shouko', '', 'Komi', '12/25/2005', '123', '12312', '3123', 'cavite', '12312312', 'shouko.komi@gmail.com'),
(3, 12646981, 'Chika', '', 'Fujiwara', '2015-01-14', 'no', 'no', 'no', 'no', '123123123', 'chika.fujiwara@gmail.com'),
(4, 16026877, 'Urushi', '', 'Yaotome', '2005-12-01', 'asd', 'asd', 'asd', 'asd', '123123', 'ariel.atienzajr@cvsu.edu.ph');

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
(16, 12646981, 'test1', '$2a$10$BYk6dVFDUo34V6jO1CaeiO2EvGJ0OqCHtK0oy4rsI94O6jhHjPtcm', 0),
(17, 16026877, 'bjpogs', '$2a$10$ZmyQ.FB4w2/d0/efxxPecu/U.UhzHuKVAxlWFVZu/DDGwwRrRVkfK', 0);

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
  MODIFY `buildcakenum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `carttbl`
--
ALTER TABLE `carttbl`
  MODIFY `cart_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ordertbl`
--
ALTER TABLE `ordertbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `producttbl`
--
ALTER TABLE `producttbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `reservationtbl`
--
ALTER TABLE `reservationtbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `selecttbl`
--
ALTER TABLE `selecttbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `statustbl`
--
ALTER TABLE `statustbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `userinfotbl`
--
ALTER TABLE `userinfotbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
