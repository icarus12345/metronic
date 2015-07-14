<?php

class chart_model extends Core_Model {

    function __construct(){
        parent::__construct('_chart','chart_','id');
    }
    function getDayDataOfRow($table,$row,$start,$end,$type=null){
    	$this->db->where("chart_row", $row);
    	return $this->getDayData($table,$start,$end,$type);
    }
    function getDayData($table,$start,$end,$type=null){
    	if($type!=null){
    		$this->db->where("chart_type", $type);
    	}
    	$query = $this->db
			->select("DATE_FORMAT(chart_insert,'%a') as 'Day',sum(chart_count) as 'Total',chart_insert,chart_type",false)
            ->where("chart_table", $table)
            ->where("chart_insert >=", $start)
			->where("chart_insert <=", $end)
			->group_by('chart_insert')
			->group_by('chart_type')
			->order_by('Day','ASC')
            ->get($this->table);
        return $query->result();
    }
    function getDayTypeOfRow($table,$row,$start,$end,$type=null){
    	if($type!=null){
    		$this->db->where("chart_type", $type);
    	}
    	$query = $this->db
			->select("chart_type")
            ->where("chart_table", $table)
            ->where("chart_insert >=", $start)
			->where("chart_insert <=", $end)
			->where("chart_row", $row)
			->group_by('chart_type')
			->get($this->table);
        return $query->result();
    }
}
?>
