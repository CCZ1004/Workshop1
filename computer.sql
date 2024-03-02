-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 07:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` varchar(5) NOT NULL,
  `Admin_Name` varchar(50) NOT NULL,
  `Admin_Phone` varchar(13) NOT NULL,
  `Admin_Password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Admin_Name`, `Admin_Phone`, `Admin_Password`) VALUES
('A0001', 'Chiu Chang Ze', '011-1086917', 'CHIU0549');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `PurchaseID` varchar(5) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Customer_Phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`PurchaseID`, `Customer_Name`, `Customer_Phone`) VALUES
('B0001', 'ZE', '012-34394732'),
('B0002', 'DEX', '013-21321323'),
('B0003', 'GRANT', '013-21321323'),
('B0004', 'ZE', '012-45455533'),
('B0005', 'WEST', '013-2133132'),
('B0006', 'ALI', '013-9838150'),
('B0007', 'ABU', '014-2423456'),
('B0008', 'AD', '011-2313121'),
('B0009', 'WEST', '012-1211211');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` varchar(5) NOT NULL,
  `Employee_Name` varchar(50) NOT NULL,
  `Employee_Phone` varchar(13) NOT NULL,
  `Employee_Password` varchar(12) NOT NULL,
  `Employee_payroll` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `Employee_Name`, `Employee_Phone`, `Employee_Password`, `Employee_payroll`) VALUES
('E0001', 'Peter', '013-9838150', 'PETER01', 3500),
('E0002', 'TOM', '015-1234561', 'TOM01', 3500),
('E0003', 'JERRY', '015-12331233', 'JERRY01', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(5) NOT NULL,
  `SupplierID` varchar(5) NOT NULL,
  `ProductID` varchar(5) NOT NULL,
  `AdminID` varchar(5) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Order_Price` int(250) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'NOT RECEIVED',
  `date_receive` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `SupplierID`, `ProductID`, `AdminID`, `Quantity`, `Order_Price`, `Status`, `date_receive`) VALUES
('O0001', 'S0003', 'P0030', 'A0001', 20, 1400, 'RECEIVED', '13-12-2023'),
('O0002', 'S0003', 'P0029', 'A0001', 5, 250, 'RECEIVED', '14-01-2024'),
('O0003', 'S0002', 'P0002', 'A0001', 3, 210, 'RECEIVED', '14-01-2024'),
('O0004', 'S0003', 'P0030', 'A0001', 10, 700, 'RECEIVED', '15-01-2024');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` varchar(5) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Product_Price` int(250) NOT NULL,
  `Stock_Quantity` int(100) NOT NULL,
  `Category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Product_Name`, `Product_Price`, `Stock_Quantity`, `Category`) VALUES
('P0001', 'ASUS TUF GAMING', 4000, 94, 'LAPTOP'),
('P0002', 'LENOVO WIRELESS MOUSE', 100, 84, 'ACCESSORIES'),
('P0003', 'DELL MONITOR 20\"', 500, 90, 'MONITOR'),
('P0004', 'DELL LAPTOP', 2500, 77, 'LAPTOP'),
('P0005', 'ASUS WIRED KEYBOARD', 400, 86, 'ACCESSORIES'),
('P0006', 'LENOVO THINKPAD', 3000, 80, 'LAPTOP'),
('P0007', 'ASUS PROART 23\"', 600, 88, 'MONITOR'),
('P0008', 'ASUS TUF M3', 80, 95, 'ACCESSORIES'),
('P0009', 'LENOVO WIRED MOUSE', 75, 98, 'ACCESSORIES'),
('P0010', 'DELL WIRELESS KEYBOARD', 500, 80, 'ACCESSORIES'),
('P0011', 'ASUS ZENBOOK', 3100, 79, 'LAPTOP'),
('P0012', 'ASUS VIVOBOOK', 2700, 77, 'LAPTOP'),
('P0013', 'LENOVO LEGION', 3700, 82, 'LAPTOP'),
('P0014', 'LENOVO IDEAPAD', 2500, 82, 'LAPTOP'),
('P0015', 'DELL ALIENWARE', 4000, 80, 'LAPTOP'),
('P0016', 'DELL XPS', 4000, 78, 'LAPTOP'),
('P0017', 'DELL CURVED 34\"', 1500, 80, 'MONITOR'),
('P0018', 'ASUS ZENSCREEN 16\"', 800, 76, 'MONITOR'),
('P0019', 'DELL WIRED MOUSE', 75, 71, 'ACCESSORIES'),
('P0020', 'LENOVO WIRELESS KEYBOARD', 150, 85, 'ACCESSORIES'),
('P0021', 'ASUS HEADPHONE', 150, 78, 'ACCESSORIES'),
('P0022', 'ASUS PENDRIVE(512GB)', 120, 80, 'ACCESSORIES'),
('P0023', 'ASUS MONITOR 24\"', 600, 78, 'MONITOR'),
('P0024', 'LENOVO HEADPHONE(MIC)', 200, 80, 'ACCESSORIES'),
('P0025', 'LENOVO PENDRIVE(256GB)', 80, 80, 'ACCESSORIES'),
('P0026', 'LENOVO THINKVISION 34\"', 1500, 80, 'MONITOR'),
('P0027', 'LENOVO MONITOR 28\"', 750, 80, 'MONITOR'),
('P0028', 'DELL HEADPHONE(MIC)', 120, 80, 'ACCESSORIES'),
('P0029', 'DELL PENDRIVE(256GB)', 80, 80, 'ACCESSORIES'),
('P0030', 'DELL HEADPHONE', 100, 60, 'ACCESSORIES');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `PurchaseID` varchar(5) NOT NULL,
  `ProductID` varchar(5) NOT NULL,
  `EmployeeID` varchar(5) NOT NULL,
  `Purchase_Quantity` int(100) NOT NULL,
  `Subtotal` int(250) NOT NULL,
  `sales_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`PurchaseID`, `ProductID`, `EmployeeID`, `Purchase_Quantity`, `Subtotal`, `sales_date`) VALUES
