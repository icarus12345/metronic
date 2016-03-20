$(document).ready(function() {
    $('#regForm').validationEngine({
        'scroll': false,
        'prettySelect': true,
        'isPopup': true
    });
    $('#signinForm').validationEngine({
        'scroll': false,
        'prettySelect': true,
        'isPopup': true
    });
    $('.dialog .tab-content>div').hide();
    $('.dialog .tab-content>div:first-child').show();
    $('.dialog .tab-nav>li').click(function() {
        $('.dialog .tab-nav>li.active').removeClass('active');
        $(this).addClass('active');
        var index = $('.dialog .tab-nav>li').index($(this));
        $('.dialog .tab-content>div').hide();
        $('.dialog .tab-content>div:eq(' + index + ')').show();
    });
    $('.notice').click(function(){
        $(this).hide();
    })
    var spining = false;
    var spinClick = function() {
        if(spining) return;
        spining = true;
        $.ajax({
            type: 'POST',
            dataType: 'json',
            timeout: 10000,
            url: '/landing/home/spin',
            data: null,
            error: function(XMLHttpRequest, status, errorThrown) {
                alert('Hệ thống đang bận, vui lòng thử lại sau.');
                spining = false;
            },
            success: function(data) {
                if (data.result > 0) {
                    if(data.spin_num) $('.spin-num').html(data.spin_num);
                    WHEELOFFORTUNE.spin(data.value,function(){
                        spining = false;
                        $('.notice>div>div').html(data.message);
                        $('.notice').show();
                        $('#his').append('<div>' + data.message + '</div>');
                    })
                }else{;
                    alert(data.message);
                    spining = false;
                }
            }
        });
    }
    $('#spin').click(spinClick);
    
    window.WHEELOFFORTUNE = {

        cache: {},

        init: function() {
            console.log('controller init...');

            var _this = this;
            this.cache.wheel = $('.wheel');
            this.cache.wheelMarker = $('.marker');
            this.cache.wheelSpinBtn = $('#btn-spin');

            //mapping is backwards as wheel spins clockwise //1=win
            this.cache.wheelMapping = ['10', '6', 'May man', '5%', 'Hut', 300, 60, 175, 500, 125, 75, 1000, 120, 200, 90, 600] //.reverse();

            this.cache.wheelSpinBtn.on('click', function(e) {
                e.preventDefault();
                if (!$(this).hasClass('disabled')) {
                    spinClick()
                }
            });

            //reset wheel
            this.resetSpin();

            //setup prize events
            // this.prizeEvents();
        },

        spin: function(index,callback) {
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
            var deg = 360 * 6 + 360 / 16 * ((index || 0)) + 1; //Math.round(Math.random() * 360),
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
            setTimeout(function() {
                //reset marker
                _this.cache.wheelMarker.transition({
                    rotate: '0deg'
                }, 300, 'easeOutQuad');
            }, duration - 500);

            //wheel finish
            setTimeout(function() {
                // did it win??!?!?!
                var spin = _this.cache.wheelPos,
                    degrees = spin % 360,
                    percent = (degrees / 360) * 100,
                    segment = Math.ceil((percent / 6)); //divided by number of segments
                // win = _this.cache.wheelMapping[segment - 1]; //zero based array

                console.log('spin = ' + spin);
                console.log('degrees = ' + degrees);
                console.log('percent = ' + percent);
                console.log('segment = ' + segment);
                // console.log('win = ' + win);

                //display dialog with slight delay to realise win or not.
                setTimeout(function() {
                    //alert('you won '+win+'!');
                    callback();
                }, 700);

                //re-enable wheel spin
                _this.cache.wheelSpinBtn.removeClass('disabled');

            }, duration);

        },

        resetSpin: function() {
            this.cache.wheel.transition({
                rotate: '0deg'
            }, 0);
            this.cache.wheelPos = 0;
        }

    }
    window.WHEELOFFORTUNE.init();
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

function regNotice(msg) {
    $('.regErr').html(msg).show();
}

function signinNotice(msg) {
    $('.signinErr').html(msg).show();
}

function reg() {
    $('.regErr').hide();
    if ($('#regForm').validationEngine('validate') === false) {
        regNotice('Vui lòng nhập đầy đủ thông tin.');
        return false;
    }
    var Params = $('#regForm').serializeObject();
    $.ajax({
        type: 'POST',
        dataType: 'json',
        timeout: 10000,
        url: '/account/register',
        data: {
            params: Params
        },
        error: function(XMLHttpRequest, status, errorThrown) {
            regNotice('Hệ thống đang bận, vui lòng thử lại sau.');
        },
        success: function(data) {
            regNotice(data.message);
            if (data.captchaImg)
                $('#img-captcha')[0].src = data.captchaImg;
            if (data.result > 0) {
                document.regForm.reset();
                window.location.reload();
            }
        }
    });
    return false;
}

function signin() {
    $('.signinErr').hide();
    if ($('#signinForm').validationEngine('validate') === false) {
        signinNotice('Vui lòng nhập đầy đủ thông tin.');
        return false;
    }
    var Params = $('#signinForm').serializeObject();
    $.ajax({
        type: 'POST',
        dataType: 'json',
        timeout: 10000,
        url: '/account/signin',
        data: {
            params: Params
        },
        error: function(XMLHttpRequest, status, errorThrown) {
            signinNotice('Hệ thống đang bận, vui lòng thử lại sau.');
        },
        success: function(data) {
            signinNotice(data.message);
            if (data.result > 0) {
                document.signinForm.reset();
                window.location.reload();
            }
        }
    });
    return false;
}