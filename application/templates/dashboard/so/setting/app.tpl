[{if false}]<script type="text/javascript">[{/if}]
var myApp = {
	onCommit : function(Url,Params, Id,callback) {
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
	validForm:function(Id){
		$('#entryForm'+Id).validationEngine({
		    'scroll': false,
		    'prettySelect' : true,
		    'isPopup' : false,
		    validateNonVisibleFields:true
		});
	},
	saveForm:function(Id){
		var frm = $('#entryForm'+Id);
		if( frm.validationEngine('validate') === false){
    		addNotice('Please complete input data.','warning');
    		return false;
    	}
    	var Params = frm.serializeObject();
    	this.onCommit('/dashboard/so/data/oncommit/',Params,Id,function(rsdata){
            if(rsdata.result>0){
                
            }
        });
	}
};

$(document).ready(function(){
	$('.forms-entry-list form').each(function(){
		myApp.validForm($(this).data('id'));
	})
})