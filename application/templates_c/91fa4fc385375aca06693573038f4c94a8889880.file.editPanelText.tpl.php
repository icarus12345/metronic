<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-08 14:58:48
         compiled from "application\templates\dashboard\so\setting\editPanelText.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2818559ca683633a91-54662799%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '91fa4fc385375aca06693573038f4c94a8889880' => 
    array (
      0 => 'application\\templates\\dashboard\\so\\setting\\editPanelText.tpl',
      1 => 1436338432,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2818559ca683633a91-54662799',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559ca683670138_92932120',
  'variables' => 
  array (
    'item' => 0,
    'type' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559ca683670138_92932120')) {function content_559ca683670138_92932120($_smarty_tpl) {?><div class="col-sm-6">
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
                    <input type="hidden" name="data_datatype" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_datatype)===null||$tmp==='' ? 'text' : $tmp);?>
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
                    <div class="control-group pull-bottom">
                        <!-- <div>Content :</div> -->
                        <textarea 
                            class="form-control de-desc" 
                            rows="3"
                            name="data_content"
                            ><?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->data_content))===null||$tmp==='' ? '' : $tmp);?>
</textarea>
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
</div>
<?php echo '<script'; ?>
 type="text/javascript">
    $('#entryForm<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->data_id)===null||$tmp==='' ? '' : $tmp);?>
').validationEngine({
        'scroll': false,
        'prettySelect' : true,
        'isPopup' : false,
        validateNonVisibleFields:true
    });
<?php echo '</script'; ?>
>
<?php }} ?>
