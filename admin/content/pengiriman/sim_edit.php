<?php
include('../../config/koneksi.php');
$id=$_POST['id'];
$nama=$_POST['nama'];
$biaya=$_POST['biaya'];

$query = mysqli_query($connect,"update kota set 
 nm_kota='$nama', biaya='$biaya' where id_kota='$id'") or die('error');
echo "<script>alert ('Data Kota sudah di Update');document.location='../../index.php?mod=pengiriman&pg=data_pengiriman' </script>"; 
?>