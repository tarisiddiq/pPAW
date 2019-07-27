<?php
include('../../config/koneksi.php');
$nama=$_POST['nama'];
$biaya=$_POST['biaya'];

 $sql="insert into kota (nm_kota, biaya) 
					values('$nama','$biaya')";             
					$res=mysqli_query($connect,$sql) or die ("error");  
					echo "<script>alert ('Data Kota sudah di Simpan ');document.location='../../index.php?mod=pengiriman&pg=data_pengiriman' </script>";
					 ?>