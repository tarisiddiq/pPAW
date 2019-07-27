<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Print Laporan</title>
</head>

<script type=”text/javascript”>
var s5_taf_parent = window.location;
function popup_print(){
window.open('view.php','page','toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,width=750,height=600,left=50,top=50,titlebar=yes')
}
</script>
<body onLoad="window.print()">
 <?php 
 include('../../config/koneksi.php');
				    $kode_pesanan=$_GET['kode_pesanan'];
				 
                  $sql=mysqli_query($connect, "SELECT * FROM detail_pesanan o, kota k, customer c where o.id_kota=k.id_kota and o.id_customer=c.id_customer and kode_pesanan='$kode_pesanan'") or die ("error Order");
          
          $data_or=mysqli_fetch_array($sql);
          
          ?><h2 align="center">TENUN STORE</h2>
                     <center>Alamat : Jln. Sudirman, Denpasar, Bali, No Telp : 77347333/77236117</center>
                     <hr color="#000000" size="3" />
                    <table width="100%" border="0" cellpadding="5" cellspacing="0" >
<tr>
<th align="left">Nama</th>
<td>: <?php echo $data_or['nama']; ?></td>
<th align="left">Kode Order</th>
<td>: <?php echo $data_or['kode_pesanan']; ?></td>
</tr>
<tr>
<th align="left">Email</th>
<td>: <?php echo $data_or['email']; ?></td>
<th align="left">Tanggal Order</th>
<td>: <?php echo date("d M Y",strtotime($data_or['tanggal_pesan'])); ?></td>
</tr>
<tr>
<th align="left">No Telephone</th>
<td>: <?php echo $data_or['no_telpon']; ?></td>
<th align="left">Status Order</th>
<td>: <?php echo $data_or['status_order']; ?></td>
</tr>
<tr>
<th align="left">Alamat Pengirim</th>
<td>: <?php echo $data_or['alamat']; ?></td>
<td></td>
<td></td>
</tr>
</table>
<hr color="#000000" size="2" />

                      <table width="100%" border="1" cellpadding="4" cellspacing="0" class="table table-bordered">
            <tr>
                <th>No</th>
                 <th>Nama Motif</th>
                  <th>Jenis</th>
                   <th>Harga</th>
                    <th>Berat Barang</th>
                   <th>Jumlah</th>
                   <th>Total Harga</th>
                </tr>
                <?php
                                    $sql_p=mysqli_query($connect, "SELECT * FROM pesanan p, motif m, jenis_kain j where p.kd_motif=m.kd_motif and m.kd_jenis_kain=j.kd_jenis_kain and p.kode_pesanan='$data_or[kode_pesanan]'") or die ("error Order");
          $no=1;
          $subtotal=0;
          $toberat=0;
          while($data=mysqli_fetch_array($sql_p)){
            $berat=$data['berat_barang']*$data['jumlah_pesanan'];
            $toberat +=$berat;
            $subtotal +=$data['harga']*$data['jumlah_pesanan'];
          ?>
                <tr>
                <td><?php echo $no; ?></td>
               <td><?php echo $data['nm_motif']; ?></td>
                <td><?php echo $data['nm_jenis_kain']; ?></td>
                <td><?php echo number_format($data['harga']); ?></td>
                 <td><?php echo $berat; ?> Kg</td>
                <td><?php echo $data['jumlah_pesanan']; ?></td>
                <td><?php $total=$data['harga']*$data['jumlah_pesanan']; echo number_format($total); ?></td>
                </tr>
                <?php $no++; }?>                
                </table>
                <hr size="2" color="#000">
                    <table width="100%" border="1" cellpadding="4" cellspacing="0" class="table table-bordered">
            <tr>
                <th>Total berat</th>
                 <th>Biaya Kirim </th>
                  <th>Total Belanja</th>
                   <th>Total Yang Dibayar</th>
                   
                </tr>
                <tr>
                  <td><b><?php echo $toberat; ?> Kg</b></td>
                  <td><b>Rp.<?php if($toberat<1){
$biaya=80000;
}else{
  $biaya=($toberat*$data_or['biaya']);
} echo number_format($biaya); ?></b></td>
                  <td><b>Rp.<?php echo number_format($subtotal); ?></b></td>
                  <td><b>Rp.<?php echo number_format($subtotal+$biaya); ?></b></td>

                </tr>
              </table>
                </div>
                             </body>
</html>