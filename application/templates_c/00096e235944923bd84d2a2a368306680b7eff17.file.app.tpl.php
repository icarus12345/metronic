<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-07 22:21:36
         compiled from "application\templates\dashboard\cp\content\app.tpl" */ ?>
<?php /*%%SmartyHeaderCode:102655598a927bc7936-94738387%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '00096e235944923bd84d2a2a368306680b7eff17' => 
    array (
      0 => 'application\\templates\\dashboard\\cp\\content\\app.tpl',
      1 => 1436246722,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '102655598a927bc7936-94738387',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5598a927cc2e65_38468899',
  'variables' => 
  array (
    'frefix' => 0,
    'action' => 0,
    'unit' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5598a927cc2e65_38468899')) {function content_5598a927cc2e65_38468899($_smarty_tpl) {?><?php if (false) {?><?php echo '<script'; ?>
 type="text/javascript"><?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['frefix'])) {$_smarty_tpl->tpl_vars['frefix'] = clone $_smarty_tpl->tpl_vars['frefix'];
$_smarty_tpl->tpl_vars['frefix']->value = 'content_'; $_smarty_tpl->tpl_vars['frefix']->nocache = null; $_smarty_tpl->tpl_vars['frefix']->scope = 0;
} else $_smarty_tpl->tpl_vars['frefix'] = new Smarty_variable('content_', null, 0);?>
var APP = function() {
    this.jqxgrid = '#jqwidget-entry-list';
    this.theme = 'metro',
    this.entryType = '';
    this.isEntryDialog = false;
    this.isAddItem = false;
    this.isEditItem = false;
    this.isDeleteItem = false;
    this.bindingUri 	= '/dashboard/cp/content/databinding/';
    this.entryEditUri 	= '/dashboard/cp/content/editpanel/';
    this.entryCommitUri = '/dashboard/cp/content/oncommit/';
    this.entryDeleteUri = '/dashboard/cp/content/ondelete/';
    var me = this;
    this.createGrid = function(){
    	this._datafields = [
	        {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id' 	, type: 'int'},
	        {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title' 	},
	        {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
thumb' 	},
	        {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
alias' 	},
	        {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status' , type: 'bool'},
	        {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock' , type: 'bool'},
	        {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
insert' , type: 'date'},
	        {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
update' , type: 'date'},
	    ];
	    this._source = {
	        datatype 	: "json",
	        type 		: "POST",
	        datafields 	: me._datafields,
	        url 		: me.bindingUri + me.entryType,
	        id 			:'<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id',
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
	            text: '', dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id', width: 52, filterable: false, sortable: true,editable: false,
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
	            text: 'Id'    , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id2' , displayfield:'<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id',cellsalign: 'right', 
	            width: 60, columntype: 'numberinput', filtertype: 'number',
	            filterable: false, sortable: false,editable: false,hidden:true
            },{
                text: 'Thumb'     , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
thumb'   ,width:60,
                filterable:false ,sortable: false, editable: false,hidden:true, groupable:false,
                cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
                    if(value==undefined || value=='')
                        return '';
                    else{
                        return '<div class="bg-cover cell-thumb" style="background-image:url(' + (value) + ');"></div>';
                    }
                }
	        },{
	            text: 'Title', dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title', minWidth: 180, sortable: true,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS'
	            
	        },{
	            text: 'Alias', dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
alias', width: 180, sortable: true,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS',
	            editable: false
	        },{
	            text: 'Status'    , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status' , cellsalign: 'center',
	            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
	            filterable: true, sortable: true,editable: true
	        },{
	            text: 'Lock'    , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock' , cellsalign: 'center',
	            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
	            filterable: true, sortable: true,editable: false, hidden: true
	        },{
	            text: 'Created' , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
insert', width: 120, cellsalign: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false
	        },{
	            text: 'Modifield' , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
update', width: 120, cellsalign: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false, hidden: true
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
	                var entryId = rowData.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id;
	                if(action == 'view'){
	                	var str='<div class="input-append">\
                            <input type="text" class="form-control" value="<?php echo base_url();?>
tin-tuc/'+rowData.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
alias+'">\
                            <a href="/tin-tuc/'+rowData.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
alias+'" class="add-on" target="_blank">\
                                <i class="fa fa-link"></i>\
                            </a>\
                        </div>';
	                    uidialog({'width':'320px'}).open(str);
	                }else if(action == 'add'){
	                    me.addItem();
	                }else if(action == 'edit'){
	                    me.editItem(entryId);
	                }else if(action == 'delete'){
	                    me.removeItem(entryId,rowIndex);
                    }else if(action == 'lock'){
                    }else if(action == 'lockon'){
	                    me.onCommit(me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock: 'true'}, entryId, me.onRefresh);
                    }else if(action == 'lockoff'){
	                    me.onCommit(me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock: 'false'}, entryId, me.onRefresh);
	                }else if(action == 'status'){
                	}else if(action == 'statuson'){
                		me.onCommit(me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status: 'true'}, entryId, me.onRefresh);
            		}else if(action == 'statusoff'){
            			me.onCommit(me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status: 'false'}, entryId, me.onRefresh);
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
		<?php if ($_smarty_tpl->tpl_vars['action']->value['delete']==false||$_smarty_tpl->tpl_vars['action']->value['edit']==false) {?>
		$('#contextMenu').jqxMenu('disable', 'jqxDeleteAction', true); 
		<?php }?>
		// $('#contextMenu').jqxMenu('disable', 'jqxViewAction', true); 
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
	                var dataRow = $(me.jqxgrid).jqxGrid('getrowdata', event.args.rowindex);
	                <?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==true) {?>
					$('#contextMenu').jqxMenu('disable', 'jqxStatusActionOn', dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status); 
					$('#contextMenu').jqxMenu('disable', 'jqxStatusActionOff', !dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status); 
					<?php }?>
					<?php if ($_SESSION['auth']['user']->ause_authority=='Administrator') {?>
					$('#contextMenu').jqxMenu('disable', 'jqxLockActionOn', dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock); 
					$('#contextMenu').jqxMenu('disable', 'jqxLockActionOff', !dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock);
					<?php }?>
					$('#contextMenu').jqxMenu('disable', 'jqxDeleteAction', dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock); 
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
	            var _id = _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id;
	            if (_id == undefined || _id == "") {
	                return;
	            }
	            var updateCell = function(){
	                me.onRefresh();
	            };
	            switch (column) {
	                case '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title':
	                    if (_value != _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title: _value},
	                        	_id, updateCell
	                    	);
	                    break;
	                case '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status':
	                    if (_value)
	                        me.onCommit(
	                            me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status: 'true'}, _id, updateCell
	                        );
	                    else
	                        me.onCommit(
	                            me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status: 'false'}, _id, updateCell
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
        if(_data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock){
        	addNotice('You can not delete this Item.','warning');
            return; 
        }
        var itemName = _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title;
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
    this.lockItem = function(Id,rowIndex){
        <?php if ($_SESSION['auth']['user']->ause_authority!='Administrator') {?>
            addNotice('This function to requires an administrative account.<br/>Please check your authority, and try again.','warning');
            return;     
        <?php }?>
        var _data = $(me.jqxgrid).jqxGrid('getrowdata', rowIndex);
        var itemName = _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title;
    	ConfirmMsg(
            'Lock item ?',
            'Do you want lock "'+itemName+'".<br/>These items will be permanently lock and cannot delete. Are you sure ?',
            function(){
                // httpRequest({
                //     'url': me.entryDeleteUri,
                //     'data': {
                //         'Id': Id
                //     },
                //     'callback': function(rsdata) {
                //         if (rsdata.result < 0) {
                //             addNotice(rsdata.message,'error');
                //         } else {
                //             addNotice(rsdata.message,'success');
                //             me.onRefresh();
                //         }
                //     }
                // }).call();
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
',
                    'unit': '<?php echo $_smarty_tpl->tpl_vars['unit']->value;?>
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
                        if($('#content_content').length==1){
                            addEditorFeature('content_content',240);
                        }
                        if(me.isEntryDialog>0){
                        	showEntryDialog(Id==0?'Add Item':'Edit Item');
                        }else{
                        	$('#entry-container').show();
                        	$('#entry-list').hide();
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
	            'width':'<?php echo ((($tmp = @$_smarty_tpl->tpl_vars['action']->value['col'])===null||$tmp==='' ? 3 : $tmp))*120;?>
px',
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
    	if($('#content_content').length==1){
    		$('#content_content').val(CKEDITOR.instances['content_content'].getData());
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
<?php }} ?>
