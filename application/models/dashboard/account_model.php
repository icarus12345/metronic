<?php

class account_model extends Core_Model {

    function __construct(){
        parent::__construct('auth_users', 'ause_', 'id');
    }
    function binding(){
        
        $position = (int)$_SESSION['auth']['user']->ause_position;
        $where = "WHERE `ause_position` >= $position";
        $this->datatables_config = array(
            "table" => "`auth_users`",
            "select" => "SELECT SQL_CALC_FOUND_ROWS 
                `ause_id`,`ause_key`,`ause_name`,`ause_username`,`ause_email`,`ause_authority`,
                `ause_insert`,`ause_update`,`ause_status`,`ause_picture`,`ause_position`
            ",
            "from" => "FROM `auth_users`",
            "where" => "$where",
            "order_by" => "",
            "filterfields"=>array(),
            "columnmaps" => array()
        );
        return $this->jqxBinding();
    }
}
?>
