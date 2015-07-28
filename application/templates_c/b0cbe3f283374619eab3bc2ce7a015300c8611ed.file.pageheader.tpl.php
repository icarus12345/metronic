<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-15 16:35:31
         compiled from "application\templates\dashboard\content\pageheader.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2497355a629630d0709-96852340%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b0cbe3f283374619eab3bc2ce7a015300c8611ed' => 
    array (
      0 => 'application\\templates\\dashboard\\content\\pageheader.tpl',
      1 => 1436451073,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2497355a629630d0709-96852340',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'cname' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55a629631607d4_52726252',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55a629631607d4_52726252')) {function content_55a629631607d4_52726252($_smarty_tpl) {?><!-- BEGIN PAGE HEADER-->

<h3 class="page-title">
	Dashboard <small><?php echo $_smarty_tpl->tpl_vars['cname']->value;?>
</small>
</h3>

<div class="page-bar">
	<ul class="page-breadcrumb">
		<li>
			<i class="fa fa-home"></i>
			<a href="/dashboard">Dashboard</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="/dashboard/cp">Content Provider</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#"><?php echo $_smarty_tpl->tpl_vars['cname']->value;?>
</a>
		</li>
	</ul>
	<!-- <div class="page-toolbar">
		<div id="dashboard-report-range" class="pull-right tooltips btn btn-fit-height grey-salt" data-placement="top" data-original-title="Change dashboard date range">
			<i class="icon-calendar"></i>&nbsp; <span class="thin uppercase visible-lg-inline-block"></span>&nbsp; <i class="fa fa-angle-down"></i>
		</div>
	</div> -->
</div>
<!-- END PAGE HEADER--><?php }} ?>
