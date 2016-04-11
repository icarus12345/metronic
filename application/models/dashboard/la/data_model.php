<?php

class data_model extends Core_Model {

    function __construct(){
        parent::__construct('lang_data', 'data_', 'id');
    }
    function getByType($type=null){
    	if($type!=null)$this->db->where('data_type',$type);
        $query=$this->db
            ->from('lang_data')
            ->order_by('data_insert','DESC')
            ->get(); 
        $tmpdata = $query->result();
    	foreach ($tmpdata as $key => $value) {
            $value->data_data = json_decode($value->data_data, true);
            $data[] = $value;
        }
        return $data;
    }
    function getByToken($token=null){
        if($token!=null)$this->db->where('data_token',$token);
        $query=$this->db
            ->from('lang_data')
            ->order_by('data_insert','DESC')
            ->get(); 
        $tmpdata = $query->result();
        foreach ($tmpdata as $key => $value) {
            $value->data_data = json_decode($value->data_data, true);
            $data[] = $value;
        }
        return $data;
    }
}