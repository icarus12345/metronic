[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>Hình ảnh <small>[{if $item}]Chỉnh sửa[{else}]Thêm mới[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
<input 
    type="hidden" 
    value="[{$item->image_id|default:''}]" 
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
<div class="clearfix"></div>
<form name="entryForm" id="entryForm" target="integration_asynchronous" class="lang-controls">
    <input type="hidden" name="image_type" id="image_type" 
           value="[{$item->image_type|default:$type|default:''}]"/>
    <div class="control-group pull-bottom">
        <div>Loại :</div>
        <select name="image_category" class="form-control selectpicker">
            <option value="">[---Chọn---]</option>
            <option value="174">Dịch vụ cho thuê văn phòng thông minh</option>
            <option value="175">Dịch vụ cho thuê văn phòng chia sẻ</option>
            <option value="176">Dịch vụ cho thuê văn phòng họp</option>
            <option value="177">Dịch vụ cho thuê văn phòng làm việc</option>
            <option value="178">Dịch vụ tư vấn thiết kế văn phòng</option>
            <option value="179">Dịch vụ đăng ký thành lập công ty</option>
        </select>
    </div>
    <div class="pull-bottom control-group" data-lang="vi">
        <div>Tiêu đề :(*)</div>
        <input type="text" class="form-control validate[required,minSize[4],maxSize[255]]" 
               placeholder="Tiêu đề"
               name="image_title"
               data-prompt-position="topLeft:0,20"
               value="[{$item->image_title|quotes_to_entities|default:''}]"
               />
    </div>
    <div class="pull-bottom control-group invisible" data-lang="en">
        <div>Title :(*)</div>
        <input type="text" class="form-control validate[required,minSize[4],maxSize[255]]" 
               placeholder="Title"
               name="image_title_en"
               data-prompt-position="topLeft:0,20"
               value="[{$item->image_title_en|quotes_to_entities|default:''}]"
               />
    </div>
    <div class="pull-bottom control-group">
        <div>Hình ảnh :(*)</div>
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
    <div class="pull-bottom control-group">
        <div>Hình ảnh Cover :(*)</div>
            <div class="input-append">
                <input type="text" 
                    class="form-control validate[required,maxSize[255]]"
                    data-prompt-position="topLeft:0,20"
                    value="[{$item->image_cover|escape:'html'|default:''}]" 
                    name="image_cover" 
                    id="image_cover"
                    >
                <span class="add-on popovers" 
                      data-container="body" 
                      data-trigger="hover" 
                      data-placement="top" 
                      data-toggle="popover"
                      data-content="<img style='max-width:100px' src='[{$item->image_cover|escape:'html'|default:'/libraries/images/no_image_available.png'}]'/>" 
                      data-original-title="Image Preview"
                      title="Choose Image"
                    onclick="BrowseServer('#image_cover')">
                    <i class="fa fa-image"></i>
                </span>
            </div>
    </div>   
    <div class="control-group pull-bottom" data-lang="vi">
        <div>
            Mô tả :
        </div>
        <textarea class="form-control de-desc " 
                  rows="2"
                  name="image_desc"
                  >[{$item->image_desc|quotes_to_entities|default:''}]</textarea>

    </div>  
    <div class="control-group pull-bottom invisible" data-lang="en">
        <div>
            Desc :
        </div>
        <textarea class="form-control de-desc" 
                  rows="2"
                  name="image_desc_en"
                  >[{$item->image_desc_en|quotes_to_entities|default:''}]</textarea>

    </div>
    [{if $ci->agent->is_mobile()}]
    <div>
        <div class="code">Editor does not support in Mobile, please user desktop browser to edit.</div>
    </div>
    [{else}]
        <div data-lang="vi">
            <div>Nội dung:</div>
            <textarea 
                class="form-control" 
                rows="12"
                name="image_content" id="image_content"
                >[{$item->image_content}]</textarea>
        </div>
        <div data-lang="en" class="invisible">
            <div>Content:</div>
            <textarea 
                class="form-control" 
                rows="12"
                name="image_content_en" id="image_content_en"
                >[{$item->image_content_en}]</textarea>
        </div>
    [{/if}]
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
                <div>Thứ tự :</div>
                <input type="number" 
                       class="form-control" value="[{$item->image_position|default:''}]" 
                       name="image_position"
                       >
            </div>
        </div>
        <div class="col-xs-6 half">
            <div class="control-group pull-bottom">
                <div>Trạng thái :</div>
                <select name="image_status" class="form-control selectpicker">
                    <option value="true">Enable</option>
                    <option value="false" [{if $item->image_status|default:''=='false'}]selected[{/if}]>Disable</option>
                </select>
            </div>
        </div>
    </div>

</form>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]