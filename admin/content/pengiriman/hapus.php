<?php
include('../../config/koneksi.php');
mysqli_query($connect,"DELETE FROM kota WHERE id_kota=".$_GET['id']."")or die ('error');
	header("location:../../index.php?mod=pengiriman&pg=data_pengiriman");
	?>