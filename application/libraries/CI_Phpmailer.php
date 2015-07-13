<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once('phpmailer/class.phpmailer.php');
require_once('phpmailer/class.smtp.php');

class CI_Phpmailer extends PHPMailer {
    var $parm;
    function __construct($exceptions = false) {
        parent::__construct($exceptions);
    }
    
    function init_mail(){
        // set CharSet is utf-8
        $this->CharSet = 'utf-8';
        // telling the class to use SMTP
        $this->IsSMTP();
        // Sets SMTP class debugging on or off
        $this->SMTPDebug = 1;
        // 1 = errors and messages
        // 2 = messages only
        // enable SMTP authentication
        $this->SMTPAuth = FALSE;
        // sets the prefix to the servier
        $this->SMTPSecure = 'tls';//ssl
        $this->Mailer  = 'smtp';
        // sets GMAIL as the SMTP server
        $this->Host = 'smtp.gmail.com';
        // set the SMTP port for the GMAIL server
        $this->Port = 587;//465;//587
        // GMAIL username
        $this->Username = "khuongxuantruong@gmail.com";
        // GMAIL password
        $this->Password = 'shaphia1900';
        $this->SetFrom($this->Username, $this->Username);
    }

    function send_mail($to,$subject, $message, $priority = 3) {
		//mail('khuongxuantruong@gmail.com', $message, $message);
        $this->init_mail();
        $this->Priority = $priority;
        $this->Subject = $subject;
        $this->MsgHTML($message);
        //$this->AddAddress($recipient);
        $this->AddAddress($to);
        return $this->Send();
		
    }
}