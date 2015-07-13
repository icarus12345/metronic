<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-08 13:51:28
         compiled from "application\templates\dashboard\so\setting\editPanelImage.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3446559ca5e495c2a2-75984898%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6cb3a0edfd6d12f73d0eee49aed294fa1dcba334' => 
    array (
      0 => 'application\\templates\\dashboard\\so\\setting\\editPanelImage.tpl',
      1 => 1436337873,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3446559ca5e495c2a2-75984898',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559ca5e4992a56_52011072',
  'variables' => 
  array (
    'item' => 0,
    'type' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559ca5e4992a56_52011072')) {function content_559ca5e4992a56_52011072($_smarty_tpl) {?><div class="col-sm-6">
    <div class="widget">
        <div class="modal-header">
            <h4><?php echo $_smarty_tpl->tpl_vars['item']->value->data_title;?>
</h4>
            <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
                <li>
                    <a href="JavaScript:myApp.saveForm(<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_id)===null||$tmp==='' ? '' : $tmp);?>
)" title="Save" onclick="">
                        <i class="fa fa-save"></i>
                    </a>
                </li>
            </ul>
        </div>
        <div class="" style="background:#fff">
            <div class="space-line"></div>
            <div class="col-sm-12">
                <form data-id="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_id)===null||$tmp==='' ? '' : $tmp);?>
" name="entryForm<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_id)===null||$tmp==='' ? '' : $tmp);?>
" id="entryForm<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_id)===null||$tmp==='' ? '' : $tmp);?>
" target="integration_asynchronous">
                    <input type="hidden" name="data_type" value="<?php echo (($tmp = @(($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_type)===null||$tmp==='' ? $_smarty_tpl->tpl_vars['type']->value : $tmp))===null||$tmp==='' ? '' : $tmp);?>
"/>
                    <input type="hidden" name="data_datatype" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_datatype)===null||$tmp==='' ? 'image' : $tmp);?>
"/>
                    <!-- <div class="row half">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Title :(*)</div>
                                <input type="text" class="form-control validate[required]" 
                                    data-prompt-position="topLeft:0,20"
                                    placeholder="Title"
                                    name="data_title"
                                    value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->data_title))===null||$tmp==='' ? '' : $tmp);?>
"
                                    />
                            </div>
                        </div>
                        <div class="col-mb-6 half">
                            <div class="control-group pull-bottom">
                                <div>Status :</div>
                                <select name="data_status" class="form-control selectpicker">
                                    <option value="true">Enable</option>
                                    <option value="false" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_status)===null||$tmp==='' ? '' : $tmp)=='false') {?>selected<?php }?>>Disable</option>
                                </select>
                            </div>
                        </div>
                    </div> -->
                    <div class="pull-bottom control-group">
                        <!-- <div>Image :(*)</div> -->
                        <input type="hidden"
                                class="form-control validate[required,maxSize[255]]"
                                data-prompt-position="topLeft:0,20"
                                value="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->data_content, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
" 
                                name="data_content" 
                                id="data_content<?php echo $_smarty_tpl->tpl_vars['item']->value->data_id;?>
"
                                >
                        <div class="text-center">
                            <img style="max-width:100%;"  class="img-thumbnail" id="img-preview-<?php echo $_smarty_tpl->tpl_vars['item']->value->data_id;?>
" src="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->data_content, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '/libraries/images/image_available.gif' : $tmp);?>
">
                            <div class="space-line"></div>
                            <button type="button" class="btn btn-circle btn-default"
                            onclick="BrowseServerCallBack(function(src){document.getElementById('img-preview-<?php echo $_smarty_tpl->tpl_vars['item']->value->data_id;?>
').src = src;document.getElementById('data_content<?php echo $_smarty_tpl->tpl_vars['item']->value->data_id;?>
').value = src;});"
                            ><i class="fa fa-image"></i> Browse Image</button>
                        </div>
                    </div> 
                    <div class="code"><?php echo $_smarty_tpl->tpl_vars['item']->value->data_desc;?>
</div>
                </form>
            </div>
            <div class="clearfix"></div>
            <div class="space-line"></div>
        </div>
    </div>
    <div class="space-line"></div>
</div><?php }} ?>
