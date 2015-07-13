<?php

	$_SESSION['JO_lang'] = isset($_GET['lang'])?$_GET['lang']:(isset($_SESSION['JO_lang'])?$_SESSION['JO_lang']:'vi');
	////
	///
	//	Language
		function JO_language( $value ) {	
			$language = $_SESSION['JO_lang'];
			if( is_array( $value ) ) {
				if(isset($value[ $language ])) return $value[ $language ];
				else return $value[ 'en' ];
			} else {
				if( strpos( $value, "{" . $language . "}" ) === false ) {
					if( strpos( $value, "{EN}" ) === false ) return $value;
					else									$language = "EN";
				}
				$temp = explode( "{"	. $language . "}", $value		);
				$temp = explode( "{/"	. $language . "}", $temp[ 1 ]	);
				return $temp[ 0 ];
			}
		} function JO( $array ) { return JO_language( $array ); }
	////
	///
	//
	////
	///
	//
if (!function_exists("get_currency")) {
	function get_currency($from_Currency, $to_Currency, $amount=0) {
		if($amount<=0) return 0;
		$amount = urlencode($amount);
		$from_Currency = urlencode($from_Currency);
		$to_Currency = urlencode($to_Currency);

		$url = "http://www.google.com/finance/converter?a=$amount&from=$from_Currency&to=$to_Currency";

		$ch = curl_init();
		$timeout = 0;
		curl_setopt ($ch, CURLOPT_URL, $url);
		curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);

		curl_setopt ($ch, CURLOPT_USERAGENT,
					 "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1)");
		curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
		$rawdata = curl_exec($ch);
		curl_close($ch);
		$data = explode('bld>', $rawdata);
		$data = explode($to_Currency, $data[1]);

		return round($data[0], 2);
	}
}
	////
	///
	//
