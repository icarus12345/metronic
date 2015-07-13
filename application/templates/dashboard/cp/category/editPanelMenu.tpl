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
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Title :(*)</div>
                        <input type="text" class="form-control validate[required]" 
                            data-prompt-position="topLeft:0,20"
                            placeholder="Title"
                            name="cat_title"
                            value="[{$item->cat_title|quotes_to_entities|default:''}]"
                            data-putto=".error-title"/>
                        <div class="erb error-title"></div>
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
                </div>
                <textarea class="form-control de-desc" 
                        rows="3"
                        name="cat_desc"
                        data-putto=".error_desc" >[{$item->cat_desc|quotes_to_entities|default:''}]</textarea>
                        
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
