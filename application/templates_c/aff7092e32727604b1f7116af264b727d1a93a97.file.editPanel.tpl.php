<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-03 11:22:52
         compiled from "application\templates\dashboard\cp\image\editPanel.tpl" */ ?>
<?php /*%%SmartyHeaderCode:60725595f2196c8a08-73374497%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'aff7092e32727604b1f7116af264b727d1a93a97' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\image\\editPanel.tpl',
      1 => 1435897022,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '60725595f2196c8a08-73374497',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5595f2197616d8_81039620',
  'variables' => 
  array (
    'item' => 0,
    'type' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5595f2197616d8_81039620')) {function content_5595f2197616d8_81039620($_smarty_tpl) {?>
<input 
    type="hidden" 
    value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->image_id)===null||$tmp==='' ? '' : $tmp);?>
" 
    id="EntryId"
    />
<form name="entryForm" id="entryForm" target="integration_asynchronous">
    <input type="hidden" name="image_type" id="image_type" 
           value="<?php echo (($tmp = @(($tmp = @$_smarty_tpl->tpl_vars['item']->value->image_type)===null||$tmp==='' ? $_smarty_tpl->tpl_vars['type']->value : $tmp))===null||$tmp==='' ? '' : $tmp);?>
"/>

    <div class="pull-bottom control-group">
        <div>Title :(*)</div>
        <input type="text" class="form-control validate[required,minSize[4],maxSize[255]]" 
               placeholder="Title"
               name="image_title"
               data-prompt-position="topLeft:0,20"
               value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->image_title))===null||$tmp==='' ? '' : $tmp);?>
"
               />
    </div>
    <div class="pull-bottom control-group">
        <div>Image :(*)</div>
            <div class="input-append">
                <input type="text" 
                    class="form-control validate[required,maxSize[255]]"
                    data-prompt-position="topLeft:0,20"
                    value="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->image_src, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
" 
                    name="image_src" 
                    id="image_src"
                    >
                <span class="add-on popovers" 
                      data-container="body" 
                      data-trigger="hover" 
                      data-placement="top" 
                      data-toggle="popover"
                      data-content="<img style='max-width:100px' src='<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->image_src, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '/libraries/images/no_image_available.png' : $tmp);?>
'/>" 
                      data-original-title="Image Preview"
                      title="Choose Image"
                    onclick="BrowseServer('#image_src')">
                    <i class="fa fa-image"></i>
                </span>
            </div>
    </div>   
    <div class="control-group pull-bottom">
        <div>
            Desc :
        </div>
        <textarea class="form-control de-desc" 
                  rows="2"
                  name="image_desc"
                  ><?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->image_desc))===null||$tmp==='' ? '' : $tmp);?>
</textarea>

    </div>
    <div class="row half">
        <!-- <div class="col-sm-6 half">
            <div class="control-group pull-bottom">
                <div>Image :</div>
                <div class="input-append">
                    <input type="text" 
                            class="form-control" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->image_thumb)===null||$tmp==='' ? '' : $tmp);?>
" 
                            name="image_thumb" id="image_thumb"
                            >
                    <span class="add-on" onclick="BrowseServer('#image_thumb')">
                        <i class="fa fa-image"></i>
                    </span>
                </div>
            </div>
        </div> -->
        <div class="col-xs-6 half">
            <div class="control-group pull-bottom">
                <div>Position :</div>
                <input type="number" 
                       class="form-control" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->image_position)===null||$tmp==='' ? '' : $tmp);?>
" 
                       name="image_position"
                       >
            </div>
        </div>
        <div class="col-xs-6 half">
            <div class="control-group pull-bottom">
                <div>Status :</div>
                <select name="image_status" class="form-control selectpicker">
                    <option value="true">Enable</option>
                    <option value="false" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->image_status)===null||$tmp==='' ? '' : $tmp)=='false') {?>selected<?php }?>>Disable</option>
                </select>
            </div>
        </div>
    </div>

</form>
<?php }} ?>
