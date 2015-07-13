<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class account extends Core_Controller {
    function __construct() {
        parent::__construct('auth_users', 'ause_', 'id');
        $this->load->model('dashboard/account_model');
    }
    public function index(){
        $this->vp();
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
    function vp($type=''){
        $opt = array(
            'conf' => array(
                    'auth'=>  'cms/conf/cms.conf'
                ),
            'template'  => 'cms/template.tpl'
        );
        $this->smarty->assign('type',$type);
        $this->renderTpl($opt);
    }
    function editpanel(){
        $Id=(int)$this->input->post('Id');
        if($Id>0){
            $this->assigns->item = $this->account_model->onGet($Id);
        }
        $htmlreponse = $this->smarty->view( 'cms/account/editorPanel', $this->assigns, true );
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
        
    }
    function bindingbytype(){
        $output = $this->account_model->binding();
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    
    function commit(){
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
        }
    }
    protected function beforedelete(){
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
        }else{
            $output["message"] = "Data invalid.";
            $this->output->set_header('Content-type: application/json');
            $this->output->set_output(json_encode($output));
            die;
        }
    }
}
?>