<?php include '../../../koneksi.php'; ?>

<?php
// Ambil ID dari URL
if (!isset($_GET['id'])) {
    echo "<script>alert('ID tidak ditemukan'); window.location='pejabat.php';</script>";
    exit;
}

$id = $_GET['id'];
$data = $koneksi->query("SELECT * FROM pejabat WHERE id = $id");
$pejabat = $data->fetch_assoc();

if (!$pejabat) {
    echo "<script>alert('Data tidak ditemukan'); window.location='pejabat.php';</script>";
    exit;
}
?>

<h2>Edit Pejabat</h2>
<form method="POST" enctype="multipart/form-data">
    Nama: <input type="text" name="nama" value="<?= $pejabat['nama']; ?>" required><br>
    Jabatan: <input type="text" name="jabatan" value="<?= $pejabat['jabatan']; ?>" required><br>
    Foto Baru (jika ingin mengganti): <input type="file" name="foto_url"><br>
    Twitter: <input type="text" name="twitter" value="<?= $pejabat['twitter_link']; ?>"><br>
    Facebook: <input type="text" name="facebook" value="<?= $pejabat['facebook_link']; ?>"><br>
    Instagram: <input type="text" name="instagram" value="<?= $pejabat['instagram_link']; ?>"><br>
    LinkedIn: <input type="text" name="linkedin" value="<?= $pejabat['linkedin']; ?>"><br>
    <button type="submit" name="update">Update</button>
</form>

<?php
if (isset($_POST['update'])) {
    $nama     = $_POST['nama'];
    $jabatan  = $_POST['jabatan'];
    $twitter  = $_POST['twitter'];
    $facebook = $_POST['facebook'];
    $instagram= $_POST['instagram'];
    $linkedin = $_POST['linkedin'];

    $fotoBaru = $_FILES['foto_url']['name'];
    $target_dir = "../../../kodam/img/";
    $uploadOk = 1;

    if (!empty($fotoBaru)) {
        $target_file = $target_dir . basename($fotoBaru);
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        if ($_FILES['foto_url']['size'] > 20000000000000000000) {
        echo "<script>alert('Ukuran file terlalu besar. Maksimal 2MB.');</script>";
        $uploadOk = 0;
    }
        if ($_FILES['foto_url']['size'] > 2 * 1024 * 1024) {
            echo "<script>alert('Ukuran file terlalu besar. Maksimal 2MB.');</script>";
            $uploadOk = 0;
        }

        if (!in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
            echo "<script>alert('Hanya file JPG, JPEG, dan PNG yang diperbolehkan.');</script>";
            $uploadOk = 0;
        }

        if ($uploadOk && move_uploaded_file($_FILES['foto_url']['tmp_name'], $target_file)) {
            // Hapus foto lama
            if (file_exists($pejabat['foto_url'])) {
                unlink($pejabat['foto_url']);
            }

            $foto_url = $target_file;
        } else {
            echo "<script>alert('Gagal upload foto baru.');</script>";
            $foto_url = $pejabat['foto_url']; // Pakai foto lama
        }
    } else {
        $foto_url = $pejabat['foto_url']; // Tidak upload, pakai foto lama
    }

    $sql = "UPDATE pejabat SET 
                nama = '$nama',
                jabatan = '$jabatan',
                foto_url = '$foto_url',
                twitter_link = '$twitter',
                facebook_link = '$facebook',
                instagram_link = '$instagram',
                linkedin = '$linkedin'
            WHERE id = $id";

    if ($koneksi->query($sql)) {
        echo "<script>alert('Data berhasil diperbarui'); window.location='pejabat.php';</script>";
    } else {
        echo "Error: " . $koneksi->error;
    }
}
?>
