<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class excution extends FE_Controller {
    function __construct() {
        parent::__construct();
        $this->contact_model = new Core_Model('_contactus','contact_','id');
    }
    function sendMessage(){
        $output["result"] = -1;
        $output["message"]='Vui lòng thử lại sau !';
        $params = $this->input->post('params');
        if(is_array($params['contact_data'])){
            $tmp['name'] = $params['contact_data'][0];
            $tmp['quantity'] = $params['contact_data'][1];
            $tmp['address'] = $params['contact_data'][2];
            $params['contact_data'] = json_encode($tmp);
        }
        if($this->contact_model->onInsert($params)){
            $output["result"] = 1;
            if($params['contact_type']=='Order')
                $output["message"]='Cảm ơn bạn đã đặt hàng. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất.';
            if($params['contact_type']=='Contact us')
                $output["message"]='Cảm ơn bạn đã liên hệ với chúng tôi. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất.';
            $output["sendletter"] = $this->sendLetter();
        }else{
            $output["message"]='Gửi yêu cầu thất bại ! Vui lòng thử lại sau.';
        }
        
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    // private function sendMail(){
    //     $this->load->library('CI_Phpmailer');
    //     $mailer = new CI_Phpmailer();
    //     $mailer->prm = $this->setting_model->getByType('mailer');
    //     if($mailer->prm['Send Message']->Value=='true'){
    //         $this->assigns->item = $this->input->post('params');
    //         $subject = "PushClimbing - You have new request at ". date('d/m/Y');
    //         $body = $this->smarty->view( 'pushclimbing/mailbody', $this->assigns, true );
    //         $mailer->send_mail($mailer->prm['To']->Value,$subject,$body);
    //     }
    // }
    function sendLetter(){
        $params = $this->input->post('params');
        $this->assigns->params = $params;
        if($params['contact_type']=='Order'){
            $body = "";
        }else if($params['contact_type']=='Contact us'){
            $body = $this->smarty->view( 'mailtemplate/anphu_contact', $this->assigns,true);
        }else{
            $body = "Bạn có yêu cầu mới từ Dụng Cụ Làm Bánh An Phú<br/> Không rõ yêu cầu đặt hàng là gì.<br/>";
        }
        $subject = "Yêu cầu mới từ Dụng Cụ Làm Bánh An Phú lúc " . date('Y-m-d H:i');
        $url = "http://banhyeu.com/excution/sendMessage";
        $to = $this->assigns->setting_data['sendmail']['data_data']['value']['vi'];
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
    function removecart(){
        $output["result"] = -1;
        $output["message"]='Hệ thống đang bận, vui lòng thử lại sau !';
        $params = $this->input->post('params');
        $item_id = $params['id'] .'_'. $params['option'];
        $totalcash = 1*$_SESSION['totalcash'];
        if(!empty($_SESSION['cart'][$item_id])){
            $product = $_SESSION['cart'][$item_id];
            $cash = $product->cash;
            $totalcash -= $cash;
            $_SESSION['totalcash'] = $totalcash;
            unset($_SESSION['cart'][$item_id]);
            $output["totalcash"] = number_format($totalcash,0,",",".");
            $output["cash"] = 0;
            $output["result"] = 1;
            $output["message"]='Đã xóa sp khỏi giỏ hàng !';
        }
        $output['num'] = count($_SESSION['cart']);
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function addtocart(){
        $output["result"] = -1;
        $output["message"]='Hệ thống đang bận, vui lòng thử lại sau !';
        $params = $this->input->post('params');
        $item_id = $params['id'] .'_'. $params['option'];
        $quantity = (int)$params['quantity'];
        $totalcash = 1*$_SESSION['totalcash'];
        if(empty($_SESSION['cart'][$item_id])){
            $product = $this->product_model->getProductById($params['id']);
            if($product){
                $product->product_prices=json_decode($product->product_prices,true);
                unset($product->aContent);
                unset($product->aDesc);
                unset($product->aTag);
                unset($product->aAlias);
                unset($product->product_prices);
                $cash = 0;
                foreach ($product->aPrices as $pri) {
                    if($pri->data_id == $params['option']){
                        $product->option = $pri;
                        $price=$pri->data_data['price'][$this->assigns->lang];
                        $cash = $price * $quantity;
                        break;
                    }
                }
                if((int)$product->product_discount>0){
                    $cash *= (100-(int)$product->product_discount)/100;
                }
                $product->quantity = $quantity;
                $product->cash = $cash;
                $totalcash += $cash;

                $_SESSION['totalcash'] = $totalcash;
                $_SESSION['cart'][$item_id] = $product;
                $output["totalcash"] = number_format($totalcash,0,",",".");
                $output["cash"] = number_format($product->cash,0,",",".");
                $output["result"] = 1;
                $output["message"]='Đã thêm sản phẩm vào giỏ hàng !';
            }else{
                $output["message"]='Sản phẩm không tồn tại !';
            }
        }else{
            $product = $_SESSION['cart'][$item_id];
            $product->quantity += $quantity;
            $pri = $product->option;
            $price=$pri->data_data['price'][$this->assigns->lang];
            $cash = $price * $quantity;
            if((int)$product->product_discount>0){
                $cash *= (100-(int)$product->product_discount)/100;
            }
            $product->cash += $cash;
            $totalcash += $cash;
            $output["totalcash"] = number_format($totalcash,0,",",".");
            $output["cash"] = number_format($product->cash,0,",",".");
            $_SESSION['totalcash'] = $totalcash;
            $_SESSION['cart'][$item_id] = $product;
            $output["result"] = 1;
            $output["message"]='Đã thêm sản phẩm vào giỏ hàng !';
        }
        $output['num'] = count($_SESSION['cart']);
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function checkout(){
        $output["result"] = -1;
        $output["message"]='Hệ thống đang bận, vui lòng thử lại sau !';
        $params = $this->input->post('params');
        $order_number = strtoupper(random_string('alnum', 6));
        $this->assigns->params = $params;
        $this->assigns->order_number = $order_number;
        $body = $this->smarty->view( 'mailtemplate/anphu_order', $this->assigns,true);
        $params['contact_data'] = $body;
        if($this->contact_model->onInsert($params)){
            $output["result"] = 1;
            $output["message"]='Cảm ơn bạn đã đặt hàng. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất.';
            $output["html"] = $body;
            $subject = "Đơn hàng mới từ Dụng Cụ Làm Bánh An Phú lúc " . date('Y-m-d H:i');
            $url = "http://banhyeu.com/excution/sendMessage";
            $to = $this->assigns->setting_data['sendmail']['data_data']['value']['vi'];
            $post_params = array(
                'Params'=>array(
                    'to'      => $to,
                    'name'     => "An Phú",
                    'subject'      => $subject,
                    'body'   => $body
                )
            );
            $rs = do_post_request($url,$post_params);
            $output["sendletter"] = $rs;
            unset($_SESSION['cart']);
            unset($_SESSION['totalcash']);
        }else{
            $output["message"]='Đặt hàng thất bại ! Vui lòng thử lại sau.';
        }
        

        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function debug(){
        print_r($this->assigns->setting_data);
    }
}
?>