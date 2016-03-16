/* 
// List Ticker by Alex Fish 
// www.alexefish.com
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
// 2010 Version
//
*/

(function($){
  $.fn.list_ticker = function(options){
    
    var defaults = {
      speed:4000,
          effect:'slide'
    };
    
    var options = $.extend(defaults, options);
    
    return this.each(function(){
      
      var obj = $(this);
      var list = obj.children();
      list.not(':first').hide();
      
      setInterval(function(){
        
        list = obj.children();
        list.not(':first').hide();
        
        var first_li = list.eq(0)
        var second_li = list.eq(1)
                
                if(options.effect == 'slide'){
                        first_li.slideUp();
                        second_li.slideDown(function(){
                                first_li.remove().appendTo(obj);
                        });
                } else if(options.effect == 'fade'){
                        first_li.fadeOut(function(){
                                second_li.fadeIn();
                                first_li.remove().appendTo(obj);
                        });
                }
      }, options.speed)
    });
  };
})(jQuery);