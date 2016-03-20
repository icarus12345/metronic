<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class data extends CP_Controller {
	function __construct() {
        parent::__construct('lang_data', 'data_', 'id');
        $this->assigns->cname = 'Category';
        $this->load->model('dashboard/la/lang_model');
        $this->assigns->aLang = $this->lang_model->getLanguage();
        
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
    function beforecommit(){
        if(is_array($_POST['Params']['data_data'])){
            $_POST['Params']['data_data'] = json_encode($_POST['Params']['data_data']);
        }
    }
    function productopt(){
        $layout=$this->input->post('layout');
        $id=$this->input->post('id');
        $token=$this->input->post('token');
        $unit=$this->input->post('unit');
        $this->setAction($unit);
        $type=$this->input->post('type');
        $this->assigns->type=$type;
        $this->assigns->token=$token;
        if($id){
            $this->assigns->item = $item = $this->Core_Model->onGet($id);
            $item->data_data = json_decode($item->data_data, true);
            $this->assigns->item = $item;
        }
        switch ($layout){
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/la/data/optPanel', $this->assigns, true );
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
    function databinding($token='',$lang='en'){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}data,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status
                ",
            "from"      =>"FROM `{$this->table}` ",
            "where" =>"WHERE data_token = '{$token}'",
            "order_by"  =>"ORDER BY `{$this->prefix}insert` DESC",
            "columnmaps"=>array(
                
            ),
            "filterfields"=>array(

            )
        );
        $output = $this->Core_Model->jqxBinding();
        foreach ($output['rows'] as $key => $value) {
            $data_data = json_decode($value->data_data, true);
            $output['rows'][$key]->data_title = $data_data['title'][$lang];
            $output['rows'][$key]->data_price = $data_data['price'][$lang];
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
}