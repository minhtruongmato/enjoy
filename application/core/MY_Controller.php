<?php

class MY_Controller extends CI_Controller {

    protected $data = array();
    protected $author_info = array();
    protected $page_languages = array('en', 'cn', 'sc');
    protected $langAbbreviation = 'en';
    protected $fix_data = array();

    function __construct() {
        parent::__construct();
        
        $this->data['page_title'] = 'Template';
        $this->data['before_head'] = '';
        $this->data['before_body'] = '';
    }

    protected function render($the_view = NULL, $template = 'master') {
        if ($template == 'json' || $this->input->is_ajax_request()) {
            header('Content-Type: application/json');
            echo json_encode($this->data);
        } else {
            $this->data['the_view_content'] = (is_null($the_view)) ? '' : $this->load->view($the_view, $this->data, TRUE);
            $this->data['lang'] = $this->langAbbreviation;
            $this->load->view('templates/' . $template . '_view', $this->data);
        }
    }

    protected function pagination_config($base_url, $total_rows, $per_page, $uri_segment,$next = 'Next',$prev = 'Prev',$last = 'Last',$first = 'First') {
        $config['base_url'] = $base_url;
        $config['per_page'] = $per_page;
        $config['uri_segment'] = $uri_segment;
        $config['prev_link'] = $prev;
        $config['next_link'] = $next;
        $config['last_link'] = $last;
        $config['first_link'] = $first;
        $config['total_rows'] = $total_rows;
        $config['reuse_query_string'] = true;
        return $config;
    }

    protected function upload_image($image_input_id, $image_name, $upload_path, $upload_thumb_path, $thumbs_with = 500, $thumbs_height = 375) {
        $image = '';
        if (!empty($image_name)) {
            $config['upload_path'] = $upload_path;
            $config['allowed_types'] = 'jpg|jpeg|png';
            $config['file_name'] = $image_name;
            // $config['encrypt_name'] = TRUE;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if ($this->upload->do_upload($image_input_id)) {
                $upload_data = $this->upload->data();
                $image = $upload_data['file_name'];

                $config_thumb['source_image'] = $upload_path . '/' . $image;
                $config_thumb['create_thumb'] = TRUE;
                $config_thumb['maintain_ratio'] = TRUE;
                $config_thumb['new_image'] = $upload_thumb_path;
                $config_thumb['width'] = $thumbs_with;
                $config_thumb['height'] = $thumbs_height;

                $this->load->library('image_lib', $config_thumb);

                $this->image_lib->resize();
            }
        }

        return $image;
    }

    protected function upload_multiple_image($upload_path = '', $file_name = '', $upload_thumb_path = '', $thumbs_with = 500, $thumbs_height = 500) {
        $config = $this->config_file($upload_path);

        $image = '';
        $file = $_FILES[$file_name];
        $count = count($file['name']);
        $image_list = array();
        $config_thumb = array();

        for ($i = 0; $i < $count; $i++) {

            $_FILES['userfile']['name'] = $file['name'][$i];
            $_FILES['userfile']['type'] = $file['type'][$i];
            $_FILES['userfile']['tmp_name'] = $file['tmp_name'][$i];
            $_FILES['userfile']['error'] = $file['error'][$i];
            $_FILES['userfile']['size'] = $file['size'][$i];

            $this->load->library('upload', $config);

            if ($this->upload->do_upload()) {
                $data = $this->upload->data();
                $image_list[] = $data['file_name'];
                $image = $data['file_name'];

                $this->load->library('image_lib');

                $config['image_library'] = 'gd2';
                $config_thumb['source_image'] = $upload_path . '/' . $image;
                $config_thumb['create_thumb'] = TRUE;
                $config_thumb['maintain_ratio'] = TRUE;
                $config_thumb['new_image'] = $upload_thumb_path;
                $config_thumb['width'] = $thumbs_with;
                $config_thumb['height'] = $thumbs_height;

                $this->image_lib->initialize($config_thumb);
                $this->image_lib->resize();
                $this->image_lib->clear();

                $this->image_lib->resize($image);
                
            }
        }
        return $image_list;
    }

    function config_file($upload_path = '') {
        $config = array();
        $config['upload_path'] = $upload_path;
        $config['allowed_types'] = 'jpg|jpeg|png|gif';
        $config['max_size'] = '1200';
        // $config['encrypt_name'] = TRUE;
//        $config['max_width']     = '1028';
//        $config['max_height']    = '1028';
        return $config;
    }

    protected function delete_multiple_common($table, $model, $ids){
        $this->load->model($model);

        $data = array();
        foreach($ids as $key => $id){
            $data[$key] = array(
                'id' => $id,
                'is_deleted' => 1
            );
        }

        $result = $this->$model->remove_multiple($table, $data);

        if($result == false){
            $this->output->set_status_header(404)
                ->set_output(json_encode(array('message' => 'Fail', 'data' => $ids)));
        }else{
            $this->output->set_status_header(200)
                ->set_output(json_encode(array('message' => 'Success', 'data' => $ids)));
        }
    }
    function return_api($status, $message='', $data = null,$isExisted= true){
        return $this->output
            ->set_content_type('application/json')
            ->set_status_header($status)
            ->set_output(json_encode(array('status' => $status,'message' => $message , 'reponse' => $data, 'isExisted' => $isExisted)));
    }

}

