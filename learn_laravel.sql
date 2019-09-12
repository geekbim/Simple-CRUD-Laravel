-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 12, 2019 at 04:03 AM
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
-- Database: `learn_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Abimanyu Gatya Dhaneswara', 'Programmer', 17, 'Cikarang Barat'),
(2, 'Dhanu WIdiyuta Baswara', 'Programmer', 13, 'Cikarang Barat'),
(3, 'Hazazi Nahri', 'Programmer', 10, 'Cikarang Barat'),
(4, 'asdasasa', 'asasasd', 14, 'asdasdas'),
(6, 'Joni', 'Web Designer', 19, 'Tambun Selatan'),
(7, 'Bakianto Jasmani Mansur M.Farm', 'tempora', 31, 'Gg. Samanhudi No. 178, Cirebon 90541, Bali'),
(8, 'Margana Tarihoran', 'sit', 30, 'Psr. Baan No. 759, Blitar 76394, NTB'),
(9, 'Kani Usamah M.M.', 'dolorem', 24, 'Gg. R.E. Martadinata No. 664, Solok 66663, SumUt'),
(10, 'Laswi Panji Wijaya S.Gz', 'asperiores', 27, 'Psr. Sukajadi No. 678, Bitung 95364, Banten'),
(11, 'Tina Zulaika', 'voluptas', 22, 'Jr. Bayan No. 464, Tual 25207, DIY'),
(12, 'Michelle Nasyiah', 'soluta', 23, 'Jln. Bacang No. 372, Batam 76811, SulBar'),
(13, 'Kayla Pratiwi S.Ked', 'quod', 36, 'Psr. W.R. Supratman No. 194, Banjarmasin 28031, NTT'),
(14, 'Pandu Anggriawan', 'voluptatem', 19, 'Kpg. Flora No. 700, Sabang 93867, DKI'),
(15, 'Wisnu Najmudin', 'excepturi', 30, 'Jr. R.E. Martadinata No. 554, Banda Aceh 82705, Jambi'),
(16, 'Eja Wadi Suwarno', 'expedita', 18, 'Ds. Sugiono No. 174, Cimahi 21274, Aceh'),
(17, 'Gada Kuswoyo S.Gz', 'laudantium', 36, 'Gg. Bahagia  No. 578, Gunungsitoli 89792, DIY'),
(18, 'Danu Reza Sihombing', 'nisi', 40, 'Gg. Bak Air No. 868, Banjar 25897, Bali'),
(19, 'Puji Vanya Anggraini S.E.I', 'reiciendis', 24, 'Psr. Rajawali Timur No. 642, Banjar 51877, KalBar'),
(20, 'Jessica Wulandari S.E.I', 'non', 32, 'Jln. Jend. A. Yani No. 358, Bengkulu 86176, Riau'),
(21, 'Jaiman Tarihoran S.I.Kom', 'dolorem', 40, 'Kpg. Cikapayang No. 888, Pematangsiantar 78544, KalTeng'),
(22, 'Maya Rahimah S.H.', 'veritatis', 17, 'Ki. Adisumarmo No. 425, Blitar 54654, Lampung'),
(23, 'Mila Pratiwi', 'modi', 25, 'Gg. Badak No. 792, Pontianak 16281, Gorontalo'),
(24, 'Betania Puti Kusmawati S.Pd', 'sint', 32, 'Ki. Haji No. 283, Pariaman 58353, KepR'),
(25, 'Ratna Agustina', 'debitis', 39, 'Dk. Kusmanto No. 952, Magelang 89888, JaTeng'),
(26, 'Zizi Tania Yulianti S.I.Kom', 'est', 29, 'Kpg. Babadak No. 243, Tomohon 70228, KalTim'),
(27, 'Martani Maheswara', 'officia', 23, 'Kpg. Bakti No. 865, Denpasar 36201, BaBel'),
(28, 'Mutia Pertiwi', 'doloremque', 30, 'Jr. Warga No. 600, Padangpanjang 77958, JaBar'),
(29, 'Intan Usada', 'deleniti', 39, 'Gg. Baik No. 91, Binjai 10359, Banten'),
(30, 'Cakrajiya Cawisadi Pradipta', 'dolor', 23, 'Gg. Bank Dagang Negara No. 868, Palangka Raya 62084, JaBar'),
(31, 'Erik Widodo', 'sequi', 33, 'Dk. Cihampelas No. 754, Langsa 51428, JaTeng'),
(32, 'Vicky Uyainah', 'rerum', 25, 'Jln. Warga No. 339, Tanjungbalai 26325, Lampung'),
(33, 'Viktor Enteng Rajata S.Gz', 'illo', 24, 'Kpg. Perintis Kemerdekaan No. 375, Tarakan 97479, SumBar'),
(34, 'Ratih Laksita', 'sit', 25, 'Kpg. BKR No. 825, Padangpanjang 51548, SulTra'),
(35, 'Dagel Firmansyah', 'porro', 39, 'Ds. Cihampelas No. 941, Pekanbaru 30662, Papua'),
(36, 'Ciaobella Gina Laksmiwati S.H.', 'velit', 21, 'Jln. Supono No. 925, Bengkulu 64097, SulBar'),
(37, 'Nugraha Habibi S.Kom', 'excepturi', 28, 'Gg. Surapati No. 266, Bau-Bau 32065, SulSel'),
(38, 'Suci Namaga', 'autem', 38, 'Gg. K.H. Maskur No. 961, Padangpanjang 69360, SulUt'),
(39, 'Tedi Cahyadi Mahendra S.E.', 'quasi', 37, 'Psr. Taman No. 362, Surabaya 45069, JaTim'),
(40, 'Juli Puspasari', 'dolorem', 18, 'Ki. Muwardi No. 212, Padangpanjang 13273, NTB'),
(41, 'Ganep Siregar', 'recusandae', 37, 'Kpg. Sukajadi No. 73, Kediri 23858, KalTim'),
(42, 'Ciaobella Kani Purwanti', 'reprehenderit', 30, 'Jr. K.H. Maskur No. 367, Surabaya 52750, NTB'),
(43, 'Fathonah Wulandari', 'qui', 19, 'Jln. Padma No. 832, Banda Aceh 80888, NTB'),
(44, 'Janet Puspasari', 'aliquid', 18, 'Ki. Baan No. 143, Tanjung Pinang 16929, DIY'),
(45, 'Kiandra Oliva Susanti', 'rerum', 40, 'Kpg. Salak No. 409, Semarang 77447, Papua'),
(46, 'Lulut Winarno', 'tempora', 37, 'Psr. Cikutra Barat No. 281, Bandar Lampung 33741, SulTra'),
(47, 'Darijan Kusuma Latupono', 'porro', 19, 'Jln. Yogyakarta No. 748, Bandar Lampung 58182, Bengkulu'),
(48, 'Gasti Talia Mayasari', 'non', 27, 'Kpg. Ki Hajar Dewantara No. 967, Prabumulih 32180, SulSel'),
(49, 'Kamila Laksmiwati', 'dolor', 38, 'Jr. Acordion No. 715, Kediri 38883, Bengkulu'),
(50, 'Ganep Jailani M.TI.', 'repellendus', 33, 'Gg. R.M. Said No. 869, Tegal 20525, JaTeng'),
(51, 'Tiara Zaenab Mardhiyah S.Pd', 'totam', 25, 'Dk. Ki Hajar Dewantara No. 484, Yogyakarta 14268, SumBar'),
(52, 'Vega Cakrabuana Simanjuntak', 'voluptatum', 23, 'Dk. Baja Raya No. 927, Palu 37999, KalBar'),
(53, 'Kairav Balangga Haryanto', 'et', 37, 'Ki. Ters. Pasir Koja No. 851, Jambi 54719, SulUt'),
(54, 'Maya Suryatmi', 'et', 32, 'Kpg. Bakin No. 87, Palopo 67051, PapBar'),
(55, 'Kurnia Hardiansyah', 'voluptas', 19, 'Ds. BKR No. 239, Pekanbaru 25140, KalUt'),
(56, 'Ikhsan Kambali Halim', 'eos', 29, 'Ds. Bara No. 946, Sawahlunto 34088, Bali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
