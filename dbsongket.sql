-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2018 at 02:00 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsongket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('sidiq', '827ccb0eea8a706c4c34a16891f84e7b', 'Muhammad Siddiq Fisa Malaka');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_telpon` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `email`, `password`, `nama`, `no_telpon`, `alamat`) VALUES
(5, 'hafid@gmail.com', 'hafid', 'hafid fathurrahman', '087763432123', 'lombok timur kec.peringga sela'),
(6, 'ongga@gmail.com', 'ongga', 'ongga paicana', '087654908345', 'lombok timur kec.peringga baya'),
(7, 'siddiqfisamalaka@gmail.com', 'siddiq', 'siddiq fisamalaka', '081805772435', 'lombok timur NTB Kec suralaga');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `kd_detail_pesanan` int(5) NOT NULL,
  `kode_pesanan` varchar(50) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `status_order` varchar(20) NOT NULL,
  `bukti_transfer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`kd_detail_pesanan`, `kode_pesanan`, `id_customer`, `id_kota`, `tanggal_pesan`, `status_order`, `bukti_transfer`) VALUES
(17, '2018010821063', 6, 2, '2018-01-08', 'Lunas', 'gambar/2018010821063Desert.jpg'),
(18, '201801083084', 6, 1, '2018-01-08', 'Lunas', 'gambar/201801083084Lighthouse.jpg'),
(19, '2018010821969', 6, 3, '2018-01-08', 'Lunas', 'gambar/2018010821969Koala.jpg'),
(20, '2018010827796', 6, 1, '2018-01-08', 'Lunas', 'gambar/2018010827796Jellyfish.jpg'),
(21, '20180109656', 5, 1, '2018-01-09', 'Lunas', 'gambar/20180109656Lighthouse.jpg'),
(23, '201801098778', 5, 3, '2018-01-09', 'Lunas', ''),
(24, '2018011824065', 7, 3, '2018-01-18', 'Lunas', 'gambar/2018011824065Jellyfish.jpg'),
(25, '2018011816103', 7, 1, '2018-01-18', 'Lunas', 'gambar/2018011816103Hydrangeas.jpg'),
(26, '2018030432683', 7, 1, '2018-03-04', 'Lunas', 'gambar/2018030432683Chrysanthemum.jpg'),
(27, '2018050122968', 7, 1, '2018-05-01', 'Lunas', 'gambar/2018050122968Desert.jpg'),
(28, '2018050828397', 7, 3, '2018-05-08', 'Lunas', 'gambar/2018050828397Desert.jpg'),
(29, '2018050819708', 7, 2, '2018-05-08', 'Lunas', 'gambar/2018050819708Hydrangeas.jpg'),
(30, '2018050913724', 7, 1, '2018-05-09', 'Lunas', 'gambar/2018050913724Tulips.jpg'),
(31, '2018051519445', 7, 1, '2018-05-15', 'Lunas', 'gambar/2018051519445Desert.jpg'),
(33, '201805271841', 7, 1, '2018-05-27', 'Lunas', 'gambar/201805271841Lighthouse.jpg'),
(34, '2018062613665', 7, 1, '2018-06-26', 'Lunas', '');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kain`
--

CREATE TABLE `jenis_kain` (
  `kd_jenis_kain` int(11) NOT NULL,
  `nm_jenis_kain` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kain`
--

INSERT INTO `jenis_kain` (`kd_jenis_kain`, `nm_jenis_kain`) VALUES
(1, 'katun'),
(2, 'sutra');

-- --------------------------------------------------------

--
-- Table structure for table `kain_masuk`
--

CREATE TABLE `kain_masuk` (
  `kd_kain_masuk` int(5) NOT NULL,
  `kd_motif` varchar(10) NOT NULL,
  `tgl_kain_masuk` date NOT NULL,
  `jmlh_kain_masuk` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kain_masuk`
--

INSERT INTO `kain_masuk` (`kd_kain_masuk`, `kd_motif`, `tgl_kain_masuk`, `jmlh_kain_masuk`) VALUES
(17, '58', '2017-12-06', 100),
(18, '59', '2017-12-06', 100),
(19, '62', '2017-12-06', 100),
(20, '53', '2017-12-06', 100),
(21, '55', '2017-12-06', 100),
(22, '56', '2017-12-06', 100),
(23, '57', '2017-12-06', 100),
(24, '60', '2017-12-06', 100),
(25, '61', '2017-12-06', 100),
(26, '54', '2018-05-05', 100),
(27, '58', '2018-05-05', 40);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komen` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komen`, `nama`, `email`, `komentar`, `tanggal`) VALUES
(5, 'hafid fathurrahman', 'hafid@gmail.com', 'barangnya yang motif subhanala udah ada blomm', '2017-12-17'),
(6, 'ayi', 'ayi@gmail.com', 'fjfjdkjfk', '2017-12-28'),
(7, 'siddiq fiasamalaka', 'siddiqfisamalaka@gmail.com', 'aku mau pesen motif nanas', '2018-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `nm_kota` varchar(50) NOT NULL,
  `biaya` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nm_kota`, `biaya`) VALUES
