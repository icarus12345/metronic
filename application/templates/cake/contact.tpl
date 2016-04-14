[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
<script type="text/javascript" src="/assets/cake/libraries/plugin/validation-engine/jquery.validationEngine.js"></script>
<script type="text/javascript" src="/assets/cake/libraries/plugin/validation-engine/jquery.validationEngine-vi.js"></script>
<style type="text/css">body{background: #fafafa}</style>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="/">Trang chủ</a></li>
        <li class="active">
            <span>Liên hệ</span>
        </li>
    </ol>
    <div>
            <div class="contact-map">
                <div>
                    <div id="map" style="position:absolute;width:100%;height:100%"></div>
                </div>
                <p class="space-line"></p>
                <p>08/46 Trần Quang Diệu P.10 Q.3 TP.HCM</p>
            </div>
            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
            <script type="text/javascript">
                // When the window has finished loading create our google map below
                google.maps.event.addDomListener(window, 'load', init);
                function init() {
                    var latlon = [10.792048, 106.679982];
                    var lat  = latlon[0], lon = latlon[1];
                    // Basic options for a simple Google Map
                    // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
                    
                    var mapOptions = {
                        // How zoomed in you want the map to start at (always required)
                        zoom: 16,

                        // The latitude and longitude to center the map (always required)
                        center: new google.maps.LatLng(lat, lon), // New York

                        // How you would like to style the map. 
                        // This is where you would paste any style found on Snazzy Maps.
                        styles: [
                            {
                                "featureType": "administrative",
                                "elementType": "labels.text.fill",
                                "stylers": [
                                    {
                                        "color": "#444444"
                                    }
                                ]
                            },
                            {
                                "featureType": "landscape",
                                "elementType": "all",
                                "stylers": [
                                    {
                                        "color": "#f2f2f2"
                                    }
                                ]
                            },
                            {
                                "featureType": "poi",
                                "elementType": "all",
                                "stylers": [
                                    {
                                        "visibility": "off"
                                    }
                                ]
                            },
                            {
                                "featureType": "road",
                                "elementType": "all",
                                "stylers": [
                                    {
                                        "saturation": -100
                                    },
                                    {
                                        "lightness": 45
                                    }
                                ]
                            },
                            {
                                "featureType": "road.highway",
                                "elementType": "all",
                                "stylers": [
                                    {
                                        "visibility": "simplified"
                                    }
                                ]
                            },
                            {
                                "featureType": "road.arterial",
                                "elementType": "labels.icon",
                                "stylers": [
                                    {
                                        "visibility": "off"
                                    }
                                ]
                            },
                            {
                                "featureType": "transit",
                                "elementType": "all",
                                "stylers": [
                                    {
                                        "visibility": "off"
                                    }
                                ]
                            },
                            {
                                "featureType": "water",
                                "elementType": "all",
                                "stylers": [
                                    {
                                        "color": "#46bcec"
                                    },
                                    {
                                        "visibility": "on"
                                    }
                                ]
                            }
                        ]
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
                        title: 'Dụng cụ làm bánh An Phú !'
                    });
                    var infowindow = new google.maps.InfoWindow();
                    var content_info ='\
                          <div style="width:360px;font-size:13px;">\
                              <img src="/assets/cake/images/logo-min.png" style="float:left;margin-right:5px"/>\
                              <div><h4 style="margin:0;padding:4px 0;color:#ee4034">Dụng cụ làm bánh An Phú</h4></div>\
                              <div>Phone : 098 263 6618<br/>Email: hotro@dungculambanhanphu.com</div>\
                              <div>Đ/c : <i>108/46 Trần Quang Diệu P.10 Q.3 TP.HCM</i></div>\
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
    <div class="space-line"></div>
    <div class="space-line"></div>
    <div class="">
        <div class="row">
            <div class="col-lg-9 col-md-8">
                <div class="big-title f24"><b>LIÊN HỆ VỚI CHÚNG TÔI</b></div>
                <div class="space-line"></div>
                <div class="space-line"></div>
                <div><b>CỬA HÀNG DỤNG CỤ LÀM BÁNH AN PHÚ</b></div>
                <div class="space-line"></div>
                <div><i class="fa fa-map-marker"></i> 108/46 Trần Quang Diệu P.10 Q.3 TP.HCM</div>
                <div><i class="fa fa-mobile"></i> 098 263 6618</a></div>
                <div><i class="fa fa-envelope"></i> hotro@dungculambanhanphu.com</a></div>
                <div class="space-line"></div>
                <div class="space-line"></div>
                <div><b>Gửi Yêu Cầu Tới banhngononline</b></div>
                <div class="space-line"></div>
                <div class="space-line"></div>                                 
                <form name="contactForm" id="contactForm" target="integration_asynchronous">
                    <div>
                        <div class="row half">
                            <div class="col-xs-6 half">
                                <div class="input-group">
                                    <div>Họ và tên</div>
                                    <input 
                                        name="contact_name" 
                                        class="form-control dark validate[required,minSize[4],maxSize[255]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="">
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
                                        placeholder="">
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
                                        placeholder="">
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
                                        placeholder="">
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
                                        placeholder="">
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
                                        rows="8" 
                                        class="form-control dark validate[required,minSize[20],maxSize[4000]]"
                                        data-prompt-position="topLeft:0,20"
                                        placeholder=""></textarea>
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                    
                        <input type="hidden" name="contact_type" value="Contact us">
                        <div class="message"></div>
                        <div class="row half">
                            <div class="col-xs-6 half">
                                
                            </div>
                            <div class="col-xs-6 half">
                                <button class="btn btn-info btn-block" type="button" onclick="contactus()">Gửi yêu cầu</button>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="space-line"></div>
                <div class="space-line"></div>
            </div>
            <div class="col-lg-3 col-md-4">
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/accordion-menu.tpl"}]
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/discount-box.tpl"}]
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-box.tpl"}]
            </div>
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]