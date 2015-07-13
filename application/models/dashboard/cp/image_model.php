<?php

class image_model extends Core_Model {

    function __construct(){
        parent::__construct('_image','image_','id');
    }
    function getByToken($token=null){
        if($token!=null)$this->db->where('image_token',$token);
        $query=$this->db
                ->select("SQL_CALC_FOUND_ROWS *",false)
                ->from('_image')
                ->where('image_status','true')
                ->order_by('image_position','ASC')
                ->order_by('image_insert','ASC')
                ->get();
        return $query->result();
    }
}
?>
