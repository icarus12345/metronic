$(document).ready(function(){
	$("img.lazy").each(function() {
       	$(this).removeClass('lazy');
       	$(this.parentNode).nailthumb();
   	});
	$('.owl-carousel').owlCarousel({
		singleItem : true,
		navigation : true,
		pagination : false
	});
	$('a.swipebox').swipebox({
        useCSS: true,
        callback:function(elm){
        	 console.log(elm)
        }
    });
    $('#orderForm').validationEngine({
        'scroll': false,
        'prettySelect' : true,
        'isPopup' : true,
        validateNonVisibleFields:true
    });
    $('#contactForm').validationEngine({
        'scroll': false,
        'prettySelect' : true,
        'isPopup' : true,
        validateNonVisibleFields:true
    });
    $('.nailthumb-container>img').one('error', function() {
        this.src = ('/libraries/images/image_available.gif')
    });
})
var pending = 0;
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
function dialogMsg(msg,tit){
    if(tit && tit != undefined)
        $('#dialogMsg .head').html(tit);
    $('#dialogMsg .body').html(msg);
    $('#dialogMsg').addClass('in')
}
function closeMsg(){
    $('#dialogMsg').removeClass('in')
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
function dialog(elmid){
	var elm = document.getElementById(elmid);
	if(!$(elm).hasClass('in')){
		// $('.dialog').css({display:'none'});
		$('.dialog').removeClass('in');
		// elm.style.display='table';
		$(elm).addClass('in')
	}else{
		$(elm).removeClass('in')
		// elm.style.display='none';
	}
}
function order(){
    if( $('#orderForm').validationEngine('validate') === false){
        alert('Please complete input data.');
        return false;
    }
    var Params =$('#orderForm').serializeObject();
    $('.dfoot').hide();
    httpRequest({
        'url': '/frontend/excution/sendMessage',
        'data': {
            "params": Params
        },
        'callback': function(rs) {
            if(rs.result<0){
            }else{
                $('.dfoot').show();
                document.orderForm.reset();
                dialog('order-dialog');
            }
            alert(rs.message);
        }
    }).call();
}
function contactus(){
    if( $('#contactForm').validationEngine('validate') === false){
        alert('Please complete input data.');
        return false;
    }
    var Params =$('#contactForm').serializeObject();
    $('#contactForm button').hide();
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
        }
    }).call();
}
