<!-- Title Page -->
<!-- Cart -->
<section class="bgwhite p-t-70 p-b-100">
<div class="container">
	<!-- Cart item -->
	<div class="pos-relative">
		<div class="bgwhite">

			<h1><?php echo $title ?></h1><hr>
			<div class="clearfix"></div>
			<br><br>

			<?php
			//notifikasi
			if ($this->session->flashdata('sukses')) {
				echo '<div class="alert-warning alert" style="text-align:center">';
				echo $this->session->flashdata('sukses');
				echo '</div>';

			}
			?>

			<p class="alert alert-success" style="text-align: center">Sudah memiliki akun?Silahkan
				<a href="<?php echo base_url('masuk') ?>" class = "btn btn-info btn-sm"> Login</a>
			</p>
		<div class="col-md-12">
			<?php 
			//Display Error
			echo validation_errors('<div class = " alert-warning alert">','</div>');

			//Form Open
			echo form_open(base_url('registrasi'),'class="leave-comment"'); 
			?>

			<table class="table">
				<thead>
					<tr>
						<th width="25%">Nama</th>
						<th><input type="text" name="nama_tamu" value="<?php echo set_value('nama_tamu') ?>" class="form-control" placeholder="Nama Lengkap" required=""></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Email</td>
						<td><input type="email" name="email" value="<?php echo set_value('email') ?>" class="form-control" placeholder="Email" required=""></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password" value="<?php echo set_value('password') ?>" class="form-control" placeholder="Password" required=""></td>
					</tr>
					<tr>
						<td>No Handphone</td>
						<td><input type="text" id="cc"name="telepon" value="<?php echo set_value('telepon') ?>" class="form-control" placeholder="Nomor Handphone" required="" min="1" maxlength="14"></td>
					</tr>
					<!-- <tr>
						<td>Alamat</td>
						<td><textarea name="alamat" class="form-control" placeholder="Alamat" value="<?php echo set_value('alamat') ?>" ></textarea></td>
					</tr> -->
					<tr>
						<td></td>
						<td>
							<button class="btn btn-success btn-lg" type="submit">
								<i class="fa fa-save"></i>Submit
							</button>
							<a href="<?php echo base_url() ?>" class="btn btn-default btn-lg" type="reset">
								<i class="fa fa-times"></i>Batal
							</a>
						</td>
					</tr>
				</tbody>
				<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
    			<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/jquery.inputmask.bundle.min.js'></script>
				<script type="text/javascript" src="<?php echo base_url() ?>assets/template/js/index.js"></script>
			</table>
			<?php echo form_close(); ?>
		</div>
		</div>
	</div>
</div>
</section>


