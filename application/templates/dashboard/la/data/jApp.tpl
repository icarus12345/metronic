[{if false}]<script type="text/javascript">[{/if}]
var dataAPP = (function() {
    [{assign 'frefix' 'data_'}]
    var isMobile = [{if $ci->agent->is_mobile()}]true[{else}]false[{/if}];
	var type='';
    $('body').append('<div id="entry-jdata"></div>');
	$('body').append('<div id="dialog-data-app"><div id="jqxgrid-data"></div></div>');
    var jqxgrid = '#jqxgrid-data';
    var bindingUri = '/dashboard/la/data/databinding/';
    var entryEditUri = '/dashboard/la/data/editpanel/';
    var entryCommitUri = '/dashboard/la/data/oncommit/';
    var entryDeleteUri = '/dashboard/la/data/ondelete/';
    var me = dataAPP;
    var entryToken = '';
    var _datafields,_source,_dataAdapter,_columns;
    var _option;
	return {
		type: type,
        init: function(options){
            _option = options;
        },
        createGrid: function(token){
            entryToken = token;
            _datafields = [
                {name: 'data_id'  , type: 'int'},
                {name: 'data_title'     },
                {name: 'data_price'},
                {name: 'data_status' , type: 'bool'},
                {name: 'data_insert' , type: 'date'},
                {name: 'data_update' , type: 'date'},
            ];
            _source = {
                datatype    : "json",
                type        : "POST",
                datafields  : _datafields,
                url         : bindingUri + entryToken + '/' + _option.lang,
                id          :'data_id',
                root        : 'rows',
                filter: function() {
                    $(jqxgrid).jqxGrid('updatebounddata', 'filter');
                },
                sort: function() {
                    $(jqxgrid).jqxGrid('updatebounddata');
                }
            };
            _dataAdapter = new $.jqx.dataAdapter(_source, {
                loadError: function(xhr, status, error) {
                    addNotice("<b>Status</b>:" + xhr.status + "<br/><b>ThrownError</b>:" + error + "<br/>",'error');
                }
            });
            _columns = [
                {
                    text: 'Id'    , dataField: 'data_id', cellsalign: 'right', 
                    width: 60, columntype: 'numberinput', filtertype: 'number',
                    filterable: false, sortable: false,editable: false,
                    cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
                        var str = "";
                        if (value && value > 0) {
                            try {
                                str += "<a href='JavaScript:void(0)'"+
                                "style='padding: 5px; float: left;margin-top: 2px;' " +
                                "onclick=\"dataAPP.editItem(" + value + ");\" "+ 
                                "title='Edit :" + value + "'><i class=\"fa fa-pencil-square\"></i></a>\
                                ";
                                str += "<a href='JavaScript:void(0)'"+
                                "style='padding: 5px; float: left;margin-top: 2px;' " +
                                "onclick=\"dataAPP.removeItem(" + value + ","+row+");\" "+
                                "title='Delete :" + value + "'><i class=\"fa fa-trash-o\"></i></a>\
                                ";
                            } catch (e) {
                            }
                        }
                        if(isMobile)
                            return '<span style="position:absolute;top:50%;left:50%;margin:-7px 0 0 -7px;" class="fa fa-bars"></span>';
                        return str;
                    }
                },{
                    text: 'Title', dataField: 'data_title', minWidth: 120
                    
                },{
                    text: 'Price', dataField: 'data_price', width: 80,                    
                },{
                    text: 'Status'    , dataField: 'data_status' , cellsalign: 'center',
                    width: 44, columntype: 'checkbox', threestatecheckbox: false
                },{
                    text: 'Created' , dataField: 'data_insert', width: 120, cellsalign: 'right',
                    filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
                    sortable: true,editable: false, hidden: true
                },{
                    text: 'Modifield' , dataField: 'data_update', width: 120, cellsalign: 'right',
                    filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
                    sortable: true,editable: false, hidden: true
                }
            ];
            $(jqxgrid).jqxGrid({
                width               : '100%', //
                // autoheight:true,
                // rowsheight:28,
                height              : '320px',
                source              : _dataAdapter,
                theme               : 'metro',
                columns             : _columns,
                // selectionmode       : 'singlecell',
                // filterable          : true,
                // autoshowfiltericon  : false,
                // showfilterrow       : true,
                // sortable            : false,
                // virtualmode         : false,
                // showaggregates: true,
                // showstatusbar: true,
                // groupable            : true,
                // groups              : ['author_name','topic_title'],
                // pageable            : false,
                // pagesize            : 100,
                // pagesizeoptions     : [20,100, 200, 500, 1000],
                rendergridrows      : function(){ 
                    return _dataAdapter.records; 
                }
            });
        },
        showGridDialog : function(){
            uidialog({
                'message' : $('#dialog-data-app'),
                'title': _option.title,
                'dialogClass':'metronic-modal',
                'width': _option.width,
                'type':'notice',
                'onopen': function(){
                    dataAPP.createGrid(_option.token);
                },
                'buttons' : [{
                    'text': 'Add',
                    'class': 'ui-btn',
                    'click': function() {
                        dataAPP.onAddItem();
                    }
                },{
                    'text': 'Cancel',
                    'class': 'ui-btn',
                    'click': function() {
                        $(this).dialog("close");
                    }
                }]
            }).open(); 
        },
		showDialog : function(title){
	    	uidialog({
	            'message' : $('#entry-jdata'),
	            'title': title,
	            'dialogClass':'metronic-modal',
	            'width':'[{($action.col|default:3)*120}]px',
	            'type':'notice',
                'onclose': function(){
                    $('#entry-jdata').html('');
                },
	            'buttons' : [{
	                'text': 'Save',
	                'class': 'ui-btn',
	                'click': function() {
	                    dataAPP.onSave();
	                }
	            },{
	                'text': 'Cancel',
	                'class': 'ui-btn',
	                'click': function() {
	                    $(this).dialog("close");
	                }
	            }]
	        }).open(); 
	    },
		loadFormUrl: function(options){
			httpRequest({
                'url'         :   options.url,
                'data'        :   options.data,
                'callback'    :   function(rsdata){
                    if(rsdata.result<0){
                        addNotice(rsdata.message,'error');
                    }else{
                        $('#entry-jdata').html(rsdata.htmlreponse);
                        $('#entryForm').validationEngine({
                            'scroll': false,
                            'prettySelect' : true,
                            'isPopup' : options.isPopup,
                            validateNonVisibleFields:true
                        });
                        $('#entryForm .selectpicker').selectpicker();
                        dataAPP.showDialog(options.title);
                    }
                }
            }).call();
		},
        onCommit: function(Url,Params, Id,callback) {
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
        },
        onSave: function(){
            if( $('#entryForm').validationEngine('validate') === false){
                addNotice('Please complete input data.','warning');
                return false;
            }
            var Id = $('#EntryId').val();
            var Params = $('#entryForm').serializeJSON();
            dataAPP.onCommit(entryCommitUri,Params,Id,function(rsdata){
                if(rsdata.result>0){
                    dataAPP.onRefresh();
                    dataAPP.onCancel();
                }
            });
        },
        onCancel: function(){
            $('#entry-jdata').dialog("close");
            $('#entry-jdata').html('');
        },
        onRefresh: function(){
            $(jqxgrid).jqxGrid('updatebounddata');
        },
        onAddItem: function(){
            dataAPP.editItem()
        },
        editItem: function(id){
            dataAPP.loadFormUrl({
                title: _option.title,
                url:_option.editurl,
                data:{
                    token: _option.token,
                    unit: _option.unit,
                    type: _option.type,
                    layout:_option.layout,
                    id: id,
                }
            });
        },
        removeItem : function(Id,rowIndex){
            [{if $action.delete==false}]
                addNotice('This function to requires an administrative account.<br/>Please check your authority, and try again.','warning');
                return;     
            [{/if}]
            var _data = $(jqxgrid).jqxGrid('getrowdata', rowIndex);
            var itemName = _data.[{$frefix}]title;
            ConfirmMsg(
                'Delete item ?',
                'Do you want delete "'+itemName+'".<br/>These items will be permanently deleted and cannot be recovered. Are you sure ?',
                function(){
                    httpRequest({
                        'url': entryDeleteUri,
                        'data': {
                            'Id': Id
                        },
                        'callback': function(rsdata) {
                            if (rsdata.result < 0) {
                                addNotice(rsdata.message,'error');
                            } else {
                                addNotice(rsdata.message,'success');
                                dataAPP.onRefresh();
                            }
                        }
                    }).call();
                }
            );
        }
	};
}());