[{if false}]<script type="text/javascript">[{/if}]
[{assign 'frefix' 'data_'}]
[{assign 'catfrefix' 'cat_'}]
var APP = function() {
    this.isMobile = [{if $ci->agent->is_mobile()}]true[{else}]false[{/if}];
    this.cateApp = {};
    this.jqxgrid = '#jqwidget-entry-list';
    this.theme = 'metro',
    this.entryType = '';
    this.lang = '[{$aLang[0]->lang_short}]';
    this.isEntryDialog = false;
    this.isAddItem = false;
    this.isEditItem = false;
    this.isDeleteItem = false;
    this.bindingUri = '/dashboard/la/data/databinding/';
    this.entryEditUri = '/dashboard/la/data/editpanel/';
    this.entryCommitUri = '/dashboard/la/data/oncommit/';
    this.entryDeleteUri = '/dashboard/la/data/ondelete/';
    var me = this;
    this.changeLang = function(lang){
        if(this.lang == lang) return;
        this.lang = lang;
        this._getSource();
        this._getCateSource(false)
        $(me.jqxgrid).jqxGrid({source: this._dataAdapter});
    }
    this._getSource = function(){
        this._datafields = [
            {name: '[{$frefix}]id'  , type: 'int'},
            {name: '[{$frefix}]title', map:'data_data>title>' + me.lang},
            {name: '[{$frefix}]type',  map:'data_data>data_type'    },
            {name: '[{$frefix}]status' , type: 'bool'},
            {name: '[{$frefix}]insert' , type: 'date'},
            {name: '[{$frefix}]update' , type: 'date'},
        ];
        this._source = {
            datatype    : "json",
            type        : "POST",
            datafields  : me._datafields,
            url         : me.bindingUri + me.entryType  + '/' +me.lang,
            id          :'[{$frefix}]id',
            root        : 'rows',
                    filter: function() {
                $(me.jqxgrid).jqxGrid('updatebounddata', 'filter');
            },
            sort: function() {
                $(me.jqxgrid).jqxGrid('updatebounddata');
            }
        };
        this._dataAdapter = new $.jqx.dataAdapter(me._source, {
            loadError: function(xhr, status, error) {
                addNotice("<b>Status</b>:" + xhr.status + "<br/><b>ThrownError</b>:" + error + "<br/>",'error');
            }
        });
    }
    this.createGrid = function(){
    	this.bindingEntry();
    };
    this.bindingEntry = function(){
    	
        this._getSource();
	    this._columns = [
	        {
	            text: '', dataField: '[{$frefix}]id', width: me.isMobile?32:62, pinned: true,
	            filterable: false, sortable: true, editable: false, groupable:false,
	            cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
	                var str = "";
	                if (value && value > 0) {
	                    try {
	                        str += "<a href='JavaScript:void(0)'"+
	                        "style='padding: 5px; float: left;margin-top: 2px;' " +
	                    	"onclick=\"myApp.editItem(" + value + ");\" "+ 
	                        "title='Edit :" + value + "'><i class=\"fa fa-pencil-square\"></i></a>\
	                        ";
                            str += "<a href='JavaScript:void(0)'"+
                            "style='padding: 5px; float: left;margin-top: 2px;' " +
                            "onclick=\"myApp.removeItem(" + value + ","+row+");\" "+
                            "title='Delete :" + value + "'><i class=\"fa fa-trash-o\"></i></a>\
                            ";
	                    } catch (e) {
	                    }
	                }
	                if(me.isMobile)
                        return '<span style="position:absolute;top:50%;left:50%;margin:-7px 0 0 -7px;" class="fa fa-bars"></span>';
                    return str;
	            }
	        },{
	            text: 'Id'    , dataField: '[{$frefix}]id2' , displayfield:'[{$frefix}]id',cellsalign: 'right', 
	            width: 60, columntype: 'numberinput', filtertype: 'number', pinned: false,
	            filterable: false, sortable: false,editable: false, groupable:false, hidden:true
            },{
                text: 'Title', dataField: '[{$frefix}]title', minWidth: 180, 
                sortable: true, editable: false, groupable:false,
                columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS'
            },{
	            text: 'Status'    , dataField: '[{$frefix}]status' , cellsalign: 'center',
	            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
	            filterable: true, sortable: true,editable: true, groupable:false,
	        },{
	            text: 'Created' , dataField: '[{$frefix}]insert', width: 120, cellsalign: 'right', align: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false, groupable:false, hidden: me.isMobile
	        },{
	            text: 'Modifield' , dataField: '[{$frefix}]update', width: 120, cellsalign: 'right', align: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false, groupable:false, hidden: true
	        }
	    ];
	    var colSrc = [];
	    for(var i=0;i<this._columns.length;i++){
	    	if(this._columns[i].text!='')
	    	colSrc[i] = {
	    		label: this._columns[i].text,
	    		value: this._columns[i].dataField,
	    		checked: this._columns[i].hidden!=true?true:false
	    	}
	    }
	    $("#jqxListBoxSetting").jqxListBox({
	    	width: '100%', height: '200px',
	    	source: colSrc,
	    	checkboxes: true, 
	    	theme : me.theme
	    }).on('checkChange', function (event) {
		    if (event.args.checked) {
                $(me.jqxgrid).jqxGrid('showcolumn', event.args.value);
            }
            else {
                $(me.jqxgrid).jqxGrid('hidecolumn', event.args.value);
            }
		});
	    this._contextMenu = $("#contextMenu").jqxMenu({ 
	        width: 120, height: 'auto', autoOpenPopup: false, mode: 'popup',theme: me.theme,
            animationShowDuration:0,
            animationHideDuration:0,
            animationShowDelay:0,
            animationHideDelay:0
	    }).on('itemclick', function (event) {
	        var $args = $(args);
            // var rowIndex = $(me.jqxgrid).jqxGrid('getselectedrowindex');
	        var cell = $(me.jqxgrid).jqxGrid('getselectedcell');
            var rowIndex = cell.rowindex;
	        if(rowIndex>=0){
	            var rowData = $(me.jqxgrid).jqxGrid('getrowdata', rowIndex);
	            if(rowData){
	                var action = $args.data('action');
	                var entryId = rowData.[{$frefix}]id;
	                if(action == 'add'){
	                    me.addItem();
	                }else if(action == 'edit'){
	                    me.editItem(entryId);
	                }else if(action == 'price'){
                        me.showPrices(entryIdentryId);
                    }else if(action == 'delete'){
	                    me.removeItem(entryId,rowIndex);
	                }else if(action == 'status'){
                	}else if(action == 'statuson'){
                		me.onCommit(me.entryCommitUri,{[{$frefix}]status: 'true'}, entryId, me.onRefresh);
            		}else if(action == 'statusoff'){
            			me.onCommit(me.entryCommitUri,{[{$frefix}]status: 'false'}, entryId, me.onRefresh);
                    }else if(action == 'chart'){
                        var chart_title = "Chart of "+rowData.[{$frefix}]title;
                        myChart.openWeekChart('lang_news',entryId,'[{date('Y-m-d')}]','View',chart_title);
	                }else{
	                    addNotice("Function is updating !",'warning');
	                }
	            }
	        }
	    });
		[{if $action.add==false}]
		$('#contextMenu').jqxMenu('disable', 'jqxAddAction', true); 
		[{/if}]
		[{if $action.edit==false}]
		$('#contextMenu').jqxMenu('disable', 'jqxEditAction', true); 
		[{/if}]
		[{if $action.delete==false}]
		$('#contextMenu').jqxMenu('disable', 'jqxDeleteAction', true); 
		[{/if}]
		$('#contextMenu').jqxMenu('disable', 'jqxViewAction', true); 
		var _h = $(window).height() - $('#grid-list-data').offset().top - 50;
        $('#grid-list-data').css('height',Math.max(400,_h)+'px');
		$(me.jqxgrid).jqxGrid({
	        width 				: '100%', //
	        // autoheight:true,
            rowsheight:28,
	        height 				: '100%',
	        source 				: me._dataAdapter,
	        theme 				: me.theme,
	        columns 			: me._columns,
	        selectionmode 		: 'singlecell',
			filterable 			: true,
	        autoshowfiltericon	: true,
	        // showfilterrow 		: true,
			sortable 			: true,
			virtualmode 		: true,
	        // groupable          : true,
            // groups              : ['[{$catfrefix}]title'],
	        [{if $action.edit==true}]
	        editable            : true,//[{if $unit|strpos:"x0e"!==false}]true[{else}]false[{/if}],
	        editmode 			: 'dblclick',
	        [{/if}]
	        pageable            : true,
	        pagesize            : 20,
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
	    // }).on("bindingcomplete", function (event) {
	        // $(me.jqxgrid).jqxGrid('expandallgroups');
	    }).on('contextmenu', function () {
	        return false;
	    }).on('cellclick', function (event) {
	        var getTouches = function (e) {
                if (e.originalEvent) {
                    if (e.originalEvent.touches && e.originalEvent.touches.length) {
                        return e.originalEvent.touches;
                    } else if (e.originalEvent.changedTouches && e.originalEvent.changedTouches.length) {
                        return e.originalEvent.changedTouches;
                    }
                }
                if (!e.touches) {
                    e.touches = new Array();
                    e.touches[0] = e.originalEvent;
                }
                return e.touches;
            };
            var rowIndex = event.args.rowindex;
            var openContextMenu = false;
            if(event.args.rightclick) openContextMenu = true;
            if($.jqx.mobile.isTouchDevice() && event.args.originalEvent.type=='touchend' && event.args.datafield=='[{$frefix}]id') 
                openContextMenu = true;
            if(rowIndex>=0){
                if (openContextMenu) {
                    $(me.jqxgrid).jqxGrid('selectcell', rowIndex,event.args.datafield);
                    var scrollTop = $(window).scrollTop();
                    var scrollLeft = $(window).scrollLeft();
                    var menuWidth = me._contextMenu.width();
                    var menuHeight = me._contextMenu.height();
                    var clientX = (event.args.originalEvent.clientX) + scrollLeft,
                    clientY = (event.args.originalEvent.clientY) + scrollTop;
                    //touchstart
                    if(event.args.originalEvent.type=='touchend'){
                        var touches = getTouches(event.args.originalEvent);
                        var touch = touches[0];
                        clientX = touch.pageX;
                        clientY = touch.pageY;
                    }
                    var x = parseInt(clientX);
                    var y = parseInt(clientY);
                    var windowWidth = $(window).width() + scrollLeft;
                    var windowHeight = $(window).height() + scrollTop;
                    if( x + menuWidth > windowWidth){
                        x = windowWidth - menuWidth -4;
                    }
                    if( y + menuHeight > windowHeight){
                        y = windowHeight - menuHeight -4;
                    }
                    if(event.args.originalEvent.type=='touchend'){
                        setTimeout(function(){
                            me._contextMenu.jqxMenu('open', x, y);
                        },500);
                    }else{
                        me._contextMenu.jqxMenu('open', x, y);
                    }
                    var dataRow = $(me.jqxgrid).jqxGrid('getrowdata', rowIndex);
                    [{if $action.edit==true}]
                        $('#contextMenu').jqxMenu('disable', 'jqxStatusActionOn', dataRow.[{$frefix}]status); 
                        $('#contextMenu').jqxMenu('disable', 'jqxStatusActionOff', !dataRow.[{$frefix}]status); 
                    [{/if}]
                    [{if $smarty.session.auth.user->ause_authority=='Administrator'}]
                    // $('#contextMenu').jqxMenu('disable', 'jqxLockActionOn', dataRow.[{$frefix}]lock); 
                    // $('#contextMenu').jqxMenu('disable', 'jqxLockActionOff', !dataRow.[{$frefix}]lock);
                    [{/if}]
                    // $('#contextMenu').jqxMenu('disable', 'jqxDeleteAction', dataRow.[{$frefix}]lock); 
                    event.stopPropagation();
                    event.preventDefault();
                }
            }
            return;
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

	    });
		[{if $action.edit==true}]
		$(me.jqxgrid).bind('cellbeginedit', function (event) {
	        me._cancel = false;
	    }).bind('cellendedit', function (event) {
	                if(me._cancel) return;
	        try{
	            var args = event.args;
	            var _column = args.datafield, 
	            	_row = args.rowindex, 
	            	_value = args.value;
	            var _data = $(me.jqxgrid).jqxGrid('getrowdata', _row);
	            var _id = _data.[{$frefix}]id;
	            if (_id == undefined || _id == "") {
	                return;
	            }
	            var updateCell = function(){
	                me.onRefresh();
	            };
	            switch (_column) {
	                case '[{$frefix}]title':
	                    if (_value != _data.[{$frefix}]title && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{[{$frefix}]title: _value},
	                        	_id
	                    	);
	                    break;
	                case '[{$frefix}]category':
	                    if (_value != _data.[{$frefix}]category && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{[{$frefix}]category: _value},
	                        	_id,function(){
	                        		me.onRefresh()
	                        	}
	                    	);
	                    break;
                        case '[{$frefix}]price':
	                    if (_value != _data.[{$frefix}]price && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{[{$frefix}]price: _value},
	                        	_id
	                    	);
	                    break;
                        case '[{$frefix}]code':
	                    if (_value != _data.[{$frefix}]code && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{[{$frefix}]code: _value},
	                        	_id
	                    	);
	                    break;
	                case '[{$frefix}]status':
	                    if (_value)
	                        me.onCommit(
	                            me.entryCommitUri,{[{$frefix}]status: 'true'}, _id
	                        );
	                    else
	                        me.onCommit(
	                            me.entryCommitUri,{[{$frefix}]status: 'false'}, _id
	                        );
	                    break;
	                default:
	                    addNotice("Column editable is dont support !",'warning');
	                    console.log(_value)
	            }
	        } catch (e) {
	            addNotice(e.message, 'error');
	        }
	    });
		[{/if}]
    }
    this.removeItem = function(Id,rowIndex){
        [{if $action.delete==false}]
            addNotice('This function to requires an administrative account.<br/>Please check your authority, and try again.','warning');
            return;     
        [{/if}]
        var _data = $(me.jqxgrid).jqxGrid('getrowdata', rowIndex);
        var itemName = _data.[{$frefix}]title;
    	ConfirmMsg(
            'Delete item ?',
            'Do you want delete "'+itemName+'".<br/>These items will be permanently deleted and cannot be recovered. Are you sure ?',
            function(){
                httpRequest({
                    'url': me.entryDeleteUri,
                    'data': {
                        'Id': Id
                    },
                    'callback': function(rsdata) {
                        if (rsdata.result < 0) {
                            addNotice(rsdata.message,'error');
                        } else {
                            addNotice(rsdata.message,'success');
                            me.onRefresh();
                        }
                    }
                }).call();
            }
        );
    };
    this.addItem = function(){
    	[{if $action.add==false}]
            addNotice('This function to requires an administrative account.<br/>Please check your authority, and try again.','warning');
            return;
    	[{/if}]
    	this.editItem(0);
    };
    this.editItem = function(Id){
    	[{if $action.edit==false}]
    	addNotice('This function to requires an administrative account.<br/>Please check your authority, and try again.','warning');
    	return;
    	[{/if}]
    	if (pending > 0)return;
            $('#entry-container').html('...');
            httpRequest({
                'url'         :   me.entryEditUri + me.entryType,
                'data'        :   {
                    'Id'  :   Id,
                    'type':   me.entryType,
                    'layout' : '[{$action.layout}]',
                    'ispopup':me.isEntryDialog,
                    'unit' : '[{$unit}]'
                },
                'callback'    :   function(rsdata){
                    if(rsdata.result<0){
                        addNotice(rsdata.message,'error');
                    }else{
                        $('#entry-container').html(rsdata.htmlreponse);
                        $('#entryForm').validationEngine({
                            'scroll': false,
                            'prettySelect' : true,
                            'isPopup' : me.isEntryDialog,
                            validateNonVisibleFields:true
                        });
                        $('#entryForm .selectpicker').selectpicker();
                        [{foreach $aLang 'la'}]
                        if($('#co_content_[{$la->lang_short}]').length==1){
                            addEditorBasic('co_content_[{$la->lang_short}]',160);
                        }
                        [{/foreach}]
                        
                        $('#entryForm').validationEngine({'scroll': false});
                        $('#entryForm [data-toggle="popover"]').popover({
                            html:true
                        })
                        if(me.isEntryDialog>0){
                        	showEntryDialog(Id==0?'Add Item':'Edit Item');
                        }else{
                        	$('#entry-container').show();
                        	$('#entry-list').hide();
                        }
                        if($('#sortable').length == 1){
                            $( "#sortable" ).sortable({placeholder: "ui-state-highlight"});
                            $( "#sortable" ).disableSelection();
                        }
                    }
                }
            }).call();
    };
    function showEntryDialog(title){
    	if(me.isEntryDialog>1){
    		$('#entry-container').addClass('metronic-popup').show();
    	}else if(me.isEntryDialog==1){
	    	uidialog({
	            'message' : $('#entry-container'),
	            'title': title,
	            'dialogClass':'metronic-modal',
	            'width':'[{($action.col|default:3)*120}]px',
	            'type':'notice',
                'onclose': function(){
                    $('#entry-container').html('');
                },
	            'buttons' : [{
	                'text': 'Save',
	                'class': 'ui-btn',
	                'click': function() {
	                    me.onSave()
	                }
	            },{
	                'text': 'Cancel',
	                'class': 'ui-btn',
	                'click': function() {
	                    $(this).dialog("close");
	                }
	            }]
	        }).open();
	    }
    };
    this.onCancel = this.cancelEdit = function(){
    	if(me.isEntryDialog>1){
    		$('#entry-container').hide();
    	}else if(me.isEntryDialog==1){
    		$('#entry-container').dialog("close");
    	}else{
    		$('#entry-container').hide();
    		$('#entry-list').show();
    	}
        $('#entry-container').html('');
    };
    this.refreshList = this.onRefresh = function(){
    	$(me.jqxgrid).jqxGrid('updatebounddata');
    };
    this.onSave = function(){
        [{foreach $aLang 'la'}]
        if($('#co_content_[{$la->lang_short}]').length==1){
            $('#co_content_[{$la->lang_short}]').val(CKEDITOR.instances['co_content_[{$la->lang_short}]'].getData());
        }
        [{/foreach}]
    	if( $('#entryForm').validationEngine('validate') === false){
    		addNotice('Please complete input data.','warning');
    		return false;
    	}
        var Id = $('#EntryId').val();
        var Params = $('#entryForm').serializeJSON();
        
        if($('#sortable').length == 1){
            var images = $('#sortable img.thumb').map(function(){return $(this).attr('src')});
            Params.[{$frefix}]images = images.get().join('\r\n');
        }
        me.onCommit(me.entryCommitUri,Params,Id,function(rsdata){
            if(rsdata.result>0){
                me.refreshList();
                me.cancelEdit();
            }
        });
    };
    this.onCommit = function(Url,Params, Id,callback) {
        httpRequest({
            'url': Url,
            'data': {
                'Id': Id,
                'Params': Params
            },
            'callback': function(rsdata) {
                if (rsdata.result < 0) {
                    addNotice(rsdata.message,'error');
                } else {
                    addNotice(rsdata.message,'success');
                    if (typeof callback == 'function') {
                        callback(rsdata);
                    }
                }
            }
        }).call();
    };
    this.onInit = function(){
    	this.createGrid();
    };
    this.choosePhotos = function(){
        openKCFinderMulti(function(files){
            for(var i in files){
                $('#sortable').append(
                    '<li class="ui-state-default">'+
                        '<img class="thumb" src="'+files[i]+'"/>'+
                        '<div class="action cursor" title="Delete this photo" onclick="myApp.deletePhoto(this)">'+
                            '<i class="fa fa-trash-o"></i>'+
                        '</div>'+
                    '</li>'
                );
            }
        })
    };
    this.deletePhotos = function(){
        $('#sortable>li').hide(500,function(){$(this).remove()});
    };
    this.deletePhoto = function(elm){
        $(elm).parents('li.ui-state-default').hide(500,function(){$(this).remove()});
    };
    this.setting = function(){
    	uidialog({
            'message' : $('#entry-setting'),
            'title': 'Setting Column',
            'dialogClass':'metronic-modal',
            'width':'240px',
            'type':'notice',
            'buttons' : [{
                'text': 'Close',
                'class': 'ui-btn',
                'click': function() {
                    $(this).dialog("close");
                }
            }]
        }).open();
    };
    this.applyFilter = function(datafield, filtervalue) {
        if (filtervalue == '') {
            $(me.jqxgrid).jqxGrid('removefilter', datafield, true);
            return;
        }
        var filtertype = 'stringfilter';
        var filtergroup = new $.jqx.filter();
        var filter_or_operator = 1;
        var filtercondition = 'contains';
        var filter = filtergroup.createfilter(filtertype, filtervalue, filtercondition);
        filtergroup.addfilter(filter_or_operator, filter);

        //$(me.jqxgrid).jqxGrid('clearfilters');
        // add the filters.
        $(me.jqxgrid).jqxGrid('addfilter', datafield, filtergroup);
        // apply the filters.
        $(me.jqxgrid).jqxGrid('applyfilters');
    };
};
var myApp;
$(document).ready(function(){
    myApp = new APP();
    myApp.entryType = '[{$smarty.get.type}]';
    [{if $action.add!=false}]
        myApp.isAddItem = true;
    [{/if}]
    [{if $action.edit!=false}]
        myApp.isEditItem = true;
    [{/if}]
    [{if $action.delete!=false}]
        myApp.isDeleteItem = true;
    [{/if}]
    [{if $action.ispopup==true}]
        myApp.isEntryDialog = true && !myApp.isMobile;
    [{/if}]
        myApp.onInit();
})