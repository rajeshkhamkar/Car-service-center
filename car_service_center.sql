-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2021 at 03:44 AM
-- Server version: 5.6.50
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_service_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_user_id` varchar(255) NOT NULL,
  `cart_product_id` varchar(255) NOT NULL,
  `cart_price_per_unit` varchar(255) NOT NULL,
  `cart_quantity` varchar(255) NOT NULL,
  `cart_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Chenai'),
(4, 'Banglore'),
(5, 'Varanasi'),
(6, 'Kolkatta');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`) VALUES
(1, 'Go Mechanic'),
(2, 'Car Care'),
(3, 'True Value'),
(4, 'Mahindra Care');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_mobile` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_city` varchar(255) NOT NULL,
  `customer_state` varchar(255) NOT NULL,
  `customer_pincode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_mobile`, `customer_email`, `customer_password`, `customer_address`, `customer_city`, `customer_state`, `customer_pincode`) VALUES
(1, 'Amit Kumar', '9876543212', 'amit@gmail.com', 'test', 'Allahabad', 'Mumbai', '4', '201301'),
(2, 'Kaushal Kishore', '9183769868', 'kaushal.rahuljaiswal@gmail.com', 'test', 'A : 42/6 Sector 62', 'Noida', '2', '26101'),
(3, 'Amit', '9876543212', 'rahul@gmail.com', 'test', 'Test', 'Test', '3', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_manager_id` varchar(255) NOT NULL,
  `employee_role` varchar(255) NOT NULL,
  `employee_sal` varchar(100) NOT NULL,
  `employee_first_name` varchar(100) NOT NULL,
  `employee_middle_name` varchar(100) NOT NULL,
  `employee_last_name` varchar(100) NOT NULL,
  `employee_gender` varchar(100) NOT NULL,
  `employee_address` varchar(100) NOT NULL,
  `employee_village` varchar(100) NOT NULL,
  `employee_state` varchar(100) NOT NULL,
  `employee_country` varchar(100) NOT NULL,
  `employee_landline` varchar(100) NOT NULL,
  `employee_mobile` varchar(100) NOT NULL,
  `employee_email` varchar(100) NOT NULL,
  `employee_status` varchar(255) NOT NULL,
  `employee_deparment` varchar(255) NOT NULL,
  `employee_dob` varchar(255) NOT NULL,
  `employee_nationalty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_manager_id`, `employee_role`, `employee_sal`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_gender`, `employee_address`, `employee_village`, `employee_state`, `employee_country`, `employee_landline`, `employee_mobile`, `employee_email`, `employee_status`, `employee_deparment`, `employee_dob`, `employee_nationalty`) VALUES
(1001, '0', '1', '1', 'Amit', 'Kumar', 'Singh', 'Male', 'A : 42/6', 'Ghaziabad', '4', '1', 'Uttar Pradesh', '09876543212', 'kaushal@gmail.com', '2', '1', '12 January, 2014', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_emp_id` int(11) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level` int(11) NOT NULL DEFAULT '3',
  `login_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_emp_id`, `login_user`, `login_password`, `login_level`, `login_email`) VALUES
(1, 1001, 'admin', 'test', 1, 'admin@gmail.com'),
(2, 1002, 'reporter', '1234', 2, 'reporter@gmail.com'),
(3, 1003, 'employee', 'test', 3, 'employee@gmail.com'),
(21, 1014, 'anuj', 'test', 3, 'anuj@gmail.com'),
(22, 1015, 'finance', '123456', 4, 'amit@gmail.com'),
(23, 1016, 'neeraj', 'test', 3, 'neeraj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_user_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_user_id`, `order_date`, `order_status`, `order_total`) VALUES

(15, '3', 'Sat Aug 15 23:34:03 IST 2015', '2', '5800'),
(16, '1', 'Sun Apr 30 11:43:08 IST 2017', '1', '1200'),
(17, '1', 'Sun Apr 30 12:16:04 IST 2017', '2', '960'),
(18, '1', 'Thu Mar 25 07:26:49 IST 2021', '2', '320'),
(19, '1', 'Thu Mar 25 08:03:30 IST 2021', '2', '320'),
(20, '1', 'Thu Mar 25 08:09:24 IST 2021', '2', '320');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `oi_id` int(11) NOT NULL,
  `oi_order_id` varchar(255) NOT NULL,
  `oi_product_id` varchar(255) NOT NULL,
  `oi_price_per_unit` varchar(255) NOT NULL,
  `oi_cart_quantity` varchar(255) NOT NULL,
  `oi_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oi_id`, `oi_order_id`, `oi_product_id`, `oi_price_per_unit`, `oi_cart_quantity`, `oi_total`) VALUES
