<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Documentation extends CI_Controller {

	public function index()
	{
		$this->load->view('admin/documentation_view');
	}	
	public function printfile()
	{
		$this->load->view('admin/documentation_print_view');
	}

}

/* End of file Documentation.php */
/* Location: ./application/controllers/admin/Documentation.php */