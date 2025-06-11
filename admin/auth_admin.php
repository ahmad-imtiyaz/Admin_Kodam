<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Jika user belum login atau bukan admin, arahkan ke halaman login
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header('Location: ../login/index.php');
    exit();
}
?>
