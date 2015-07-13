<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-06-25 23:02:56
         compiled from "application\templates\dashboard\inc\script.tpl" */ ?>
<?php /*%%SmartyHeaderCode:26226558c16b1e91292-33958326%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '18e6ddd3503f369e57c05f516b479f09adaef417' => 
    array (
      0 => 'application\\templates\\dashboard\\inc\\script.tpl',
      1 => 1435248174,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '26226558c16b1e91292-33958326',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_558c16b1e955d4_17583010',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_558c16b1e955d4_17583010')) {function content_558c16b1e955d4_17583010($_smarty_tpl) {?><!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/respond.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/excanvas.min.js"><?php echo '</script'; ?>
>
<![endif]-->
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-contextmenu/bootstrap-contextmenu.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.pulsate.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"><?php echo '</script'; ?>
>
<!-- IMPORTANT! fullcalendar depends on jquery-ui.min.js for drag & drop support -->
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"><?php echo '</script'; ?>
>


<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/scripts/metronic.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/layout/scripts/layout.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/pages/scripts/components-context-menu.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/layout/scripts/demo.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/pages/scripts/index.js" type="text/javascript"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/pages/scripts/tasks.js" type="text/javascript"><?php echo '</script'; ?>
>
<!-- END PAGE LEVEL SCRIPTS -->
<?php echo '<script'; ?>
>
	jQuery(document).ready(function() {
		// initiate layout and plugins
		Metronic.init(); // init metronic core components
		Layout.init(); // init current layout
		QuickSidebar.init(); // init quick sidebar
		Demo.init(); // init demo features  // set current page
		ComponentsContextMenu.init(); // init context menu demo
		Index.init();   
		Index.initDashboardDaterange();
		// Index.initJQVMAP(); // init index page's custom scripts
		Index.initCalendar(); // init index page's custom scripts
		//Index.initCharts(); // init index page's custom scripts
		Index.initChat();
		Index.initMiniCharts();
		Tasks.initDashboardWidget();


	});
<?php echo '</script'; ?>
><?php }} ?>
