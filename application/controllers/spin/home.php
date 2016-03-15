<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('spin/spin_model');
    }
    function index(){
    	?>
    	<script src="/assets/spin/jquery-2.1.4.min.js"></script>
    	<script src="/assets/spin/jQueryRotate.js"></script>
      <script src="/assets/spin/jquery.easing.min.js"></script>
    	<script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>
    	<!-- <img id="spin" src="/assets/spin/01.png" /> -->
      <div class="wheel-wrap">
        <img class="wheel" src="/assets/spin/whell.png" />
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
                  this.cache.wheelMapping = ['10%', 'Hop Soda', 'May man', '5%', 'Hut', 300, 60, 175, 500, 125, 75, 1000, 120, 200, 90, 600]//.reverse();

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
                          segment = Math.ceil((percent / 6)),  //divided by number of segments
                          win = _this.cache.wheelMapping[segment - 1]; //zero based array

                      console.log('spin = ' + spin);
                      console.log('degrees = ' + degrees);
                      console.log('percent = ' + percent);
                      console.log('segment = ' + segment);
                      console.log('win = ' + win);

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
    	$this->items = $this->spin_model->getItems();
    	$this->onReset();
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
    		$isUpdate = $this->spin_model->updateRate($item->spin_id);
    	}
    	echo $random;
    	echo '<pre>';print_r($total);
    	echo '<pre>';print_r($item);
    	echo '<pre>';print_r($this->items);
    }
    function onReset(){
    	if(!$this->items){
    		$this->spin_model->resetRate();
    		$this->items = $this->spin_model->getItems();
    	}
    }
}