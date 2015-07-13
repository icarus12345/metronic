[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>Data <small>[{if $item}]Edit Item[{else}]Add Item[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
        <input 
            type="hidden" 
            value="[{$item->data_id|default:''}]" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="data_type" 
                value="[{$item->data_type|default:$type|default:''}]"/>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Title :(*)</div>
                        <input type="text" class="form-control validate[required]" 
                            data-prompt-position="topLeft:0,20"
                            placeholder="Title"
                            name="data_title"
                            onblur="AliasTo(this,'#entryForm input[name=data_alias]')" 
                            value="[{$item->data_title|quotes_to_entities|default:''}]"
                            />
                    </div>
                </div>
                <input type="hidden" name="data_alias" value="[{$item->data_alias|default:''}]" />
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Category :(*)</div>
                        <div class="row-fluid">
                            <select 
                                name="data_category" 
                                class="form-control selectpicker validate[required]"
                                data-prompt-position="topLeft:0,20"
                                data-putto="#frm-err-data_category"
                                data-live-search="true"
                                data-size="10"
                                >
                                <option value="">Nothing Selected</option>
                                [{if $cates|default:null}]
                                [{foreach from=$cates item=c}]
                                    <option 
                                        data-content="<span style='padding-left: [{$c->cat_level*20}]px;'>[{$c->cat_title|escape}]</span>"
                                        [{if $c->cat_id == $item->data_category}]selected="1"[{/if}]
                                        value="[{$c->cat_id|default:''}]">
                                            [{$c->cat_title|default:''}]
                                    </option>
                                [{/foreach}]
                                [{/if}]
                            </select>
                        </div>
                        <div id="frm-err-data_category"></div>
                    </div>
                </div>
            </div>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="control-group pull-bottom">
                        <div>Data type :</div>
                        <select name="data_datatype" class="form-control selectpicker">
                            <option value="string">String</option>
                            <option value="text" [{if $item->data_datatype|default:''=='text'}]selected[{/if}]>Text</option>
                            <option value="image" [{if $item->data_datatype|default:''=='image'}]selected[{/if}]>Image</option>
                            <option value="html" [{if $item->data_datatype|default:''=='html'}]selected[{/if}]>HTML</option>
                        </select>
                    </div>
                </div>
                <div class="col-mb-6 half">
                    <div class="control-group pull-bottom">
                        <div>Status :</div>
                        <select name="data_status" class="form-control selectpicker">
                            <option value="true">Enable</option>
                            <option value="false" [{if $item->data_status|default:''=='false'}]selected[{/if}]>Disable</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="control-group pull-bottom">
                <div>
                    Desc :
                </div>
                <textarea class="form-control de-desc" 
                        rows="3"
                        name="data_desc"
                        data-putto=".error_desc" >[{$item->data_desc|quotes_to_entities|default:''}]</textarea>
                        
                <div class="erb error_desc"></div>
            </div>
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]
