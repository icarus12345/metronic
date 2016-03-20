[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>Data <small>option</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:dataApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:dataApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
        <input 
            type="hidden" 
            value="[{$item->data_id|default:''}]" 
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
            <input type="hidden" name="data_type" id="data_type" value="[{$item->data_type|default:$type|default:''}]"/>
            <input type="hidden" name="data_token" id="data_token" value="[{$item->data_token|default:$token|default:''}]"/>
            <div class="row half">
                <div class="col-mb-12 half">
                    <div class="pull-bottom control-group">
                        <div>Title :(*)</div>
                        <div class="lang-controls">
                            [{foreach $aLang 'la'}]
                                <input 
                                    type="text" 
                                    data-lang="[{$la->lang_short}]"
                                    class="form-control validate[required,minSize[4],maxSize[255]] [{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]" 
                                    placeholder="Title - [{$la->lang_name}]"
                                    name="data_data[title][[{$la->lang_short}]]"
                                    data-prompt-position="topLeft:0,20"
                                    value="[{$item->data_data.title[$la->lang_short]|escape:'html'|default:''}]"
                                    />  
                            [{/foreach}]
                        </div>
                    </div>
                </div>
            </div>
            <div class="row half">
                <div class="col-sm-6 half">
                    <div class="control-group pull-bottom">
                        <div>Price :</div>
                        <div class="lang-controls">
                            [{foreach $aLang 'la'}]
                            <input type="number" 
                                placeholder="Price - [{$la->lang_name}]"
                                data-lang="[{$la->lang_short}]"
                                class="form-control [{if $la->lang_short!=$aLang[0]->lang_short}]invisible[{/if}]" 
                                value="[{$item->data_data.price[$la->lang_short]|default:''}]" 
                                name="data_data[price][[{$la->lang_short}]]"
                                >
                            [{/foreach}]
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 half">
                    <div class="control-group pull-bottom">
                        <div>Status :</div>
                        <select name="data_status" class="form-control selectpicker">
                            <option value="true">Enable</option>
                            <option value="false" [{if $item->data_status|default:''=='false'}]selected[{/if}]>Disable</option>
                        </select>
                    </div>
                </div>
            </div>
            [{if $action.ispopup!=1}]
            <div class="control-group">
                <button class="btn btn-default" type="button" onclick="dataApp.onSave()">Save</button>
                <button class="btn btn-default" type="button" onclick="dataApp.onCancel()">Cancel</button>
            </div>
            [{/if}]
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
<div class="space-line"></div>
[{/if}]