[{if false}]<script type="text/javascript">[{/if}]
[{assign 'frefix' 'contact_'}]
[{assign 'catfrefix' 'cat_'}]
var APP = function() {
    this.cateApp = {};
    this.jqxgrid = '#jqwidget-entry-list';
    this.theme = 'metro',
    this.entryType = '';
    this.isEntryDialog = false;
    this.isAddItem = false;
    this.isEditItem = false;
    this.isDeleteItem = false;
    this.bindingUri 	= '/dashboard/cp/contactus/databinding/';
    this.catBindingUri 	= '/dashboard/cp/category/databinding/';
    this.entryEditUri 	= '/dashboard/cp/contactus/editpanel/';
    this.entryCommitUri = '/dashboard/cp/contactus/oncommit/';
    this.entryDeleteUri = '/dashboard/cp/contactus/ondelete/';
    var me = this;
    this.bindingCate = function(){
    	this.cateApp.localData = ['Order','Contact us'];
        me.bindingEntry();
    };
    this.createGrid = function(){
    	this.bindingCate();
    };
    this.bindingEntry = function(){
    	this._datafields = [
            {name: '[{$frefix}]id' 	, type: 'int'},
            {name: '[{$frefix}]name' 	},
            {name: '[{$frefix}]phone' 	},
            {name: '[{$frefix}]email' 	},
            {name: '[{$frefix}]type' 	},
            {name: '[{$frefix}]insert' , type: 'date'}
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
            }
        };
        this._dataAdapter = new $.jqx.dataAdapter(me._source, {
            loadError: function(xhr, status, error) {
                addNotice("<b>Status</b>:" + xhr.status + "<br/><b>ThrownError</b>:" + error + "<br/>",'error');
            }
        });
	    this._columns = [
	        {
	            text: '', dataField: '[{$frefix}]id', width: 52, 
	            filterable: false, sortable: true,editable: false,groupable:false,
	            cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
	                var str = "";
	                if (value && value > 0) {
	                    try {
	                        str += "<a href='JavaScript:void(0)'"+
	                        "style='padding: 5px; float: left;margin-top: 2px;' " +
	                    	"onclick=\"myApp.editItem(" + value + ");\" "+ 
	                        "title='Edit :" + value + "'><i class=\"fa fa-eye\"></i></a>\
	                        ";
	                        str += "<a href='JavaScript:void(0)'"+
	                        "style='padding: 5px; float: left;margin-top: 2px;' " +
	                    	"onclick=\"myApp.removeItem(" + value + ","+row+");\" "+
	                        "title='Delete :" + value + "'><i class=\"fa fa-trash-o\"></i></a>\
	                        ";
	                    } catch (e) {
	                    }
	                }
	                
	                return str;
	            }
	        },{
	            text: 'Id'    , dataField: '[{$frefix}]id2' , displayfield:'[{$frefix}]id',cellsalign: 'right', 
	            width: 60, columntype: 'numberinput', filtertype: 'number',
	            filterable: false, sortable: false, editable: false, groupable:false, hidden:true
            },{
	            text: 'Name', dataField: '[{$frefix}]name', minWidth: 180, 
	            sortable: true, editable: false, groupable:false,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS'
	        },{
	            text: 'Phone', dataField: '[{$frefix}]phone', width: 180, 
	            sortable: true, editable: false, groupable:false,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS'
	        },{
	            text: 'Email', dataField: '[{$frefix}]email', width: 180, 
	            sortable: true, editable: false, groupable:false,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS'
	        },{
                text: 'Type', width: 120, cellsalign: 'left',
                filtertype: 'list', filtercondition: 'EQUAL',
                datafield: '[{$frefix}]type', 
                editable: false,
                
            },{
	            text: 'Created' , dataField: '[{$frefix}]insert', width: 120, cellsalign: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false, groupable:false,
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
	        var rowIndex = $(me.jqxgrid).jqxGrid('getselectedrowindex');
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
            rowsheight:28,
	        height 				: '100%',
	        source 				: this._dataAdapter,
	        theme 				: me.theme,
	        columns 			: this._columns,
	        selectionmode 		: 'singlecell',
			filterable 			: true,
	        autoshowfiltericon	: true,
	        showfilterrow 		: true,
			sortable 			: true,
			virtualmode 		: true,
	        groupable 		    : true,
	        groups              : ['[{$frefix}]type'],
	        [{if $action.edit==true}]
	        // editable            : true,//[{if $unit|strpos:"x0e"!==false}]true[{else}]false[{/if}],
	        // editmode 			: 'dblclick',
	        [{/if}]
	        pageable            : true,
	        pagesize            : 200,
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
	                var windowWidth = $(window).width() + scrollLeft;
	                var windowHeight = $(window).height() + scrollTop;
	                if( x + menuWidth > windowWidth){
	                    x = windowWidth - menuWidth -4;
	                }
	                if( y + menuHeight > windowHeight){
	                    y = windowHeight - menuHeight -4;
	                }
	                $(me.jqxgrid).jqxGrid('selectedrowindex', event.args.rowindex);
	                me._contextMenu.jqxMenu('open', x, y);
                    var dataRow = $(me.jqxgrid).jqxGrid('getrowdata', event.args.rowindex);
	                [{if $action.edit==false}]
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
	        //return false;
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
//	        console.log(JSON.stringify(data));
//	        console.log(filterInformation);

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
	                case '[{$frefix}]type':
	                    if (_value != _data.[{$frefix}]type && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{[{$frefix}]type: _value},
	                        	_id,updateCell
	                    	);
	                    break;
	                default:
	                    addNotice("Column editable is dont support !",'warning');
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
                            'prettySelect' : true,
                            'isPopup' : me.isEntryDialog,
                            validateNonVisibleFields:true
                        });
                        $('#entryForm .selectpicker').selectpicker();
                        
                        $('#entryForm').validationEngine({'scroll': false});
                        $('#entryForm [data-toggle="popover"]').popover({
                            html:true
                        })
                        if(me.isEntryDialog>0){
                        	showEntryDialog(Id==0?'Add Item':'View Item');
                        }else{
                        	$('#entry-container').show();
                        	$('#entry-list').hide();
                        }
                        var datatype = $('#entryForm input[name="[{$frefix}]datatype"]').val();
                        if($('#[{$frefix}]content').length==1 && datatype=='html'){
                            addEditorBasic('[{$frefix}]content',240);
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
	            'buttons' : [{
	                'text': 'Close',
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
    	var datatype = $('#entryForm input[name="[{$frefix}]datatype"]').val();
        if($('#[{$frefix}]content').length==1 && datatype=='html'){
    		$('#[{$frefix}]content').val(CKEDITOR.instances['[{$frefix}]content'].getData());
    	}

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
