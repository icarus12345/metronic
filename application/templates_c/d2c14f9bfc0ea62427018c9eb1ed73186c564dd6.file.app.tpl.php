<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-08 13:36:49
         compiled from "application\templates\dashboard\so\setting\app.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16422559cc3b762e266-43699005%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd2c14f9bfc0ea62427018c9eb1ed73186c564dd6' => 
    array (
      0 => 'application\\templates\\dashboard\\so\\setting\\app.tpl',
      1 => 1436337405,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16422559cc3b762e266-43699005',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559cc3b7686a11_43664704',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559cc3b7686a11_43664704')) {function content_559cc3b7686a11_43664704($_smarty_tpl) {?><?php if (false) {?><?php echo '<script'; ?>
 type="text/javascript"><?php }?>
var myApp = {
	onCommit : function(Url,Params, Id,callback) {
        httpRequest({
            'url': Url,
            'data': {
                'Id': Id,
                'Params': Params
            },
            'callback': function(rsdata) {
                if (rsdata.result < 0) {
                    addNotice(rsdata.message,'error');
                } else {
                    addNotice(rsdata.message,'success');
                    if (typeof callback == 'function') {
                        callback(rsdata);
                    }
                }
            }
        }).call();
    },
	validForm:function(Id){
		$('#entryForm'+Id).validationEngine({
		    'scroll': false,
		    'prettySelect' : true,
		    'isPopup' : false,
		    validateNonVisibleFields:true
		});
	},
	saveForm:function(Id){
		var frm = $('#entryForm'+Id);
		if( frm.validationEngine('validate') === false){
    		addNotice('Please complete input data.','warning');
    		return false;
    	}
    	var Params = frm.serializeObject();
    	this.onCommit('/dashboard/so/data/oncommit/',Params,Id,function(rsdata){
            if(rsdata.result>0){
                
            }
        });
	}
};

$(document).ready(function(){
	$('.forms-entry-list form').each(function(){
		myApp.validForm($(this).data('id'));
	})
})<?php }} ?>
