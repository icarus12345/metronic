<?php

class content_model extends Core_Model {

    function __construct(){
        parent::__construct('_content','content_','id');
        $this->status='true';
    }
    function select(){
        $this->db->select("
            SQL_CALC_FOUND_ROWS
                content_id,
                content_title,
                content_alias,
                content_desc,
                content_insert,
                content_update,
                content_thumb,
                content_category,
                cat_id,
                cat_title,
                cat_alias,
                cat_value,
                content_createby
                "
            ,false);
    }
    function onGet($id){
        $query = $this->db
            ->from('_content')
            ->join('_category', 'content_category = cat_id', 'left')
            ->where('content_status', 'true')
            ->where('content_id', $id)
            ->get();
        $row = $query->row();
        if(LANG == 'en'){
            if($row){
                $row->content_title = $row->content_title_en;
                $row->content_alias = $row->content_alias_en;
                $row->content_desc = $row->content_desc_en;
                $row->content_tag = $row->content_tag_en;
                $row->content_content = $row->content_content_en;
            }
        }
        return  $row;
    }
    function onGetByAlias($alias=''){
        $query = $this->db
            ->from('_content')
            ->join('_category', 'content_category = cat_id', 'left')
            ->where('content_status', 'true')
            ->where('content_alias', $alias)
            ->get();
        return $query->row();
    }
    function getFeature($cat_value, $page = 1, $perpage = 10){
        $this->select();
        $this->db
            ->order_by('content_view','DESC')
            ->order_by('content_insert','DESC');
        return $this->getInCategories($cat_value, $page, $perpage); 
    }
    function getLatest($cat_value = null, $page = 1, $perpage = 10){
        $this->select();
        $this->db
            //->order_by('content_position','ASC');
            ->order_by('content_insert','DESC');
        return $this->getInCategories($cat_value, $page, $perpage);
    }
    function getRelated($content, $page = 1, $perpage = 10){
        if($content){
            $cat_value = $content->cat_value;
            $this->select();
            $this->db
                ->where('content_id <>', $content->content_id)
                ->where('content_insert <', $content->content_insert)
                ->order_by("cat_value like '$cat_value%'",'DESC',false);
            $this->db
                ->order_by('content_insert','DESC');
            return $this->getInCategories($cat_value, $page, $perpage);
        }
    }
    function getInCategories($cat_value = null, $page = 1, $perpage = 10) {
        if($this->type)$this->db->where('content_type', $this->type);
        if($cat_value)
            $this->db->like('cat_value', $cat_value,'after');
        $query = $this->db
            ->from('_content')
            ->join('_category', 'content_category = cat_id', 'left')
            ->where('content_status', 'true')
            
            //->where('content_insert <= ', date('Y-m-d H:i:s'))
            ->limit($perpage, ($page - 1) * $perpage)
            ->get();
        return $query->result();
    }
}
?>
