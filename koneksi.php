<?php
// Konfigurasi database
$host     = "localhost";    // Host database
$username = "root";         // Username database (default XAMPP: root)
$password = "";             // Password database (default XAMPP: kosong)
$database = "db_kodam"; // Ganti dengan nama database kamu


$koneksi = new mysqli("localhost", "root", "", "db_kodam");

if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

// Jika berhasil
// echo "Koneksi berhasil"; // Uncomment ini untuk testing saja
?>
