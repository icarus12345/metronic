<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class data extends CP_Controller {
	function __construct() {
        parent::__construct('lang_data', 'data_', 'id');
        $this->assigns->cname = 'Category';
        $this->load->model('dashboard/la/lang_model');
        $this->load->model('dashboard/la/category_model');
        $this->assigns->aLang = $this->lang_model->getLanguage();
        $this->assigns->template=array(
            'title'=>'Setting',
            'fulltitle'=>'Setting List',
            'css'=>array(
                '/libraries/jqwidgets/styles/jqx.base.css',
                '/libraries/jqwidgets/styles/jqx.metro.css',
                ),
            'js'=>array(
                '/libraries/ckeditor/ckeditor.js',
                '/libraries/jqwidgets/jqx-all.js',
                //'/dashboard/la/news/loadscript/app/[{$unit}]',
                '/dashboard/cp/chart/app/',
                // '/dashboard/la/data/loadscript/app/11111',
                ),
            // 'contextmenu'=>''
        );
    }
    function index(){

    }
    function viewport($unit='00000',$type=''){
        $this->setAction($unit);
        $this->assigns->type = $type;
        $this->assigns->template['js'][] = "/dashboard/la/data/loadscript/app/$unit?type=$type";
        $this->smarty->view( 'dashboard/base/viewport', $this->assigns );
    }
    private function setAction($unit){
        $this->assigns->unit = $unit;
        $arr = str_split($unit);
        $action['add'] = (bool)$arr[0];
        $action['edit'] = (bool)$arr[1];
        $action['delete'] = (bool)$arr[2];
        $action['ispopup'] = (int)$arr[3];
        $ispopup = $this->input->post('ispopup');
        if($ispopup === true) $action['ispopup'] = 1;
        if($ispopup === false) $action['ispopup'] = 0;
        $action['layout'] = $arr[4];
        $action['col'] = max((int)$arr[5],3);
        $this->assigns->action = $action;
    }
    function beforecommit(){
        if(is_array($_POST['Params']['data_data'])){
            $id=$this->input->post('Id');
            $data_data = $_POST['Params']['data_data'];
            if($id){
                $item = $this->Core_Model->onGet($id);
                $item->data_data = json_decode($item->data_data, true);
                $data_data = array_merge($item->data_data, $data_data);

            }
            $_POST['Params']['data_data'] = json_encode($data_data);
        }
    }
    function editpanel(){
        $layout = $this->input->post('layout');
        $id=$this->input->post('Id');
        $token=$this->input->post('token');
        $unit=$this->input->post('unit');
        $this->setAction($unit);
        $type=$this->input->post('type');
        $this->assigns->type=$type;
        $this->assigns->token=$token;
        $aCategory = $this->category_model->getCategoryByType($type);
        if($aCategory){
            $aCategory = $this->cate_model->buildTreeArray($aCategory);
            $this->assigns->aCategory=$aCategory;
        }
        if($id){
            $this->assigns->item = $item = $this->Core_Model->onGet($id);
            $item->data_data = json_decode($item->data_data, true);
            $this->assigns->item = $item;
            if(!empty($this->assigns->item->data_data['data_type']))
                $layout = $this->assigns->item->data_data['data_type'];
        }
        switch ($layout){
            case 1:
                $htmlreponse = $this->smarty->view( 'dashboard/la/data/optPanel', $this->assigns, true );
                break;
            case 2:
                $htmlreponse = $this->smarty->view( 'dashboard/la/data/editPanel', $this->assigns, true );
                break;
            case 'string':
            case 'text':
                $htmlreponse = $this->smarty->view( 'dashboard/la/data/editPanelText', $this->assigns, true );
                break;
            case 'image':
                $htmlreponse = $this->smarty->view( 'dashboard/la/data/editPanelImage', $this->assigns, true );
                break;
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/la/data/editPanel', $this->assigns, true );
        }
        
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function loadscript($src='',$unit='00000'){
    	$this->setAction($unit);
        $this->output->set_header('Content-type: application/x-javascript');
        $this->smarty->view( 'dashboard/la/data/'.$src, $this->assigns );
    }
    function databinding($type='',$lang='en'){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}data,
                    {$this->table}.{$this->prefix}category,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status
                ",
            "from"      =>"
                FROM `{$this->table}`
                ",
            "where" =>"WHERE data_type = '{$type}'",
            "order_by"  =>"ORDER BY `{$this->prefix}insert` DESC",
            "columnmaps"=>array(
                
            ),
            "filterfields"=>array(

            )
        );
        $output = $this->Core_Model->jqxBinding();
        foreach ($output['rows'] as $key => $value) {
            $output['rows'][$key]->data_data = json_decode($value->data_data, true);
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function databindingbytoken($token='',$lang='en'){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}data,
                    {$this->table}.{$this->prefix}category,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status
                ",
            "from"      =>"
                FROM `{$this->table}`
                ",
            "where" =>"WHERE data_token = '{$token}'",
            "order_by"  =>"ORDER BY `{$this->prefix}insert` DESC",
            "columnmaps"=>array(
                
            ),
            "filterfields"=>array(

            )
        );
        $output = $this->Core_Model->jqxBinding();
        foreach ($output['rows'] as $key => $value) {
            $output['rows'][$key]->data_data = json_decode($value->data_data, true);
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
}