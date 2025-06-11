-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2025 pada 03.34
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
-- Database: `ketahananpangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$qyDC4ohrDURayw7sjDd2JuJZLGH53Tl8f1qXV1kyUWA1iHEkh/RbW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel_beranda`
--

CREATE TABLE `artikel_beranda` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `subjudul` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel_beranda`
--

INSERT INTO `artikel_beranda` (`id`, `kategori`, `foto`, `admin`, `datetime`, `judul`, `subjudul`, `link`) VALUES
(1, 'tambahkan kategori', 'tambahkan foto', 'admin', '2025-06-11 02:41:42', 'tambahkan judul', 'tambahkan sub judul', 'tambahkan link');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_persit`
--

CREATE TABLE `galeri_persit` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `link_foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri_persit`
--

INSERT INTO `galeri_persit` (`id`, `thumbnail`, `judul`, `link_foto`) VALUES
(1, 'tambahkan thumbnail', 'tambahkan judul', 'tambahkan link_foto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_satuan`
--

CREATE TABLE `galeri_satuan` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `link_foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri_satuan`
--

INSERT INTO `galeri_satuan` (`id`, `thumbnail`, `judul`, `link_foto`) VALUES
(1, 'tambahkan thumbnail', 'tambahkan judul', 'tambahkan link_foto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan_non_program`
--

CREATE TABLE `kegiatan_non_program` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan_satuan`
--

CREATE TABLE `kegiatan_satuan` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kutipan`
--

CREATE TABLE `kutipan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `quotes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pejabat`
--

CREATE TABLE `pejabat` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `pangkat` varchar(100) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_pejabat`
--

CREATE TABLE `profil_pejabat` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `informasi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `artikel_beranda`
--
ALTER TABLE `artikel_beranda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri_persit`
--
ALTER TABLE `galeri_persit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri_satuan`
--
ALTER TABLE `galeri_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kegiatan_non_program`
--
ALTER TABLE `kegiatan_non_program`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kegiatan_satuan`
--
ALTER TABLE `kegiatan_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kutipan`
--
ALTER TABLE `kutipan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil_pejabat`
--
ALTER TABLE `profil_pejabat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `artikel_beranda`
--
ALTER TABLE `artikel_beranda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri_persit`
--
ALTER TABLE `galeri_persit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri_satuan`
--
ALTER TABLE `galeri_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_non_program`
--
ALTER TABLE `kegiatan_non_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_satuan`
--
ALTER TABLE `kegiatan_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kutipan`
--
ALTER TABLE `kutipan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pejabat`
--
ALTER TABLE `pejabat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profil_pejabat`
--
ALTER TABLE `profil_pejabat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
