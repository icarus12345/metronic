<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-06 16:31:18
         compiled from "application\templates\cake\product_detail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11745559a401296c9a5-21038925%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '49ec30d793eaface3886a9a13573fcfb04be8743' => 
    array (
      0 => 'application\\templates\\cake\\product_detail.tpl',
      1 => 1436175076,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11745559a401296c9a5-21038925',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559a4012a0e8e9_83885494',
  'variables' => 
  array (
    'product' => 0,
    'cate' => 0,
    'images' => 0,
    'img' => 0,
    'n' => 0,
    'product_list' => 0,
    'foo' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559a4012a0e8e9_83885494')) {function content_559a4012a0e8e9_83885494($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/meta.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/head.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/slider.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<div class="space-line"></div>
<div class="space-line"></div>
<div class="container">
            <div class="white-box">
                <?php if ($_smarty_tpl->tpl_vars['product']->value) {?>
                <div class="container">
                    <div class="text-center">
                        <?php if ($_smarty_tpl->tpl_vars['cate']->value->cat_id==419) {?>
                        <img src="/assets/cake/images/bsn.png" title="Bánh sinh nhật" alt="Bánh sinh nhật"/><br/>
                        <?php } elseif ($_smarty_tpl->tpl_vars['cate']->value->cat_id==420) {?>
                        <img src="/assets/cake/images/bc.png" title="Bánh cưới" alt="Bánh cưới"/><br/>
                        <?php } elseif ($_smarty_tpl->tpl_vars['cate']->value->cat_id==421) {?>
                        <img src="/assets/cake/images/bv.png" title="Bánh vẽ" alt="Bánh vẽ"/><br/>
                        <?php } elseif ($_smarty_tpl->tpl_vars['cate']->value->cat_id==422) {?>
                        <img src="/assets/cake/images/bck.png" title="Bánh cupcake" alt="Bánh cupcake"/><br/>
                        <?php } else { ?>
                        <h3 class="title"><?php echo $_smarty_tpl->tpl_vars['cate']->value->cat_title;?>
</h3>
                        <?php }?>
                        <img width="72"  src="/assets/cake/images/line.png"/>
                    </div>
                </div>
                <div class="product-detail">
                    <div class="col-sm-4">
                        <div class="space-line"></div>
                        <?php if ((($tmp = @$_smarty_tpl->tpl_vars['product']->value->product_images)===null||$tmp==='' ? '' : $tmp)!='') {?>
                            <?php if (isset($_smarty_tpl->tpl_vars['images'])) {$_smarty_tpl->tpl_vars['images'] = clone $_smarty_tpl->tpl_vars['images'];
$_smarty_tpl->tpl_vars['images']->value = preg_split('/\r\n|[\r\n]/',$_smarty_tpl->tpl_vars['product']->value->product_images); $_smarty_tpl->tpl_vars['images']->nocache = null; $_smarty_tpl->tpl_vars['images']->scope = 0;
} else $_smarty_tpl->tpl_vars['images'] = new Smarty_variable(preg_split('/\r\n|[\r\n]/',$_smarty_tpl->tpl_vars['product']->value->product_images), null, 0);?>
                            <?php if (isset($_smarty_tpl->tpl_vars['img'])) {$_smarty_tpl->tpl_vars['img'] = clone $_smarty_tpl->tpl_vars['img'];
$_smarty_tpl->tpl_vars['img']->value = $_smarty_tpl->tpl_vars['images']->value[0]; $_smarty_tpl->tpl_vars['img']->nocache = null; $_smarty_tpl->tpl_vars['img']->scope = 0;
} else $_smarty_tpl->tpl_vars['img'] = new Smarty_variable($_smarty_tpl->tpl_vars['images']->value[0], null, 0);?>
                        <?php } else { ?>
                            <?php if (isset($_smarty_tpl->tpl_vars['img'])) {$_smarty_tpl->tpl_vars['img'] = clone $_smarty_tpl->tpl_vars['img'];
$_smarty_tpl->tpl_vars['img']->value = $_smarty_tpl->tpl_vars['product']->value->product_thumb; $_smarty_tpl->tpl_vars['img']->nocache = null; $_smarty_tpl->tpl_vars['img']->scope = 0;
} else $_smarty_tpl->tpl_vars['img'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value->product_thumb, null, 0);?>
                        <?php }?>
                        <div class="nailthumb nailthumb-detail">
                            <a class="swipebox" 
                                title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
"
                                href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['img']->value, ENT_QUOTES, 'UTF-8', true);?>
">
                                <div class="nailthumb-figure-square">
                                    <div class="nailthumb-container">
                                        <img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->product_thumb, ENT_QUOTES, 'UTF-8', true);?>
" class="lazy"
                                            title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
"
                                            alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" 
                                            />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <?php if ($_smarty_tpl->tpl_vars['images']->value) {?>
                        <?php $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['n']->step = 1;$_smarty_tpl->tpl_vars['n']->total = (int) ceil(($_smarty_tpl->tpl_vars['n']->step > 0 ? count($_smarty_tpl->tpl_vars['images']->value)-1+1 - (1) : 1-(count($_smarty_tpl->tpl_vars['images']->value)-1)+1)/abs($_smarty_tpl->tpl_vars['n']->step));
if ($_smarty_tpl->tpl_vars['n']->total > 0) {
for ($_smarty_tpl->tpl_vars['n']->value = 1, $_smarty_tpl->tpl_vars['n']->iteration = 1;$_smarty_tpl->tpl_vars['n']->iteration <= $_smarty_tpl->tpl_vars['n']->total;$_smarty_tpl->tpl_vars['n']->value += $_smarty_tpl->tpl_vars['n']->step, $_smarty_tpl->tpl_vars['n']->iteration++) {
$_smarty_tpl->tpl_vars['n']->first = $_smarty_tpl->tpl_vars['n']->iteration == 1;$_smarty_tpl->tpl_vars['n']->last = $_smarty_tpl->tpl_vars['n']->iteration == $_smarty_tpl->tpl_vars['n']->total;?>
                            <a class="swipebox" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->tpl_vars['n']->value], ENT_QUOTES, 'UTF-8', true);?>
"></a>
                        <?php }} ?>
                        <?php }?>
                        <div class="space-line"></div>
                    </div>
                    <div class="col-sm-8">
                        <div class="space-line"></div>
                        <h1 class="title text-left" style="text-align:left"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->product_title, ENT_QUOTES, 'UTF-8', true);?>
