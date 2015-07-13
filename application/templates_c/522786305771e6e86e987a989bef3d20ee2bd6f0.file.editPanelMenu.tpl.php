<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-04 16:23:33
         compiled from "application\templates\dashboard\cp\category\editPanelMenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:51695596bb0c75a3f3-41288459%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '522786305771e6e86e987a989bef3d20ee2bd6f0' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\category\\editPanelMenu.tpl',
      1 => 1436001810,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '51695596bb0c75a3f3-41288459',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5596bb0c83d2b7_37867761',
  'variables' => 
  array (
    'action' => 0,
    'item' => 0,
    'type' => 0,
    'cates' => 0,
    'c' => 0,
    'level' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5596bb0c83d2b7_37867761')) {function content_5596bb0c83d2b7_37867761($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
<div class="widget">
    <div class="modal-header">
        <h4>Category <small><?php if ($_smarty_tpl->tpl_vars['item']->value) {?>Edit Item<?php } else { ?>Add Item<?php }?></small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
<?php }?>
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
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Title :(*)</div>
                        <input type="text" class="form-control validate[required]" 
                            data-prompt-position="topLeft:0,20"
                            placeholder="Title"
                            name="cat_title"
                            value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->cat_title))===null||$tmp==='' ? '' : $tmp);?>
"
                            data-putto=".error-title"/>
                        <div class="erb error-title"></div>
                    </div>
                </div>
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Parent :(*)</div>
                        
                        <div class="row-fluid">
                            <select name="cat_parent" class="form-control selectpicker"
                                    data-size="10"
                                    >
                                <option value="0" data-title="[ Root ]" data-level="-1">[ Root ]</option>
                                <?php if (isset($_smarty_tpl->tpl_vars["level"])) {$_smarty_tpl->tpl_vars["level"] = clone $_smarty_tpl->tpl_vars["level"];
$_smarty_tpl->tpl_vars["level"]->value = -1; $_smarty_tpl->tpl_vars["level"]->nocache = null; $_smarty_tpl->tpl_vars["level"]->scope = 0;
} else $_smarty_tpl->tpl_vars["level"] = new Smarty_variable(-1, null, 0);?>
                                <?php  $_smarty_tpl->tpl_vars['c'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['c']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cates']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['c']->key => $_smarty_tpl->tpl_vars['c']->value) {
$_smarty_tpl->tpl_vars['c']->_loop = true;
?>
                                    <?php if ($_smarty_tpl->tpl_vars['c']->value->cat_id==$_smarty_tpl->tpl_vars['item']->value->cat_id) {?>
                                        <?php if (isset($_smarty_tpl->tpl_vars["level"])) {$_smarty_tpl->tpl_vars["level"] = clone $_smarty_tpl->tpl_vars["level"];
$_smarty_tpl->tpl_vars["level"]->value = $_smarty_tpl->tpl_vars['c']->value->cat_level; $_smarty_tpl->tpl_vars["level"]->nocache = null; $_smarty_tpl->tpl_vars["level"]->scope = 0;
} else $_smarty_tpl->tpl_vars["level"] = new Smarty_variable($_smarty_tpl->tpl_vars['c']->value->cat_level, null, 0);?>
                                    <?php }?>
                                    <?php if ($_smarty_tpl->tpl_vars['level']->value!=-1&&$_smarty_tpl->tpl_vars['c']->value->cat_level<=$_smarty_tpl->tpl_vars['level']->value&&$_smarty_tpl->tpl_vars['c']->value->cat_id!=$_smarty_tpl->tpl_vars['item']->value->cat_id) {?>
                                        <?php if (isset($_smarty_tpl->tpl_vars["level"])) {$_smarty_tpl->tpl_vars["level"] = clone $_smarty_tpl->tpl_vars["level"];
$_smarty_tpl->tpl_vars["level"]->value = -1; $_smarty_tpl->tpl_vars["level"]->nocache = null; $_smarty_tpl->tpl_vars["level"]->scope = 0;
} else $_smarty_tpl->tpl_vars["level"] = new Smarty_variable(-1, null, 0);?>
                                    <?php }?>
                                    <option 
                                        data-content="<span style='padding-left: <?php echo $_smarty_tpl->tpl_vars['c']->value->cat_level*20+20;?>
px;'><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['c']->value->cat_title, ENT_QUOTES, 'UTF-8', true);?>
</span>"
                                        <?php if ($_smarty_tpl->tpl_vars['c']->value->cat_id==$_smarty_tpl->tpl_vars['item']->value->cat_parent) {?>selected="1"<?php }?>
                                        <?php if ($_smarty_tpl->tpl_vars['level']->value!=-1&&$_smarty_tpl->tpl_vars['level']->value<$_smarty_tpl->tpl_vars['c']->value->cat_level) {?>disabled=1<?php }?>
                                        <?php if ($_smarty_tpl->tpl_vars['c']->value->cat_id==$_smarty_tpl->tpl_vars['item']->value->cat_id) {?>disabled=1<?php }?>
                                        value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['c']->value->cat_id)===null||$tmp==='' ? '' : $tmp);?>
">
                                            <?php echo (($tmp = @$_smarty_tpl->tpl_vars['c']->value->cat_title)===null||$tmp==='' ? '' : $tmp);?>

                                    </option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row half">
                <div class="col-sm-4 half">
                    <div class="control-group pull-bottom">
                        <div>Link :</div>
                        <input type="text" class="form-control" 
                            placeholder="Link"
                            name="cat_link"
                            value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->cat_link))===null||$tmp==='' ? '' : $tmp);?>
"
                            />
                    </div>
                </div>
                <div class="col-sm-2 half">
                    <div class="control-group pull-bottom">
                        <div>Icon :</div>
                        <input type="text" 
                            class="form-control" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->cat_thumb)===null||$tmp==='' ? '' : $tmp);?>
" 
                            name="cat_thumb"
                            >
                    </div>
                </div>
                <div class="col-sm-2 half">
                    <div class="control-group pull-bottom">
                        <div>Position :</div>
                        <input type="number" 
                                class="form-control" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->cat_position)===null||$tmp==='' ? '' : $tmp);?>
" 
                                name="cat_position"
                                >
                    </div>
                </div>
                <div class="col-sm-2 half">
                    <div class="control-group pull-bottom">
                        <div>Status :</div>
                        <select name="cat_status" class="form-control selectpicker">
                            <option value="true">Enable</option>
                            <option value="false" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->cat_status)===null||$tmp==='' ? '' : $tmp)=='false') {?>selected<?php }?>>Disable</option>
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
                        name="cat_desc"
                        data-putto=".error_desc" ><?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->cat_desc))===null||$tmp==='' ? '' : $tmp);?>
</textarea>
                        
                <div class="erb error_desc"></div>
            </div>
            <!-- <div class="control-group">
                <button class="btn btn-default" type="button" onclick="myApp.onSave()">Save</button>
                <button class="btn btn-default" type="button" onclick="myApp.onCancel()">Cancel</button>
            </div> -->
        </form>
<?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
    </div>
</div>
<div class="space-line"></div>
<?php }?>
<?php }} ?>