('B0001', 'P0002', 'E0001', 9, 900, '08-12-2023'),
('B0001', 'P0007', 'E0001', 3, 1800, '08-12-2023'),
('B0002', 'P0018', 'E0001', 4, 2720, '18-12-2023'),
('B0003', 'P0004', 'E0001', 3, 7500, '08-01-2024'),
('B0003', 'P0029', 'E0001', 5, 400, '08-01-2024'),
('B0004', 'P0012', 'E0001', 3, 7290, '11-01-2024'),
('B0004', 'P0030', 'E0001', 5, 450, '11-01-2024'),
('B0005', 'P0005', 'E0003', 4, 1440, '13-01-2024'),
('B0005', 'P0019', 'E0003', 3, 203, '13-01-2024'),
('B0007', 'P0001', 'E0001', 2, 7200, '15-01-2024'),
('B0007', 'P0019', 'E0001', 3, 203, '15-01-2024'),
('B0009', 'P0001', 'E0001', 2, 8000, '20-01-2024'),
('B0009', 'P0019', 'E0001', 3, 225, '20-01-2024');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` varchar(5) NOT NULL,
  `ProductID` varchar(5) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Price` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `ProductID`, `Product_Name`, `Price`) VALUES
('S0001', 'P0001', 'ASUS TUF GAMING', 3000),
('S0001', 'P0005', 'ASUS WIRED KEYBOARD', 250),
('S0001', 'P0007', 'ASUS PROART 23\"', 400),
('S0001', 'P0008', 'ASUS TUF M3', 50),
('S0001', 'P0011', 'ASUS ZENBOOK', 2300),
('S0001', 'P0012', 'ASUS VIVOBOOK', 2000),
('S0001', 'P0018', 'ASUS ZENSCREEN 16\"', 500),
('S0001', 'P0021', 'ASUS HEADPHONE', 100),
('S0001', 'P0022', 'ASUS PENDRIVE(512GB)', 80),
('S0001', 'P0023', 'ASUS MONITOR 24\"', 450),
('S0002', 'P0002', 'LENOVO WIRELESS MOUSE', 70),
('S0002', 'P0006', 'LENOVO THINKPAD', 2200),
('S0002', 'P0009', 'LENOVO WIRED MOUSE', 50),
('S0002', 'P0013', 'LENOVO LEGION', 3000),
('S0002', 'P0014', 'LENOVO IDEAPAD', 2000),
('S0002', 'P0020', 'LENOVO WIRELESS KEYBOARD', 90),
('S0002', 'P0024', 'LENOVO HEADPHONE(MIC)', 100),
('S0002', 'P0025', 'LENOVO PENDRIVE(256GB)', 50),
('S0002', 'P0026', 'LENOVO THINKVISION 34\"', 1000),
('S0002', 'P0027', 'LENOVO MONITOR 28\"', 500),
('S0003', 'P0003', 'DELL MONITOR 20\"', 350),
('S0003', 'P0004', 'DELL LAPTOP', 1900),
('S0003', 'P0010', 'DELL WIRELESS KEYBOARD', 350),
('S0003', 'P0015', 'DELL ALIENWARE', 3000),
('S0003', 'P0016', 'DELL XPS', 3000),
('S0003', 'P0017', 'DELL CURVED 34\"', 1000),
('S0003', 'P0019', 'DELL WIRED MOUSE', 50),
('S0003', 'P0028', 'DELL HEADPHONE(MIC)', 80),
('S0003', 'P0029', 'DELL PENDRIVE(256GB)', 50),
('S0003', 'P0030', 'DELL HEADPHONE', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`PurchaseID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`) USING BTREE,
  ADD KEY `S` (`SupplierID`),
  ADD KEY `P` (`ProductID`),
  ADD KEY `A` (`AdminID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`PurchaseID`,`ProductID`,`EmployeeID`),
  ADD KEY `Emp` (`EmployeeID`),
  ADD KEY `Pro` (`ProductID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`,`ProductID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `A` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`),
  ADD CONSTRAINT `P` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  ADD CONSTRAINT `SUP` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `Cust` FOREIGN KEY (`PurchaseID`) REFERENCES `customer` (`PurchaseID`),
  ADD CONSTRAINT `Emp` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  ADD CONSTRAINT `Pro` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
