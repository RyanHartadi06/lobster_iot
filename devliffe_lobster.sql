-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2022 at 05:37 PM
-- Server version: 5.7.36-log
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devliffe_lobster`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat`
--

CREATE TABLE `alat` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` text NOT NULL,
  `gambar` text NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alat`
--

INSERT INTO `alat` (`id_alat`, `nama_alat`, `gambar`, `deskripsi`, `created_at`) VALUES
(2, 'Sensor TDS SEN0224', 'ec02aad9bdb9d21063e347ac94e9c2e0.jpg', '<p>Merupakan sensor kompatibel Arduino yang digunkan untuk mengukur kadar TDS (Total Dissolve Solid ) pada air.<br />\r\nTDS sendiri merupakan kadar konsentrasi objek solid yang terlarut dalam air. Semakin tinggi nilai TDS nya maka semakin keruh airnya, begitupun sebaliknya. Semakin rendah nilai TDS nya maka semakin jernih pula air tersebut.<br />\r\nDengan Analog TDS Sensor/Meter for Arduino, Anda bisa membuat sendiri TDS meter di rumah menggunkan Arduino atau mikrokontroler sejenis.<br />\r\nSensor ini mendukung input tegangan antara 3.3 - 5V, serta output tegangan analog yang dihasilkan berkisar pada 0 - 2.3V. Sangat cocok untuk aplikasi manajemen kualitas air, hidroponik, dsb.</p>\r\n\r\n<p><br />\r\nSpesifikasi:<br />\r\n- Tegangan Input: 3.3 ~ 5.5V<br />\r\n- Tegangan Output: 0 ~ 2.3V<br />\r\n- Arus Kerja: 3 ~ 6mA<br />\r\n- Pengukuran TDS: 0 ~ 1000ppm<br />\r\n- Akurasi: &plusmn; 10% F.S. (25&deg;C)<br />\r\n- Dimensi Modul: 42 x 32 mm<br />\r\n- Pajang Probe 83 cm<br />\r\n- Tipe Output: Tegangan Analog</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '2021-08-18 12:03:14'),
(3, 'ESP32 Board', 'a694d7cc2b3c7a61bad5fbc3924d0a8c.jpg', '<p>ESP32 Development Board atau ESP32 Devkit adalah penerus ESP8266, dengan penambahan fitur-fitur baru. Berbeda dengan Arduino Board (UNO), modul ini sudah menyediakan WiFi dan Bluetooth.</p>\r\n\r\n<p>Spesifikasi:</p>\r\n\r\n<ul>\r\n	<li>Wireless connectivity\r\n	<ul>\r\n		<li>WiFi: 150.0 Mbps data rate dengan HT40</li>\r\n		<li>Bluetooth: BLE (Bluetooth Low Energy) dan legacy Bluetooth.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Processor: Tensilica Xtensa Dual-Core 32-bit LX6 microprocessor, pada 160 / 240MHz</li>\r\n	<li>ROM: 448KB</li>\r\n	<li>SRAM: 520KB</li>\r\n	<li>Low Power: jaminan masih bisa menjalankan ADC conversion, contohnya, saat deep sleep.</li>\r\n	<li>Peripheral Input/Output:&nbsp;\r\n	<ul>\r\n		<li>peripheral interface with DMA that includes capacitive touch</li>\r\n		<li>ADC (Analog-to-Digital Converter)</li>\r\n		<li>DAC (Digital-to-Analog Converter)</li>\r\n		<li>I&sup2;C (Inter-Integrated Circuit)</li>\r\n		<li>UART (Universal Asynchronous Receiver/Transmitter)</li>\r\n		<li>SPI (Serial Peripheral Interface)</li>\r\n		<li>I&sup2;S (Integrated Interchip Sound)</li>\r\n		<li>RMII (Reduced Media-Independent Interface)</li>\r\n		<li>PWM (Pulse-Width Modulation).</li>\r\n	</ul>\r\n	</li>\r\n	<li>Security: hardware accelerators for AES and SSL/TLS</li>\r\n</ul>\r\n', '2021-08-20 08:11:04'),
(4, 'Sensor Suhu DS18B20', 'b7635d45c355843dd21d831cd4302a7a.jpg', '<p>DS18b20 Digital Sensor Suhu Modul suhu untuk Arduino Raspberry<br />\r\nTermometer dig it al DS18B20 menyediakan pengukuran suhu Celsius 9-bit hingga 12-bit dan memiliki fungsi alarm dengan titik pemicu atas dan bawah yang dapat diprogram pengguna yang tidak mudah menguap.<br />\r\nDS18B20 berkomunikasi melalui bus 1-Wire yang menurut definisi hanya membutuhkan satu jalur data (dan ground) untuk komunikasi dengan mikroprosesor pusat.<br />\r\nIni memiliki rentang suhu pengoperasian -55C hingga +125C dan akurat hingga 0,5C pada rentang -10C hingga +85C. Selain itu, DS18B20 dapat memperoleh daya langsung dari jalur data (daya parasit), menghilangkan kebutuhan akan catu daya eksternal.<br />\r\nSetiap DS18B20 memiliki kode serial 64-bit yang unik, yang memungkinkan beberapa DS18B20 berfungsi pada bus 1-Wire yang sama. Dengan demikian, mudah untuk menggunakan satu mikroprosesor untuk mengontrol banyak DS18B20 yang didistribusikan di area yang luas.</p>\r\n\r\n<p><br />\r\nFITUR:<br />\r\n- Antarmuka 1-Kawat Unik Hanya Membutuhkan Satu Pin Port untuk Komunikasi<br />\r\n- Setiap Perangkat memiliki Kode Serial 64-Bit Unik yang Disimpan dalam ROM On-Board<br />\r\n- Kemampuan Multidrop Menyederhanakan Aplikasi Penginderaan Suhu Terdistribusi<br />\r\n- Tidak Membutuhkan Komponen Eksternal Dapat Didukung dari Jalur Data; Rentang Catu Daya adalah 3.0V hingga 5.5V<br />\r\n- Mengukur Suhu dari -55C hingga +125C (-67F hingga +257F)<br />\r\n- Akurasi 0,5C dari -10C hingga +85C<br />\r\n- Resolusi Termometer Dapat Dipilih Pengguna<br />\r\n- Mengonversi Suhu ke Kata Digital 12-Bit dalam 750ms (Maks)<br />\r\n- Pengaturan Alarm Nonvolatile (NV) yang Dapat Ditentukan Pengguna<br />\r\n- Perintah Pencarian Alarm Mengidentifikasi dan Mengatasi Perangkat Yang Suhunya Di Luar Batas Terprogram (Kondisi Alarm Suhu)<br />\r\n- Tersedia dalam Paket 8-Pin SO (150 mils), 8-Pin SOP, dan 3-Pin TO-92<br />\r\n- Perangkat Lunak yang Kompatibel dengan Aplikasi DSA Termasuk Kontrol Termostatik, Sistem Industri, Produk Konsumen, Termometer, atau Sistem Sensitif Termal</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-08-20 08:11:42'),
(5, 'Sensor PH4502C', '1e0f068b9344b3275b47832477e89dfd.jpg', '<p>Sensor PH4502C merupakan sensor pendeteksi ph dalam air.</p>\r\n\r\n<p>SPESIFIKASI<br />\r\nDaya Modul: 5.00V<br />\r\nUkuran Modul: 43 x 32mm (1.69x1.26&quot;)<br />\r\nRentang Pengukuran: 0 - 14PH<br />\r\nMengukur Suhu: 0 - 60<br />\r\nAkurasi : &plusmn; 0.1pH (25 )<br />\r\nWaktu Respons: 1 menit<br />\r\nSensor pH dengan Konektor BNC<br />\r\nAntarmuka pH2.0 (tambalan 3 kaki)<br />\r\nDapatkan Potensiometer Penyesuaian<br />\r\nLED Indikator Daya</p>\r\n\r\n<p>Gravitasi: Sensor pH Analog / Kit Meter Untuk Arduino x1<br />\r\nProbe pH (konektor BNC) x1<br />\r\npapan sirkuit sensor pH x1<br />\r\nKabel analog x1</p>\r\n', '2021-08-20 08:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `id_user` int(3) NOT NULL,
  `judul` text NOT NULL,
  `lokasi` text NOT NULL,
  `nama_kolam` text NOT NULL,
  `deskripsi` text NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 = iot 2 = manual\r\n',
  `CreatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_sensor`
--

CREATE TABLE `data_sensor` (
  `id_data` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `ph` float NOT NULL,
  `tds` float NOT NULL,
  `suhu` float NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_ikan`
--

CREATE TABLE `detail_ikan` (
  `id_detail` int(11) NOT NULL,
  `id_ikan` int(11) NOT NULL,
  `ph` varchar(20) NOT NULL,
  `tds` varchar(20) NOT NULL,
  `suhu` varchar(20) NOT NULL,
  `do` varchar(20) NOT NULL,
  `salinity` varchar(20) NOT NULL,
  `grade` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_ikan`
--

INSERT INTO `detail_ikan` (`id_detail`, `id_ikan`, `ph`, `tds`, `suhu`, `do`, `salinity`, `grade`) VALUES
(3, 6, '6.8 - 7.4', '250 - 300', '25 - 26', '> 7', '0.05 - 0.15', 'A'),
(4, 6, '6.5-;-7.5', '0 - 350', '20 - 28', '5.0 - 6.0', '0.00 - 0.2', 'B'),
(5, 6, '5.5 - 6.5 ; 7.5 - 8.', '400 - 450', '15 - 20 ; 28 - 30', '3.0 - 4.0', '0.25 - 0.3', 'C'),
(6, 6, '0 - 5.0 ; > 8.5', '> 500', '<= 10 ; >= 32', '< 2 ', '> 0.4', 'D'),
(7, 7, '6.8 - 7.4', '250 - 300', '25 - 26', '> 7', '0.05 - 0.15', 'A'),
(8, 7, '6.5-;-7.5', '0 - 350', '20 - 28', '5.0 - 6.0', '0.00 - 0.2', 'B'),
(9, 7, '5.5 - 6.5 ; 7.5 - 8.', '400 - 450', '15 - 20 ; 28 - 30', '3.0 - 4.0', '0.25 - 0.3', 'C'),
(10, 7, '0 - 5.0 ; > 8.5', '> 500', '<= 10 ; >= 32', '< 2 ', '> 0.4', 'D'),
(11, 8, '7.5 - 8.5', '75 - 100', '25 - 28', '> 7', '0.05 - 0.15', 'A'),
(12, 8, '7.0 - 8.7', '0 - 150', '20 - 30', '5.0 - 6.0', '0.00 - 0.2', 'B'),
(13, 8, '5.5 - 7 ; 8.7 - 8.9', '200 - 300', '15 - 20 ; 30 - 32', '3.0 - 4.0', '0.25 - 0.3', 'C'),
(14, 8, '0 - 5.0 ; > 9', '> 400', '<= 10 ; >= 35', '< 2', '> 0.4', 'D'),
(15, 5, '7.5 - 8.5', '300 - 350', '18 - 22', '> 7.0', '0.05 - 0.15', 'A'),
(16, 5, '7.0 - 8.7', '0 - 400', '15 - 28', '5.0 - 6.0', '0.00 - 0.2', 'B'),
(17, 5, '5.5 - 7 ; 8.7 - 8.9', '450 - 500', '13 - 15 ; 28 - 30', '3.0 - 4.0', '0.25 - 0.3', 'C'),
(18, 5, '0 - 5.0 ; > 9', '> 550', '<= 10 ; >=32', '< 2', '> 0.4', 'A'),
(19, 3, '7.5 - 8.5', '75 - 100', '25 - 29', '> 7.0', '0.05 - 0.15', 'A'),
(20, 3, '7.0 - 8.7 ', '0 - 150', '20 - 30', '5.0 - 6.0', '0.00 - 0.2', 'B'),
(21, 3, '5.5 - 7 ; 8.7 - 8.8', '200 - 300', '15 - 20 ; 30 - 32', '3.0 - 4.0', '0.25 - 0.3', 'C'),
(22, 3, '0 - 5.0 ; > 9', '> 400', '<= 10 ; >= 35', '< 2', '> 0.4', 'D'),
(23, 4, '7.5 - 8.5', '75 - 100', '25 - 29', '> 7.0', '0.05 - 0.15', 'A'),
(24, 4, '7.0 - 8.7 ', '0 - 150', '20 - 30', '5.0 - 6.0', '0.00 - 0.2', 'B'),
(25, 4, '5.5 - 7 ; 8.7 - 8.8', '200 - 300', '15 - 20 ; 30 - 32', '3.0 - 4.0', '0.25 - 0.3', 'C'),
(26, 4, '0 - 5.0 ; > 9', '> 400', '<= 10 ; >= 35', '< 2', '> 0.4', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_ikan`
--

CREATE TABLE `jenis_ikan` (
  `id_jenis` int(11) NOT NULL,
  `nama_ikan` text NOT NULL,
  `gambar` text NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_ikan`
--

INSERT INTO `jenis_ikan` (`id_jenis`, `nama_ikan`, `gambar`, `deskripsi`, `created_at`) VALUES
(3, 'Ogon', '334ba3cb93cc08de7bc0bb32fa65ff75.jpg', '<p>Dalam bahasa Jepang, &quot;Ogon&quot; berarti &quot;emas.&quot; Ini mengacu pada skala reflektif metalik yang terlihat pada koi ini. Kelompok ogon berisi sejumlah jenis koi lain selain yamabuki, termasuk ogon biasa dan gin. Ogon &quot;biasa&quot; memiliki warna emas ditambah dengan skala reflektif, sedangkan gin ogon memiliki warna platinum metalik atau keperakan.</p>\r\n', '2021-06-16 13:13:24'),
(4, 'Yamabuki', '64e3af9d80f702ec1a1988af08226302.jpg', '<p>Ikan Koi Yamabuki adalah subtipe dari koi Ogon. Yamabuki memiliki arti &quot;kuning pucat&quot; karena termasuk dalam kelompok Ogon, warnanya yang terdiri dari kunging pucat dibandingkan dengan Ogon, namun dengan skala reflektif karakteristik yang sama memberi tampilan metalik seperti subtipe dari ikan koi Ogon lainnya.</p>\r\n', '2021-06-16 13:13:24'),
(5, 'Shiro', '16542746b50191a6c8cbec470d966217.jpg', '<p>Dalam bahasa Jepang, &quot;Shiro&quot; berarti &quot;Putih&quot;. Ini mengacu pada skala reflektif metalik yang terlihat pada koi ini. Kelompok ohgon berisi sejumlah jenis koi lain selain yamabuki, termasuk ohgon biasa dan gin. Oghon &quot;biasa&quot; memiliki warna emas ditambah dengan skala reflektif, sedangkan gin oghon memiliki warna platinum metalik atau keperakan.</p>\r\n', '2021-06-16 13:13:39'),
(6, 'Showa', '70256c5e4562cd1de510edc02f541229.jpg', '<p>Sowa adalah salah satu ikan koi Gosanke atau &quot;3 Besar&quot; bersama dengan Taisho Sanke dan koi Kohaku. Sowa adalah koi yang cantik, dengan warna putih, merah, dan hitam yang dicat di seluruh tubuh mereka dengan cara yang sama seperti gambar kuas Jepang yang menunjukkan interpretasi artistik tanpa setiap goresan menjadi lengkap. Keindahan ikan ini menggugah emosi kita dengan kombinasi warna yang indah.</p>\r\n', '2021-06-16 13:13:39'),
(7, 'Sanke', 'c0c9d6daf0d9f04aab1da9455769e6d4.jpg', '<p>Taisho Sanshoku, juga disebut Taisho Sanke dan Sanke, dikembangkan dari Kohaku sekitar 80 tahun yang lalu pada tahun 1918 di era Taisho. Varietas Sanshoku akan memiliki 3 warna berbeda: putih, merah, dan hitam. Ada dua varietas &quot; Showa Sanshoku &quot; dan &quot;Taisho Sanshoku&quot;. Nama &quot;Sanshoku&quot; menandakan 3 warna dalam bahasa Jepang, keduanya Sanshoku akan menjadi Koi tiga warna. Mereka perlu dibedakan karena 2 varietas ini memiliki pola dan latar belakang yang berbeda. Umumnya, Sanke tidak memiliki warna hitam di kepalanya.</p>\r\n', '2021-06-16 13:13:50'),
(8, 'Kohaku', '9ab4ab58450e821c7e5e20ac4fb73087.jpg', '<p>Varietas koi yang paling representatif dari 80+ varietas adalah Kohaku yang memiliki pola merah pada tubuh putih. Kohaku adalah salah satu perwakilan varietas ikan Koi, dan mereka dicintai oleh orang-orang dari seluruh dunia. Seperti anjing dan kucing, orang menganggap garis keturunan Koi sangat serius, dan nama peternak koi merupakan faktor penting.</p>\r\n', '2021-06-16 13:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_min`
--

CREATE TABLE `nilai_min` (
  `id_min` int(11) NOT NULL,
  `id_perhitungan` int(11) NOT NULL,
  `nilai_min` float NOT NULL,
  `inference` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL,
  `no_telp` text NOT NULL,
  `is_active` int(1) NOT NULL COMMENT '0 = off 1 = on 2 = blokir',
  `alamat` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 = admin 2 = users',
  `kode_otp` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `email`, `password`, `foto`, `no_telp`, `is_active`, `alamat`, `status`, `kode_otp`, `created_at`) VALUES
(3, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', '', '', 1, '', 1, '', '2021-08-14 18:03:42'),
(4, 'Ryan', 'Ryanhartadi06@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'f397b2af9e0a5967ccbdcce9d8b876b5.jpg', '081359652164', 1, 'Jl.Nias Raya No.6b, Jember', 2, '', '2021-08-14 18:03:49'),
(5, 'Dimas Wahyu P', 'pdimas429@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', '081252455265', 1, 'Jl.Manggar IV/109 Gebang Kabupaten Jember', 2, '', '2021-11-02 15:46:40'),
(8, 'Ryan Hartadi', 'Ryanhartadi999@gmail.com', '202cb962ac59075b964b07152d234b70', '', '123123123', 1, 'Jalan Bangka 3 Nomor 1, Jember', 2, '163381', '2021-11-10 16:30:42'),
(9, 'Andre Krisna Pratama', 'yudhaoctavian01@gmail.com', '202cb962ac59075b964b07152d234b70', '', '0821313123333', 1, 'Jl. Diponegoro, Gg 5, Kotakulon, Bondowoso', 2, '381357', '2021-11-13 11:10:14'),
(10, 'lulung', 'alungsatrio12@gmail.com', '202cb962ac59075b964b07152d234b70', '', '081251532222', 1, 'Jl. Banyuwangi Desa Garahan Dusun Pasar Alas Kec. Silo', 2, '556034', '2021-11-14 11:51:55'),
(11, 'Virda Amalia', 'virdaamalia.27@gmail.com', '202cb962ac59075b964b07152d234b70', '', '089519200047', 1, 'b.	Jl. Arowana No. 9, Kecamatan Kaliwates, Kabupaten Jember, Jawa Timur', 2, '599120', '2021-11-15 12:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `perhitungan`
--

CREATE TABLE `perhitungan` (
  `id_perhitungan` int(11) NOT NULL,
  `id_data` int(11) NOT NULL,
  `ph` float NOT NULL,
  `tds` float NOT NULL,
  `suhu` float NOT NULL,
  `do` float NOT NULL,
  `salinity` float NOT NULL,
  `grade` varchar(1) NOT NULL,
  `nilai` double NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id_rules` int(11) NOT NULL,
  `ph` varchar(13) NOT NULL,
  `suhu` varchar(13) NOT NULL,
  `tds` varchar(13) NOT NULL,
  `do` varchar(13) NOT NULL,
  `salinity` varchar(13) NOT NULL,
  `grade` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rules_grade`
--

CREATE TABLE `rules_grade` (
  `id_rules_grade` int(11) NOT NULL,
  `id_perhitungan` int(11) NOT NULL,
  `id_rules` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sensor`
--

CREATE TABLE `sensor` (
  `id` int(11) NOT NULL,
  `ph` float NOT NULL,
  `tds` float NOT NULL,
  `suhu` float NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `variabel`
--

CREATE TABLE `variabel` (
  `id_variabel` int(11) NOT NULL,
  `nama_variabel` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variabel`
--

INSERT INTO `variabel` (`id_variabel`, `nama_variabel`) VALUES
(1, 'Baik'),
(2, 'Sedang'),
(3, 'Buruk'),
(4, 'Sangat Buruk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_sensor`
--
ALTER TABLE `data_sensor`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `detail_ikan`
--
ALTER TABLE `detail_ikan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `jenis_ikan`
--
ALTER TABLE `jenis_ikan`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `nilai_min`
--
ALTER TABLE `nilai_min`
  ADD PRIMARY KEY (`id_min`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `perhitungan`
--
ALTER TABLE `perhitungan`
  ADD PRIMARY KEY (`id_perhitungan`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id_rules`);

--
-- Indexes for table `rules_grade`
--
ALTER TABLE `rules_grade`
  ADD PRIMARY KEY (`id_rules_grade`);

--
-- Indexes for table `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variabel`
--
ALTER TABLE `variabel`
  ADD PRIMARY KEY (`id_variabel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alat`
--
ALTER TABLE `alat`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_sensor`
--
ALTER TABLE `data_sensor`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_ikan`
--
ALTER TABLE `detail_ikan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jenis_ikan`
--
ALTER TABLE `jenis_ikan`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nilai_min`
--
ALTER TABLE `nilai_min`
  MODIFY `id_min` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `perhitungan`
--
ALTER TABLE `perhitungan`
  MODIFY `id_perhitungan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id_rules` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rules_grade`
--
ALTER TABLE `rules_grade`
  MODIFY `id_rules_grade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sensor`
--
ALTER TABLE `sensor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variabel`
--
ALTER TABLE `variabel`
  MODIFY `id_variabel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
