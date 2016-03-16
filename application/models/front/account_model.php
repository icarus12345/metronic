<?php

class account_model extends Core_Model {

    function __construct(){
        parent::__construct('_user','user_','id');
        $this->status='true';
    }
    function searchby($params){
        $query = $this->db
            ->from('_user')
            ->where('user_status', 'true')
            ->where($params)
            ->get();
        return $query->row();
    }
    function insertUser($params) {
        @$this->db->insert('_user', $params);
        @$count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count == 1)
            return true;
        return false;
    }
}