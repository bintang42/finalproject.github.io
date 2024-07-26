-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jul 2024 pada 05.33
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Ngadimin, S.Kom'),
(2, 'lanesra@gmail.com', 'a5375c7f48244c8f4876ee6f97bbda4d91fe1665', 'Lanesra, M.Kom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `foto_artikel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `foto_artikel`) VALUES
(4, 'Kisah Tiga Sepatu Adidas yang Mendunia', '<p>Sejak pertama kali diperkenalkan 50 tahun yang lalu, adidas Originals telah memasuki kehidupan banyak orang, dari atlet hingga pesohor dan orang kebanyakan. Hampir semua koleksi sepatu adidas Originals berawal dari olahraga, namun pada perkembangannya sepatu-sepatu ini merambah dunia skate, musik, serta fashion, ketika orang-orang menggunakannya sehari-hari. Kini bisa dikatakan semua seri adidas Originals menjadi produk lifestyle dan fashion bergaya sporty karena memang berakar dari sepatu olahraga sungguhan pada jamannya. Di tahun 2023, adidas Originals mengenang koleksi serta para tokoh yang melambungkan nama brand ini lewat kampanye &ldquo;We Gave the World an Original. You Gave Us a Thousand Back&rsquo;. Dimulai dengan 3 film besutan tiga produser, yaitu Daniel Wolfe, Will Dohrn, dan Chadwick Tyler, yang masing-masing menggambarkan ikon dari koleksi adidas Originals, yaitu Superstar, Gazelle, serta Samba.</p>\r\n', 'artikel1.jpg'),
(5, 'Kisah Suksesnya Sepatu Compass', '<p>Sepatu Compass adalah sepatu lokal berkualitas yang tak kalah dengan merek asing, apakah kamu juga salah satu penggunanya?</p>\r\n\r\n<p>Belakangan ini, industri dalam negeri semakin menggeliat dan unjuk gigi di pasar nasional. Beberapa di antaranya juga ada yang dikira&nbsp;<em>brand&nbsp;</em>asing, sebab kualitasnya yang setara&nbsp;<em>brand&nbsp;</em>internasional.</p>\r\n\r\n<p>Mulai dari bisnis&nbsp;<em>fashion&nbsp;</em>seperti Erigo, perlengkapan&nbsp;<em>outdoor&nbsp;</em>Eiger, dan&nbsp;<a href=\"https://beritausaha.com/tips-bisnis/strategi-bisnis-kuliner/\">industri kuliner</a>&nbsp;seperti J.CO yang sebenarnya merupakan&nbsp;<em>brand&nbsp;</em>lokal rasa internasional.</p>\r\n\r\n<p>Dalam industri sepatu, merek sepatu Compass juga jadi salah satu&nbsp;<em>brand</em>&nbsp;yang banyak disukai anak muda.</p>\r\n\r\n<p>Pasalnya, Compass hadir dengan beragam pilih produk sepatu jenis&nbsp;<em>canvas</em>&nbsp;dengan model kekinian dan kualitas jempolan. Selain itu, harganya juga relatif lebih terjangkau dibanding merek asing.</p>\r\n', 'artikel2.jpg'),
(6, 'Sejarah Sepatu Nike', '<p>Perusahaan raksasa&nbsp;<a href=\"https://www.tempo.co/tag/nike\" target=\"_blank\">Nike</a>&nbsp;menuntut New Balance dan Skechers ke pengadilan federal Massachusetts pada tanggal 6 November 2023. Nike menuduh kedua perusahaan rivalnya itu telah melanggar hak paten terkait teknologi untuk membuat bagian atas sepatu kets.&nbsp;</p>\r\n\r\n<p>Dalam tuntutannya, Nike menyatakan bahwa beberapa produk sepatu lari New Balance dan Skechers telah salah menggunakan teknologi &quot;Flyknit&quot; yang dipatenkan oleh Nike untuk sepatu lari, sepak bola, dan bola basket.&nbsp;</p>\r\n', 'artikel31.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `foto_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `foto_kategori`) VALUES
(17, 'Baju', 'Brand-baju-pria-lokal.jpg'),
(18, 'Laptop', 'laptop_kategori.png'),
(19, 'Tas', 'Tas-Selempang.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `email_member` varchar(100) NOT NULL,
  `password_member` varchar(100) NOT NULL,
  `nama_member` varchar(100) NOT NULL,
  `alamat_member` text NOT NULL,
  `wa_member` varchar(50) NOT NULL,
  `kode_distrik_member` varchar(10) NOT NULL,
  `nama_distrik_member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `email_member`, `password_member`, `nama_member`, `alamat_member`, `wa_member`, `kode_distrik_member`, `nama_distrik_member`) VALUES
(4, 'arifin@amikom.ac.id', '2393dd1229f4271b15491a86fc61a45fc2bb661e', 'Arifin Arya', 'Sedayu, Sleman', '87654321', '501', 'Kota Yogyakarta DI Yogyakarta'),
(5, 'bintangfaza@gmail.com', 'cf00d19b41f7d0929e47d4a4704dc6afdd90e633', 'bintang faza', 'kembangsawit,kebumen', '081902779497', '177', 'Kabupaten Kebumen Jawa Tengah'),
(6, 'fasa@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'fasa bisa', 'sleman,jogja', '089346563221', '419', 'Kabupaten Sleman DI Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `berat_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_member`, `id_kategori`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`, `berat_produk`) VALUES
(11, 5, 17, 'Baju Kece', 100000, 'baju1.jpg', 'Baju Kaos hitam\r\nBahan Halus Dan Adem', 56),
(12, 5, 17, 'Baju Korea', 120000, 'baju2.jpg', 'Baju Hitam Dengan Motif Kece\r\nTampil Apik pakai baju ini', 60),
(13, 5, 18, 'Laptop HP Abu', 6700000, 'laptop1_hp.jpg', 'Laptop HP Warna Abu - Abu\r\nRAM 16GB SSD 515 \r\niCore i6\r\n', 1500),
(14, 5, 18, 'Laptop HP Elitebook', 5500000, 'laptop2_hp.jpg', 'Laptop HP Elitebook\r\nRAM 8GB SSD 225\r\nWarna Hitam', 2000),
(15, 5, 19, 'Tas GIVENCHI', 500000, 'tas1.jpg', 'Tas Brand Givenchi\r\nwarna Hitam\r\nBeli Handbag dapat dompet 1 gratis', 500),
(16, 5, 19, 'Handbag cool', 200000, 'tas3.jpeg', 'Handbag kalm dan cool\r\ntersedia warna hitam dan putih', 400),
(17, 5, 18, 'Laptop HP ProBook', 6700000, 'laptop3_hp.jpg', 'Laptop HP Probook \r\nRAM 16GB SSD 525\r\nWarna Hitam', 300),
(18, 5, 19, 'Tas PINK', 150000, 'tas2.jpg', 'Tas Warna Pink\r\nUnyu unyu \r\ncocok buat cewe', 650),
(19, 5, 17, 'Baju Anak Merk Cressida', 90000, 'baju3.jpg', 'Baju Bahan Halus\r\nNyaman di pakai', 60),
(20, 5, 18, 'Baju Erigo', 450000, 'baju4_erigo.jpg', 'warna merah\r\nnyaman di pakai\r\nbahan dingin', 50),
(21, 5, 18, 'Laptop Acer', 6000000, 'laptop4_acer.jpg', 'Acer Aspire 17.3 \r\nRAM 8GB\r\n500GB HD', 1900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `caption_slider` text NOT NULL,
  `foto_slider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `caption_slider`, `foto_slider`) VALUES
(7, '<p>Diskon 50% Baju Batik</p>\r\n', 'diskon_laki.jpeg'),
(8, '<p>New Laptop Intel 11th Gen N5095</p>\r\n', 'laptop.jpeg'),
(9, '<p>Exclusive Diskon Handbag</p>\r\n', 'tas.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `belanja_transaksi` int(11) NOT NULL,
  `status_transaksi` enum('pesan','bayar','batal','dikirim','selesai','lunas') NOT NULL DEFAULT 'pesan',
  `ongkir_transaksi` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `bayar_transaksi` int(11) NOT NULL,
  `distrik_pengirim` varchar(255) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `wa_pengirim` varchar(50) NOT NULL,
  `alamat_pengirim` text NOT NULL,
  `distrik_penerima` varchar(255) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `wa_penerima` varchar(50) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `nama_ekspedisi` varchar(100) NOT NULL,
  `layanan_ekspedisi` varchar(100) NOT NULL,
  `estimasi_ekspedisi` varchar(50) NOT NULL,
  `berat_ekspedisi` varchar(50) NOT NULL,
  `resi_ekspedisi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `id_member_beli`, `id_member_jual`, `tanggal_transaksi`, `belanja_transaksi`, `status_transaksi`, `ongkir_transaksi`, `total_transaksi`, `bayar_transaksi`, `distrik_pengirim`, `nama_pengirim`, `wa_pengirim`, `alamat_pengirim`, `distrik_penerima`, `nama_penerima`, `wa_penerima`, `alamat_penerima`, `nama_ekspedisi`, `layanan_ekspedisi`, `estimasi_ekspedisi`, `berat_ekspedisi`, `resi_ekspedisi`) VALUES
(16, '202407181723447923', 4, 1, '2024-07-18 17:23:44', 1463900, 'lunas', 11000, 1474900, 1474900, 'Kabupaten Sleman DI Yogyakarta', 'Anas Arifin', '12345678', 'Sedan, Sariharjo, Ngaglik, Sleman', 'Kota Yogyakarta DI Yogyakarta', 'Arifin Arya', '87654321', 'Sedayu, Sleman', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '11000', '650', 'AN211002'),
(17, '202407251744425466', 5, 1, '2024-07-25 17:44:42', 699000, 'lunas', 60000, 759000, 759000, 'Kabupaten Sleman DI Yogyakarta', 'Anas Arifin', '12345678', 'Sedan, Sariharjo, Ngaglik, Sleman', 'Kabupaten Kebumen Jawa Tengah', 'bintang faza', '081902779497', 'kembangsawit,kebumen', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '60000', '425', NULL),
(18, '202407251940369574', 6, 5, '2024-07-25 19:40:36', 6700000, 'lunas', 24000, 6724000, 6724000, 'Kabupaten Kebumen Jawa Tengah', 'bintang faza', '081902779497', 'kembangsawit,kebumen', 'Kabupaten Sleman DI Yogyakarta', 'fasa bisa', '089346563221', 'sleman,jogja', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '24000', '1500', NULL),
(19, '202407260531188003', 6, 5, '2024-07-26 05:31:18', 6700000, 'pesan', 24000, 6724000, 6724000, 'Kabupaten Kebumen Jawa Tengah', 'bintang faza', '081902779497', 'kembangsawit,kebumen', 'Kabupaten Sleman DI Yogyakarta', 'fasa bisa', '089346563221', 'sleman,jogja', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '24000', '1500', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_beli` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `jumlah_rating` int(11) DEFAULT NULL,
  `ulasan_rating` text DEFAULT NULL,
  `waktu_rating` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `nama_beli`, `harga_beli`, `jumlah_beli`, `jumlah_rating`, `ulasan_rating`, `waktu_rating`) VALUES
(20, 16, 4, 'DIADORA F34RUDIA0', 364900, 1, 5, 'Bagus sekalii', '2024-07-18'),
(21, 16, 7, 'ADIDAS FFSSDADI5', 1099000, 1, 4, 'Mantapp sesuai deskripsi', '2024-07-18'),
(22, 17, 5, 'DIADORA F34RUDIAA', 699000, 1, 5, '', '2024-07-25'),
(23, 18, 13, 'Laptop HP Abu', 6700000, 1, 5, 'bagus poll mantap', '2024-07-25'),
(24, 19, 13, 'Laptop HP Abu', 6700000, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
