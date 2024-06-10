-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 10 Jun 2024 pada 14.56
-- Versi server: 5.7.44-log
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bahasa_arab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_bab`
--

CREATE TABLE `daftar_bab` (
  `id` int(11) NOT NULL,
  `bab` varchar(10) NOT NULL,
  `kkm` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar_bab`
--

INSERT INTO `daftar_bab` (`id`, `bab`, `kkm`) VALUES
(1, 'Bab 1', 8),
(2, 'Bab 2', 8),
(3, 'Bab 3', 8),
(4, 'Bab 4', 8),
(5, 'Bab 5', 8),
(6, 'Bab 6', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Gugun Rizal Nugraha', 'gugun', 'gugun'),
(2, 'Nono Sumarno, Lc', 'nono', 'nono123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `bab_id` int(11) NOT NULL,
  `nilai` double DEFAULT NULL,
  `waktu_akses` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `id_siswa`, `bab_id`, `nilai`, `waktu_akses`) VALUES
(30, 23, 1, 10, '01:26'),
(31, 23, 2, 9, '01:30'),
(32, 23, 3, 8, '01:07'),
(33, 23, 4, 9, '02:38'),
(34, 23, 5, 10, '00:31'),
(35, 23, 6, 9, '01:44'),
(36, 24, 1, 9, '00:41'),
(37, 24, 2, 10, '01:50'),
(38, 24, 3, 9, '00:50'),
(39, 24, 4, 8, '02:08'),
(40, 24, 5, 8, '02:25'),
(41, 24, 6, 9, '03:00'),
(42, 25, 1, 9, '01:32'),
(43, 25, 2, 9, '01:02'),
(44, 25, 3, 10, '01:18'),
(45, 25, 4, 0, ''),
(46, 25, 5, 0, ''),
(47, 25, 6, 0, ''),
(48, 26, 1, 9, '01:56'),
(49, 26, 2, 0, ''),
(50, 26, 3, 0, ''),
(51, 26, 4, 0, ''),
(52, 26, 5, 0, ''),
(53, 26, 6, 0, ''),
(54, 27, 1, 10, '01:27'),
(55, 27, 2, 9, '00:29'),
(56, 27, 3, 8, '01:04'),
(57, 27, 4, 8, '00:48'),
(58, 27, 5, 10, '01:23'),
(59, 27, 6, 9, '01:19'),
(60, 28, 1, 9, '01:22'),
(61, 28, 2, 9, '01:44'),
(62, 28, 3, 9, '01:11'),
(63, 28, 4, 9, '02:41'),
(64, 28, 5, 9, '01:43'),
(65, 28, 6, 0, ''),
(66, 29, 1, 8, '00:55'),
(67, 29, 2, 9, '00:26'),
(68, 29, 3, 10, '00:32'),
(69, 29, 4, 8, '00:36'),
(70, 29, 5, 8, '00:27'),
(71, 29, 6, 5, '00:19'),
(72, 30, 1, 0, ''),
(73, 30, 2, 0, ''),
(74, 30, 3, 0, ''),
(75, 30, 4, 0, ''),
(76, 30, 5, 0, ''),
(77, 30, 6, 0, ''),
(78, 31, 1, 0, ''),
(79, 31, 2, 0, ''),
(80, 31, 3, 0, ''),
(81, 31, 4, 0, ''),
(82, 31, 5, 0, ''),
(83, 31, 6, 0, ''),
(84, 32, 1, 9, '03:05'),
(85, 32, 2, 8, '00:44'),
(86, 32, 3, 3, '00:46'),
(87, 32, 4, 0, ''),
(88, 32, 5, 0, ''),
(89, 32, 6, 0, ''),
(90, 33, 1, 8, '00:38'),
(91, 33, 2, 10, '00:33'),
(92, 33, 3, 10, '00:22'),
(93, 33, 4, 9, '00:18'),
(94, 33, 5, 10, '00:29'),
(95, 33, 6, 8, '00:37'),
(96, 34, 1, 7, '01:15'),
(97, 34, 2, 0, ''),
(98, 34, 3, 0, ''),
(99, 34, 4, 0, ''),
(100, 34, 5, 0, ''),
(101, 34, 6, 0, ''),
(102, 35, 1, 10, '00:24'),
(103, 35, 2, 8, '01:56'),
(104, 35, 3, 8, '01:05'),
(105, 35, 4, 4, '00:09'),
(106, 35, 5, 0, ''),
(107, 35, 6, 0, ''),
(108, 36, 1, 0, ''),
(109, 36, 2, 0, ''),
(110, 36, 3, 0, ''),
(111, 36, 4, 0, ''),
(112, 36, 5, 0, ''),
(113, 36, 6, 0, ''),
(114, 37, 1, 0, ''),
(115, 37, 2, 0, ''),
(116, 37, 3, 0, ''),
(117, 37, 4, 0, ''),
(118, 37, 5, 0, ''),
(119, 37, 6, 0, ''),
(120, 38, 1, 9, '01:16'),
(121, 38, 2, 10, '00:42'),
(122, 38, 3, 10, '00:22'),
(123, 38, 4, 10, '01:09'),
(124, 38, 5, 9, '01:25'),
(125, 38, 6, 9, '00:29'),
(126, 39, 1, 8, '01:20'),
(127, 39, 2, 0, ''),
(128, 39, 3, 0, ''),
(129, 39, 4, 0, ''),
(130, 39, 5, 0, ''),
(131, 39, 6, 0, ''),
(132, 40, 1, 10, '00:44'),
(133, 40, 2, 9, '00:40'),
(134, 40, 3, 10, '01:09'),
(135, 40, 4, 9, '02:18'),
(136, 40, 5, 10, '01:29'),
(137, 40, 6, 0, ''),
(138, 41, 1, 0, ''),
(139, 41, 2, 0, ''),
(140, 41, 3, 0, ''),
(141, 41, 4, 0, ''),
(142, 41, 5, 0, ''),
(143, 41, 6, 0, ''),
(144, 42, 1, 9, '02:01'),
(145, 42, 2, 6, '01:31'),
(146, 42, 3, 0, ''),
(147, 42, 4, 0, ''),
(148, 42, 5, 0, ''),
(149, 42, 6, 0, ''),
(150, 43, 1, 7, '00:56'),
(151, 43, 2, 0, ''),
(152, 43, 3, 0, ''),
(153, 43, 4, 0, ''),
(154, 43, 5, 0, ''),
(155, 43, 6, 0, ''),
(156, 44, 1, 0, ''),
(157, 44, 2, 0, ''),
(158, 44, 3, 0, ''),
(159, 44, 4, 0, ''),
(160, 44, 5, 0, ''),
(161, 44, 6, 0, ''),
(162, 45, 1, 0, ''),
(163, 45, 2, 0, ''),
(164, 45, 3, 0, ''),
(165, 45, 4, 0, ''),
(166, 45, 5, 0, ''),
(167, 45, 6, 0, ''),
(168, 46, 1, 6, '00:47'),
(169, 46, 2, 0, ''),
(170, 46, 3, 0, ''),
(171, 46, 4, 0, ''),
(172, 46, 5, 0, ''),
(173, 46, 6, 0, ''),
(174, 47, 1, 4, '00:40'),
(175, 47, 2, 0, ''),
(176, 47, 3, 0, ''),
(177, 47, 4, 0, ''),
(178, 47, 5, 0, ''),
(179, 47, 6, 0, ''),
(180, 48, 1, 4, '01:34'),
(181, 48, 2, 0, ''),
(182, 48, 3, 0, ''),
(183, 48, 4, 0, ''),
(184, 48, 5, 0, ''),
(185, 48, 6, 0, ''),
(186, 49, 1, 8, '00:56'),
(187, 49, 2, 8, '00:30'),
(188, 49, 3, 10, '00:22'),
(189, 49, 4, 8, '00:45'),
(190, 49, 5, 8, '00:57'),
(191, 49, 6, 0, ''),
(192, 50, 1, 9, '01:41'),
(193, 50, 2, 8, '01:01'),
(194, 50, 3, 8, '01:09'),
(195, 50, 4, 9, '01:56'),
(196, 50, 5, 3, '02:00'),
(197, 50, 6, 0, ''),
(198, 51, 1, 8, '02:52'),
(199, 51, 2, 0, ''),
(200, 51, 3, 0, ''),
(201, 51, 4, 0, ''),
(202, 51, 5, 0, ''),
(203, 51, 6, 0, ''),
(204, 52, 1, 9, '01:25'),
(205, 52, 2, 0, ''),
(206, 52, 3, 0, ''),
(207, 52, 4, 0, ''),
(208, 52, 5, 0, ''),
(209, 52, 6, 0, ''),
(210, 53, 1, 0, ''),
(211, 53, 2, 0, ''),
(212, 53, 3, 0, ''),
(213, 53, 4, 0, ''),
(214, 53, 5, 0, ''),
(215, 53, 6, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` enum('5','6') DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `username`, `password`) VALUES
(23, 'Abdullah Haidar Alghifari', '5', 'abdullah', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(24, 'Abyan Gheysar Sulthani', '5', 'abyan', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(25, 'Affan Nur Majid', '5', 'affan', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(26, 'Arkaan Atha Mutammam', '5', 'arkaan', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(27, 'Arkan Ataya Ramadhan', '5', 'arkan', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(28, 'Arya Satya Prayoga', '5', 'arya', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(29, 'Asyraf Fauzana Hanif', '5', 'asyraf', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(30, 'Athaya Faiz Al Fatih', '5', 'athaya', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(31, 'Aufar Badri Atharizky', '5', 'aufar', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(32, 'Aulia Septiani Hernawan', '5', 'aulia', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(33, 'Bimael Perbawa', '5', 'bimael', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(34, 'Dhaheka Mestabsera Putri', '5', 'dhaheka', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(35, 'Ervino Alfarizky', '5', 'ervino', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(36, 'Faeyza Zamzami Andriana', '5', 'faeyza', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(37, 'Faiq Fairuzzaman', '5', 'faiq', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(38, 'Faiz Hanif Abdurrahman', '5', 'faiz', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(39, 'Fakhira Rahadatul Aisy', '5', 'fakhira', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(40, 'Ghayda Zavrina Yasmin', '5', 'ghayda', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(41, 'Gilby Aqila Praba Ginanjar', '5', 'gilby', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(42, 'Gita Ainun Nisa', '5', 'gita', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(43, 'Haidar Fawwaz Hibrizi', '5', 'haidar', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(44, 'Hanifah', '5', 'hanifah', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(45, 'Haura Yuan Moesanny Ozora', '5', 'haura', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(46, 'Ibrahim', '5', 'ibrahim', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(47, 'Muhammad Najmi Zahran', '5', 'najmi', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(48, 'Rifqi Luqmanul Hakim', '5', 'rifqi', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(49, 'Dzakie Al-Fadhiil R', '5', 'dzakie', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(50, 'Hauzan Rizqi Athallah', '5', 'hauzan', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(51, 'Ahmad Hafidz Farizqi', '5', 'ahmad', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(52, 'Arum Dwi', '5', 'arum', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(53, 'User', '5', 'user', 'fe703d258c7ef5f50b71e06565a65aa07194907f');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_bab`
--
ALTER TABLE `daftar_bab`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `bab_id` (`bab_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_bab`
--
ALTER TABLE `daftar_bab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`bab_id`) REFERENCES `daftar_bab` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
