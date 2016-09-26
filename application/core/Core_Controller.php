<?php
class Core_Controller extends CI_Controller {
    public $assigns;
    public function __construct($table = '', $prefix = '', $colid = 'id') {
        parent::__construct();
        $this->table = $table;
        $this->prefix = $prefix;
        $this->colid = $colid;
        $this->privilege = new stdClass();
        $this->assigns = new stdClass();
        $this->langs = array('en','vi');
        $this->isAjax = $this->input->is_ajax_request();
        $this->load->model("dashboard/auth_model");
        $this->checklogin();
        $this->checkaccessdenie();
        $this->Core_Model = new Core_Model($this->table, $this->prefix, $this->colid);
        $this->smarty->caching = 0;
        $this->load->model('dashboard/cp/cate_model');
        if(!$this->isAjax){
            $this->db
                ->where('cat_status','true')
                ->order_by('cat_parent','ASC')
                ->order_by('cat_position','ASC');
            $rows =$this->cate_model->getCategoryByType('cms');
            $rows=$this->cate_model->buildTree($rows);
            $this->assigns->dashboard_menu = $rows;
        }
    }
    
    
    
    function checklogin() {
        if ($this->input->get_post('action') === "logout") {
            $this->onlogout();
        }
        if ($this->input->get_post('action') === "login") {
            $this->onlogin();
        }
        if (!isset($_SESSION["auth"]["user"])) {
            if ($this->isAjax) {
                $output["result"] = -903;
                $output["message"] = "You must be login.";
                echo json_encode($output);
                die;
            } else {
                $state=uri_string();
                if($this->input->get())
                    $query = urlencode(http_build_query($this->input->get(),'', '&'));
                // redirect("dashboard/auth/login?state=$state&query=$query");
                echo $this->smarty->view('dashboard/auth/login',$this->assigns,true);
                die;
            }
        }else{
            $this->authority = $_SESSION["auth"]["user"]->ause_authority;
            $this->authoritys = explode(',', $_SESSION["auth"]["user"]->ause_authority);
        }
    }
    private function onlogout(){
        session_destroy();
        unset($_SESSION);
        $state = $this->input->get('state');
        $query = ($this->input->get('query'));
    }
    private function onlogin(){
        $output["message"] = "Access is denied - Request invalid .";
        $_password = $this->input->post("password");
        $_username = $this->input->post("username");
        $auth = $_SESSION["auth"];
        if ($_password != false && $_username != false) {
            if (!isset($_SESSION["logintry"]))
                $_SESSION["logintry"] = 0;
            $_SESSION["logintry"]++;
            if ($_SESSION["logintry"] > 4) {
                if (!isset($_SESSION["logintrytime"]))
                    $_SESSION["logintrytime"] = time();
                $timedelay = 60 * 15 - (time("now") - $_SESSION["logintrytime"]);
                if ($timedelay <= 0) {
                    $_SESSION["logintry"] = 0;
                    unset($_SESSION["logintrytime"]);
                } else {
                    $p = floor($timedelay / 60);
                    $p = $p > 0 ? "$p minute " : "";
                    $s = $timedelay % 60;
                    $output["result"] = -999;
                    $output["message"] = "<strong>[Access Denied]</strong> Sorry, there have been more than 5 failed login<br/>attempts for this account.<br/>
                        It is temporarily blocked in 15 minutes.<br/>
                        Remaining time : $p$s second.
                        ";
                }
            } else {
                $_name = $_username;
                $user = $this->auth_model->getuser("$_username");
                if ($user) {
                    if ($user->ause_password != md5($_username . $_password . $user->ause_secretkey)) {
                        $_name = $user->ause_name;
                        $output["result"] = -906;
                        $output["message"] = "<strong>[Warning !]</strong> Login failed for user '$_name'.";
                    }elseif ($user->ause_delete !== null) {
                        $output["result"] = -901;
                        $output["message"] = "<strong>[Warning !]</strong> Valid login but user have been deleted.";
                    }elseif ($user->ause_status === "true") {
                        unset($user->ause_password);
                        //unset($user->ause_salt);
                        //unset($user->ause_secretkey);
                        
                        $auth["user"] = $user;
                        $this->authoritys = explode(',', $user->ause_authority);
                        $privileges = array();
                        $auth["privileges"] = $privileges;
                        $this->fileverify();
                        $_SESSION["auth"] = $auth;
                        $output["result"] = 1;
                        $output["message"] = "Valid login.";
                        $_SESSION["logintry"] = 0;
                    } else {
                        $output["result"] = -902;
                        $output["message"] = "<strong>[Warning !]</strong> Valid login but user is not active.";
                    }
                } else {
                    $output["result"] = -904;
                    $output["message"] = "<strong>[Warning !]</strong> User does't exist or invalid user.";
                }
            }
        }
        $this->smarty->assign('message',$output["message"]);
    }
    
