-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2020 at 10:58 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_kode` varchar(15) NOT NULL,
  `kamar_id` int(11) NOT NULL,
  `booking_awal` date NOT NULL,
  `booking_akhir` date NOT NULL,
  `booking_deskripsi` text NOT NULL,
  `booking_status` enum('proses','checkin','checkout') NOT NULL,
  `booking_tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_kode`, `kamar_id`, `booking_awal`, `booking_akhir`, `booking_deskripsi`, `booking_status`, `booking_tanggal`) VALUES
('BOH1200302646', 5, '2020-03-11', '1970-01-01', 'Tidak ada', 'proses', '2020-03-02 16:12:38'),
('BOH2200302130', 0, '2020-03-03', '2020-03-04', 'TIDAK ADA', 'checkout', '2020-03-02 16:14:47'),
('BOH3200302205', 11, '2020-03-11', '2020-03-12', 'Fasilitas dibagusin', 'checkin', '2020-03-02 16:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `bukti_transfer`
--

CREATE TABLE `bukti_transfer` (
  `bt_id` int(11) NOT NULL,
  `booking_kode` varchar(15) NOT NULL,
  `bt_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bukti_transfer`
--

INSERT INTO `bukti_transfer` (`bt_id`, `booking_kode`, `bt_file`) VALUES
(1, 'BOH1180717229', '75091ae4a5874e3db6fb2f76fffde203.png'),
(2, 'BOH21807176', '23f98d1834c0aa0ef4ee1da2dcddbfd4.jpg'),
(3, 'BOH13200301166', '2260310fd98204209a0a7e54a547f8f9.jpg'),
(4, 'BOH13200301166', 'd9b052669c67a65f84fe1878c6210764.jpg'),
(5, 'BOH2200302130', '948f22825b0e94944ac3a0d60a4dd60a.jpg'),
(6, 'BOH3200302205', 'a8be4b5320834cad9e59ba56c245757d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `booking_kode` varchar(15) NOT NULL,
  `customer_nama` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_tel` char(12) NOT NULL,
  `customer_tgl_lahir` date NOT NULL,
  `customer_kota` varchar(50) NOT NULL,
  `customer_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `booking_kode`, `customer_nama`, `customer_email`, `customer_tel`, `customer_tgl_lahir`, `customer_kota`, `customer_alamat`) VALUES
(1, 'BOH1200302646', 'Uum Khumaeroh', 'uumkhumaeroh@gmail.com', '087263263277', '2020-03-02', 'Indramayu', 'Majasih'),
(2, 'BOH2200302130', 'Soni', 'soni@gmail.com', '08474181898', '2020-03-05', 'Jakarta', 'Ternate'),
(3, 'BOH3200302205', 'Iis Juita Sari', 'iis@gmail.com', '058299838939', '2020-03-02', 'Indramayu', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `fasilitas_id` int(11) NOT NULL,
  `fasilitas_nama` varchar(2550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`fasilitas_id`, `fasilitas_nama`) VALUES
(1, 'AC'),
(2, 'Toilet'),
(4, 'Kamar'),
(5, 'Pancoran'),
(6, 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` varchar(15) NOT NULL,
  `kuisioner_id` int(11) NOT NULL,
  `feedback_nilai` enum('Ya','Tidak') NOT NULL,
  `feedback_email` varchar(50) NOT NULL,
  `feedback_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `kuisioner_id`, `feedback_nilai`, `feedback_email`, `feedback_tanggal`) VALUES
('FED26071893', 2, 'Ya', '', '2018-07-26 20:56:12'),
('FED26071893', 3, 'Tidak', '', '2018-07-26 20:56:13'),
('FED26071893', 4, 'Ya', '', '2018-07-26 20:56:13'),
('FED260718199', 2, 'Tidak', 'adityads@ymail.com', '2018-07-26 20:56:35'),
('FED260718199', 3, 'Ya', 'adityads@ymail.com', '2018-07-26 20:56:35'),
('FED260718199', 4, 'Ya', 'adityads@ymail.com', '2018-07-26 20:56:35'),
('FED260718756', 2, 'Tidak', 'danielsilverw@gmail.com', '2018-07-26 20:56:43'),
('FED260718756', 3, 'Ya', 'danielsilverw@gmail.com', '2018-07-26 20:56:43'),
('FED260718756', 4, 'Ya', 'danielsilverw@gmail.com', '2018-07-26 20:56:43'),
('FED260718243', 2, 'Ya', 'syukronrushadi@yahoo.co.id', '2018-07-26 20:56:50'),
('FED260718243', 3, 'Ya', 'syukronrushadi@yahoo.co.id', '2018-07-26 20:56:50'),
('FED260718243', 4, 'Ya', 'syukronrushadi@yahoo.co.id', '2018-07-26 20:56:50'),
('FED26071839', 2, 'Ya', 'asdsa@aaa.com', '2018-07-26 20:56:57'),
('FED26071839', 3, 'Tidak', 'asdsa@aaa.com', '2018-07-26 20:56:57'),
('FED26071839', 4, 'Ya', 'asdsa@aaa.com', '2018-07-26 20:56:57'),
('FED010320472', 2, 'Ya', 'najwah@gmail.com', '2020-03-01 22:48:44'),
('FED010320472', 3, 'Ya', 'najwah@gmail.com', '2020-03-01 22:48:44'),
('FED010320472', 4, 'Ya', 'najwah@gmail.com', '2020-03-01 22:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `gambar_id` int(11) NOT NULL,
  `tipe_kode` varchar(15) NOT NULL,
  `gambar_judul` varchar(25) NOT NULL,
  `gambar_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `kamar_id` int(11) NOT NULL,
  `tipe_kode` varchar(5) NOT NULL,
  `kamar_status` enum('tersedia','booking','dipakai') NOT NULL DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`kamar_id`, `tipe_kode`, `kamar_status`) VALUES
