<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-23 16:40:43
         compiled from "application\templates\dashboard\la\product\app.tpl" */ ?>
<?php /*%%SmartyHeaderCode:196255adb65ad09db3-69696271%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '07cfd6e15f5ac628c9a5c3b8fce005e5fc679c57' => 
    array (
      0 => 'application\\templates\\dashboard\\la\\product\\app.tpl',
      1 => 1437642478,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '196255adb65ad09db3-69696271',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55adb65b166692_88233830',
  'variables' => 
  array (
    'ci' => 0,
    'catfrefix' => 0,
    'frefix' => 0,
    'action' => 0,
    'unit' => 0,
    'aLang' => 0,
    'la' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55adb65b166692_88233830')) {function content_55adb65b166692_88233830($_smarty_tpl) {?><?php if (false) {?><?php echo '<script'; ?>
 type="text/javascript"><?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['frefix'])) {$_smarty_tpl->tpl_vars['frefix'] = clone $_smarty_tpl->tpl_vars['frefix'];
$_smarty_tpl->tpl_vars['frefix']->value = 'product_'; $_smarty_tpl->tpl_vars['frefix']->nocache = null; $_smarty_tpl->tpl_vars['frefix']->scope = 0;
} else $_smarty_tpl->tpl_vars['frefix'] = new Smarty_variable('product_', null, 0);?>
<?php if (isset($_smarty_tpl->tpl_vars['catfrefix'])) {$_smarty_tpl->tpl_vars['catfrefix'] = clone $_smarty_tpl->tpl_vars['catfrefix'];
$_smarty_tpl->tpl_vars['catfrefix']->value = 'cat_'; $_smarty_tpl->tpl_vars['catfrefix']->nocache = null; $_smarty_tpl->tpl_vars['catfrefix']->scope = 0;
} else $_smarty_tpl->tpl_vars['catfrefix'] = new Smarty_variable('cat_', null, 0);?>
var APP = function() {
    this.isMobile = <?php if ($_smarty_tpl->tpl_vars['ci']->value->agent->is_mobile()) {?>true<?php } else { ?>false<?php }?>;
    this.cateApp = {};
    this.jqxgrid = '#jqwidget-entry-list';
    this.theme = 'metro',
    this.entryType = '';
    this.isEntryDialog = false;
    this.isAddItem = false;
    this.isEditItem = false;
    this.isDeleteItem = false;
    this.bindingUri = '/dashboard/la/product/databinding/';
    this.entryEditUri = '/dashboard/la/product/editpanel/';
    this.entryCommitUri = '/dashboard/la/product/oncommit/';
    this.entryDeleteUri = '/dashboard/la/product/ondelete/';
    var me = this;
    this.bindingCate = function(){
        this.cateApp._datafields = [
            {name: '<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
id' 	, type: 'int'},
            {name: '<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
title' 	},
            {name: '<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
status' , type: 'bool'},
            {name: '<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
insert' , type: 'date'},
            {name: '<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
update' , type: 'date'},
        ];
        this.cateApp._source = {
            datatype 	: "json",
            type 		: "POST",
            datafields 	: me.cateApp._datafields,
            url 		: '/dashboard/la/category/databinding/'+me.entryType,
            id 			:'<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
id',
            root 		: 'rows'
        };
        this.cateApp._dataAdapter = new $.jqx.dataAdapter(me.cateApp._source, {
            autoBind: true,
            beforeLoadComplete: function (records) {
                for (var i = 0; i < records.length; i++) {
                    records[i].value = records[i].<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
id;
                    records[i].label = records[i].<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
title;
                }
            },
            loadComplete: function(records){
            	me.bindingEntry();
            },
            loadError: function(xhr, status, error) {
                addNotice("<b>Status</b>:" + xhr.status + "<br/><b>ThrownError</b>:" + error + "<br/>",'error');
            }
        });
    };
    this.createGrid = function(){
    	this.bindingCate();
    };
    this.bindingEntry = function(){
    	this._datafields = [
            {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id' 	, type: 'int'},
            {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
category'    , type: 'int'},
            {
             name: '<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
title'  ,
             value: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
category',
             values: { 
                 source: me.cateApp._dataAdapter.records, 
                 value: 'value', name: 'label' 
             }
            },
            {name: 'ti_title'    },
            //{name: 'ti_lang'    },
            {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
code'    },
            {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
thumb'   },
            {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
view' 	, type: 'int'},
            {name: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status' , type: 'bool'},
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
id', width: 52, pinned: true,
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
	            text: 'Id'    , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id2' , displayfield:'<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id',cellsalign: 'right', 
	            width: 60, columntype: 'numberinput', filtertype: 'number', pinned: false,
	            filterable: false, sortable: false,editable: false, groupable:false, hidden:true
            },{
                text: 'Thumb'     , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
thumb'   ,width:60, pinned: false,
                filterable:false ,sortable: false, editable: false,hidden:true, groupable:false,
                cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
                    if(value==undefined || value=='')
                        return '';
                    else{
                        return '<div class="bg-cover cell-thumb" style="background-image:url(' + (value) + ');"></div>';
                    }
                }
	        },{
	            text: 'Title', dataField: 'ti_title', minWidth: 220, 
	            sortable: true, groupable:false, pinned: !me.isMobile, editable : false,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS',
                validation: function (cell, value) {
                    if (value.length < 4 || value.length > 255) {
                        return { result: false, message: "Title must be not empty and length should be in the 4-255 interval" };
                        return { result: false, message: "Quantity should be in the 0-150 interval" };
                    }
                    return true;
                }
	        },{
	            text: 'Code', dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
code', width: 80, 
	            sortable: true, groupable:false,
	            columntype: 'textbox', filtertype: 'textbox', filtercondition: 'CONTAINS',
                validation: function (cell, value) {
                    if (value.length < 4 || value.length > 20) {
                        return { result: false, message: "CODE must be not empty and length should be in the 4-20 interval" };
                        return { result: false, message: "Quantity should be in the 0-150 interval" };
                    }
                    return true;
                }
	        },{
                text: 'Category', width: 120, cellsalign: 'left',
                columntype: 'dropdownlist',filtertype: 'list', filtercondition: 'EQUAL',
                dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
category', displayfield:'<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
title',
                editable: true,
                filteritems: me.cateApp._dataAdapter.records, 
                createfilterwidget: function (column, htmlElement, editor) {
                    editor.jqxDropDownList({ 
                        source          : me.cateApp._dataAdapter.records,
                        displayMember   : "<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
title", 
                        valueMember     : "<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
id"
                    });
                },
                // cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
                	
                // },
                createeditor: function(row, cellvalue, editor, cellText, width, height) {
                    // construct the editor. 
                    editor.jqxDropDownList({
                        source: me.cateApp._dataAdapter.records,
                        displayMember: "<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
title", valueMember: "<?php echo $_smarty_tpl->tpl_vars['catfrefix']->value;?>
id",
                        width: width, height: height, theme: me.theme,
                        // selectionRenderer: function() {
                        //     return "Please Choose:";
                        // }
                    });
                },
                initeditor: function(row, cellvalue, editor, celltext, pressedkey) {
                    // set the editor's current value. The callback is called each time the editor is displayed.
//                        editor.jqxDropDownList('setContent', celltext); 
                },
                geteditorvalue: function(row, cellvalue, editor) {
                    // return the editor's value.
                    return editor.val();
                }
            },{
                text: 'View'    , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
view' , cellsalign: 'center',
                width: 60, filterable: false, sortable: true,editable: false, groupable:false,
            },{
	            text: 'Status'    , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status' , cellsalign: 'center',
	            width: 44, columntype: 'checkbox', threestatecheckbox: false, filtertype: 'bool',
	            filterable: true, sortable: true,editable: true, groupable:false,
	        },{
	            text: 'Created' , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
insert', width: 120, cellsalign: 'right', align: 'right',
	            filterable: true, columntype: 'datetimeinput', filtertype: 'range', cellsformat: 'yyyy-MM-dd HH:mm:ss',
	            sortable: true,editable: false, groupable:false
	        },{
	            text: 'Modifield' , dataField: '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
update', width: 120, cellsalign: 'right', align: 'right',
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
	        width: 200, height: 'auto', autoOpenPopup: false, mode: 'popup',theme: me.theme,
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
	                var entryId = rowData.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id;
	                if(action == 'add'){
	                    me.addItem();
	                }else if(action == 'edit'){
	                    me.editItem(entryId);
	                }else if(action == 'delete'){
	                    me.removeItem(entryId,rowIndex);
	                }else if(action == 'status'){
                	}else if(action == 'statuson'){
                		me.onCommit(me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status: 'true'}, entryId, me.onRefresh);
            		}else if(action == 'statusoff'){
            			me.onCommit(me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status: 'false'}, entryId, me.onRefresh);
                    }else if(action == 'chart'){
                        var chart_title = "Chart of "+rowData.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title;
                        myChart.openWeekChart('_product',entryId,'<?php echo date('Y-m-d');?>
','View',chart_title);
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
			filterable 			: true,
	        autoshowfiltericon	: true,
	        showfilterrow 		: true,
			sortable 			: true,
			virtualmode 		: true,
	        groupable 		    : true,
	        // groups              : ['author_name','topic_title'],
	        <?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==true) {?>
	        editable            : true,//<?php if (strpos($_smarty_tpl->tpl_vars['unit']->value,"x0e")!==false) {?>true<?php } else { ?>false<?php }?>,
	        editmode 			: 'dblclick',
	        <?php }?>
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
            var openContextMenu = false;
            if(event.args.rightclick) openContextMenu = true;
            if($.jqx.mobile.isTouchDevice() && event.args.originalEvent.type=='touchend' && event.args.datafield=='<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id') 
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
                    <?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==true) {?>
                        $('#contextMenu').jqxMenu('disable', 'jqxStatusActionOn', dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status); 
                        $('#contextMenu').jqxMenu('disable', 'jqxStatusActionOff', !dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status); 
                    <?php }?>
                    <?php if ($_SESSION['auth']['user']->ause_authority=='Administrator') {?>
                    // $('#contextMenu').jqxMenu('disable', 'jqxLockActionOn', dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock); 
                    // $('#contextMenu').jqxMenu('disable', 'jqxLockActionOff', !dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock);
                    <?php }?>
                    // $('#contextMenu').jqxMenu('disable', 'jqxDeleteAction', dataRow.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
lock); 
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
//	        console.log(JSON.stringify(data));
//	        console.log(filterInformation);

	    });
		<?php if ($_smarty_tpl->tpl_vars['action']->value['edit']==true) {?>
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
	            var _id = _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
id;
	            if (_id == undefined || _id == "") {
	                return;
	            }
	            var updateCell = function(){
	                me.onRefresh();
	            };
	            switch (_column) {
	                case '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title':
	                    if (_value != _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
title: _value},
	                        	_id
	                    	);
	                    break;
	                case '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
category':
	                    if (_value != _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
category && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
category: _value},
	                        	_id,function(){
	                        		me.onRefresh()
	                        	}
	                    	);
	                    break;
                        case '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
price':
	                    if (_value != _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
price && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
price: _value},
	                        	_id
	                    	);
	                    break;
                        case '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
code':
	                    if (_value != _data.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
code && _value!='')
	                        me.onCommit(
	                        	me.entryCommitUri,
	                        	{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
code: _value},
	                        	_id
	                    	);
	                    break;
	                case '<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status':
	                    if (_value)
	                        me.onCommit(
	                            me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status: 'true'}, _id
	                        );
	                    else
	                        me.onCommit(
	                            me.entryCommitUri,{<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
status: 'false'}, _id
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
                    'unit' : '<?php echo $_smarty_tpl->tpl_vars['unit']->value;?>
'
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
                        <?php  $_smarty_tpl->tpl_vars['la'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['la']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aLang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['la']->key => $_smarty_tpl->tpl_vars['la']->value) {
$_smarty_tpl->tpl_vars['la']->_loop = true;
?>
                        if($('#co_content_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
').length==1){
                            addEditorFeature('co_content_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
',240);
                        }
                        <?php } ?>
                        
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
	            'width':'<?php echo ((($tmp = @$_smarty_tpl->tpl_vars['action']->value['col'])===null||$tmp==='' ? 3 : $tmp))*120;?>
px',
	            'type':'notice',
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
    };
    this.refreshList = this.onRefresh = function(){
    	$(me.jqxgrid).jqxGrid('updatebounddata');
    };
    this.onSave = function(){
        <?php  $_smarty_tpl->tpl_vars['la'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['la']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aLang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['la']->key => $_smarty_tpl->tpl_vars['la']->value) {
$_smarty_tpl->tpl_vars['la']->_loop = true;
?>
        if($('#co_content_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
').length==1){
            $('#co_content_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
').val(CKEDITOR.instances['co_content_<?php echo $_smarty_tpl->tpl_vars['la']->value->lang_short;?>
'].getData());
        }
        <?php } ?>
    	if( $('#entryForm').validationEngine('validate') === false){
    		addNotice('Please complete input data.','warning');
    		return false;
    	}
        var Id = $('#EntryId').val();
        var Params = $('#entryForm').serializeJSON();
        
        if($('#sortable').length == 1){
            var images = $('#sortable img.thumb').map(function(){return $(this).attr('src')});
            Params.<?php echo $_smarty_tpl->tpl_vars['frefix']->value;?>
images = images.get().join('\r\n');
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
<?php }} ?>
