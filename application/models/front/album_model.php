<?php

class album_model extends Core_Model {

    function __construct(){
        parent::__construct('_album','album_','id');
        $this->status='true';
    }
    function select(){
        $this->db->select("
            SQL_CALC_FOUND_ROWS
                _album.*,
                cat_id,
                cat_title,
                cat_alias,
                cat_value
                "
            ,false);
    }
    function onGet($id){
        $query = $this->db
            ->from('_album')
            ->join('_category', 'album_category = cat_id', 'left')
            ->where('album_status', 'true')
            ->where('album_id', $id)
            ->get();
        return $query->row();
    }
    function onGetByAlias($alias=''){
        $query = $this->db
            ->from('_album')
            ->join('_category', 'album_category = cat_id', 'left')
            ->where('album_status', 'true')
            ->where('album_alias', $alias)
            ->get();
        return $query->row();
    }
    function getFeature($cat_value, $page = 1, $perpage = 10){
        $this->select();
        $this->db
            ->order_by('album_view','DESC')
            ->order_by('album_insert','DESC');
        return $this->getInCategories($cat_value, $page, $perpage); 
    }
    function getLatest($cat_value = null, $page = 1, $perpage = 10){
        $this->select();
        $this->db
            //->order_by('album_position','ASC');
            ->order_by('album_insert','DESC');
        return $this->getInCategories($cat_value, $page, $perpage);
    }
    function getRelated($album, $page = 1, $perpage = 10){
        if($album){
            $cat_value = $album->cat_value;
            $this->select();
            $this->db->where('album_id <>', $album->album_id)
                ->order_by("cat_value like '$cat_value%'",'DESC',false);
            $this->db
                ->order_by('rand()');
            return $this->getInCategories($cat_value, $page, $perpage);
        }
    }
    function getInCategories($cat_value = null, $page = 1, $perpage = 10) {
        if($this->type)$this->db->where('album_type', $this->type);
        if($cat_value)
            $this->db->like('cat_value', $cat_value,'after');
        $query = $this->db
            ->from('_album')
            ->join('_category', 'album_category = cat_id', 'left')
            ->where('album_status', 'true')
            
            //->where('album_insert <= ', date('Y-m-d H:i:s'))
            ->limit($perpage, ($page - 1) * $perpage)
            ->get();
        return $query->result();
    }
}
?>
