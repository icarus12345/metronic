<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class account extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('front/account_model');
        $this->assigns = new stdClass();
    }
    function sync(){
    	if($_SESSION['hauth']){
    		$param = array('user_email'=>$_SESSION['hauth']['email']);
    		$user = $this->account_model->searchby($param);
    		if($user){
                $user->user_display = $_SESSION['hauth']['firstName'] .' '.$_SESSION['hauth']['lastName'];
    			$user->user_photo = $_SESSION['hauth']['photoURL'];
    			$_SESSION['account'] = $user;
    		}else{
    			$param = array(
    				'user_email' => $_SESSION['hauth']['email'],
    				'user_status' => 'true'
    				);
    			$rok = $this->account_model->insertUser($param);
    			if($rok){
    				$param = array('user_email'=>$_SESSION['hauth']['email']);
    				$user = $this->account_model->searchby($param);
    				$user->user_display = $_SESSION['hauth']['firstName'] .' '.$_SESSION['hauth']['lastName'];
                    $user->user_photo = $_SESSION['hauth']['photoURL'];
    				$_SESSION['account'] = $user;
    			}
    		}
    		$this->assigns->url = '/spin';
        	$this->smarty->view( 'wait', $this->assigns );
    	}
    }
    function register(){
        
    }
    function signin(){

    }
    function signout(){
        unset($_SESSION['account']);
        unset($_SESSION['hauth']);
        $this->assigns->url = '/spin';
        $this->smarty->view( 'wait', $this->assigns );
    }
}