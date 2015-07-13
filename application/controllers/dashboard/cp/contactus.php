<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class contactus extends CP_Controller {
	function __construct() {
        parent::__construct('_contactus', 'contact_', 'id');
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
    function index(){

    }
    function viewport($unit='00000',$type=''){
        $this->setAction($unit);
        $this->assigns->type = $type;
        $this->smarty->view( 'dashboard/cp/contactus/viewport', $this->assigns );
    }
    function editpanel($type=''){
        $type=$this->input->post('type');
        $layout=$this->input->post('layout');
        $this->assigns->type=$type;
        $unit=$this->input->post('unit');
        $this->setAction($unit);
        $Id=$this->input->post('Id');
        if($Id){
            $this->assigns->item = $this->Core_Model->onGet($Id);
        }
        switch ($layout){
            
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/cp/contactus/editPanel', $this->assigns, true );
        }
        
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
        
    }
    function databinding(){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}name,
                    {$this->table}.{$this->prefix}phone,
                    {$this->table}.{$this->prefix}email,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}type
                ",
            // "from"      =>"FROM `{$this->table}` LEFT JOIN _category ON (cat_id = {$this->prefix}category)",//
            "from"      =>"FROM `{$this->table}`",
            // "where"     =>"WHERE `{$this->prefix}type` = '$type'",
            "order_by"  =>"ORDER BY `{$this->prefix}insert` DESC",
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
        $this->smarty->view( 'dashboard/cp/contactus/'.$src, $this->assigns );

    }
    function beforecommit(){
        
    }
    
}
