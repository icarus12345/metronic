<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-06 14:03:59
         compiled from "application\templates\dashboard\cp\image\app.tpl" */ ?>
<?php /*%%SmartyHeaderCode:205605595f07f14c5a5-67618951%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '614108c21f8c6c7b2d6fe906e78bab76f295dc24' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\image\\app.tpl',
      1 => 1436014836,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '205605595f07f14c5a5-67618951',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5595f07f23daa7_99102531',
  'variables' => 
  array (
    'action' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5595f07f23daa7_99102531')) {function content_5595f07f23daa7_99102531($_smarty_tpl) {?><?php if (false) {?><?php echo '<script'; ?>
 type="text/javascript"><?php }?>
var APP = function() {
    this.jqxgrid = '#jqwidget-entry-list';
    this.theme = 'metro',
    this.entryType = '';
    this.isEntryDialog = false;
    this.isAddItem = false;
    this.isEditItem = false;
    this.isDeleteItem = false;
    this.bindingUri = '/dashboard/cp/image/databinding/';
    this.entryEditUri = '/dashboard/cp/image/editpanel/';
    this.entryCommitUri = '/dashboard/cp/image/oncommit/';
    this.entryDeleteUri = '/dashboard/cp/image/ondelete/';
    var me = this;
    this.createGrid = function(){
    	this._datafields = [
	        {name: 'image_id' 	, type: 'int'},
	        {name: 'image_title' 	},
	        {name: 'image_src' 	},
	        {name: 'image_status' , type: 'bool'},
	        {name: 'image_insert' , type: 'date'},
	        {name: 'image_update' , type: 'date'},
	    ];
	    this._source = {
	        datatype 	: "json",
	        type 		: "POST",
	        datafields 	: me._datafields,
	        url 		: me.bindingUri + me.entryType,
	        id 			:'image_id',
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
	            text: '', dataField: 'image_id', width: 52, filterable: false, sortable: true,editable: false,
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
	                
	                return str;
	            }
	        },{
	            text: 'Id'    , dataField: 'image_id2' , displayfield:'image_id',cellsalign: 'right', 
	            width: 60, columntype: 'numberinput', filtertype: 'number',
	            filterable: false, sortable: false,editable: false,hidden:true
                },{
                    text: 'Image'     , dataField: 'image_src'   ,width:60,filterable:false ,sortable: false,
                    cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
                        if(value==undefined || value=='')
                            return '';
                        else{

                            return '<div class="bg-cover cell-thumb" style="background-image:url(' + (value) + ');"></div>';
                        }
                    }
	        },{
	            text: 'Title', dataField: 'image_title', minWidth: 220, sortable: true,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS'
	            
	        },{
	            text: 'Status'    , dataField: 'image_status' , cellsalign: 'center',
	            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
	            filterable: true, sortable: true,editable: true
	        },{
	            text: 'Created' , dataField: 'image_insert', width: 120, cellsalign: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false
	        },{
	            text: 'Modifield' , dataField: 'image_update', width: 120, cellsalign: 'right',
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
	        var rowIndex = $(me.jqxgrid).jqxGrid('getselectedrowindex');
	        if(rowIndex>=0){
	            var rowData = $(me.jqxgrid).jqxGrid('getrowdata', rowIndex);
	            if(rowData){
	                var action = $args.data('action');
	                var entryId = rowData.image_id;
	                if(action == 'add'){
	                    me.addItem();
	                }else if(action == 'edit'){
	                    me.editItem(entryId);
	                }else if(action == 'delete'){
	                    me.removeItem(entryId,rowIndex);
	                }else if(action == 'status'){
                	}else if(action == 'statuson'){
                		me.onCommit(me.entryCommitUri,{image_status: 'true'}, entryId, me.onRefresh);
            		}else if(action == 'statusoff'){
            			me.onCommit(me.entryCommitUri,{image_status: 'false'}, entryId, me.onRefresh);
	                }else{
	                    addNotice("Function is updating !",'warning');
	                }
	            }
	        }
	    });
		<?php if ($_smarty_tpl->tpl_vars['action']->value['add']==false) {?>
		$('#contextMenu').jqxMenu('disable', 'jqxAddAction', true); 
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==false) {?>
		$('#contextMenu').jqxMenu('disable', 'jqxEditAction', true); 
		$('#contextMenu').jqxMenu('disable', 'jqxStatusAction', true); 
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['action']->value['delete']==false) {?>
		$('#contextMenu').jqxMenu('disable', 'jqxDeleteAction', true); 
		<?php }?>
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
			filterable 			: false,
	        // autoshowfiltericon	: true,
	        // showfilterrow 		: true,
			sortable 			: false,
			virtualmode 		: false,
	        // groupable 		    : true,
	        // groups              : ['author_name','topic_title'],
	        <?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==true) {?>
	        editable            : true,
	        editmode 			: 'dblclick',
	        <?php }?>
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
	                <?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==true) {?>
	                var dataRow = $(me.jqxgrid).jqxGrid('getrowdata', event.args.rowindex);
					$('#contextMenu').jqxMenu('disable', 'jqxStatusActionOn', dataRow.image_status); 
					$('#contextMenu').jqxMenu('disable', 'jqxStatusActionOff', !dataRow.image_status); 
					<?php }?>
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
		<?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==true) {?>
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
	            var _id = _data.image_id;
	            if (_id == undefined || _id == "") {
	                return;
	            }
	            var updateCell = function(){
	                me.onRefresh();
	            };
	            switch (column) {
	                case 'image_title':
	                    if (_value != _data.image_title && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{image_title: _value},
	                        	_id, updateCell
	                    	);
	                    break;
	                case 'image_status':
	                    if (_value)
	                        me.onCommit(
	                            me.entryCommitUri,{image_status: 'true'}, _id, updateCell
	                        );
	                    else
	                        me.onCommit(
	                            me.entryCommitUri,{image_status: 'false'}, _id, updateCell
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
		<?php }?>
    }
    this.removeItem = function(Id,rowIndex){
        <?php if ($_smarty_tpl->tpl_vars['action']->value['delete']==false) {?>
            addNotice('This function to requires an administrative account.<br/>Please check your authority, and try again.','warning');
            return;     
        <?php }?>
        var _data = $(me.jqxgrid).jqxGrid('getrowdata', rowIndex);
        var itemName = _data.image_title;
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
    	<?php if ($_smarty_tpl->tpl_vars['action']->value['add']==false) {?>
            addNotice('This function to requires an administrative account.<br/>Please check your authority, and try again.','warning');
            return;
    	<?php }?>
    	this.editItem(0);
    };
    this.editItem = function(Id){
    	<?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==false) {?>
    	addNotice('This function to requires an administrative account.<br/>Please check your authority, and try again.','warning');
    	return;
    	<?php }?>
    	if (pending > 0)return;
            $('#entry-container').html('...');
            httpRequest({
                'url'         :   me.entryEditUri + me.entryType,
                'data'        :   {
                    'Id'  :   Id,
                    'type':   me.entryType,
                    'layout' : '<?php echo $_smarty_tpl->tpl_vars['action']->value['layout'];?>
'
                },
                'callback'    :   function(rsdata){
                    if(rsdata.result<0){
                        addNotice(rsdata.message,'error');
                    }else{
                        $('#entry-container').html(rsdata.htmlreponse);
                        $('#entryForm').validationEngine({
                            'scroll': false,
                            'isPopup' : me.isEntryDialog,
                            validateNonVisibleFields:true
                        });
                        $('#entryForm .selectpicker').selectpicker();
                        $('#entryForm').validationEngine({'scroll': false});
                        $('#entryForm [data-toggle="popover"]').popover({
                            html:true
                        })
                        if(me.isEntryDialog){
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
    	uidialog({
            'message' : $('#entry-container'),
            'title': title,
            'dialogClass':'metronic-modal',
            'width':'320px',
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
    };
    this.onCancel = this.cancelEdit = function(){
    	if(me.isEntryDialog){
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
<?php }} ?>