if (!function_exists("get_data")) {
    function get_data($url)
	{
		$ch = curl_init();
		$timeout = 50;
		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // ignore HTTPS
		curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,$timeout);
		curl_setopt($ch, CURLOPT_HEADER, false);

		$data = curl_exec($ch);
		curl_close($ch);
		return $data;
	}
}
if (!function_exists("do_post_request")) {
    function do_post_request($url, $data) {

        $query = http_build_query($data);

        $ch = curl_init(); // Init cURL

        curl_setopt($ch, CURLOPT_URL, $url); // Post location
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); // 1 = Return data, 0 = No return
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // ignore HTTPS
        curl_setopt($ch, CURLOPT_POST, 1); // This is POST
        curl_setopt($ch, CURLOPT_POSTFIELDS, $query); // Add the data to the request

		$response = curl_exec($ch); // Execute the request
        curl_close($ch); // Finish the request

        if ($response) {
            return $response;
        } else {
            return NULL;
        }
    }
}
if (!function_exists("decrypt")) {
    function decrypt($input, $key_seed) {

        $input = @base64_decode($input);
        $key = @substr(md5($key_seed), 0, 24);
        $text = @mcrypt_decrypt(MCRYPT_TRIPLEDES, $key, $input, MCRYPT_MODE_ECB, '12345678');
        $block = @mcrypt_get_block_size('tripledes', 'ecb');

        $packing = @ord($text{strlen($text) - 1});
        if ($packing and ($packing < $block)) {
            for ($P = @strlen($text) - 1; $P >= @strlen($text) - $packing; $P--) {
                if (@ord($text{$P}) != $packing) {
                    $packing = 0;
                }
            }
        }
        $text = @substr($text, 0, strlen($text) - $packing);

        return $text;
    }
}
if (!function_exists("getIP")) {
    function getIP() {
        $ip = '';
        if (getenv("HTTP_CLIENT_IP"))
            $ip = getenv("HTTP_CLIENT_IP");
        else if (getenv("HTTP_X_FORWARDED_FOR"))
            $ip = getenv("HTTP_X_FORWARDED_FOR");
        else if (getenv("REMOTE_ADDR"))
            $ip = getenv("REMOTE_ADDR");
        else
            $ip = "UNKNOWN";

        $ip = explode(',', $ip);
        return $ip[0];
    }
}
if (!function_exists("ascii_to_entities")) {
    function ascii_to_entities($str) 
    { 
    $count    = 1; 
    $out    = ''; 
    $temp    = array(); 

    for ($i = 0, $s = strlen($str); $i < $s; $i++) 
    { 
        $ordinal = ord($str[$i]); 

        if ($ordinal < 128) 
        { 
                if (count($temp) == 1) 
                { 
                    $out  .= '&#'.array_shift($temp).';'; 
                    $count = 1; 
                } 

                $out .= $str[$i]; 
        } 
        else 
        { 
            if (count($temp) == 0) 
            { 
                $count = ($ordinal < 224) ? 2 : 3; 
            } 

            $temp[] = $ordinal; 

            if (count($temp) == $count) 
            { 
                $number = ($count == 3) ? (($temp['0'] % 16) * 4096) + 
    (($temp['1'] % 64) * 64) + 
    ($temp['2'] % 64) : (($temp['0'] % 32) * 64) + 
    ($temp['1'] % 64); 

                $out .= '&#'.$number.';'; 
                $count = 1; 
                $temp = array(); 
            } 
        } 
    } 

    return $out; 
    }
}
if (!function_exists("htmlentities_UTF8")) {

    function htmlentities_UTF8($str) {
        return htmlentities($str, ENT_QUOTES, 'utf-8');
    }

}
if (!function_exists("htmlentities_decode_UTF8")) {

    function htmlentities_decode_UTF8($str) {
        return html_entity_decode($str, ENT_QUOTES, 'utf-8');
    }

}
if (!function_exists("JO_location")) {

    function JO_location($URL = false) {
        if ($URL)
            exit("<script> try { parent.location.replace ( '" . $URL . "'						); } catch ( exception ) { location.replace( '" . $URL . "'							); } </script>");
        else
            exit("<script> try { parent.location.replace ( '" . $_SERVER["HTTP_REFERER"] . "'	); } catch ( exception ) { location.replace( '" . $_SERVER["HTTP_REFERER"] . "'	); } </script>");
    }

}
if (!function_exists("objectToArray")) {

    function objectToArray($d) {
        if (is_object($d)) {
            // Gets the properties of the given object
            // with get_object_vars function
            $d = get_object_vars($d);
        }

        if (is_array($d)) {
            /*
             * Return array converted to object
             * Using __FUNCTION__ (Magic constant)
             * for recursive call
             */
            return array_map(__FUNCTION__, $d);
        } else {
            // Return array
            return $d;
        }
    }

}
if (!function_exists("convertUrl")) {

    function convertUrl($str) {
        $remove = "~ ` ! @ # $ % ^ & * ( ) _ + | \\ = ' \" ” “ ; : ? / > . , < ] [ { }";
        $from = "à á ạ ả ã â ầ ấ ậ ẩ ẫ ă ằ ắ ặ ẳ ẵ è é ẹ ẻ ẽ ê ề ế ệ ể ễ ì í ị ỉ ĩ ò ó ọ ỏ õ ô ồ ố ộ ổ ỗ ơ ờ ớ ợ ở ỡ ù ú ụ ủ ũ ư ừ ứ ự ử ữ ỳ ý ỵ ỷ ỹ đ ";
        $to = "a a a a a a a a a a a a a a a a a e e e e e e e e e e e i i i i i o o o o o o o o o o o o o o o o o u u u u u u u u u u u y y y y y d ";
        $from .= " À Á Ạ Ả Ã Â Ầ Ấ Ậ Ẩ Ẫ Ă Ằ Ắ Ặ Ẳ Ẵ È É Ẹ Ẻ Ẽ Ê Ề Ế Ệ Ể Ễ Ì Í Ị Ỉ Ĩ Ò Ó Ọ Ỏ Õ Ô Ồ Ố Ộ Ổ Ỗ Ơ Ờ Ớ Ợ Ở Ỡ Ù Ú Ụ Ủ Ũ Ư Ừ Ứ Ự Ử Ữ Ỳ Ý Ỵ Ỷ Ỹ Đ ";
        $to .= " a a a a a a a a a a a a a a a a a e e e e e e e e e e e i i i i i o o o o o o o o o o o o o o o o o u u u u u u u u u u u y y y y y d ";
        $remove = explode(" ", $remove);
        $from = explode(" ", $from);
        $to = explode(" ", $to);
        $str = str_replace($from, $to, $str);
        $str = str_replace($remove, "-", $str);
        $str = strip_tags($str);
        $str = iconv("UTF-8", "ISO-8859-1//TRANSLIT//IGNORE", $str);
        //$str = iconv("ISO-8859-1","UTF-8",$str);
        $str = str_replace(" ", "-", $str);
        while (!(strpos($str, "--") === false)) {
            $str = str_replace("--", "-", $str);
        }

        $str = strtolower($str);
        return $str;
    }

}
if (!function_exists("check_url")) {
    function check_url($url){
        $options = array(
                CURLOPT_RETURNTRANSFER => true,     // return web page
                CURLOPT_HEADER         => false,    // don't return headers
                CURLOPT_FOLLOWLOCATION => true,     // follow redirects
                CURLOPT_ENCODING       => "",       // handle all encodings
                CURLOPT_USERAGENT      => "http://badao.gosu.vn/login", // who am i
                CURLOPT_AUTOREFERER    => true,     // set referer on redirect
                CURLOPT_CONNECTTIMEOUT => 120,      // timeout on connect
                CURLOPT_TIMEOUT        => 120,      // timeout on response
                CURLOPT_MAXREDIRS      => 10,       // stop after 10 redirects
                CURLOPT_SSL_VERIFYPEER => false,    // don't verify ssl
        );
        $ch      = curl_init( $url );
        curl_setopt_array( $ch, $options );
        $content = curl_exec( $ch );
        $err     = curl_errno( $ch );
        $errmsg  = curl_error( $ch );
        $header  = curl_getinfo( $ch );
        curl_close( $ch );
        $header['errno']   = $err;
        $header['errmsg']  = $errmsg;
        $header['content'] = $content;
        return $header;
    }
}
if (!function_exists("get_real_ip")) {
    function get_real_ip()
    {
            $ip = false;
            if(!empty($_SERVER['HTTP_CLIENT_IP']))
            {
                    $ip = $_SERVER['HTTP_CLIENT_IP'];
            }
            if(!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
            {
                    $ips = explode(", ", $_SERVER['HTTP_X_FORWARDED_FOR']);
                    if($ip)
                    {
                            array_unshift($ips, $ip);
                            $ip = false;
                    }
                    for($i = 0; $i < count($ips); $i++)
                    {
                            if(!preg_match("/^(10|172\.16|192\.168)\./i", $ips[$i]))
                            {
                                            if(version_compare(phpversion(), "5.0.0", ">="))
                                            {
                                                    if(ip2long($ips[$i]) != false)
                                                    {
                                                            $ip = $ips[$i];
                                                            break;
                                                    }
                                            }
                                            else
                                            {
                                                    if(ip2long($ips[$i]) != - 1)
                                                    {
                                                            $ip = $ips[$i];
                                                            break;
                                                    }
                                            }
                            }
                    }
            }
            return ($ip ? $ip : $_SERVER['REMOTE_ADDR']);
    } 
}

if (!function_exists("message")) {
    function message($message=''){
        ?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
        <title>Message !</title>
        <style>
            *{
                margin: 0;padding: 0;font-family: tahoma;font-size: 11px;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            body,html{display: block;width: 100%;height: 100%;overflow: hidden}
            .dialog{
                background: rgba(255,255,255,.3);
                position: absolute;max-width: 100%;
                border-radius: 2px;-webkit-border-radius: 2px;-moz-border-radius: 2px;
                padding: 4px;width: 240px;left: 50%;top: 50%;
                margin: -100px 0 0 -120px;position: relative;
            }
            .modal{
                min-height: 92px;display: block;background: #fff;width: 100%;
                padding-bottom: 24px;position: relative;overflow: hidden;
                border-radius: 2px;-webkit-border-radius: 2px;-moz-border-radius: 2px;
                background: #fafafa;
            }
            .title{
                padding: 4px 8px;line-height:20px;font-weight:bold;
                background: #fafafa;
                background: -moz-linear-gradient(top,#fafafa 0%,#ebebeb 100%);
                background: -webkit-gradient(linear,left top,left bottom,color-stop(0%,#fafafa),color-stop(100%,#ebebeb));
                background: -webkit-linear-gradient(top,#fafafa 0%,#ebebeb 100%);
                background: -o-linear-gradient(top,#fafafa 0%,#ebebeb 100%);
                background: -ms-linear-gradient(top,#fafafa 0%,#ebebeb 100%);
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fafafa',endColorstr='#ebebeb',GradientType=0 );
                background: linear-gradient(to bottom,#fafafa 0%,#ebebeb 100%);
                border-bottom: 1px solid #ddd;
            }
            .cos{padding: 8px 12px;}
            .bot{position: absolute;left: 0;bottom: 0;width: 100%;text-align: center;padding: 0px 8px 4px 8px;line-height:20px}
            a{color: #666;text-decoration: none}
            a:hover{text-decoration: underline}
        </style>
    </head>
    <body style="background: #000">
        <div class="dialog">
            <div class="modal">
                <div class="title">Message</div>
                <div class="cos">
                    <?php echo $message ?>
				</div>
                <div class="bot"><a href="/">Go to home</a></div>
            </div>
        </div>
    </body>
</html><?php die;
    }
}
?>
