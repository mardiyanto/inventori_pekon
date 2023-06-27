-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 09:06 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aset`
--

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `id_aset` int(35) NOT NULL,
  `id_kategori` int(35) NOT NULL,
  `id_ruang` int(35) NOT NULL,
  `nama_aset` varchar(100) NOT NULL,
  `spek` text NOT NULL,
  `jumlah` int(35) NOT NULL,
  `tgl_beli` varchar(100) NOT NULL,
  `kondisi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`id_aset`, `id_kategori`, `id_ruang`, `nama_aset`, `spek`, `jumlah`, `tgl_beli`, `kondisi`) VALUES
(1, 1, 1, 'PC RAKITAN', 'INTEL CORE I3 2200 RAM 4GB HDD 500 GB', 32, '2014-01-18', 'BAIK'),
(2, 10, 1, 'MONITOR LG', 'Monitor LED LG 19M38 LED Monitor 18.5', 27, '2014-01-18', 'BAIK'),
(3, 1, 10, 'PC RAKITAN', 'INTEL CORE I3 2200 RAM 4GB HDD 500 GB', 3, '2014-10-21', 'BAIK'),
(4, 1, 10, 'PC RAKITAN', 'INTEL CORE I5 2200 RAM 4GB HDD 500 GB', 2, '2015-10-14', 'BAIK'),
(5, 11, 10, 'PRINTER EPSON', 'EPSON L221', 1, '2019-01-21', 'BAIK'),
(6, 11, 10, 'PRINTER EPSON', 'EPSON L3110', 1, '2020-01-21', 'BAIK'),
(7, 11, 10, 'PRINTER CANON', 'CANNON G2010', 1, '2020-10-21', 'BAIK'),
(8, 1, 10, 'IBM X2300 M2', 'Intel Xeon Processor E3-1220 HDD 1 TB RAM 16 GB', 1, '2009-11-21', 'BAIK');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(35) NOT NULL,
  `kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'PC (PERSONAL KOMPUTER)'),
(2, 'LABTOP'),
(3, 'LEMARI'),
(4, 'MEJA'),
(5, 'KURSI'),
(6, 'MOBIL'),
(7, 'MOTOR'),
(8, 'ALAT WIFI'),
(9, 'PROJECKTOR'),
(10, 'MONITOR'),
(11, 'PRINTER'),
(12, 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(250) NOT NULL,
  `link` varchar(520) NOT NULL,
  `link_b` varchar(100) NOT NULL,
  `icon_menu` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL,
  `aktif` varchar(11) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `link`, `link_b`, `icon_menu`, `status`, `aktif`) VALUES
(1, 'SETTING', 'index.php?aksi=profil', '', 'fa-bar-chart-o', 'admin', 'Y'),
(6, 'DATA ASET', 'index.php?aksi=aset', '', 'fa-calendar', 'admin', 'Y'),
(10, 'KATEGORI', 'index.php?aksi=kategori', '', 'fa-users', 'admin', 'Y'),
(14, 'MENU', 'index.php?aksi=menu', '', 'fa-file-text', 'admin', 'Y'),
(15, 'RUANGAN', 'index.php?aksi=ruangan', '', 'fa-table', 'admin', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(20) NOT NULL,
  `nama_app` varchar(100) NOT NULL,
  `tahun` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `alias` varchar(350) NOT NULL,
  `alamat` text NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `akabest` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `nama_app`, `tahun`, `nama`, `alias`, `alamat`, `isi`, `gambar`, `akabest`) VALUES
(1, 'IBN ASET', '2022/2023', 'INSTITUT BAKTI NUSANTARA', 'IBN', 'JL Wismarini No 09 Pringsewu Lampung', '<p>Assalam mu&rsquo;alaikum wr. wb.</p>\r\n\r\n<p>Puji syukur rahmad dan karunia Allah SWT sehingga saya mampu menuliskan kata sambutan Kepala Puskesmas dalam rangka penerbitan website Puskesmas Bernung sebagai sarana informasi dan komunikasi up date Puskesmas Bernung melalui dunia maya. Untuk itu saya mengucapkan banyak terima kasih kepada semua pihak yang mendukung terbitnya website ini, terutama kepada TIM IT Dinas Kesehatan Kabupaten Pesawaran yang selalu berusaha meningkatkan layanan ini.</p>\r\n\r\n<p><img alt=\"\" class=\"left\" src=\"http://localhost/project/1.jpg\" style=\"height:160px; width:184px\" /></p>\r\n\r\n<p>Di era global dan pesatnya Teknologi Informasi ini, tidak dipungkiri bahwa keberadaan sebuah website untuk suatu&nbsp; instansi seperti halnya Puskesmas Bernung Sangat penting. Wahana website tersebut dapat digunakan sebagai sarana informasi dan komunikasi pihak Puskesmas Bernung dengan Pelanggan, dan stake holder secara luas. Selanjutnya, website Puskesmas Bernung dapat berfungsi sebagai media untuk mengetahui apa saja layanan yang ada di Puskesmas Bernung. Selain itu juga website juga dapat menjadi sarana promosi Puskesmas Bernung yang cukup efektif. Berdasarkan hal tersebut saya harapkan nantinya berbagai kegiatan positip Puskesmas Bernung (dalam dan luar gedung) dapat diunggah dari website Puskesmas Bernung, sehingga masyarakat dapat mengetahui kegiatan-kegiatan dan prestasi-prestasi yang telah berhasil diraih oleh Puskesmas Bernung ini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Akhirnya kami mengharapkan masukan dari berbagai pihak untuk website ini agar kami terus belajar dan meng-up date diri, sehingga tampilan, isi dan mutu website akan terus berkembang dan lebih baik nantinya. Oleh karena itu, saya memberikan dukungan sepenuhnya kepada TIM IT Dinas Kesehatan Kabupaten Pesawaran selaku pengelola website Puskesmas Bernung ini agar terus mengemPesawarann website dengan penuh semangat tanpa mengenal menyerah. Terima kasih atas kerjasamanya, maju terus untuk mencapai Puskesmas Bernung Paripurna.</p>\r\n\r\n<p>Wassalam mu&rsquo;alaikum Wr. Wb</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>drg. Ida Farida, M.Kes</p>\r\n', '18102022034029.jpg', 'mardybest@gmail.com'),
(2, 're', '', 'MARDIYANTO', '19081989578978975', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(35) NOT NULL,
  `nama_ruang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`) VALUES
(1, 'GOOGLE'),
(2, 'LANTAI 3 R1'),
(3, 'LANTAI 3 R2'),
(4, 'LANTAI 3 R3'),
(5, 'AULA'),
(6, 'JAVA'),
(7, 'DOSEN'),
(8, 'LAB 2'),
(9, 'KACA'),
(10, 'KANTOR'),
(11, 'SERVER'),
(12, 'LAB 1'),
(13, 'VIP'),
(14, 'PERPUS'),
(15, 'LPPM'),
(16, 'EDMODO KANTOR'),
(17, 'EDMODO R1'),
(18, 'EDMODO R2'),
(19, 'EDMODO R3'),
(20, 'EDMODO R4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`) VALUES
(1, 'Adminatun Jhony', 'admin', '21232f297a57a5a743894a0e4a801fc3', '482937136_avatar.png'),
(10, 'aka', 'aka', 'c4ca4238a0b923820dcc509a6f75849b', '1869563217_ilustrasi-ikan-lele-1_169.jpeg'),
(11, 'tes', '123', '202cb962ac59075b964b07152d234b70', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id_aset`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `id_aset` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
