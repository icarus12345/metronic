<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-04 23:29:45
         compiled from "application\templates\dashboard\cp\data\editPanelString.tpl" */ ?>
<?php /*%%SmartyHeaderCode:220055597801476b602-19665209%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7319bf21e08534151a9e01c70cdb8f9e298013d5' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\data\\editPanelString.tpl',
      1 => 1436027214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '220055597801476b602-19665209',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55978014839d21_28917278',
  'variables' => 
  array (
    'action' => 0,
    'item' => 0,
    'type' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55978014839d21_28917278')) {function content_55978014839d21_28917278($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
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
            <input type="hidden" name="data_datatype" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_datatype)===null||$tmp==='' ? 'string' : $tmp);?>
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
            <div class="control-group pull-bottom">
                <div>
                    Content :
                </div>
                <textarea 
                    class="form-control de-desc" 
                    rows="3"
                    name="data_content"
                    ><?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->data_content))===null||$tmp==='' ? '' : $tmp);?>
</textarea>
            </div>
        </form>
<?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
    </div>
</div>
<div class="space-line"></div>
<?php }?>
<?php }} ?>
