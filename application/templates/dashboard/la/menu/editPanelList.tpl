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
            value="[{$item->menu_id|default:''}]" 
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
            <input type="hidden" name="menu_type" id="menu_type" 
                value="[{$item->menu_type|default:$type|default:''}]"/>
            
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
                            onblur="AliasTo(this,'#entryForm input[name=\'als_alias[[{$la->lang_short}]]\']')" 
                            />
                        <input 
                            type="hidden" 
                            name="als_alias[[{$la->lang_short}]]" 
                            value="[{$item->aAlias[$la->lang_short]|escape:'html'|default:''}]"/>   
                    [{/foreach}]
                </div>
            </div>
            <div class="control-group pull-bottom">
                <div>Link :</div>
                <input type="text" class="form-control" 
                    placeholder="Link"
                    name="menu_link"
                    value="[{$item->menu_link|quotes_to_entities|default:''}]"
                    />
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
            
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
<div class="space-line"></div>
[{/if}]