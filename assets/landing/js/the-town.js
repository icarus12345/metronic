// JavaScript Document
  
  
// niceScroll
$(document).ready(function () {
    $("body").niceScroll({
       cursorborder: "1px solid #fff",
	   cursorborderradius: "0px",
	   zindex: "9999",
       cursorcolor: "#fff",
       background: "rgba(255, 255, 255, 0.1)",
       scrollspeed: "60",
       mousescrollstep: "40"
    });
});


// niceScroll || scrollbars resize
$("body").getNiceScroll().resize();
	
	
// countdown animation
$(function(){
		   
			$("ul.button").delay(2200).animate({
			   right: 0
			}, 800);
			
			$(".countdown-animation .countdown-bg").delay(1400).animate({
			   height: 90,
			   top: 0
			}, 800);
			
			$("a.close").click(function(){
			$(".countdown-animation .countdown-bg").stop().animate({
			   height: 0,
			   top: 89
			}, 300);
				
			$("ul.button a.open").stop().animate({
			   left: 0
			}, 300);
				
			$("ul.button a.close").stop().animate({
			   left: -30
			}, 300);
			});
			
			
			$("ul.button a.open").click(function(){
			$(".countdown-animation .countdown-bg").stop().animate({
			   height: 90,
			   top: 0
			}, 800);
				
			$("ul.button a.open").stop().animate({
			   left: 30
			}, 300);
				
			$("ul.button a.close").stop().animate({
			   left: 0
			}, 300);
			});

});


// function for the vertical scrolling effect
$(function() {
    $('.go-under, .go-way-under, .go-way-up').bind('click',function(event){
        var $anchor = $(this);
 
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1000,'easeInOutExpo');
        /*
        if you don't want to use the easing effects:
        $('html, body').stop().animate({
           scrollTop: $($anchor.attr('href')).offset().top
        }, 1000);
        */
        event.preventDefault();
    });
});


// twitter ticker
      jQuery(function($){
        $("#ticker").tweet({
          username: "enihilo",
          page: 1,
          avatar_size: 0,
          count: 20,
          loading_text: "loading"
        }).bind("loaded", function() {
          var ul = $(this).find(".tweet_list");
          var ticker = function() {
            setTimeout(function() {
              ul.find('li:first').animate( {marginTop: '-70px'}, 500, function() {
                $(this).detach().appendTo(ul).removeAttr('style');
              });
              ticker();
            }, 8000);
          };
          ticker();
        });
      });
	  
	  
// twitter ticker settings
$(document).ready(function(){
        $(this).find(".tweet_list").list_ticker({
                speed: 8000,
                effect: 'fade' // fade, slide
        })             
})


// mobile-detect
	var isMobile = {
        Android: function() {
            return navigator.userAgent.match(/Android/i);
        },
        BlackBerry: function() {
            return navigator.userAgent.match(/BlackBerry/i);
        },
        iOS: function() {
            return navigator.userAgent.match(/iPhone|iPad|iPod/i);
        },
        Opera: function() {
            return navigator.userAgent.match(/Opera Mini/i);
        },
        Windows: function() {
            return navigator.userAgent.match(/IEMobile/i);
        },
        any: function() {
            return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
        }
    };