
<input 
    type="hidden" 
    value="[{$item->image_id|default:''}]" 
    id="EntryId"
    />
<form name="entryForm" id="entryForm" target="integration_asynchronous">
    <input type="hidden" name="image_type" id="image_type" 
           value="[{$item->image_type|default:$type|default:''}]"/>

    <div class="pull-bottom control-group">
        <div>Title :(*)</div>
        <input type="text" class="form-control validate[required,minSize[4],maxSize[255]]" 
               placeholder="Title"
               name="image_title"
               data-prompt-position="topLeft:0,20"
               value="[{$item->image_title|quotes_to_entities|default:''}]"
               />
    </div>
    <div class="pull-bottom control-group">
        <div>Image :(*)</div>
            <div class="input-append">
                <input type="text" 
                    class="form-control validate[required,maxSize[255]]"
                    data-prompt-position="topLeft:0,20"
                    value="[{$item->image_src|escape:'html'|default:''}]" 
                    name="image_src" 
                    id="image_src"
                    >
                <span class="add-on popovers" 
                      data-container="body" 
                      data-trigger="hover" 
                      data-placement="top" 
                      data-toggle="popover"
                      data-content="<img style='max-width:100px' src='[{$item->image_src|escape:'html'|default:'/libraries/images/no_image_available.png'}]'/>" 
                      data-original-title="Image Preview"
                      title="Choose Image"
                    onclick="BrowseServer('#image_src')">
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
                  name="image_desc"
                  >[{$item->image_desc|quotes_to_entities|default:''}]</textarea>

    </div>
    <div class="row half">
        <!-- <div class="col-sm-6 half">
            <div class="control-group pull-bottom">
                <div>Image :</div>
                <div class="input-append">
                    <input type="text" 
                            class="form-control" value="[{$item->image_thumb|default:''}]" 
                            name="image_thumb" id="image_thumb"
                            >
                    <span class="add-on" onclick="BrowseServer('#image_thumb')">
                        <i class="fa fa-image"></i>
                    </span>
                </div>
            </div>
        </div> -->
        <div class="col-xs-6 half">
            <div class="control-group pull-bottom">
                <div>Position :</div>
                <input type="number" 
                       class="form-control" value="[{$item->image_position|default:''}]" 
                       name="image_position"
                       >
            </div>
        </div>
        <div class="col-xs-6 half">
            <div class="control-group pull-bottom">
                <div>Status :</div>
                <select name="image_status" class="form-control selectpicker">
                    <option value="true">Enable</option>
                    <option value="false" [{if $item->image_status|default:''=='false'}]selected[{/if}]>Disable</option>
                </select>
            </div>
        </div>
    </div>

</form>
