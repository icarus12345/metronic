<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class captcha{
	function __construct(){
		
	}

	function createCaptcha($re=false){
        if(!$re)
            if($_SESSION['captcha']){
                if(time()-7200 < $_SESSION['captcha']['time']){
                	return $_SESSION['captcha'];
            	}
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
        $captcha = create_captcha($cap_parm);
        $_SESSION['captcha'] = $captcha;
        return $captcha;
    }
    function isInvalid($text){
        if($_SESSION['captcha']){
                if(time()-7200 < $_SESSION['captcha']['time']){
                    return $_SESSION['captcha']['word'] == $text;
                }
            }
        return false;
    }
}

/* End of file HybridAuthLib.php */
/* Location: ./application/libraries/HybridAuthLib.php */