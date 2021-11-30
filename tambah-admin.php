<?php
session_start();
include 'db.php';
if ($_SESSION['status_login'] != true) {
	echo '<script>window.location="login.php"</script>';
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hampers Percel | E-Bisnis 5SIC1</title>
    <link rel="icon" href="img/iconC.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
    <script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
</head>

<body>
    <!-- header -->
    <header>
        <div class="container">
            <h1><a href="dashboard.php">Lionel Fruitspop Hampers</a></h1>
            <ul>
                <li><a href="dashboard.php">Dashboard</a></li>
                <li><a href="profil.php">Profil</a></li>
                <li><a href="data-kategori.php">Data Kategori</a></li>
                <li><a href="data-produk.php">Data Produk</a></li>
                <li><a href="keluar.php">Keluar</a></li>
            </ul>
        </div>
    </header>

    <!-- content -->
    <div class="section">
        <div class="container">
            <h3>Tambah Data Produk</h3>
            <div class="box">
                <form action="" method="POST" enctype="multipart/form-data">
                    <input type="text" name="nama" class="input-control" placeholder="Nama Lengkap" required>
                    <input type="text" name="user" class="input-control" placeholder="Username" required>
                    <input type="password" name="pass1" class="input-control" placeholder="Password" required>
                    <input type="password" name="pass2" class="input-control" placeholder="Konfirmasi Password"
                        required>
                    <input type="text" name="hp" class="input-control" placeholder="Nomor HP" required>
                    <input type="email" name="email" class="input-control" placeholder="Email" required>
                    <input type="text" name="alamat" class="input-control" placeholder="Alamat" required>
                    <input type="text" name="ig" class="input-control" placeholder="Instagram" required>

                    <br>
                    <input type="submit" name="submit" value="Submit" class="btn">
                </form>
                <?php
				if (isset($_POST['submit'])) {

					// print_r($_FILES['gambar']);
					// menampung inputan dari form
					$nama 	= $_POST['nama'];
					$user 		= $_POST['user'];
					$hp 		= $_POST['hp'];
					$email 	= $_POST['email'];
					$alamat 	= $_POST['alamat'];
                    $ig 	= $_POST['ig'];

                    $pass1 	= $_POST['pass1'];
					$pass2 	= $_POST['pass2'];

					if ($pass2 != $pass1) {
						echo '<script>alert("Konfirmasi Password tidak sesuai")</script>';


						$insert = mysqli_query($conn, "INSERT INTO tb_admin VALUES (
										null,
										'" . $kategori . "',
										'" . $nama . "',
										'" . $harga . "',
										'" . $deskripsi . "',
										'" . $newname . "',
										'" . $status . "',
										null
											) ");

						if ($insert) {
							echo '<script>alert("Tambah data berhasil")</script>';
							echo '<script>window.location="data-produk.php"</script>';
						} else {
							echo 'gagal ' . mysqli_error($conn);
						}
					}
				}
				?>
            </div>
        </div>
    </div>

    <!-- footer -->
    <footer>
        <div class="container">
            <small>Copyright &copy; 2021 - psraw.</small>
        </div>
    </footer>
    <script>
    CKEDITOR.replace('deskripsi');
    </script>
</body>

</html>