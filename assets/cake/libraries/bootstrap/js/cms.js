if (typeof String.prototype.repeater !== 'function') {
    String.prototype.repeater = function(count) {
        var a = "";
        for (x = 0; x < count; x++) {
            a += this
        }
        return a
    };
}
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
if (typeof String.prototype.endsWith !== 'function') {
    String.prototype.endsWith = function(str) {
        return this.slice(-str.length) === str;
    };
}
if (typeof String.prototype.startsWith !== 'function') {
    // see below for better implementation!
    String.prototype.startsWith = function(str) {
        return this.indexOf(str) === 0;
    };
}

var pending = 0, notices=[], base_url = '/';

function toggleSidebar(){
	$('body').toggleClass('full-content');
}
function toggleContent(){
	$('#container .content').toggleClass('in');
}
function toggleQuickBar(){
	$('#quick-bar').toggleClass('in');
}
function pendingOn(callback){
	if($('#pending').length==0)
		$('body').append('<div id="pending" class="pending">waiting...</div>');
	$('#pending').show(500,function(){
            if(typeof callback == 'function')callback();
        });
	pending++;
}
function pendingOff(){
	pending--;
	if(pending==0) $('#pending').hide(500);
}
function addNotice(message, type, stick){
	var notice = {};
	var now = new Date();
	var dateTime = now.format("dd/mm/yyyy h:MM:ss TT");
	notice.message = $(
		'<div class="alert ' + type + '">' +
			'<div class="time">' +
				dateTime +
				'<span class="pull-right" aria-hidden="true" data-dismiss="alert">×</span>' +
			'</div>' +
			message +
		'</div>'
	);
	if($('.notices').length==0)
		$('body').append('<div class="notices"><p class="btn btn-default btn-xs" onclick="closeAllNotice()">Close all message</p><div></div></div>');
	$('.notices>div').prepend(notice.message);
	if($('.notices>div>div').length>1) $('.notices>.btn').show();
	else $('.notices>.btn').hide();
	if(type == 'info'){
		if( !stick ){
			setTimeout(function(){closeNotice(notice.message)}, 3000)
			return;
		}
	}
	if(stick != undefined && stick !== true){
		setTimeout(function(){closeNotice(notice.message)}, 3000)
	}
}
function closeNotice(notice){
	notice.remove();
	if($('.notices>div>div').length>1) $('.notices>.btn').show();
	else $('.notices>.btn').hide();
}
function closeAllNotice(){
	$('.notices>div>div').remove();
	if($('.notices>div>div').length>1) $('.notices>.btn').show();
	else $('.notices>.btn').hide();
}
function uidialog(_option) {
    var me = this;
    this.option = {
        'modal': true,
        'type': "notice", //notice,error,question,custom
        'title': null,
        'message': "",
        'uidialog': null,
        'hideclose': false,
        'autoOpen': false,
        'minwidth': '320px',
        'height': 'auto',
        'dialogClass': '',
        'onload': null,
        'onclose': null,
        'onopen': null,
        'callback': null,
        'buttons': null
    };
    var option = this.option;
    if (_option) {
        $.each(_option, function(index, value) {
            option[index] = value;
        });
        this.option = option;
    }
	option.title = "<div class='ui-" + option.type + "'>" + (option.title === null ? "Notice Message !" : option.title) + "</div>";
    if (option.message === null || option.message === undefined) {
        
    } else if (typeof(option.message) === "object") {
        option.uidialog = option.message;
    } else {
        if (option.uidialog == null) {
            var node = 1;
            var $div = $('.ui-dialog-' + node);
            while ($div.length > 0 && !$div.is(":hidden")) {
                node++;
                $div = $('.ui-dialog-' + node);
            }
            if ($div.length === 0) {
                option.uidialog = $('<div/>', {
                    'class': 'ui-dialog-' + node
                }).appendTo($('body'));
            }else option.uidialog = $div;
        }
        if (typeof(option.message) === "string") {
            option.buttons = {
                Close: function() {
                    $(this).dialog("destroy");
                }
            };
            option.uidialog.html('<div style="max-width:320px">' + option.message + '</div>');
        } else {
            //option.uidialog = $("#bckdialog");
            option.uidialog.html("Unkown this message !");
        }
    }
    return {
        'open': function(str) {
            if (str) {
                option.uidialog.html('<div>' + str + '</div>');
                option.buttons = {
                    'Close': function() {
                        $(this).dialog("close");
                    }
                };
            }
            option.uidialog.dialog({
                'modal': option.modal,
                /*autoOpen        : option.autoOpen,*/
                'minwidth': option.minwidth,
                'dialogClass': option.dialogClass,
                'resizable': false,
                'width': 'auto',
                'title': option.title,
                'closeOnEscape': true,
                /*hide                : "explode",*/
                'buttons': option.buttons,
                'open': function(event, ui) {
                    if (option.onopen && typeof(option.onopen) === "function") {
                        try {
                            option.onopen();
                        } catch (e) {}
                    }
                    $(event.target).dialog('widget')
                        .css({
                            'position': 'fixed'
                        })
                        .position({
                            'my': 'center',
                            'at': 'center',
                            'of': window
                        });
                },
                'close': function(event, ui) {
                    if (option.onclose && typeof(option.onclose) === "function") {
                        try {
                            option.onclose();
                        } catch (e) {}
                    }
                },
                'create': function() {
                    if (option.hideclose === true) {
                        $(this).closest(".ui-dialog")
                            .find(".ui-dialog-titlebar-close")
                            .hide();
                    }
                }
            });
        },
        'close': function() {
            option.uidialog.dialog('close');
        }
    };
}
function ConfirmMsg(title, message, callback) {
    if ($("#confirm-dialog").length === 0) {
        $('body').append('<div id="confirm-dialog">'+message+'</div>');
    }
    uidialog({
		'message' : $('#confirm-dialog'),
		'title': title,
		'type':'confirm',
		'buttons' : [{
			'text': 'Confirm',
			'class': 'ui-btn',
			'click': function() {
				if(typeof callback == 'function') callback();
				$(this).dialog("close");
			}
		}, {
			'text': 'Cancel',
			'class': 'ui-btn',
			'click': function() {
				$(this).dialog("close");
			}
		}]
	}).open();
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
            pendingOn(function(){
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
                        addNotice('Sorry. Your request could not be completed. Please check your input data and try again.','danger');
                    }
                });
            });
        }
    };
}
var cms = {};
cms.logMessage = function(){
    setTimeout(function(){
        if($('.message-dropdown').is(":visible")){
            $('.message-dropdown>.log-errors').load('/cms/excution/logquery');
        }
    },500);
}
$(document).ready(function(){
    $('.navbar-toggle').click(toggleSidebar);
});