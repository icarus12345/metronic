<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->assigns = new stdClass();
        $this->load->model('spin/spin_model');
        $this->smarty->caching = 0;
        $this->createCaptcha();
        $this->notItems = array(12,13,14,15,17);
        $this->codeItems = array(8,9,10,11);
    }
    function createCaptcha($re=false){
        if(!$re)
            if($_SESSION['captcha']){
                if(time()-7200 < $_SESSION['captcha']['time'])
                return;
            }
        $cap_parm = array(
            'length'  => 4,
            'img_path'  => APPPATH.'../captcha/',
            'img_url'   => '/captcha/',
            //'font_path' => './path/to/fonts/texb.ttf',
            'img_width' => 80,
            'img_height' => 30,
            'expiration' => 7200
            );
        $_SESSION['captcha'] = $this->create_captcha($cap_parm);
    }
    function debug(){
          echo '<pre>';
          print_r($_SESSION['hauth']);
          print_r($_SESSION['account']);
          $userid = $_SESSION['account']->user_id;
          $his = $this->spin_model->getHistory($userid);
          print_r($his);
    }
    function index(){
      if($_SESSION['account']){
          $userid = $_SESSION['account']->user_id;
          $this->assigns->his = $this->spin_model->getHistory($userid);
      }
      $this->smarty->view( 'spin', $this->assigns );
    }
    function sendMessage($to,$subject,$body){
        $url = "http://banhyeu.com/excution/sendMessage";
        $post_params = array(
            'Params'=>array(
                'to'      => $to,
                'name'     => "An Phú",
                'subject'      => $subject,
                'body'   => $body
            )
        );
        $rs = do_post_request($url,$post_params);
        return $rs;
    }
    function mailbody(){
      $this->smarty->view( 'mailtemplate/anphu', $this->assigns );
    }
    function spin(){
    	$output["result"] = -1;
    	$output["message"] = "Bad request !";
        if(!$_SESSION['account']){
          	$output["message"] = "Vui lòng đăng nhập !";
        }else{
            $userid = $_SESSION['account']->user_id;
            $this->items = $this->spin_model->getItems();

            $this->user = $this->spin_model->getUser($userid);
            $this->onReset();
            if(!$this->user){
                $output["message"] = "Vui lòng đăng nhập !";
          	}else if(!$this->items){
          		$output["message"] = "Đã hết sản phẩm !";
          	}else if($this->user->user_spin_num==0){
          		$output["message"] = "Đã hết lượt quay !";
          	}else{
      	    	$total;
      	    	$sum = 0;
                if(count($this->items) > 1){
          	    	foreach ($this->items as $tmp) {
          	    		$sum += ($tmp->spin_rate - $tmp->spin_active_rate)*10;
          	    		$total[] = $sum;
          	    	}$random = mt_rand(1,$sum);
          	    	foreach ($total as  $key=>$val) {
          	    		if($random <= $val){
          	    			$item = $this->items[$key];
          	    			break;
          	    		}
          	    	}
                }else{
                    $item = $this->items[0];
                }
      	    	if($item){
                    $aWheelParams = array(
                        'wheel_spin_id'=>$item->spin_id,
                        'wheel_user_id'=>$this->user->user_id
                    );
                    if(in_array($item->spin_id, $this->codeItems)){
                        $code = 'AP-'. random_string('alnum', 6);
                        $aWheelParams['wheel_code'] = $code;
                    }
      	    		$this->db->trans_begin();
      	    		$rok = $this->spin_model->updateRate($item->spin_id);
      	    		$rok = $rok && $this->spin_model->updateUser($this->user->user_id);
      	    		$rok = $rok && $this->spin_model->insertWheel($aWheelParams);
      	    		if ($rok === true) {
                        $output["result"] = 1;
      	                $output["value"] = $item->spin_value;
                        $output["message"] = $item->spin_name;
                        if(!in_array($item->spin_id, $this->notItems)){
                            $output["message"] = "Bạn đã trúng " . $output["message"];
                            // send mail
                            if($this->user->user_email){
                                $this->assigns->giftcode = $code;
                                $this->assigns->item_name = $item->spin_name;
                                $body = $this->smarty->view( 'mailtemplate/anphu', $this->assigns,true);
                                $to = $this->user->user_email;
                                $subject = $output["message"];
                                $this->sendMessage($to,$subject,$body);
                            }
                            if($code){
                                $output["giftcode"] = $code;
                                $output["message"] .= "<br/>Mã số: $code";
                            }
                        }
                        $this->user = $this->spin_model->getUser($userid);
                        $_SESSION['account']->user_spin_num=$this->user->user_spin_num;
                        $output["spin_num"]=$this->user->user_spin_num;
      	                $this->db->trans_commit();
      	            } else {
      	                $output["message"] = "Lỗi hệ thống, vui lòng thử lại vào lúc khác.";
      	                $this->db->trans_rollback();
      	            }
      	    	}
          	}
        }
    	echo json_encode($output);
    }
    function onReset(){
    	if(!$this->items){
    		$this->spin_model->resetRate();
    		$this->items = $this->spin_model->getItems();
    	}
    }
}