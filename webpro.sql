-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2019 at 05:21 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'Sawung', 'sawung'),
(2, 'Faris', 'faris'),
(3, 'Indra', 'indra'),
(4, 'Nadiah', 'nadiah'),
(5, 'Ahmad', 'ahmad');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `nama_barang` varchar(50) NOT NULL,
  `berat` float NOT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`nama_barang`, `berat`, `id_barang`) VALUES
('HP', 15, 407);

-- --------------------------------------------------------

--
-- Table structure for table `cektarif`
--

CREATE TABLE `cektarif` (
  `id_tarif` int(15) NOT NULL,
  `kota_asal` varchar(25) NOT NULL,
  `kota_tujuan` varchar(25) NOT NULL,
  `berat_barang` varchar(3) NOT NULL,
  `harga` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cektarif`
--

INSERT INTO `cektarif` (`id_tarif`, `kota_asal`, `kota_tujuan`, `berat_barang`, `harga`) VALUES
(101, 'Bekasi', 'Bandung', '1', 10000),
(102, 'Bekasi', 'Bandung', '2', 20000),
(103, 'Bekasi', 'Bandung', '3', 30000),
(104, 'Bekasi', 'Bandung', '4', 40000),
(105, 'Bekasi', 'Bandung', '5', 50000),
(107, 'Padang', 'Jakarta', '1', 23000);

-- --------------------------------------------------------

--
-- Table structure for table `droppoint`
--

CREATE TABLE `droppoint` (
  `kode` int(11) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `area` varchar(50) NOT NULL,
  `detail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `droppoint`
--

INSERT INTO `droppoint` (`kode`, `kota`, `area`, `detail`) VALUES
(301, 'Bandung', 'Antapani', 'Gandi\r\n\r\nJl.terusan Jakarta No.30 Rt12/rw04 Sebrang Borma Antapani Kabupaten Bandung'),
(302, 'Bandung', 'Andir', 'Ganggam \r\n\r\nPasarbaru Trade Center Lt Basement 1 Blok C No 31 Kec. Andir, Bandung'),
(303, 'Bandung', 'Arcamanik', 'Deden Saepuloh\r\n\r\nJl.Ah Nasution No.3 Rt 04 Rw 04 Kel. Cisaranten Kec. Arcamanik, Kota Bandung'),
(304, 'Bandung', 'Arjasari', 'Dianbudi\r\n\r\nJl. Raya Soreang-banjaran No. 22 Kamasan, Banjaran, Bandung Jawa Barat 40377'),
(305, 'Bandung', 'Astana Anyar', 'Ganggam Almubaroq\r\n\r\nPasarbaru Trade Center Lt Basement 1 Blok C No 31 Kec. Andir, Bandung'),
(308, 'DGSDGSDGDS', 'asd', 'DFSDGDSG');

-- --------------------------------------------------------

--
-- Table structure for table `karir`
--

CREATE TABLE `karir` (
  `id_karir` int(3) NOT NULL,
  `position` varchar(25) NOT NULL,
  `city` varchar(30) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karir`
--

INSERT INTO `karir` (`id_karir`, `position`, `city`, `postdate`) VALUES
(201, 'GRAPHIC DESIGNER ', 'Bekasi', '2019-11-30 00:00:00'),
(202, 'BRANDING DEPARTMENT(SPV)', 'Bekasi', '2019-11-30 00:00:00'),
(203, 'ACCOUNTING', 'Bekasi', '2019-11-30 00:00:00'),
(204, 'FINANCE', 'Bekasi', '2019-11-30 00:00:00'),
(205, 'HRD RECRUITMENT(SPV)', 'Bekasi', '2019-11-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `penerima`
--

CREATE TABLE `penerima` (
  `id_penerima` int(3) NOT NULL,
  `nama_penerima` varchar(25) NOT NULL,
  `no_penerima` varchar(15) NOT NULL,
  `kota_penerima` varchar(30) NOT NULL,
  `alamat_penerima` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerima`
--

INSERT INTO `penerima` (`id_penerima`, `nama_penerima`, `no_penerima`, `kota_penerima`, `alamat_penerima`) VALUES
(501, 'Stephen Edward', '089736482935', 'Bandung', 'Dental55 Apartemen Grand Asia Afrika, ruko D02, jalan Karapitan 01, Bandung'),
(502, 'Handika Sawung', '089837452037', 'Bandung', 'Jl. Ciawitali, RT.6/RW.9, Citeureup, Cimahi Utara, Kota Cimahi, Jawa Barat 40512'),
(503, 'Nadiah', '081224564387', 'Bandung', 'Sukamukti Blok B-1 No.12 , Sukamukti - Katapang , West Java, Indonesia 40921'),
(504, 'Yosua', '085785476865', 'Bandung', 'Jl. Kopo Sayati No.182A, Sayati, Margahayu, Bandung, Jawa Barat'),
(505, 'Gina', '082837462982', 'Bandung', 'jl.moch toha no.306 Bandung'),
(506, '', '', '', ' '),
(507, 'gak punya', '74987654', 'bandung', ' bojongsoang');

-- --------------------------------------------------------

--
-- Table structure for table `pengirim`
--

CREATE TABLE `pengirim` (
  `id_pengirim` int(3) NOT NULL,
  `nama_pengirim` varchar(25) NOT NULL,
  `no_pengirim` varchar(15) NOT NULL,
  `kota_pengirim` varchar(30) NOT NULL,
  `alamat_pengirim` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengirim`
--

INSERT INTO `pengirim` (`id_pengirim`, `nama_pengirim`, `no_pengirim`, `kota_pengirim`, `alamat_pengirim`) VALUES
(1, '', '', '', ' '),
(2, 'bismillah', '79874', 'bandung', 'sukabirus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `cektarif`
--
ALTER TABLE `cektarif`
  ADD PRIMARY KEY (`id_tarif`);

--
-- Indexes for table `droppoint`
--
ALTER TABLE `droppoint`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `karir`
--
ALTER TABLE `karir`
  ADD PRIMARY KEY (`id_karir`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`id_penerima`);

--
-- Indexes for table `pengirim`
--
ALTER TABLE `pengirim`
  ADD PRIMARY KEY (`id_pengirim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `cektarif`
--
ALTER TABLE `cektarif`
  MODIFY `id_tarif` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `droppoint`
--
ALTER TABLE `droppoint`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `karir`
--
ALTER TABLE `karir`
  MODIFY `id_karir` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `penerima`
--
ALTER TABLE `penerima`
  MODIFY `id_penerima` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `pengirim`
--
ALTER TABLE `pengirim`
  MODIFY `id_pengirim` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
