<?php

class product_model extends Core_Model {

    function __construct(){
        parent::__construct('_product','product_','id');
    }
    function onGetByCode($code){
        if($this->status){
            $this->db->where("{$this->prefix}status",$this->status);
        }
        $query = $this->db
                ->where("{$this->prefix}code", $code)
                ->get($this->table);
        return $query->row();
    }
    function onGetByThumb($thumb){
        if($this->status){
            $this->db->where("{$this->prefix}status",$this->status);
        }
        $query = $this->db
                ->where("{$this->prefix}thumb", $thumb)
                ->get($this->table);
        return $query->row();
    }
}
?>
