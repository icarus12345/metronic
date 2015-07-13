<?php

class setting_model extends Core_Model {

    function __construct(){
        parent::__construct('setting','','Id');
    }
    function getByName($name=''){
        $query=$this->db
            ->from($this->table)
            ->where('Name',$name)
            ->get(); 
        return $query->row();
    }
    function getByType($type=''){
        $query=$this->db
            ->from($this->table)
            ->where('Type',$type)
            ->get(); 
        $tmp = $query->result();
        foreach ($tmp as $r){
            $data[$r->Name] = $r;
        }
        return $data;
    }
}
?>
