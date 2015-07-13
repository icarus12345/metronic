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
            <input type="hidden" name="data_type" value="[{$item->data_type|default:$type|default:''}]"/>
            <input type="hidden" name="data_datatype" value="[{$item->data_datatype|default:'image'}]"/>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="pull-bottom control-group">
                        <div>Title :(*)</div>
                        <input type="text" class="form-control validate[required]" 
                            data-prompt-position="topLeft:0,20"
                            placeholder="Title"
                            name="data_title"
                            value="[{$item->data_title|quotes_to_entities|default:''}]"
                            />
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
            <div class="pull-bottom control-group">
                <div>Image :(*)</div>
                <div class="input-append">
                    <input type="text" 
                        class="form-control validate[required,maxSize[255]]"
                        data-prompt-position="topLeft:0,20"
                        value="[{$item->data_content|escape:'html'|default:''}]" 
                        name="data_content" 
                        id="data_content"
                        >
                    <span class="add-on popovers" 
                        data-container="body" 
                        data-trigger="hover" 
                        data-placement="top" 
                        data-toggle="popover"
                        data-content="<img style='max-width:100px' src='[{$item->data_content|escape:'html'|default:'/libraries/images/image_available.gif'}]'/>" 
                        data-original-title="Image Preview"
                        title="Choose Image"
                        onclick="BrowseServer('#data_content')">
                        <i class="fa fa-image"></i>
                    </span>
                </div>
            </div> 
            <div class="code">[{$item->data_desc}]</div>
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]
