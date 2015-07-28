[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>Category <small>[{if $item}]Edit Item[{else}]Add Item[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
        <input 
            type="hidden" 
            value="[{$item->cat_id|default:''}]" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="cat_type" id="cat_type" 
                value="[{$item->cat_type|default:$type|default:''}]"/>
            
            <div class="pull-bottom control-group">
                <div>
                    Title :(*)
                    [{if count($aLang)>1}]
                    <div class="pull-right lang-tabs">
                        <ul class="nav-tabs">
                            [{foreach $aLang 'la'}]
                            <li class="[{if $la->lang_short==$aLang[0]->lang_short}]active[{/if}]">
                                <a  title="[{$la->lang_name}]" href="#tab_title_[{$la->lang_short}]" data-toggle="tab" >[{$la->lang_short|capitalize}]</a>
                            </li>
                            [{/foreach}]
                        </ul>
                    </div>
                    [{/if}]
                </div>
                <div class="clearfix"></div>
                <div class="controls tab-content">
                    [{foreach $aLang 'la'}]
                    <div 
                        id="tab_title_[{$la->lang_short}]" 
                        class="tab-pane [{if $la->lang_short==$aLang[0]->lang_short}]active[{/if}]"
                        >
                        <input 
                            type="text" 
                            class="form-control validate[required,minSize[4],maxSize[255]]" 
                            placeholder="Title - [{$la->lang_name}]"
                            name="ti_title[[{$la->lang_short}]]"
                            data-prompt-position="topLeft:0,20"
                            value="[{$item->aTitle[$la->lang_short]|escape:'html'|default:''}]"
                            [{if $item->cat_lock!='true'}]
                            onblur="AliasTo(this,'#entryForm input[name=\'als_alias[[{$la->lang_short}]]\']')" 
                            [{/if}]
                            />
                        <input 
                            type="hidden" 
                            name="als_alias[[{$la->lang_short}]]" 
                            value="[{$item->aAlias[$la->lang_short]|escape:'html'|default:''}]"/>   
                    </div>
                    [{/foreach}]
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
                        value="[{$item->cat_thumb|escape:'html'|default:''}]" 
                        name="cat_thumb" 
                        id="cat_thumb"
                        >
                    <span class="add-on popovers" 
                        data-container="body" 
                        data-trigger="hover" 
                        data-placement="top" 
                        data-toggle="popover"
                        data-content="<img style='max-width:100px' src='[{$item->cat_thumb|escape:'html'|default:'/libraries/images/image_available.gif'}]'/>" 
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
                    [{if count($aLang)>1}]
                    <div class="pull-right lang-tabs">
                        <ul class="nav-tabs">
                            [{foreach $aLang 'la'}]
                            <li class="[{if $la->lang_short==$aLang[0]->lang_short}]active[{/if}]">
                                <a  title="[{$la->lang_name}]" href="#tab_desc_[{$la->lang_short}]" data-toggle="tab" >[{$la->lang_short|capitalize}]</a>
                            </li>
                            [{/foreach}]
                        </ul>
                    </div>
                    [{/if}]
                </div>
                <div class="clearfix"></div>
                <div class="controls tab-content">
                    [{foreach $aLang 'la'}]
                    <div 
                        id="tab_desc_[{$la->lang_short}]" 
                        class="tab-pane [{if $la->lang_short==$aLang[0]->lang_short}]active[{/if}]"
                        >
                        <textarea 
                            class="form-control" 
                            placeholder="Desc - [{$la->lang_name}]"
                            rows="2"
                            data-prompt-position="topLeft:0,20"
                            name="de_desc[[{$la->lang_short}]]"
                            >[{$item->aDesc[$la->lang_short]|escape:'html'|default:''}]</textarea>  
                    </div>
                    [{/foreach}]
                </div>
                        
                <div class="erb error_desc"></div>
            </div>
            <div class="row half">
                <!-- <div class="col-sm-6 half">
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
                </div> -->
                <div class="col-xs-6 half">
                    <div class="control-group pull-bottom">
                        <div>Position :</div>
                        <input type="number" 
                                class="form-control" value="[{$item->cat_position|default:''}]" 
                                name="cat_position"
                                >
                    </div>
                </div>
                <div class="col-xs-6 half">
                    <div class="control-group pull-bottom">
                        <div>Status :</div>
                        <select name="cat_status" class="form-control selectpicker">
                            <option value="true">Enable</option>
                            <option value="false" [{if $item->cat_status|default:''=='false'}]selected[{/if}]>Disable</option>
                        </select>
                    </div>
                </div>
            </div>
            
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
<div class="space-line"></div>
[{/if}]