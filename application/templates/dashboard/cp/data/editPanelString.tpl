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
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="data_type" value="[{$item->data_type|default:$type|default:''}]"/>
            <input type="hidden" name="data_datatype" value="[{$item->data_datatype|default:'string'}]"/>
            <div class="row half">
                <div class="col-mb-6 half">
                    <div class="lang-controls">
                        <div class="pull-bottom control-group" data-lang="vi">
                            <div>Tiêu đề :(*)</div>
                            <input type="text" class="form-control validate[required]" 
                                data-prompt-position="topLeft:0,20"
                                placeholder="Title"
                                name="data_title"
                                value="[{$item->data_title|quotes_to_entities|default:''}]"
                                />
                        </div>
                        <div class="pull-bottom control-group invisible" data-lang="en">
                            <div>Title :(*)</div>
                            <input type="text" class="form-control validate[required]" 
                                data-prompt-position="topLeft:0,20"
                                placeholder="Title"
                                name="data_title_en"
                                value="[{$item->data_title_en|quotes_to_entities|default:''}]"
                                />
                        </div>
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
            <div class="lang-controls">
                <div class="control-group pull-bottom" data-lang="vi">
                    <div>
                        Nội dung :
                    </div>
                    <textarea 
                        class="form-control de-desc" 
                        rows="3"
                        name="data_content"
                        >[{$item->data_content|quotes_to_entities|default:''}]</textarea>
                </div>
                <div class="control-group pull-bottom invisible" data-lang="en">
                    <div>
                        Content :
                    </div>
                    <textarea 
                        class="form-control de-desc" 
                        rows="3"
                        name="data_content_en"
                        >[{$item->data_content_en|quotes_to_entities|default:''}]</textarea>
                </div>
            </div>
            <div class="code">[{$item->data_desc}]</div>
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]
