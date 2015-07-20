[{if false}]<script type="text/javascript">[{/if}]
var myChart = {
	'date': '[{date('Y-m-d')}]',
	'openWeekChart': function(table,row,date,type,title){
		if ($("#weekly-chart-dialog").length === 0) {
	        $('body').append('<div id="weekly-chart-dialog"><div class="bg-pending" style="width: 100%; height: 360px"></div></div>');
		    uidialog({
		        'message' : $('#weekly-chart-dialog'),
		        'title': title==undefined?'Weekly - Chart':title,
		        'width':'640px',
		        'dialogClass':'metronic-modal',
		        'buttons' : [],
		        'onopen' : function(){
		        }
		    }).open();
	    }else{
	    	$('#weekly-chart-dialog').dialog('open');
	    }
    	$('#weekly-chart-dialog').html('<div class="bg-pending" style="width: 100%; height: 360px"></div>');
	    if(title!=undefined) $('#weekly-chart-dialog').dialog('option', 'title', title);
    	$('#weekly-chart-dialog').load('/dashboard/cp/chart/week/' + table + '/' + row + '/' + date + '/' + type,function(){
    		$('#weekly-chart-dialog').dialog('open');
    	});
	},
	'openMonthChart': function(table,row,date,type,title){
		if ($("#weekly-chart-dialog").length === 0) {
	        $('body').append('<div id="weekly-chart-dialog"><div class="bg-pending" style="width: 100%; height: 360px"></div></div>');
		    uidialog({
		        'message' : $('#weekly-chart-dialog'),
		        'title': title==undefined?'Weekly - Chart':title,
		        'width':'640px',
		        'dialogClass':'metronic-modal',
		        'buttons' : [],
		        'onopen' : function(){
		        }
		    }).open();
	    }else{
	    	$('#weekly-chart-dialog').dialog('open');
	    }
	    $('#weekly-chart-dialog').html('<div class="bg-pending" style="width: 100%; height: 360px"></div>');
	    if(title!=undefined)$('#weekly-chart-dialog').dialog('option', 'title', title);
    	$('#weekly-chart-dialog').load('/dashboard/cp/chart/month/' + table + '/' + row + '/' + date + '/' + type,function(){
    		$('#weekly-chart-dialog').dialog('open');
    	});
	},
	'openYearChart': function(table,row,date,type,title){
		if ($("#weekly-chart-dialog").length === 0) {
	        $('body').append('<div id="weekly-chart-dialog"><div class="bg-pending" style="width: 100%; height: 360px"></div></div>');
		    uidialog({
		        'message' : $('#weekly-chart-dialog'),
		        'title': title==undefined?'Weekly - Chart':title,
		        'width':'640px',
		        'dialogClass':'metronic-modal',
		        'buttons' : [],
		        'onopen' : function(){
		        }
		    }).open();
	    }else{
	    	$('#weekly-chart-dialog').dialog('open');
	    }
	    $('#weekly-chart-dialog').html('<div class="bg-pending" style="width: 100%; height: 360px"></div>');
	    if(title!=undefined)$('#weekly-chart-dialog').dialog('option', 'title', title);
    	$('#weekly-chart-dialog').load('/dashboard/cp/chart/year/' + table + '/' + row + '/' + date + '/' + type,function(){
    		$('#weekly-chart-dialog').dialog('open');
    	});
	}
}