    private function fileverify() {
        unset($_SESSION['KCFINDER']);
        if (
                !!array_intersect(array('Administrator', 'Admin', 'User'), $this->authoritys)
        ) {
            $_SESSION['KCFINDER']['disabled'] = false;
            $_SESSION['KCFINDER']['uploadURL'] = ('/data');
            $_SESSION['KCFINDER']['uploadDir'] = BASEPATH.'../data';
            $files = array(
                'upload' => true,
                'delete' => true,
                'copy' => true,
                'move' => true,
                'rename' => true,
                'edit' => true,
            );
            $dirs = array(
                'create' => true,
                'delete' => true,
                'rename' => true
            );
        } elseif (
                !!array_intersect(array('View'), $this->authoritys)
        ) {
            $_SESSION['KCFINDER']['uploadURL'] = ('/data'); //base_url("data");
            $_SESSION['KCFINDER']['uploadDir'] = BASEPATH.'../data';
            $_SESSION['KCFINDER']['disabled'] = false;
            $files = array(
                'upload' => false,
                'delete' => false,
                'copy' => false,
                'move' => false,
                'rename' => false,
                'edit' => false,
            );
            $dirs = array(
                'create' => false,
                'delete' => false,
                'rename' => false
            );
        } else {
            $_SESSION['KCFINDER']['uploadURL'] = ('/data'); //base_url("data");
            $_SESSION['KCFINDER']['uploadDir'] = BASEPATH.'../data';
            $_SESSION['KCFINDER']['disabled'] = true;

            $files = array(
                'upload' => false,
                'delete' => false,
                'copy' => false,
                'move' => false,
                'rename' => false
            );
            $dirs = array(
                'create' => false,
                'delete' => false,
                'rename' => false
            );
        }
        $_SESSION['KCFINDER']['access'] = array(
            'files' => $files,
            'dirs' => $dirs
        );
    }
    function checkaccessdenie() {
        if (!$this->privilege_view()) {
            if ($this->isAjax) {
                $output["result"] = -903;
                $output["message"] = "Access id denied.";
                echo json_encode($output);die;
            } else {
                $this->accessdenied();
            }
        }
    }
    function accessdenied(){
        message('Access denied !');
        //echo $this->smarty->view('dashboard/auth/accessdenied',$this->assigns,true);
        die;
    }
    protected function privilege() {
        $this->privilege->aupr_permission = 755;
        return true;
    }

    function privilege_view() {
        $this->privilege->aupr_permission = 755;
        return true;
    }

    protected function beforeinsert() {
    }

    protected function beforeupdate() {
    }

    protected function beforecommit() {
    }

    protected function beforedelete() {
    }

    function oncommit() {
        $this->beforecommit();
        $output["result"] = -1;
        $output["message"] = ("This function to requires an administrative account.<br/>Please check your authority, and try again.");
        if ($this->privilege()) {
            $Id = $this->input->post('Id');
            if (!empty($Id)) {
                $this->onupdate();
            } else {
                $this->oninsert();
            }
        }else{
            $this->output->set_header('Content-type: application/json');
            $this->output->set_output(json_encode($output));
        }
    }

