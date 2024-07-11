-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2024 pada 03.47
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbajie`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_hari`
--

CREATE TABLE `data_hari` (
  `id_hari` varchar(2) NOT NULL,
  `hari` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_hari`
--

INSERT INTO `data_hari` (`id_hari`, `hari`) VALUES
('H5', 'Jumat'),
('H6', 'Sabtu'),
('H7', 'Minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jadwal`
--

CREATE TABLE `data_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_lapangan` varchar(4) NOT NULL,
  `id_user` int(8) NOT NULL,
  `id_hari` varchar(2) NOT NULL,
  `id_jam` varchar(2) NOT NULL,
  `best_generation` int(11) NOT NULL,
  `fitness_score` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_jadwal`
--

INSERT INTO `data_jadwal` (`id_jadwal`, `id_lapangan`, `id_user`, `id_hari`, `id_jam`, `best_generation`, `fitness_score`) VALUES
(1, '0001', 6, 'H5', 'J4', 5, '0.0625'),
(2, '0001', 3, 'H6', 'J4', 5, '0.0625'),
(3, '0003', 10, 'H6', 'J1', 5, '0.0625'),
(4, '0001', 19, 'H6', 'J4', 5, '0.0625'),
(5, '0001', 3, 'H7', 'J1', 5, '0.0625'),
(6, '0001', 4, 'H6', 'J2', 5, '0.0625'),
(7, '0001', 4, 'H6', 'J3', 5, '0.0625'),
(8, '0001', 15, 'H5', 'J4', 5, '0.0625'),
(9, '0004', 15, 'H6', 'J1', 5, '0.0625'),
(10, '0001', 3, 'H6', 'J1', 5, '0.0625'),
(11, '0001', 12, 'H6', 'J1', 5, '0.0625'),
(12, '0001', 1, 'H7', 'J3', 5, '0.0625'),
(13, '0001', 3, 'H5', 'J3', 5, '0.0625'),
(14, '0001', 1, 'H7', 'J2', 5, '0.0625'),
(15, '0001', 15, 'H7', 'J3', 5, '0.0625'),
(16, '0004', 1, 'H7', 'J1', 5, '0.0625'),
(17, '0001', 14, 'H5', 'J1', 5, '0.0625'),
(18, '0001', 12, 'H5', 'J3', 5, '0.0625');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jam`
--

CREATE TABLE `data_jam` (
  `id_jam` varchar(2) NOT NULL,
  `jam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_jam`
--

INSERT INTO `data_jam` (`id_jam`, `jam`) VALUES
('J1', '08.00 - 10.00'),
('J2', '10.00 - 12.00'),
('J3', '13.00 - 15.00'),
('J4', '15.00 - 17.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_konfigurasi`
--

CREATE TABLE `data_konfigurasi` (
  `populationSize` int(11) NOT NULL,
  `mutationRate` int(11) NOT NULL,
  `generations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_konfigurasi`
--

INSERT INTO `data_konfigurasi` (`populationSize`, `mutationRate`, `generations`) VALUES
(30, 10, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_lapangan`
--

CREATE TABLE `data_lapangan` (
  `id_lapangan` varchar(4) NOT NULL,
  `nama_lapangan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_lapangan`
--

INSERT INTO `data_lapangan` (`id_lapangan`, `nama_lapangan`, `alamat`) VALUES
('0001', 'a', 'Tambun selatan'),
('0002', 'B', 'Tambun selatan'),
('0003', 'C', 'Tambun selatan'),
('0004', 'D', 'Tambun selatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_minggu_ke`
--

CREATE TABLE `data_minggu_ke` (
  `id_minggu` varchar(2) NOT NULL,
  `minggu_ke` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_minggu_ke`
--

INSERT INTO `data_minggu_ke` (`id_minggu`, `minggu_ke`) VALUES
('M1', 1),
('M2', 2),
('M3', 3),
('M4', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pesan_lapangan`
--

CREATE TABLE `data_pesan_lapangan` (
  `id_pesanan` int(4) NOT NULL,
  `tanggal_pesanan` date NOT NULL,
  `id_hari` varchar(2) NOT NULL,
  `foto_pemesanan` varchar(100) NOT NULL,
  `id_lapangan` varchar(4) NOT NULL,
  `id_user` int(8) NOT NULL,
  `status` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pesan_lapangan`
--

INSERT INTO `data_pesan_lapangan` (`id_pesanan`, `tanggal_pesanan`, `id_hari`, `foto_pemesanan`, `id_lapangan`, `id_user`, `status`, `keterangan`) VALUES
(14, '2024-06-28', 'H5', 'Bayar lapangan.jpg', '0001', 6, 'terverifikasi', '-'),
(15, '2024-06-29', 'H5', 'Bayar lapangan.jpg', '0001', 7, 'terverifikasi', '-'),
(16, '2024-07-30', 'H6', 'Bayar lapangan.jpg', '0001', 9, 'terverifikasi', '-'),
(17, '2024-07-07', 'H6', 'Bayar lapangan.jpg', '0001', 10, 'terverifikasi', '-'),
(18, '2024-07-05', 'H5', 'Bayar lapangan.jpg', '0001', 12, 'terverifikasi', '-'),
(19, '2024-07-05', 'H5', 'Bayar lapangan.jpg', '0001', 13, 'terverifikasi', '-'),
(20, '2024-06-08', 'H6', 'Bayar lapangan.jpg', '0001', 14, 'terverifikasi', '-'),
(21, '2024-07-06', 'H6', 'Bayar lapangan.jpg', '0003', 15, 'terverifikasi', '-'),
(22, '2024-07-06', 'H6', 'Bayar lapangan.jpg', '0004', 16, 'terverifikasi', '-'),
(23, '2024-07-07', 'H7', 'Bayar lapangan.jpg', '0001', 19, 'terverifikasi', '-'),
(24, '2024-07-07', 'H7', 'Bayar lapangan.jpg', '0004', 19, 'terverifikasi', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

CREATE TABLE `data_user` (
  `id_user` int(8) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `no_tlp` varchar(16) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tipe_akun` varchar(16) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_user`
--

INSERT INTO `data_user` (`id_user`, `nama_user`, `no_tlp`, `alamat`, `tipe_akun`, `username`, `password`) VALUES
(1, 'Ahmad dedi', '0821-1686-2200', 'bekasi', 'admin', 'dedi', 'DEDI123'),
(6, 'Akbar B', '0813-8443-3515', 'permata regensi blok A 2 no. 3 Rt02 Rw12 cibitung', 'member', 'akbar', 'akbar123'),
(7, 'SMAN 7 TAMSEL', '0895-8553-3215', 'Jl. Komp. Graha Prima No.1, Mangunjaya, Kec. Tambun Sel., Kabupaten Bekasi, Jawa Barat 17510', 'member', 'dicky', 'diki123'),
(9, 'rusdi afriansyah', '0813-9827-5531', 'JL. dukuh tridaya indah 4 blcok C8 no 2 RT/RW 02/12', 'member', 'rusdi', 'rusdi123'),
(10, 'Farhasnyah putra sugeng', '0857-2256-1756', 'graha prima blok a 13 no.8 RT/RW 05/13', 'member', 'Farhan', 'farhan123'),
(11, 'Rangga PBSI', '0857-7536-6269', 'permata regensi blok c 4 no. 2 Rt03 Rw12 cibitung', 'member', 'rangga ', 'rangga123'),
(12, 'SMAN 4 TAMUN SELATAN', '0895-2989-3390', 'Jl. Kencana Raya No.2 Blok F, Sumberjaya, Kec. Tambun Sel., Kabupaten Bekasi, Jawa Barat 17510', 'member', 'rifki', 'rifki123'),
(13, 'SMAN 3 TAMBUN SELATAN', '0813-8021-6853', 'jl krakatau puri cendana blok b8 no.4 RT/RW 01/03 Tambun selatan 17510', 'member', 'eko', 'eko123'),
(14, 'Mulyono', '0895-8756-9980', 'tridaya indah 2 blok a 3 no 6 RT/RW 05/02 Tambun selatan', 'member', 'mulyono', 'mulyono123'),
(15, 'Bayu apriyadi', '0896-2243-0411', 'Graha prima blok d.13 no.2 RT/RW 01/02 Tambun selatan', 'member', 'bayu', 'bayu123'),
(16, 'Wailan wahyudi', '0882-1306-1210', 'Graha melasti Blok E.5 no.7 RT/RW 05/03 Tambun selatan', 'member', 'wailan', 'wailan123'),
(19, 'Heykal kusdian', '0822-9850-3138', 'Tridaya indah 3 Blok b 12 no.6 RT/RW 04/02 Tambun selatan', 'member', 'heykal', 'heykal123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_hari`
--
ALTER TABLE `data_hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indeks untuk tabel `data_jadwal`
--
ALTER TABLE `data_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `data_jam`
--
ALTER TABLE `data_jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indeks untuk tabel `data_lapangan`
--
ALTER TABLE `data_lapangan`
  ADD PRIMARY KEY (`id_lapangan`);

--
-- Indeks untuk tabel `data_minggu_ke`
--
ALTER TABLE `data_minggu_ke`
  ADD PRIMARY KEY (`id_minggu`);

--
-- Indeks untuk tabel `data_pesan_lapangan`
--
ALTER TABLE `data_pesan_lapangan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_jadwal`
--
ALTER TABLE `data_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `data_pesan_lapangan`
--
ALTER TABLE `data_pesan_lapangan`
  MODIFY `id_pesanan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_user` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
