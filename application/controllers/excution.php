<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class excution extends CI_Controller {
    function __construct() {
        parent::__construct();
    }
    function nothing(){
    	
    }
    function sendmail(){
    	$this->CI_Phpmailer = new CI_Phpmailer();
    	$to = 'khuongxuantruong@gmail.com';
    	$subject = 'Test send mail';
    	$message = 'TEST TEST TEST';
    	$this->CI_Phpmailer->send($to,$subject,$message);
    	echo '^^';
    }
}