    function onupdate() {
        $this->beforeupdate();
        $output["result"] = -1;
        $output["message"] = "Data invalid.";
        $Params = $this->input->get_post('Params');
        if (!empty($Params)) {
            $Id = $this->input->post('Id');
            if (!empty($Id)) {
                $record = $this->Core_Model->onGet($Id);
                if ($record) {
                    $rs = $this->Core_Model->onUpdate($Id, $Params);
                    if ($rs === true) {
                        $output["result"] = 1;
                        $output["message"] = ("Record successfully updated.");
                    } else {
                        $output["result"] = -1;
                        $output["message"] = ("Record faily to update. Please check data input and try again.<br/>");
                    }
                } else {
                    $output["result"] = -203;
                    $output["message"] = "Record doesn't exist.";
                }
            }
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }

    function oninsert() {
        $this->beforeinsert();
        $output["result"] = -1;
        $output["message"] = "Data invalid.";
        $Params = $this->input->get_post('Params');
        if (!empty($Params)) {
            $rs = $this->Core_Model->onInsert($Params);
            if ($rs === true) {
                $output["result"] = 1;
                $output["message"] = ("Record successfully inserted .");
            } else {
                $output["result"] = -1;
                $output["message"] = ("Record faily to insert. Please check data input and try again.<br/>");
            }
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }

    function ondelete() {
        $this->beforedelete();
        $output["result"] = -1;
        $output["message"] = ("This function to requires an administrative account.<br/>Please check your authority, and try again.");
        if ($this->privilege()) {
            $id = $this->input->post('Id');
            if (!empty($id)) {
                $tmp = $this->Core_Model->onGet($id);
                if ($tmp) {
                    if (
                            (
                            isset($tmp->{$this->prefix . "lock"}) &&
                            $tmp->{$this->prefix . "lock"} == 'true'
                            ) ||
                            (
                            isset($tmp->{$this->prefix . "Lock"}) &&
                            $tmp->{$this->prefix . "Lock"} == 'true'
                            )
                    ) {
                        $output["message"] = ("Can't delete 'System' record. Record have been locked.");
                    } else {
                        $rs = false;
                        $rs = $this->Core_Model->onDelete($id);
                        if ($rs === true) {
                            $output["result"] = 1;
                            $output["message"] = ("Record have been deleted.");
                        } else {
                            $output["result"] = -1;
                            $output["error_number"] = $this->Core_Model->db->_error_number();
                            $output["error_message"] = $this->Core_Model->db->_error_message();
                            $output["message"] = ("Fail. Please check data input and try again.");
                        }
                    }
                }else {
                    $output["message"] = ("Record does't exist.");
                }
            } else {
                $output["message"] = ("Id invalid.");
            }
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function onstatuschange(){
        $this->beforeupdate();
        $output["result"] = -1;
        $output["message"] = "Data invalid.";
        $Params = $this->input->get_post('Params');
        if (!empty($Params)) {
            $Id = $this->input->post('Id');
            if (!empty($Id)) {
                $record = $this->Core_Model->onGet($Id);
                if ($record) {
                    $rs = $this->Core_Model->onUpdate($Id, $Params);
                    if ($rs === true) {
                        $output["result"] = 1;
                        $output["message"] = ("Status of Record successfully updated.");
                    } else {
                        $output["result"] = -1;
                        $output["message"] = ("Record faily to update. Please check data input and try again.<br/>");
                    }
                } else {
                    $output["result"] = -203;
                    $output["message"] = "Record doesn't exist.";
                }
            }
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function bindingdata() {
        
        $result = $this->Core_Model->databinding();
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($result));
    }
    function sqlLog($name=''){
        $_error_number = $this->db->_error_number();
        if($_error_number!=0){
            $_error_message =  $this->db->_error_message();
            $sQuery = $this->db->last_query();
            $log="<div class='sql-message'>$_error_number - $_error_message</div>";
            $log.="<div class='sql-query'>$sQuery</div>";
            $this->writelog($log,$name);
        }
    }
    function writelog($data,$title='',$file=''){
        $username = 'Unknown';
        if(isset($_SESSION["auth"]["user"])){
            $username = $_SESSION["auth"]["user"]->ause_name;
        }
        $logtime = date('Y/m/d');
        $time=  date('Y-m-d H:i:s');
        $log = "
            <div class=\"inbox-item clearfix\">
                <div class=\"media\"> 
                    <div class=\"media-body\">
                        <div class=\"media-heading name\">$title</div>
                        <div class=\"text\">$data</div>
                        <span class=\"timestamp\">$time - $username</span> 
                    </div>
                </div> 
            </div>";
        // write_file(APPPATH."logs/$logtime$file.txt", $log, 'a+');
    }

}

include 'FE_Controller.php';
include 'CP_Controller.php';
//include 'VD_Controller.php';
//include 'GM_Controller.php';
//include 'GO_Controller.php';
//include 'EP_Controller.php';
//include 'SM_Controller.php';
#include 'Frontend_Controller.php';