[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>News <small>[{if $item}]Edit Item[{else}]Add Item[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
        <input 
            type="hidden" 
            value="[{$item->news_id|default:''}]" 
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
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="news_type" id="news_type" 
                value="[{$item->news_type|default:$type|default:''}]"/>
            
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
                                        [{if $item->news_lock!='true'}]
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
                                        value="[{$item->news_thumb|escape:'html'|default:''}]" 
                                        name="news_thumb" 
                                        id="news_thumb"
                                        >
                                    <span class="add-on popovers" 
                                        data-container="body" 
                                        data-trigger="hover" 
                                        data-placement="top" 
                                        data-toggle="popover"
                                        data-content="<img style='max-width:100px' src='[{$item->news_thumb|escape:'html'|default:'/libraries/images/image_available.gif'}]'/>" 
                                        data-original-title="Image Preview"
                                        onclick="BrowseServer('#news_thumb')">
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
                                        name="news_category" 
                                        class="form-control selectpicker validate[required]"
                                        data-prompt-position="topLeft:0,20"
                                        data-putto="#frm-err-news_category"
                                        data-live-search="true"
                                        data-size="10"
                                        >
                                        <option value="">Nothing Selected</option>
                                        [{if $aCategory|default:null}]
                                        [{foreach from=$aCategory item=c}]
                                            <option 
                                                data-content="<span class='lang-controls' style='padding-left: [{$c->cat_level*20+20}]px;'>[{foreach $aLang 'la'}]<span data-lang='[{$la->lang_short}]' class='[{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]'>[{$c->title[$la->lang_short]|escape}]</span>[{/foreach}]</span>"
                                                [{if $c->cat_id == $item->news_category}]selected="1"[{/if}]
                                                value="[{$c->cat_id|default:''}]">
                                                    [{$c->ti_title|default:''}]
                                            </option>
                                        [{/foreach}]
                                        [{/if}]
                                    </select>
                                </div>
                                <div id="frm-err-news_category"></div>
                            </div>
                        </div>
                    </div>

                    <div class="row half">
                        <!-- <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Code (*):</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[20]]" 
                                    data-prompt-position="topLeft:0,20"
                                    value="[{$item->news_code|default:''}]" 
                                    name="news_code"
                                    >
                            </div>
                        </div> -->
                        <div class="col-xs-6 half col-mb-6">
                            <div class="control-group pull-bottom">
                                <div>Cover:</div>
                                <div class="input-append">
                                    <input type="text" 
                                        class="form-control validate[required,maxSize[255]]"
                                        data-prompt-position="topLeft:0,20"
                                        value="[{$item->news_cover|escape:'html'|default:''}]" 
                                        name="news_cover" 
                                        id="news_cover"
                                        >
                                    <span class="add-on popovers" 
                                        data-container="body" 
                                        data-trigger="hover" 
                                        data-placement="top" 
                                        data-toggle="popover"
                                        data-content="<img style='max-width:100px' src='[{$item->news_cover|escape:'html'|default:'/libraries/images/image_available.gif'}]'/>" 
                                        data-original-title="Image Preview"
                                        onclick="BrowseServer('#news_cover')">
                                        <i class="fa fa-image"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Position :</div>
                                <input type="number" 
                                    class="form-control" value="[{$item->news_position|default:''}]" 
                                    name="news_position"
                                    >
                            </div>
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Status :</div>
                                <select name="news_status" class="form-control selectpicker">
                                    <option value="true">Enable</option>
                                    <option value="false" [{if $item->news_status|default:''=='false'}]selected[{/if}]>Disable</option>
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
                    <div class="control-group pull-bottom">
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
        </form>
[{if $action.ispopup!=1}]
            <div class="control-group">
                <button type="button" class="btn btn-default" onclick="myApp.onSave()"><i class="fa fa-save"></i> Save</button>
                <button type="button" class="btn btn-default" onclick="myApp.onCancel()"><i class="fa fa-close"></i> Cancel</button>
            </div>
    </div>
</div>
[{/if}]
