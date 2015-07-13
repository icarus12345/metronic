<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-04 14:14:16
         compiled from "application\templates\dashboard\cp\data\editPanelImage.tpl" */ ?>
<?php /*%%SmartyHeaderCode:23810559781b10b6f46-76375296%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b4e9543f730655e1527a24477d3f957f80a835a7' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\data\\editPanelImage.tpl',
      1 => 1435994030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '23810559781b10b6f46-76375296',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559781b114c212_48974663',
  'variables' => 
  array (
    'action' => 0,
    'item' => 0,
    'type' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559781b114c212_48974663')) {function content_559781b114c212_48974663($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
<div class="widget">
    <div class="modal-header">
        <h4>Data <small><?php if ($_smarty_tpl->tpl_vars['item']->value) {?>Edit Item<?php } else { ?>Add Item<?php }?></small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
<?php }?>
        <input 
            type="hidden" 
            value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_id)===null||$tmp==='' ? '' : $tmp);?>
" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="data_type" value="<?php echo (($tmp = @(($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_type)===null||$tmp==='' ? $_smarty_tpl->tpl_vars['type']->value : $tmp))===null||$tmp==='' ? '' : $tmp);?>
"/>
            <input type="hidden" name="data_datatype" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_datatype)===null||$tmp==='' ? '' : $tmp);?>
"/>
            <div class="row half">
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
            </div>
            <div class="row half">
                <div class="col-sm-4 half">
                    
                </div>
                <div class="col-sm-2 half">
                    
                </div>
            </div>
            <div class="pull-bottom control-group">
                <div>Image :(*)</div>
                <div class="input-append">
                    <input type="text" 
                        class="form-control validate[required,maxSize[255]]"
                        data-prompt-position="topLeft:0,20"
                        value="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->data_content, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
" 
                        name="data_content" 
                        id="data_content"
                        >
                    <span class="add-on popovers" 
                        data-container="body" 
                        data-trigger="hover" 
                        data-placement="top" 
                        data-toggle="popover"
                        data-content="<img style='max-width:100px' src='<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->data_content, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '/libraries/images/image_available.svg' : $tmp);?>
'/>" 
                        data-original-title="Image Preview"
                        title="Choose Image"
                        onclick="BrowseServer('#data_content')">
                        <i class="fa fa-image"></i>
                    </span>
                </div>
            </div> 
        </form>
<?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
    </div>
</div>
<div class="space-line"></div>
<?php }?>
<?php }} ?>
