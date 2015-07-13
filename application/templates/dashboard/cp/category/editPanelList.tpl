
        <input 
            type="hidden" 
            value="[{$item->cat_id|default:''}]" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="cat_type" id="cat_type" 
                value="[{$item->cat_type|default:$type|default:''}]"/>
            
            <div class="pull-bottom control-group">
                <div>Title :(*)</div>
                <input type="text" class="form-control validate[required,minSize[4],maxSize[255]]" 
                    placeholder="Title"
                    name="cat_title"
                    data-prompt-position="topLeft:0,20"
                    [{if $item->cat_lock!='true'}]
                    onblur="AliasTo(this,'#entryForm input[name=cat_alias]')" 
                    [{/if}]
                    value="[{$item->cat_title|quotes_to_entities|default:''}]"
                    />
            </div>
            <input type="hidden" name="cat_alias" value="[{$item->cat_alias|quotes_to_entities|default:''}]"/>    
            <div class="pull-bottom control-group">
                <div>Image :</div>
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
                </div>
                <textarea class="form-control de-desc" 
                        rows="2"
                        name="cat_desc"
                        data-putto=".error_desc" >[{$item->cat_desc|quotes_to_entities|default:''}]</textarea>
                        
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
