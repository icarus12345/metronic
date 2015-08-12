<?php

class alias_model extends Core_Model {

    function __construct(){
        parent::__construct('lang_alias', 'als_', 'id');
    }
    function getAliasByAlias($alias='',$type='',$lang=''){
    	$cond = array(
            'als_alias' 	=> $alias,
            'als_lang' 		=> $lang,
            'als_type' 		=> $type
        );
        $query=$this->db
            ->from('lang_alias')
            ->where($cond)
            ->get(); 
        return $query->row();
    }
}
?>
