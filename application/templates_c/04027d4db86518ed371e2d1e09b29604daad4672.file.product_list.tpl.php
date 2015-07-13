<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-06 17:23:03
         compiled from "application\templates\cake\product_list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:31078559a32279edf65-88540499%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '04027d4db86518ed371e2d1e09b29604daad4672' => 
    array (
      0 => 'application\\templates\\cake\\product_list.tpl',
      1 => 1436177406,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '31078559a32279edf65-88540499',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559a3227a77e08_61701943',
  'variables' => 
  array (
    'cate' => 0,
    'foo' => 0,
    'product_list' => 0,
    'paging' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559a3227a77e08_61701943')) {function content_559a3227a77e08_61701943($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/meta.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/head.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/slider.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<div class="space-line"></div>
<div class="space-line"></div>
<div class="container">
            <div class="white-box">
                <div class="container">
					<div class="text-center">
                        <?php if ($_smarty_tpl->tpl_vars['cate']->value->cat_id==419) {?>
                        <a href="/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->cat_alias, ENT_QUOTES, 'UTF-8', true);?>
">
						<img src="/assets/cake/images/bsn.png" title="Bánh sinh nhật" alt="Bánh sinh nhật"/><br/>
                        </a>
                        <?php } elseif ($_smarty_tpl->tpl_vars['cate']->value->cat_id==420) {?>
                        <a href="/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->cat_alias, ENT_QUOTES, 'UTF-8', true);?>
">
                        <img src="/assets/cake/images/bc.png" title="Bánh cưới" alt="Bánh cưới"/><br/>
                        </a>
                        <?php } elseif ($_smarty_tpl->tpl_vars['cate']->value->cat_id==421) {?>
                        <a href="/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->cat_alias, ENT_QUOTES, 'UTF-8', true);?>
">
                        <img src="/assets/cake/images/bv.png" title="Bánh vẽ" alt="Bánh vẽ"/><br/>
                        </a>
                        <?php } elseif ($_smarty_tpl->tpl_vars['cate']->value->cat_id==422) {?>
                        <a href="/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->cat_alias, ENT_QUOTES, 'UTF-8', true);?>
">
                        <img src="/assets/cake/images/bck.png" title="Bánh cupcake" alt="Bánh cupcake"/><br/>
                        </a>
                        <?php } else { ?>
                        <a href="/san-pham/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->cat_alias, ENT_QUOTES, 'UTF-8', true);?>
">
                        <h3 class="title"><?php echo $_smarty_tpl->tpl_vars['cate']->value->cat_title;?>
</h3>
                        </a>
                        <?php }?>
						<img width="72"  src="/assets/cake/images/line.png"/>
					</div>
                </div>
                <div class="product-list">
                    <?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>
                    <div class="product-item">
                        <div>
                            <div class="nailthumb">
                                <a  href="/thong-tin-banh/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_alias, ENT_QUOTES, 'UTF-8', true);?>
">
                                    <div class="nailthumb-figure-square">
                                        <div class="nailthumb-container">
                                            <img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_thumb, ENT_QUOTES, 'UTF-8', true);?>
" class="lazy"
                                                title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
"
                                                alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" 
                                                />
                                        </div>
                                    </div>
                                </a>
                                <div class="add-to-cart-ico" onclick="dialog('order-dialog')"></div>
                            </div>
                            <div class="product-cap">
                                <a href="d.html"><div class="p-name line-clamp-1"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['foo']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
</div></a>
                                <div class="p-price line-clamp-1"><?php echo number_format((($tmp = @$_smarty_tpl->tpl_vars['foo']->value->product_price)===null||$tmp==='' ? 0 : $tmp),0,',',' ');?>
 đ</div>
                            </div>
                        </div>
                    </div>
                    <?php }
if (!$_smarty_tpl->tpl_vars['foo']->_loop) {
?>
                    <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Dữ liệu đang cập nhật.</div>
                    <?php } ?>
                    <div class="clearfix"></div>
                    <?php echo $_smarty_tpl->tpl_vars['paging']->value;?>

                </div>
            </div>
        </div>
<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/foot.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/orderpopup.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
