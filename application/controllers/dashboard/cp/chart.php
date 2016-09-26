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
        $aType = $this->chart_model->getDayTypeOfRow($table,$row,$start,$end);
        for($i=0;$i<7;$i++){
            $d = date('m/d/Y', strtotime(($i-$dayofweek).' day', strtotime($date)));
            $w = date('D', strtotime($d));
            $day = date('d', strtotime(($i-$dayofweek).' day', strtotime($date)));
            $chartData[$i] = array(
                'Date'=> $d,
                'value'=> $day,
                //'Day'=> date('D', strtotime($d))
            );
            // foreach ($aType as $tmp) {
            //     $chartData[$i][$tmp->chart_type] = 0;
            // }
        }
        $data = $this->chart_model->getDayDataOfRow($table,$row,$start,$end,$type);
        $min = 0; $max = 0;
        foreach ($data as $oRow) {
            for($i=0;$i<7;$i++){
                if($oRow->Day==$chartData[$i]['value']){
                //if($oRow->chart_insert==$chartData[$i]['Day']){
                    $chartData[$i][$oRow->chart_type] = (int)$oRow->Total;
                    $max = max($max,(int)$oRow->Total);
                    if($min==0) $min = (int)$oRow->Total;
                    $min = min($min,(int)$oRow->Total);
                }
            }
        }
        $places = -strlen($max) + 1;
        $mult = pow(10, abs($places)); 
        $max = $places < 0 ? ceil($max / $mult) * $mult : ceil($max * $mult) / $mult;
        $places = -strlen($max) + 1;
        $mult = pow(10, abs($places)); 
        $min = $places < 0 ? floor($min / $mult) * $mult : floor($min * $mult) / $mult;
        $max = max($max,10);
        if($min<10) $min=0;
        $this->assigns->chartData = $chartData;
        $this->assigns->max = $max;
        $this->assigns->min = $min;
        $this->assigns->table = $table;
        $this->assigns->row = $row;
        $this->assigns->type = $type;
        $this->assigns->aType = $aType;
        $this->assigns->nextDate = $nextDate;
        $this->assigns->date = $date;
        $this->assigns->prevDate = $prevDate;
        $this->assigns->time_type = 'Week';
        $this->assigns->chart_title = 'Week chart';
        $this->assigns->chart_desc = "From $start to $end";
        $this->smarty->view( 'dashboard/chart/weekly', $this->assigns );
    }
    function month($table='',$row='',$date='',$type=null){
        if($date=='') $date = date('Y-m-d');
        $dayInMonth = date('t', strtotime($date));
        $prevDate = date('Y-m-d', strtotime((-$dayInMonth).' day', strtotime($date)));
        $nextDate = date('Y-m-d', strtotime(($dayInMonth).' day', strtotime($date)));
        $start = date('Y-m-01', strtotime($date));
        $end = date('Y-m-t', strtotime($date));
        $aType = $this->chart_model->getDayTypeOfRow($table,$row,$start,$end);
        for($i=0;$i<$dayInMonth;$i++){
            $chartData[$i] = array(
                'Date'=> date('m/d/Y', strtotime(($i).' day', strtotime($start))),
                'value'=> str_pad($i+1,2,'0',STR_PAD_LEFT)
            );
        }
        $data = $this->chart_model->getDayDataOfRow($table,$row,$start,$end,$type);

        $min = 0; $max = 0;
        foreach ($data as $oRow) {

            for($i=0;$i<$dayInMonth;$i++){
                if($oRow->Day==$chartData[$i]['value']){
                //if($oRow->chart_insert==$chartData[$i]['Day']){
                    $chartData[$i][$oRow->chart_type] = (int)$oRow->Total;
                    $max = max($max,(int)$oRow->Total);
                    if($min==0) $min = (int)$oRow->Total;
                    $min = min($min,(int)$oRow->Total);
                }
            }
        }
        $places = -strlen($max) + 1;
        $mult = pow(10, abs($places)); 
        $max = $places < 0 ? ceil($max / $mult) * $mult : ceil($max * $mult) / $mult;
        $places = -strlen($max) + 1;
        $mult = pow(10, abs($places)); 
        $min = $places < 0 ? floor($min / $mult) * $mult : floor($min * $mult) / $mult;
        $max = max($max,10);
        if($min<10) $min=0;
        $this->assigns->chartData = $chartData;
        $this->assigns->max = $max;
        $this->assigns->min = $min;
        $this->assigns->table = $table;
        $this->assigns->row = $row;
        $this->assigns->type = $type;
        $this->assigns->aType = $aType;
        $this->assigns->nextDate = $nextDate;
        $this->assigns->date = $date;
        $this->assigns->prevDate = $prevDate;
        $this->assigns->time_type = 'Month';
        $this->assigns->chart_title = 'Monthly chart ( '.date('Y-M', strtotime($date)) . ')';
        $this->assigns->chart_desc = "From $start to $end";
        $this->smarty->view( 'dashboard/chart/month', $this->assigns );
    }
    function year($table='',$row='',$date='',$type=null){
        // $row = 1;
        // $table = '_product';
        // $date = '2015-07-10';
        if($date=='') $date = date('Y-m-d');
        
        $dayofweek = date('w', strtotime($date));
        
        $nMonth = 12;
        $prevDate = date('Y-m-d', strtotime('-365 day', strtotime($date)));
        $nextDate = date('Y-m-d', strtotime('365 day', strtotime($date)));
        $start = date('Y-01-01', strtotime($date));
        $end = date('Y-12-t', strtotime($date));
        $aType = $this->chart_model->getDayTypeOfRow($table,$row,$start,$end);
        for($i=0;$i<$nMonth;$i++){
            $chartData[$i] = array(
                'Month'=> date('M', strtotime(($i).' month', strtotime($start)))
            );
            // foreach ($aType as $tmp) {
            //     $chartData[$i][$tmp->chart_type] = 0;
            // }
        }
        $data = $this->chart_model->getMonthDataOfRow($table,$row,$start,$end,$type);

        $min = 0; $max = 0;
        foreach ($data as $oRow) {
            for($i=0;$i<$nMonth;$i++){
                if($oRow->Month==$chartData[$i]['Month']){
                    $chartData[$i][$oRow->chart_type] = (int)$oRow->Total;
                    $max = max($max,(int)$oRow->Total);
                    if($min==0) $min = (int)$oRow->Total;
                    $min = min($min,(int)$oRow->Total);
                }
            }
        }
        $places = -strlen($max) + 1;
        $mult = pow(10, abs($places)); 
        $max = $places < 0 ? ceil($max / $mult) * $mult : ceil($max * $mult) / $mult;
        $places = -strlen($max) + 1;
        $mult = pow(10, abs($places)); 
        $min = $places < 0 ? floor($min / $mult) * $mult : floor($min * $mult) / $mult;
        $max = max($max,10);
        if($min<10) $min=0;
        $this->assigns->chartData = $chartData;
        $this->assigns->max = $max;
        $this->assigns->min = $min;
        $this->assigns->table = $table;
        $this->assigns->row = $row;
        $this->assigns->type = $type;
        $this->assigns->aType = $aType;
        $this->assigns->nextDate = $nextDate;
        $this->assigns->date = $date;
        $this->assigns->prevDate = $prevDate;
        $this->assigns->time_type = 'Year';
        $this->assigns->chart_title = 'Year chart ( '.date('Y', strtotime($date)) . ')';
        $this->assigns->chart_desc = "From $start to $end";
        $this->smarty->view( 'dashboard/chart/year', $this->assigns );
    }
    function app(){
        $this->smarty->view( 'dashboard/chart/app', $this->assigns );
    }
}