class Admin_Controller extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->data['page_languages'] = array('en' => 'English', 'cn' => 'Tiếng Trung phồn thể', 'sc' => 'Tiếng Trung giản thể');
        $this->load->library('ion_auth');
        if (!$this->ion_auth->logged_in()) {
            $this->ion_auth->logout();
            //redirect them to the login page
            redirect('admin/user/login', 'refresh');
        }
        $this->data['page_title'] = 'Administrator area';

        // Set timezone
        date_default_timezone_set('Europe/Budapest');

        // Insert author informations to database when insert, update or delete
        $this->author_info = array(
            'created' => date('Y-m-d H:i:s', now()),
            'created_by' => $this->ion_auth->user()->row()->username,
            'modified' => date('Y-m-d H:i:s', now()),
            'modified_by' => $this->ion_auth->user()->row()->username
        );

        $this->fix_data = array(25);
    } 
    function return_api($status, $message='', $data = null,$isExisted= true){
        return $this->output
            ->set_content_type('application/json')
            ->set_status_header($status)
            ->set_output(json_encode(array('status' => $status,'message' => $message , 'reponse' => $data, 'isExisted' => $isExisted)));
    }
    protected function upload_image($image_input_id, $image_name, $upload_path, $upload_thumb_path = '', $thumbs_with = 500, $thumbs_height = 500) {
        $image = '';
        if (!empty($image_name)) {
            $config['upload_path'] = $upload_path;
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
            $config['file_name'] = $image_name;
            $config['max_size'] = '1200';
            $config['encrypt_name'] = TRUE;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if ($this->upload->do_upload($image_input_id)) {
                $upload_data = $this->upload->data();
                $image = $upload_data['file_name'];

                $config_thumb['source_image'] = $upload_path . '/' . $image;
                $config_thumb['create_thumb'] = TRUE;
                $config_thumb['maintain_ratio'] = TRUE;
                $config_thumb['new_image'] = $upload_thumb_path;
                $config_thumb['width'] = $thumbs_with;
                $config_thumb['height'] = $thumbs_height;

                $this->load->library('image_lib', $config_thumb);

                $this->image_lib->resize();
            }
        }
        return $image;
    }

    protected function upload_file($upload_path = '', $file_name = '', $upload_thumb_path = '', $thumbs_with = 500, $thumbs_height = 500) {
        $config = $this->config_file($upload_path);
        $image = '';
        $file = $_FILES[$file_name];
        $count = count($file['name']);
        $image_list = array();
        $config_thumb = array();
        for ($i = 0; $i < $count; $i++) {
            $_FILES['userfile']['name'] = $file['name'][$i];
            $_FILES['userfile']['type'] = $file['type'][$i];
            $_FILES['userfile']['tmp_name'] = $file['tmp_name'][$i];
            $_FILES['userfile']['error'] = $file['error'][$i];
            $_FILES['userfile']['size'] = $file['size'][$i];
            $this->load->library('upload', $config);
            if ($this->upload->do_upload()) {
                $data = $this->upload->data();
                $image_list[] = $data['file_name'];
                $image = $data['file_name'];
                $this->load->library('image_lib');
                $config['image_library'] = 'gd2';
                $config_thumb['source_image'] = $upload_path . '/' . $image;
                $config_thumb['create_thumb'] = TRUE;
                $config_thumb['maintain_ratio'] = TRUE;
                $config_thumb['new_image'] = $upload_thumb_path;
                $config_thumb['width'] = $thumbs_with;
                $config_thumb['height'] = $thumbs_height;
                $this->image_lib->initialize($config_thumb);
                $this->image_lib->resize();
                $this->image_lib->clear();
                $this->image_lib->resize($image);
            }
        }
        return $image_list;
    }

    function config_file($upload_path = '') {
        $config = array();
        $config['upload_path'] = $upload_path;
        $config['allowed_types'] = 'jpg|jpeg|png|gif';
        $config['max_size'] = '1200';
        $config['encrypt_name'] = TRUE;
//        $config['max_width']     = '1028';
//        $config['max_height']    = '1028';

        return $config;
    }

    protected function render($the_view = NULL, $template = 'admin_master') {
        parent::render($the_view, $template);
    }

}

