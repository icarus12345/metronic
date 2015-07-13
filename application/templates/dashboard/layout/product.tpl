
[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/meta.tpl"}]
<!-- BEGIN BODY -->
<body class="page-header-fixed page-quick-sidebar-over-content page-style-square page-boxed">
[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/header.tpl"}]
<!-- BEGIN CONTAINER -->
<div class="container">
<div class="page-container">
	[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/sidebar.tpl"}]
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/content/customizer.tpl"}]
			[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/content/pageheader.tpl"}]
			<!-- BEGIN PAGE CONTENT-->
			<!-- <div class="row">
				<div class="col-md-12">
					<div class="note note-danger">
						<p>
							 NOTE: The below datatable is not connected to a real database so the filter and sorting is just simulated for demo purposes only.
						</p>
					</div>
					
				</div>
			</div> -->
			<!-- END PAGE CONTENT-->
			<div>
				<div class="portlet light bg-inverse">
					<div class="portlet-title">
						<div class="caption font-purple-plum">
							<i class="icon-speech font-purple-plum"></i>
							<span class="caption-subject bold uppercase"> Demo 1</span>
							<span class="caption-helper">right click inside the box</span>
						</div>
						<div class="actions">
							<a class="btn btn-circle btn-icon-only btn-default" href="javascript:;"><i class="fa fa-plus"></i></a>
							<a class="btn btn-circle btn-icon-only btn-default" href="javascript:;"><i class="fa fa-reply"></i></a>
							<a class="btn btn-circle btn-icon-only btn-default reload" href="javascript:;"><i class="icon-refresh"></i></a>
							<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title="">
							</a>
						</div>
					</div>
					<div class="portlet-body">
						[{nocache}]

            <input 
                type="hidden" 
                value="[{$item->product_id|default:''}]" 
                id="EntryId"
                />
            
            <form name="entryForm" id="entryForm" target="integration_asynchronous">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active">
                        <a href="#product-info" aria-controls="product-info" role="tab" data-toggle="tab">Information</a>
                    </li>
                    <li role="presentation">
                        <a href="#product-images" aria-controls="product-images" role="tab" data-toggle="tab">Image List</a>
                    </li>
                    <!-- <li role="presentation">
                        <a href="#product-opt" aria-controls="product-opt" role="tab" data-toggle="tab">Option List</a>
                    </li> -->
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="product-info">
                        <input type="hidden" name="product_type" 
                            value="[{$item->product_type|default:$type|default:''}]"/>
                        <div class="row half">
                            <div class="col-mb-6 half"> 
                                <div class="control-group pull-top">
                                    <div>Title :(*)</div>
                                    <input type="text" 
                                        onblur="AliasTo('#entryForm input[name=product_title]','#entryForm input[name=product_alias]')" 
                                        class="form-control validate[required,minSize[4],maxSize[255]]" 
                                        value="[{$item->product_title|escape|default:''}]" 
                                        name="product_title"
                                        maxlength="255" 
                                        >
                                </div>
                            </div>
                            <div class="col-mb-6 half"> 
                                <div class="control-group pull-top">
                                    <div>Alias :</div>
                                    <input type="text" 
                                        rows="1"
                                        class="form-control validate[required,minSize[4],maxSize[255]]"
                                        name="product_alias" 
                                        value="[{$item->product_alias|escape|default:''}]"/>
                                </div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-mb-6 half"> 
                                <div class="control-group pull-top">
                                    <div>Code :</div>
                                    <input type="text" 
                                        rows="1"
                                        class="form-control validate[required,minSize[4],maxSize[20]]"
                                        name="product_code" 
                                        value="[{$item->product_code|escape|default:''}]"/>
                                </div>
                            </div>
                            <div class="col-mb-6 half">            
                                <div class="pull-top control-group">
                                    <div>Category :(*)</div>

                                    <div class="row-fluid">
                                        <select 
                                            name="product_category" 
                                            class="form-control selectpicker"
                                            data-putto="#frm-err-product_category"
                                            data-live-search="true"
                                            data-size="10"
                                            >
                                            <option value="">Nothing Selected</option>
                                            [{if $cates|default:null}]
                                            [{foreach from=$cates item=c}]
                                                <option 
                                                    data-content="<span style='padding-left: [{$c->cat_level*20}]px;'>[{$c->cat_title|escape}]</span>"
                                                    [{if $c->cat_id == $item->product_category}]selected="1"[{/if}]
                                                    value="[{$c->cat_id|default:''}]">
                                                        [{$c->cat_title|default:''}]
                                                </option>
                                            [{/foreach}]
                                            [{/if}]
                                        </select>
                                    </div>
                                    <div id="frm-err-product_category"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-mb-6 half">   
                                <div class="row half">
                                    <div class="col-xs-6 half">
                                        <div class="control-group pull-top">
                                            <div>Image :(*)</div>
                                            <div class="input-append">
                                                <input type="text" 
                                                    [{if $item->product_thumb}]title="<img src='[{$item->product_thumb}]' style='max-height:80px;max-width:120px'/>"[{/if}]
                                                    class="form-control tool-tip validate[required,maxSize[255]]" 
                                                    value="[{$item->product_thumb|escape|default:''}]" 
                                                    name="product_thumb" 
                                                    id="product_thumb"
                                                    >
                                                <span class="add-on" 
                                                    title="Choose Image"
                                                    onclick="BrowseServer('#product_thumb')">
                                                    <i class="fa fa-image"></i>
                                                </span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="col-xs-6 half">
                                        <div class="control-group pull-top">
                                            <div>Cover :</div>
                                            <div class="input-append">
                                                <input type="text" 
                                                    [{if $item->product_cover}]title="<img src='[{$item->product_cover}]' style='max-height:80px;max-width:120px'/>"[{/if}]
                                                    class="form-control tool-tip validate[maxSize[255]]" 
                                                    value="[{$item->product_cover|escape|default:''}]" 
                                                    name="product_cover" 
                                                    id="product_cover"
                                                    >
                                                <span class="add-on" 
                                                    title="Choose Image"
                                                    onclick="BrowseServer('#product_cover')">
                                                    <i class="fa fa-image"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>     
                                
                            </div>
                            <div class="col-mb-6 half"> 
                                <div class="row half">
                                    <div class="col-xs-6 half">
                                        <div class="control-group pull-top">
                                            <div>Price :</div>
                                            <div class="input-group">
                                                <span class="input-group-addon">$</span>
                                                <input type="text" 
                                                    class="form-control validate[required,custom[number]]" 
                                                    data-prompt-position="topLeft:0,20"
                                                    data-errormessage-custom-error="Numbers only"
                                                    value="[{$item->product_price|escape|default:''}]" 
                                                    min="0"
                                                    name="product_price"
                                                    data-putto="#err-product_price"
                                                    >
                                            </div>
                                        </div>
                                        <div id="err-product_position"></div>
                                    </div>
                                    <div class="col-xs-6 half">
                                        <div class="control-group pull-top">
                                            <div>Status :</div>
                                            <select name="product_status" class="form-control selectpicker">
                                                <option value="true">Enable</option>
                                                <option value="false" [{if $item->product_status|default:''=='true'}][{/if}]>Disable</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="control-group pull-top">
                            <div>Desc :</div>
                            <textarea 
                                rows="3"
                                class="form-control validate[required,maxSize[2000]]"
                                name="product_desc">[{$item->product_desc|escape|default:''}]</textarea>

                        </div>
                        [{if $ci->agent->is_mobile()}]
                        <div class="pull-top">
                            <div class="code">Editor is hidden in Mobile, please user desktop browser to edit.</div>
                        </div>
                        [{else}]
                            <div class="control-group pull-top">
                                <div>Content :</div>
                                <textarea 
                                    rows="10"
                                    class="form-control"
                                    id="product_content"
                                    name="product_content">[{$item->product_content|escape|default:''}]</textarea>

                            </div>
                        [{/if}]
                    </div>
                    <div role="tabpanel" class="tab-pane" id="product-images">
                        <div class="container pull-top">
                            <span class="code cursor" 
                                title="Add new Photo" 
                                onclick="[{$tplConfig.name}].choosePhotos()">
                                <i class="fa fa-plus"></i>&nbsp;Add Images
                            </span>
                            &nbsp;&nbsp;
                            <span class="code cursor" 
                                title="Delete all" 
                                onclick="[{$tplConfig.name}].deletePhotos()">
                                <i class="fa fa-trash-o"></i>&nbsp;Delete all
                            </span>
                        </div>
                        <ul id="sortable" class="sortable" style="min-height: 100px">
                            [{if $item->product_images|default:''!=''}]
                                [{assign var=images value='/\r\n|[\r\n]/'|preg_split:$item->product_images}]
                                [{foreach from=$images item=img}]
                                    <li class="ui-state-default">
                                        <img class="thumb" src="[{$img}]"/>
                                        <div class="action cursor" onclick="[{$tplConfig.name}].deletePhoto(this)">
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
                    <div role="tabpanel" class="tab-pane" id="product-opt">
                        [{*include file=$smarty.const.APPPATH|cat:"templates/cms/cp/product/entryOpt.tpl"*}]
                    </div>
                </div>
                <div class="clearfix"></div>
                
            </form>

[{/nocache}]
					</div>
				</div>
				<link href='/libraries/jqwidgets/styles/jqx.base.css' rel='stylesheet' type='text/css'>
		        <link href='/libraries/jqwidgets/styles/jqx.metro.css' rel='stylesheet' type='text/css'>
		        <script type="text/javascript" src="/libraries/jqwidgets/jqx-all.js"></script>
	        	<div style="display:none">
					<div id='contextMenu' class="jqx-contextMenu">
					    <ul>
					        <li data-action="add"><i class="fa fa-plus"></i> Add new Record</li>
					        <li data-action="addtoplaylist"><i class="fa fa-plus"></i> Add to Playlist</li>
					        <li data-action="playlist"><i class="fa fa-list-ol"></i> Playlist include this Video</li>
					        <li data-action="allplaylist"><i class="fa fa-bars"></i> Playlist Management</li>
					        <li data-action="letter"><i class="fa fa-envelope-o"></i> Add to letter</li>
					        <li data-action="edit"><i class="fa fa-pencil-square"></i> Edit Selected Row</li>
					        <li data-action="delete"><i class="fa fa-trash-o"></i> Delete Selected Row</li>
					        <li data-action="view"><i class="fa fa-eye"></i> View Selected Row</li>
					    </ul>
					</div>
				</div>
				<div class="portlet light bg-inverse">
					<div class="portlet-title">
						<div class="caption font-purple-plum">
							<i class="icon-speech font-purple-plum"></i>
							<span class="caption-subject bold uppercase"> Demo 1</span>
							<span class="caption-helper">right click inside the box</span>
						</div>
						<div class="actions">
							<a class="btn btn-circle btn-icon-only btn-default" href="javascript:;"><i class="fa fa-plus"></i></a>
							<a class="btn btn-circle btn-icon-only btn-default" href="javascript:;"><i class="icon-wrench"></i></a>
							<a class="btn btn-circle btn-icon-only btn-default" href="javascript:;"><i class="icon-trash"></i></a>
							<a class="btn btn-circle btn-icon-only btn-default reload" href="javascript:;"><i class="icon-refresh"></i></a>
							<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title="">
							</a>
						</div>
					</div>
					<div class="portlet-body">
						<div style="height:480px;position:relative">
							<div id= "jqwidget-entry-list"></div>
						</div>
						<div id="context" data-toggle="context" data-target="#context-menu2">
								<p>
									 Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.
								</p>
						</div>
						<div id="context-menu2">
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="javascript:;">
									<i class="icon-user"></i> New User </a>
								</li>
								<li>
									<a href="javascript:;">
									<i class="icon-present"></i> New Event <span class="badge badge-success">4</span>
									</a>
								</li>
								<li>
									<a href="javascript:;">
									<i class="icon-basket"></i> New order </a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="javascript:;">
									<i class="icon-flag"></i> Pending Orders <span class="badge badge-danger">4</span>
									</a>
								</li>
								<li>
									<a href="javascript:;">
									<i class="icon-users"></i> Pending Users <span class="badge badge-warning">12</span>
									</a>
								</li>
							</ul>
						</div>

					</div>
				</div>

				<script type="text/javascript">
				var APP = function() {
					    this.jqxgrid = '#jqwidget-entry-list';
					    this.theme = 'metro',
					    this.type = '';
					    this.bindingUri = '/dashboard/cp/product/widgetbinding/';
					    var me = this;
					    this._datafields = [
					        {name: 'product_id' 	, type: 'int'},
					        {name: 'product_title' 	},
					        {name: 'product_thumb' 	},
					        {name: 'product_status' , type: 'bool'},
					        {name: 'product_insert' , type: 'date'},
					        {name: 'product_update' , type: 'date'},
					    ];
					     this._source = {
					        datatype 	: "json",
					        type 		: "POST",
					        datafields 	: me._datafields,
					        url 		: me.bindingUri + me.type,
					        id 			:'product_id',
					        root 		: 'rows',
							filter: function() {
					            $(me.jqxgrid).jqxGrid('updatebounddata', 'filter');
					        },
					        sort: function() {
					            $(me.jqxgrid).jqxGrid('updatebounddata');
					        },
					    };
					    this._dataAdapter = new $.jqx.dataAdapter(me._source, {
					        loadError: function(xhr, status, error) {
					            alert("<b>Status</b>:" + xhr.status + "<br/><b>ThrownError</b>:" + error + "<br/>");
					        }
					    });
					    this._columns = [
					        {
					            text: '', dataField: 'product_id', width: 60, filterable: false, sortable: true,editable: false,
					            cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					                var str = "";
					                if (value && value > 0) {
					                    try {
					                        str += "<a href='JavaScript:void(0)'"+
					                        "style='margin: 5px; float: left;' " +
					                        "onclick=\"_oVideo.onEditItem(" + value + ");\" "+ 
					                        "title='Edit :" + value + "'><i class=\"fa fa-pencil-square\"></i></a>\
					                        ";
					                        str += "\
					                            <a href='JavaScript:void(0)' style='margin: 5px; float: left;' onclick=\"_oVideo.onDeleteItem(" + value + ");\" title='Delete :" + value + "'><i class=\"fa fa-trash-o\"></i></a>\
					                        ";
					                    } catch (e) {
					                    }
					                }
					                
					                return str;
					            }
					        },{
					            text: 'Id'    , dataField: 'product_id2' , displayfield:'product_id',cellsalign: 'right', 
					            width: 60, columntype: 'numberinput', filtertype: 'number',
					            filterable: false, sortable: false,editable: false,hidden:true
					        },{
					            text: 'Category', width: 120, cellsalign: 'left',
					            columntype: 'dropdownlist', filtertype: 'list', 
					            datafield: 'cat_title',filtercondition: 'EQUAL',
					            editable: false,
					            filteritems: [],//authorApp._dataAdapter.records, 
					            // createfilterwidget: function (column, htmlElement, editor) {
					                // editor.jqxDropDownList({ 
					                //     source          : categoryApp._dataAdapter.records,
					                //     displayMember   : "cat_title", 
					                //     valueMember     : "cat_id"
					                // });
					            // }
					        },{
					            text: 'Title', dataField: 'product_title', minWidth: 220, sortable: true,
					            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS',
					        },{
					            text: 'Thumb'     , dataField: 'product_thumb'   ,width:60,
					            filterable: false, sortable: false,editable: false,hidden:true,
					            cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					                if(value==undefined || value=='')
					                    return '';
					                else{

					                    return '<img onError="this.src = \'/libraries/images/image_available.gif\'" class="cellthumb" height="32" src="' + value + '"/>';
					                }
					            }
					        },,{
					            text: 'Status'    , dataField: 'product_status' , cellsalign: 'center',
					            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
					            filterable: true, sortable: true,editable: true
					        },{
					            text: 'Created' , dataField: 'product_insert', width: 120, cellsalign: 'right',
					            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
					            sortable: true,editable: false
					        },{
					            text: 'Modifield' , dataField: 'product_update', width: 120, cellsalign: 'right',
					            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
					            sortable: true,editable: false, hidden:true
					        }
					    ];
					    this._contextMenu = $("#contextMenu").jqxMenu({ 
					        width: 200, height: 'auto', autoOpenPopup: false, mode: 'popup',theme: me.theme
					    }).on('itemclick', function (event) {
					        var $args = $(args);
					        console.log(event.args.rowindex)
					        var rowIndex = $(me.jqxgrid).jqxGrid('getselectedrowindex');
					        if(rowIndex>=0){
					            var rowData = $(me.jqxgrid).jqxGrid('getrowdata', rowIndex);
					            if(rowData){
					                var action = $args.data('action');
					                if(action == 'add'){
					                    me.onAddItem();
					                }else if(action == 'edit'){
					                    me.onEditItem(rowData.video_id);
					                }else if(action == 'delete'){
					                    me.onDeleteItem(rowData.video_id);
					                }else if(action == 'addtoplaylist'){
					                    me.showPlaylistSelect(rowData.video_id);
					                }else if(action == 'playlist'){
					                    playlistApp.open(rowData.video_id);
					                }else if(action == 'allplaylist'){
					                    playlistApp.open();
					                }else if(action == 'audio'){
					                    audioApp.open(rowData);
					                }else if(action == 'letter'){
					                    me.addLetter(rowData.video_id);
					                }else{
					                    addNotice("Function is updating !");
					                    console.log(rowData.video_id)
					                }
					            }
					        }
					    });
						$(me.jqxgrid).jqxGrid({
					        width 				: '100%', //
					        //autoheight:true,
					        height 				: '100%',
					        source 				: this._dataAdapter,
					        theme 				: me.theme,
					        columns 			: this._columns,
					        selectionmode 		: 'singlecell',
					        editmode 			: 'dblclick',
							filterable 			: true,
					        autoshowfiltericon	: true,
					        showfilterrow 		: true,
							sortable 			: true,
							virtualmode 		: true,
					        // groupable 		    : true,
					        // groups              : ['author_name','topic_title'],
					        editable            : true,
					        pageable            : true,
					        pagesize            : 100,
					        pagesizeoptions     : [20,100, 200, 500, 1000],
					        rendergridrows 		: function(){ 
					            return me._dataAdapter.records; 
					        },
					        ready: function(){
					            // pendingOff();
					        },
					        handlekeyboardnavigation: function(event)
					        {
					            var key = event.charCode ? event.charCode : event.keyCode ? event.keyCode : 0;
					            if (key == 27) {
					                me._cancel=true;
					            }
					        },
					    }).on("bindingcomplete", function (event) {
					        $(me.jqxgrid).jqxGrid('expandallgroups');
					    }).on('contextmenu', function () {
					        return false;
					    }).on('rowclick', function (event) {
					        var rowIndex = event.args.rowindex;
					        if(rowIndex>=0){
					            if (event.args.rightclick) {
					                $(me.jqxgrid).jqxGrid('selectrow', event.args.rowindex);
					                var scrollTop = $(window).scrollTop();
					                var scrollLeft = $(window).scrollLeft();
					                var menuWidth = me._contextMenu.width();
					                var menuHeight = me._contextMenu.height();
					                var x = parseInt(event.args.originalEvent.clientX) + 5 + scrollLeft;
					                var y = parseInt(event.args.originalEvent.clientY) + 5 + scrollTop;
					                var windowWidth = $(window).width();
					                var windowHeight = $(window).height();
					                if( x + menuWidth > windowWidth){
					                    x = windowWidth - menuWidth -4;
					                }
					                if( y + menuHeight > $(window).height()){
					                    y = windowHeight - menuHeight -4;
					                }
					                me._contextMenu.jqxMenu('open', x, y);
					            }
					        }
					        return false;
					    }).on('filter', function (event) {
					    	// get filter information.
					        var filterInformation = $(me.jqxgrid).jqxGrid('getfilterinformation');
					        var filterdata = {};
					        var filterslength = 0;
					        var data = {};
					        for (var x = 0; x < filterInformation.length; x++) {
					            // column's data field.
					            var filterdatafield = filterInformation[x].datafield;
					            // column's filter group.
					            var filterGroup = filterInformation[x].filter;
					            // column's filters.
					            var filters = filterGroup.getfilters();
					            // filter group's operator.
					            data[filterdatafield + "operator"] = filterGroup.operator;
					            for (var m = 0; m < filters.length; m++) {
					                filters[m].datafield = filterdatafield;
					                // filter's value.
					                var filtervalue = filters[m].value;
					                data["filtervalue" + filterslength] = filtervalue.toString();
					                // filter's id.
					                if (filters[m].id) {
					                    data["filterid" + filterslength] = filters[m].id.toString();
					                }
					                // filter's condition.
					                data["filtercondition" + filterslength] = filters[m].condition;
					                // filter's operator.
					                data["filteroperator" + filterslength] = filters[m].operator;
					                // filter's data field.
					                data["filterdatafield" + filterslength] = filterdatafield;
					                filterslength++;
					            }
					        }
					        console.log(JSON.stringify(data));
					        console.log(filterInformation);

					    }).bind('cellbeginedit', function (event) {
					        me._cancel = false;
					    }).bind('cellendedit', function (event) {
					                if(me._cancel) return;
					        try{
					            var args = event.args;
					            var column = args.datafield, 
					            	_row = args.rowindex, 
					            	_value = args.value;
					            var _data = $(me.jqxgrid).jqxGrid('getrowdata', _row);
					            var _id = _data.video_id;
					            if (_id == undefined || _id == "") {
					                return;
					            }
					            var updateCell = function(){
					                me.onRefresh();
					            };
					            switch (column) {
					                case 'video_title':
					                    if (_value != _data.video_title && _value!='')
					                        me.onCommit(
					                        	me.entryCommitUri,
					                        	{video_title: _value},
					                        	_id, updateCell
					                    	);
					                    break;
					                case 'video_publicday':
					                    if (_value != _data.video_publicday){
					                    	var pDate = _value.format('yyyy-mm-dd HH:MM:ss').toString();
					                        me.onCommit(
					                        	me.entryCommitUri,
					                        	{video_publicday: pDate},
					                        	_id, updateCell
					                    	);
					                    }
					                    break;
					                case 'video_topic':
					                    if (_value != _data.video_topic)
					                        me.onCommit(
					                            me.entryCommitUri,
					                            {video_topic: _value},
					                            _id,updateCell
					                        );
					                    break;
					                case 'video_status':
					                    if (_value)
					                        me.onCommit(
					                            me.entryCommitUri,{video_status: 'true'}, _id, updateCell
					                        );
					                    else
					                        me.onCommit(
					                            me.entryCommitUri,{video_status: 'false'}, _id, updateCell
					                        );
					                    break;
					                case 'video_special':
					                    if (_value)
					                        me.onCommit(
					                            me.entryCommitUri,{video_special: 'true'}, _id, updateCell
					                        );
					                    else
					                        me.onCommit(
					                            me.entryCommitUri,{video_special: 'false'}, _id, updateCell
					                        );
					                    break;
					                default:
					                    addNotice("Column editable is dont support !");
					                    console.log(_value)
					            }
					        } catch (e) {
					            addNotice(e.message, 'danger');
					        }
					    });
					}
					$(document).ready(function(){
						APP();
					})
				</script>

			</div>
			<!-- BEGIN DASHBOARD STATS -->
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="dashboard-stat blue-madison">
						<div class="visual">
							<i class="fa fa-comments"></i>
						</div>
						<div class="details">
							<div class="number">
								 1349
							</div>
							<div class="desc">
								 New Feedbacks
							</div>
						</div>
						<a class="more" href="javascript:;">
						View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="dashboard-stat red-intense">
						<div class="visual">
							<i class="fa fa-bar-chart-o"></i>
						</div>
						<div class="details">
							<div class="number">
								 12,5M$
							</div>
							<div class="desc">
								 Total Profit
							</div>
						</div>
						<a class="more" href="javascript:;">
						View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="dashboard-stat green-haze">
						<div class="visual">
							<i class="fa fa-shopping-cart"></i>
						</div>
						<div class="details">
							<div class="number">
								 549
							</div>
							<div class="desc">
								 New Orders
							</div>
						</div>
						<a class="more" href="javascript:;">
						View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="dashboard-stat purple-plum">
						<div class="visual">
							<i class="fa fa-globe"></i>
						</div>
						<div class="details">
							<div class="number">
								 +89%
							</div>
							<div class="desc">
								 Brand Popularity
							</div>
						</div>
						<a class="more" href="javascript:;">
						View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
			</div>
			<!-- END DASHBOARD STATS -->
			<div class="clearfix"></div>
			
			<div class="row ">
				<div class="col-md-6 col-sm-6">
					<div class="portlet box blue-steel">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-bell-o"></i>Recent Activities
							</div>
							<div class="actions">
								<div class="btn-group">
									<a class="btn btn-sm btn-default dropdown-toggle" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
									Filter By <i class="fa fa-angle-down"></i>
									</a>
									<div class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
										<label><input type="checkbox"/> Finance</label>
										<label><input type="checkbox" checked=""/> Membership</label>
										<label><input type="checkbox"/> Customer Support</label>
										<label><input type="checkbox" checked=""/> HR</label>
										<label><input type="checkbox"/> System</label>
									</div>
								</div>
							</div>
						</div>
						<div class="portlet-body">
							<div class="scroller" style="height: 300px;" data-always-visible="1" data-rail-visible="0">
								<ul class="feeds">
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-check"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 You have 4 pending tasks. <span class="label label-sm label-warning ">
														Take action <i class="fa fa-share"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 Just now
											</div>
										</div>
									</li>
									<li>
										<a href="javascript:;">
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-bar-chart-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 Finance Report for year 2013 has been released.
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 20 mins
											</div>
										</div>
										</a>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-danger">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 You have 5 pending membership that requires a quick review.
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 24 mins
											</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 New order received with <span class="label label-sm label-success">
														Reference Number: DR23923 </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 30 mins
											</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 You have 5 pending membership that requires a quick review.
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 24 mins
											</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-default">
														<i class="fa fa-bell-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 Web server hardware needs to be upgraded. <span class="label label-sm label-default ">
														Overdue </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 2 hours
											</div>
										</div>
									</li>
									<li>
										<a href="javascript:;">
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-default">
														<i class="fa fa-briefcase"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 IPO Report for year 2013 has been released.
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 20 mins
											</div>
										</div>
										</a>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-check"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 You have 4 pending tasks. <span class="label label-sm label-warning ">
														Take action <i class="fa fa-share"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 Just now
											</div>
										</div>
									</li>
									<li>
										<a href="javascript:;">
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-danger">
														<i class="fa fa-bar-chart-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 Finance Report for year 2013 has been released.
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 20 mins
											</div>
										</div>
										</a>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-default">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 You have 5 pending membership that requires a quick review.
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 24 mins
											</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 New order received with <span class="label label-sm label-success">
														Reference Number: DR23923 </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 30 mins
											</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 You have 5 pending membership that requires a quick review.
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 24 mins
											</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-warning">
														<i class="fa fa-bell-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 Web server hardware needs to be upgraded. <span class="label label-sm label-default ">
														Overdue </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 2 hours
											</div>
										</div>
									</li>
									<li>
										<a href="javascript:;">
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-briefcase"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														 IPO Report for year 2013 has been released.
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">
												 20 mins
											</div>
										</div>
										</a>
									</li>
								</ul>
							</div>
							<div class="scroller-footer">
								<div class="btn-arrow-link pull-right">
									<a href="javascript:;">See All Records</a>
									<i class="icon-arrow-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="portlet box green-haze tasks-widget">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-check"></i>Tasks
							</div>
							<div class="tools">
								<a href="index_3.html#portlet-config" data-toggle="modal" class="config">
								</a>
								<a href="index_3.html" class="reload">
								</a>
								<a href="javascript:;" class="fullscreen">
								</a>
							</div>
							<div class="actions">
								<div class="btn-group">
									<a class="btn btn-default btn-sm dropdown-toggle" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
									More <i class="fa fa-angle-down"></i>
									</a>
									<ul class="dropdown-menu pull-right">
										<li>
											<a href="javascript:;">
											<i class="i"></i> All Project </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											AirAsia </a>
										</li>
										<li>
											<a href="javascript:;">
											Cruise </a>
										</li>
										<li>
											<a href="javascript:;">
											HSBC </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Pending <span class="badge badge-danger">
											4 </span>
											</a>
										</li>
										<li>
											<a href="javascript:;">
											Completed <span class="badge badge-success">
											12 </span>
											</a>
										</li>
										<li>
											<a href="javascript:;">
											Overdue <span class="badge badge-warning">
											9 </span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="portlet-body">
							<div class="task-content">
								<div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="1">
									<!-- START TASK LIST -->
									<ul class="task-list">
										<li>
											<div class="task-checkbox">
												<input type="hidden" value="1" name="test"/>
												<input type="checkbox" class="liChild" value="2" name="test"/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												Present 2013 Year IPO Statistics at Board Meeting </span>
												<span class="label label-sm label-success">Company</span>
												<span class="task-bell">
												<i class="fa fa-bell-o"></i>
												</span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="task-checkbox">
												<input type="checkbox" class="liChild" value=""/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												Hold An Interview for Marketing Manager Position </span>
												<span class="label label-sm label-danger">Marketing</span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="task-checkbox">
												<input type="checkbox" class="liChild" value=""/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												AirAsia Intranet System Project Internal Meeting </span>
												<span class="label label-sm label-success">AirAsia</span>
												<span class="task-bell">
												<i class="fa fa-bell-o"></i>
												</span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="task-checkbox">
												<input type="checkbox" class="liChild" value=""/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												Technical Management Meeting </span>
												<span class="label label-sm label-warning">Company</span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="task-checkbox">
												<input type="checkbox" class="liChild" value=""/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												Kick-off Company CRM Mobile App Development </span>
												<span class="label label-sm label-info">Internal Products</span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="task-checkbox">
												<input type="checkbox" class="liChild" value=""/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												Prepare Commercial Offer For SmartVision Website Rewamp </span>
												<span class="label label-sm label-danger">SmartVision</span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="task-checkbox">
												<input type="checkbox" class="liChild" value=""/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												Sign-Off The Comercial Agreement With AutoSmart </span>
												<span class="label label-sm label-default">AutoSmart</span>
												<span class="task-bell">
												<i class="fa fa-bell-o"></i>
												</span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="task-checkbox">
												<input type="checkbox" class="liChild" value=""/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												Company Staff Meeting </span>
												<span class="label label-sm label-success">Cruise</span>
												<span class="task-bell">
												<i class="fa fa-bell-o"></i>
												</span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li class="last-line">
											<div class="task-checkbox">
												<input type="checkbox" class="liChild" value=""/>
											</div>
											<div class="task-title">
												<span class="task-title-sp">
												KeenThemes Investment Discussion </span>
												<span class="label label-sm label-warning">KeenThemes </span>
											</div>
											<div class="task-config">
												<div class="task-config-btn btn-group">
													<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
													<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="javascript:;">
															<i class="fa fa-check"></i> Complete </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-pencil"></i> Edit </a>
														</li>
														<li>
															<a href="javascript:;">
															<i class="fa fa-trash-o"></i> Cancel </a>
														</li>
													</ul>
												</div>
											</div>
										</li>
									</ul>
									<!-- END START TASK LIST -->
								</div>
							</div>
							<div class="task-footer">
								<div class="btn-arrow-link pull-right">
									<a href="javascript:;">See All Records</a>
									<i class="icon-arrow-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix">
			</div>
			
			<div class="row ">
				
				<div class="col-md-6 col-sm-6">
					<!-- BEGIN PORTLET-->
					<div class="portlet paddingless">
						<div class="portlet-title line">
							<div class="caption">
								<i class="fa fa-bell-o"></i>Feeds
							</div>
							<div class="tools">
								<a href="index_3.html" class="collapse">
								</a>
								<a href="index_3.html#portlet-config" data-toggle="modal" class="config">
								</a>
								<a href="index_3.html" class="reload">
								</a>
								<a href="index_3.html" class="remove">
								</a>
							</div>
						</div>
						<div class="portlet-body">
							<!--BEGIN TABS-->
							<div class="tabbable-line">
								<ul class="nav nav-tabs">
									<li class="active">
										<a href="index_3.html#tab_1_1" data-toggle="tab">
										System </a>
									</li>
									<li>
										<a href="index_3.html#tab_1_2" data-toggle="tab">
										Activities </a>
									</li>
									<li>
										<a href="index_3.html#tab_1_3" data-toggle="tab">
										Recent Users </a>
									</li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="tab_1_1">
										<div class="scroller" style="height: 290px;" data-always-visible="1" data-rail-visible="0">
											<ul class="feeds">
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 You have 4 pending tasks. <span class="label label-sm label-danger ">
																	Take action <i class="fa fa-share"></i>
																	</span>
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New version v1.4 just lunched!
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 20 mins
														</div>
													</div>
													</a>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-danger">
																	<i class="fa fa-bolt"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 Database server #12 overloaded. Please fix the issue.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 24 mins
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-info">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 30 mins
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 40 mins
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-warning">
																	<i class="fa fa-plus"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 1.5 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 Web server hardware needs to be upgraded. <span class="label label-sm label-default ">
																	Overdue </span>
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 2 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-default">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 3 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-warning">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 5 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-info">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 18 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-default">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 21 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-info">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 22 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-default">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 21 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-info">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 22 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-default">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 21 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-info">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 22 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-default">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 21 hours
														</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-info">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received. Please take care of it.
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 22 hours
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="tab-pane" id="tab_1_2">
										<div class="scroller" style="height: 290px;" data-always-visible="1" data-rail-visible1="1">
											<ul class="feeds">
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
													</a>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New order received
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 10 mins
														</div>
													</div>
													</a>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-danger">
																	<i class="fa fa-bolt"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 Order #24DOP4 has been rejected. <span class="label label-sm label-danger ">
																	Take action <i class="fa fa-share"></i>
																	</span>
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 24 mins
														</div>
													</div>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
													</a>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
													</a>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
													</a>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
													</a>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
													</a>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
													</a>
												</li>
												<li>
													<a href="javascript:;">
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	 New user registered
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">
															 Just now
														</div>
													</div>
													</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="tab-pane" id="tab_1_3">
										<div class="scroller" style="height: 290px;" data-always-visible="1" data-rail-visible1="1">
											<div class="row">
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Robert Nilson </a>
															<span class="label label-sm label-success label-mini">
															Approved </span>
														</div>
														<div>
															 29 Jan 2013 10:45AM
														</div>
													</div>
												</div>
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Lisa Miller </a>
															<span class="label label-sm label-info">
															Pending </span>
														</div>
														<div>
															 19 Jan 2013 10:45AM
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Eric Kim </a>
															<span class="label label-sm label-info">
															Pending </span>
														</div>
														<div>
															 19 Jan 2013 12:45PM
														</div>
													</div>
												</div>
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Lisa Miller </a>
															<span class="label label-sm label-danger">
															In progress </span>
														</div>
														<div>
															 19 Jan 2013 11:55PM
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Eric Kim </a>
															<span class="label label-sm label-info">
															Pending </span>
														</div>
														<div>
															 19 Jan 2013 12:45PM
														</div>
													</div>
												</div>
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Lisa Miller </a>
															<span class="label label-sm label-danger">
															In progress </span>
														</div>
														<div>
															 19 Jan 2013 11:55PM
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Eric Kim </a>
															<span class="label label-sm label-info">
															Pending </span>
														</div>
														<div>
															 19 Jan 2013 12:45PM
														</div>
													</div>
												</div>
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Lisa Miller </a>
															<span class="label label-sm label-danger">
															In progress </span>
														</div>
														<div>
															 19 Jan 2013 11:55PM
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Eric Kim </a>
															<span class="label label-sm label-info">
															Pending </span>
														</div>
														<div>
															 19 Jan 2013 12:45PM
														</div>
													</div>
												</div>
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Lisa Miller </a>
															<span class="label label-sm label-danger">
															In progress </span>
														</div>
														<div>
															 19 Jan 2013 11:55PM
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Eric Kim </a>
															<span class="label label-sm label-info">
															Pending </span>
														</div>
														<div>
															 19 Jan 2013 12:45PM
														</div>
													</div>
												</div>
												<div class="col-md-6 user-info">
													<img alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar.png" class="img-responsive"/>
													<div class="details">
														<div>
															<a href="javascript:;">
															Lisa Miller </a>
															<span class="label label-sm label-danger">
															In progress </span>
														</div>
														<div>
															 19 Jan 2013 11:55PM
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--END TABS-->
						</div>
					</div>
					<!-- END PORTLET-->
				</div>
			
				<div class="col-md-6 col-sm-6">
					<!-- BEGIN PORTLET-->
					<div class="portlet">
						<div class="portlet-title line">
							<div class="caption">
								<i class="fa fa-comments"></i>Chats
							</div>
							<div class="tools">
								<a href="index_3.html" class="collapse">
								</a>
								<a href="index_3.html#portlet-config" data-toggle="modal" class="config">
								</a>
								<a href="index_3.html" class="reload">
								</a>
								<a href="index_3.html" class="fullscreen">
								</a>
								<a href="index_3.html" class="remove">
								</a>
							</div>
						</div>
						<div class="portlet-body" id="chats">
							<div class="scroller" style="height: 352px;" data-always-visible="1" data-rail-visible1="1">
								<ul class="chats">
									<li class="in">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar1.jpg"/>
										<div class="message">
											<span class="arrow">
											</span>
											<a href="javascript:;" class="name">
											Bob Nilson </a>
											<span class="datetime">
											at 20:09 </span>
											<span class="body">
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
										</div>
									</li>
									<li class="out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar2.jpg"/>
										<div class="message">
											<span class="arrow">
											</span>
											<a href="javascript:;" class="name">
											Lisa Wong </a>
											<span class="datetime">
											at 20:11 </span>
											<span class="body">
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
										</div>
									</li>
									<li class="in">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar1.jpg"/>
										<div class="message">
											<span class="arrow">
											</span>
											<a href="javascript:;" class="name">
											Bob Nilson </a>
											<span class="datetime">
											at 20:30 </span>
											<span class="body">
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
										</div>
									</li>
									<li class="out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg"/>
										<div class="message">
											<span class="arrow">
											</span>
											<a href="javascript:;" class="name">
											Richard Doe </a>
											<span class="datetime">
											at 20:33 </span>
											<span class="body">
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
										</div>
									</li>
									<li class="in">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg"/>
										<div class="message">
											<span class="arrow">
											</span>
											<a href="javascript:;" class="name">
											Richard Doe </a>
											<span class="datetime">
											at 20:35 </span>
											<span class="body">
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
										</div>
									</li>
									<li class="out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar1.jpg"/>
										<div class="message">
											<span class="arrow">
											</span>
											<a href="javascript:;" class="name">
											Bob Nilson </a>
											<span class="datetime">
											at 20:40 </span>
											<span class="body">
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
										</div>
									</li>
									<li class="in">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg"/>
										<div class="message">
											<span class="arrow">
											</span>
											<a href="javascript:;" class="name">
											Richard Doe </a>
											<span class="datetime">
											at 20:40 </span>
											<span class="body">
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
										</div>
									</li>
									<li class="out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar1.jpg"/>
										<div class="message">
											<span class="arrow">
											</span>
											<a href="javascript:;" class="name">
											Bob Nilson </a>
											<span class="datetime">
											at 20:54 </span>
											<span class="body">
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet. </span>
										</div>
									</li>
								</ul>
							</div>
							<div class="chat-form">
								<div class="input-cont">
									<input class="form-control" type="text" placeholder="Type a message here..."/>
								</div>
								<div class="btn-cont">
									<span class="arrow">
									</span>
									<a href="index_3.html" class="btn blue icn-only">
									<i class="fa fa-check icon-white"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- END PORTLET-->
				</div>
			</div>
		</div>
	</div>
	<!-- END CONTENT -->
	<!-- BEGIN QUICK SIDEBAR -->
	<a href="javascript:;" class="page-quick-sidebar-toggler"><i class="icon-close"></i></a>
	<div class="page-quick-sidebar-wrapper">
		<div class="page-quick-sidebar">
			<div class="nav-justified">
				<ul class="nav nav-tabs nav-justified">
					<li class="active">
						<a href="index_3.html#quick_sidebar_tab_1" data-toggle="tab">
						Users <span class="badge badge-danger">2</span>
						</a>
					</li>
					<li>
						<a href="index_3.html#quick_sidebar_tab_2" data-toggle="tab">
						Alerts <span class="badge badge-success">7</span>
						</a>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						More<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu pull-right" role="menu">
							<li>
								<a href="index_3.html#quick_sidebar_tab_3" data-toggle="tab">
								<i class="icon-bell"></i> Alerts </a>
							</li>
							<li>
								<a href="index_3.html#quick_sidebar_tab_3" data-toggle="tab">
								<i class="icon-info"></i> Notifications </a>
							</li>
							<li>
								<a href="index_3.html#quick_sidebar_tab_3" data-toggle="tab">
								<i class="icon-speech"></i> Activities </a>
							</li>
							<li class="divider">
							</li>
							<li>
								<a href="index_3.html#quick_sidebar_tab_3" data-toggle="tab">
								<i class="icon-settings"></i> Settings </a>
							</li>
						</ul>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active page-quick-sidebar-chat" id="quick_sidebar_tab_1">
						<div class="page-quick-sidebar-chat-users" data-rail-color="#ddd" data-wrapper-class="page-quick-sidebar-list">
							<h3 class="list-heading">Staff</h3>
							<ul class="media-list list-items">
								<li class="media">
									<div class="media-status">
										<span class="badge badge-success">8</span>
									</div>
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Bob Nilson</h4>
										<div class="media-heading-sub">
											 Project Manager
										</div>
									</div>
								</li>
								<li class="media">
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar1.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Nick Larson</h4>
										<div class="media-heading-sub">
											 Art Director
										</div>
									</div>
								</li>
								<li class="media">
									<div class="media-status">
										<span class="badge badge-danger">3</span>
									</div>
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar4.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Deon Hubert</h4>
										<div class="media-heading-sub">
											 CTO
										</div>
									</div>
								</li>
								<li class="media">
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar2.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Ella Wong</h4>
										<div class="media-heading-sub">
											 CEO
										</div>
									</div>
								</li>
							</ul>
							<h3 class="list-heading">Customers</h3>
							<ul class="media-list list-items">
								<li class="media">
									<div class="media-status">
										<span class="badge badge-warning">2</span>
									</div>
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar6.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Lara Kunis</h4>
										<div class="media-heading-sub">
											 CEO, Loop Inc
										</div>
										<div class="media-heading-small">
											 Last seen 03:10 AM
										</div>
									</div>
								</li>
								<li class="media">
									<div class="media-status">
										<span class="label label-sm label-success">new</span>
									</div>
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar7.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Ernie Kyllonen</h4>
										<div class="media-heading-sub">
											 Project Manager,<br>
											 SmartBizz PTL
										</div>
									</div>
								</li>
								<li class="media">
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar8.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Lisa Stone</h4>
										<div class="media-heading-sub">
											 CTO, Keort Inc
										</div>
										<div class="media-heading-small">
											 Last seen 13:10 PM
										</div>
									</div>
								</li>
								<li class="media">
									<div class="media-status">
										<span class="badge badge-success">7</span>
									</div>
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar9.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Deon Portalatin</h4>
										<div class="media-heading-sub">
											 CFO, H&D LTD
										</div>
									</div>
								</li>
								<li class="media">
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar10.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Irina Savikova</h4>
										<div class="media-heading-sub">
											 CEO, Tizda Motors Inc
										</div>
									</div>
								</li>
								<li class="media">
									<div class="media-status">
										<span class="badge badge-danger">4</span>
									</div>
									<img class="media-object" src="/libraries/metronic/theme/assets/admin/layout/img/avatar11.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Maria Gomez</h4>
										<div class="media-heading-sub">
											 Manager, Infomatic Inc
										</div>
										<div class="media-heading-small">
											 Last seen 03:10 AM
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="page-quick-sidebar-item">
							<div class="page-quick-sidebar-chat-user">
								<div class="page-quick-sidebar-nav">
									<a href="javascript:;" class="page-quick-sidebar-back-to-list"><i class="icon-arrow-left"></i>Back</a>
								</div>
								<div class="page-quick-sidebar-chat-user-messages">
									<div class="post out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Bob Nilson</a>
											<span class="datetime">20:15</span>
											<span class="body">
											When could you send me the report ? </span>
										</div>
									</div>
									<div class="post in">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar2.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Ella Wong</a>
											<span class="datetime">20:15</span>
											<span class="body">
											Its almost done. I will be sending it shortly </span>
										</div>
									</div>
									<div class="post out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Bob Nilson</a>
											<span class="datetime">20:15</span>
											<span class="body">
											Alright. Thanks! :) </span>
										</div>
									</div>
									<div class="post in">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar2.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Ella Wong</a>
											<span class="datetime">20:16</span>
											<span class="body">
											You are most welcome. Sorry for the delay. </span>
										</div>
									</div>
									<div class="post out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Bob Nilson</a>
											<span class="datetime">20:17</span>
											<span class="body">
											No probs. Just take your time :) </span>
										</div>
									</div>
									<div class="post in">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar2.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Ella Wong</a>
											<span class="datetime">20:40</span>
											<span class="body">
											Alright. I just emailed it to you. </span>
										</div>
									</div>
									<div class="post out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Bob Nilson</a>
											<span class="datetime">20:17</span>
											<span class="body">
											Great! Thanks. Will check it right away. </span>
										</div>
									</div>
									<div class="post in">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar2.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Ella Wong</a>
											<span class="datetime">20:40</span>
											<span class="body">
											Please let me know if you have any comment. </span>
										</div>
									</div>
									<div class="post out">
										<img class="avatar" alt="" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3.jpg"/>
										<div class="message">
											<span class="arrow"></span>
											<a href="javascript:;" class="name">Bob Nilson</a>
											<span class="datetime">20:17</span>
											<span class="body">
											Sure. I will check and buzz you if anything needs to be corrected. </span>
										</div>
									</div>
								</div>
								<div class="page-quick-sidebar-chat-user-form">
									<div class="input-group">
										<input type="text" class="form-control" placeholder="Type a message here...">
										<div class="input-group-btn">
											<button type="button" class="btn blue"><i class="icon-paper-clip"></i></button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane page-quick-sidebar-alerts" id="quick_sidebar_tab_2">
						<div class="page-quick-sidebar-alerts-list">
							<h3 class="list-heading">General</h3>
							<ul class="feeds list-items">
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-info">
													<i class="fa fa-check"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 You have 4 pending tasks. <span class="label label-sm label-warning ">
													Take action <i class="fa fa-share"></i>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 Just now
										</div>
									</div>
								</li>
								<li>
									<a href="javascript:;">
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-success">
													<i class="fa fa-bar-chart-o"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 Finance Report for year 2013 has been released.
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 20 mins
										</div>
									</div>
									</a>
								</li>
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-danger">
													<i class="fa fa-user"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 You have 5 pending membership that requires a quick review.
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 24 mins
										</div>
									</div>
								</li>
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-info">
													<i class="fa fa-shopping-cart"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 New order received with <span class="label label-sm label-success">
													Reference Number: DR23923 </span>
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 30 mins
										</div>
									</div>
								</li>
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-success">
													<i class="fa fa-user"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 You have 5 pending membership that requires a quick review.
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 24 mins
										</div>
									</div>
								</li>
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-info">
													<i class="fa fa-bell-o"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 Web server hardware needs to be upgraded. <span class="label label-sm label-warning">
													Overdue </span>
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 2 hours
										</div>
									</div>
								</li>
								<li>
									<a href="javascript:;">
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-default">
													<i class="fa fa-briefcase"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 IPO Report for year 2013 has been released.
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 20 mins
										</div>
									</div>
									</a>
								</li>
							</ul>
							<h3 class="list-heading">System</h3>
							<ul class="feeds list-items">
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-info">
													<i class="fa fa-check"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 You have 4 pending tasks. <span class="label label-sm label-warning ">
													Take action <i class="fa fa-share"></i>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 Just now
										</div>
									</div>
								</li>
								<li>
									<a href="javascript:;">
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-danger">
													<i class="fa fa-bar-chart-o"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 Finance Report for year 2013 has been released.
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 20 mins
										</div>
									</div>
									</a>
								</li>
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-default">
													<i class="fa fa-user"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 You have 5 pending membership that requires a quick review.
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 24 mins
										</div>
									</div>
								</li>
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-info">
													<i class="fa fa-shopping-cart"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 New order received with <span class="label label-sm label-success">
													Reference Number: DR23923 </span>
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 30 mins
										</div>
									</div>
								</li>
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-success">
													<i class="fa fa-user"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 You have 5 pending membership that requires a quick review.
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 24 mins
										</div>
									</div>
								</li>
								<li>
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-warning">
													<i class="fa fa-bell-o"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 Web server hardware needs to be upgraded. <span class="label label-sm label-default ">
													Overdue </span>
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 2 hours
										</div>
									</div>
								</li>
								<li>
									<a href="javascript:;">
									<div class="col1">
										<div class="cont">
											<div class="cont-col1">
												<div class="label label-sm label-info">
													<i class="fa fa-briefcase"></i>
												</div>
											</div>
											<div class="cont-col2">
												<div class="desc">
													 IPO Report for year 2013 has been released.
												</div>
											</div>
										</div>
									</div>
									<div class="col2">
										<div class="date">
											 20 mins
										</div>
									</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="tab-pane page-quick-sidebar-settings" id="quick_sidebar_tab_3">
						<div class="page-quick-sidebar-settings-list">
							<h3 class="list-heading">General Settings</h3>
							<ul class="list-items borderless">
								<li>
									 Enable Notifications <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="ON" data-off-color="default" data-off-text="OFF">
								</li>
								<li>
									 Allow Tracking <input type="checkbox" class="make-switch" data-size="small" data-on-color="info" data-on-text="ON" data-off-color="default" data-off-text="OFF">
								</li>
								<li>
									 Log Errors <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="ON" data-off-color="default" data-off-text="OFF">
								</li>
								<li>
									 Auto Sumbit Issues <input type="checkbox" class="make-switch" data-size="small" data-on-color="warning" data-on-text="ON" data-off-color="default" data-off-text="OFF">
								</li>
								<li>
									 Enable SMS Alerts <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="ON" data-off-color="default" data-off-text="OFF">
								</li>
							</ul>
							<h3 class="list-heading">System Settings</h3>
							<ul class="list-items borderless">
								<li>
									 Security Level
									<select class="form-control input-inline input-sm input-small">
										<option value="1">Normal</option>
										<option value="2" selected>Medium</option>
										<option value="e">High</option>
									</select>
								</li>
								<li>
									 Failed Email Attempts <input class="form-control input-inline input-sm input-small" value="5"/>
								</li>
								<li>
									 Secondary SMTP Port <input class="form-control input-inline input-sm input-small" value="3560"/>
								</li>
								<li>
									 Notify On System Error <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="ON" data-off-color="default" data-off-text="OFF">
								</li>
								<li>
									 Notify On SMTP Error <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="warning" data-on-text="ON" data-off-color="default" data-off-text="OFF">
								</li>
							</ul>
							<div class="inner-content">
								<button class="btn btn-success"><i class="icon-settings"></i> Save Changes</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END QUICK SIDEBAR -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Metronic by keenthemes. <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->

<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core componets
   Layout.init(); // init layout
   QuickSidebar.init(); // init quick sidebar
   Demo.init(); // init demo features 
   Index.init();   
   Index.initDashboardDaterange();
   //Index.initJQVMAP(); // init index page's custom scripts
   Index.initCalendar(); // init index page's custom scripts
   //Index.initCharts(); // init index page's custom scripts
   Index.initChat();
   //Index.initMiniCharts();
   Tasks.initDashboardWidget();
   //EcommerceProducts.init();
   ComponentsContextMenu.init();

});
</script>
<!-- END JAVASCRIPTS -->
</body>

<!-- END BODY -->
</html>