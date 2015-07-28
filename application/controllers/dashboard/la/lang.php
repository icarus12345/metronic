<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class lang extends CP_Controller {
	function __construct() {
        parent::__construct('languages', 'lang_', 'id');
        
    }
    function index(){

    }
    private function setAction($unit){
        $this->assigns->unit = $unit;
        $arr = str_split($unit);
        $action['add'] = (bool)$arr[0];
        $action['edit'] = (bool)$arr[1];
        $action['delete'] = (bool)$arr[2];
        $action['ispopup'] = (bool)$arr[3];
        $action['layout'] = $arr[4];
        $action['col'] = max((int)$arr[5],3);
        $this->assigns->action = $action;
    }
    function viewport($unit='00000',$type=''){
        $this->assigns->cname = 'Language';
    	$this->setAction($unit);
        $this->assigns->type = $type;
        $this->smarty->view( 'dashboard/la/lang/viewport', $this->assigns );
    }
    
    function databinding($type=''){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}name,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status
                ",
            "from"      =>"FROM `{$this->table}` ",
            "where"     =>"WHERE true",
            "order_by"  =>" ",
            "columnmaps"=>array(
                
            ),
            "filterfields"=>array(

            )
        );
        $output = $this->Core_Model->jqxBinding();
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function loadscript($src='',$unit='00000'){
    	$this->setAction($unit);
        $this->output->set_header('Content-type: application/x-javascript');
        $this->smarty->view( 'dashboard/la/lang/'.$src, $this->assigns );

    }
}
