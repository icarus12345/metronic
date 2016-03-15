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
    function loadscript($src='',$unit='00000'){
    	$this->setAction($unit);
        $this->output->set_header('Content-type: application/x-javascript');
        $this->smarty->view( 'dashboard/la/jsdata/'.$src, $this->assigns );

    }
}