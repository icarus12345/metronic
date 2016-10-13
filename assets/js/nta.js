$(document).ready(function(){
    // $("img.lazy").lazyload({
    //    load: function() {
    //        $(this).removeClass('lazy');
    //        $(this.parentNode).nailthumb();
    //    }
    // });
    $("img.lazy").each(function(){
        $(this).attr('src',$(this).data('original'));
        $(this.parentNode).nailthumb();
    });
    if($('#owl-home-slider').length==1){
        $("#owl-home-slider").owlCarousel({
            autoPlay: false,
            items : 1,
            lazyLoad: true,
            nav : true,
            navText : ["", ""],
            // responsive : {
            //     0:      {items: 1, nav: true},
            //     480:    {items: 2, nav: true},
            //     960:    {items: 3, nav: true},
            //     1200:   {items: 1, nav: true},
            // }
        });
    }
    if($('#owl-partner').length==1){
        $("#owl-partner").owlCarousel({
            autoPlay: false,
            items : 4,
            lazyLoad: true,
            margin: 20,
            nav : true,
            navText : ['<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>'],
            responsive : {
                0:      {items: 2, nav: true},
                480:    {items: 2, nav: true},
                960:    {items: 3, nav: true},
                1200:   {items: 4, nav: true},
            }
        });
    }
    if($('#frmRequest').length == 1){
        $('#frmRequest').validationEngine({
            'scroll': false,
            'isPopup' : true,
            validateNonVisibleFields:true
        });
    }
    if($('.swipebox').length>=1)
        $('a.swipebox').swipebox({useCSS: true});
});
function addNotice(message, type, stick){
    var tit = '';
    if(type==undefined)
        type = 'info';
    if(type=='info'){
        tit = 'Info Notifications'
    }
    if(type=='success'){
        tit = 'Success Notifications'
    }
    if(type=='warning'){
        tit = 'Warning Notifications'
    }
    if(type=='error'){
        tit = 'Error Notifications'
    }
    toastr[type](message, tit)
}
$(window).resize(function(){
	$('.nailthumb-image').each(function(){
		$(this.parentNode).nailthumb();
	});
});
function sendRequest(){
    if( $('#frmRequest').validationEngine('validate') === false){
        addNotice('Please complete input data.','warning');
        return false;
    }
    $('#request-modal').modal('hide');
    $('#frmRequest')[0].reset();
    addNotice('Message have been send success !.','success');
}