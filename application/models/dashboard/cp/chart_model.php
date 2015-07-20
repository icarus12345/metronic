<?php

class chart_model extends Core_Model {

    function __construct(){
        parent::__construct('_chart','chart_','id');
    }
    function getDayDataOfRow($table,$row,$start,$end,$type=null){
        if($row!=0)
    	   $this->db->where("chart_row", $row);
    	return $this->getDayData($table,$start,$end,$type);
    }
    function getDayData($table,$start,$end,$type=null){
    	if($type!=null){
    		$this->db->where("chart_type", $type);
    	}
    	$query = $this->db
			->select("DATE_FORMAT(chart_insert,'%d') as 'Day',sum(chart_count) as 'Total',chart_insert,chart_type",false)
            ->where("chart_table", $table)
            ->where("chart_insert >=", $start)
			->where("chart_insert <=", $end)
			->group_by('chart_insert')
			->group_by('chart_type')
			->order_by('chart_insert','ASC')
            ->get($this->table);
        return $query->result();
    }
    function getMonthDataOfRow($table,$row,$start,$end,$type=null){
        if($row!=0)
           $this->db->where("chart_row", $row);
        return $this->getMonthData($table,$start,$end,$type);
    }
    function getMonthData($table,$start,$end,$type=null){
        if($type!=null){
            $this->db->where("chart_type", $type);
        }
        $query = $this->db
            ->select("DATE_FORMAT(chart_insert,'%b') as 'Month',sum(chart_count) as 'Total',chart_insert,chart_type",false)
            ->where("chart_table", $table)
            ->where("chart_insert >=", $start)
            ->where("chart_insert <=", $end)
            ->group_by('Month')
            ->group_by('chart_type')
            ->order_by('chart_insert','ASC')
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

    function add($table,$row){
        $query = $this->db
            ->where("chart_table", $table)
            ->where("chart_insert", date('Y-m-d'))
            ->where("chart_row", $row)
            ->group_by('chart_type')
            ->get($this->table);
        $oRow = $query->row();
        if($oRow){
            $this->onUpdate($oRow->chart_id,array(
                'chart_count'=>(int)$oRow->chart_count+1
            ));
        }else{
            $this->onInsert(array(
                'chart_table'=>$table,
                'chart_row'=>$row,
                'chart_type'=>'View',
                'chart_count'=>1,
                'chart_insert'=>date('Y-m-d')
            ));
        }
    }
}
?>
