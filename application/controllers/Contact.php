<?php

defined('BASEPATH') OR exit('No direct script access allowed');
include "class.phpmailer.php";
include "class.smtp.php";
class Contact extends Public_Controller {

    public function __construct() {
        parent::__construct();
        //$this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

    public function index() {
        $this->data['current_link'] = 'contact';
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('contact_name', 'FULL NAME', 'required');
        $this->form_validation->set_rules('contact_mail', 'EMAIL', 'required');
        $this->form_validation->set_rules('contact_phone', 'YOUR PHONE NUMBER', 'required');

        if ($this->form_validation->run() == true) {
            if($this->input->post()){
                $data = array();
                $data['name'] = $this->input->post('contact_name');
                $data['email'] = $this->input->post('contact_mail');
                $data['phone'] = $this->input->post('contact_phone');
            }
            // $this->order_model->common_insert($data);
            $send = $this->send_mail($data);

            if($send == false){
                $this->output->set_status_header(404)
                    ->set_output(json_encode(array('message' => 'Fail', 'data' => $data)));
            }else{
                redirect('contact');
            }
        }else{
            $this->render('contact_view');
        }
    }
}