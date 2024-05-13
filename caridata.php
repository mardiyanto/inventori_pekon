<!DOCTYPE html>
<html>
<head>
    <title>Pencarian Data Aset</title>
    <!-- Tambahkan link CSS Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <a class='btn btn-info' href='index.php'>Kembali</a>
    <h2 class="mt-4 mb-4">Hasil Pencarian Data Aset</h2>

    <?php
    // Koneksi ke database
    $koneksi = mysqli_connect("localhost", "root", "", "db_aset");

    // Periksa koneksi
    if (mysqli_connect_errno()) {
        echo "Koneksi database gagal: " . mysqli_connect_error();
        exit();
    }

    // Periksa apakah form dikirimkan
    if(isset($_POST['nama_aset'])) {
        // Tangkap data yang dikirimkan dari form
        $nama_aset = $_POST['nama_aset'];

        // Query SQL untuk mencari data berdasarkan nama aset
        $query = "SELECT * FROM aset WHERE nama_aset LIKE '%$nama_aset%'";

        // Eksekusi query
        $result = mysqli_query($koneksi, $query);

        // Periksa apakah data ditemukan
        if(mysqli_num_rows($result) > 0) {
            // Tampilkan data dalam tabel Bootstrap
            echo "<table class='table table-striped'>
                    <thead>
                        <tr>
                            <th>Nama Aset</th>
                            <th>Merek</th>
                            <th>Nilai</th>
                        </tr>
                    </thead>
                    <tbody>";
            while($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $row['nama_aset'] . "</td>";
                echo "<td>" . $row['merek'] . "</td>";
                echo "<td>" . $row['nilai'] . "</td>";
                echo "</tr>";
            }
            echo "</tbody></table>";
        } else {
            echo "<p>Data tidak ditemukan.</p>";
        }

        // Tutup koneksi
        mysqli_close($koneksi);
    }
    ?>

</div>

</body>
</html>
