<?php

class spin_model extends CI_Model {

    function __construct(){
        parent::__construct();
        
    }
    function onGet($id){
        $query = $this->db
            ->from('_album')
            ->join('_category', 'album_category = cat_id', 'left')
            ->where('album_status', 'true')
            ->where('album_id', $id)
            ->get();
        return $query->row();
    }
    function getItems(){
        $query = $this->db
            ->from('_spin')
            ->where('spin_status', 'true')
            ->where('spin_rate >', 0)
            ->where('spin_rate > spin_active_rate')
            ->where('spin_number >', 0)
            ->where('spin_value >=', 0)
            ->where('spin_number > spin_active')
            ->order_by('spin_rate','ASC')
            ->get();
        return $query->result();
    }
    function resetRate(){
        $this->db
            ->set('spin_active_rate', 0)
            ->set('spin_active_rate', 0)
            ->where('spin_rate >', 0)
            ->where('spin_rate = spin_active_rate')
            ->where('spin_number >', 0)
            ->where('spin_number > spin_active')
            ->update('_spin');
        $count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count > 0)
            return true;
        return false;
    }
    function updateRate($id){
        $this->db
            ->set('spin_active_rate', 'spin_active_rate + 0.1',false)
            ->set('spin_active', 'spin_active + 1',false)
            ->where('spin_id', $id)
            ->where('spin_rate >', 0)
            ->where('spin_rate > spin_active_rate')
            ->where('spin_number >', 0)
            ->where('spin_number > spin_active')
            ->update('_spin');
        $count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count == 1)
            return true;
        return false;
    }
    function updateUser($id){
        $this->db
            ->set('user_spin_num', 'user_spin_num - 1',false)
            ->set('user_update', 'NOW()',false)
            ->where('user_id', $id)
            ->where('user_spin_num >', 0)
            ->update('_user');
        $count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count == 1)
            return true;
        return false;
    }
    function insertWheel($params) {
        @$this->db
            ->set('wheel_insert', 'NOW()',false)
            ->insert('_wheel', $params);
        @$count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count == 1)
            return true;
        return false;
    }
    function getUser($id){
        $query = $this->db
            ->from('_user')
            ->where('user_status', 'true')
            ->where('user_id', $id)
            ->get();
        return $query->row();
    }
    function getHistory($user_id){
        $query = $this->db
            ->from('_wheel')
            ->join('_spin','wheel_spin_id = spin_id')
            ->where('wheel_user_id', $user_id)
            ->order_by('wheel_insert','DESC')
            ->limit(3)
            ->get();
        return $query->result();
    }
}
?>
