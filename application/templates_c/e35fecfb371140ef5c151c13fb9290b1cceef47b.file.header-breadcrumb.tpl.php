<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-06-25 22:46:14
         compiled from "application\templates\dashboard\content\header-breadcrumb.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5820558c22461fa689-30926079%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e35fecfb371140ef5c151c13fb9290b1cceef47b' => 
    array (
      0 => 'application\\templates\\dashboard\\content\\header-breadcrumb.tpl',
      1 => 1435247147,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5820558c22461fa689-30926079',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_558c22461fc957_92707316',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_558c22461fc957_92707316')) {function content_558c22461fc957_92707316($_smarty_tpl) {?><!-- BEGIN PAGE HEADER-->
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li>
			<i class="fa fa-home"></i>
			<a href="index.html">Home</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="index.html#">Dashboard</a>
		</li>
	</ul>
	<div class="page-toolbar">
		<div id="dashboard-report-range" class="pull-right tooltips btn btn-sm btn-default" data-container="body" data-placement="bottom" data-original-title="Change dashboard date range">
			<i class="icon-calendar"></i>&nbsp; <span class="thin uppercase visible-lg-inline-block"></span>&nbsp; <i class="fa fa-angle-down"></i>
		</div>
	</div>
</div>
<h3 class="page-title">
Dashboard <small>reports & statistics</small>
</h3>
<!-- END PAGE HEADER--><?php }} ?>
