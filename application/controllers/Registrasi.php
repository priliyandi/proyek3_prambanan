<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Registrasi extends CI_Controller {

	//Load Model
	public function __construct()
	{
		parent::__construct();
		$this->load->model('tamu_model');

	}

	//Halaman Registrasi
	public function index()
	{

		//Validasi Input
		$valid = $this->form_validation;

		$valid->set_rules('nama_tamu', 'Nama tamu', 'required',
						array('required' 	=> '%s Harus Di Isi'
						 ));

		$valid->set_rules('email', 'Email', 'required|valid_email|is_unique[tamu.email]',
						array('required' 		=> '%s Harus Di Isi',
							  'is_unique'		=> '%s Email Sudah Terdaftar,Buat Email Baru', 
							  'valid_email' 	=> '%s Tidak valid'
						));

		$valid->set_rules('password', 'Password', 'required',
						array('required' 	=> '%s Harus Di Isi' 
					));

		if ($valid->run()===FALSE) {
			//end Validasi
		$data = array ('title' 	=>'Registrasi tamu',
					   'isi'	=>'registrasi/list',
					);
		$this->load->view('layout/wrapper', $data, FALSE);
		//Masuk Database
		}else {
			$i = $this->input;
			$data = array('status_tamu'	=> 'Pending',
						  'nama_tamu'		=> $i->post('nama_tamu'),
						  'email'				=> $i->post('email'),
						  'password'			=> SHA1($i->post('password')),
						  'telepon'				=> $i->post('telepon'),
						  'alamat'				=> $i->post('alamat'),
						  'tanggal_daftar'		=> date('Y-m-d H:i:s')			
						);
			$this->tamu_model->tambah($data);
			//Create Session Login tamu
			// $this->session->set_userdata('email',$i->post('email'));
			// $this->session->set_userdata('nama_tamu',$i->post('nama_tamu'));
			//End Create Session
			$this->session->set_flashdata('sukses', 'Registrasi berhasil,Silahkan Login');
			redirect(base_url('masuk'),'refresh');
		}
		//end Masuk Database
	}

	//Sukses
	public function sukses()
	{
		$data = array ('title' 	=>'Registrasi Berhasil',
					   'isi'	=>'registrasi/sukses',
					);
		$this->load->view('layout/wrapper', $data, FALSE);
	}

}

/* End of file Registrasi.php */
/* Location: ./application/controllers/Registrasi.php */