-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Nov 2016 pada 02.15
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensisiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `username_s` varchar(30) NOT NULL,
  `nis` int(11) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `status` enum('Alpha','Izin','Sakit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`no`, `nama`, `kelas`, `username_s`, `nis`, `tanggal`, `status`) VALUES
(12, 'Kristoforus Yoris', 'XI RPL 2', 'dandy', 101515928, '24 November, 2016', 'Alpha'),
(13, 'Muhammad Nuriansyah Malik', 'X TKJ 2', 'virgiandra', 10151521, '24 November, 2016', 'Izin'),
(14, 'Riski Dwi Sabar', 'X TKJ 2', 'dandy', 101515943, '24 November, 2016', 'Izin'),
(15, 'Bayuning Arjunanto', 'X AK 2', 'dandy', 101515911, '24 November, 2016', 'Alpha'),
(16, 'Prayogi Sukmana', 'XI RPL 2', 'dandy', 101515911, '24 November, 2016', 'Alpha'),
(17, 'Gelar Amar', 'X AK 22', 'dandy', 101515124, '24 November, 2016', 'Sakit'),
(18, 'Kristoforus', 'X AK 22', 'dandy', 101515124, '24 November, 2016', 'Alpha'),
(19, 'Muhammad Dandy', 'XI RPL 2', 'dandy', 1012512882, '24 November, 2016', 'Alpha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `piket`
--

CREATE TABLE `piket` (
  `username_p` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `piket`
--

INSERT INTO `piket` (`username_p`, `password`, `level`, `nama`) VALUES
('piket', 'piket', 'piket', 'oman ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `username_s` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`username_s`, `password`, `level`, `nama`, `kelas`) VALUES
('dandy', 'dandy', 'km', 'Muhammad Dandy', 'XI RPL 2'),
('siswa', 'siswa', 'km', 'bayunjing', 'xi rpl 2'),
('virgiandra', 'virgiandra', 'km', 'Virgiandra Adisma', 'XI AK 4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `piket`
--
ALTER TABLE `piket`
  ADD PRIMARY KEY (`username_p`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`username_s`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
