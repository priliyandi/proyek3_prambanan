<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Masuk extends CI_Controller {


	public function __construct()
	{
		parent::__construct();
		$this->load->model('tamu_model');
	}

	//Login tamu
	public function index()
	{

		//validasi
		$this->form_validation->set_rules('email', 'Email/Username', 'required',
					array('required' 	=> '%s Harus diisi'));
		$this->form_validation->set_rules('password', 'Password', 'required',
					array('required' 	=> '%s Harus diisi'));
		
		if ($this->form_validation->run()) 
		{
			$email = $this->input->post('email');
			$password = $this->input->post('password');
			//proses ke simple login
			$this->simple_tamu->login($email,$password);
		}

		//end validasi

		$data = array ('title'		=> 'Login tamu',
					   'isi'		=> 'masuk/list'
					);
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	//Logout
	public function logout()
	{
		//Ambil Fungsi nya di simple tamu 	
		$this->simple_tamu->logout();
	}
}

/* End of file Masuk.php */
/* Location: ./application/controllers/Masuk.php */