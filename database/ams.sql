-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2023 pada 17.08
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(2, 'Dekan Fakultas Sains dan Teknik', 'Undangan Rapat Pada Tanggal 20 Juni 2023', 'Penting', '2023-06-20', 'Memakai Baju Batik', 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_disposisi_keluar`
--

CREATE TABLE `tbl_disposisi_keluar` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kadin` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kadin`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Universitas Perwira Purbalingga', 'Fakultas Sains dan Teknik', 'Universitas Swasta', 'Jalan Letnan Jenderal Siswondo Parman No. 53, Desa Kedungmenjangan, Kecamatan Purbalingga, Purbalingga, Jawa Tengah, 53391', 'Ir. Sugeng Suyatno, M.P.', '19690307 199403 1 008', 'https://fst.unperba.ac.id', 'fstunperba@unperba.ac.id', 'unperba.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `kode`, `nama`, `uraian`, `id_user`) VALUES
(1, '003', 'Hari Raya/Hari Besar', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Hari Raya atau Hari Besar', 1),
(2, '003.1', 'Hari Nasional', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan hari-hari nasional seperti Hari Pahlawan, Hari Kemerdekaan, Hari Anak, HKSN, dan lain-lain', 1),
(3, '003.2', 'Hari Keagamaan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Hari Keagamaan di Indonesia', 1),
(4, '003.3', 'Hari Ulang Tahun atau Hari Jadi Provinsi, Kabupaten atau Kota', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Hari Ulang Tahun/HUT/Hari Jadi (Provinsi/Kabupaten/Kota)', 1),
(5, '003.4', '-', '-', 1),
(6, '004', 'Ucapan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan sebuah Ucapan', 1),
(7, '004.1', 'Ucapan Terima Kasih', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan sebuah Ucapan Terima Kasih', 1),
(8, '004.2', 'Ucapan Selamat', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan sebuah Ucapan Selamat', 1),
(9, '004.3', 'Ucapan Mohon Diri', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan sebuah Ucapan Mohon Diri', 1),
(10, '004.4', 'Ucapan Belasungkawa', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan sebuah Ucapan Belasungkawa', 1),
(11, '004.5', 'Ucapan Lainnya', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan sebuah Ucapan selain ucapan terimakasih, selamat, mohon diri, dan bela sungkawa ', 1),
(12, '005', 'Undangan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan undang-mengundang', 1),
(13, '006', 'Tanda Jabatan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Tanda Jabatan', 1),
(14, '006.1', 'Pamong Praja', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Tanda Jabatan Pamong Praja', 1),
(15, '006.2', 'Pejabat Lainnya', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Tanda Jabatan Pejabat Lainnya', 1),
(16, '010', 'Urusan Dalam', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Urusan Dalam Dinas', 1),
(17, '011', 'Gedung Kantor Termasuk Instalasi', 'Nomor yang digunakan untuk surat yang berkaitan dengan Gedung Kantor Kedinasan', 1),
(18, '011.1', 'Instalasi Listrik Gedung Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Instalasi Listrik Gedung Kantor', 1),
(19, '011.2', 'Instalasi Telepon Gedung Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Instalasi Telepon Gedung Kantor', 1),
(20, '011.3', 'Instalasi Otomasi Gedung Kantor ', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Instalasi Otomasi Gedung Kantor', 1),
(21, '011.4', 'Instalasi Air Minum Gedung Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Instalasi Air Minum Gedung Kantor', 1),
(22, '011.5', 'Instalasi Hidrant Gedung Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Instalasi Hidrant Gedung Kantor', 1),
(23, '011.6', 'Instalasi Alarm Gedung Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Instalasi Alarm Gedung Kantor', 1),
(24, '011.7', 'Instalasi Internet Gedung Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Instalasi Internet Gedung Kantor', 1),
(25, '012', 'Rumah Dinas', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Rumah Dinas', 1),
(26, '013', 'Akomodasi atau Persinggahan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Akomodasi atau Persinggahan seperti Mess, Hotel, Wisma atau Lainnya', 1),
(27, '014', 'Rumah Susun atau Apartemen', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Rumah Susun atau Apartemen', 1),
(28, '015', 'Peminjaman Sarana dan Prasarana Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Peminjaman Sarana dan Prasarana Kantor seperti ruangan, gedung, kendaraan, LCD, laptop dan lain-lain', 1),
(29, '016', 'Pengurusan Kendaraan Dinas', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pengurusan Kendaraan Dinas', 1),
(30, '017', 'Keamanan atau Ketertiban Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Keamanan dan Ketertiban Kantor', 1),
(31, '018', 'Kebersihan Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Kebersihan Kantor', 1),
(32, '019', 'Protokol', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan segala hal berbau Protokol', 1),
(33, '019.1', 'Protokol Upacara Bendera', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Protokol Upacara Bendera', 1),
(34, '019.2', 'Protokol Tata Tempat', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Protokol Tata Tempat', 1),
(35, '019.21', 'Protokol Tata Tempat Pemasangan Gambar Presiden dan Wakil Presiden', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Protokol Tata Tempat Pemasangan Gambar Presiden dan Wakil Presiden', 1),
(36, '019.3', 'Protokol Audiensi', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Protokol Audiensi', 1),
(37, '019.4', 'Protokol Penerimaan Tamu', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Protokol Penerimaan Tamu', 1),
(38, '019.5', 'Protokol Kerjasama', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Protokol Kerjasama', 1),
(39, '020', 'Barang dan Jasa', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Barang dan Jasa', 1),
(40, '021', 'Penawaran', 'Nomor surat yanng digunakan untuk surat yang berkaitan dengan Penawaran', 1),
(41, '021.1', 'Penawaran Barang', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Penawaran Barang', 1),
(42, '021.2', 'Penawaran Jasa', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Penawaran Jasa', 1),
(43, '023', 'Jasa', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Jasa', 1),
(44, '024', 'Perabot Kantor', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Perabot Kantor', 1),
(45, '025', 'Alat Angkutan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Alat Angkutan', 1),
(46, '026', 'Pakaian Dinas', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pakaian Dinas', 1),
(47, '027', 'Pengadaan Termasuk Pengumuman Pengadaan, Penunjukan, dan Lelang', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pengadaan termasuk Pengadaan, Penunjukan dan Lelang', 1),
(48, '027.1', 'Prekualifikasi Rapat Presiden, HPS, Penjelasan Pekerjaan atau Anwijizing, Negosiasi dan Evaluasi', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Prekualifikasi seperti Rapat Presiden, HPS, Penjelasan Pekerjaan atau Anwijizing, Negosiasi dan Evaluasi', 1),
(49, '027.2', ' Sprak atau Kontrakan, Amandemen atau Addendum, dan Teguran', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Sprak atau Kontrakan, Amandemen atau Addendum, dan Teguran', 1),
(50, '027.3', 'Surat Perintah Mulai Kerja atau SPMK', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Surat Perintah Mulai Kerja atau SPMK', 1),
(51, '027.4', 'Serah Terima Pekerjaan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Serah Terima Pekerjaan', 1),
(52, '027.5', 'Pemeriksaan Pekerjaan', 'Nomor surat yang digunakan surat yang berkaitan dengan Pemeriksaan Pekerjaan', 1),
(53, '027.6', 'Perpanjangan Waktu atau Force Majore', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Perpanjangan Waktu atau Force Majore', 1),
(54, '027.7', 'Denda', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Denda', 1),
(55, '027.8', 'Sanggahan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Sanggahan', 1),
(56, '027.9', 'Pemeliharaan Barang atau Jasa', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pemeliharaan Barang atau Jasa', 1),
(57, '028', 'Inventaris', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Inventaris Barang Milik Negara', 1),
(58, '028.1', 'Pendataan Barang Milik Negara', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pendataan Barang Milik Negara', 1),
(59, '028.2', 'Pemeliharaan Barang Milik Negara', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pemeliharaan Barang Milik Negara', 1),
(60, '028.3', 'Penghapusan Barang Milik Negara', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Penghapusan Barang Milik Negara', 1),
(61, '523', 'Kelautan', 'Nomor Surat yang digunakan untuk surat yang berkaitan dengan Kelautan', 1),
(62, '523.1', 'Rencana, Program, Statistik, Prospek dan Pelopor Bidang Perikanan dan  Kelautan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Rencana, Program, Statistik, Prospek dan Pelopor Bidang Perikanan dan  Kelautan', 1),
(63, '523.11', 'Penyuluhan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Penyuluhan', 1),
(64, '523.12', 'Teknologi', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Teknologi', 1),
(65, '523.2', 'Produksi Perikanan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Produksi Perikanan', 1),
(66, '523.21', 'Standarisasi Mutu Hasil Perikanan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Standarisasi Mutu Hasil Perikanan', 1),
(67, '523.22', 'Perikanan Budidaya seperti CBIB dan CBIC', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Perikanan Budidaya seperti CBIB dan CBIC', 1),
(68, '523.3', 'Usaha Perikanan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Usaha Perikanan', 1),
(69, '523.31', 'Pelatihan Nelayan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pelatihan Nelayan', 1),
(70, '523.32', 'Pembinaan Wanita Nelayan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pembinaan Wanita Nelayan', 1),
(71, '523.33', 'Fasilitas Perijinan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Fasilitas Perijinan seperti SIUP, SIPI dan SKP', 1),
(72, '523.34', 'Pembenihan', 'Nomor surat yang digunakan surat yang berkaitan dengan Pembenihan', 1),
(73, '523.4', 'Pemasaran dan Pengolahan Hasil Perikanan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pemasaran dan Pengolahan Hasil Perikanan', 1),
(74, '523.41', 'Ekspor Hasil Perikanan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Ekspor Hasil Perikanan', 1),
(75, '523.42', 'Impor Hasil Perikanan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Impor Hasil Perikanan', 1),
(76, '523.43', 'Pemasaran Dalam Negeri', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pemasaran Dalam Negeri', 1),
(77, '523.44', 'Pengusaha Perikanan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pengusaha Perikanan', 1),
(78, '523.5', 'Sarana Perikanan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Sarana Perikanan', 1),
(79, '523.51', 'Pelabuhan Perikanan Petani', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pelabuhan Perikanan Petani', 1),
(80, '523.52', 'TPI dan PPI', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan TPI dan PPI', 1),
(81, '523.53', 'Kesyahbandara', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Kesyahbandara', 1),
(82, '523.54', 'Peralatan Penangkapan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Peralatan Penangkapan seperti kapal, perahu, jaring, pump dan sebagainya', 1),
(83, '523.6', 'Pengendalian Hama Dan Penyakit Tanaman Pangan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pengendalian Hama Dan Penyakit Tanaman Pangan', 1),
(84, '523.61', 'Penyakit Hama', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Penyakit Hama', 1),
(85, '523.62', 'Hama Ikan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Hama Ikan', 1),
(86, '523.63', 'Obat-Obatan Beserta Sertifikatnya', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Obat-Obatan Beserta Sertifikatnya', 1),
(87, '526', 'Ketahanan Pangan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Ketahanan Pangan', 1),
(88, '526.1', 'Program Bimbingan Massal', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Program Bimbingan Massal', 1),
(89, '526.2', 'Pengembangan Sarana Sumber Daya', 'Noor surat ang digunakan untuk surat yang berkaitan dengan Pengembangan Sarana Sumber Daya', 1),
(90, '526.21', 'Pembinaan Teknologi', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pembinaan Teknologi', 1),
(91, '526.22', 'Sarana Produksi dan Permodalan ', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Sarana Produksi dan Permodalan', 1),
(92, '526.23', 'Kelembagaan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Kelembagaan', 1),
(93, '526.3', 'Agribisnis', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Agribisnis', 1),
(94, '526.31', 'Mutu Hasil', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan  Mutu Hasil', 1),
(95, '526.32', 'Pengelolaan Hasil Pangan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pengelolaan Hasil Pangan', 1),
(96, '526.33', 'Pemasaran Hasil', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pemasaran Hasil', 1),
(97, '526.34', 'Kementerian', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Kementerian', 1),
(98, '526.4', 'Distribusi Pangan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Distribusi Pangan', 1),
(99, '526.41', 'Sistem dan Pola Distribusi', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Sistem dan Pola Distribusi', 1),
(100, '526.42', 'Sarana dan Prasarana Distribusi', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Sarana dan Prasarana Distribusi', 1),
(101, '526.43', 'Pengadaan dan Cadangan Pangan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pengadaan dan Cadangan Pangan', 1),
(102, '526.5', 'Kewaspadaaan dan Keanekaragaman Pangan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Kewaspadaaan dan Keanekaragaman Pangan', 1),
(103, '526.51', '-', '-', 1),
(104, '526.52', 'Pola Konsumsi Pangan Masyarakat ', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pola Konsumsi Pangan Masyarakat ', 1),
(105, '526.53', 'Sistem Informasi Pangan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Sistem Informasi Pangan', 1),
(106, '527', 'Penyuluhan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan kegiatan Penyuluhan', 1),
(107, '527.1', 'Sumber Daya Manusia', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Sumber Daya Manusia', 1),
(108, '527.11', 'Penyuluh', 'Nomor surat yang digunakan untuk surat berkaitan dengan Penyuluh', 1),
(109, '527.12', 'Pelaku Utama Pelaku Usaha', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pelaku Utama Pelaku Usaha', 1),
(110, '527.13', 'Stakeholder', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Stakeholder', 1),
(111, '527.2', 'Kelembagaan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Kelembagaan', 1),
(112, '527.21', 'Struktural', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Struktural Kelembagaan', 1),
(113, '527.22', 'Non Struktural', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Non Struktural Kelembagaan', 1),
(114, '527.23', 'Pelaku Utama Pelaku Usaha', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Pelaku Utama Pelaku Usaha Kelembagaan', 1),
(115, '527.24', 'Lembaga Profesi', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Lembaga Profesi', 1),
(116, '527.3', 'Penyelenggaraan Penyuluhan', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Penyelenggaraan Penyuluhan', 1),
(117, '527.31', 'Program atau Metode', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Program atau Metode Penyelenggaraan Penyuluhan', 1),
(118, '527.32', 'Promosi, Pameran atau Kampanye', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Promosi, Pameran atau Kampanye Penyelenggaraan Penyuluhan', 1),
(119, '527.33', 'Penghargaan atau Lomba', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Penghargaan atau Lomba', 1),
(120, '527.34', 'Materi', 'Nomor surat yang digunakan untuk surat yang berkaitan dengan Materi Penyelenggaraan Penyuluhan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 10, 10, 20, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(3, 1, 'Bagian Akademik', '057/XX.23.2023', 'Untuk SKPI', '002', '2023-06-15', '2023-06-14', '6938-560_Ni Luh Kartyka Sinta Dewi (Fiks).docx', 'Tidak Ada', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(3, 1, '001/XV.1.2023', 'Dinas Pendidikan', 'Undangan Rapat', '001', '001', '2023-06-15', '2023-06-14', '487-SKRIPSI (komang dody darmawan 1904742010114 ) hampir jadi lagi.pdf', 'Tidak Ada', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'UNPERBAFST', '5028ce76abbdfd094764e798b74117ab', 'Fakultas Sains dan Teknik', '01905035', 1),
(2, 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '01903017', 2),
(3, 'Userbiasa', 'ee11cbb19052e40b07aac0ca060c23ee', 'Yuda Arya Wardhana', '01905029', 3),
(4, 'Staff', '1253208465b1efa876f982d8a9e73eef', 'Bendot', '01905000', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `tbl_disposisi_keluar`
--
ALTER TABLE `tbl_disposisi_keluar`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indeks untuk tabel `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indeks untuk tabel `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indeks untuk tabel `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_disposisi_keluar`
--
ALTER TABLE `tbl_disposisi_keluar`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  MODIFY `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT untuk tabel `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
