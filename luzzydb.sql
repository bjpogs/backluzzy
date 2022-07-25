-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 10:04 AM
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
  `flavor` varchar(100) NOT NULL,
  `design` varchar(100) NOT NULL,
  `topping1` varchar(100) NOT NULL,
  `topping2` varchar(100) NOT NULL,
  `topper` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL,
  `icing` varchar(25) NOT NULL,
  `number` varchar(10) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buildcaketbl`
--

INSERT INTO `buildcaketbl` (`buildcakenum`, `product_id`, `user_id`, `size`, `flavor`, `design`, `topping1`, `topping2`, `topper`, `message`, `icing`, `number`, `price`) VALUES
(1, 12592722, 123123123, '8x5', 'Moist-Chocolate', 'Design4', 'topping1', 'topping1', '', '', '', '', 0),
(2, 14129626, 123123123, '6x2', 'Ube', 'Design 1', '', '', '', '', '', '', 0),
(3, 11038300, 123123123, '6x2', 'Ube', 'Design 1', '', '', '', '', '', '', 0),
(4, 13975179, 123123123, '6x2', 'Ube', 'Design 1', '', '', '', '', '', '', 0),
(5, 13501559, 123123123, '6x2', 'Ube', 'Design 1', 'topping4', 'topping5', 'Happy Anniversary', '', '', '', 0),
(6, 15351688, 123123123, '6x2', 'Ube', 'Design 1', '', '', '', '', '', '', 0),
(7, 13930363, 123123123, '6 by 2 inch (1 layer)', 'Ube', 'Design 1', 'None', 'None', 'None', '', 'Butter Cream', '', 0),
(8, 15801741, 123123123, '6 by 2 inch (1 layer)', 'Ube', 'Design 1', 'None', 'None', 'None', '', 'Butter Cream', '', 0),
(9, 14462565, 123123123, '6 by 2 inch (1 layer)', 'Ube', 'Design 1', 'None', 'None', 'None', '', 'Butter Cream', '0', 0),
(10, 12861159, 123123123, '6 by 2 inch (1 layer)', 'Ube', 'Design 1', 'None', 'None', 'None', '', 'Butter Cream', '0', 0),
(11, 10156431, 123123123, '6 by 2 inch (1 layer)', 'Ube', 'Design 1', 'None', 'None', 'None', '', 'Butter Cream', '0', 0);

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
(44, 123123123, 18766323, '');

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
  `order_status` int(11) NOT NULL,
  `placeddate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertbl`
--

INSERT INTO `ordertbl` (`num`, `order_id`, `user_id`, `product_id`, `order_date`, `order_request`, `order_status`, `placeddate`) VALUES
(1, 12644302, 123123123, 13975179, NULL, '', 0, ''),
(2, 11587672, 123123123, 13501559, NULL, '', 0, ''),
(3, 14548175, 123123123, 15351688, '2022-06-22', '', 0, ''),
(4, 10563455, 123123123, 16223096, NULL, '', 0, ''),
(5, 14244843, 12646981, 14267702, NULL, '', 0, ''),
(6, 15903526, 123123123, 13632354, NULL, '', 0, ''),
(7, 11245534, 123123123, 13930363, NULL, '', 0, ''),
(8, 16398949, 123123123, 15801741, NULL, '', 0, ''),
(9, 13842155, 123123123, 14462565, 'not applicable', '', 0, ''),
(10, 14847354, 123123123, 12861159, 'not applicable', '', 0, ''),
(11, 13946378, 123123123, 10156431, '2022-07-28', '', 0, '');

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
(23, 18766323, 'ANNIVERSARY CAKE 1', 'ANNIVERSARY', 1200, '6 x 4 inch', 2, 'http://localhost:4000\\Images\\product_image-1656337854053.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(24, 17356989, 'ANNIVERSARY CAKE 2', 'ANNIVERSARY', 1000, '6 x 4 inch', 2, 'http://localhost:4000\\Images\\product_image-1655440994209.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(25, 10757590, 'BENTO 1', 'BENTO', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441053167.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(26, 10711029, 'BENTO 2', 'BENTO', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441058696.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(27, 14267702, 'BENTO 3', 'BENTO', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441064402.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(28, 14819923, 'BENTO 4', 'BENTO', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441069767.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(29, 14666078, 'BENTO 5', 'BENTO', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441074756.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(30, 15080663, 'BENTO 6', 'BENTO', 300, '6 x 2 inch', 2, 'http://localhost:4000\\Images\\product_image-1655441082042.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(31, 13632354, 'BIRTHDAY 1', 'BIRTHDAY', 1200, '7 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441307718.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(32, 16223096, 'BIRTHDAY 2', 'BIRTHDAY', 1200, '7 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441322451.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(33, 15233437, 'BIRTHDAY 3', 'BIRTHDAY', 1200, '7 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441333557.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Whipped Cream', 1, 1),
(34, 11054841, 'BIRTHDAY 4', 'BIRTHDAY', 1200, '7 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441339675.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(35, 18101179, 'CHARACTER 1', 'CHARACTER', 1000, '6 x 4 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441436034.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(36, 13723330, 'CHARACTER 2', 'CHARACTER', 1000, '6 x 4 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441440667.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(37, 17951320, 'CHRISTENING 1', 'CHRISTENING', 1300, '8 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441471914.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(38, 18159052, 'CHRISTENING 2', 'CHRISTENING', 1300, '8 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441490217.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 1),
(39, 11922610, 'CUPCAKE 1', 'CUPCAKE', 600, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441524296.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(40, 16519532, 'CUPCAKE 2', 'CUPCAKE', 600, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441529052.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(41, 14989330, 'CUPCAKE 3', 'CUPCAKE', 600, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441538668.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(42, 17375893, 'CUPCAKE 4', 'CUPCAKE', 600, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441546616.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(43, 10093668, 'DEBUT 1', 'DEBUT', 5000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441622506.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(44, 14490939, 'DEBUT 2', 'DEBUT', 5000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441630679.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(45, 17523095, 'DEBUT 3', 'DEBUT', 5000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441638594.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(46, 15414933, 'GENDER 1', 'GENDER', 1500, '8 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441757914.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 2, 1),
(47, 16238302, 'GENDER 2', 'GENDER', 1500, '8 x 3 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441765413.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 2, 1),
(48, 15872710, 'NUMBER 1', 'NUMBER', 1000, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441803285.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(49, 15430861, 'NUMBER 2', 'NUMBER', 1000, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441819131.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(50, 13729403, 'NUMBER 3', 'NUMBER', 1000, '2 x 2 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441827156.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Butter Cream', 1, 1),
(51, 12105926, 'WEDDING 1', 'WEDDING', 5000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441881728.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 3),
(52, 12897483, 'WEDDING 2', 'WEDDING', 1500, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441895264.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(53, 12159310, 'WEDDING 3', 'WEDDING', 3000, '8 x 5 inch', 1, 'http://localhost:4000\\Images\\product_image-1655441909906.jpg', 'Beatiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 1, 2),
(54, 11409034, 'ANNIVERSARRY CAKE 3', 'ANNIVERSARY', 1500, '6 x 3 inch', 0, 'http://localhost:4000\\Images\\product_image-1656324317866.jpg', 'Beautiful and delicious cakes handcrafted with love and care by Luzzy.', 0, 'Moist Chocolate', 'Circle', 'Fondant', 3, 1);

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
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservationtbl`
--

