<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class kcfinder extends Core_Controller {
	function __construct() {
        parent::__construct();
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
        $this->smarty->view( 'dashboard/kcfinder/viewport', $this->assigns );
    }
    
    
}
