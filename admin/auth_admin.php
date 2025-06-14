<?php
session_start();

if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    echo "<script>alert('Akses ditolak. Anda harus login sebagai admin.'); window.location='../login/index.php';</script>";
    exit();
}