(0, 'R002', 'tersedia'),
(5, 'R002', 'booking'),
(11, 'R002', 'dipakai'),
(12, 'R002', 'tersedia'),
(13, 'R002', 'tersedia'),
(56, 'R002', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_layanan`
--

CREATE TABLE `kategori_layanan` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(50) NOT NULL,
  `kategori_ket` text NOT NULL,
  `kategori_gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_layanan`
--

INSERT INTO `kategori_layanan` (`kategori_id`, `kategori_nama`, `kategori_ket`, `kategori_gambar`) VALUES
(2, 'Restaurant', 'Tempat makan sehat menu dihidangkan dari berbagai jenis bahan alami', '51e0e2853a24154efbc47108a4a1fc56.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kuisioner`
--

CREATE TABLE `kuisioner` (
  `kuisioner_id` int(11) NOT NULL,
  `kuisioner_pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuisioner`
--

INSERT INTO `kuisioner` (`kuisioner_id`, `kuisioner_pertanyaan`) VALUES
(2, 'Bagaimana pelayan kami?'),
(3, 'Apakah anda menyukai pelayanan kami?'),
(4, 'Apakah fasilitas kami memuaskan anda?');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `layanan_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `layanan_nama` varchar(50) NOT NULL,
  `layanan_harga` int(11) NOT NULL,
  `layanan_satuan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`layanan_id`, `kategori_id`, `layanan_nama`, `layanan_harga`, `layanan_satuan`) VALUES
(5, 2, 'Ikan Lele', 25000, 'Porsi');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `pembayaran_id` int(11) NOT NULL,
  `booking_kode` varchar(15) NOT NULL,
  `pembayaran_total` int(11) NOT NULL,
  `pembayaran_status` enum('menunggu','lunas') NOT NULL DEFAULT 'menunggu',
  `pembayaran_metode` enum('ditempat','transfer') NOT NULL,
  `pembayaran_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`pembayaran_id`, `booking_kode`, `pembayaran_total`, `pembayaran_status`, `pembayaran_metode`, `pembayaran_date`) VALUES
(1, 'BOH1200302646', 70000, 'menunggu', 'ditempat', NULL),
(2, 'BOH2200302130', 70000, 'lunas', 'transfer', '2020-03-02 16:25:37'),
(3, 'BOH3200302205', 70000, 'lunas', 'transfer', '2020-03-02 16:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `promo_id` int(11) NOT NULL,
  `tipe_kode` varchar(5) NOT NULL,
  `promo_min_hari` int(11) NOT NULL,
  `promo_diskon` int(11) NOT NULL,
  `promo_start` date NOT NULL,
  `promo_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `slide_id` int(11) NOT NULL,
  `slide_judul` varchar(25) NOT NULL,
  `slide_ket` text NOT NULL,
  `slide_gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`slide_id`, `slide_judul`, `slide_ket`, `slide_gambar`) VALUES
(3, 'Hotel Prambanan', 'Hotel Prambanan merupakan hotel terdekat dari stasiun Jatibarang', '181c11e226c6e5565233d1fe74d60035.jpg'),
(4, 'Hotel Prambanan', 'Hotel murah dengan kualitas terbaik', 'bd758256f5494fbb72ecc522abacfea9.jpg'),
(5, 'Tempat Parkir', 'Dilengkapi dengan tempat parkir yang luas', '15a5443c960a8dffcf6694ad11409550.jpg'),
(6, '2 Tempat Tidur dalam Satu', 'Dengan 2 tempat tidur membuat tidur anda nyaman', '3c25f17989c7720fcf7e12909d084a54.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tipe`
--

CREATE TABLE `tipe` (
  `tipe_kode` varchar(5) NOT NULL,
  `tipe_nama` varchar(50) NOT NULL,
  `tipe_harga` int(11) NOT NULL,
  `tipe_deskripsi` text NOT NULL,
  `tipe_fasilitas` text NOT NULL,
  `tipe_gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table hotel.tipe: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `hotel`.`tipe`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_nik` int(11) NOT NULL,
  `user_nama` varchar(50) NOT NULL,
  `user_username` varchar(25) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_tel` int(11) NOT NULL,
  `user_alamat` text NOT NULL,
  `user_foto` varchar(50) NOT NULL,
  `user_role` enum('admin','resepsionis','manajemen') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_nik`, `user_nama`, `user_username`, `user_password`, `user_email`, `user_tel`, `user_alamat`, `user_foto`, `user_role`) VALUES
(1233, 'Aditya Dharmawan Saputraa', 'admin', '202cb962ac59075b964b07152d234b70', 'aad@aa.com', 82371, 'asdaa', 'avatar-01.jpg\r\n', 'admin'),
(2147483647, 'Priliyandi', 'prili', '30057c5d6b98f7a67cbb45f188a99d5d', 'priliyandi22@gmail.com', 2147483647, 'Majasih', 'd44dd02489f7ac375573c20b6de96890.jpg', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_kode`),
  ADD KEY `room_kode` (`kamar_id`);

--
-- Indexes for table `bukti_transfer`
--
ALTER TABLE `bukti_transfer`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `booking_kode` (`booking_kode`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`fasilitas_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `kuisioner_id` (`kuisioner_id`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`gambar_id`),
  ADD KEY `room_kode` (`tipe_kode`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`kamar_id`),
  ADD KEY `room_kode` (`tipe_kode`);

--
-- Indexes for table `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD PRIMARY KEY (`kuisioner_id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`layanan_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`pembayaran_id`),
  ADD KEY `booking_kode` (`booking_kode`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`promo_id`),
  ADD KEY `tipe_kode` (`tipe_kode`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`tipe_kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bukti_transfer`
--
ALTER TABLE `bukti_transfer`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `fasilitas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `gambar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kuisioner`
--
ALTER TABLE `kuisioner`
  MODIFY `kuisioner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `layanan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `pembayaran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_nik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`kamar_id`) REFERENCES `kamar` (`kamar_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`booking_kode`) REFERENCES `booking` (`booking_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`kuisioner_id`) REFERENCES `kuisioner` (`kuisioner_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `gambar_ibfk_1` FOREIGN KEY (`tipe_kode`) REFERENCES `tipe` (`tipe_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`tipe_kode`) REFERENCES `tipe` (`tipe_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `layanan`
--
ALTER TABLE `layanan`
  ADD CONSTRAINT `layanan_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_layanan` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`booking_kode`) REFERENCES `booking` (`booking_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `promo_ibfk_1` FOREIGN KEY (`tipe_kode`) REFERENCES `tipe` (`tipe_kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
