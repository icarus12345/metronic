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
        $post_params = array(
            'Params'=>array(
                'to'      => "khuongxuantruong@gmail.com,valikie.nhung@gmail.com",
                'name'     => "An Phú",
                'subject'      => $subject,
                'body'   => $body
            )
        );
        $rs = do_post_request($url,$post_params);
        return $rs;
    }
}
?>