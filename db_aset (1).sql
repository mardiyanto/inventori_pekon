-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 Mar 2024 pada 23.50
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `aset`
--

CREATE TABLE `aset` (
  `id_aset` int(35) NOT NULL,
  `id_kategori` int(35) NOT NULL,
  `asal_aset` varchar(100) DEFAULT NULL,
  `nama_aset` varchar(100) DEFAULT NULL,
  `merek` varchar(100) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL,
  `jumlah` int(35) DEFAULT NULL,
  `tgl_beli` varchar(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL,
  `keterangan` text,
  `luas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aset`
--

INSERT INTO `aset` (`id_aset`, `id_kategori`, `asal_aset`, `nama_aset`, `merek`, `nilai`, `jumlah`, `tgl_beli`, `kondisi`, `keterangan`, `luas`) VALUES
(1, 1, 'Pekon', 'Tanah Kantor Pekon', '-', '2400000', 1, '2021-01-28', 'Baik', 'Milik Kantor Pekon', '16x50 M'),
(2, 1, 'Pekon', 'Puskesdes', '-', '240000000', 1, '2021-01-01', 'Baik', '20x20', '20x20 M');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(35) NOT NULL,
  `kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'TANAH'),
(2, 'KENDARAAN'),
(3, 'PERALATAN & MESIN'),
(4, 'BANGUNAN'),
(5, 'IRIGASI,JALAN & JARINGAN'),
(6, 'LAINYA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
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
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `link`, `link_b`, `icon_menu`, `status`, `aktif`) VALUES
(1, 'SETTING', 'index.php?aksi=profil', '', 'fa-bar-chart-o', 'admin', 'Y'),
(6, 'DATA ASET', 'index.php?aksi=aset', '', 'fa-calendar', 'admin', 'Y'),
(10, 'KATEGORI', 'index.php?aksi=kategori', '', 'fa-users', 'admin', 'Y'),
(14, 'MENU', 'index.php?aksi=menu', '', 'fa-file-text', 'admin', 'Y'),
(15, 'RUANGAN', 'index.php?aksi=ruangan', '', 'fa-table', 'admin', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
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
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `nama_app`, `tahun`, `nama`, `alias`, `alamat`, `isi`, `gambar`, `akabest`) VALUES
(1, 'INVENTORI', '2022/2023', 'PANDANSARI SELATAN', 'IVENTORI', 'JL Raya  Pandansari Selatan Kabupaten Pringsewu', '', '18102022034029.jpg', 'mardybest@gmail.com'),
(2, 're', '', 'MARDIYANTO', '19081989578978975', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
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
  MODIFY `id_aset` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