class Public_Controller extends MY_Controller {
    protected $id_array_packages = array(FIXED_TOUR_PACKAGES_CATEGORY_ID);
    protected $id_array_backpack = array(FIXED_BACKPACK_TRAVEL_CATEGORY_ID);
    public function __construct() {
        parent::__construct();
        $this->load->helper('form');
        $this->load->library('ion_auth');
        
        $this->load->model('product_model');
        $this->load->model('product_category_model');
        $this->load->model('post_category_model');
        $this->load->model('post_model');
        $this->load->model('localtion_model');
        $this->langAbbreviation = $this->session->userdata('langAbbreviation') ? $this->session->userdata('langAbbreviation') : 'en';

        if($this->langAbbreviation == 'en' || $this->langAbbreviation == 'cn' || $this->langAbbreviation == 'sc' || $this->langAbbreviation == ''){
            $this->session->set_userdata('langAbbreviation', $this->langAbbreviation);
        }
        
        if($this->session->userdata('langAbbreviation') == 'en' || $this->session->userdata('langAbbreviation') == ''){
            $langName = 'english';
            $this->config->set_item('language', $langName); 
            $this->session->set_userdata("langAbbreviation",'en');
            $this->lang->load('english_lang', 'english');
        }
        if($this->session->userdata('langAbbreviation') == 'cn'){
            $langName = 'chinese';
            $this->config->set_item('language', $langName); 
            $this->session->set_userdata("langAbbreviation",'cn');
            $this->lang->load('chinese_lang', 'chinese');
        }
        if($this->session->userdata('langAbbreviation') == 'sc'){
            $langName = 'simplified_chinese';
            $this->config->set_item('language', $langName); 
            $this->session->set_userdata("langAbbreviation",'sc');
            $this->lang->load('simplified_chinese_lang', 'simplified_chinese');
        }

        $this->category_all = $this->product_category_model->get_all_lang(array(),$this->session->userdata('langAbbreviation'));
        $this->category_all_post = $this->post_category_model->get_all_lang(array(),$this->session->userdata('langAbbreviation'));
        /**
         * PRODUCT CATEGORY MENU
         */
        $this->data['vietnam'] = $this->post_category_model->get_by_id(FIXED_VIETNAM_CATEGORY_ID,array('title','content'),$this->session->userdata('langAbbreviation'));
        $this->data['blog'] = $this->post_category_model->get_by_id(FIXED_BLOG,array('title','content'),$this->session->userdata('langAbbreviation'));
        $this->data['packages'] = $this->product_category_model->get_by_id(FIXED_TOUR_PACKAGES_CATEGORY_ID,array('title','content'),$this->session->userdata('langAbbreviation'));
        $this->data['backpack'] = $this->product_category_model->get_by_id(FIXED_BACKPACK_TRAVEL_CATEGORY_ID,array('title','content'),$this->session->userdata('langAbbreviation'));
        $this->data['packages_menu'] = $this->product_category_model->get_parent_id(FIXED_TOUR_PACKAGES_CATEGORY_ID,$this->session->userdata('langAbbreviation'),6);
        $this->data['backpack_menu'] = $this->product_category_model->get_parent_id(FIXED_BACKPACK_TRAVEL_CATEGORY_ID,$this->session->userdata('langAbbreviation'),6);
        $this->data['vietnam_menu'] = $this->post_category_model->get_parent_id(FIXED_VIETNAM_CATEGORY_ID,$this->session->userdata('langAbbreviation'),5);
        $this->data['blog_menu'] = $this->post_category_model->get_parent_id(FIXED_BLOG,$this->session->userdata('langAbbreviation'),2);
        $this->data['location_menu'] = $this->localtion_model->get_all_with_pagination_searchs('desc', $this->session->userdata('langAbbreviation'), 3, 0);
        $this->get_all_menu_param('packages_menu');
        $this->get_all_menu_param('backpack_menu');
        $this->get_all_product_with_category_id($this->category_all,FIXED_TOUR_PACKAGES_CATEGORY_ID,$this->id_array_packages);
        $this->get_all_product_with_category_id($this->category_all,FIXED_BACKPACK_TRAVEL_CATEGORY_ID,$this->id_array_backpack);
        $this->data['top_packages'] = $this->product_model->get_all_product_category_id_array($this->id_array_packages,10,$this->session->userdata('langAbbreviation'),'',1);
        $this->data['top_backpack'] = $this->product_model->get_all_product_category_id_array($this->id_array_backpack,10,$this->session->userdata('langAbbreviation'),'',1);
        /**
         * POST CATEGORY MENU
         */
        $this->data['visa_menu'] = $this->post_category_model->get_by_id(FIXED_VISA,array('title','content'),$this->session->userdata('langAbbreviation'));
        $this->data['news_menu'] = $this->post_category_model->get_by_id(FIXED_NEWS,array('title','content'),$this->session->userdata('langAbbreviation'));
        $this->data['blog_post'] = $this->post_category_model->get_by_id(FIXED_BLOG,array('title','content'),$this->session->userdata('langAbbreviation'));
        $this->get_all_menu_param_post('visa_menu');
        $this->get_all_menu_param_post('news_menu');
        $this->get_all_menu_param_post('blog_post');
        $this->data['controller'] = $this;
    }

