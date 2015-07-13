<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-10 08:40:50
         compiled from "application\templates\dashboard\cp\product\editPanel.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1675155963d0bef49c5-38397375%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c8cac3e9fb7598581aaecb52e77c0de43a813480' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\product\\editPanel.tpl',
      1 => 1436487075,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1675155963d0bef49c5-38397375',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55963d0c305560_46695676',
  'variables' => 
  array (
    'action' => 0,
    'item' => 0,
    'type' => 0,
    'cates' => 0,
    'c' => 0,
    'images' => 0,
    'img' => 0,
    'ci' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55963d0c305560_46695676')) {function content_55963d0c305560_46695676($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
<div class="widget">
    <div class="modal-header">
        <h4>Product <small><?php if ($_smarty_tpl->tpl_vars['item']->value) {?>Edit Item<?php } else { ?>Add Item<?php }?></small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
<?php }?>
        <input 
            type="hidden" 
            value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->product_id)===null||$tmp==='' ? '' : $tmp);?>
" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="product_type" id="product_type" 
                value="<?php echo (($tmp = @(($tmp = @$_smarty_tpl->tpl_vars['item']->value->product_type)===null||$tmp==='' ? $_smarty_tpl->tpl_vars['type']->value : $tmp))===null||$tmp==='' ? '' : $tmp);?>
"/>
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active">
                    <a href="#product-info-tab" aria-controls="product-info-tab" role="tab" data-toggle="tab">Information</a>
                </li>
                <li role="presentation">
                    <a href="#product-images-tab" aria-controls="product-images-tab" role="tab" data-toggle="tab">Image List</a>
                </li>
                <li role="presentation">
                    <a href="#product-content-tab" aria-controls="product-content-tab" role="tab" data-toggle="tab">Content</a>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="product-info-tab">
                    <div class="row half pull-top">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Title :(*)</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]]" 
                                    onblur="AliasTo(this,'#entryForm input[name=product_alias]')" 
                                    placeholder="Title"
                                    name="product_title"
                                    data-prompt-position="topLeft:0,20"
                                    value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->product_title))===null||$tmp==='' ? '' : $tmp);?>
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
                                    name="product_alias"
                                    data-prompt-position="topLeft:0,20"
                                    value="<?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->product_alias))===null||$tmp==='' ? '' : $tmp);?>
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
                                        value="<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->product_thumb, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '' : $tmp);?>
" 
                                        name="product_thumb" 
                                        id="product_thumb"
                                        >
                                    <span class="add-on popovers" 
                                        data-container="body" 
                                        data-trigger="hover" 
                                        data-placement="top" 
                                        data-toggle="popover"
                                        data-content="<img style='max-width:100px' src='<?php echo (($tmp = @htmlspecialchars($_smarty_tpl->tpl_vars['item']->value->product_thumb, ENT_QUOTES, 'UTF-8', true))===null||$tmp==='' ? '/libraries/images/image_available.gif' : $tmp);?>
'/>" 
                                        data-original-title="Image Preview"
                                        onclick="BrowseServer('#product_thumb')">
                                        <i class="fa fa-image"></i>
                                    </span>
                                </div>
                            </div>  
                        </div>
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Category :(*)</div>
                                <div class="row-fluid">
                                    <select 
                                        name="product_category" 
                                        class="form-control selectpicker validate[required]"
                                        data-prompt-position="topLeft:0,20"
                                        data-putto="#frm-err-product_category"
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
                                                <?php if ($_smarty_tpl->tpl_vars['c']->value->cat_id==$_smarty_tpl->tpl_vars['item']->value->product_category) {?>selected="1"<?php }?>
                                                value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['c']->value->cat_id)===null||$tmp==='' ? '' : $tmp);?>
">
                                                    <?php echo (($tmp = @$_smarty_tpl->tpl_vars['c']->value->cat_title)===null||$tmp==='' ? '' : $tmp);?>

                                            </option>
                                        <?php } ?>
                                        <?php }?>
                                    </select>
                                </div>
                                <div id="frm-err-product_category"></div>
                            </div>
                        </div>
                    </div>

                    <div class="row half">
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Code (*):</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[20]]" 
                                    data-prompt-position="topLeft:0,20"
                                    value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->product_code)===null||$tmp==='' ? '' : $tmp);?>
" 
                                    name="product_code"
                                    >
                            </div>
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Price (*):</div>
                                <input type="number" 
                                    data-prompt-position="topLeft:0,20"
                                    class="form-control validate[required]" 
                                    value="<?php echo sprintf('%d',(($tmp = @$_smarty_tpl->tpl_vars['item']->value->product_price)===null||$tmp==='' ? '' : $tmp));?>
" 
                                    name="product_price">
                            </div>
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Position :</div>
                                <input type="number" 
                                    class="form-control" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->product_position)===null||$tmp==='' ? '' : $tmp);?>
" 
                                    name="product_position"
                                    >
                            </div>
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Status :</div>
                                <select name="product_status" class="form-control selectpicker">
                                    <option value="true">Enable</option>
                                    <option value="false" <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->product_status)===null||$tmp==='' ? '' : $tmp)=='false') {?>selected<?php }?>>Disable</option>
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
                                name="product_desc"
                                ><?php echo (($tmp = @quotes_to_entities($_smarty_tpl->tpl_vars['item']->value->product_desc))===null||$tmp==='' ? '' : $tmp);?>
</textarea>

                    </div>
                    <div class="control-group pull-bottom">
                        <div>
                            Tag :
                        </div>
                        <input type="text" 
                            class="form-control tags" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value->product_tag)===null||$tmp==='' ? '' : $tmp);?>
" 
                            name="product_tag"
                            >

                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="product-images-tab">
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
                        <?php if ((($tmp = @$_smarty_tpl->tpl_vars['item']->value->product_images)===null||$tmp==='' ? '' : $tmp)!='') {?>
                            <?php if (isset($_smarty_tpl->tpl_vars['images'])) {$_smarty_tpl->tpl_vars['images'] = clone $_smarty_tpl->tpl_vars['images'];
$_smarty_tpl->tpl_vars['images']->value = preg_split('/\r\n|[\r\n]/',$_smarty_tpl->tpl_vars['item']->value->product_images); $_smarty_tpl->tpl_vars['images']->nocache = null; $_smarty_tpl->tpl_vars['images']->scope = 0;
} else $_smarty_tpl->tpl_vars['images'] = new Smarty_variable(preg_split('/\r\n|[\r\n]/',$_smarty_tpl->tpl_vars['item']->value->product_images), null, 0);?>
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
                <div role="tabpanel" class="tab-pane" id="product-content-tab">
                    <?php if ($_smarty_tpl->tpl_vars['ci']->value->agent->is_mobile()) {?>
                    <div>
                        <div class="code">Editor does not support in Mobile, please user desktop browser to edit.</div>
                    </div>
                    <?php } else { ?>
                    <textarea 
                        class="form-control" 
                        rows="12"
                        name="product_content" id="product_content"
                        ><?php echo $_smarty_tpl->tpl_vars['item']->value->product_content;?>
</textarea>
                    <?php }?>
                </div>
            </div>
        </form>
<?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']!=1) {?>
    </div>
</div>
<?php }?>
<?php }} ?>
