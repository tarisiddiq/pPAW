
 <section class="content-header">
          <h1>
            Data
            <small>Kota</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">kota</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box">
                <div class="box-header">
            
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tambah_jenis"><i class="fa fa-plus fa-fw"></i> Tambah Kota</button>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama Kota</th>
                        <th>Biaya Pengiriman</th>
                        <th>OPTION</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
					$sql=mysqli_query($connect, "SELECT * FROM kota ORDER BY id_kota DESC
					") or die ("error");
					$no=1;
					while($data=mysqli_fetch_array($sql)){
					 ?>
                      <tr>
                        <td><?php echo $no ; ?></td>
                        <td><?php echo $data['nm_kota'] ; ?></td>
                        <td><?php echo number_format($data['biaya'] ); ?></td>
                        <td align="center"><div style="width:100px;"> 
                       
<button title="Edit" type="button" class="btn btn-warning" data-toggle="modal" data-target="#edit<?php echo $data['id_kota']; ?>"><i class="fa fa-pencil fa-fw"></i></button></a>
<a href="content/pengiriman/hapus.php?id=<?php echo $data['id_kota']; ?>" onclick="return confirm('Anda Yakin Akan Menghapus data Kota : <?php echo $data['nm_kota'] ; ?> ?')"><button title="Hapus" type="button" class="btn btn-danger"><i class="fa fa-trash-o fa-fw"></i></button></a>
</div></td>
                      </tr>              
                  <!-- edit password-->         
  <div id="edit<?php echo $data['id_kota']; ?>" class="modal fade" role="dialog">
  <div class="modal-dialog">
<form method="post" action="content/pengiriman/sim_edit.php">
 <input type="hidden" name="id" value="<?php echo $data['id_kota'] ; ?>">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Edit Pengiriman</h4>
      </div>
      <div class="modal-body">
        <p>
                  <div class="box-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Nama Kota :</label>
                      <input type="text" name="nama" value="<?php echo $data['nm_kota'] ; ?>" class="form-control" id="">
                    </div>
                     <div class="form-group">
                      <label for="exampleInputEmail1">Biaya Pengiriman :</label>
                      <input type="number" name="biaya" value="<?php echo $data['biaya'] ; ?>" class="form-control" id="">
                    </div>
                                         
                     </div><!-- /.box-body --></p>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
    </div></form>

  </div>
</div>
  <!-- akhir edit password--> 
     
               <?php $no++; } ?>
                    </tbody>
                    <tfoot>
                     </tfoot>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
                 </section><!-- /.content -->
<?php include"content/pengiriman/form_pengiriman.php"; ?>
 <!-- DataTables -->