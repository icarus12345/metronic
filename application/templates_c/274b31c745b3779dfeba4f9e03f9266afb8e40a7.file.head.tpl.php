<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-10 15:49:48
         compiled from "application\templates\cake\inc\head.tpl" */ ?>
<?php /*%%SmartyHeaderCode:21161559a22578b6ff0-00708243%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '274b31c745b3779dfeba4f9e03f9266afb8e40a7' => 
    array (
      0 => 'application\\templates\\cake\\inc\\head.tpl',
      1 => 1436436325,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21161559a22578b6ff0-00708243',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559a22578eb0f2_22369737',
  'variables' => 
  array (
    'cates' => 0,
    'foo' => 0,
    'fecog' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559a22578eb0f2_22369737')) {function content_559a22578eb0f2_22369737($_smarty_tpl) {?><div class="head-banner"><div class="container"><a href="/" class="logo"><img src="/assets/cake/images/logo.png"/></a><div class="slogan"><img src="/assets/cake/images/slogan.png"/></div><a href="" class="hot-line"><img src="/assets/cake/images/hot-line.png"/></a><div class="cart-info"><span>0</span></div></div></div><header id="navbar" class="navbar" role="banner"><div class="container"><div><div class="navbar-header"><button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse"><span><span class="icon-bar line-1"></span><span class="icon-bar line-2"></span><span class="icon-bar line-3"></span></span></button></div><nav id="navigation" class="collapse navbar-collapse bs-navbar-collapse" role="navigation" style="overflow: hidden" ><ul class="nav navbar-nav"><li><a href='/'>Trang chủ</a></li><li><a href="#" data-toggle="dropdown">Sản Phẩm</a><ul class="dropdown-menu"><?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cates']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?><li><a href="<?php if (!in_array($_smarty_tpl->tpl_vars['foo']->value->cat_alias,$_smarty_tpl->tpl_vars['fecog']->value['knownCate'])) {?>/san-pham<?php }?>/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->cat_alias, ENT_QUOTES, 'UTF-8', true);?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->cat_title, ENT_QUOTES, 'UTF-8', true);?>
</a></li><?php } ?></ul></li><!-- <li><a href="#" onclick="dialog('order-dialog')">Đặt hàng</a></li> --><li><a href="#" data-toggle="dropdown">Ảnh đẹp</a><ul class="dropdown-menu"><li><a href='#'>Ảnh đẹp trong tháng</a></li><li><a href='#'>Album bánh cưới</a></li><li><a href='#'>Album bánh sinh nhật</a></li></ul></li><li><a href="/cong-thuc">Công thức</a></li><li><a href="/day-nghe">Dạy nghề</a></li><li><a href="/nguyen-lieu">Nguyên liệu</a></li><li><a href="/lien-he" -onclick="dialog('order-dialog')">Liên Hệ</a></li></ul></nav></div></div></header><?php }} ?>
