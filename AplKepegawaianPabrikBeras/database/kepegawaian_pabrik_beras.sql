-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 10:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kepegawaian_pabrik_beras`
--

-- --------------------------------------------------------

--
-- Table structure for table `beras`
--

CREATE TABLE `beras` (
  `id_beras` int(20) NOT NULL,
  `nama_beras` varchar(200) NOT NULL,
  `harga_beras` int(12) NOT NULL,
  `jumlah_beras` int(12) NOT NULL,
  `stok_beras` int(12) NOT NULL,
  `status_produksi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beras`
--

INSERT INTO `beras` (`id_beras`, `nama_beras`, `harga_beras`, `jumlah_beras`, `stok_beras`, `status_produksi`) VALUES
(1, 'unuss', 1000000, 61, 200, 'Tersedia'),
(2, 'beras sumatra', 250000, 50, 100, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` int(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jabatan` varchar(150) NOT NULL,
  `gaji_pokok` int(12) NOT NULL,
  `bonus` int(12) NOT NULL,
  `potongan` int(12) NOT NULL,
  `gaji_bersih` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id_gaji`, `nama`, `jabatan`, `gaji_pokok`, `bonus`, `potongan`, `gaji_bersih`) VALUES
(1, 'lani', 'Manajer', 3000000, 2000000, 50000, 3000011);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jabatan` varchar(150) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `jk`, `tempat_lahir`, `tanggal_lahir`, `jabatan`, `agama`, `kontak`, `alamat`) VALUES
(1, 'lani', 'Laki-laki', 'anjir pasar', '2001-10-23', 'Manajer', 'Islam', '088242754124', 'Desa andaman 1'),
(2, 'jaki', 'Laki-laki', 'anjir pasar', '2007-07-24', 'Security', 'Islam', '08264662723', 'desa andaman 1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
