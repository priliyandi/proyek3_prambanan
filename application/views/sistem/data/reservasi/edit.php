<div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <a href="<?php echo base_url();?>sistem/home">Home</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>sistem/reservasi">Reservasi</a>
                    </li>
                </ul>
                
            </div>


<div class="portlet box green">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-gift"></i>Edit Reservasi
                                        </div>
                                        
                                    </div>
                                    <div class="portlet-body form">
                                        <?php if(validation_errors()) { ?>
                                <div class="alert alert-danger">
                                  <button type="button" class="close" data-dismiss="alert">×</button>
                                    <?php echo validation_errors(); ?>
                                </div>
                                <?php 
                                } 
                                ?>
                                        
                                            <?php echo form_open_multipart('sistem/reservasi_update/','class="form-horizontal"'); ?>
                                            <div class="form-body">
                                                <h3 class="form-section"></h3>
                                                
                                                <div class="row">
                                                    
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Nama</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" value="<?php echo $nama_reservasi;?>" name="nama_reservasi">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Telp </label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" value="<?php echo $telp_reservasi;?>" name="telp_reservasi">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>

                                                    
                                                </div>

                                                <div class="row">
                                                    

                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Alamat</label>
                                                            <div class="col-md-9">
                                                                 <input type="text" class="form-control" value="<?php echo $alamat_reservasi;?>" name="alamat_reservasi">
                                                                
                                                                
                                                            </div>
                                                        </div>
                                                    </div>

                                                <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Tanggal Masuk</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control form-control-inline input-medium date-picker" value="<?php echo $tgl_reservasi_masuk;?>" name="tgl_reservasi_masuk">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Tanggal Keluar</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control form-control-inline input-medium date-picker" value="<?php echo $tgl_reservasi_keluar;?>" name="tgl_reservasi_keluar">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="row">
                                                    

                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Kamar</label>
                                                            <div class="col-md-9">
                                                                 <input type="text" class="form-control" value="<?php echo $kamar_id;?>" name="kamar_id">
                                                                
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                


                                            

                                    
                                            </div>
                                            <div class="form-actions">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="row">
                                                            <div class="col-md-offset-3 col-md-9">
                                                                <button type="submit" class="btn green">Update</button>
                                                                </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                            </div>
                                        <?php echo form_close();?>  
                                        
                                    </div>
                                </div>