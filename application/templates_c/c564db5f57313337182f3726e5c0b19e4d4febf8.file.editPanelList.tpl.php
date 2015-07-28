<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-21 16:04:22
         compiled from "application\templates\dashboard\la\category\editPanelList.tpl" */ ?>
<?php /*%%SmartyHeaderCode:563455a8b4ad4c6489-86103744%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c564db5f57313337182f3726e5c0b19e4d4febf8' => 
    array (
      0 => 'application\\templates\\dashboard\\la\\category\\editPanelList.tpl',
      1 => 1437469459,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '563455a8b4ad4c6489-86103744',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55a8b4ad5b6c55_25834138',
  'variables' => 
  array (
    'action' => 0,
    'item' => 0,
    'type' => 0,
    'aLang' => 0,
    'la' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55a8b4ad5b6c55_25834138')) {function content_55a8b4ad5b6c55_25834138($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_capitalize')) include 'D:\\xampp\\htdocs\\metronic\\application\\third_party\\smarty\\plugins\\modifier.capitalize.php';
?><?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
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
            
            <div class="pull-bottom control-group">
                <div>
                    Title :(*)
                    <?php if (count($_smarty_tpl->tpl_vars['aLang']->value)>1) {?>
                    <div class="pull-right lang-tabs">
                        <ul class="nav-tabs">
                            <?php  $_smarty_tpl->tpl_vars['la'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['la']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aLang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['la']->key => $_smarty_tpl->tpl_vars['la']->value) {
$_smarty_tpl->tpl_vars['la']->_loop = true;
?>
                            <li class="<?php if ($_smarty_tpl->tpl_vars['la']->value->lang_short==$_smarty_tpl->tpl_vars['aLang']->value[0]->lang_short) {?>active<?php }?>">
                                <a  title="<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_name;?>
" href="#tab_title_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
" data-toggle="tab" ><?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['la']->value->lang_short);?>
</a>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <?php }?>
                </div>
                <div class="clearfix"></div>
                <div class="controls tab-content">
                    <?php  $_smarty_tpl->tpl_vars['la'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['la']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aLang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['la']->key => $_smarty_tpl->tpl_vars['la']->value) {
$_smarty_tpl->tpl_vars['la']->_loop = true;
?>
                    <div 
                        id="tab_title_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
" 
                        class="tab-pane <?php if ($_smarty_tpl->tpl_vars['la']->value->lang_short==$_smarty_tpl->tpl_vars['aLang']->value[0]->lang_short) {?>active<?php }?>"
                        >
                        <input 
                            type="text" 
                            class="form-control validate[required,minSize[4],maxSize[255]]" 
                            placeholder="Title - <?php echo $_smarty_tpl->tpl_vars['la']->value->lang_name;?>
"
                            name="ti_title[<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
]"
                            data-prompt-position="topLeft:0,20"
                            value="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->aTitle[$_smarty_tpl->tpl_vars['la']->value->lang_short], ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
"
                            <?php if ($_smarty_tpl->tpl_vars['item']->value->cat_lock!='true') {?>
                            onblur="AliasTo(this,'#entryForm input[name=\'als_alias[<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
]\']')" 
                            <?php }?>
                            />
                        <input 
                            type="hidden" 
                            name="als_alias[<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
]" 
                            value="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->aAlias[$_smarty_tpl->tpl_vars['la']->value->lang_short], ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
"/>   
                    </div>
                    <?php } ?>
                </div>
            </div>
             
            <div class="pull-bottom control-group">
                <div>
                    Image :
                    
                </div>
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
                    <?php if (count($_smarty_tpl->tpl_vars['aLang']->value)>1) {?>
                    <div class="pull-right lang-tabs">
                        <ul class="nav-tabs">
                            <?php  $_smarty_tpl->tpl_vars['la'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['la']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aLang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['la']->key => $_smarty_tpl->tpl_vars['la']->value) {
$_smarty_tpl->tpl_vars['la']->_loop = true;
?>
                            <li class="<?php if ($_smarty_tpl->tpl_vars['la']->value->lang_short==$_smarty_tpl->tpl_vars['aLang']->value[0]->lang_short) {?>active<?php }?>">
                                <a  title="<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_name;?>
" href="#tab_desc_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
" data-toggle="tab" ><?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['la']->value->lang_short);?>
</a>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <?php }?>
                </div>
                <div class="clearfix"></div>
                <div class="controls tab-content">
                    <?php  $_smarty_tpl->tpl_vars['la'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['la']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aLang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['la']->key => $_smarty_tpl->tpl_vars['la']->value) {
$_smarty_tpl->tpl_vars['la']->_loop = true;
?>
                    <div 
                        id="tab_desc_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
" 
                        class="tab-pane <?php if ($_smarty_tpl->tpl_vars['la']->value->lang_short==$_smarty_tpl->tpl_vars['aLang']->value[0]->lang_short) {?>active<?php }?>"
                        >
                        <textarea 
                            class="form-control" 
                            placeholder="Desc - <?php echo $_smarty_tpl->tpl_vars['la']->value->lang_name;?>
"
                            rows="2"
                            data-prompt-position="topLeft:0,20"
                            name="de_desc[<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
]"
                            ><?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->aDesc[$_smarty_tpl->tpl_vars['la']->value->lang_short], ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
</textarea>  
                    </div>
                    <?php } ?>
                </div>
                        
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
<?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
    </div>
</div>
<div class="space-line"></div>
<?php }?><?php }} ?>
