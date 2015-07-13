<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class excution extends Core_Controller {

    function __construct() {
        parent::__construct();
    }

    public function index() {
       
    }

    function updateinfo(){
        $this->load->model('dashboard/account_model');
        $output["result"] = -1;
        $output["message"]='Data invalid !';
        $params = $this->input->post("Params");
        $user = $_SESSION['auth']['user'];
        $Id = (int)$user->ause_id;
        if ($Id>0 && $params) {
            $user = $this->account_model->onGet($Id);
            if($user==null){
                $output["result"] = -904;
                $output["message"] = ("User not exist."); 
                echo (json_encode($output));
                die;
            }
            

            if(empty($params['ause_password'])){
                unset($params['ause_password']);
            }else{
                $ause_password_current = md5($user->ause_username.$params["ause_password_current"].$user->ause_secretkey);
                if($ause_password_current!=$user->ause_password){
                    $output["result"] = -905;
                    $output["message"] = ("Old password does not match."); 
                    echo (json_encode($output));
                    die;
                }
                $params["ause_password"]=md5($user->ause_username.$params["ause_password"].$user->ause_secretkey);
            }
            unset($params['ause_password_current']);
            $params["ause_update"] = date('Y-m-d H:i:s');
            $rok = $this->account_model->onUpdate($Id, $params);
            if ($rok === true) {
                $output["result"] = 1;
                $output["message"] = ("Data have been save.");
            } else {
                $output["result"] = -1;
                $output["message"] = ("System rejected your data. Check your data and try again, Please!");
            }
        }
        
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }

    function logquery($y,$m,$d){
        $file=$this->input->post('e');
        if(!$file) $file ='';
        $logtime = date('Y/m/d');
        if($y && $m  && $d) $logtime = "$y/$m/$d";
        if(file_exists(APPPATH."logs/$logtime$file.txt"))
            echo read_file(APPPATH."logs/$logtime$file.txt");
        else echo "No data to display.";
    }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */