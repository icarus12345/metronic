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
        [{if count($aLang)>1}]
        <div class="pull-bottom">
            <div class="btn-group btn-group-xs" data-toggle="buttons">
                [{foreach $aLang 'la'}]
                <label class="btn btn-default [{if $la->lang_short==$aLang[0]->lang_short}]active[{/if}]" title="[{$la->lang_name}]">
                    <input 
                        type="radio" name="radiolangs"
                        value="[{$la->lang_short}]" 
                        autocomplete="off" [{if $la->lang_short==$aLang[0]->lang_short}]checked[{/if}]
                        onchange="radioLangsChange(this.value)"
                        />
                    [{$la->lang_name}]
                </label>
                [{/foreach}]
            </div>
        </div>
        <div class="clearfix"></div>
        [{/if}] 
        <form name="entryForm" id="entryForm" target="integration_asynchronous" style="margin-left: -5px;margin-right: -5px;margin-top: -5px;margin-bottom: -5px;">
            <input type="hidden" name="product_type" id="product_type" 
                value="[{$item->product_type|default:$type|default:''}]"/>
                <input type="hidden" name="product_imagepath" id="product_imagepath" 
                value="[{$item->product_imagepath|default:$imagepath|default:''}]"/>
            <ul class="nav nav-tabs g-tap" role="tablist">
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
                                <div class="lang-controls">
                                    [{foreach $aLang 'la'}]
                                    <input 
                                        type="text" 
                                        data-lang="[{$la->lang_short}]"
                                        class="form-control validate[required,minSize[4],maxSize[255]] [{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]" 
                                        placeholder="Title - [{$la->lang_name}]"
                                        name="ti_title[[{$la->lang_short}]]"
                                        data-prompt-position="topLeft:0,20"
                                        value="[{$item->aTitle[$la->lang_short]|escape:'html'|default:''}]"
                                        [{if $item->product_lock!='true'}]
                                        onblur="AliasTo(this,'#entryForm input[name=\'als_alias[[{$la->lang_short}]]\']')" 
                                        [{/if}]
                                        />
                                    [{/foreach}]
                                </div>
                            </div>
                        </div>
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Alias :(*)</div>
                                <div class="lang-controls">
                                    [{foreach $aLang 'la'}]
                                    <input 
                                        type="text" 
                                        data-lang="[{$la->lang_short}]"
                                        class="form-control validate[required,minSize[4],maxSize[255]] [{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]" 
                                        placeholder="Alias - [{$la->lang_name}]"
                                        name="als_alias[[{$la->lang_short}]]"
                                        data-prompt-position="topLeft:0,20"
                                        value="[{$item->aAlias[$la->lang_short]|escape:'html'|default:''}]"
                                        />
                                    [{/foreach}]
                                </div>

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
                                        onclick="openKCFinderByPath('dir=image/product/[{$item->product_imagepath|default:$imagepath|default:''}]','#product_thumb')">
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
                                        [{if $aCategory|default:null}]
                                        [{foreach from=$aCategory item=c}]
                                            <option 
                                                data-content="<span class='lang-controls' style='padding-left: [{$c->cat_level*20+20}]px;'>[{foreach $aLang 'la'}]<span data-lang='[{$la->lang_short}]' class='[{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]'>[{$c->title[$la->lang_short]|escape}]</span>[{/foreach}]</span>"
                                                [{if $c->cat_id == $item->product_category}]selected="1"[{/if}]
                                                value="[{$c->cat_id|default:''}]">
                                                    [{$c->ti_title|default:''}]
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
                                <div>Discount (%):</div>
                                <input type="number" 
                                    data-prompt-position="topLeft:0,20"
                                    class="form-control" 
                                    value="[{$item->product_discount|default:'0'|string_format:'%d'}]" 
                                    name="product_discount">
                            </div>
                        </div>
                        <!-- <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Position :</div>
                                <input type="number" 
                                    class="form-control" value="[{$item->product_position|default:''}]" 
                                    name="product_position"
                                    >
                            </div>
                        </div> -->
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
                        <div>Desc :</div>
                        <div class="lang-controls">
                            [{foreach $aLang 'la'}]
                            <textarea 
                                data-lang="[{$la->lang_short}]"
                                class="form-control [{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]" 
                                placeholder="Desc - [{$la->lang_name}]"
                                rows="2"
                                data-prompt-position="topLeft:0,20"
                                name="de_desc[[{$la->lang_short}]]"
                                >[{$item->aDesc[$la->lang_short]|escape:'html'|default:''}]</textarea>
                            [{/foreach}]
                        </div>
                                
                        <div class="erb error_desc"></div>
                    </div>
                    <div class="control-group pull-bottom">
                        <div>Tag :</div>
                        <div class="lang-controls">
                            [{foreach $aLang 'la'}]
                            <textarea 
                                data-lang="[{$la->lang_short}]"
                                class="form-control [{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]" 
                                placeholder="Tag - [{$la->lang_name}]"
                                rows="2"
                                data-prompt-position="topLeft:0,20"
                                name="tag_tag[[{$la->lang_short}]]"
                                >[{$item->aTag[$la->lang_short]|escape:'html'|default:''}]</textarea>
                            [{/foreach}]
                        </div>
                                
                        <div class="erb error_desc"></div>
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
                    <div class="lang-controls">
                        [{foreach $aLang 'la'}]
                        <div 
                            data-lang="[{$la->lang_short}]"
                            class="[{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]" 
                            >
                            <textarea 
                                class="form-control" 
                                rows="12"
                                data-prompt-position="topLeft:0,20"
                                name="co_content[[{$la->lang_short}]]"
                                id="co_content_[{$la->lang_short}]"
                                >[{$item->aContent[$la->lang_short]|escape:'html'|default:''}]</textarea>  
                        </div>
                        [{/foreach}]
                    </div>

                    [{/if}]
                </div>
            </div>
        </form>
[{if $action.ispopup!=1}]
            <div class="control-group">
                <button type="button" class="btn btn-default" onclick="myApp.onSave()"><i class="fa fa-save"></i> Save</button>
                <button type="button" class="btn btn-default" onclick="myApp.onCancel()"><i class="fa fa-close"></i> Cancel</button>
            </div>
    </div>
</div>
[{/if}]
