<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends Public_Controller {

	private $_lang = '';

    public function __construct() {
        parent::__construct();
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
        $this->load->model('product_model');
        $this->load->model('post_model');
        $this->load->model('post_category_model');
        $this->load->model('banner_model');
        $this->load->model('product_category_model');
    }

    function get_multiple_products_with_category_id($categories, $parent_id = 0, &$ids){
        foreach ($categories as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $ids[] = $item['id'];
                unset($categories[$key]);
                $this->get_multiple_products_with_category_id($categories, $item['id'], $ids);
            }
        }
    }
    function get_multiple_products_with_category($categories, $parent_id = 0, &$sub){
        foreach ($categories as $key => $item){
            if (!empty($item) && $item['id'] == $parent_id){
                $sub[] = $categories[$key];
                unset($categories[$key]);
                $this->get_multiple_products_with_category($categories, $item['parent_id'], $sub);
            }
        }
    }
    function get_all_product_in_category($tour_in_category,$number_tour=0){
        $this->get_multiple_products_with_category($this->product_category_model->get_all_lang(array(),'sc'),$tour_in_category['parent_id'],$sub);
        if(empty($sub)){
            $tour_in_category['sub'] = $sub;
        }else{
            $tour_in_category['sub'] = array_reverse($sub);
        }
        $this->get_multiple_products_with_category_id($this->product_category_model->get_all_lang(), $tour_in_category['id'], $ids);
        if(empty($ids)){
            $ids = array();
        }
        array_unshift($ids,$tour_in_category['id']);
        $check = 0;
        $tour_all_in_category=array();
        for ($i=0; $i < count($ids); $i++) {
             $tour =$this->product_model->get_by_product_category_id_array($ids[$i],array('title'),'sc');
             if($tour['id'] != ''){
                $tour_all_in_category[$check] = $this->product_model->get_by_product_category_id_array($ids[$i],array('title'),'sc');
                $tour_all_in_category[$check]['parent'] = $this->product_category_model->get_by_id_lang($tour_all_in_category[$check]['product_category_id']);
                $check++;
                if($check == $number_tour){
                    break;
                }
             }
        }
        return $tour_all_in_category;
    }
    public function index() {
        //banner
        $this->data['banner'] = $this->banner_model->get_all_lang(array('title','description'),'sc');
        //tour
        $this->data['tour_packages'] = $this->product_model->get_all_product_category_id_array($this->id_array_packages,5,'sc');
        $this->data['tour_backpack'] = $this->product_model->get_all_product_category_id_array($this->id_array_backpack,5,'sc');
        $this->data['tour_vietnam'] = $this->data['vietnam_menu'] = $this->product_category_model->get_parent_id(FIXED_VIETNAM_CATEGORY_ID,'sc',5);
        //post
        $this->data['services'] = $this->post_category_model->get_by_slug('dich-vu','desc','sc');
        $this->data['post_services'] = $this->post_model->get_by_post_category_id_lang($this->data['services']['id'],array('title'),'sc',2);
        $this->data['visa'] = $this->post_category_model->get_by_id(FIXED_VISA,array('title','content'),'sc');
        $this->data['news'] = $this->post_category_model->get_by_id(FIXED_NEWS,array('title','content'),'sc');
        $this->data['blog'] = $this->post_category_model->get_by_id(FIXED_BLOG,array('title','content'),'sc');
        $this->data['post_blogs'] = $this->post_model->get_by_post_category_id_lang(FIXED_BLOG,array('title','description'),'sc',3);
        $this->render('homepage_view');
    }

    function about(){
    	$this->load->model('about_model');
    	$about = $this->about_model->get_by_id_in_about($this->data['lang']);
    	return $about;
    }

    function blogs(){
    	$this->load->model('blog_model');
    	$blogs = $this->blog_model->get_all_field('desc', array('title', 'description', 'content'), $this->data['lang'], 3, 0);
    	return $blogs;
    }

    public function build_new_category($categorie, $parent_id = 0,&$result, $id = "",$char=""){
        $cate_child = array();
        foreach ($categorie as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $cate_child[] = $item;
                unset($categorie[$key]);
            }
        }
        if ($cate_child){
            foreach ($cate_child as $key => $value){
            $select = ($value['id'] == $id)? 'selected' : '';
            $result.='<option value="'.$value['id'].'">'.$char.$value['title'].'</option>';
            $this->build_new_category($categorie, $value['id'],$result, $id, $char.'---|');
            }
        }
    }
}