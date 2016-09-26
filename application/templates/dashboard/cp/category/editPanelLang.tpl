<div class="widget">
    <div class="modal-header">
        <h4>Category <small>[{if $item}]Edit Item[{else}]Add Item[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
        <input 
            type="hidden" 
            value="[{$item->cat_id|default:''}]" 
            id="EntryId"
            />
        <div class="pull-bottom">
            <div class="btn-group btn-group-xs" data-toggle="buttons">
                <label class="btn btn-default active" title="Tiếng Việt">
                    <input 
                        type="radio" name="radiolangs"
                        value="vi" 
                        autocomplete="off" checked
                        onchange="radioLangsChange(this.value)"
                        />
                    Tiếng Việt
                </label>
                <label class="btn btn-default" title="English">
                    <input 
                        type="radio" name="radiolangs"
                        value="en" 
                        autocomplete="off"
                        onchange="radioLangsChange(this.value)"
                        />
                    English
                </label>
            </div>
        </div>
        <div class="clearfix"></div>
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="cat_type" id="cat_type" 
                value="[{$item->cat_type|default:$type|default:''}]"/>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group lang-controls">
                        <div>Title :(*)</div>
                        <input type="text" class="form-control  validate[required,minSize[4],maxSize[255]]" 
                            placeholder="Tiêu đề"
                            name="cat_title"
                            data-lang="vi"
                            data-prompt-position="topLeft:0,20"
                            [{if $item->cat_lock!='true'}]
                            onblur="AliasTo(this,'#entryForm input[name=cat_alias]')" 
                            [{/if}]
                            value="[{$item->cat_title|quotes_to_entities|default:''}]"
                            />
                        <input type="text" class="form-control invisible validate[required,minSize[4],maxSize[255]]" 
                            placeholder="Title"
                            name="cat_title_en"
                            data-lang="en"
                            data-prompt-position="topLeft:0,20"
                            [{if $item->cat_lock!='true'}]
                            onblur="AliasTo(this,'#entryForm input[name=cat_alias_en]')" 
                            [{/if}]
                            value="[{$item->cat_title_en|quotes_to_entities|default:''}]"
                            />
                        <input type="hidden" name="cat_alias" value="[{$item->cat_alias|quotes_to_entities|default:''}]"/>
                        <input type="hidden" name="cat_alias_en" value="[{$item->cat_alias_en|quotes_to_entities|default:''}]"/>
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
                                [{assign var="level" value=-1}]
                                [{foreach from=$cates item=c}]
                                    [{if $c->cat_id == $item->cat_id}]
                                        [{assign var="level" value=$c->cat_level}]
                                    [{/if}]
                                    [{if $level!=-1 and $c->cat_level <= $level and $c->cat_id != $item->cat_id}]
                                        [{assign var="level" value=-1}]
                                    [{/if}]
                                    <option 
                                        data-content="<span style='padding-left: [{$c->cat_level*20+20}]px;'>[{$c->cat_title|escape}]</span>"
                                        [{if $c->cat_id == $item->cat_parent}]selected="1"[{/if}]
                                        [{if $level!=-1 and $level < $c->cat_level}]disabled=1[{/if}]
                                        [{if $c->cat_id == $item->cat_id}]disabled=1[{/if}]
                                        value="[{$c->cat_id|default:''}]">
                                            [{$c->cat_title|default:''}]
                                    </option>
                                [{/foreach}]
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="control-group pull-bottom">
                <div>Link :</div>
                <input type="text" class="form-control" 
                    placeholder="Link"
                    name="cat_link"
                    value="[{$item->cat_link|quotes_to_entities|default:''}]"
                    />
            </div>
            <div class="row half">
                <div class="col-sm-6 half">
                    <div class="control-group pull-bottom">
                        <div>Image :</div>
                        <div class="input-append">
                            <input type="text" 
                                    class="form-control" value="[{$item->cat_thumb|default:''}]" 
                                    name="cat_thumb" id="cat_thumb"
                                    >
                            <span class="add-on" onclick="BrowseServer('#cat_thumb')">
                                <i class="fa fa-image"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 half">
                    <div class="control-group pull-bottom">
                        <div>Position :</div>
                        <input type="number" 
                                class="form-control" value="[{$item->cat_position|default:''}]" 
                                name="cat_position"
                                >
                    </div>
                </div>
                <div class="col-sm-3 half">
                    <div class="control-group pull-bottom">
                        <div>Status :</div>
                        <select name="cat_status" class="form-control selectpicker">
                            <option value="true">Enable</option>
                            <option value="false" [{if $item->cat_status|default:''=='false'}]selected[{/if}]>Disable</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="control-group pull-bottom">
                <div>
                    Desc :
                </div>
                <div class="lang-controls">
                    <textarea class="form-control de-desc" 
                        rows="2"
                        data-lang="vi"
                        name="cat_desc"
                        placeholder="Ghi chú"
                        data-putto=".error_desc" >[{$item->cat_desc|quotes_to_entities|default:''}]</textarea>
                    <textarea class="form-control de-desc invisible" 
                        rows="2"
                        data-lang="en"
                        placeholder="Description"
                        name="cat_desc_en"
                        data-putto=".error_desc" >[{$item->cat_desc_en|quotes_to_entities|default:''}]</textarea>
                            
                    <div class="erb error_desc"></div>
                </div>
            </div>
            <div class="control-group">
                <button class="btn btn-default" type="button" onclick="myApp.onSave()">Save</button>
                <button class="btn btn-default" type="button" onclick="myApp.onCancel()">Cancel</button>
            </div>
        </form>
    </div>
</div>
<div class="space-line"></div>
