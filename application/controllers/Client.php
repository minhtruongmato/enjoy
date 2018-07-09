<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client extends Public_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
    }

	public function register(){
        if ($this->ion_auth->logged_in()) {
            $this->logout();
            redirect('client/register', 'refresh');
        }
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('first_name', 'First Name','trim|required');
        $this->form_validation->set_rules('last_name', 'Last Name','trim|required');
        $this->form_validation->set_rules('username','User Name','trim|required');
        $this->form_validation->set_rules('email','Email','trim|valid_email|required|is_unique[users.email]');
        $this->form_validation->set_rules('password','Password','trim|min_length[8]|max_length[20]|required');
        $this->form_validation->set_rules('confirm_password','Confirm Password','trim|matches[password]|required');

        if($this->form_validation->run()===FALSE){
            $this->load->helper('form');
            $this->render('register_view');
        }
        else{
            if ($this->input->post()) {
                $first_name = $this->input->post('first_name');
                $last_name = $this->input->post('last_name');
                $username = $this->input->post('first_name');
                $email = $this->input->post('email');
                $password = $this->input->post('password');

                $additional_data = array(
                    'first_name' => $first_name,
                    'last_name' => $last_name
                );
                $group = array('2');
                $this->load->library('ion_auth');
                if($this->ion_auth->register($username, $password, $email, $additional_data, $group)){
                    $this->session->set_flashdata('auth_message', 'Account registration successful!.');
                    redirect('client/register', 'refresh');
                }
                else{
                    $this->session->set_flashdata('auth_message', $this->ion_auth->errors());
                    redirect('client/register', 'refresh');
                }
            }
        }  
    }

    public function login(){
        if ($this->ion_auth->logged_in()) {
            redirect('/', 'refresh');
        }
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('email','Email','trim|valid_email|required');
        $this->form_validation->set_rules('password','Password','trim|min_length[8]|max_length[20]|required');

        if ($this->form_validation->run() == FALSE) {
            $this->render('login_view');
        } else {
            if ($this->input->post()) {
                $email = $this->input->post('email');
                $password = $this->input->post('password');
                if ($this->ion_auth->login($email, $password)) {
                    if ($this->ion_auth->is_admin()===TRUE) {
                        $this->ion_auth->logout();
                        redirect('client/login', 'refresh');
                    }
                    redirect('/', 'refresh');
                } else {
                    $this->session->set_flashdata('auth_message', $this->ion_auth->errors());
                    redirect('client/login', 'refresh');
                }
            }
        }
        
    }

    function register_email_exists(){
    	$this->load->model('ion_auth_model');
    	$email = $this->input->get('register_mail');
    	$check = $this->ion_auth_model->email_check($email);
    	if($check == true){
    		echo json_encode(FALSE);
    	}else{
    		echo json_encode(TRUE);
    	}
    }

    public function logout() {
        $this->ion_auth->logout();
        redirect('client/login');
    }


    public function forgot_password(){
        $this->load->library('ion_auth');
        $this->load->library('email');
        $user = $this->ion_auth->user()->row();
        // print_r($user);die;
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('email','Email','trim|valid_email|required');

        if ($this->form_validation->run() == FALSE) {
            $this->render('forgot_password_view');
        } else {
            if($this->input->post()){
                $email = $this->input->post('email');
                if (!$this->ion_auth->email_check($email)){
                    $this->session->set_flashdata('auth_message','The email is incorrect. Please again');
                    return redirect('client/forgot_password');
                }
                $forgotten = $this->ion_auth->forgotten_password($email);
                $config = [
                    'protocol' => 'smtp',
                    'smtp_host' => 'ssl://smtp.googlemail.com',
                    'smtp_port' => 465,
                    'smtp_user' => 'nghemalao@gmail.com',
                    'smtp_pass' => 'Huongdan1',
                    'smtp_port' => '465',
                    'mailtype' => 'html'
                ];
                $data = array(
                    'identity'=>$forgotten['identity'],
                    'forgotten_password_code' => $forgotten['forgotten_password_code'],
                );
                $this->load->library('email');
                $this->email->initialize($config);
                $this->load->helpers('url');
                $this->email->set_newline("\r\n");

                $this->email->from('nghemalao@gmail.com');
                $this->email->to($email);
                $this->email->subject("forgot password");
                $body = $this->load->view('forgot_password.tpl.php',$data,TRUE);
                $this->email->message($body);

                if ($this->email->send()) {
                    $this->session->set_flashdata('auth_message','Email sent successfully. Please check your Email!!');
                    return redirect('client/login');
                } 
                else {
                    echo "Email not send .....";
                    show_error($this->email->print_debugger());
                }
            }
        }
        
    }

    public function reset_password($code){

        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->load->library('email');

        $this->form_validation->set_rules('password','New Password','trim|min_length[8]|max_length[20]|required');
        $this->form_validation->set_rules('confirm_password','Confirm Password','trim|matches[password]|required');

        $user = $this->ion_auth->forgotten_password_check($code);
        if(!$user){
            $this->load->view('404');
        }
        else{
            if ($this->form_validation->run() == FALSE) {
                $this->data['csrf'] = $this->security->get_csrf_hash();
                $this->data['code'] = $code;
                $this->render("reset_password_view");
            } else {
                if($this->input->post()){
                    if ($user){
                        $reset = $this->ion_auth->forgotten_password_complete($code);
                        if ($reset) {  //if the reset worked then send them to the login page
                            $data = array('password' => $this->input->post('password'));
                            if($this->ion_auth->update($user->id, $data)){
                                $this->ion_auth->clear_forgotten_password_code($code);
                                $this->session->set_flashdata('auth_message', $this->ion_auth->messages());
                                redirect("client/login", 'refresh');
                            }else{
                                redirect('client/reset_password/' . $code, 'refresh');
                            }
                            
                        }
                        else { //if the reset didnt work then send them back to the forgot password page
                            $this->session->set_flashdata('auth_message', $this->ion_auth->errors());
                            redirect("client/forgot_password", 'refresh');
                        }
                    }
                }
            }
        }
    }

    public function change_password(){
        $this->load->helper('form');
        $this->load->library('form_validation');
        if (!$this->ion_auth->logged_in()){
            redirect('client/login', 'refresh');
        }
        $user = $this->ion_auth->user()->row();
        $this->data['user_id'] = $user->id;

        $this->form_validation->set_rules('old_password','Old Password','trim|required');

        $this->form_validation->set_rules('new_password','New Password','trim|min_length[8]|max_length[20]|required');
        $this->form_validation->set_rules('new_confirm','Confirm New Password','trim|matches[new_password]|required');

        if ($this->form_validation->run() == FALSE) {
            $this->render('change_password_view');
        } else {
            if ($this->input->post()) {
                $identity = $this->session->userdata('identity');
                $change = $this->ion_auth->change_password($identity, $this->input->post('old_password'), $this->input->post('new_password'));
                if ($change){
                //if the password was successfully changed
                    $this->logout();
                    $this->session->set_flashdata('auth_message', 'Change password successfully. Please log in again!');
                    redirect('client/login', 'refresh');
                }else{
                    $this->session->set_flashdata('auth_message', 'Password incorrect please check again');
                    redirect('client/change_password', 'refresh');
                }
            }
        } 
    }

}

/* End of file Client.php */
/* Location: ./application/controllers/Client.php */