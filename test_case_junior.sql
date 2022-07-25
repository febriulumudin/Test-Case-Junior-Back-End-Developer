-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2022 pada 01.55
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_case_junior`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(35) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `nama`) VALUES
(1, 'Elektronik'),
(2, 'Fashion Pria'),
(3, 'Fashion Wanita'),
(4, 'Handphone & Tablet'),
(5, 'Olahraga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id_product` int(35) NOT NULL,
  `category_id` int(35) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id_product`, `category_id`, `name`, `slug`, `price`) VALUES
(1, 1, 'Logitech H111 Headset Stereo Single Jack 3.5mm ', 'logitech-h111-headset-stereo-single-jack-3-5mm ', 80000),
(2, 1, 'Philips Rice Cooker - Inner Pot 2L Bakuhanseki - HD3110/33 ', 'philips-rice-cooker -inner-pot-2l-bakuhanseki-hd3110-33 ', 249000),
(3, 4, 'Iphone 12 64Gb/128Gb/256Gb Garansi Resmi IBOX/TAM - Hitam, 64Gb ', 'iphone-12-64gb-128gb-256gb-garansi-resmi-ibox-tam-hitam-64gb ', 11340000),
(4, 5, 'Papan alat bantu Push Up Rack Board Fitness Workout Gym', 'papan-alat-bantu-push-up-rack-board-fitness-workout-gym ', 90000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_assets`
--

CREATE TABLE `product_assets` (
  `id` int(35) NOT NULL,
  `product_id` int(35) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_assets`
--

INSERT INTO `product_assets` (`id`, `product_id`, `image`) VALUES
(1, 1, 'logitech-h111.png '),
(2, 1, 'logitech-h111-headset-stereo-single-jack-3-5mm.png'),
(3, 2, 'philips-rice-cooker-inner-pot-2l-bakuhanseki-hd3110-33.png'),
(4, 2, 'philips.png '),
(5, 2, 'philips-rice-cooker.png'),
(6, 3, 'iphone-12-64gb-128gb-256gb.png'),
(7, 4, 'papan-alat-bantu-push-up.png'),
(8, 5, 'jim-joker-sandal-slide-kulit-pria-bold-2s-hitam-hitam.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `product_assets`
--
ALTER TABLE `product_assets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product_assets`
--
ALTER TABLE `product_assets`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
