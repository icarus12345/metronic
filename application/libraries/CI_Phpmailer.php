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
        $this->SMTPAuth = TRUE;
        // sets the prefix to the servier
        $this->SMTPSecure = 'ssl';
        //$this->Mailer  = 'smtp';
        // sets GMAIL as the SMTP server
        $this->Host = 'smtp.gmail.com';
        // set the SMTP port for the GMAIL server
        $this->Port = 465;
        // GMAIL username
        $this->Username = "creativestudionoreply@gmail.com";
        // GMAIL password
        $this->Password = base64_decode('c2hhcGhpYTE5MDA=');
        $this->SetFrom("creativestudionoreply@gmail.com", 'Creative Studio');
        $this->AddReplyTo("creativestudionoreply@gmail.com", 'Creative Studio');
    }

    function send_mail($to,$subject, $message, $priority = 3) {
		//mail('khuongxuantruong@gmail.com', $message, $message);
        $this->init_mail();
        // $email_to = "valikie.nhung@gmail.com";
        $this->Priority = $priority;
        $this->Subject = $subject;
        $this->MsgHTML($message);
        //$this->AddAddress($recipient);
        // $this->AddAddress($email_to);
        $this->AddAddress($to);
        return $this->Send();
		
    }
}