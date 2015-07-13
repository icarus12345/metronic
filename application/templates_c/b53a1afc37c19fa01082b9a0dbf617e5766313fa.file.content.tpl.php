<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-06 16:53:27
         compiled from "application\templates\cake\content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6281559a4f85521664-51227335%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b53a1afc37c19fa01082b9a0dbf617e5766313fa' => 
    array (
      0 => 'application\\templates\\cake\\content.tpl',
      1 => 1436176406,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6281559a4f85521664-51227335',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559a4f85583924_83945373',
  'variables' => 
  array (
    'content' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559a4f85583924_83945373')) {function content_559a4f85583924_83945373($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/meta.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/head.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/slider.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<div class="space-line"></div>
<div class="space-line"></div>
<div class="container">
    <div class="white-box">
        <?php if ($_smarty_tpl->tpl_vars['content']->value) {?>
            <div class="text-center">
                <h1 class="title"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['content']->value->content_title, ENT_QUOTES, 'UTF-8', true);?>
</h1>
                <img width="72"  src="/assets/cake/images/line.png"/>
            </div>
            <div class="ckeditor">
                <?php echo (($tmp = @$_smarty_tpl->tpl_vars['content']->value->content_content)===null||$tmp==='' ? 'Nội dung đang cập nhật' : $tmp);?>

            </div>
        <?php } else { ?>
            <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Bánh bạn cần không tồn tại :).</div>
        <?php }?>
    </div>
</div>
<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/inc/foot.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/cake/widget/orderpopup.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
