<?php

if(empty($_SESSION['email'])){
echo "<script>alert ('Silahkan Login, Untuk Melihat Keranjang Belanja...!!!');document.location='index.php?mod=customer&pg=login' </script>"; 
}else{
$account = mysqli_query($connect, "SELECT * FROM customer WHERE email='".$_SESSION['email']."'");
$data_account=mysqli_fetch_array($account);

}
?>
<div class="container"> 
		<ol class="breadcrumb breadcrumb1">
			<li><a href="index.html">Home</a></li>
			<li class="active">My Order</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->
	<!-- products -->
	<div class="products">	 
		<div class="container">  
			
<div>
<h3>Data Order</h3>
			<table class="table">

				<tr>
					<th>No</th>
					<th>Kode Pesan</th>
					<th>Tanggal</th>
					<th>Jumlah Barang</th>
					<th>Status</th>
					<th>Option</th>
				</tr>
	<?php
											$sql=mysqli_query($connect,"select * from detail_pesanan where id_customer='$data_account[id_customer]' order by kd_detail_pesanan desc ") or die("error"); 
											$no=1;
											while($pesan=mysqli_fetch_array($sql)){

											$sqlp=mysqli_query($connect,"select * from pesanan where kode_pesanan='$pesan[kode_pesanan]' order by id_pesanan desc ") or die("error");
											$jumlah=0;
											while($dp=mysqli_fetch_array($sqlp)){
											$jumlah+=$dp['jumlah_pesanan'];
											}
								?>
				<tr>
					<td><?php echo $no;?>
				<td><?php echo $pesan['kode_pesanan'] ;?></td>
				<td><?php echo date("d M Y",strtotime($pesan['tanggal_pesan']));?></td>
				<td><?php echo $jumlah;?> item</td>
				<td><?php echo $pesan['status_order'];?></td>

				<td>
				<a href="index.php?mod=customer&pg=detail_order&kode=<?php echo $pesan['kode_pesanan'] ;?>"><button type="button" class="btn btn-success" ><i class="fa fa-search"></i></button></a>
				
				</td>	
				</tr>
				<?php }?>
				<tr>
					
			</table></div>
				
				
				   <div class="clearfix"> </div>  
				</div>
			
		</div>
	</div>
	<!--//products--> 