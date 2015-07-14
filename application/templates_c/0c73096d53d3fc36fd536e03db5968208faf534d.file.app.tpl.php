<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-14 14:30:21
         compiled from "application\templates\dashboard\chart\app.tpl" */ ?>
<?php /*%%SmartyHeaderCode:860555a4a5ad394f28-35146848%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0c73096d53d3fc36fd536e03db5968208faf534d' => 
    array (
      0 => 'application\\templates\\dashboard\\chart\\app.tpl',
      1 => 1436859013,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '860555a4a5ad394f28-35146848',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55a4a5ad3ef9b7_19742821',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55a4a5ad3ef9b7_19742821')) {function content_55a4a5ad3ef9b7_19742821($_smarty_tpl) {?><?php if (false) {?><?php echo '<script'; ?>
 type="text/javascript"><?php }?>
var myChart = {
	'date': '<?php echo date('Y-m-d');?>
',
	'openWeekChart': function(table,row,date,type){
		if ($("#weekly-chart-dialog").length === 0) {
	        $('body').append('<div id="weekly-chart-dialog"></div>');
	    }
	    $('#weekly-chart-dialog').html('<div style="width: 100%; height: 340px"></div>');
	    uidialog({
	        'message' : $('#weekly-chart-dialog'),
	        'title': 'Weekly Chart',
	        'width':'640px',
	        'dialogClass':'metronic-modal',
	        'buttons' : [],
	        'onopen' : function(){
	        }
	    }).open();
    	$('#weekly-chart-dialog').load('/dashboard/cp/chart/week/' + table + '/' + row + '/' + date + '/' + type);
	}
}<?php }} ?>
