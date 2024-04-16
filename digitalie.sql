-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 07:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitalie`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `confirm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `produk_id`, `material_id`, `quantity`, `confirm`) VALUES
(1, 3, 2, 5, 5, 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `nama_material` varchar(150) NOT NULL,
  `deskripsi_material` varchar(255) NOT NULL,
  `harga_beli_material` double NOT NULL,
  `harga_jual_material` double NOT NULL,
  `gambar_material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id_material`, `nama_material`, `deskripsi_material`, `harga_beli_material`, `harga_jual_material`, `gambar_material`) VALUES
(1, 'Doff Paper', 'Shipping Available for All Regions', 5000, 7000, 'doff.png'),
(2, 'Sublime Paper', 'Shipping Available for All Regions', 5000, 7000, 'sublime.png'),
(3, 'Vinyl Paper', 'Shipping Available for All Regions', 5000, 7000, 'vinyl.png'),
(4, 'Laster Photo Paper', 'Shipping Available for All Regions', 5000, 7000, 'laster.png'),
(5, 'Canvas Paper', 'Shipping Available for All Regions', 5000, 7000, 'canvas.png'),
(6, 'Double Side Paper', 'Shipping Available for All Regions', 5000, 7000, 'dside.png');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `subtotal` double NOT NULL,
  `total` double NOT NULL,
  `confirm` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `date`, `subtotal`, `total`, `confirm`, `user_id`) VALUES
(25, 'Irfan', 'Fari', 'irfan.fari@gmail.com', '08213382942', 'Pokoknya Tangerang', '2022-05-23', 302300, 335553, 'belum', 6),
(26, 'Alexander', 'Toar', 'mahesaputra74@gmail.com', '087880639078', 'Depok Pokoknya', '2022-05-24', 60000, 66600, 'sudah', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `gambar_produk` varchar(255) NOT NULL,
  `duration` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `deskripsi`, `harga_beli`, `harga_jual`, `gambar_produk`, `duration`) VALUES
(2, 'Poster', 'Shipping available for all regions', 50000, 60000, 'poster.png', 2),
(3, 'Brochure', 'Shipping available for all regions', 2000, 2300, 'brochure.png', 3),
(4, 'Name Card', 'Shipping available for all regions', 22000, 24000, 'namecard.png', 7),
(5, 'Photobook', 'Shipping available for all regions', 275000, 300000, 'photobook.png', 9),
(6, 'Logo', 'Shipping available for all regions', 4500, 5000, 'logo.png', 1),
(7, 'Sticker', 'Shipping available for all regions', 5000, 6500, 'sticker.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_jual` double NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `confirm` varchar(10) NOT NULL,
  `id_material` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `fname`, `lname`, `nama_produk`, `harga_jual`, `phone`, `address`, `confirm`, `id_material`, `quantity`, `user_id`) VALUES
(19, 'Irfan', 'Fari', 'Brochure', 2300, '08213382942', 'Pokoknya Tangerang', 'belum', 3, 2, 6),
(20, 'Irfan', 'Fari', 'Photobook', 300000, '08213382942', 'Pokoknya Tangerang', 'belum', 5, 1, 6),
(21, 'Alexander', 'Toar', 'Poster', 60000, '087880639078', 'Depok Pokoknya', 'belum', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `phone`, `address`, `role`) VALUES
(1, 'henry', 'tantyo', 'asdsaf@gmasdl.com', '$2y$10$L2tHPGL7lYHPTpiz7Jt8N.IrL3eXyZdFnSX4dBKj8OwS.O3m1ef56', '098097777', 'asdasdawr', 'admin'),
(3, 'henry', 'tantyo', '', '$2y$10$98tYfLaZT0b7WfYUQoxv8urAgond8c7qDtWzZ2GXpaq3Re5u6alni', '098097777', 'asdasdawr', 'customer'),
(4, 'Alexander', 'Toar', 'mahesaputra74@gmail.com', '$2y$10$/UAJqAFLu.ZadjVpwGh3vuKLpwLZDRn9xNICcO0hjMhXOqp2KDxfi', '087880639078', 'Depok Pokoknya', 'customer'),
(5, 'tet', 'test', 'testserser@gmail.com', '$2y$10$WL.WSlPAjAXws2gS1zE/0OowGNRHgbtUpB/.OP64LuxfMytFs39VO', '25124123', 'test', 'customer'),
(6, 'Irfan', 'Fari', 'irfan.fari@gmail.com', '$2y$10$UYlZ0PE/PTQk3vj6T/smte39W5M6sLJ/RgCCxGIiFWEZtbWEF2l12', '08213382942', 'Pokoknya Tangerang', 'customer'),
(7, 'thomas', 'j', 'thomas@gmail.com', '$2y$10$pqW.DB3GhiADzsOkaqX51eq4WkRY0Hgsfi8w3C86YRE36DHb9RBuq', '08123', 'bogor', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `produk_id` (`produk_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`material_id`) REFERENCES `material` (`id_material`);

--
-- Constraints for table `order_table`
--
ALTER TABLE `order_table`
  ADD CONSTRAINT `order_table_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
