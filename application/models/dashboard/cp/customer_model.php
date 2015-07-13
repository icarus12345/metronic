<?php

class customer_model extends Core_Model {

    function __construct(){
        parent::__construct('customer','','Id');
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
        return $tmp;
    }
}
?>
