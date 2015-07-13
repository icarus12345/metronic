<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class category extends CP_Controller {
	function __construct() {
        parent::__construct('_category', 'cat_', 'id');
        $this->assigns->cname = 'Category';
    }
    function index(){

    }
    private function setAction($unit){
        $this->assigns->unit = $unit;
        $arr = str_split($unit);
        $action['add'] = (bool)$arr[0];
        $action['edit'] = (bool)$arr[1];
        $action['delete'] = (bool)$arr[2];
        $action['ispopup'] = (int)$arr[3];
        $action['layout'] = $arr[4];
        $action['col'] = max((int)$arr[5],3);
        $this->assigns->action = $action;
    }
    function viewport($unit='00000',$type=''){
    	$this->setAction($unit);
        $this->assigns->type = $type;
        $this->smarty->view( 'dashboard/cp/category/viewport', $this->assigns );
    }
    function editpanel($type=''){
        $type=$this->input->post('type');
        $layout=$this->input->post('layout');
        $unit=$this->input->post('unit');
        $this->setAction($unit);
        $data = $this->cate_model->binding($type);
        if(isset($data['aaData'])){
            $data['aaData']=$this->cate_model->buildTreeArray($data['aaData']);
            $this->assigns->cates=$data['aaData'];
        }
        $this->assigns->type=$type;
        $Id=$this->input->post('Id');
        if($Id){
            $this->assigns->item = $this->cate_model->onGet($Id);
        }
        switch ($layout){
            case '1':
                $htmlreponse = $this->smarty->view( 'dashboard/cp/category/editPanelList', $this->assigns, true );
                break;
            case 'm':
            case '3':
                $htmlreponse = $this->smarty->view( 'dashboard/cp/category/editPanelMenu', $this->assigns, true );
                break;
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/cp/category/editPanel', $this->assigns, true );
        }
        
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
        
    }
    function updateBatch($aaData){
        if(!empty($aaData)) foreach ($aaData as $c){
            if($c->value!=$c->cat_value){
                $this->cate_model->onUpdate($c->cat_id,array('cat_value'=>$c->value));
            }
        }
    }
    function databinding($type=''){
        $this->cate_model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}title,
                    {$this->table}.{$this->prefix}parent,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status,
                    {$this->table}.{$this->prefix}lock
                ",
            "from"      =>" FROM `{$this->table}` ",
            "where"     =>"WHERE `{$this->prefix}type` = '$type'",
            "order_by"  =>"ORDER BY `{$this->prefix}parent` ASC,`{$this->prefix}position` ASC",
            "columnmaps"=>array(
                
            ),
            "filterfields"=>array(

            )
        );
        $output = $this->cate_model->jqxBinding();
        $output['rows']=$this->cate_model->buildTreeArray($output['rows']);
        $this->updateBatch($output['rows']);
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function loadscript($src='',$unit='00000'){
    	$this->setAction($unit);
        $this->output->set_header('Content-type: application/x-javascript');
        $this->smarty->view( 'dashboard/cp/category/'.$src, $this->assigns );

    }
}