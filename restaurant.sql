-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2020 pada 00.31
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `serial` int(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `unit_price` int(100) NOT NULL,
  `quantity` int(150) NOT NULL,
  `total` int(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `item_id` int(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `quantity` int(150) NOT NULL,
  `unit_price` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`item_id`, `category`, `name`, `quantity`, `unit_price`, `date`) VALUES
(1, 'Makanan', 'Nasi Goreng', 50, 10000, '2020-02-22 14:26:06'),
(2, 'Makanan', 'Ayam goreng', 100, 6000, '2020-02-22 14:30:36'),
(3, 'Makanan', 'Mie Goreng', 100, 7500, '2020-02-22 14:35:58'),
(4, 'Makanan', 'Gurame bakar', 25, 32000, '2020-02-22 14:36:54'),
(5, 'Minuman', 'Es Cao', 100, 4000, '2020-02-22 14:37:21'),
(6, 'Minuman', 'Good Day Freeze', 100, 5000, '2020-02-22 14:37:42'),
(7, 'Minuman', 'Moccacino', 100, 10000, '2020-02-22 14:38:05'),
(8, 'Makanan', 'Nasi Putih', 150, 4000, '2020-02-22 14:39:21'),
(9, 'Minuman', 'Es Teh', 50, 3000, '2020-02-22 14:33:14'),
(10, 'Makanan', 'Ayam goreng', 100, 6000, '2020-02-22 14:30:36'),
(11, 'Makanan', 'Gurame bakar', 25, 32000, '2020-02-22 14:36:41'),
(12, 'Lain-lain', 'Sambal Matah', 50, 3000, '2020-02-22 14:39:45'),
(13, 'Lain-lain', 'Cah Kangkung', 50, 4000, '2020-02-22 14:40:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `sn` int(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `unit_price` int(100) NOT NULL,
  `quantity` int(150) NOT NULL,
  `total` int(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`sn`, `name`, `unit_price`, `quantity`, `total`, `date`) VALUES
(4, 'Nasi Goreng', 10000, 1, 10000, '2020-02-22 15:54:10'),
(5, 'Nasi Putih', 4000, 2, 8000, '2020-02-22 15:54:11'),
(6, 'Ayam goreng', 6000, 3, 18000, '2020-02-22 15:54:11'),
(7, 'Es Teh', 3000, 3, 9000, '2020-02-22 15:54:11'),
(8, 'Nasi Goreng', 10000, 1, 10000, '2020-02-22 16:16:12'),
(9, 'Nasi Putih', 4000, 3, 12000, '2020-02-22 18:31:49'),
(10, 'Es Cao', 4000, 33, 132000, '2020-02-22 18:31:49'),
(11, 'Cah Kangkung', 4000, 22, 88000, '2020-02-22 18:49:37'),
(12, 'Good Day Freeze', 5000, 33, 165000, '2020-02-22 18:49:37'),
(13, 'Sambal Matah', 3000, 2, 6000, '2020-02-22 18:51:54'),
(14, 'Ayam goreng', 6000, 5, 30000, '2020-02-22 18:51:55'),
(15, 'Cah Kangkung', 4000, 1, 4000, '2020-02-22 18:53:05'),
(16, 'Nasi Goreng', 10000, 1, 10000, '2020-02-22 18:55:38'),
(17, 'Gurame bakar', 32000, 2, 64000, '2020-02-22 18:55:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(150) NOT NULL,
  `jumlah` int(150) NOT NULL,
  `bayar` int(150) NOT NULL,
  `kembalian` int(150) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `jumlah`, `bayar`, `kembalian`, `date`) VALUES
(1, 253000, 260000, 7000, '2020-02-23 01:49:37'),
(2, 253000, 260000, 7000, '2020-02-23 01:49:37'),
(3, 30000, 30000, 0, '2020-02-23 01:51:55'),
(4, 30000, 30000, 0, '2020-02-23 01:51:55'),
(5, 4000, 30000, 26000, '2020-02-23 01:53:05'),
(6, 74000, 75000, 1000, '2020-02-23 01:55:38'),
(7, 74000, 75000, 1000, '2020-02-23 01:55:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` tinyint(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `name`, `user_name`, `password`, `role`, `date`) VALUES
(1, 'ega', 'admin', '123', 1, '2020-02-22 11:56:47'),
(2, 'ega', 'kasir', '123', 2, '2020-02-22 11:56:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`serial`);

--
-- Indeks untuk tabel `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sn`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `serial` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `sn` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
