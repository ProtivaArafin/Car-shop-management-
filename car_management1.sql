-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 02:13 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car management`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_no` int(100) NOT NULL,
  `car_vin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_no`, `car_vin`) VALUES
(1801, '1HGBH41JXMN109186'),
(1802, '1G1YZ23J9P5803427'),
(1803, '5UXXW3C53J0T80683'),
(1804, '4S3BMHB68B3286050'),
(1805, '2G1YZ23J9P5703467'),
(1806, '5YJSA1DG9DFP14705'),
(1807, '4S3BMHB68B3286190'),
(1808, '1Y2AZ34P4G6504385');

-- --------------------------------------------------------

--
-- Table structure for table `cardetails`
--

CREATE TABLE `cardetails` (
  `car_type` varchar(100) NOT NULL,
  `car_brand` varchar(100) NOT NULL,
  `car_model` varchar(100) NOT NULL,
  `car_color` varchar(100) NOT NULL,
  `car_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cardetails`
--

INSERT INTO `cardetails` (`car_type`, `car_brand`, `car_model`, `car_color`, `car_price`) VALUES
('Hatchback 	', 'Tata ', 'Altroz 	', 'Midtown Grey 	', 'Rs5.44 - 9.35 Lakh'),
('Hatchback 	', 'Maruti 	', 'Swift 	', 'Solid Fire Red ', 'Rs5.19 - 8.02 Lakh'),
('Sedan 	', 'Honda 	', 'City 	', 'Rediant Red Metallic 	', 'Rs10.89 - 14.64 Lakh'),
('Sedan 	', 'Hyundai 	', 'Aura 	', 'Vintage Brown 	', 'Rs.5.79 - 9.22 Lakh'),
('SUV', 'Mahindra', 'Thar', 'Rocky Beige', 'Rs.9.80 Lakh'),
('SUV', 'Hyundai', 'Venue', 'Lava Orange Dual Tone', 'Rs.6.75 Lakh'),
('Luxury', 'Land Rover', 'Range Rover', 'Portofino Blue', 'Rs 4.08 Cr'),
('Luxury', 'BMW', 'X5', 'Black Sapphire', 'Rs 84.40 Lakh');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cus_no` int(100) NOT NULL,
  `Cus_name` varchar(100) NOT NULL,
  `Cus_mail` varchar(100) NOT NULL,
  `Cus_mobile_no` varchar(100) NOT NULL,
  `car_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cus_no`, `Cus_name`, `Cus_mail`, `Cus_mobile_no`, `car_no`) VALUES
(1, 'Lionel Messi', 'liomessi10@gmail.com', '01713748598', '1801'),
(2, 'Ansu Fati', 'ansufati17@yahoo.com', '01812837356', '1802'),
(3, 'Jordi Alba', 'albajordi18@gmail.com', '01552335998', '1803'),
(4, 'Benedict Cumberbatch', 'sherlock221b@gmail.com', '01682972654', '1804'),
(5, 'Parambrata Chatterjee', 'paramchatt@yahoo.com', '01739826354', '1805'),
(6, 'Damon Salvator', 'damonsal11@gmail.com', '01679283746', '1806'),
(7, 'Jon Snow', 'youknownothing@gmail.com', '01917382746', '1807'),
(8, 'Monica Geller', 'courteneycox@gmail.com', '01639273846', '1808');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `man_id` varchar(100) NOT NULL,
  `man_name` varchar(100) NOT NULL,
  `man_salary` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`man_id`, `man_name`, `man_salary`) VALUES
('1701', 'Chandler Bing', '35000');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manu_country_code` varchar(100) NOT NULL,
  `manu_country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manu_country_code`, `manu_country_name`) VALUES
('+49', 'Germany'),
('+81', 'Japan'),
('+86', 'China'),
('+91', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `saleper_id` varchar(100) NOT NULL,
  `saleper_name` varchar(100) NOT NULL,
  `saleper_salary` varchar(100) NOT NULL,
  `car_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`saleper_id`, `saleper_name`, `saleper_salary`, `car_no`) VALUES
('1001', 'Aiatul Ador', '23180', 1801),
('1002', 'Tahjib Raiyan', '18890', 1803),
('1003', 'Arnab Kabir', '16700', 1802),
('1004', 'Kaniz Meem', '23000', 1806),
('1005', 'Ahsan Saad', '16780', 1804),
('1006', 'Nowshin Nova', '12980', 1808),
('1007', 'Azra Tuni', '23180', 1807),
('1008', 'Mirza Shakil', '23180', 1805);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cus_no`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`man_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manu_country_code`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`saleper_id`),
  ADD KEY `car_no` (`car_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
