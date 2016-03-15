<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('spin/spin_model');
    }
    function index(){
    	?>
    	<script src="/libraries/metronic/theme/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
    	<script src="https://raw.githubusercontent.com/wilq32/jqueryrotate/master/jQueryRotate.js"></script>
    	
    	<?php
    }
    function spin(){
    	$this->items = $this->spin_model->getItems();
    	$this->onReset();
    	$total;
    	$sum = 0;
    	foreach ($this->items as $tmp) {
    		$sum += ($tmp->spin_rate - $tmp->spin_active_rate)*10;
    		$total[] = $sum;
    	}
    	$random = mt_rand(1,$sum);
    	foreach ($total as  $key=>$val) {
    		if($random <= $val){
    			$item = $this->items[$key];
    			break;
    		}
    	}
    	if($item){
    		$isUpdate = $this->spin_model->updateRate($item->spin_id);
    	}
    	echo $random;
    	echo '<pre>';print_r($total);
    	echo '<pre>';print_r($item);
    	echo '<pre>';print_r($this->items);
    }
    function onReset(){
    	if(!$this->items){
    		$this->spin_model->resetRate();
    		$this->items = $this->spin_model->getItems();
    	}
    }
}