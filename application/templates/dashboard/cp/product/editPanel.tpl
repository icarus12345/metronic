[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>Product <small>[{if $item}]Edit Item[{else}]Add Item[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
        <input 
            type="hidden" 
            value="[{$item->product_id|default:''}]" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="product_type" id="product_type" 
                value="[{$item->product_type|default:$type|default:''}]"/>
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
                                    value="[{$item->product_title|quotes_to_entities|default:''}]"
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
                                    value="[{$item->product_alias|quotes_to_entities|default:''}]"
                                    />
                            </div>
                        </div>
                    </div>
                    <div class="row half">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Image :(*) <a href="JavaScript:myApp.ImageCheck()" class="code">Check Image</a></div>
                                <div class="input-append">
                                    <input type="text" 
                                        class="form-control validate[required,maxSize[255]]"
                                        data-prompt-position="topLeft:0,20"
                                        value="[{$item->product_thumb|escape:'html'|default:''}]" 
                                        name="product_thumb" 
                                        id="product_thumb"
                                        >
                                    <span class="add-on popovers" 
                                        data-container="body" 
                                        data-trigger="hover" 
                                        data-placement="top" 
                                        data-toggle="popover"
                                        data-content="<img style='max-width:100px' src='[{$item->product_thumb|escape:'html'|default:'/libraries/images/image_available.gif'}]'/>" 
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
                                        [{if $cates|default:null}]
                                        [{foreach from=$cates item=c}]
                                            <option 
                                                data-content="<span style='padding-left: [{$c->cat_level*20}]px;'>[{$c->cat_title|escape}]</span>"
                                                [{if $c->cat_id == $item->product_category}]selected="1"[{/if}]
                                                value="[{$c->cat_id|default:''}]">
                                                    [{$c->cat_title|default:''}]
                                            </option>
                                        [{/foreach}]
                                        [{/if}]
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
                                    value="[{$item->product_code|default:''}]" 
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
                                    value="[{$item->product_price|default:''|string_format:'%d'}]" 
                                    name="product_price">
                            </div>
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Position :</div>
                                <input type="number" 
                                    class="form-control" value="[{$item->product_position|default:''}]" 
                                    name="product_position"
                                    >
                            </div>
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Status :</div>
                                <select name="product_status" class="form-control selectpicker">
                                    <option value="true">Enable</option>
                                    <option value="false" [{if $item->product_status|default:''=='false'}]selected[{/if}]>Disable</option>
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
                                >[{$item->product_desc|quotes_to_entities|default:''}]</textarea>

                    </div>
                    <div class="control-group pull-bottom">
                        <div>
                            Tag :
                        </div>
                        <input type="text" 
                            class="form-control tags" value="[{$item->product_tag|default:''}]" 
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
                        [{if $item->product_images|default:''!=''}]
                            [{assign var=images value='/\r\n|[\r\n]/'|preg_split:$item->product_images}]
                            [{foreach from=$images item=img}]
                                <li class="ui-state-default">
                                    <img class="thumb" src="[{$img}]"/>
                                    <div class="action cursor" onclick="myApp.deletePhoto(this)">
                                        <i class="fa fa-trash-o"></i>
                                    </div>
                                </li>
                            [{/foreach}]
                        [{/if}]
                    </ul>
                    <div class="clearfix"></div>
                    <div class="code">
                        Drag to sort images.<br/>
                        Press Ctrl to select multi images.
                    </div>    
                </div>
                <div role="tabpanel" class="tab-pane" id="product-content-tab">
                    [{if $ci->agent->is_mobile()}]
                    <div>
                        <div class="code">Editor does not support in Mobile, please user desktop browser to edit.</div>
                    </div>
                    [{else}]
                    <textarea 
                        class="form-control" 
                        rows="12"
                        name="product_content" id="product_content"
                        >[{$item->product_content}]</textarea>
                    [{/if}]
                </div>
            </div>
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]
