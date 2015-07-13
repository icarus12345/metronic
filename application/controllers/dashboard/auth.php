<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class auth extends CI_Controller {
        function __construct() {
            parent::__construct();
            $this->smarty->caching = 0;
            $this->load->model("dashboard/auth_model");
        }
        
        function login(){
            if ($this->input->get_post('action') === "login") {
                $this->onlogin();
            }
            $auth = $_SESSION["auth"];
            if (isset($auth["user"])) {
                $state = $this->input->get('state');
                $query = $this->input->get('query');
                $state = str_replace('.html', '', $state);
                if(!$state) $state = 'dashboard';
                redirect("$state?$query");
            }
            $this->smarty->view('dashboard/auth/login',$this->assigns);
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
        
        function logout(){
            session_destroy();
            $state = $this->input->get('state');
            $query = ($this->input->get('query'));
            $state = str_replace('.html', '', $state);
            if(!$state) $state = 'dashboard';
            redirect("$state?$query");
        }
        
        function accessdenied(){
            $opt = array(
                'conf' => array(
                        'auth'=>  'dashboard/conf/auth.conf'
                ),
                'template'  => 'dashboard/auth/accessdenied.tpl'
            );
            $this->renderTpl($opt);
        }
        
        public function index(){
            $this->login();
	    }
        
        function renderTpl($opt){
            foreach ($opt as $key=>$value){
                $this->smarty->assign( $key, $value );
            }
            $this->smarty->view( $opt['template'], $this->assigns );
        }

        
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */