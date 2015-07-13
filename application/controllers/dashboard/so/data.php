<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class data extends CP_Controller {
	function __construct() {
        parent::__construct('_data', 'data_', 'id');
        $this->load->model('dashboard/cp/cate_model');
        $this->load->model('dashboard/cp/data_model');
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
        $this->db->order_by('cat_position','ASC');
        $cates = $this->cate_model->onGetByType($type);
        if($cates){
            $cates=$this->cate_model->buildTreeArray($cates);
            foreach ($cates as $key=>$c) {
                $cates[$key]->data = $this->data_model->getByCategory($c->cat_id);
            }
            $this->assigns->cates=$cates;
        }
        $this->smarty->view( 'dashboard/so/setting/viewport', $this->assigns );
    }
    function editpanel($type=''){
        $type=$this->input->post('type');
        $layout=$this->input->post('layout');
        $this->assigns->type=$type;
        $unit=$this->input->post('unit');
        $this->setAction($unit);
        $cates = $this->cate_model->onGetByType($type);
        if($cates){
            $cates=$this->cate_model->buildTreeArray($cates);
            $this->assigns->cates=$cates;
        }
        $Id=$this->input->post('Id');
        if($Id){
            $this->assigns->item = $this->Core_Model->onGet($Id);
            $layout = $this->assigns->item->data_datatype;
        }
        switch ($layout){
            case 's':
            case 'string':
                $htmlreponse = $this->smarty->view( 'dashboard/cp/data/editPanelString', $this->assigns, true );
                break;
            case 't':
            case 'text':
                $htmlreponse = $this->smarty->view( 'dashboard/cp/data/editPanelText', $this->assigns, true );
                break;
            case 'i':
            case 'image':
                $htmlreponse = $this->smarty->view( 'dashboard/cp/data/editPanelImage', $this->assigns, true );
                break;
            case 'h':
            case 'html':
                $htmlreponse = $this->smarty->view( 'dashboard/cp/data/editPanelHtml', $this->assigns, true );
                break;
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/cp/data/editPanel', $this->assigns, true );
        }
        
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
        
    }
    function databinding($type=''){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}title,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}desc,
                    {$this->table}.{$this->prefix}datatype,
                    {$this->table}.{$this->prefix}category,
                    cat_title,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status,
                    {$this->table}.{$this->prefix}lock
                ",
            "from"      =>"
                FROM `{$this->table}` LEFT JOIN _category ON (cat_id = {$this->prefix}category)
            ",
            "where"     =>"WHERE `{$this->prefix}type` = '$type'",
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
        $this->smarty->view( 'dashboard/so/setting/'.$src, $this->assigns );

    }
    function beforecommit(){
        
    }
    
}
