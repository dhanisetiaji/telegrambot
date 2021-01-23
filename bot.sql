-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2021 pada 18.41
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `kata_kunci` varchar(120) NOT NULL,
  `jawab` text NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id`, `kata_kunci`, `jawab`, `CreatedAt`) VALUES
(16, 'rektor', 'Prof. Dr. M. Suyanto, M.M', '2021-01-03 04:41:14'),
(18, 'fakultas ilmu komputer', 'D3 Teknik Informatika, D3 Manajemen Informatika, S1 Informatika, S1 Sistem Informasi, S1 Teknologi Informasi, S1 Teknik Komputer', '2021-01-03 04:44:01'),
(19, 'ipa', 'Anak ipa bisa masuk semua jurusan di Amikom, rekomendasi nya adalah S1 Informatika', '2021-01-03 04:49:21'),
(21, 'konsentrasi jurusan informatika', 'Pemrograman, Multimedia, Jaringan', '2021-01-03 05:21:06'),
(22, 'konsentrasi informatika', 'Pemrograman, Multimedia, Jaringan', '2021-01-03 05:21:30'),
(23, 'konsentrasi sistem informasi', 'Financial Technology, E-Commerce, Multimedia', '2021-01-03 05:22:03'),
(24, 'konsentrasi jurusan sistem informasi', 'Financial Technology, E-Commerce, Multimedia', '2021-01-03 05:22:28'),
(25, 'konsentrasi teknologi informasi', 'Animasi, Game', '2021-01-03 05:22:50'),
(26, 'konsentrasi jurusan teknologi informasi', 'Animasi, Game', '2021-01-03 05:23:15'),
(27, 'konsentrasi teknik komputer', 'Cybersecurity & Forensic, Internet of Things(IoT)', '2021-01-03 05:23:47'),
(28, 'konsentrasi jurusan teknik komputer', 'Cybersecurity & Forensic, Internet of Things(IoT)', '2021-01-03 05:24:07'),
(29, 'website amikom', 'amikom.ac.id', '2021-01-03 05:24:28'),
(30, 'fakultas sains dan teknologi', 'S1 Arsitektur, S1 Perancangan Wilayah dan Kota, S1 Geografi', '2021-01-03 05:25:03'),
(31, 'ips', 'Bagi anak ips yang suka komputer, direkomendasikan untuk masuk jurusan S1 Sistem Informasi', '2021-01-03 05:25:23'),
(32, 'fakultas di amikom', 'Ada 3 fakultas: Fakultas Ilmu Komputer, Fakultas Ekonomi dan Sosial, dan Fakultas Sains dan Teknologi', '2021-01-03 05:25:48'),
(33, 'hacker', 'Yang mau menjadi hacker dan semacamnya bisa masuk jurusan S1 Teknik Komputer', '2021-01-03 05:26:26'),
(34, 'animasi', 'Kamu suka animasi? Rekomendasi jurusan untukmu adalah S1 Teknologi Informasi', '2021-01-03 05:27:01'),
(35, 'game', 'Kamu mau jago bikin game? Rekomendasi jurusan untukmu adalah S1 Teknologi Informasi', '2021-01-03 05:27:21'),
(36, 'hacking', 'Yang suka hacking dan semacamnya bisa masuk jurusan S1 Teknik Komputer', '2021-01-03 05:27:44'),
(37, 'kelas internasinal', 'Ada 2 kelas internasional di Amikom, yaitu BCI dan BIS', '2021-01-03 05:29:04'),
(38, 'fotografi', 'Bisa masuk jurusan Informatika atau sistem informasi untuk mendalami fotografi', '2021-01-03 05:29:30'),
(39, 'videografi', 'Bisa masuk jurusan Informatika atau sistem informasi untuk mendalami videografi', '2021-01-03 05:29:56'),
(40, 'videografer', 'Bisa masuk jurusan Informatika atau sistem informasi untuk mendalami videografi', '2021-01-03 05:30:25'),
(41, 'konsentrasi jurusan arsitektur', 'Lab. Studio Perancangan, Lab. Arsitektur Digital, Lab. Histori, Lab. Struktur & Teknologi Bangunan, Lab. Building Physic, Lab. Kota & Pemukiman', '2021-01-03 11:42:22'),
(42, 'konsentrasi arsitektur', 'Lab. Studio Perancangan, Lab. Arsitektur Digital, Lab. Histori, Lab. Struktur & Teknologi Bangunan, Lab. Building Physic, Lab. Kota & Pemukiman', '2021-01-03 11:42:48'),
(43, 'konsentrasi perencanaan wilayah dan kota', 'Smartcity (Kota Cerdas), Urban Management (Manajemen Perkotaan), Compact and Sustainable Development (Pembangunan Kompak dan Berkelanjutan), Community Based Spatial Planning (Perencanaan Spasial Berbasis Komunitas), Urban and Regional Development Policy (Kebijakan Pembangunan Kota dan Wilayah)', '2021-01-03 11:43:21'),
(44, 'konsentrasi jurusan perencanaan wilayah dan kota', 'Smartcity (Kota Cerdas), Urban Management (Manajemen Perkotaan), Compact and Sustainable Development (Pembangunan Kompak dan Berkelanjutan), Community Based Spatial Planning (Perencanaan Spasial Berbasis Komunitas), Urban and Regional Development Policy (Kebijakan Pembangunan Kota dan Wilayah)', '2021-01-03 11:43:44'),
(45, 'konsentrasi geografi', 'GeoInformatics, Geographic Information System (GIS)', '2021-01-03 11:44:04'),
(46, 'konsentrasi jurusan geografi', 'GeoInformatics, Geographic Information System (GIS)', '2021-01-03 11:44:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
