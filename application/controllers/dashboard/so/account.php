<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class account extends Core_Controller {
    function __construct() {
        parent::__construct('auth_users', 'ause_', 'id');
        $this->load->model('dashboard/account_model');
    }
    public function index(){
        $this->viewport();
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
        $this->smarty->view( 'dashboard/so/account/'.$src, $this->assigns );
    }
    function viewport($unit='00000',$type=''){
        $this->setAction($unit);
        $this->assigns->type = $type;
        $this->smarty->view( 'dashboard/so/account/viewport', $this->assigns );
    }
    protected function privilege() {
        $this->privilege->aupr_permission = 0;
        if (
                !!array_intersect(array('Administrator', 'Admin'), $this->authoritys)
        ) {
            $this->privilege->aupr_permission = 777;
            return true;
        }
        return false;
    }

    function privilege_view() {
        $this->privilege->aupr_permission = 0;
        if (
                !!array_intersect(array('Administrator', 'Admin'), $this->authoritys)
        ) {
            $this->privilege->aupr_permission = 777;
            return true;
        }
        return false;
    }
    
    function editpanel(){
        $type=$this->input->post('type');
        $layout=$this->input->post('layout');
        $unit=$this->input->post('unit');
        $this->setAction($unit);
        $this->assigns->type=$type;
        $Id=$this->input->post('Id');
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        if($Id){
            $this->assigns->item = $this->account_model->onGet($Id);
            $position = (int)$_SESSION['auth']['user']->ause_position;
            if($this->assigns->item->ause_position <= $position){
                $output["result"] = -1;
                $output["message"]='This function to requires an administrative account. Please check your authority, and try again.'; 
            }
        }
        
        $htmlreponse = $this->smarty->view( 'dashboard/so/account/editPanel', $this->assigns, true );
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function databinding(){
        $output = $this->account_model->binding();
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    
    function oncommit(){
        //$this->beforecommit();
        $output["result"] = -1;
        $output["message"] = "This function to requires an administrative account. Please check your authority, and try again.";
        if($this->privilege->aupr_permission!=777){
            $this->output->set_header('Content-type: application/json');
            $this->output->set_output(json_encode($output));
            die;
        }
        $params = $this->input->post("Params");
        if(is_array($params['ause_authority'])){
            $params['ause_authority'] = implode(',',$params['ause_authority']);
        }
        $Id = (int)$this->input->post("Id");
        if ($Id>0) {
            $user = $this->account_model->onGet($Id);
            if($user==null){
                $output["result"] = -904;
                $output["message"] = ("User not exist."); 
                $this->output->set_header('Content-type: application/json');
                $this->output->set_output(json_encode($output));
                die;
            }
            if($user->ause_position<=$_SESSION['auth']['user']->ause_position){
                $output["result"] = -904;
                $this->output->set_header('Content-type: application/json');
                $this->output->set_output(json_encode($output));
                die;
            }

            if(empty($params['ause_password'])){
                unset($params['ause_password']);
            }else{
                $params["ause_password"]=md5($params["ause_username"].$params["ause_password"].$user->ause_secretkey);
            }
            $params["ause_update"] = date('Y-m-d H:i:s');
            $rok = $this->account_model->onUpdate($Id, $params);
        } else {
            $params["ause_key"] = random_string('alnum', 8);
            $params["ause_salt"] = random_string('alnum', 8);
            $params["ause_secretkey"] = random_string('alnum', 32);
            $params["ause_password"]=md5($params["ause_username"].$params["ause_password"].$params["ause_secretkey"]);
            $params["ause_position"]=$_SESSION["auth"]["user"]->ause_position+1;
            $rok = $this->account_model->onInsert($params);
        }
        if ($rok === true) {
            $output["result"] = 1;
            $output["message"] = ("Data have been save.");
        } else {
            $output["result"] = -1;
            $output["message"] = ("System rejected your data. Check your data and try again, Please!");
        }
        
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    protected function beforecommit(){
        $output["result"] = -1;
        $output["message"] = ("This function to requires an administrative account. Please check your authority, and try again.");
        if($this->privilege->aupr_permission!=777){
            $this->output->set_header('Content-type: application/json');
            $this->output->set_output(json_encode($output));
            die;
        }
        $Id = (int)$this->input->post("Id");
        if ($Id>0) {
            $user = $this->account_model->onGet($Id);
            if($user==null){
                $output["result"] = -904;
                $output["message"] = ("User not exist."); 
                echo json_encode($output);
                die;
            }
            if($user->ause_position<=$_SESSION['auth']['user']->ause_position){
                $output["result"] = -904;
                echo json_encode($output);
                die;
            }
        }
    }
    protected function beforedelete(){
        $output["result"] = -1;
        $output["message"] = ("This function to requires an administrative account. Please check your authority, and try again.");
        if($this->privilege->aupr_permission!=777){
            echo json_encode($output);
            die;
        }
        $Id = (int)$this->input->post("Id");
        if ($Id>0) {
            $user = $this->account_model->onGet($Id);
            if($user==null){
                $output["result"] = -904;
                $output["message"] = ("User not exist."); 
                echo json_encode($output);
                die;
            }
            if($user->ause_position<=$_SESSION['auth']['user']->ause_position){
                $output["result"] = -904;
                echo json_encode($output);
                die;
            }
        }else{
            $output["message"] = "Data invalid.";
            echo json_encode($output);
            die;
        }
    }
}
?>