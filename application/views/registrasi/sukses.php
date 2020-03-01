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

			<!-- <p class="alert alert-success" style="text-align: center">Registrasi Berhasil,Silahkan
				<a href="<?php echo base_url('masuk') ?>" class = "btn btn-info btn-sm"> Login</a>. -->
				Anda Bisa Melakukan Check Out <a href="<?php echo base_url('belanja/checkout') ?>" class = "btn btn-warning btn-sm">
					<i class="fa fa-shopping-cart"></i>Check Out</a>
			</p>

		</div>
	</div>
</div>
</section>


