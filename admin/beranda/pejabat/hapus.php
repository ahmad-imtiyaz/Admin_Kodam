<?php
include '../../../koneksi.php';
$id = $_GET['id'];
$koneksi->query("DELETE FROM pejabat WHERE id=$id");
header("Location: pejabat.php");
?>