</h1>
                        <div class="p-price line-clamp-1" style="font-size:16px"><b><?php echo number_format((($tmp = @$_smarty_tpl->tpl_vars['product']->value->product_price)===null||$tmp==='' ? 0 : $tmp),0,',',' ');?>
 đ</b></div>
                        <div class="space-line"></div>
                        <fieldset>
                            <legend>Chi tiết</legend>
                            <div class="space-line"></div>
                            <div class="ckeditor">
                                <?php if ($_smarty_tpl->tpl_vars['product']->value->product_content) {?>
                                <?php echo (($tmp = @$_smarty_tpl->tpl_vars['product']->value->product_content)===null||$tmp==='' ? 'Nội dung đang cập nhật' : $tmp);?>

                                <?php } else { ?>
                                <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Nội dung đang cập nhật.</div>
                                <?php }?>
                            </div>
                            <div class="space-line"></div>
                        </fieldset>
                        <a href="JavaScript:"><button onclick="dialog('order-dialog')" class="btn btn-danger">ĐẶT HÀNG</button></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="space-line"></div>
                <div class="space-line"></div>
                <div class="container">
                    <h3 class="title">BÁNH CÙNG LOẠI</h3>

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
                </div>
                <?php } else { ?>
                    <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Bánh bạn cần không tồn tại :).</div>
                <?php }?>
            </div>
        </div>
<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/foot.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/orderpopup.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
