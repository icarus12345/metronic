<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-09 10:08:57
         compiled from "application\templates\cake\widget\slider.tpl" */ ?>
<?php /*%%SmartyHeaderCode:24622559a22579181d3-16734254%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '60877503d7f7e72b05df2dddafd17991b4e4bbce' => 
    array (
      0 => 'application\\templates\\cake\\widget\\slider.tpl',
      1 => 1436261506,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '24622559a22579181d3-16734254',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559a225791c539_14914602',
  'variables' => 
  array (
    'sliders' => 0,
    'foo' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559a225791c539_14914602')) {function content_559a225791c539_14914602($_smarty_tpl) {?><div class="container"><div class="owl-carousel cake"><?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['sliders']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?><div class="item"><div class="slider"><div class="carousel-content"><div class="nailthumb bg-cover" style="background-image:url('<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->image_src, ENT_QUOTES, 'UTF-8', true);?>
')"><div class="nailthumb-container"><img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->image_src, ENT_QUOTES, 'UTF-8', true);?>
" class="lazy" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->image_title, ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->image_title, ENT_QUOTES, 'UTF-8', true);?>
"></div></div></div><div class="carousel-cap"><img src="/assets/cake/images/slider-cap.png"/><div><div><div class="cap-tit"><div class="line-clamp-1"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->image_title, ENT_QUOTES, 'UTF-8', true);?>
</div></div><div class="cap-desc word-wrap text-justify"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->image_desc, ENT_QUOTES, 'UTF-8', true);?>
</div></div></div></div></div></div><?php } ?></div></div><div class="clearfix"></div>
<?php }} ?>
