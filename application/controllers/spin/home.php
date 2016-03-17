<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->assigns = new stdClass();
        $this->load->model('spin/spin_model');
        $this->load->helper('captcha');
        $this->smarty->caching = 0;
        $this->createCaptcha();
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
        $_SESSION['captcha'] = create_captcha($cap_parm);
    }
    function debug(){
      echo '<pre>';
      print_r($_SESSION['hauth']);
      print_r($_SESSION['account']);
    }
    function index(){
      $this->smarty->view( 'spin', $this->assigns );
      return;
    	?>
    	<script src="/assets/spin/jquery-2.1.4.min.js"></script>
    	<script src="/assets/spin/jQueryRotate.js"></script>
      <script src="/assets/spin/jquery.easing.min.js"></script>
    	<script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>
    	<!-- <img id="spin" src="/assets/spin/01.png" /> -->
      <div class="wheel-wrap">
      	<div class="wheel" style="width:523px;height:527px;background:url(/assets/spin/whell.png) 0 0 no-repeat"></div>
        <img class="marker" src="/assets/spin/marker.png" />
      </div>
    	<script type="text/javascript">
    		$(document).ready(function(){
                var angle = 0
      			$('#spin').click(function(){
      				angle += 222;
      				$('#spin').rotate({
      					animateTo: angle,
      					duration:6000,
      					// count:4,  easing:'ease-out',
      					callback: function(){   
      						alert(1)  
      					}
      					
      				});
      			});
                window.WHEELOFFORTUNE = {

                cache: {},

                init: function () {
                  console.log('controller init...');

                  var _this = this;
                  this.cache.wheel = $('.wheel');
                  this.cache.wheelMarker = $('.marker');
                  this.cache.wheelSpinBtn = $('.wheel');

                  //mapping is backwards as wheel spins clockwise //1=win
                  this.cache.wheelMapping = ['10', '6', 'May man', '5%', 'Hut', 300, 60, 175, 500, 125, 75, 1000, 120, 200, 90, 600]//.reverse();

                  this.cache.wheelSpinBtn.on('click', function (e) {
                      e.preventDefault();
                      if (!$(this).hasClass('disabled')) _this.spin();
                  });

                  //reset wheel
                  this.resetSpin();

                  //setup prize events
                  // this.prizeEvents();
                },

                spin: function (index) {
                  console.log('spinning wheel');

                  var _this = this;

                  // reset wheel
                  this.resetSpin();

                  //disable spin button while in progress
                  this.cache.wheelSpinBtn.addClass('disabled');

                  /*
                      Wheel has 10 sections.
                      Each section is 360/10 = 36deg.
                  */
                  var deg = 360*6 + 360/16* ((index||0))+1;//Math.round(Math.random() * 360),
                      duration = 6000; //optimal 6 secs

                  _this.cache.wheelPos = deg;

                  //transition queuing
                  //ff bug with easeOutBack
                  this.cache.wheel.transition({
                      rotate: '0deg'
                  }, 0)
                      .transition({
                      rotate: deg + 'deg'
                  }, duration, 'easeOutCubic');

                  //move marker
                  _this.cache.wheelMarker.transition({
                      rotate: '-20deg'
                  }, 0, 'snap');

                  //just before wheel finish
                  setTimeout(function () {
                      //reset marker
                      _this.cache.wheelMarker.transition({
                          rotate: '0deg'
                      }, 300, 'easeOutQuad');
                  }, duration - 500);

                  //wheel finish
                  setTimeout(function () {
                      // did it win??!?!?!
                      var spin = _this.cache.wheelPos,
                          degrees = spin % 360,
                          percent = (degrees / 360) * 100,
                          segment = Math.ceil((percent / 6));  //divided by number of segments
                          // win = _this.cache.wheelMapping[segment - 1]; //zero based array

                      console.log('spin = ' + spin);
                      console.log('degrees = ' + degrees);
                      console.log('percent = ' + percent);
                      console.log('segment = ' + segment);
                      // console.log('win = ' + win);

                      //display dialog with slight delay to realise win or not.
                      setTimeout(function () {
                          alert('you won '+win+'!');
                      }, 700);

                      //re-enable wheel spin
                      _this.cache.wheelSpinBtn.removeClass('disabled');

                  }, duration);

                },

                resetSpin: function () {
                  this.cache.wheel.transition({
                      rotate: '0deg'
                  }, 0);
                  this.cache.wheelPos = 0;
              }

            }

                window.WHEELOFFORTUNE.init();
    		});
		</script>
    	<?php
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
      	    	foreach ($this->items as $tmp) {
      	    		$sum += ($tmp->spin_rate - $tmp->spin_active_rate)*10;
      	    		$total[] = $sum;
      	    	}
      	    	$random = mt_rand(1,$sum);
      	    	foreach ($total as  $key=>$val) {
      	    		if($random <= $val){
      	    			$item = $this->items[$key];
      	    			break;
      	    		}
      	    	}
      	    	if($item){
      	    		$aWheelParams = array(
      	    			'wheel_spin_id'=>$item->spin_id,
      	    			'wheel_user_id'=>$this->user->user_id
      	    			);
      	    		$this->db->trans_begin();
      	    		$rok = $this->spin_model->updateRate($item->spin_id);
      	    		$rok = $rok && $this->spin_model->updateUser($this->user->user_id);
      	    		$rok = $rok && $this->spin_model->insertWheel($aWheelParams);
      	    		if ($rok === true) {
      	                $output["result"] = 1;
      	                $output["message"] = "Bạn đã.";
      	                $this->db->trans_commit();
      	            } else {
      	                $output["message"] = "Fail";
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