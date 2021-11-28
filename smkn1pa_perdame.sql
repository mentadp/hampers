-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2021 at 01:59 PM
-- Server version: 10.1.48-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkn1pa_perdame`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL,
  `admin_instagram` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`, `admin_instagram`) VALUES
(1, 'Lionel Fruitspop Hampers', 'Lionels', '070ceb826403ba5e3252151324e2c40e', '6285362020511', 'Lionel_Hampers2@gmail.com', 'Pluto', 'perdamentapelawi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(6, 'Ukuran Kecil'),
(7, 'Ukuran Sedang'),
(9, 'Ukuran Besar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(9, 7, 'Hampers Buah + Mix', 200000, '<p>Free Request :</p>\r\n\r\n<p>cake</p>\r\n\r\n<p>madu</p>\r\n\r\n<p>vitamin</p>\r\n\r\n<p>bear brand</p>\r\n\r\n<p>uang</p>\r\n\r\n<p>dll(disesuaikan dengan ketersediaan barang)</p>\r\n', 'produk1637730415.png', 0, '2020-05-19 01:53:46'),
(10, 6, 'Hampers Buah + Mix', 100000, '<p>Free Request :</p>\r\n\r\n<p>cake</p>\r\n\r\n<p>madu</p>\r\n\r\n<p>vitamin</p>\r\n\r\n<p>bear brand</p>\r\n\r\n<p>dll(disesuaikan dengan ketersediaan barang)</p>\r\n', 'produk1637730385.png', 0, '2020-05-19 01:54:16'),
(11, 6, 'Hampers Buah (Free Request) ', 100000, '<p>Free Request :</p>\r\n\r\n<p>cake</p>\r\n\r\n<p>madu</p>\r\n\r\n<p>vitamin</p>\r\n\r\n<p>bear brand</p>\r\n\r\n<p>dll(disesuaikan dengan ketersediaan barang)</p>\r\n', 'produk1637730320.png', 0, '2020-05-19 01:54:46'),
(13, 9, 'Hampers Buah + Mix', 300000, '<p>Hampers Dengan Ukuran Besar.</p>\r\n\r\n<p>Yang Terdiri Dari :</p>\r\n\r\n<p>Buah Segar Ukuran Besar(High Quality)&nbsp;(Mix)</p>\r\n\r\n<p>Minuman Sehat (Mix)</p>\r\n\r\n<p>Free Greeting Card</p>\r\n', 'produk1637730178.png', 1, '2020-05-19 01:55:42'),
(14, 7, 'Hampers Buah + Mix', 200000, '<p>Hampers Ini Berukuran Kecil :</p>\r\n\r\n<p>Yang Terdiri Dari :</p>\r\n\r\n<p>Buah Segar Premium Quality (Mix)</p>\r\n\r\n<p>Free Kartu Ucapan</p>\r\n', 'produk1637730153.png', 1, '2020-05-19 01:56:10'),
(15, 9, 'Hampers Buah + Mix', 300000, '<p>Hampers Dengan Ukuran Sedang.</p>\r\n\r\n<p>Yang Terdiri Dari:</p>\r\n\r\n<p>Buah Segar Premium Quality (Mix)</p>\r\n', 'produk1637730110.png', 1, '2020-05-19 01:56:29'),
(24, 9, 'Hampers Buah + Mix', 300000, '<p>Ini merupakan parcel dengan ukuran besar.&nbsp;</p>\r\n\r\n<p>yang terdiri dari :&nbsp;</p>\r\n\r\n<p>Buah Segar(High Quality)&nbsp;(Mix)</p>\r\n\r\n<p>Minuman Sehat (Mix)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1637730077.png', 1, '2021-11-24 03:44:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
