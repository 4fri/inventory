-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2020 at 01:47 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iksaninventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `cc_divisi`
--

CREATE TABLE IF NOT EXISTS `cc_divisi` (
`id` int(11) NOT NULL,
  `nama_divisi` varchar(50) DEFAULT NULL,
  `stat` int(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `cc_divisi`
--

INSERT INTO `cc_divisi` (`id`, `nama_divisi`, `stat`) VALUES
(1, 'Purchasing', 9),
(2, 'Accounting', 9),
(3, 'Warehouse', 9),
(4, 'Human Resource', 9),
(5, 'General Affair', 9),
(7, 'Information Technology', 9),
(8, 'Customer Relation', 9),
(9, 'Citra Warna 9', 9),
(10, 'Quality Assurement', 9),
(11, 'Citra Warna 11', 9),
(12, 'Production', 9),
(13, 'Distribution', 9),
(14, 'SAP', 1),
(15, 'PPC', 1),
(16, 'APP', 1),
(17, 'PCP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cc_kirim`
--

CREATE TABLE IF NOT EXISTS `cc_kirim` (
`id` int(11) NOT NULL,
  `id_master` int(11) DEFAULT NULL,
  `id_divisi` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `ket` varchar(300) DEFAULT NULL,
  `stat` int(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cc_kirim`
--

INSERT INTO `cc_kirim` (`id`, `id_master`, `id_divisi`, `tgl`, `jml`, `ket`, `stat`) VALUES
(1, 3, 13, '2017-07-30 00:00:00', 65, 'Data sisa periode', 1),
(2, 3, 13, '2020-07-13 00:00:00', 150, 'Dikirim ke Distribution', 1),
(3, 8, 16, '2020-07-20 00:00:00', 200, 'Dari Invtory', 1),
(4, 9, 16, '2020-07-20 00:00:00', 100, 'permitaan buat PL-09283 PJ : Sap', 1),
(5, 9, 15, '2020-07-23 00:00:00', 800, 'pj sap untuk PL-21201', 1),
(6, 7, 16, '2020-07-19 00:00:00', 100, 'Dikirim Dari Ivt ke App melalui Sap', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cc_master`
--

CREATE TABLE IF NOT EXISTS `cc_master` (
`id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `stat` int(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `cc_master`
--

INSERT INTO `cc_master` (`id`, `nama`, `tag`, `tgl`, `stat`) VALUES
(7, 'PI', 'PPC', '2020-07-19 00:00:00', 1),
(8, 'P - Tank', 'PCP', '2020-07-19 00:00:00', 1),
(9, 'Bracket', 'PCP', '2020-07-19 00:00:00', 1),
(10, 'SC', 'PCP', '2020-07-19 00:00:00', 1),
(11, 'OC', 'PCP', '2020-07-19 00:00:00', 1),
(12, 'OR', 'Vendor KHE', '2020-07-19 00:00:00', 1),
(13, 'EAB', 'PCP', '2020-07-19 00:00:00', 1),
(14, 'EA', 'PCP', '2020-07-19 00:00:00', 1),
(15, 'AOC', 'PCP', '2020-07-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cc_project`
--

CREATE TABLE IF NOT EXISTS `cc_project` (
`id` int(11) NOT NULL,
  `nama_project` varchar(100) NOT NULL,
  `tgl` datetime NOT NULL,
  `stat` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cc_project`
--

INSERT INTO `cc_project` (`id`, `nama_project`, `tgl`, `stat`) VALUES
(1, 'Laporan Inventory Juli 2017', '2017-07-30 15:32:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cc_temp`
--

CREATE TABLE IF NOT EXISTS `cc_temp` (
`id` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `tb` varchar(30) NOT NULL,
  `id_master` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `tgl` datetime NOT NULL,
  `jml` int(11) NOT NULL,
  `ket` varchar(300) NOT NULL,
  `stat` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `cc_temp`
--

INSERT INTO `cc_temp` (`id`, `id_project`, `tb`, `id_master`, `id_divisi`, `tgl`, `jml`, `ket`, `stat`) VALUES
(1, 1, 'cc_terima', 1, 0, '2017-07-25 00:00:00', 0, 'Data awal', 1),
(2, 1, 'cc_terima', 2, 0, '2017-07-26 00:00:00', 0, 'Data awal', 1),
(3, 1, 'cc_terima', 3, 0, '2017-07-25 00:00:00', 0, 'Data awal', 1),
(4, 1, 'cc_terima', 4, 0, '2017-07-27 00:00:00', 0, 'Data awal', 1),
(5, 1, 'cc_terima', 5, 0, '2017-07-26 00:00:00', 0, 'Data awal', 1),
(6, 1, 'cc_terima', 6, 0, '2017-07-25 00:00:00', 0, 'Data awal', 1),
(7, 1, 'cc_terima', 3, 0, '2017-07-28 00:00:00', 300, 'dibeli pak made', 1),
(8, 1, 'cc_terima', 2, 0, '2017-07-30 00:00:00', 150, 'dikirim sebagian oleh pak sugih', 1),
(9, 1, 'cc_terima', 6, 0, '2017-07-27 00:00:00', 5000, 'beli', 1),
(10, 1, 'cc_terima', 4, 0, '2017-07-29 00:00:00', 400, 'untuk persediaan quota pulsa sebulan', 1),
(11, 1, 'cc_terima', 1, 0, '2017-07-30 00:00:00', 800, '', 1),
(12, 1, 'cc_terima', 5, 0, '2017-07-30 00:00:00', 50, 'stok untuk masing-masing divisi', 1),
(13, 1, 'cc_terima', 3, 0, '2017-07-30 00:00:00', 200, 'baru dibeli ayu', 1),
(16, 1, 'cc_kirim', 3, 13, '2017-07-29 00:00:00', 80, 'Dikirim ke Distribution', 1),
(17, 1, 'cc_terjual', 3, 13, '2017-07-30 00:00:00', 15, 'kehabisan pulpen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cc_terima`
--

CREATE TABLE IF NOT EXISTS `cc_terima` (
`id` int(11) NOT NULL,
  `id_master` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `ket` varchar(300) DEFAULT NULL,
  `stat` int(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `cc_terima`
--

INSERT INTO `cc_terima` (`id`, `id_master`, `tgl`, `jml`, `ket`, `stat`) VALUES
(1, 1, '2017-07-30 00:00:00', 800, 'Data awal periode', 1),
(2, 2, '2017-07-30 00:00:00', 150, 'Data awal periode', 1),
(3, 3, '2017-07-30 00:00:00', 485, 'Data awal periode', 1),
(4, 4, '2017-07-30 00:00:00', 400, 'Data awal periode', 1),
(5, 5, '2017-07-30 00:00:00', 50, 'Data awal periode', 1),
(6, 6, '2017-07-30 00:00:00', 5000, 'Data awal periode', 1),
(7, 3, '2020-07-13 00:00:00', 100, '', 1),
(8, 7, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(9, 8, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(10, 9, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(11, 10, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(12, 11, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(13, 12, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(14, 13, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(15, 14, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(16, 15, '2020-07-19 00:00:00', 0, 'Data awal', 1),
(17, 15, '2020-07-19 00:00:00', 1000, '', 1),
(18, 8, '2020-07-19 00:00:00', 1000, 'PCP', 1),
(19, 9, '2020-07-19 00:00:00', 1000, 'vendor khe', 1),
(20, 7, '2020-07-19 00:00:00', 1000, 'Dari PCP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cc_terjual`
--

CREATE TABLE IF NOT EXISTS `cc_terjual` (
`id` int(11) NOT NULL,
  `id_master` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `jml` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `ket` varchar(300) NOT NULL,
  `stat` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin`
--

CREATE TABLE IF NOT EXISTS `cms_admin` (
  `username` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `priviledge` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_admin`
--

INSERT INTO `cms_admin` (`username`, `name`, `email`, `password`, `token`, `priviledge`) VALUES
('admin', 'Administrator', 'admin@localhost', '$2y$10$NtVX2YLOV3nbuL8H5yYcJ.o3Q3VBKuBV3rfHg2NovHMUEDgM6o8aS', 'd8ed7457a3464c783a4485c5173c8adce2210c1a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_fail`
--

CREATE TABLE IF NOT EXISTS `cms_admin_fail` (
`id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `useragent` varchar(500) DEFAULT NULL,
  `stat` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_log`
--

CREATE TABLE IF NOT EXISTS `cms_admin_log` (
`id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tgl` datetime DEFAULT NULL,
  `expired` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `cms_admin_log`
--

INSERT INTO `cms_admin_log` (`id`, `username`, `tgl`, `expired`, `token`, `ip`, `user_agent`) VALUES
(1, 'admin', '2017-06-30 05:02:19', '2017-06-30 17:02:19', 'c42b3d41b4d6a3895cf2b80e7a08dcb1be9a83c1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(2, 'admin', '2017-07-01 02:50:18', '2017-07-01 14:50:18', 'a2f9392bf91dc705be0c92d0f3458a6a52b697d2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(3, 'admin', '2017-07-03 02:01:15', '2017-07-03 14:01:15', '0ca31bee87d86235bc193dcd8ec46414c452a647', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(4, 'admin', '2017-07-04 03:19:15', '2017-07-04 15:19:15', '15fc59bcb23e52ab0ec6a76a41d66ed28a8aedee', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(5, 'admin', '2017-07-04 05:25:47', '2017-07-04 17:25:47', '26173cfafee8cb96a218ebe97df3ebb185c1fbe2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(6, 'admin', '2017-07-04 05:25:53', '2017-07-04 17:25:53', '7380ae29990cb723955ce30f7a2ba822fd479669', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(7, 'admin', '2017-07-04 09:51:28', '2017-07-04 21:51:28', '98c1f89c3c6849332601c4bf6cc0d158607ad783', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(8, 'admin', '2017-07-05 03:24:25', '2017-07-05 15:24:25', 'ed3e08a5348fe61c41e7c9d7a9a5219f4041f04f', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(9, 'admin', '2017-07-05 05:12:36', '2017-07-05 17:12:36', '6fbcdf8202f29748e95572958f9f832dbe34eda6', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(10, 'admin', '2017-07-21 02:24:46', '2017-07-21 14:24:46', '95ae6dde76e4e5dc672cd4d29028ab23568c0126', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(11, 'admin', '2017-07-30 14:40:34', '2017-07-31 02:40:34', '769c11ee9774003dfe2a724f0f30f219e8c9d03d', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(12, 'admin', '2017-07-30 14:59:12', '2017-07-31 02:59:12', 'ce7de48eb9bd8ee9b9130fb67d8d99e3f0b017ba', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(13, 'admin', '2017-07-30 14:59:46', '2017-07-31 02:59:46', 'fb491ba4ed16da2d7c7c968a1e632d92e58b4c16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(14, 'admin', '2017-07-30 15:06:03', '2017-07-31 03:06:03', '3d69ddafbfaa8642ff8fd203eaa50db56b126c3f', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(15, 'admin', '2020-07-13 12:01:24', '2020-07-14 00:01:24', '6bf4d1577f8ff931081e45f48d1654ff948c0ce1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0'),
(16, 'admin', '2020-07-13 12:33:02', '2020-07-14 00:33:02', 'bb48698554551b56607c31e9f51d6d078a851b1e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0'),
(17, 'admin', '2020-07-13 12:44:17', '2020-07-14 00:44:17', '0203736f8e048787094e9a8959176fb8e86bfc9a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0'),
(18, 'admin', '2020-07-19 12:00:17', '2020-07-20 00:00:17', 'e82d9c642fe160afe9d8488a543fbf47895ebcf5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0');

-- --------------------------------------------------------

--
-- Table structure for table `cms_option`
--

CREATE TABLE IF NOT EXISTS `cms_option` (
`id` int(4) NOT NULL,
  `param` varchar(30) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `content` text,
  `type` varchar(20) DEFAULT NULL,
  `def` text,
  `stat` int(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cms_option`
--

INSERT INTO `cms_option` (`id`, `param`, `label`, `content`, `type`, `def`, `stat`) VALUES
(1, 'session_key', 'Session Key', 'tianrosandhy_sess_key', 'text', 'tianrosandhy_sess_key', 9),
(2, 'backend_paging', 'Data Per Page (Admin)', '20', 'number', '20', 1),
(3, 'frontend_paging', 'Data Per Page (Front)', '10', 'number', '10', 1),
(4, 'webname', 'Website Name', 'Inventory Monitoring Sparepart', 'text', 'Website Name', 1),
(5, 'websubtitle', 'Website Sub Title', 'Another TianRosandhy''s App', 'text', 'Another TianRosandhy''s CMS Site', 1),
(6, 'max_login_try', 'Login Failed Max Try', '5', 'number', '5', 1),
(7, 'header_image', 'Header Image', NULL, 'text', NULL, 1),
(8, 'favicon', 'Favicon', NULL, 'text', NULL, 1),
(9, 'mail_system', 'Website Mail', 'me@tianrosandhy.com', 'text', 'me@tianrosandhy.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cc_divisi`
--
ALTER TABLE `cc_divisi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_kirim`
--
ALTER TABLE `cc_kirim`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_master`
--
ALTER TABLE `cc_master`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_project`
--
ALTER TABLE `cc_project`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_temp`
--
ALTER TABLE `cc_temp`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_terima`
--
ALTER TABLE `cc_terima`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_terjual`
--
ALTER TABLE `cc_terjual`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_admin`
--
ALTER TABLE `cms_admin`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cms_admin_fail`
--
ALTER TABLE `cms_admin_fail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_admin_log`
--
ALTER TABLE `cms_admin_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_option`
--
ALTER TABLE `cms_option`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cc_divisi`
--
ALTER TABLE `cc_divisi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cc_kirim`
--
ALTER TABLE `cc_kirim`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cc_master`
--
ALTER TABLE `cc_master`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cc_project`
--
ALTER TABLE `cc_project`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cc_temp`
--
ALTER TABLE `cc_temp`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cc_terima`
--
ALTER TABLE `cc_terima`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cc_terjual`
--
ALTER TABLE `cc_terjual`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_admin_fail`
--
ALTER TABLE `cms_admin_fail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_admin_log`
--
ALTER TABLE `cms_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cms_option`
--
ALTER TABLE `cms_option`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
