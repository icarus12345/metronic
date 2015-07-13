<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-06 19:08:59
         compiled from "application\templates\dashboard\inc\footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16824558c1fbbcbd222-49694309%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a89d73e049154f4c9134591271abe34a197c275e' => 
    array (
      0 => 'application\\templates\\dashboard\\inc\\footer.tpl',
      1 => 1436184537,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16824558c1fbbcbd222-49694309',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_558c1fbbcbf089_57396206',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_558c1fbbcbf089_57396206')) {function content_558c1fbbcbf089_57396206($_smarty_tpl) {?><!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Metronic by keenthemes. <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->

<?php echo '<script'; ?>
>
jQuery(document).ready(function() {    
	Metronic.init(); // init metronic core componets
	Layout.init(); // init layout
	// QuickSidebar.init(); // init quick sidebar
	Demo.init(); // init demo features 
	Index.init();   
	// Index.initDashboardDaterange();
	//Index.initJQVMAP(); // init index page's custom scripts
	Index.initCalendar(); // init index page's custom scripts
	//Index.initCharts(); // init index page's custom scripts
	Index.initChat();
	//Index.initMiniCharts();
	// Tasks.initDashboardWidget();
	//EcommerceProducts.init();
	ComponentsContextMenu.init();
	UIToastr.init();

	var _menu = $('.page-sidebar-menu a[href^="/<?php echo uri_string('');?>
"]');
	if(_menu.length==1){
		var _menus = _menu.parents('li');
		_menus.find('>a').click();
		$(_menus[_menus.length-1]).addClass('active start');
		$(_menus[_menus.length-1]).find('>a>.title').after('<span class="selected"></span>');
		$('.page-sidebar-menu a[href^="/<?php echo uri_string('');?>
"]').parent().addClass('open')
	}else{
		$('.page-sidebar-menu>li:nth-child(4)>a').click()
		$('.page-sidebar-menu>li:nth-child(4)').addClass('active start');
		$('.page-sidebar-menu>li:nth-child(4)>a>.title').after('<span class="selected"></span>');
	}
});
<?php echo '</script'; ?>
>
<!-- END JAVASCRIPTS --><?php }} ?>