(1, '1', '2', '1100', '1', '1100'),
(2, '1', '1', '1200', '1', '1200'),
(3, '1', '4', '1170', '4', '4680'),
(4, '2', '2', '1100', '1', '1100'),
(5, '2', '1', '1200', '1', '1200'),
(6, '2', '4', '1170', '4', '4680'),
(7, '4', '1', '1200', '1', '1200'),
(8, '4', '4', '1170', '2', '2340'),
(9, '5', '1', '1200', '6', '7200'),
(10, '5', '4', '1170', '5', '5850'),
(11, '5', '2', '1100', '2', '2200'),
(12, '6', '2', '1100', '1', '1100'),
(13, '6', '1', '1200', '1', '1200'),
(14, '8', '5', '1170', '1', '1170'),
(15, '9', '5', '1170', '1', '1170'),
(16, '11', '6', '1170', '3', '3510'),
(17, '11', '4', '1170', '5', '5850'),
(18, '12', '5', '1170', '1', '1170'),
(19, '13', '1', '1200', '3', '3600'),
(20, '14', '5', '1170', '1', '1170'),
(21, '15', '2', '1100', '2', '2200'),
(22, '15', '1', '1200', '1', '1200'),
(23, '15', '7', '1200', '2', '2400'),
(24, '16', '4', '340', '1', '340'),
(25, '16', '7', '320', '1', '320'),
(26, '16', '1', '320', '1', '320'),
(27, '16', '5', '220', '1', '220'),
(28, '17', '1', '320', '1', '320'),
(29, '17', '7', '320', '2', '640'),
(30, '18', '1', '320', '1', '320'),
(31, '19', '1', '320', '1', '320'),
(32, '20', '1', '320', '1', '320');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `os_id` int(11) NOT NULL,
  `os_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`os_id`, `os_title`) VALUES
(1, 'Confirmed'),
(2, 'Processing'),
(3, 'Packed'),
(4, 'Dispatched');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type_id` varchar(255) NOT NULL,
  `product_company_id` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_type_id`, `product_company_id`, `product_price`, `product_image`, `product_description`, `product_stock`) VALUES
(1, 'Car Service ', '1', '1', '320', '1.jpg', 'At Mahindra First Choice Services we strive to provide the best levels of service to all our customers ensuring they enjoy a safe and pleasant driving experience. We offer an extensive range of car repair services for cars of all makes and models all under one roof. We specialise in car services including wheel alignment service , car body repair , engine repair , denting and painting , brake repair , car grooming , road side assistance and much more.\r\n\r\nOur highly professional and trained mechanics use the best quality products combined with latest techniques for all car repair services.\r\n\r\nBook your service with us online or visit your nearest workshop today!\r\n', '995'),
(2, 'Nitrogen Topup', '2', '1', '260', '2.jpg', 'At Mahindra First Choice Services we strive to provide the best levels of service to all our customers ensuring they enjoy a safe and pleasant driving experience. We offer an extensive range of car repair services for cars of all makes and models all under one roof. We specialise in car services including wheel alignment service , car body repair , engine repair , denting and painting , brake repair , car grooming , road side assistance and much more.\r\n\r\nOur highly professional and trained mechanics use the best quality products combined with latest techniques for all car repair services.\r\n\r\nBook your service with us online or visit your nearest workshop today!\r\n', '95'),
(3, 'Full Car Washing', '3', '4', '400', '3.jpg', 'At Mahindra First Choice Services we strive to provide the best levels of service to all our customers ensuring they enjoy a safe and pleasant driving experience. We offer an extensive range of car repair services for cars of all makes and models all under one roof. We specialise in car services including wheel alignment service , car body repair , engine repair , denting and painting , brake repair , car grooming , road side assistance and much more.\r\n\r\nOur highly professional and trained mechanics use the best quality products combined with latest techniques for all car repair services.\r\n\r\nBook your service with us online or visit your nearest workshop today!\r\n', '200'),
(4, 'Basic Denting ', '4', '4', '340', '4.png', 'At Mahindra First Choice Services we strive to provide the best levels of service to all our customers ensuring they enjoy a safe and pleasant driving experience. We offer an extensive range of car repair services for cars of all makes and models all under one roof. We specialise in car services including wheel alignment service , car body repair , engine repair , denting and painting , brake repair , car grooming , road side assistance and much more.\r\n\r\nOur highly professional and trained mechanics use the best quality products combined with latest techniques for all car repair services.\r\n\r\nBook your service with us online or visit your nearest workshop today!\r\n', '89'),
(5, 'Road Assistance', '5', '2', '220', '5.jpg', 'There are many stories about how exactly the roll got started. Some centre around harried office commuters who wanted something quick and portable, some mention British Babus who were too fastidious to touch the kebab. The most likely origin is probably more mundane, but in any case someone decided to roll things up at some point. It enjoyed a virtual monopoly of this method of serving a kebab for decades, but it eventually became common place in Kolkata and later spread elsewhere.', '15'),
(6, 'Car Breakdown', '6', '2', '500', '6.jpg', 'At Mahindra First Choice Services we strive to provide the best levels of service to all our customers ensuring they enjoy a safe and pleasant driving experience. We offer an extensive range of car repair services for cars of all makes and models all under one roof. We specialise in car services including wheel alignment service , car body repair , engine repair , denting and painting , brake repair , car grooming , road side assistance and much more.\r\n\r\nOur highly professional and trained mechanics use the best quality products combined with latest techniques for all car repair services.\r\n\r\nBook your service with us online or visit your nearest workshop today!\r\n', '17');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Maharastra'),
(2, 'Gujrat'),
(3, 'Bihar'),
(4, 'Uttar Pradesh'),
(5, 'Delhi'),
(6, 'Haryana');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_description`) VALUES
(1, 'Service Package', 'Service Package'),
(2, 'Tyre Care', 'Tyre Care'),
(3, 'Washing Package', 'Washing Package'),
(4, 'Denting Package', 'Denting Package'),
(5, 'Road Side Assitance', 'Road Side Assitance'),
(6, 'Break Down', 'Break Down');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oi_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `oi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `os_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
