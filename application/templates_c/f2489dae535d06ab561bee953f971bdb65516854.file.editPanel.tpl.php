<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-04 22:05:12
         compiled from "application\templates\dashboard\so\account\editPanel.tpl" */ ?>
<?php /*%%SmartyHeaderCode:207405597f015e5a8e0-47671703%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f2489dae535d06ab561bee953f971bdb65516854' => 
    array (
      0 => 'application\\templates\\dashboard\\so\\account\\editPanel.tpl',
      1 => 1436022294,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '207405597f015e5a8e0-47671703',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5597f015efd540_92669886',
  'variables' => 
  array (
    'action' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5597f015efd540_92669886')) {function content_5597f015efd540_92669886($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
<div class="widget">
    <div class="modal-header">
        <h4>User <small><?php if ($_smarty_tpl->tpl_vars['item']->value) {?>Edit Item<?php } else { ?>Add Item<?php }?></small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
<?php }?>
<input
type="hidden"
value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->ause_id)===null||$tmp==='' ? '' : $tmp);?>
"
id="EntryId"
/>
<form name="entryForm" id="entryForm" target="integration_asynchronous">
  <div class="row half">
    <div class="col-mb-6 half">
      <div class="pull-bottom control-group">
        <div>Authority :</div>
        <select class="form-control selectpicker" name="ause_authority" multiple >
          <option <?php if ($_smarty_tpl->tpl_vars['item']->value->ause_authority=="Guest") {?>selected="1"<?php }?> value="Guest">Guest</option>
          <option <?php if ($_smarty_tpl->tpl_vars['item']->value->ause_authority=="Admin") {?>selected="1"<?php }?> value="Admin">Admin</option>
          <option <?php if ($_smarty_tpl->tpl_vars['item']->value->ause_authority=="User") {?>selected="1"<?php }?> value="User">User</option>
          <option <?php if ($_smarty_tpl->tpl_vars['item']->value->ause_authority=="View") {?>selected="1"<?php }?> value="View">View</option>
          <option <?php if (strpos($_smarty_tpl->tpl_vars['item']->value->ause_authority,"CP")!==false) {?>selected="1"<?php }?> value="CP">Content Provider</option>
          <option <?php if (strpos($_smarty_tpl->tpl_vars['item']->value->ause_authority,"SO")!==false) {?>selected="1"<?php }?> value="SO">Service Operator</option>
        </select>
      </div>
    </div>
    <div class="col-mb-6 half">
      <div class=" pull-bottom control-group">
        <div>Status :</div>
        <select class="form-control selectpicker" name="ause_status">
          <option <?php if ($_smarty_tpl->tpl_vars['item']->value->ause_status=="true") {?>selected="1"<?php }?> value="true">Enable</option>
          <option <?php if ($_smarty_tpl->tpl_vars['item']->value->ause_status=="false") {?>selected="1"<?php }?> value="false">Disable</option>
        </select>
      </div>
    </div>
  </div>
  <div class="row  half">
    <div class="col-mb-6 half">
      <div class="pull-bottom control-group">
        <div>Account Name :</div>
        <input type="text" 
          class="form-control validate[required]"
          data-prompt-position="topLeft:0,20"
          name="ause_name"
          value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->ause_name))===null||$tmp==='' ? '' : $tmp);?>
"
          />
      </div>
    </div>
    <div class="col-mb-6 half">
      <div class="pull-bottom control-group">
        <div>Email :</div>
        <input type="text" 
          class="form-control validate[required]"
          data-prompt-position="topLeft:0,20"
          name="ause_email"
          value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->ause_email))===null||$tmp==='' ? '' : $tmp);?>
"
          />
      </div>
    </div>
  </div>
  <div class="row  half">
    <div class="col-mb-6 half">
      <div class="pull-bottom control-group">
        <div>Username :</div>
        <input type="text" 
          class="form-control validate[required]"
          data-prompt-position="topLeft:0,20"
          name="ause_username"
          value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->ause_username))===null||$tmp==='' ? '' : $tmp);?>
"
          />
      </div>
    </div>
    <div class="col-mb-6 half">
      <div class=" pull-bottom control-group">
        <div>Password :</div>
        <div class="input-append">
          <input type="text" 
            class="form-control <?php if (empty($_smarty_tpl->tpl_vars['item']->value)) {?>validate[required]<?php }?>"
            data-prompt-position="topLeft:0,20"
            placeholder="Current password"
            name="ause_password"
            value=""
            />
          <span class="add-on" title="Random new password" onclick="document.entryForm.ause_password.value = getNewPass()">
            <i class="fa fa-random"></i>
          </span>
        </div>
      </div>
    </div>
  </div>
  <div class="bs-callout bs-callout-danger">
    <b>Note</b>
    <div>
      User : can't create new cms account.<br/>
      Admin : can create new cms account and update cms user account<br/>
      View : only view data, can't create, update entry data.
    </div>
  </div>
</form>
<?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
    </div>
</div>
<div class="space-line"></div>
<?php }?>
<?php }} ?>
