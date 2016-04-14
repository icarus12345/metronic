$(document).ready(function(){
    $("img.lazy").lazyload({
       load: function() {
           $(this).removeClass('lazy');
           $(this.parentNode).nailthumb();
       }
    });
    // $("img.lazy").each(function(){
    //     $(this).attr('src',$(this).data('original'));
    //     $(this.parentNode).nailthumb();
    // });
    var owl1,owl2;
    if($('#owl-product-detail').length==1){
        owl1 = $("#owl-product-detail").owlCarousel({
            autoPlay: false,
            // margin:10,
            items : 1,
            lazyLoad: true,
            nav : false,
            navText : ['<i class="fa fa-angle-left fa-2"></i>', '<i class="fa fa-angle-right fa-2"></i>'],
            responsive : {
                0:      {items: 1, nav: false}
            }
        });
    }
    if($('#owl-product-thumb').length==1){
        owl2 = $("#owl-product-thumb").owlCarousel({
            autoPlay: false,
            // margin:10,
            items : 3,
            lazyLoad: true,
            nav : false,
            navText : ['<i class="fa fa-angle-left fa-2"></i>', '<i class="fa fa-angle-right fa-2"></i>'],
            // responsive : {
            //     0:      {items: 3, nav: false}
            // }
            
        });
    }
    if($('#owl-video').length==1){
        $("#owl-video").owlCarousel({
            autoPlay: false,
            margin:10,
            items : 4,
            lazyLoad: true,
            nav : true,
            navText : ['<i class="fa fa-angle-left fa-2"></i>', '<i class="fa fa-angle-right fa-2"></i>'],
            // responsive : {
            //     0:      {items: 3, nav: false}
            // }
            
        });
    }
    if($('#owl-related').length==1){
        $("#owl-related").owlCarousel({
            autoPlay: false,
            items : 3,
            lazyLoad: true,
            nav : true,
            navText : ['<i class="fa fa-angle-left fa-2"></i>', '<i class="fa fa-angle-right fa-2"></i>'],
            responsive : {
                0:      {items: 1, nav: true},
                480:    {items: 2, nav: true},
                960:    {items: 3, nav: true},
                1200:   {items: 4, nav: true},
            }
        });
    }
    if($('#owl-cat-ucm').length==1){
        $("#owl-cat-ucm").owlCarousel({
            autoPlay: false,
            items : 3,
            lazyLoad: true,
            nav : true,
            navText : ['<i class="fa fa-angle-left fa-2"></i>', '<i class="fa fa-angle-right fa-2"></i>'],
            responsive : {
                0:      {items: 1, nav: true},
                480:    {items: 2, nav: true},
                768:    {items: 3, nav: true},
                960:    {items: 4, nav: true},
                1200:   {items: 4, nav: true},
            }
        });
    }
    if($('#owl-gallery').length==1){
        $("#owl-gallery").owlCarousel({
            autoPlay: false,
            items : 2,
            lazyLoad: true,
            nav : true,
            navText : ['', ''],
            center: true,
            loop:true,
            mouseDrag:false,
            touchDrag:false,
            responsive : {
                0:      {items: 1, nav: true},
                768:    {items: 2, nav: true}
            }
        });
    }
    if($('.countdown').length>=1){
    	$('.countdown').each(function(){
    		$(this).html('<div class="countdown play"><ul class="time-count-down-flip time-count-down-days-ten days"><li style="line-height: 40px;" data-digit="3"><span><div class="up"><div class="shadow"></div><div class="inn">3</div></div><div class="down"><div class="shadow"></div><div class="inn">3</div></div></span></li></ul><ul class="time-count-down-flip time-count-down-days-one days"><li data-digit="1" style="line-height: 40px;" class="current"><span><div class="up"><div class="shadow"></div><div class="inn">1</div></div><div class="down"><div class="shadow"></div><div class="inn">1</div></div></span></li></ul><ul class="time-count-down-flip time-count-down-hours-ten hours"><li data-digit="2" style="line-height: 40px;" class="current"><span><div class="up"><div class="shadow"></div><div class="inn">2</div></div><div class="down"><div class="shadow"></div><div class="inn">2</div></div></span></li></ul><ul class="time-count-down-flip time-count-down-hours-one hours"><li data-digit="3" style="line-height: 40px;" class="current"><span><div class="up"><div class="shadow"></div><div class="inn">3</div></div><div class="down"><div class="shadow"></div><div class="inn">3</div></div></span></li></ul><ul class="time-count-down-flip time-count-down-minutes-ten minutes"><li data-digit="5" style="line-height: 40px;" class="current"><span><div class="up"><div class="shadow"></div><div class="inn">5</div></div><div class="down"><div class="shadow"></div><div class="inn">5</div></div></span></li></ul><ul class="time-count-down-flip time-count-down-minutes-one minutes"><li data-digit="4" style="line-height: 40px;" class="current"><span><div class="up"><div class="shadow"></div><div class="inn">4</div></div><div class="down"><div class="shadow"></div><div class="inn">4</div></div></span></li></ul><ul class="time-count-down-flip time-count-down-seconds-ten seconds"><li data-digit="4" style="line-height: 40px;" class="current"><span><div class="up"><div class="shadow"></div><div class="inn">4</div></div><div class="down"><div class="shadow"></div><div class="inn">4</div></div></span></li></ul><ul class="time-count-down-flip time-count-down-seconds-one seconds"><li data-digit="9" style="line-height: 40px;" class="current"><span><div class="up"><div class="shadow"></div><div class="inn">9</div></div><div class="down"><div class="shadow"></div><div class="inn">9</div></div></span></li></ul></div>');
    	});
	}
    if($('.swipebox').length>=1)
        $('a.swipebox').swipebox({useCSS: true});
    if($('#contactForm').length==1)
    $('#contactForm').validationEngine({
        'scroll': false,
        'prettySelect' : true,
        'isPopup' : true,
        validateNonVisibleFields:true
    });
});
$.fn.serializeObject = function() {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};
function pendingOn(callback){
    if($('#pending').length==0)
        $('body').append('<div id="pending" class="spinner pending"></div>');
    $('#pending').show(500,function(){
        if(typeof callback == 'function')
            callback();
    });
    pending++;
}
function pendingOff(){
    pending--;
    if(pending==0) $('#pending').hide(500);
}
function httpRequest(_option) {
    var option = {
        'url': null,
        'data': null,
        'datatype': "json",
        'before': null,
        'after': null,
        'callback': null
    };
    if (_option)
        $.each(_option, function(index, value) {
            option[index] = value;
        });
    return {
        'call': function(_url, _data, _callback) {
            if (_url)
                option.url = _url;
            if (_data)
                option.data = _data;
            if (_callback)
                option.callback = _callback;
            if (typeof(option.before) === 'function')
                option.before();
            else {
                pendingOn();
            }
            jQuery.ajax({
                type: "POST",
                //cache:false,
                //timeout:10000,
                data: option.data,
                dataType: option.datatype,
                url: option.url,
                success: function(data_result) {
                    if (typeof(option.callback) === 'function')
                        option.callback(data_result);
                    if (typeof(option.after) === 'function')
                        option.after();
                    else {
                        pendingOff();
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    if (typeof(option.after) === 'function')
                        option.after();
                    else {
                        pendingOff();
                    }
                    alert('Sorry. Your request could not be completed. Please check your input data and try again.');
                }
            });
        }
    };
}
$(window).resize(function(){
	$('.nailthumb-image').each(function(){
		$(this.parentNode).nailthumb();
	});
})
function contactus(){
    if( $('#contactForm').validationEngine('validate') === false){
        alert('Please complete input data.');
        return false;
    }
    var Params =$('#contactForm').serializeObject();
    $('#contactForm button').hide();
    $('.message').html('Đang xử lý...');
    httpRequest({
        'url': '/frontend/excution/sendMessage',
        'data': {
            "params": Params
        },
        'callback': function(rs) {
            if(rs.result<0){
            }else{
                document.contactForm.reset();
                $('#contactForm button').show();
            }
            alert(rs.message);
            $('.message').html('');
        }
    }).call();
}