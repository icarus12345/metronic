<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class google extends CI_Controller {
    function __construct() {
        parent::__construct();
        
    }
    function index(){
    	$this->smarty->view( 'oauth/google', $this->assigns );
    }
    function callback(){

    }
}