<?php

class category_model extends Core_Model {

    function __construct(){
        parent::__construct('_category','cat_','id');
        $this->status='true';
    }
}
