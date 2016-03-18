<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class account extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('front/account_model');
        $this->assigns = new stdClass();
        $this->messages = array(
            'EmailExists' =>'Email đã được sử dụng, vui lòng chọn Email khác !',
            'CaptchaNotMatch' =>'Mã xác thực không đúng !',
            'UserNameExists' =>'Tên đăng nhập đã được sử dụng, vui lòng chọn Tên đăng nhập khác !',
            'RegisterFail' =>'Đăng ký tài khoản thất bại, vui lòng thử lại sau !',
            'RegisterOK' =>'Đăng ký tài khoản thành công !',
            'UserNotExists' =>'Tài khoản không tồn tại !',
            'PassNotMatch' =>'Mật khẩu không đúng !',
            'SignInOK' =>'Đăng nhập thành công !'
        );
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
    				'user_status' => 'true',
                    'user_spin_num' => 3
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
    function cancelauth(){
        $this->assigns->url = '/spin';
        $this->smarty->view( 'wait', $this->assigns );
    }
    function register(){
        $output["result"] = -1;
        $output["message"] = "Bad request !";
        $params = $this->input->post('params');
        if($this->captcha->isInvalid($params['user_captcha'])){
            unset($params['user_captcha']);
            $captcha = $this->captcha->createCaptcha(true);
            $output['captchaImg'] = $captcha['image'];
            $param = array('user_email'=>$params['user_email']);
            $user = $this->account_model->searchby($param);
            if($user){
                $output['message'] = $this->messages['EmailExists'];
            }else{
                $param = array('user_user_name'=>$params['user_user_name']);
                $user = $this->account_model->searchby($param);
                if($user){
                    $output['message'] = $this->messages['UserNameExists'];
                }else{
                    unset($params['user_password_confirm']);
                    $params['user_password'] = md5('1109'.$params['user_password']);
                    $params['user_spin_num'] = 3;
                    $params['user_status'] = 'true';
                    $rok = $this->account_model->insertUser($params);
                    if($rok){
                        $output['message'] = $this->messages['RegisterOK'];
                        $output["result"] = 1;
                        $user = $this->account_model->searchby($param);
                        $_SESSION['account'] = $user;
                    }else{
                        $output['message'] = $this->messages['RegisterFail'];
                    }
                }
            }
        }else{
            $output['message'] = $this->messages['CaptchaNotMatch'];
        }

        echo json_encode($output);
    }
    function signin(){
        $output["result"] = -1;
        $output["message"] = "Bad request !";
        $params = $this->input->post('params');
        $param = array('user_user_name'=>$params['user_user_name']);
        $user = $this->account_model->searchby($param);
        if($user){
            $params['user_password'] = md5('1109'.$params['user_password']);
            if($params['user_password'] == $user->user_password){
                $output['message'] = $this->messages['SignInOK'];
                $output["result"] = 1;
                $_SESSION['account'] = $user;
            }else{
                $output['message'] = $this->messages['PassNotMatch'];
            }
        }else{
            $output['message'] = $this->messages['UserNotExists'];
        }
        echo json_encode($output);
    }
    function signout(){
        unset($_SESSION['account']);
        unset($_SESSION['hauth']);
        $this->assigns->url = '/spin';
        $this->smarty->view( 'wait', $this->assigns );
    }
}