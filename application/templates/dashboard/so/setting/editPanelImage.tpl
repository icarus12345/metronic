<div class="col-sm-6">
    <div class="widget">
        <div class="modal-header">
            <h4>[{$item->data_title}]</h4>
            <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
                <li>
                    <a href="JavaScript:myApp.saveForm([{$item->data_id|default:''}])" title="Save" onclick="">
                        <i class="fa fa-save"></i>
                    </a>
                </li>
            </ul>
        </div>
        <div class="" style="background:#fff">
            <div class="space-line"></div>
            <div class="col-sm-12">
                <form data-id="[{$item->data_id|default:''}]" name="entryForm[{$item->data_id|default:''}]" id="entryForm[{$item->data_id|default:''}]" target="integration_asynchronous">
                    <input type="hidden" name="data_type" value="[{$item->data_type|default:$type|default:''}]"/>
                    <input type="hidden" name="data_datatype" value="[{$item->data_datatype|default:'image'}]"/>
                    <!-- <div class="row half">
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
                    </div> -->
                    <div class="pull-bottom control-group">
                        <!-- <div>Image :(*)</div> -->
                        <input type="hidden"
                                class="form-control validate[required,maxSize[255]]"
                                data-prompt-position="topLeft:0,20"
                                value="[{$item->data_content|escape:'html'|default:''}]" 
                                name="data_content" 
                                id="data_content[{$item->data_id}]"
                                >
                        <div class="text-center">
                            <img style="max-width:100%;"  class="img-thumbnail" id="img-preview-[{$item->data_id}]" src="[{$item->data_content|escape:'html'|default:'/libraries/images/image_available.gif'}]">
                            <div class="space-line"></div>
                            <button type="button" class="btn btn-circle btn-default"
                            onclick="BrowseServerCallBack(function(src){document.getElementById('img-preview-[{$item->data_id}]').src = src;document.getElementById('data_content[{$item->data_id}]').value = src;});"
                            ><i class="fa fa-image"></i> Browse Image</button>
                        </div>
                    </div> 
                    <div class="code">[{$item->data_desc}]</div>
                </form>
            </div>
            <div class="clearfix"></div>
            <div class="space-line"></div>
        </div>
    </div>
    <div class="space-line"></div>
</div>