[{if false}]<script type="text/javascript">[{/if}]
[{assign 'frefix' 'lang_'}]
var APP = function() {
    this.isMobile = [{if $ci->agent->is_mobile()}]true[{else}]false[{/if}];
    this.jqxgrid = '#jqwidget-entry-list';
    this.theme = 'metro',
    this.entryType = '';
    this.isEntryDialog = false;
    this.isAddItem = false;
    this.isEditItem = false;
    this.isDeleteItem = false;
    this.bindingUri = '/dashboard/la/lang/databinding/';
    this.entryEditUri = '/dashboard/la/lang/editpanel/';
    this.entryCommitUri = '/dashboard/la/lang/oncommit/';
    this.entryDeleteUri = '/dashboard/la/lang/ondelete/';
    var me = this;
    this.bindingCate = function(){
    	me.bindingEntry();
    };
    this.createGrid = function(){
    	this.bindingCate();
    };
    this.bindingEntry = function(){
    	this._datafields = [
            {name: '[{$frefix}]id' 	, type: 'int'},
            {name: '[{$frefix}]name'    },
            {name: '[{$frefix}]status' , type: 'bool'},
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
            }
        };
        this._dataAdapter = new $.jqx.dataAdapter(me._source, {
            loadError: function(xhr, status, error) {
                addNotice("<b>Status</b>:" + xhr.status + "<br/><b>ThrownError</b>:" + error + "<br/>",'error');
            }
        });
	    this._columns = [
	        {
	            text: 'Id'    , dataField: '[{$frefix}]id' , displayfield:'[{$frefix}]id',cellsalign: 'right', 
	            width: 60, columntype: 'numberinput', filtertype: 'number', pinned: false,
	            filterable: false, sortable: false,editable: false, groupable:false, hidden:true
            },{
	            text: 'Title', dataField: '[{$frefix}]name', minWidth: 220, 
	            sortable: true, groupable:false, 
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS'
	        },{
	            text: 'Status'    , dataField: '[{$frefix}]status' , cellsalign: 'center',
	            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
	            filterable: true, sortable: true,editable: true, groupable:false,
	        // },{
	        //     text: 'Created' , dataField: '[{$frefix}]insert', width: 120, cellsalign: 'right',
	        //     filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	        //     sortable: true,editable: false, groupable:false
	        // },{
	        //     text: 'Modifield' , dataField: '[{$frefix}]update', width: 120, cellsalign: 'right',
	        //     filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	        //     sortable: true,editable: false, groupable:false, hidden: true
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
	        groupable 		    : false,
	        // groups              : ['author_name','topic_title'],
	        [{if $action.edit==true}]
	        editable            : true,//[{if $unit|strpos:"x0e"!==false}]true[{else}]false[{/if}],
	        editmode 			: 'dblclick',
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
    
    this.refreshList = this.onRefresh = function(){
    	$(me.jqxgrid).jqxGrid('updatebounddata');
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
