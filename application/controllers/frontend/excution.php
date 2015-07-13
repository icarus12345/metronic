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
            $this->sendLetter();
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
        $url = "http://banhyeu.com/home/sendMessageFromBanhNgon";
        if($params['contact_type']=='Order'){
            $name = $params['contact_data'][0];
            $quantity = $params['contact_data'][1];
            $address = $params['contact_data'][2];
            $contact_message = $params['contact_message'];
            $msg = "Bạn có yêu cầu đặt hàng mới từ Bánh Ngon Online<br/>";
            $msg .= "Đặt bánh <b>{$name}</b><br/>";
            $msg .= "Số lượng <b>{$quantity}</b><br/>";
            $msg .= "Địa chỉ <b>{$address}</b><br/>";
            $msg .= "Nội dung <b>{$contact_message}</b><br/>";
        }else if($params['contact_type']=='Contact us'){
            $address = $params['contact_data'];
            $contact_subject = $params['contact_subject'];
            $contact_message = $params['contact_message'];
            $msg = "Bạn có yêu cầu mới từ Bánh Ngon Online<br/>";
            $msg .= "Địa chỉ <b>{$address}</b><br/>";
            $msg .= "Tiêu đề <b>{$contact_subject}</b><br/>";
            $msg .= "Nội dung <b>{$contact_message}</b><br/>";
        }else{
            $msg = "Bạn có yêu cầu mới từ Bánh Ngon Online<br/> Không rõ yêu cầu đặt hàng là gì.<br/>";
        }
        $msg .= "Vui lòng truy cập vô CMS(quản trị) Bánh Ngon Online để xem chi tiết yêu cầu.";
        $post_params = array(
            'Params'=>array(
                'Name'      => $params['contact_name'],
                'Phone'     => $params['contact_phone'],
                'Mail'      => $params['contact_email'],
                'Message'   => $msg
            )
        );
        $rs = @do_post_request($url,$post_params);
//         echo $rs;
    }
}
?>