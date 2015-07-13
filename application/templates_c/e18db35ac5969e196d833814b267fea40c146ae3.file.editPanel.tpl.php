<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-10 08:35:34
         compiled from "application\templates\dashboard\cp\album\editPanel.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10731559f2166f326c5-71325577%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e18db35ac5969e196d833814b267fea40c146ae3' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\album\\editPanel.tpl',
      1 => 1436453412,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10731559f2166f326c5-71325577',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'action' => 0,
    'cname' => 0,
    'item' => 0,
    'type' => 0,
    'images' => 0,
    'img' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559f2167193b34_33193894',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559f2167193b34_33193894')) {function content_559f2167193b34_33193894($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
<div class="widget">
    <div class="modal-header">
        <h4><?php echo $_smarty_tpl->tpl_vars['cname']->value;?>
 <small><?php if ($_smarty_tpl->tpl_vars['item']->value) {?>Edit Item<?php } else { ?>Add Item<?php }?></small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
<?php }?>
        <input 
            type="hidden" 
            value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->album_id)===null||$tmp==='' ? '' : $tmp);?>
" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="album_type" id="album_type" 
                value="<?php echo (($tmp = @(($tmp = @$_smarty_tpl->tpl_vars['item']->value->album_type)===null||$tmp==='' ? $_smarty_tpl->tpl_vars['type']->value : $tmp))===null||$tmp==='' ? '' : $tmp);?>
"/>
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active">
                    <a href="#album-info-tab" aria-controls="album-info-tab" role="tab" data-toggle="tab">Information</a>
                </li>
                <li role="presentation">
                    <a href="#album-images-tab" aria-controls="album-images-tab" role="tab" data-toggle="tab">Image List</a>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="album-info-tab">
                    <div class="row half pull-top">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Title :(*)</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]]" 
                                    onblur="AliasTo(this,'#entryForm input[name=album_alias]')" 
                                    placeholder="Title"
                                    name="album_title"
                                    data-prompt-position="topLeft:0,20"
                                    value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->album_title))===null||$tmp==='' ? '' : $tmp);?>
"
                                    />
                            </div>
                        </div>
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Alias :(*)</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]]" 
                                    placeholder="Alias"
                                    name="album_alias"
                                    data-prompt-position="topLeft:0,20"
                                    value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->album_alias))===null||$tmp==='' ? '' : $tmp);?>
"
                                    />
                            </div>
                        </div>
                    </div>
                    <div class="row half">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Image :(*)</div>
                                <div class="input-append">
                                    <input type="text" 
                                        class="form-control validate[required,maxSize[255]]"
                                        data-prompt-position="topLeft:0,20"
                                        value="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->album_thumb, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
" 
                                        name="album_thumb" 
                                        id="album_thumb"
                                        >
                                    <span class="add-on popovers" 
                                        data-container="body" 
                                        data-trigger="hover" 
                                        data-placement="top" 
                                        data-toggle="popover"
                                        data-content="<img style='max-width:100px' src='<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->album_thumb, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '/libraries/images/image_available.gif' : $tmp);?>
'/>" 
                                        data-original-title="Image Preview"
                                        
                                        onclick="BrowseServer('#album_thumb')">
                                        <i class="fa fa-image"></i>
                                    </span>
                                </div>
                            </div>  
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Status :</div>
                                <select name="album_status" class="form-control selectpicker">
                                    <option value="true">Enable</option>
                                    <option value="false" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->album_status)===null||$tmp==='' ? '' : $tmp)=='false') {?>selected<?php }?>>Disable</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    
                    <div class="control-group pull-bottom">
                        <div>
                            Desc :
                        </div>
                        <textarea class="form-control de-desc" 
                                rows="2"
                                name="album_desc"
                                ><?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->album_desc))===null||$tmp==='' ? '' : $tmp);?>
</textarea>

                    </div>
                    <div class="control-group pull-bottom">
                        <div>
                            Tag :
                        </div>
                        <input type="text" 
                            class="form-control tags" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->album_tag)===null||$tmp==='' ? '' : $tmp);?>
" 
                            name="album_tag"
                            >

                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="album-images-tab">
                    <div class="container pull-top">
                        <span class="code cursor" 
                            title="Add new Photo" 
                            onclick="myApp.choosePhotos()">
                            <i class="fa fa-plus"></i>&nbsp;Add Images
                        </span>
                        &nbsp;&nbsp;
                        <span class="code cursor" 
                            title="Delete all" 
                            onclick="myApp.deletePhotos()">
                            <i class="fa fa-trash-o"></i>&nbsp;Delete all
                        </span>
                    </div>
                    <ul id="sortable" class="sortable" style="min-height: 210px">
                        <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->album_images)===null||$tmp==='' ? '' : $tmp)!='') {?>
                            <?php if (isset($_smarty_tpl->tpl_vars['images'])) {$_smarty_tpl->tpl_vars['images'] = clone $_smarty_tpl->tpl_vars['images'];
$_smarty_tpl->tpl_vars['images']->value = preg_split('/\r\n|[\r\n]/',$_smarty_tpl->tpl_vars['item']->value->album_images); $_smarty_tpl->tpl_vars['images']->nocache = null; $_smarty_tpl->tpl_vars['images']->scope = 0;
} else $_smarty_tpl->tpl_vars['images'] = new Smarty_variable(preg_split('/\r\n|[\r\n]/',$_smarty_tpl->tpl_vars['item']->value->album_images), null, 0);?>
                            <?php  $_smarty_tpl->tpl_vars['img'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['img']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['images']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['img']->key => $_smarty_tpl->tpl_vars['img']->value) {
$_smarty_tpl->tpl_vars['img']->_loop = true;
?>
                                <li class="ui-state-default">
                                    <img class="thumb" src="<?php echo $_smarty_tpl->tpl_vars['img']->value;?>
"/>
                                    <div class="action cursor" onclick="myApp.deletePhoto(this)">
                                        <i class="fa fa-trash-o"></i>
                                    </div>
                                </li>
                            <?php } ?>
                        <?php }?>
                    </ul>
                    <div class="clearfix"></div>
                    <div class="code">
                        Drag to sort images.<br/>
                        Press Ctrl to select multi images.
                    </div>    
                </div>
            </div>
        </form>
<?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
    </div>
</div>
<?php }?>
<?php }} ?>
