<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Localtion_model extends MY_Model {

    public $table = 'localtion';

    public function __construct() {
        parent::__construct();
    }
    public function get_all_localtion() {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        return $result = $this->db->get()->result_array();
    }
    public function get_all_group_by() {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->group_by('area');
        return $result = $this->db->get()->result_array();
    }
    public function get_by_slug_localtion($slug='') {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where('slug', $slug);
        return $result = $this->db->get()->row_array();
    }
    public function get_by_area($area='',$lang = 'en') {
        $this->db->select($this->table . '.*, '. $this->table_lang . '.title as title');
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
        $this->db->where($this->table . '.is_deleted', 0);
        $this->db->where($this->table . '.area', $area);
        $this->db->where($this->table_lang . '.language', $lang);
        return $result = $this->db->get()->result_array();
    }
    public function get_librarylocaltion_by_id_array($librarylocaltion = array()){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where_in('id', $librarylocaltion);
        return $result = $this->db->get()->result_array();
    }
    public function get_librarylocaltion_by_not_id_array($notlibrarylocaltion = array(),$area){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('area', $area);
        $this->db->where('is_deleted', 0);
        $this->db->where_not_in('id', $notlibrarylocaltion);
        return $result = $this->db->get()->result_array();
    }
    public function get_by_id_array($id, $select = array('title','content'), $lang = '') {
        $this->db->query('SET SESSION group_concat_max_len = 10000000');
        $this->db->select($this->table .'.*');
        if(in_array('title', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_title');
        }
        if(in_array('description', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. 'description');
        }
        if(in_array('content', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_content');
        }
        if($select == null){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_title');
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. 'description');
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_content');
        }
        
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
        if($lang != ''){
            $this->db->where($this->table_lang .'.language', $lang);
        }
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.id', $id);
        return $this->db->get()->row_array();
    }
    public function get_by_id_array_lang($id, $select = array('title','description','content'), $lang = 'en') {
        $this->db->query('SET SESSION group_concat_max_len = 10000000');
        $this->db->select($this->table .'.*');
        if(in_array('title', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. 'title');
        }
        if(in_array('description', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. 'description');
        }
        if(in_array('content', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. 'content');
        }
        if($select == null){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. 'title');
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. 'description');
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. 'content');
        }
        
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
        if($lang != ''){
            $this->db->where($this->table_lang .'.language', $lang);
        }
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.id', $id);
        return $this->db->get()->row_array();
    }

    public function get_by_id_lang($id, $lang = 'en') {
        $this->db->select($this->table .'.*, localtion_lang.title as title, localtion_lang.description as description, localtion_lang.content as content');
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
        if($lang != ''){
            $this->db->where($this->table_lang .'.language', $lang);
        }
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.id', $id);
        return $this->db->get()->row_array();
    }
    public function get_all_localtion_area($area,$id,$limit = '',$lang){
        $this->db->select('localtion.*, localtion_lang.title as title, localtion_lang.description as description, localtion_lang.content as content,  localtion_lang.language as language');
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang . '.' . $this->table . '_id = ' . $this->table . '.id');
        $this->db->where($this->table . '.is_deleted', 0);
        $this->db->where($this->table_lang .'.language', $lang);
        $this->db->where($this->table.'.area', $area);
        $this->db->where($this->table.'.id !=', $id);
        $this->db->limit($limit);
        return $result = $this->db->get()->result_array();
    }
    public function fetch_row_by_slugs($slug, $lang){
        $this->db->select('localtion.*, localtion_lang.title as title, localtion_lang.description as description, localtion_lang.content as content, localtion_lang.language as language')
            ->from($this->table)
            ->join($this->table_lang, $this->table_lang . '.' . $this->table . '_id = ' . $this->table . '.id')
            ->where($this->table . '.is_deleted', 0)
            ->where($this->table_lang .'.language', $lang)
            ->where($this->table .'.slug', $slug);

        return $this->db->get()->row_array();
    }
    public function get_all_with_pagination_searchs($order = 'desc',$lang = '', $limit = NULL, $start = NULL, $keywords = '',$bestselling = '',$hot = '',$promotion = '',$product_category_id = array(),$banner = '') {
        $this->db->select($this->table .'.*, '. $this->table_lang .'.title, '. $this->table_lang .'.description, '. $this->table_lang .'.content');
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id');
        $this->db->like($this->table_lang .'.title', $keywords);
        $this->db->where($this->table .'.is_deleted', 0);
        if($bestselling != ''){
            $this->db->where($this->table .'.bestselling', $bestselling);
        }
        if($hot != ''){
            $this->db->where($this->table .'.hot', $hot);
        }
        if($promotion != '' && $promotion == 1){
            $this->db->where($this->table .'.percen !=', 0);
            $this->db->where($this->table .'.pricepromotion !=', 0);
        }
        if(!empty($product_category_id)){
            $this->db->where($this->table .'.is_top', 1);
            $this->db->where_in($this->table .'.product_category_id', $product_category_id);
        }
        if($banner != ''){
            $this->db->where($this->table .'.is_banner', $banner);
        }
        if($lang != ''){
            $this->db->where($this->table_lang .'.language', $lang);
        }
        $this->db->limit($limit, $start);
        $this->db->group_by($this->table_lang .'.'. $this->table .'_id');
        $this->db->order_by($this->table .".id", $order);

        return $result = $this->db->get()->result_array();
    }
}
