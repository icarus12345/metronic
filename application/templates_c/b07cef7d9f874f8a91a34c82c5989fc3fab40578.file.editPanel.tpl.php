<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-04 23:33:11
         compiled from "application\templates\dashboard\cp\data\editPanel.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3253055977a10192470-52995057%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b07cef7d9f874f8a91a34c82c5989fc3fab40578' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\data\\editPanel.tpl',
      1 => 1436027569,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3253055977a10192470-52995057',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55977a102c4bd6_89755544',
  'variables' => 
  array (
    'action' => 0,
    'item' => 0,
    'type' => 0,
    'cates' => 0,
    'c' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55977a102c4bd6_89755544')) {function content_55977a102c4bd6_89755544($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
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
            <input type="hidden" name="data_type" 
                value="<?php echo (($tmp = @(($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_type)===null||$tmp==='' ? $_smarty_tpl->tpl_vars['type']->value : $tmp))===null||$tmp==='' ? '' : $tmp);?>
"/>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Title :(*)</div>
                        <input type="text" class="form-control validate[required]" 
                            data-prompt-position="topLeft:0,20"
                            placeholder="Title"
                            name="data_title"
                            onblur="AliasTo(this,'#entryForm input[name=data_alias]')" 
                            value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->data_title))===null||$tmp==='' ? '' : $tmp);?>
"
                            />
                    </div>
                </div>
                <input type="hidden" name="data_alias" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_alias)===null||$tmp==='' ? '' : $tmp);?>
" />
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Category :(*)</div>
                        <div class="row-fluid">
                            <select 
                                name="data_category" 
                                class="form-control selectpicker validate[required]"
                                data-prompt-position="topLeft:0,20"
                                data-putto="#frm-err-data_category"
                                data-live-search="true"
                                data-size="10"
                                >
                                <option value="">Nothing Selected</option>
                                <?php if ((($tmp = @$_smarty_tpl->tpl_vars['cates']->value)===null||$tmp==='' ? null : $tmp)) {?>
                                <?php  $_smarty_tpl->tpl_vars['c'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['c']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cates']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['c']->key => $_smarty_tpl->tpl_vars['c']->value) {
$_smarty_tpl->tpl_vars['c']->_loop = true;
?>
                                    <option 
                                        data-content="<span style='padding-left: <?php echo $_smarty_tpl->tpl_vars['c']->value->cat_level*20;?>
px;'><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['c']->value->cat_title, ENT_QUOTES, 'UTF-8', true);?>
</span>"
                                        <?php if ($_smarty_tpl->tpl_vars['c']->value->cat_id==$_smarty_tpl->tpl_vars['item']->value->data_category) {?>selected="1"<?php }?>
                                        value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['c']->value->cat_id)===null||$tmp==='' ? '' : $tmp);?>
">
                                            <?php echo (($tmp = @$_smarty_tpl->tpl_vars['c']->value->cat_title)===null||$tmp==='' ? '' : $tmp);?>

                                    </option>
                                <?php } ?>
                                <?php }?>
                            </select>
                        </div>
                        <div id="frm-err-data_category"></div>
                    </div>
                </div>
            </div>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="control-group pull-bottom">
                        <div>Data type :</div>
                        <select name="data_datatype" class="form-control selectpicker">
                            <option value="string">String</option>
                            <option value="text" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_datatype)===null||$tmp==='' ? '' : $tmp)=='text') {?>selected<?php }?>>Text</option>
                            <option value="image" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_datatype)===null||$tmp==='' ? '' : $tmp)=='image') {?>selected<?php }?>>Image</option>
                            <option value="html" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_datatype)===null||$tmp==='' ? '' : $tmp)=='html') {?>selected<?php }?>>HTML</option>
                        </select>
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
            <div class="control-group pull-bottom">
                <div>
                    Desc :
                </div>
                <textarea class="form-control de-desc" 
                        rows="3"
                        name="data_desc"
                        data-putto=".error_desc" ><?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->data_desc))===null||$tmp==='' ? '' : $tmp);?>
</textarea>
                        
                <div class="erb error_desc"></div>
            </div>
        </form>
<?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
    </div>
</div>
<div class="space-line"></div>
<?php }?>
<?php }} ?>
