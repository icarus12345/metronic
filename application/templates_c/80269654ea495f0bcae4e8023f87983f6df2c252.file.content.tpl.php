<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-06-25 22:31:52
         compiled from "application\templates\dashboard\inc\content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16032558c1a9fa00bb1-61966122%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '80269654ea495f0bcae4e8023f87983f6df2c252' => 
    array (
      0 => 'application\\templates\\dashboard\\inc\\content.tpl',
      1 => 1435246211,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16032558c1a9fa00bb1-61966122',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_558c1a9fa1aca6_57299309',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_558c1a9fa1aca6_57299309')) {function content_558c1a9fa1aca6_57299309($_smarty_tpl) {?>	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
		<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/content/portlet.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/content/customizer.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/content/header.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/content/pagecontent.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		</div>
	</div>
	<!-- END CONTENT -->
	<?php }} ?>
