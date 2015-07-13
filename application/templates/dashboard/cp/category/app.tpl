[{if false}]<script type="text/javascript">[{/if}]
[{assign 'frefix' 'cat_'}]
var APP = function() {
	this.isMobile = [{if $ci->agent->is_mobile()}]true[{else}]false[{/if}];
    this.jqxgrid = '#jqwidget-entry-list';
    this.theme = 'metro',
    this.entryType = '';
    this.isEntryDialog = '0';
    this.isAddItem = false;
    this.isEditItem = false;
    this.isDeleteItem = false;
    this.bindingUri = '/dashboard/cp/category/databinding/';
    this.entryEditUri = '/dashboard/cp/category/editpanel/';
    this.entryCommitUri = '/dashboard/cp/category/oncommit/';
    this.entryDeleteUri = '/dashboard/cp/category/ondelete/';
    var me = this;
    this.createGrid = function(){
    	this._datafields = [
	        {name: '[{$frefix}]id' 	, type: 'int'},
	        {name: '[{$frefix}]title' 	},
	        {name: '[{$frefix}]level' 	, type: 'int'},
	        {name: '[{$frefix}]parent' , type: 'int'},
	        {name: '[{$frefix}]status' , type: 'bool'},
	        {name: '[{$frefix}]lock' , type: 'bool'},
	        {name: '[{$frefix}]insert' , type: 'date'},
	        {name: '[{$frefix}]update' , type: 'date'},
	    ];
	    this._source = {
	        datatype 	: "json",
	        type 		: "POST",
	        datafields 	: me._datafields,
	        url 		: me.bindingUri + me.entryType,
	        id 			:'[{$frefix}]id',
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
	            addNotice("<b>Status</b>:" + xhr.status + "<br/><b>ThrownError</b>:" + error + "<br/>",'error');
	        }
	    });
	    this._columns = [
	        {
	            text: '', dataField: '[{$frefix}]id', width: 52, filterable: false, sortable: true,editable: false,
	            cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
	                var str = "";
	                if (value && value > 0) {
	                    try {
	                        str += "<a href='JavaScript:void(0)'"+
	                        "style='padding: 5px; float: left;' " +
	                    	"onclick=\"myApp.editItem(" + value + ");\" "+ 
	                        "title='Edit :" + value + "'><i class=\"fa fa-pencil-square\"></i></a>\
	                        ";
	                        str += "<a href='JavaScript:void(0)'"+
	                        "style='padding: 5px; float: left;' " +
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
	            width: 60, columntype: 'numberinput', filtertype: 'number',
	            filterable: false, sortable: false,editable: false,hidden:true
	        },{
	            text: 'Title', dataField: '[{$frefix}]title', minWidth: 220, sortable: true,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS',
	            cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
                    var dataRow = $(me.jqxgrid).jqxGrid('getrowdata', row);
                    var str = '<div style="overflow: hidden; text-overflow: ellipsis; padding-bottom: 4px; text-align: left; margin-right: 2px; margin-left: 4px; padding-top: 4px;">';
                    str+='<span style="padding-left:'+dataRow.[{$frefix}]level*20+'px;">'+value+'</span>';
					//str+=dataRow.Display;
                    str+='</div>';
                    return str;
                }
	        },{
	            text: 'Status'    , dataField: '[{$frefix}]status' , cellsalign: 'center',
	            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
	            filterable: true, sortable: true,editable: true
	        },{
	            text: 'Lock'    , dataField: '[{$frefix}]lock' , cellsalign: 'center',
	            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
	            filterable: true, sortable: true,editable: false, hidden: true
	        },{
	            text: 'Created' , dataField: '[{$frefix}]insert', width: 120, cellsalign: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false
	        },{
	            text: 'Modifield' , dataField: '[{$frefix}]update', width: 120, cellsalign: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false, hidden: false
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
	        width: 200, height: 'auto', autoOpenPopup: false, mode: 'popup',theme: me.theme
	    }).on('itemclick', function (event) {
	        var $args = $(args);
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
	                }else if(action == 'delete'){
	                    me.removeItem(entryId,rowIndex);
                    }else if(action == 'lock'){
                    }else if(action == 'lockon'){
	                    me.onCommit(me.entryCommitUri,{[{$frefix}]lock: 'true'}, entryId, me.onRefresh);
                    }else if(action == 'lockoff'){
	                    me.onCommit(me.entryCommitUri,{[{$frefix}]lock: 'false'}, entryId, me.onRefresh);
	                }else if(action == 'status'){
                	}else if(action == 'statuson'){
                		me.onCommit(me.entryCommitUri,{[{$frefix}]status: 'true'}, entryId, me.onRefresh);
            		}else if(action == 'statusoff'){
            			me.onCommit(me.entryCommitUri,{[{$frefix}]status: 'false'}, entryId, me.onRefresh);
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
		$('#contextMenu').jqxMenu('disable', 'jqxStatusAction', true); 
		[{/if}]
		[{if $action.delete==false}]
		$('#contextMenu').jqxMenu('disable', 'jqxDeleteAction', true); 
		[{/if}]
		$('#contextMenu').jqxMenu('disable', 'jqxViewAction', true); 
		$(me.jqxgrid).jqxGrid({
	        width 				: '100%', //
	        //autoheight:true,
	        height 				: '100%',
	        source 				: this._dataAdapter,
	        theme 				: me.theme,
	        columns 			: this._columns,
	        selectionmode 		: 'singlecell',
			filterable 			: false,
	        // autoshowfiltericon	: true,
	        // showfilterrow 		: true,
			sortable 			: false,
			virtualmode 		: false,
	        // groupable 		    : true,
	        // groups              : ['author_name','topic_title'],
	        [{if $action.edit==true}]
	        editable            : true,
	        editmode 			: 'dblclick',
	        [{/if}]
	        pageable            : false,
	        // pagesize            : 100,
	        // pagesizeoptions     : [20,100, 200, 500, 1000],
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
	    //     $(me.jqxgrid).jqxGrid('expandallgroups');
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
	        if(rowIndex>=0){
	        	$(me.jqxgrid).jqxGrid('selectcell', rowIndex,event.args.datafield);
	            if (event.args.rightclick || (event.args.datafield=='[{$frefix}]id' && me.isMobile)) {
	                var scrollTop = $(window).scrollTop();
	                var scrollLeft = $(window).scrollLeft();
	                var menuWidth = me._contextMenu.width();
	                var menuHeight = me._contextMenu.height();
	            	var clientX = (event.args.originalEvent.clientX) + scrollLeft,
	            	clientY = (event.args.originalEvent.clientY) + scrollTop;
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
			            },100);
		            }else{
		                me._contextMenu.jqxMenu('open', x, y);
		            }
                    var dataRow = $(me.jqxgrid).jqxGrid('getrowdata', event.args.rowindex);
	                [{if $action.edit==true}]
                        $('#contextMenu').jqxMenu('disable', 'jqxStatusActionOn', dataRow.[{$frefix}]status); 
                        $('#contextMenu').jqxMenu('disable', 'jqxStatusActionOff', !dataRow.[{$frefix}]status); 
                    [{/if}]
                    [{if $smarty.session.auth.user->ause_authority=='Administrator'}]
					$('#contextMenu').jqxMenu('disable', 'jqxLockActionOn', dataRow.[{$frefix}]lock); 
					$('#contextMenu').jqxMenu('disable', 'jqxLockActionOff', !dataRow.[{$frefix}]lock);
					[{/if}]
					$('#contextMenu').jqxMenu('disable', 'jqxDeleteAction', dataRow.[{$frefix}]lock); 
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

	    });
		[{if $action.edit==true}]
		$(me.jqxgrid).bind('cellbeginedit', function (event) {
	        me._cancel = false;
	    }).bind('cellendedit', function (event) {
	                if(me._cancel) return;
	        try{
	            var args = event.args;
	            var column = args.datafield, 
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
	            switch (column) {
	                case '[{$frefix}]title':
	                    if (_value != _data.[{$frefix}]title && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{[{$frefix}]title: _value},
	                        	_id, updateCell
	                    	);
	                    break;
	                case '[{$frefix}]status':
	                    if (_value)
	                        me.onCommit(
	                            me.entryCommitUri,{[{$frefix}]status: 'true'}, _id, updateCell
	                        );
	                    else
	                        me.onCommit(
	                            me.entryCommitUri,{[{$frefix}]status: 'false'}, _id, updateCell
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
        if(_data.[{$frefix}]lock){
        	addNotice('You can not delete this Item.','warning');
            return; 
        }
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
                    'unit' : '[{$unit}]'
                },
                'callback'    :   function(rsdata){
                    if(rsdata.result<0){
                        addNotice(rsdata.message,'error');
                    }else{
                        $('#entry-container').html(rsdata.htmlreponse);
                        $('#entryForm').validationEngine({
                            'scroll': false,
                            'isPopup' : me.isEntryDialog>0,
                            validateNonVisibleFields:true
                        });
                        $('#entryForm .selectpicker').selectpicker();
                        $('#entryForm').validationEngine({'scroll': false});
                        if(me.isEntryDialog>0){
                        	showEntryDialog(Id==0?'Add Item':'Edit Item');
                        }else{
                        	$('#entry-container').show();
                        	$('#entry-list').hide();
                        }
                        // $( "#sortable" ).sortable({placeholder: "ui-state-highlight"});
                        // $( "#sortable" ).disableSelection();
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
	            'buttons' : [{
	                'text': 'Done',
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
    };
    this.refreshList = this.onRefresh = function(){
    	$(me.jqxgrid).jqxGrid('updatebounddata');
    };
    this.onSave = function(){
    	if( $('#entryForm').validationEngine('validate') === false){
    		addNotice('Please complete input data.','warning');
    		return false;
    	}
        var Id = $('#EntryId').val();
        var Params =$('#entryForm').serializeObject();
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
};
