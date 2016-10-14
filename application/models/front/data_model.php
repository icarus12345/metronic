<?php

class data_model extends Core_Model {

    function __construct(){
        parent::__construct('_data','data_','id');
        $this->status='true';
    }
    function loadData($type=''){
        $data = $this->onGetByType($type);
        foreach ($data as $foo) {
            if(LANG == 'en') $foo->data_content = $foo->data_content_en;
            $arr[$foo->data_alias] = $arr[$foo->data_id] = $foo->data_content;
        }
        return $arr;
    }
}
?>
