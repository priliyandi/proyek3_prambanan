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
		
			<p class="alert alert-success" style="text-align: center">Belum memiliki akun?Silahkan
				<a href="<?php echo base_url('registrasi') ?>" class = "btn btn-info btn-sm">Registrasi</a>
			</p>
		<div class="col-md-8 col-md-offset-2">
			<?php 
			//Display Error
			echo validation_errors('<div class = " alert-warning alert">','</div>');

			//Display Notif error Login
			if ($this->session->flashdata('warning')) {
				echo '<div class="alert-warning alert">';
				echo $this->session->flashdata('warning');
				echo '</div>';
			}

			//Display Notif Sukses Logout
			if ($this->session->flashdata('sukses')) {
				echo '<div class="alert-success alert">';
				echo $this->session->flashdata('sukses');
				echo '</div>';
			}

			//Form Open
			echo form_open(base_url('masuk'),'class="leave-comment"'); 
			?>

			<table class="table">
				<tbody>
					<tr>
						<td>Email (Username)</td>
						<td><input type="email" name="email" value="<?php echo set_value('email') ?>" class="form-control" placeholder="Email" required=""></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password" value="<?php echo set_value('password') ?>" class="form-control" placeholder="Password" required=""></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<button class="btn btn-success btn-sm" type="submit">
								<i class="fa fa-save"></i>Login
							</button>
							<a href="<?php echo base_url() ?>" class="btn btn-default btn-sm" type="reset" width="20%">
								<i class="fa fa-times"></i>Batal
							</a>
						</td>
					</tr>
				</tbody>
			</table>
			<?php echo form_close(); ?>
		</div>
		</div>
	</div>
</div>
</section>


