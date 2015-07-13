<?php
class home extends CP_Controller {
    function __construct() {
        parent::__construct();
        
    }
    public function index(){
        $this->smarty->view( 'dashboard/help/manual', $this->assigns );
    }
}