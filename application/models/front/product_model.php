<?php

class product_model extends Core_Model {

    function __construct(){
        parent::__construct('_product','product_','id');
        $this->status='true';
    }
    function select(){
        $this->db->select("
            SQL_CALC_FOUND_ROWS
                product_id,
                product_title,
                product_alias,
                product_desc,
                product_insert,
                product_update,
                product_thumb,
                product_code,
                product_category,
                product_price,
                cat_id,
                cat_title,
                cat_alias,
                cat_value
                "
            ,false);
    }
    function onGet($id){
        $query = $this->db
            ->from('_product')
            ->join('_category', 'product_category = cat_id', 'left')
            ->where('product_status', 'true')
            ->where('product_id', $id)
            ->get();
        return $query->row();
    }
    function onGetByAlias($alias=''){
        $query = $this->db
            ->from('_product')
            ->join('_category', 'product_category = cat_id', 'left')
            ->where('product_status', 'true')
            ->where('product_alias', $alias)
            ->get();
        return $query->row();
    }
    function getFeature($cat_value, $page = 1, $perpage = 10){
        $this->select();
        $this->db
            ->order_by('product_view','DESC')
            ->order_by('product_insert','DESC');
        return $this->getInCategories($cat_value, $page, $perpage); 
    }
    function getLatest($cat_value = null, $page = 1, $perpage = 10){
        $this->select();
        $this->db
            //->order_by('product_position','ASC');
            ->order_by('product_insert','DESC');
        return $this->getInCategories($cat_value, $page, $perpage);
    }
    function getRelated($product, $page = 1, $perpage = 10){
        if($product){
            $cat_value = $product->cat_value;
            $this->select();
            $this->db->where('product_id <>', $product->product_id)
                ->order_by("cat_value like '$cat_value%'",'DESC',false);
            $this->db
                ->order_by('rand()');
            return $this->getInCategories($cat_value, $page, $perpage);
        }
    }
    function getInCategories($cat_value = null, $page = 1, $perpage = 10) {
        if($this->type)$this->db->where('product_type', $this->type);
        if($cat_value)
            $this->db->like('cat_value', $cat_value,'after');
        $query = $this->db
            ->from('_product')
            ->join('_category', 'product_category = cat_id', 'left')
            ->where('product_status', 'true')
            
            //->where('product_insert <= ', date('Y-m-d H:i:s'))
            ->limit($perpage, ($page - 1) * $perpage)
            ->get();
        $data = $query->result();
        foreach ($data as $key => $value) {
            $thumb = str_replace('/data/', '/data/thumbs/', $data[$key]->product_thumb);
            if(file_exists(APPPATH . '..' .$thumb)){
                $data[$key]->product_thumb = $thumb; 
            }
        }
        return $data;
    }
    function onGetByType2($type=''){
        $data = $this->onGetByType($type);
        foreach ($data as $key => $value) {
            $thumb = str_replace('/data/', '/data/thumbs/', $data[$key]->product_thumb);
            if(file_exists(APPPATH . '..' .$thumb)){
                $data[$key]->product_thumb = $thumb; 
            }
        }
        return $data;
    }
}
?>
