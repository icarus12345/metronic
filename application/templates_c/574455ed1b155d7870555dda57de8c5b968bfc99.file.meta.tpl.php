<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-24 16:23:43
         compiled from "application\templates\dashboard\inc\meta.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2544355a5daaab3d8a8-07390930%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '574455ed1b155d7870555dda57de8c5b968bfc99' => 
    array (
      0 => 'application\\templates\\dashboard\\inc\\meta.tpl',
      1 => 1437729739,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2544355a5daaab3d8a8-07390930',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55a5daaaca1674_94748565',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55a5daaaca1674_94748565')) {function content_55a5daaaca1674_94748565($_smarty_tpl) {?><!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
	<!--<![endif]-->
	<!-- BEGIN HEAD -->
	<head>
		<meta charset="utf-8"/>
		<title>.:: CPANEL - 1109 | Admin Dashboard Template ::.</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1.0" name="viewport"/>
		<meta content="" name="description"/>
		<meta content="khuongxuantruong@gmail.com" name="author"/>
		<link rel="shortcut icon" href="/libraries/images/tk1109_green.jpg" type="image/x-icon">
		<!-- BEGIN GLOBAL MANDATORY STYLES -->
		<!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/> -->
		<link href="/libraries/bootstrap/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
		<link href='/libraries/ui/themes/base/jquery.ui.all.css' rel='stylesheet' type='text/css'>
		<link href="/libraries/metronic/theme/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/global/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
		<!-- END GLOBAL MANDATORY STYLES -->
		<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
		<!-- <link href="/libraries/metronic/theme/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/> -->
		<!-- <link href="/libraries/metronic/theme/assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/> -->
		<!-- <link href="/libraries/metronic/theme/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/> -->
		<!-- END PAGE LEVEL PLUGIN STYLES -->
		<!-- BEGIN PAGE STYLES -->
		<!-- <link href="/libraries/metronic/theme/assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/> -->
		<link rel="stylesheet" type="text/css" href="/libraries/metronic/theme/assets/global/plugins/bootstrap-toastr/toastr.min.css"/>
		<link rel="stylesheet" type="text/css" href="/libraries/metronic/theme/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>
		<!-- END PAGE STYLES -->
		<!-- BEGIN THEME STYLES -->
		<!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
		<link href="/libraries/metronic/theme/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/admin/layout/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
		<link href="/libraries/metronic/theme/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
		<!-- END THEME STYLES -->
		<link rel="shortcut icon" href="favicon.ico"/>

		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
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
 type="text/javascript" src="/libraries/ui/js/jquery-ui-1.9.2.custom.min.js"><?php echo '</script'; ?>
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
		<!-- // <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"><?php echo '</script'; ?>
> -->
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"><?php echo '</script'; ?>
>
		<!-- // <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"><?php echo '</script'; ?>
> -->
		<!-- // <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"><?php echo '</script'; ?>
> -->
		<!-- END CORE PLUGINS -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.pulsate.min.js" type="text/javascript"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"><?php echo '</script'; ?>
>
		<!-- // <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"><?php echo '</script'; ?>
> -->
		<!-- IMPORTANT! fullcalendar depends on jquery-ui.min.js for drag & drop support -->
		<!-- // <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"><?php echo '</script'; ?>
> -->
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"><?php echo '</script'; ?>
>
		<!-- <?php echo '<script'; ?>
 type="text/javascript" src="/libraries/metronic/theme/assets/global/plugins/select2/select2.min.js"><?php echo '</script'; ?>
> -->
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-contextmenu/bootstrap-contextmenu.js"><?php echo '</script'; ?>
>

		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/pages/scripts/components-context-menu.js" type="text/javascript"><?php echo '</script'; ?>
>


		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/scripts/metronic.js" type="text/javascript"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/layout/scripts/layout.js" type="text/javascript"><?php echo '</script'; ?>
>
		<!-- // <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"><?php echo '</script'; ?>
> -->
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/layout/scripts/demo.js" type="text/javascript"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/pages/scripts/index.js" type="text/javascript"><?php echo '</script'; ?>
>
		<!-- // <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/pages/scripts/tasks.js" type="text/javascript"><?php echo '</script'; ?>
> -->
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/plugins/bootstrap-toastr/toastr.min.js"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/pages/scripts/ui-toastr.js"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 src="/libraries/dashboard/dashboard.js" type="text/javascript"><?php echo '</script'; ?>
>

		<?php echo '<script'; ?>
 type="text/javascript" src="/libraries/plugin/validation-engine/jquery.validationEngine.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 type="text/javascript" src="/libraries/plugin/validation-engine/jquery.validationEngine-en.js"><?php echo '</script'; ?>
>
        <link rel="stylesheet" type="text/css" href="/libraries/bootstrap/css/bootstrap-select.min.css"/>
        <?php echo '<script'; ?>
 type="text/javascript" src="/libraries/bootstrap/js/bootstrap-select.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 type="text/javascript" src="/libraries/plugin/jquery.serializejson.js"><?php echo '</script'; ?>
>
		<!-- <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/global/scripts/datatable.js"><?php echo '</script'; ?>
> -->
		<!-- <?php echo '<script'; ?>
 src="/libraries/metronic/theme/assets/admin/pages/scripts/ecommerce-products.js"><?php echo '</script'; ?>
> -->

		<!-- END PAGE LEVEL SCRIPTS -->
	</head>
	<!-- END HEAD --><?php }} ?>
