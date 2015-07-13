<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-06 16:20:48
         compiled from "application\templates\cake\contact.tpl" */ ?>
<?php /*%%SmartyHeaderCode:29902559a485ca2b134-32820033%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '94093343f137293c4417a34ee7659ad6966e11d0' => 
    array (
      0 => 'application\\templates\\cake\\contact.tpl',
      1 => 1436174446,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '29902559a485ca2b134-32820033',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559a485ca85490_72572075',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559a485ca85490_72572075')) {function content_559a485ca85490_72572075($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/meta.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/head.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<div class="space-line"></div>
<div class="space-line"></div>
<div class="container">
    <div class="white-box">
    
        <div class="">
            <div style="padding-bottom:44.6%;position:relative">
                <div id="map" style="position:absolute;width:100%;height:100%"></div>
            </div>
            <?php echo '<script'; ?>
 type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 type="text/javascript">
                // When the window has finished loading create our google map below
                google.maps.event.addDomListener(window, 'load', init);
                
                function init() {
                    var lat  = 10.792048, lon = 106.679982;
                    // Basic options for a simple Google Map
                    // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
                    var mapOptions = {
                        // How zoomed in you want the map to start at (always required)
                        zoom: 16,

                        // The latitude and longitude to center the map (always required)
                        center: new google.maps.LatLng(lat, lon), // New York

                        // How you would like to style the map. 
                        // This is where you would paste any style found on Snazzy Maps.
                        styles: [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#575757"}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#fbd8f1"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#fbcdf4"}]},{"featureType":"road","elementType":"geometry","stylers":[{"lightness":100},{"visibility":"simplified"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"visibility":"on"},{"lightness":"100"}]},{"featureType":"transit.line","elementType":"labels.text.stroke","stylers":[{"visibility":"on"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#e84dc1"}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"color":"#d6d6d6"}]},{"featureType":"water","elementType":"labels.text.stroke","stylers":[{"visibility":"off"}]}]
                    };

                    // Get the HTML DOM element that will contain your map 
                    // We are using a div with id="map" seen below in the <body>
                    var mapElement = document.getElementById('map');

                    // Create the Google Map using our element and options defined above
                    var map = new google.maps.Map(mapElement, mapOptions);

                    // Let's also add a marker while we're at it
                    var marker = new google.maps.Marker({
                        position: new google.maps.LatLng(lat, lon),
                        map: map,
                        icon: new google.maps.MarkerImage(
                            '/assets/cake/images/pin_happy.png',
                            new google.maps.Size(40, 56),
                            new google.maps.Point(0, 0),
                            new google.maps.Point(20, 28),
                            new google.maps.Size(40, 56)
                        ),
                        title: 'Bánh Ngon !'
                    });
                    var infowindow = new google.maps.InfoWindow();
                    var content_info ='\
                          <div style="max-width:320px">\
                              <img src="/assets/cake/images/logo-min.png" style="float:left;margin-right:5px"/>\
                              <div><h4 style="margin:0;padding:4px 0;color:#ee4034">Bánh ngon Online</h4></div>\
                              <div>Phone : (+84)982 636 618 - Ms Mai<br/>Email: valikie.nhung@gmail.com</div>\
                              <div>Đ/c : <i>8/18 lê Quý Đôn, Quận phú Nhuận, Tp. Hồ Chí Minh.</i></div>\
                          </div>';
                    infowindow.setPosition(new google.maps.LatLng(lat, lon));
                    infowindow.setContent(content_info);
                    infowindow.open(map,marker); 
                    google.maps.event.addListener(marker, 'click', (function(marker) {
                        
                        return function() {
                            infowindow.open(map, marker);
                        };
                    })(marker));
                }
                
                $(document).ready(function(){
                    
                });
            <?php echo '</script'; ?>
>
        </div>
        <div style="-max-width:880px;margin:auto;text-align:justify">
            <div class="space-line"></div>
            <h3 class="title-01">LIÊN HỆ</h3>
             <div class="space-line"></div>
            <fieldset class="c">
                <legend><h3>Thông Tin Liên Hệ</h3></legend>
                <div class="distance">
                    <p>Email :  phuongnha20042000@yahoo.com</p>
                    <p>Điện thoại : 0962 100 399</p>
                    <p>Hotline :    0962 100 399</p>
                    <p>Địa chỉ :    8/18 lê Quý Đôn, Quận phú Nhuận, Tp. Hồ Chí Minh.</p>
                </div>
            </fieldset>
            <div class="space-line"></div>
            <fieldset class="c">
                <legend><h3>Gửi Yêu Cầu Tới banhngononline</h3></legend>
                <div class="space-line"></div>
                <div class="space-line"></div>                                 
                <form name="advisoryForm" id="advisoryForm" target="integration_asynchronous">
                    <div style="max-width:620px;margin:auto">
                        <div class="row half">
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Họ và tên</div>
                                    <input name="advisory_name" 
                                        class="form-control dark validate[required,minSize[4],maxSize[255]]" 
                                        placeholder="Bùi Thị Thùy Nhung">
                                </div>
                                <div class="space-line"></div>
                            </div>
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Số điện thoại</div>
                                    <input name="advisory_name" 
                                        class="form-control dark validate[required,minSize[4],maxSize[255]]" 
                                        placeholder="0168 xxx xxx">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Email</div>
                                    <input name="advisory_email" value="" class="form-control dark validate[required,custom[email]]" placeholder="nhungbui@yahoo.com">
                                </div>
                                <div class="space-line"></div>
                            </div>
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Địa chỉ</div>
                                    <input name="advisory_title" class="form-control dark validate[required]" placeholder="181 Hồng Lạc, P.10, Q.Tân Bình">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-12 half">
                                <div class="input-group">
                                    <div>Tiêu đề</div>
                                    <input name="advisory_email" value="" class="form-control dark validate[required,custom[email]]" placeholder="Tiêu đề">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-12 half">
                                <div class="input-group">
                                    <div>Nội dung</div>
                                    <textarea name="advisory_desc" rows="5" class="form-control dark validate[required]" placeholder="Gọi cho tôi trước khi giao hàng(trước 15 phút)"></textarea>
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                    
                        <input type="hidden" name="advisory_type" value="advisory">
                        <div class="row half">
                            <div class="col-xs-6 half">
                                
                            </div>
                            <div class="col-xs-6 half">
                                <button class="btn btn-default btn-block" type="button" onclick="registerfn()">Gửi yêu cầu</button>
                            </div>
                        </div>
                    </div>
                </form>
            </fieldset>
            <div class="space-line"></div>
            <div class="space-line"></div>
            <img src="/assets/cake/images/hoa.png" style="margin:auto;display:block"/>
            <div class="space-line"></div>
        </div>
        
    </div>
</div>
<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/foot.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/orderpopup.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
