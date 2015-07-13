<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-10 15:49:47
         compiled from "application\templates\cake\home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:18474559a22350e1bd1-42037326%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5857f599c6fa3c2a466ff79aa609edf45d86c5f3' => 
    array (
      0 => 'application\\templates\\cake\\home.tpl',
      1 => 1436450131,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18474559a22350e1bd1-42037326',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559a22351b6b85_84228806',
  'variables' => 
  array (
    'bsn_list' => 0,
    'foo' => 0,
    'bc_list' => 0,
    'bcupket_list' => 0,
    'bv_list' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559a22351b6b85_84228806')) {function content_559a22351b6b85_84228806($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/meta.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/head.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/slider.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<div class="space-line"></div><?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/like-button.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<div class="space-line"></div><div class="container"><div class="white-box"><div class="container"><div class="text-center"><a href="/banh-sinh-nhat"><div class="cake-title"><img src="/assets/cake/images/bsn.png" title="Bánh sinh nhật" alt="Bánh sinh nhật" /><span class="more pull-right">Xem thêm »</span></div></a><img width="72"  src="/assets/cake/images/line.png"/></div></div><div class="product-list"><?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['bsn_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?><div class="product-item"><div><div class="nailthumb"><a  href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
"><div class="nailthumb-figure-square"><div class="nailthumb-container"><img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_thumb, ENT_QUOTES, 'UTF-8', true);?>
" class="lazy" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" /></div></div></a><div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
'"></div></div><div class="product-cap"><a href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
"><div class="p-name line-clamp-1"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
</div></a><div class="p-price line-clamp-1"><?php echo number_format((($tmp = @$_smarty_tpl->tpl_vars['foo']->value->product_price)===null||$tmp==='' ? 0 : $tmp),0,',',' ');?>
 đ</div></div></div></div><?php }
if (!$_smarty_tpl->tpl_vars['foo']->_loop) {
?><div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Dữ liệu đang cập nhật.</div><?php } ?><div class="clearfix"></div><div class="space-line"></div><div class="space-line"></div><div class="space-line"></div><div class="container"><div class="text-center"><a href="/banh-cuoi"><div class="cake-title"><img src="/assets/cake/images/bc.png" title="Bánh cưới" alt="Bánh cưới"/><span class="more pull-right">Xem thêm »</span></div></a><img width="72"  src="/assets/cake/images/line.png"/></div></div><?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['bc_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?><div class="product-item"><div><div class="nailthumb"><a  href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
"><div class="nailthumb-figure-square"><div class="nailthumb-container"><img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_thumb, ENT_QUOTES, 'UTF-8', true);?>
" class="lazy" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" /></div></div></a><div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
'"></div></div><div class="product-cap"><a href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
"><div class="p-name line-clamp-1"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
</div></a><div class="p-price line-clamp-1"><?php echo number_format((($tmp = @$_smarty_tpl->tpl_vars['foo']->value->product_price)===null||$tmp==='' ? 0 : $tmp),0,',',' ');?>
 đ</div></div></div></div><?php }
if (!$_smarty_tpl->tpl_vars['foo']->_loop) {
?><div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Dữ liệu đang cập nhật.</div><?php } ?><div class="clearfix"></div><div class="space-line"></div><div class="space-line"></div><div class="space-line"></div><div class="container"><div class="text-center"><a href="/banh-cupcake"><div class="cake-title"><img src="/assets/cake/images/bck.png" title="Bánh cupcake" alt="Bánh cupcake"/><span class="more pull-right">Xem thêm »</span></div></a><img width="72"  src="/assets/cake/images/line.png"/></div></div><?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['bcupket_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?><div class="product-item"><div><div class="nailthumb"><a  href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
"><div class="nailthumb-figure-square"><div class="nailthumb-container"><img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_thumb, ENT_QUOTES, 'UTF-8', true);?>
" class="lazy" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" /></div></div></a><div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
'"></div></div><div class="product-cap"><a href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
"><div class="p-name line-clamp-1"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
</div></a><div class="p-price line-clamp-1"><?php echo number_format((($tmp = @$_smarty_tpl->tpl_vars['foo']->value->product_price)===null||$tmp==='' ? 0 : $tmp),0,',',' ');?>
 đ</div></div></div></div><?php }
if (!$_smarty_tpl->tpl_vars['foo']->_loop) {
?><div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Dữ liệu đang cập nhật.</div><?php } ?><div class="clearfix"></div><div class="space-line"></div><div class="space-line"></div><div class="space-line"></div><div class="container"><div class="text-center"><a href="/banh-ve"><div class="cake-title"><img src="/assets/cake/images/bv.png" title="Bánh vẽ" alt="Bánh vẽ"/><span class="more pull-right">Xem thêm »</span></div></a><img width="72"  src="/assets/cake/images/line.png"/></div></div><?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['bv_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?><div class="product-item"><div><div class="nailthumb"><a  href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
"><div class="nailthumb-figure-square"><div class="nailthumb-container"><img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_thumb, ENT_QUOTES, 'UTF-8', true);?>
" class="lazy" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" /></div></div></a><div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
'"></div></div><div class="product-cap"><a href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
"><div class="p-name line-clamp-1"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
</div></a><div class="p-price line-clamp-1"><?php echo number_format((($tmp = @$_smarty_tpl->tpl_vars['foo']->value->product_price)===null||$tmp==='' ? 0 : $tmp),0,',',' ');?>
 đ</div></div></div></div><?php }
if (!$_smarty_tpl->tpl_vars['foo']->_loop) {
?><div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Dữ liệu đang cập nhật.</div><?php } ?><div class="clearfix"></div></div></div></div>
<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/foot.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/orderpopup.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
