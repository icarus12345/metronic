<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-10 15:49:48
         compiled from "application\templates\cake\widget\like-button.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4960559f872c5bba84-19356903%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0928a2954cdbb5837c3024378e40f298e5ae81ef' => 
    array (
      0 => 'application\\templates\\cake\\widget\\like-button.tpl',
      1 => 1436450106,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4960559f872c5bba84-19356903',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559f872c941b31_18493886',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559f872c941b31_18493886')) {function content_559f872c941b31_18493886($_smarty_tpl) {?><div class="text-center">
    <div style="display:inline-block">
        <span class="fb-like">
            <div class="fb-like" data-href="<?php echo current_url();?>
" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
        </span>
        <!-- Đặt thẻ này vào nơi bạn muốn Nút +1 kết xuất. -->
        <span class="google-plus pull-left">
            <div class="g-plusone" -data-href="http://banhngononline.com" data-size="medium"></div>
        </span>
        <span class="google-plus pull-left">
            <div class="g-plus" data-action="share"  data-annotation="bubble"></div>
        </span>
        <!-- Đặt thẻ này sau thẻ Nút +1 cuối cùng. -->
        <?php echo '<script'; ?>
 type="text/javascript">
          window.___gcfg = {lang: 'vi'};

          (function() {
            var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
            po.src = 'https://apis.google.com/js/platform.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
          })();
        <?php echo '</script'; ?>
>
        <div id="fb-root"></div>
        <?php echo '<script'; ?>
>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&appId=707642035948105&version=v2.3";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));<?php echo '</script'; ?>
>
    </div>
</div><?php }} ?>
