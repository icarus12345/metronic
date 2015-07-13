<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-07 22:21:18
         compiled from "application\templates\dashboard\cp\category\editPanelList.tpl" */ ?>
<?php /*%%SmartyHeaderCode:70385594b3881551e0-63592163%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cbcb7c69184f1025c244f5d2e80c8b527ff6c404' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\category\\editPanelList.tpl',
      1 => 1436250074,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '70385594b3881551e0-63592163',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5594b388277050_14956320',
  'variables' => 
  array (
    'item' => 0,
    'type' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5594b388277050_14956320')) {function content_5594b388277050_14956320($_smarty_tpl) {?>
        <input 
            type="hidden" 
            value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->cat_id)===null||$tmp==='' ? '' : $tmp);?>
" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="cat_type" id="cat_type" 
                value="<?php echo (($tmp = @(($tmp = @$_smarty_tpl->tpl_vars['item']->value->cat_type)===null||$tmp==='' ? $_smarty_tpl->tpl_vars['type']->value : $tmp))===null||$tmp==='' ? '' : $tmp);?>
"/>
            
            <div class="pull-bottom control-group">
                <div>Title :(*)</div>
                <input type="text" class="form-control validate[required,minSize[4],maxSize[255]]" 
                    placeholder="Title"
                    name="cat_title"
                    data-prompt-position="topLeft:0,20"
                    <?php if ($_smarty_tpl->tpl_vars['item']->value->cat_lock!='true') {?>
                    onblur="AliasTo(this,'#entryForm input[name=cat_alias]')" 
                    <?php }?>
                    value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->cat_title))===null||$tmp==='' ? '' : $tmp);?>
"
                    />
            </div>
            <input type="hidden" name="cat_alias" value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->cat_alias))===null||$tmp==='' ? '' : $tmp);?>
"/>    
            <div class="pull-bottom control-group">
                <div>Image :</div>
                <div class="input-append">
                    <input type="text" 
                        class="form-control validate[maxSize[255]]"
                        data-prompt-position="topLeft:0,20"
                        value="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->cat_thumb, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
" 
                        name="cat_thumb" 
                        id="cat_thumb"
                        >
                    <span class="add-on popovers" 
                        data-container="body" 
                        data-trigger="hover" 
                        data-placement="top" 
                        data-toggle="popover"
                        data-content="<img style='max-width:100px' src='<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->cat_thumb, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '/libraries/images/image_available.gif' : $tmp);?>
'/>" 
                        data-original-title="Image Preview"
                        title="Choose Image"
                        onclick="BrowseServer('#cat_thumb')">
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
                        name="cat_desc"
                        data-putto=".error_desc" ><?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->cat_desc))===null||$tmp==='' ? '' : $tmp);?>
</textarea>
                        
                <div class="erb error_desc"></div>
            </div>
            <div class="row half">
                <!-- <div class="col-sm-6 half">
                    <div class="control-group pull-bottom">
                        <div>Image :</div>
                        <div class="input-append">
                            <input type="text" 
                                    class="form-control" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->cat_thumb)===null||$tmp==='' ? '' : $tmp);?>
" 
                                    name="cat_thumb" id="cat_thumb"
                                    >
                            <span class="add-on" onclick="BrowseServer('#cat_thumb')">
                                <i class="fa fa-image"></i>
                            </span>
                        </div>
                    </div>
                </div> -->
                <div class="col-xs-6 half">
                    <div class="control-group pull-bottom">
                        <div>Position :</div>
                        <input type="number" 
                                class="form-control" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->cat_position)===null||$tmp==='' ? '' : $tmp);?>
" 
                                name="cat_position"
                                >
                    </div>
                </div>
                <div class="col-xs-6 half">
                    <div class="control-group pull-bottom">
                        <div>Status :</div>
                        <select name="cat_status" class="form-control selectpicker">
                            <option value="true">Enable</option>
                            <option value="false" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->cat_status)===null||$tmp==='' ? '' : $tmp)=='false') {?>selected<?php }?>>Disable</option>
                        </select>
                    </div>
                </div>
            </div>
            
        </form>
<?php }} ?>
