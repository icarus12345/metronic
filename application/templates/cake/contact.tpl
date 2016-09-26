[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]

<div class="space-line"></div>
<div class="space-line"></div>
<div class="container">
    <div class="white-box">
    
        <div class="">
            <div style="padding-bottom:44.6%;position:relative">
                <div id="map" style="position:absolute;width:100%;height:100%"></div>
            </div>
            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
            <script type="text/javascript">
                // When the window has finished loading create our google map below
                google.maps.event.addDomListener(window, 'load', init);
                function init() {
                    var latlon = [[{$settting_data['google-map']}]];
                    var lat  = latlon[0], lon = latlon[1];
                    // Basic options for a simple Google Map
                    // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
                    [{literal}]
                    var mapOptions = {
                        // How zoomed in you want the map to start at (always required)
                        zoom: 16,

                        // The latitude and longitude to center the map (always required)
                        center: new google.maps.LatLng(lat, lon), // New York

                        // How you would like to style the map. 
                        // This is where you would paste any style found on Snazzy Maps.
                        styles: [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#575757"}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#fbd8f1"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#fbcdf4"}]},{"featureType":"road","elementType":"geometry","stylers":[{"lightness":100},{"visibility":"simplified"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"visibility":"on"},{"lightness":"100"}]},{"featureType":"transit.line","elementType":"labels.text.stroke","stylers":[{"visibility":"on"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#e84dc1"}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"color":"#d6d6d6"}]},{"featureType":"water","elementType":"labels.text.stroke","stylers":[{"visibility":"off"}]}]
                    };
                    [{/literal}]
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
                          <div style="width:320px">\
                              <img src="/assets/cake/images/logo-min.png" style="float:left;margin-right:5px"/>\
                              <div><h4 style="margin:0;padding:4px 0;color:#ee4034">Bánh ngon Online</h4></div>\
                              <div>Phone : [{$settting_data['phone']|default:''|escape:'html'}]<br/>Email: [{$settting_data['email']|default:''|escape:'html'}]</div>\
                              <div>Đ/c : <i>[{$settting_data['address']|default:''|escape:'html'}]</i></div>\
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
            </script>
        </div>
        <div style="-max-width:880px;margin:auto;text-align:justify">
            <div class="space-line"></div>
            <h3 class="title-01">LIÊN HỆ</h3>
             <div class="space-line"></div>
            <fieldset class="c">
                <legend><h3>Thông Tin Liên Hệ</h3></legend>
                <div class="distance">
                    <p>Email :  [{$settting_data['email']|default:''|escape:'html'}]</p>
                    <p>Điện thoại : [{$settting_data['phone']|default:''|escape:'html'}]</p>
                    <p>Hotline :    [{$settting_data['phone']|default:''|escape:'html'}]</p>
                    <p>Địa chỉ :    [{$settting_data['address']|default:''|escape:'html'}]</p>
                </div>
            </fieldset>
            <div class="space-line"></div>
            <fieldset class="c">
                <legend><h3>Gửi Yêu Cầu Tới banhngononline</h3></legend>
                <div class="space-line"></div>
                <div class="space-line"></div>                                 
                <form name="contactForm" id="contactForm" target="integration_asynchronous">
                    <div style="max-width:620px;margin:auto">
                        <div class="row half">
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Họ và tên</div>
                                    <input 
                                        name="contact_name" 
                                        class="form-control dark validate[required,minSize[4],maxSize[255]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Ví dụ : Trường Khương">
                                </div>
                                <div class="space-line"></div>
                            </div>
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Số điện thoại</div>
                                    <input 
                                        name="contact_phone" 
                                        class="form-control dark validate[required,minSize[7],maxSize[12]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Ví dụ : 0985 747 240">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Email</div>
                                    <input 
                                        name="contact_email" value="" 
                                        class="form-control dark validate[required,custom[email],maxSize[100]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Ví dụ : khuongxuantruong@gmail.com">
                                </div>
                                <div class="space-line"></div>
                            </div>
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Địa chỉ</div>
                                    <input 
                                        name="contact_data" 
                                        class="form-control dark validate[required,minSize[20],maxSize[255]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Ví dụ : 181 Hồng Lạc, P.10, Q.Tân Bình">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-12 half">
                                <div class="input-group">
                                    <div>Tiêu đề</div>
                                    <input 
                                        name="contact_subject" 
                                        class="form-control dark validate[required,minSize[20],maxSize[255]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Ví dụ : Tôi muốn học làm bánh kem">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-12 half">
                                <div class="input-group">
                                    <div>Nội dung</div>
                                    <textarea 
                                        name="contact_message" 
                                        class="form-control dark validate[required,minSize[20],maxSize[4000]]"
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Ví dụ : Vợ tôi muốn học làm bánh và mở tiệm bánh, Ad có thể giúp tôi không"></textarea>
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                    
                        <input type="hidden" name="contact_type" value="Contact us">
                        <div class="row half">
                            <div class="col-xs-6 half">
                                
                            </div>
                            <div class="col-xs-6 half">
                                <button class="btn btn-default btn-block" type="button" onclick="contactus()">Gửi yêu cầu</button>
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
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/orderpopup.tpl"}]