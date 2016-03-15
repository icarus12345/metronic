[{if false}]<script type="text/javascript">[{/if}]
var jAPP = (function() {
	var type='';
	$('body').append('<div id="entry-jdata"></div>');
	return {
		type: type,
		showDialog : function(title){
	    	uidialog({
	            'message' : $('#entry-jdata'),
	            'title': title,
	            'dialogClass':'metronic-modal',
	            'width':'[{($action.col|default:3)*120}]px',
	            'type':'notice',
	            'buttons' : [{
	                'text': 'Save',
	                'class': 'ui-btn',
	                'click': function() {
	                    
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
		loadFormUrl: function(url){
			httpRequest({
                'url'         :   url,
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
                        [{foreach $aLang 'la'}]
                        if($('#co_content_[{$la->lang_short}]').length==1){
                            addEditorFeature('co_content_[{$la->lang_short}]',240);
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
		}
	};
}());