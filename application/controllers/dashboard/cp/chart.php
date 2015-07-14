<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class chart extends CP_Controller {
	function __construct() {
        parent::__construct('_chart', 'chart_', 'id');
        $this->load->model('dashboard/cp/chart_model');
        $this->assigns->cname = 'Chart';
    }
    
    function index(){

    }
    function week($table='',$row='',$date='',$type=null){
        // $row = 1;
        // $table = '_product';
        // $date = '2015-07-10';
        if($date=='') $date = date('Y-m-d');
        $dayofweek = date('w', strtotime($date));
        $prevDate = date('Y-m-d', strtotime('-7 day', strtotime($date)));
        $nextDate = date('Y-m-d', strtotime('7 day', strtotime($date)));
        $start = date('Y-m-d', strtotime((-$dayofweek).' day', strtotime($date)));
        $end = date('Y-m-d', strtotime((6 - $dayofweek).' day', strtotime($date)));
        // $aType = $this->chart_model->getDayTypeOfRow($table,$row,$start,$end,$type);
        for($i=0;$i<7;$i++){
            $d = date('Y-m-d', strtotime(($i-$dayofweek).' day', strtotime($date)));
            $chartData[$i] = array(
                //'Day'=> $d,
                'Day'=> date('D', strtotime($d))
            );
            // foreach ($aType as $tmp) {
            //     $chartData[$i][$tmp->chart_type] = 0;
            // }
        }
        $data = $this->chart_model->getDayDataOfRow($table,$row,$start,$end,$type);
        $min = 0; $max = 0;
        foreach ($data as $oRow) {
            for($i=0;$i<7;$i++){
                if($oRow->Day==$chartData[$i]['Day']){
                //if($oRow->chart_insert==$chartData[$i]['Day']){
                    $chartData[$i][$oRow->chart_type] = (int)$oRow->Total;
                    $max = max($max,(int)$oRow->Total);
                }
            }
        }
        $places = -strlen($max) + 1;
        $mult = pow(10, abs($places)); 
        $max = $places < 0 ? ceil($max / $mult) * $mult : ceil($max * $mult) / $mult;
        
        $this->assigns->chartData = $chartData;
        $this->assigns->max = $max;
        $this->assigns->table = $table;
        $this->assigns->row = $row;
        $this->assigns->type = $type;
        $this->assigns->nextDate = $nextDate;
        $this->assigns->prevDate = $prevDate;
        $this->assigns->chart_title = 'Week chart';
        $this->assigns->chart_desc = "From $start to $end";
        $this->smarty->view( 'dashboard/chart/weekly', $this->assigns );
    }
    function app(){
        $this->smarty->view( 'dashboard/chart/app', $this->assigns );
    }
}
