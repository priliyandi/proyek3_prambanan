<div class="right_col" role="main">
  <div class="">
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Data <small>Data Kuisioner</small></h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a href="#myModaltambah" class="btn btn-default" id="custId" data-toggle="modal" ><i class="fa fa-plus-circle"></i> Tambah Data Kuisioner</a></li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
              <thead>
                <tr>
                  <th>Pertanyaan</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $no=0;
                foreach ($data->result_array() as $i) :
                 $no++;
                 ?>
                 <tr>
                  <td><?php echo $i['kuisioner_pertanyaan']; ?></td>
                  <td>
                   <a class="btn" data-toggle="modal" data-target="#ModalEdit<?php echo $i['kuisioner_id'];?>"><span class="fa fa-pencil"></span></a>
                   <a class="btn" data-toggle="modal" data-target="#ModalHapus<?php echo $i['kuisioner_id'];?>"><span class="fa fa-trash"></span></a></td>
                 </tr>
               <?php endforeach;?>
             </tbody>
           </table>
         </div>
       </div>
     </div>
   </div>
 </div>
</div>


<div class="modal fade bs-example-modal-lg" id="myModaltambah" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Tambah Kuisioner</h4>
      </div>
      <div class="modal-body">
        <div class="fetched-data">
          <form class="form-horizontal form-label-left" action="<?php echo base_url()?>padmin/save_kuisioner" method="POST" enctype="multipart/form-data">


            <div class="form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-12">Pertanyaan</label>
              <div class="col-md-9 col-sm-9 col-xs-12">
                <textarea class="form-control" name="pertanyaan"></textarea>
              </div>
            </div>


            <div class="ln_solid"></div>
            <div class="form-group">
              <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               <button type="submit" class="btn btn-success">Submit</button>
             </div>
           </div>

         </form>
       </div>
     </div>

   </div>
 </div>
</div>

<?php foreach ($data->result_array() as $i) :
  ?>
  
  <div class="modal fade" id="ModalEdit<?php echo $i['kuisioner_id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
          <h4 class="modal-title" id="myModalLabel">Edit Kuisioner</h4>
        </div>
        <form class="form-horizontal" action="<?php echo base_url().'padmin/update_kuisioner'?>" method="post" enctype="multipart/form-data">
          <div class="modal-body">      

            <input type="hidden" name="kode" value="<?php echo $i['kuisioner_id'];?>"/> 

            <div class="form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-12">Pertanyaan</label>
              <div class="col-md-9 col-sm-9 col-xs-12">
                <textarea class="form-control" name="pertanyaan"><?php echo $i['kuisioner_pertanyaan']; ?></textarea>
              </div>
            </div>


          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary btn-flat" id="simpan">Simpan</button>
          </div>
        </form>
      </div>
    </div>
  </div>
<?php endforeach;?>
<!--Modal Edit Album-->

<?php foreach ($data->result_array() as $i) :
  ?>
  <!--Modal Hapus Pengguna-->
  <div class="modal fade" id="ModalHapus<?php echo $i['kuisioner_id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
          <h4 class="modal-title" id="myModalLabel">Hapus Kuisioner</h4>
        </div>
        <form class="form-horizontal" action="<?php echo base_url().'padmin/delete_kuisioner'?>" method="post" enctype="multipart/form-data">
          <div class="modal-body">       
           <input type="hidden" name="kode" value="<?php echo $i['kuisioner_id'];?>"/> 
           <p>Apakah Anda yakin mau menghapus Kuisioner ini?</p>

         </div>
         <div class="modal-footer">
          <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary btn-flat" id="simpan">Hapus</button>
        </div>
      </form>
    </div>
  </div>
</div>
<?php endforeach;?>


<script src="js/jquery-3.1.1.min.js"></script>
