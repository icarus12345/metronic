<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-10 08:40:39
         compiled from "application\templates\dashboard\cp\product\pageheader.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13954559639ae4a0c12-95147451%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab916e370cf6633e37847e3b0b6d57349a84db63' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\product\\pageheader.tpl',
      1 => 1436451060,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13954559639ae4a0c12-95147451',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559639ae4a3154_89741969',
  'variables' => 
  array (
    'cname' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559639ae4a3154_89741969')) {function content_559639ae4a3154_89741969($_smarty_tpl) {?><!-- BEGIN PAGE HEADER-->

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
