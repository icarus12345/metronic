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
            <div class="row half">
                <div class="col-mb-12 half">
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
                </div>
                <div class="col-mb-12 half">
                    <div class="pull-bottom control-group">
                        <div>Parent :(*)</div>
                        
                        <div class="row-fluid">
                            <select name="cat_parent" class="form-control selectpicker"
                                    data-size="10"
                                    >
                                <option value="0" data-title="[ Root ]" data-level="-1">[ Root ]</option>
                                [{assign var="level" value=-1}]
                                [{foreach from=$aCategory item=c}]
                                    [{if $c->cat_id == $item->cat_id}]
                                        [{assign var="level" value=$c->cat_level}]
                                    [{/if}]
                                    [{if $level!=-1 and $c->cat_level <= $level and $c->cat_id != $item->cat_id}]
                                        [{assign var="level" value=-1}]
                                    [{/if}]
                                    <option 
                                        data-content="<span style='padding-left: [{$c->cat_level*20+20}]px;'>[{$c->ti_title|escape}]</span>"
                                        [{if $c->cat_id == $item->cat_parent}]selected="1"[{/if}]
                                        [{if $level!=-1 and $level < $c->cat_level}]disabled=1[{/if}]
                                        [{if $c->cat_id == $item->cat_id}]disabled=1[{/if}]
                                        value="[{$c->cat_id|default:''}]">
                                            [{$c->ti_title|default:''}]
                                    </option>
                                [{/foreach}]
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
                            value="[{$item->cat_link|quotes_to_entities|default:''}]"
                            />
                    </div>
                </div>
                <div class="col-sm-2 half">
                    <div class="control-group pull-bottom">
                        <div>Icon :</div>
                        <input type="text" 
                            class="form-control" value="[{$item->cat_thumb|default:''}]" 
                            name="cat_thumb"
                            >
                    </div>
                </div>
                <div class="col-sm-2 half">
                    <div class="control-group pull-bottom">
                        <div>Position :</div>
                        <input type="number" 
                                class="form-control" value="[{$item->cat_position|default:''}]" 
                                name="cat_position"
                                >
                    </div>
                </div>
                <div class="col-sm-2 half">
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
            <!-- <div class="control-group">
                <button class="btn btn-default" type="button" onclick="myApp.onSave()">Save</button>
                <button class="btn btn-default" type="button" onclick="myApp.onCancel()">Cancel</button>
            </div> -->
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
<div class="space-line"></div>
[{/if}]