INSERT INTO `reservationtbl` (`num`, `reservation_id`, `first_name`, `last_name`, `address`, `contact_number`, `email`, `pickupdate`, `pickuptime`, `image`, `size`, `flavor`, `icing`, `specialrequest`, `status`) VALUES
(1, 12506414, 'kaguya', 'shinomiya', '123123', '213123', 'bjpogs26@gmail.com', '2022-06-23', '10:00 AM', 'http://localhost:4000\\Images\\image-1655091226665.jpg', '6x2', 'Ube', 'Fondant', '', 'Pending'),
(2, 14380299, 'asd', 'asdf', 'asdfasdf', '123123', 'asdf.asdfa@asdf.asdf', '2022-06-23', '10:00 AM', 'http://localhost:4000\\Images\\image-1655174030628.jpg', '6x2', 'Ube', 'Fondant', '', 'Pending'),
(3, 15582251, 'asd', 'asd', 'asdasd', '12323', 'asd@asd.asd', '2022-06-22', '10:00 AM', 'http://localhost:4000\\Images\\image-1655174130989.jpg', '6x2', 'Ube', 'Fondant', '', 'Pending'),
(4, 15033801, 'asd', 'asd', 'asd', '123', 'asdf.asdfa@asdf.asdf', '2022-06-24', '10:00 AM', 'http://localhost:4000\\Images\\image-1655174177641.jpg', '6x2', 'Vanilla Caramel', 'Fondant', '', 'Pending'),
(5, 18801414, 'Miku', 'Nakano', 'cavite bandang langit', '0912312312', 'bjpogs26@gmail.com', '2022-06-30', '01:00 PM', 'http://localhost:4000\\Images\\image-1656233428887.png', '7x3 3 layer', 'Moist-Chocolate', 'Fondant', 'wag masyadong matamis fondant.', 'Pending'),
(6, 10472147, 'asda', 'asdasd', 'asdasd', '112312', 'aasd@asdasd.com', '2022-07-19', '10:00 AM', 'http://localhost:4000\\Images\\image-1658731555226.png', '6x2 inch', 'Ube', 'Butter Cream', '', ''),
(7, 16726514, '123', '123', '123', '123123', '1231@123121.12312', '2022-07-27', '10:00 AM', 'http://localhost:4000\\Images\\image-1658733549156.png', '8x3 inch', 'Vanilla-Caramel', 'Whipped Cream', 'fuck this ubo', '');

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
(1, 'size', '6 by 2 inch (1 layer)', 600),
(2, 'size', '7 by 3 inch (1 layer)', 600),
(3, 'size', '8 by 3 inch(1 layer)', 1300),
(4, 'size', '7 by 3 inch 2 tier(1 layer)', 1400),
(5, 'size', '8 by 5 inch 2 tier (1layer)', 1500),
(6, 'size', '7 by 3 inch 2 tier (2layer)', 2000),
(7, 'size', '8 by 5 inch 2 tier (2layer)', 2500),
(8, 'size', '7 by 3 inch 2 tier (3layer)', 3000),
(9, 'size', '8 by 5 inch 2 tier (3layer)', 3500),
(10, 'flavor', 'Ube', 0),
(11, 'flavor', 'Moist Chocolate', 0),
(12, 'flavor', 'Vanilla Caramel', 0),
(13, 'design', 'Design 1', 0),
(14, 'design', 'Design 2', 0),
(15, 'design', 'Design 3', 0),
(16, 'design', 'Design 4', 0),
(17, 'design', 'Design 5', 0),
(18, 'topping', 'Topping 1', 50),
(19, 'topping', 'Topping 2', 100),
(20, 'topping', 'Topping 3', 150),
(21, 'topping', 'Topping 4', 200),
(22, 'topping', 'Topping 5', 250),
(23, 'topper', 'Number', 100),
(24, 'topper', 'Happy Anniversary', 300),
(25, 'topper', 'Happy Birthday', 300),
(26, 'topper', 'Congratulations', 300),
(27, 'topper', 'Gender Reveal', 400),
(28, 'icing', 'Butter Cream', 0),
(29, 'icing', 'Fondant', 0),
(30, 'icing', 'Whipped Cream', 0),
(33, 'size', 'testing last', 12312),
(34, 'size', 'test last', 123);

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
(1, 14244843, 12646981, 'To Pick Up'),
(2, 15903526, 123123123, 'Pending'),
(3, 10563455, 123123123, 'Pending'),
(4, 14548175, 123123123, 'To Pick Up'),
(5, 11587672, 123123123, 'Processing'),
(6, 12644302, 123123123, 'To Pick Up'),
(7, 14847354, 123123123, 'Pending'),
(8, 13946378, 123123123, 'Pending');

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
  MODIFY `buildcakenum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carttbl`
--
ALTER TABLE `carttbl`
  MODIFY `cart_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ordertbl`
--
ALTER TABLE `ordertbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `producttbl`
--
ALTER TABLE `producttbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `reservationtbl`
--
ALTER TABLE `reservationtbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `selecttbl`
--
ALTER TABLE `selecttbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `statustbl`
--
ALTER TABLE `statustbl`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
