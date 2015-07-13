<?php

class data_model extends Core_Model {

    function __construct(){
        parent::__construct('_data','data_','id');
    }
    function getByType($type=''){
        $query=$this->db
            ->from('_data')
            ->join('_category','cat_id = data_category')
            ->where('data_type',$type)
            ->order_by('data_position','ASC')
            ->order_by('data_insert','ASC')
            ->get(); 
        return $query->result();
    }
    function getByCategory($cat_id=''){
        $query=$this->db
            ->from('_data')
            ->where('data_category',$cat_id)
            ->order_by('data_position','ASC')
            ->order_by('data_insert','ASC')
            ->get(); 
        return $query->result();
    }
}
?>
