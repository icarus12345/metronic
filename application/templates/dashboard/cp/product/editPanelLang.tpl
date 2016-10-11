[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>Product <small>[{if $item}]Chỉnh sửa[{else}]Thêm mới[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
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
        <input 
            type="hidden" 
            value="[{$item->product_id|default:''}]" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="product_type" id="product_type" 
                value="[{$item->product_type|default:$type|default:''}]"/>
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active">
                    <a href="#product-info-tab" aria-controls="product-info-tab" role="tab" data-toggle="tab">Thông tin</a>
                </li>
                <li role="presentation">
                    <a href="#product-images-tab" aria-controls="product-images-tab" role="tab" data-toggle="tab">Tiện ích</a>
                </li>
                <li role="presentation">
                    <a href="#product-content-tab" aria-controls="product-content-tab" role="tab" data-toggle="tab">Nội Dung</a>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="product-info-tab">
                    <div class="row half pull-top">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group lang-controls">
                                <div>Tiêu đề :(*)</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]]" 
                                    onblur="AliasTo(this,'#entryForm input[name=product_alias]')" 
                                    placeholder="Tiêu đề"
                                    data-lang="vi"
                                    name="product_title"
                                    data-prompt-position="topLeft:0,20"
                                    value="[{$item->product_title|quotes_to_entities|default:''}]"
                                    />
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]] invisible" 
                                    onblur="AliasTo(this,'#entryForm input[name=product_alias_en]')" 
                                    placeholder="Title"
                                    data-lang="en"
                                    name="product_title_en"
                                    data-prompt-position="topLeft:0,20"
                                    value="[{$item->product_title_en|quotes_to_entities|default:''}]"
                                    />
                            </div>
                        </div>
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group lang-controls">
                                <div>Alias :(*)</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]]" 
                                    placeholder="Alias"
                                    data-lang="vi"
                                    name="product_alias"
                                    data-prompt-position="topLeft:0,20"
                                    value="[{$item->product_alias|quotes_to_entities|default:''}]"
                                    />
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]] invisible" 
                                    placeholder="Alias"
                                    data-lang="en"
                                    name="product_alias_en"
                                    data-prompt-position="topLeft:0,20"
                                    value="[{$item->product_alias_en|quotes_to_entities|default:''}]"
                                    />
                            </div>
                        </div>
                    </div>
                    <div class="row half">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Hình ảnh :(*) <a href="JavaScript:myApp.ImageCheck()" class="code">Check Image</a></div>
                                <div class="input-append">
                                    <input type="text" 
                                        class="form-control validate[required,maxSize[255]]"
                                        data-prompt-position="topLeft:0,20"
                                        value="[{$item->product_thumb|escape:'html'|default:''}]" 
                                        name="product_thumb" 
                                        id="product_thumb"
                                        >
                                    <span class="add-on popovers" 
                                        data-container="body" 
                                        data-trigger="hover" 
                                        data-placement="top" 
                                        data-toggle="popover"
                                        data-content="<img style='max-width:100px' src='[{$item->product_thumb|escape:'html'|default:'/libraries/images/image_available.gif'}]'/>" 
                                        data-original-title="Image Preview"
                                        onclick="BrowseServer('#product_thumb')">
                                        <i class="fa fa-image"></i>
                                    </span>
                                </div>
                            </div>  
                        </div>
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Video Url:(*)</div>
                                <div class="row-fluid">
                                    <input type="text" 
                                        class="form-control validate[required,minSize[4],maxSize[100]]" 
                                        data-prompt-position="topLeft:0,20"
                                        value="[{$item->product_url|default:''}]" 
                                        name="product_url"
                                        >
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row half">
                        
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Position :</div>
                                <input type="number" 
                                    class="form-control" value="[{$item->product_position|default:''}]" 
                                    name="product_position"
                                    >
                            </div>
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Trạng thái :</div>
                                <select name="product_status" class="form-control selectpicker">
                                    <option value="true">Enable</option>
                                    <option value="false" [{if $item->product_status|default:''=='false'}]selected[{/if}]>Disable</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="control-group pull-bottom">
                        <div>
                            Mô tả :
                        </div>
                        <div class="lang-controls">
                            <textarea class="form-control de-desc" 
                                rows="2"
                                data-lang="vi"
                                name="product_desc"
                                >[{$item->product_desc|quotes_to_entities|default:''}]</textarea>
                            <textarea class="form-control de-desc invisible" 
                                rows="2"
                                data-lang="en"
                                name="product_desc_en"
                                >[{$item->product_desc_en|quotes_to_entities|default:''}]</textarea>
                        </div>

                    </div>
                    <div class="control-group pull-bottom">
                        <div>
                            Tag :
                        </div>
                        <div class="lang-controls">
                            <input type="text" 
                                data-lang="vi"
                                class="form-control tags" value="[{$item->product_tag|default:''}]" 
                                name="product_tag"
                                >
                            <input type="text" 
                                data-lang="en"
                                class="form-control tags invisible" value="[{$item->product_tag_en|default:''}]" 
                                name="product_tag_en"
                                >
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="product-images-tab">
                    <!-- <div class="container pull-top">
                        <span class="code cursor" 
                            title="Add new Photo" 
                            onclick="myApp.choosePhotos()">
                            <i class="fa fa-plus"></i>&nbsp;Add Images
                        </span>
                        &nbsp;&nbsp;
                        <span class="code cursor" 
                            title="Delete all" 
                            onclick="myApp.deletePhotos()">
                            <i class="fa fa-trash-o"></i>&nbsp;Delete all
                        </span>
                    </div>
                    <ul id="sortable" class="sortable" style="min-height: 210px">
                        [{if $item->product_images|default:''!=''}]
                            [{assign var=images value='/\r\n|[\r\n]/'|preg_split:$item->product_images}]
                            [{foreach from=$images item=img}]
                                <li class="ui-state-default">
                                    <img class="thumb" src="[{$img}]"/>
                                    <div class="action cursor" onclick="myApp.deletePhoto(this)">
                                        <i class="fa fa-trash-o"></i>
                                    </div>
                                </li>
                            [{/foreach}]
                        [{/if}]
                    </ul>
                    <div class="clearfix"></div>
                    <div class="code">
                        Drag to sort images.<br/>
                        Press Ctrl to select multi images.
                    </div>     -->
                    <div class="pull-bottom control-group lang-controls pull-top">
                        <div>Tiêu đề :(*)</div>
                        <input type="text" 
                            class="form-control validate[required,minSize[4],maxSize[255]]" 
                            placeholder="Tiêu đề"
                            data-lang="vi"
                            name="product_title2"
                            data-prompt-position="topLeft:0,20"
                            value="[{$item->product_title2|quotes_to_entities|default:''}]"
                            />
                        <input type="text" 
                            class="form-control validate[required,minSize[4],maxSize[255]] invisible" 
                            placeholder="Title"
                            data-lang="en"
                            name="product_title2_en"
                            data-prompt-position="topLeft:0,20"
                            value="[{$item->product_title2_en|quotes_to_entities|default:''}]"
                            />
                    </div>
                    <div class="pull-bottom control-group lang-controls">
                        <div>Tiêu đề :(*)</div>
                        [{if $ci->agent->is_mobile()}]
                        <div>
                            <div class="code">Editor does not support in Mobile, please user desktop browser to edit.</div>
                        </div>
                        [{else}]
                        <div class="lang-controls">
                            <div data-lang="vi">
                                <textarea 
                                    class="form-control" 
                                    rows="12"
                                    name="product_content2" id="product_content2"
                                    >[{$item->product_content2}]</textarea>
                            </div>
                            <div data-lang="en" class="invisible">
                                <textarea 
                                    class="form-control" 
                                    rows="12"
                                    name="product_content2_en" id="product_content2_en"
                                    >[{$item->product_content2_en}]</textarea>
                            </div>
                        </div>
                        [{/if}]
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="product-content-tab">
                    [{if $ci->agent->is_mobile()}]
                    <div>
                        <div class="code">Editor does not support in Mobile, please user desktop browser to edit.</div>
                    </div>
                    [{else}]
                    <div class="lang-controls">
                        <div data-lang="vi">
                            <textarea 
                                class="form-control" 
                                rows="12"
                                name="product_content" id="product_content"
                                >[{$item->product_content}]</textarea>
                        </div>
                        <div data-lang="en" class="invisible">
                            <textarea 
                                class="form-control" 
                                rows="12"
                                name="product_content_en" id="product_content_en"
                                >[{$item->product_content_en}]</textarea>
                        </div>
                    </div>
                    [{/if}]
                </div>
            </div>
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]
