<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Post extends Public_Controller {
  
    public function __construct() {
        parent::__construct();
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
        $this->load->model('post_model');
        $this->load->model('post_category_model');
        $this->load->helper("url");
    }

    public function index() {
        $this->data['current_link'] = 'post';
    }
    public function get_multiple_posts_with_category_id($categories, $parent_id = 0, &$id_array){
        foreach ($categories as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $id_array[] = $item['id'];
                unset($categories[$key]);
                $this->get_multiple_posts_with_category_id($categories, $item['id'], $id_array);
            }
        }
    }
    public function get_chilren_posts_with_category_id($categories, $parent_id = 0, &$sub){
        foreach ($categories as $key => $item){
            if (!empty($item) && $item['id'] == $parent_id){
                $sub[] = $item['id'];
                unset($categories[$key]);
                $this->get_chilren_posts_with_category_id($categories, $item['parent_id'], $sub);
            }
        }
    }
    public function category($slug) {
        $category = $this->post_category_model->fetch_row_by_slug($slug,$this->data['lang']);
        $this->data['detail'] = $category;
        $this->get_multiple_posts_with_category_id($this->post_category_model->get_all('desc', $this->data['lang']), $category['post_category_id'], $id_array);
        if(empty($id_array)){
            $id_array = array();
        }
        array_unshift($id_array,$category['post_category_id']);
        $posts = $this->post_model->get_all_post_category_id_array($id_array);
        $total_rows  = 0;
        if(!empty($posts)){
            $total_rows  = count($posts);
        }
        $this->load->library('pagination');
        $base_url = base_url('post/category/'.$slug);
        $uri_segment = 4;
        $per_page = 3;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment,$this->lang->line('next'),$this->lang->line('prev'),$this->lang->line('last'),$this->lang->line('first')) as $key => $value) {
            $config[$key] = $value;
        }
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();
        $this->data['page'] = ($this->uri->segment($uri_segment)) ? $this->uri->segment($uri_segment) : 0;

        $this->data['result'] = $this->post_model->get_all_post_category_id_array($id_array, $per_page, $this->data['lang'], 'desc',$this->data['page']);
        $this->render('post_view');
    }

    public function detail($slug){
        if($this->post_model->find_rows(array('slug' => $slug,'is_deleted' => 0,'is_activated' => 0)) != 0){
            $this->data['detail'] = $this->post_model->fetch_row_by_slug($slug,$this->data['lang']);
            $this->data['comment'] = $this->comment($this->data['detail']['id']);
            $this->data['count_comment'] = $this->count_comment($this->data['detail']['id']);
            $get_all = $this->post_category_model->get_all_lang(array('title','content'),$this->data['lang']);
            $this->get_multiple_posts_with_category_id($get_all, $this->data['detail']['post_category_id'], $id_array);
            if(empty($id_array)){
                $id_array = array();
            }
            array_unshift($id_array,$this->data['detail']['post_category_id']);
            $this->data['post_array'] =$this->post_model->get_by_post_category_id_and_not_id($id_array,$this->data['detail']['id'],4,'',$this->data['lang']);
            $this->render('detail_post_view');
        }else{
            $this->session->set_flashdata('message_error',MESSAGE_ISSET_ERROR);
            redirect('/', 'refresh');
        }
    }
    protected function comment($product_id, $type = 1) {
        $this->load->model('comment_model');
        $comment = $this->comment_model->get_all_by_product_id($product_id, 5, 0,$type);
        if($comment){
            return $comment;
        }
    }
    protected function count_comment($product_id, $type = 1){
        $this->load->model('comment_model');
        $count_comment = $this->comment_model->count_all_by_product_id($product_id,$type);
        return $count_comment;
    }
}

?>
