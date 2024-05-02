-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 02 Bulan Mei 2024 pada 13.51
-- Versi server: 10.4.30-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suka_aset`
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
  `gambar` varchar(200) NOT NULL,
  `merek` varchar(100) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL,
  `jumlah` int(35) DEFAULT NULL,
  `tgl_beli` varchar(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `luas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aset`
--

INSERT INTO `aset` (`id_aset`, `id_kategori`, `asal_aset`, `nama_aset`, `gambar`, `merek`, `nilai`, `jumlah`, `tgl_beli`, `kondisi`, `keterangan`, `luas`) VALUES
(1, 1, 'Pekon', 'Tanah Kantor Pekon', '', '-', '24000000', 1, '2007-03-23', 'Baik', 'Milik Kantor Pekon', '16x50 M'),
(2, 4, 'Hibah', 'Puskesdes', '', '-', '45000000', 1, '2008-06-18', 'Baik', '20x20', '20x20 M'),
(3, 3, 'Pekon', 'Laptop', '', 'Asus TUF Gaming Core ir', '15000000', 1, '2023-08-31', 'Baik', 'Untuk Kaur Perencanaan', '1 Unit'),
(4, 3, 'Pekon', 'Printer', '', 'Brother', '4500000', 1, '2022-07-21', 'Baik', 'Inventaris Untuk Pekon', '-'),
(5, 3, 'Pekon', 'Printer', '', 'Epson', '4500000', 1, '2023-04-09', 'Baik', 'Printer Paud', '-'),
(6, 3, 'Pekon', 'Tiang Bendera', '', 'Besi', '4000000', 1, '2023-04-19', 'Baik', 'Inventaris Untuk Pekon', '1 Buah'),
(7, 3, 'Pekon', 'Plank Masjid ', '', 'Besi', '1500000', 1, '2023-04-21', 'Baik', 'Masjid Nur Rohman', '1 Unit'),
(8, 3, 'Pekon', 'Kursi Plastik', '', 'Napolly', '6400000', 1, '2023-05-01', 'Baik', 'Inventaris Pekon', '80 Buah'),
(9, 3, 'Pekon', 'Timbangan Badan', '', 'Geo', '400000', 1, '2023-05-01', 'Baik', ' Posyandu', '4 Buah'),
(10, 3, 'Pekon', 'Tripot Timbangan Balita', '', 'Besi', '3000000', 1, '2023-04-18', 'Baik', 'Posyandu Balita', '2 Unit'),
(11, 3, 'Pekon', 'Tensi Digital', '', 'Digital', '1500000', 1, '2023-04-18', 'Baik', 'Posyandu', '1 Unit'),
(12, 3, 'Pekon', 'Stadiometer', '', 'Tinggi Badan', '2500000', 1, '2023-04-18', 'Baik', 'Posyandu', '1 Unit'),
(13, 3, 'Pekon', 'Laptop', '', 'Acer', '9500000', 1, '2023-08-31', 'Baik', 'Inventaris Pekon Untuk Puskesos', '1 Unit'),
(14, 3, 'Pekon', 'Sound System', '', 'Simbada', '5000000', 1, '2023-06-20', 'Baik', 'Inventaris Untuk PKK', '1 Unit'),
(15, 3, 'Pekon', 'Lampu Jalan', '', 'Tenaga Surya', '26000000', 1, '2023-09-18', 'Baik', 'Inventaris Pekon', '4 Unit'),
(16, 3, 'Pekon', 'Hardisk External', '', 'Seagate', '2000000', 1, '2023-08-31', 'Baik', 'Inventaris Untuk Pekon', '2 Unit'),
(17, 3, 'Pekon', 'Printer', '', 'Canon 2770', '1500000', 1, '2023-08-31', 'Baik', 'Inventaris Untuk Pekon', '1 Unit'),
(18, 3, '', 'Net Voli', '', 'Molten', '500000', 1, '2023-05-08', 'Baik', 'Karang Taruna', '1 Buah'),
(19, 3, 'Pekon', 'Seragam Sepak Bola', '', 'Kaos', '6400000', 1, '2023-05-18', 'Baik', 'Karang Taruna', '32 Buah'),
(20, 3, 'Pekon', 'Kwh Listrik Lapangan Voli', '', 'KWH', '1500000', 1, '2023-05-18', 'Baik', 'Karang Taruna', '1 Unit'),
(21, 3, 'Pekon', 'Body Protektor', '', 'Busa', '1200000', 1, '2023-05-18', 'Baik', 'Karang Taruna', '2 Unit'),
(22, 3, 'Pekon', 'Matras', '', 'Busa', '6250000', 1, '2023-05-18', 'Baik', 'Karang Taruna', '25 Buah'),
(23, 3, 'Pekon', 'Busur Panah', '', 'Panah', '500000', 1, '2023-05-18', 'Baik', 'Karang Taruna', '1 Unit'),
(24, 3, 'Pekon', 'Mesin Pencacah ', '24042024121051.jpg', 'Cupper', '5000000', 1, '2024-10-25', 'Baik', 'Pertanian', '1 Unit'),
(25, 1, 'Hibah', 'Lapangan ', '02052024041010.jpg', '-', '0', 1, '2020-08-24', 'Baik', 'Inventaris Untuk Pekon Lap.Futsal', '18 x 38 M'),
(26, 4, 'Pekon', 'Gedung ', '', '-', '60000000', 1, '2018-06-14', 'Baik', 'Gedung PATBM', '9 x 9 m'),
(27, 4, 'Pekon', 'PAMSIMAS', '24042024113213.jpg', '-', '310000000', 1, '2018-11-29', 'Baik', 'Penyedia Air Minum Berbasis Masyarakat', '4 x 4 M');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(35) NOT NULL,
  `kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `nama_app`, `tahun`, `nama`, `alias`, `alamat`, `isi`, `gambar`, `akabest`) VALUES
(1, 'INVENTORI', '2023/2024', 'PANDANSARI SELATAN', 'INVENTARIS', 'JL Raya  Pandansari Selatan Kecamatan Sukoharjo Kabupaten Pringsewu', '', '28032024011614.jpg', 'mardybest@gmail.com'),
(2, 're', '', 'aka', '19081989578978975', '', '', '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`) VALUES
(1, 'Adminatun Jhony', 'admin', '21232f297a57a5a743894a0e4a801fc3', '381759704_IMG-20240502-WA0072.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id_aset`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aset`
--
ALTER TABLE `aset`
  MODIFY `id_aset` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
