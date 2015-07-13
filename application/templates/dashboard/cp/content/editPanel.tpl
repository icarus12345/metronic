[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>Content <small>[{if $item}]Edit Item[{else}]Add Item[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
        <input 
            type="hidden" 
            value="[{$item->content_id|default:''}]" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="content_type" 
                value="[{$item->content_type|default:$type|default:''}]"/>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Title :(*)</div>
                        <input type="text" 
                            class="form-control validate[required]" 
                            data-prompt-position="topLeft:0,20"
                            placeholder="Title"
                            name="content_title"
                            [{if $item->content_lock!='true'}]
                            onblur="AliasTo(this,'#entryForm input[name=content_alias]')"
                            [{/if}]
                            value="[{$item->content_title|quotes_to_entities|default:''}]"
                            />
                    </div>
                </div>
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Alias :(*)</div>
                        <input type="text" 
                            class="form-control validate[required]" 
                            [{if $item->content_lock=='true'}]
                            disabled=1
                            [{/if}]
                            data-prompt-position="topLeft:0,20"
                            placeholder="Alias"
                            name="content_alias"
                            value="[{$item->content_alias|quotes_to_entities|default:''}]"
                            />
                    </div>
                </div>
            </div>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Category :(*)</div>
                        <div class="row-fluid">
                            <select 
                                name="content_category" 
                                class="form-control selectpicker validate[required]"
                                data-prompt-position="topLeft:0,20"
                                data-putto="#frm-err-content_category"
                                data-live-search="true"
                                data-size="10"
                                >
                                <option value="">Nothing Selected</option>
                                [{if $cates|default:null}]
                                [{foreach from=$cates item=c}]
                                    <option 
                                        data-content="<span style='padding-left: [{$c->cat_level*20}]px;'>[{$c->cat_title|escape}]</span>"
                                        [{if $c->cat_id == $item->content_category}]selected="1"[{/if}]
                                        value="[{$c->cat_id|default:''}]">
                                            [{$c->cat_title|default:''}]
                                    </option>
                                [{/foreach}]
                                [{/if}]
                            </select>
                        </div>
                        <div id="frm-err-content_category"></div>
                    </div>
                </div>
                <div class="col-mb-6 col-sm-3 half">
                    <div class="pull-bottom control-group">
                        <div>Image :(*)</div>
                        <div class="input-append">
                            <input type="text" 
                                class="form-control validate[required,maxSize[255]]"
                                data-prompt-position="topLeft:0,20"
                                value="[{$item->content_thumb|escape:'html'|default:''}]" 
                                name="content_thumb" 
                                id="content_thumb"
                                >
                            <span class="add-on popovers" 
                                data-container="body" 
                                data-trigger="hover" 
                                data-placement="top" 
                                data-toggle="popover"
                                data-content="<img style='max-width:100px' src='[{$item->content_thumb|escape:'html'|default:'/libraries/images/image_available.svg'}]'/>" 
                                data-original-title="Image Preview"
                                title="Choose Image"
                                onclick="BrowseServer('#content_thumb')">
                                <i class="fa fa-image"></i>
                            </span>
                        </div>
                    </div>  
                </div>
                <div class="col-mb-6 col-sm-3 half">
                    <div class="control-group pull-bottom">
                        <div>Status :</div>
                        <select name="content_status" class="form-control selectpicker">
                            <option value="true">Enable</option>
                            <option value="false" [{if $item->content_status|default:''=='false'}]selected[{/if}]>Disable</option>
                        </select>
                    </div>
                </div>
                
            </div>
            <div class="control-group pull-bottom">
                <div>
                    Desc (*):
                </div>
                <textarea class="form-control validate[required]" 
                        rows="3"
                        name="content_desc"
                        data-putto=".error_desc" >[{$item->content_desc|quotes_to_entities|default:''}]</textarea>
                        
                <div class="erb error_desc"></div>
            </div>
            <div class="control-group pull-bottom">
                <div>
                    Tags:
                </div>
                <textarea class="form-control" 
                        rows="2"
                        name="content_tag"
                        >[{$item->content_tag|quotes_to_entities|default:''}]</textarea>
            </div>
            <div class="control-group pull-bottom">
                <div>
                    Content (*):
                </div>
                <div>
                    [{if $ci->agent->is_mobile()}]
                    <div>
                        <div class="code">Editor does not support in Mobile, please user desktop browser to edit.</div>
                    </div>
                    [{else}]
                    <textarea class="form-control validate[required]" 
                            rows="3"
                            name="content_content"
                            id="content_content"
                            data-putto=".error_desc" >[{$item->content_content}]</textarea>
                    [{/if}]
                </div>
                        
                <div class="erb error_desc"></div>
            </div>
            <div class="control-group">
            <button type="button" class="btn btn-default" onclick="myApp.onSave()"><i class="fa fa-save"></i> Save</button>
            <button type="button" class="btn btn-default" onclick="myApp.onCancel()"><i class="fa fa-close"></i> Cancel</button>
            </div>
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]
