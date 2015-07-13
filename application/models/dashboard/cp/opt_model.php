<?php

class opt_model extends Core_Model {

    function __construct() {
        parent::__construct('opt', 'opt_', 'id');
    }

    function getColors($token = '') {
        $query = $this->db
                //->distinct('opt_color')
                ->select("opt_color, sum(opt_token ='$token') as active", false)
                ->from($this->table)
                ->where('opt_color <>', '')
                ->group_by('opt_color')
                ->order_by('active', 'DESC')
                ->order_by('opt_id', 'ASC')
                ->get();
        $this->sqlLog('getColors');
        return $query->result();
    }

    function getSizes($token = '') {
        $query = $this->db
                //->distinct()
                ->select("opt_size, sum(opt_token ='$token') as active", false)
                ->from($this->table)
                ->group_by('opt_size')
                ->where('opt_size <>', '')
                ->order_by('active', 'DESC')
                ->order_by('opt_id', 'ASC')
                ->get();
        $this->sqlLog('getSizes');
        return $query->result();
    }

    function getPrices($token = '') {
        $query = $this->db
                //->distinct()
                ->select("opt_price")
                ->from($this->table)
                ->where('opt_token', $token)
                ->where('opt_price <>', '')
                ->group_by('opt_price')
                ->order_by('opt_id', 'ASC')
                ->get();
        $this->sqlLog('getPrices');
        return $query->result();
    }

}

?>
