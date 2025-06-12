<?php include '../../../koneksi.php'; ?>
<h2>Tambah Pejabat</h2>
<form method="POST" enctype="multipart/form-data">
    Nama: <input type="text" name="nama" required><br>
    Jabatan: <input type="text" name="jabatan" required><br>
    Foto: <input type="file" name="foto_url" required><br>
    Twitter: <input type="text" name="twitter"><br>
    Facebook: <input type="text" name="facebook"><br>
    Instagram: <input type="text" name="instagram"><br>
    LinkedIn: <input type="text" name="linkedin"><br>
    <button type="submit" name="simpan">Simpan</button>
</form>

<?php
if (isset($_POST['simpan'])) {
    $nama     = $_POST['nama'];
    $jabatan  = $_POST['jabatan'];
    $twitter  = $_POST['twitter'];
    $facebook = $_POST['facebook'];
    $instagram= $_POST['instagram'];
    $linkedin = $_POST['linkedin'];

    $foto_url = $_FILES['foto_url']['name'];
    $target_dir = "../../../kodam/img/";
    $target_file = $target_dir . basename($foto_url);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Validasi file
    if ($_FILES['foto_url']['size'] > 20000000000000000000) {
        echo "<script>alert('Ukuran file terlalu besar. Maksimal 2MB.');</script>";
        $uploadOk = 0;
    }
    if (!in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
        echo "<script>alert('Hanya file JPG, JPEG, dan PNG yang diperbolehkan.');</script>";
        $uploadOk = 0;
    }

    if ($uploadOk && move_uploaded_file($_FILES['foto_url']['tmp_name'], $target_file)) {
        $sql = "INSERT INTO pejabat (nama, jabatan, foto_url, twitter_link, facebook_link, instagram_link, linkedin) 
                VALUES ('$nama', '$jabatan', '$target_file', '$twitter', '$facebook', '$instagram', '$linkedin')";

        if ($koneksi->query($sql)) {
            echo "<script>alert('Data berhasil ditambahkan'); window.location='pejabat.php';</script>";
        } else {
            echo "Error: " . $koneksi->error;
        }
    } else {
        echo "<script>alert('Gagal upload foto.');</script>";
    }
}
?>