(1, 'jogja', 80000),
(2, 'jakarta', 85000),
(3, 'kalimantan', 90000),
(4, 'Mujurku Mujurmu Mujur Kita Semua', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `id_pesanan` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `id_pesanan`, `tanggal`) VALUES
(52, '24', '2018-01-08'),
(53, '25', '2018-01-08'),
(54, '26', '2018-01-08'),
(57, '27', '2018-01-08'),
(58, '28', '2018-01-08'),
(59, '29', '2018-01-09'),
(60, '31', '2018-01-09'),
(61, '32', '2018-01-09'),
(62, '33', '2018-01-18'),
(63, '34', '2018-01-18'),
(64, '35', '2018-01-18'),
(65, '36', '2018-03-04'),
(66, '37', '2018-05-01'),
(67, '38', '2018-05-01'),
(68, '39', '2018-05-08'),
(69, '40', '2018-05-08'),
(70, '41', '2018-05-08'),
(71, '42', '2018-05-09'),
(72, '43', '2018-05-15'),
(73, '45', '2018-05-27'),
(74, '46', '2018-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `motif`
--

CREATE TABLE `motif` (
  `kd_motif` int(4) NOT NULL,
  `kd_jenis_kain` int(11) NOT NULL,
  `nm_motif` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `harga` int(30) NOT NULL,
  `berat_barang` varchar(30) NOT NULL,
  `stock` int(30) NOT NULL,
  `dijual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motif`
--

INSERT INTO `motif` (`kd_motif`, `kd_jenis_kain`, `nm_motif`, `gambar`, `harga`, `berat_barang`, `stock`, `dijual`) VALUES
(53, 1, 'anteng', 'gambar/antenganteng.jpg', 600000, '0.5', 90, 10),
(54, 2, 'keker', 'gambar/kekerkeker.jpg', 500000, '0.3', 90, 10),
(55, 1, 'nanas', 'gambar/nanasnanas.jpg', 700000, '0.4', 90, 8),
(56, 1, 'panah', 'gambar/panahpanah.jpg', 500000, '0.2', 90, 10),
(57, 1, 'ragi genep', 'gambar/ragi genepragi genep.jpg', 400000, '0.5', 95, 5),
(58, 2, 'bulan megantung', 'gambar/bulan megantungbulan megantung.jpg', 400000, '0.3', 80, 30),
(59, 2, 'bintang remawi', 'gambar/bintang remawebintang remawe.jpg', 300000, '0.5', 65, 5),
(60, 1, 'bulan berkerudung', 'gambar/bulan berkurungbulan berkurung.jpg', 500000, '0.5', 70, 9),
(61, 1, 'bintang mpet', 'gambar/bintang mpetbintang mpet.jpg', 300000, '0.5', 65, 13),
(62, 2, 'subhanala', 'gambar/subhanalasubhanala.jpg', 800000, '0.4', 50, 25);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(10) NOT NULL,
  `kode_pesanan` varchar(50) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `kd_motif` int(11) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `status_pesanan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `kode_pesanan`, `id_customer`, `kd_motif`, `jumlah_pesanan`, `status_pesanan`) VALUES
(24, '2018010821063', 6, 62, 2, 'Lunas'),
(25, '201801083084', 6, 61, 2, 'Lunas'),
(26, '201801083084', 6, 62, 1, 'Lunas'),
(27, '2018010821969', 6, 57, 5, 'Lunas'),
(28, '2018010827796', 6, 56, 6, 'Lunas'),
(29, '20180109656', 5, 61, 2, 'Lunas'),
(31, '201801098778', 5, 62, 3, 'Lunas'),
(32, '201801098778', 5, 61, 3, 'Lunas'),
(33, '2018011824065', 7, 61, 3, 'Lunas'),
(34, '2018011824065', 7, 58, 30, 'Lunas'),
(35, '2018011816103', 7, 55, 8, 'Lunas'),
(36, '2018030432683', 7, 62, 10, 'Lunas'),
(37, '2018050122968', 7, 56, 4, 'Lunas'),
(38, '2018050122968', 7, 53, 10, 'Lunas'),
(39, '2018050828397', 7, 60, 9, 'Lunas'),
(40, '2018050828397', 7, 62, 2, 'Lunas'),
(41, '2018050819708', 7, 59, 5, 'Lunas'),
(42, '2018050913724', 7, 54, 10, 'Lunas'),
(43, '2018051519445', 7, 62, 5, 'Lunas'),
(45, '201805271841', 7, 61, 5, 'Lunas'),
(46, '201805271841', 7, 62, 5, 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`password`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`kd_detail_pesanan`);

--
-- Indexes for table `jenis_kain`
--
ALTER TABLE `jenis_kain`
  ADD PRIMARY KEY (`kd_jenis_kain`);

--
-- Indexes for table `kain_masuk`
--
ALTER TABLE `kain_masuk`
  ADD PRIMARY KEY (`kd_kain_masuk`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `motif`
--
ALTER TABLE `motif`
  ADD PRIMARY KEY (`kd_motif`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `kd_detail_pesanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `jenis_kain`
--
ALTER TABLE `jenis_kain`
  MODIFY `kd_jenis_kain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kain_masuk`
--
ALTER TABLE `kain_masuk`
  MODIFY `kd_kain_masuk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `motif`
--
ALTER TABLE `motif`
  MODIFY `kd_motif` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
