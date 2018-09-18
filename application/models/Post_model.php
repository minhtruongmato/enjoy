<?php 

/**
* 
*/
class Post_model extends MY_Model{
	
	public $table = 'post';
    public function get_by_post_category_id($post_category_id = array(), $select = array(), $lang = '') {
        $this->db->query('SET SESSION group_concat_max_len = 10000000');
        $this->db->select($this->table .'.*');
        if(in_array('title', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_title');
        }
        if(in_array('description', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_description');
        }
        if(in_array('content', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_content');
        }
        if($select == null){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_title');
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_description');
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_content');
        }
        
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id','left');
        if($lang != ''){
            $this->db->where($this->table_lang .'.language', $lang);
        }
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.is_activated', 0);
        $this->db->where_in($this->table .'.post_category_id', $post_category_id);
        $this->db->group_by($this->table .".id");
        return $this->db->get()->result_array();
    }
    public function get_by_post_category_id_lang($post_category_id = '', $select = array(), $lang = '',$limit =0,$order ="desc") {
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
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id','left');
        if($lang != ''){
            $this->db->where($this->table_lang .'.language', $lang);
        }
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.is_activated', 0);
        $this->db->where($this->table .'.post_category_id', $post_category_id);
        $this->db->group_by($this->table .".id");
        $this->db->order_by($this->table .".id",$order);
        $this->db->limit($limit);
        return $this->db->get()->result_array();
    }
    public function get_by_slug($slug, $select = array(), $lang = '') {
        $this->db->query('SET SESSION group_concat_max_len = 10000000');
        $this->db->select($this->table .'.*');
        if(in_array('title', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_title');
        }
        if(in_array('description', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_description');
        }
        if(in_array('content', $select)){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_content');
        }
        if($select == null){
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_title');
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_description');
            $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.id separator \' ||| \') as '. $this->table .'_content');
        }
        
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
        if($lang != ''){
            $this->db->where($this->table_lang .'.language', $lang);
        }
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.slug', $slug);

        return $this->db->get()->row_array();
    }

    public function get_all_post($id_category,$limit=0,$lang='en',$order='desc') {
        $this->db->select('post.*, post_lang.title as title, post_lang.description as description, post_category_lang.title as parent_title, post_category.slug as parent_slug');
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
        $this->db->join('post_category', 'post_category.id = post.post_category_id', 'left');
        $this->db->join('post_category_lang', 'post_category.id = post_category_lang.post_category_id', 'left');
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.post_category_id', $id_category);
        $this->db->where($this->table_lang .'.language', $lang);
        $this->db->where('post_category_lang.language', $lang);
        $this->db->group_by('post.id');
        $this->db->order_by('post.id', $order);
        $this->db->limit($limit);
        return $this->db->get()->result_array();
    }

    public function get_all_post_category_id_array($post_category_id=array(),$limit='',$lang='en',$order='desc',$start = '') {
        $this->db->select('post.*, post_lang.title as title, post_lang.description as description, post_category_lang.title as parent_title, post_category.slug as parent_slug');
        $this->db->from($this->table);
        $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
        $this->db->join('post_category', 'post_category.id = post.post_category_id', 'left');
        $this->db->join('post_category_lang', 'post_category.id = post_category_lang.post_category_id', 'left');
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.is_activated', 0);
        $this->db->where_in('post.post_category_id', $post_category_id);
        $this->db->where($this->table_lang .'.language', $lang);
        $this->db->where('post_category_lang.language', $lang);
        $this->db->group_by('post.id');
        $this->db->order_by('post.id', $order);
        if($limit != '' && $start == ''){
            $this->db->limit($limit);
        }
        if($limit != '' && $start != ''){
            $this->db->limit($limit,$start);
        }
        return $this->db->get()->result_array();
    }
    public function get_by_post_category_id_and_not_id($post_category_id=array(),$id,$limit=0,$order='asc',$lang='en') {
        $this->db->select('post.*, post_category_lang.title as parent_title, post_category.slug as parent_slug, post_lang.title as title, post_lang.description as description, post_lang.content as content');
        $this->db->from($this->table);
        $this->db->join('post_lang', 'post_lang.post_id = post.id');
        $this->db->join('post_category', 'post_category.id = post.post_category_id');
        $this->db->join('post_category_lang', 'post_category_lang.post_category_id = post.post_category_id');
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where_in('post.post_category_id', $post_category_id);
        $this->db->where($this->table_lang .'.language', $lang);
        $this->db->where('post_category_lang.language', $lang);
        $this->db->where("post.id !=",$id);
        $this->db->group_by('post.id');
        $this->db->order_by('rand()');
        $this->db->limit($limit);
        return $this->db->get()->result_array();
    }
    public function fetch_row_by_slug($slug,$lang ='en'){
        $this->db->select('post.*, post_category_lang.title as parent_title, post_category.slug as parent_slug, post_lang.title as title, post_lang.description as description, post_lang.content as content, post_lang.metakeywords as metakeywords, post_lang.metadescription as metadescription');
        $this->db->from($this->table);
        $this->db->join('post_lang', 'post_lang.post_id = post.id');
        $this->db->join('post_category', 'post_category.id = post.post_category_id');
        $this->db->join('post_category_lang', 'post_category_lang.post_category_id = post.post_category_id');
        $this->db->where('post.is_deleted', 0);
        $this->db->where('post.slug', $slug);
        $this->db->where('post_lang.language', $lang);
        $this->db->where('post_category_lang.language', $lang);

        return $this->db->get()->row_array();
    }

    public function get_by_category_id($post_category_id = '',$activated=1) {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where('post_category_id', $post_category_id);
        if($activated == 0){
            $this->db->where('post.is_activated', 0);
        }
        $this->db->group_by("id");
        return $this->db->get()->result_array();
    }
}