    protected function get_all_menu_param($param){
        foreach ($this->data[$param] as $key => $value) {
            $id_category = array($value['id']);
            $this->get_all_product_with_category_id($this->category_all,$value['id'],$id_category);
            $this->data[$param][$key]['sub'] = $this->product_model->get_all_product_category_id_array($id_category,6,$this->session->userdata('langAbbreviation'));
        }
    }
    protected function get_all_product_with_category_id($categories, $parent_id = 0, &$ids){
        foreach ($categories as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $ids[] = $item['id'];
                unset($categories[$key]);
                $this->get_all_product_with_category_id($categories, $item['id'], $ids);
            }
        }
    }
    protected function get_all_menu_param_post($param){
            $id_category = array($this->data[$param]['id']);
            $this->get_all_post_with_category_id($this->category_all_post,$this->data[$param]['id'],$id_category);
            $this->data[$param]['sub'] = $this->post_model->get_all_post_category_id_array($id_category,3,$this->session->userdata('langAbbreviation'));
    }
    protected function get_all_post_with_category_id($categories, $parent_id = 0, &$ids){
        foreach ($categories as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $ids[] = $item['id'];
                unset($categories[$key]);
                $this->get_all_post_with_category_id($categories, $item['id'], $ids);
            }
        }
    }
    protected function render($the_view = NULL, $template = 'master') {
        parent::render($the_view, $template);
    }

}
