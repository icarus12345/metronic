[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>[{$cname}] <small>[{if $item}]Edit Item[{else}]Add Item[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
        <input 
            type="hidden" 
            value="[{$item->album_id|default:''}]" 
            id="EntryId"
            />
        <form name="entryForm" id="entryForm" target="integration_asynchronous">
            <input type="hidden" name="album_type" id="album_type" 
                value="[{$item->album_type|default:$type|default:''}]"/>
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active">
                    <a href="#album-info-tab" aria-controls="album-info-tab" role="tab" data-toggle="tab">Information</a>
                </li>
                <li role="presentation">
                    <a href="#album-images-tab" aria-controls="album-images-tab" role="tab" data-toggle="tab">Image List</a>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="album-info-tab">
                    <div class="row half pull-top">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Title :(*)</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]]" 
                                    onblur="AliasTo(this,'#entryForm input[name=album_alias]')" 
                                    placeholder="Title"
                                    name="album_title"
                                    data-prompt-position="topLeft:0,20"
                                    value="[{$item->album_title|quotes_to_entities|default:''}]"
                                    />
                            </div>
                        </div>
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Alias :(*)</div>
                                <input type="text" 
                                    class="form-control validate[required,minSize[4],maxSize[255]]" 
                                    placeholder="Alias"
                                    name="album_alias"
                                    data-prompt-position="topLeft:0,20"
                                    value="[{$item->album_alias|quotes_to_entities|default:''}]"
                                    />
                            </div>
                        </div>
                    </div>
                    <div class="row half">
                        <div class="col-mb-6 half">
                            <div class="pull-bottom control-group">
                                <div>Image :(*)</div>
                                <div class="input-append">
                                    <input type="text" 
                                        class="form-control validate[required,maxSize[255]]"
                                        data-prompt-position="topLeft:0,20"
                                        value="[{$item->album_thumb|escape:'html'|default:''}]" 
                                        name="album_thumb" 
                                        id="album_thumb"
                                        >
                                    <span class="add-on popovers" 
                                        data-container="body" 
                                        data-trigger="hover" 
                                        data-placement="top" 
                                        data-toggle="popover"
                                        data-content="<img style='max-width:100px' src='[{$item->album_thumb|escape:'html'|default:'/libraries/images/image_available.gif'}]'/>" 
                                        data-original-title="Image Preview"
                                        
                                        onclick="BrowseServer('#album_thumb')">
                                        <i class="fa fa-image"></i>
                                    </span>
                                </div>
                            </div>  
                        </div>
                        <div class="col-xs-6 half col-mb-3">
                            <div class="control-group pull-bottom">
                                <div>Status :</div>
                                <select name="album_status" class="form-control selectpicker">
                                    <option value="true">Enable</option>
                                    <option value="false" [{if $item->album_status|default:''=='false'}]selected[{/if}]>Disable</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    
                    <div class="control-group pull-bottom">
                        <div>
                            Desc :
                        </div>
                        <textarea class="form-control de-desc" 
                                rows="2"
                                name="album_desc"
                                >[{$item->album_desc|quotes_to_entities|default:''}]</textarea>

                    </div>
                    <div class="control-group pull-bottom">
                        <div>
                            Tag :
                        </div>
                        <input type="text" 
                            class="form-control tags" value="[{$item->album_tag|default:''}]" 
                            name="album_tag"
                            >

                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="album-images-tab">
                    <div class="container pull-top">
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
                        [{if $item->album_images|default:''!=''}]
                            [{assign var=images value='/\r\n|[\r\n]/'|preg_split:$item->album_images}]
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
                    </div>    
                </div>
            </div>
        </form>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]
