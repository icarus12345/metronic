[{if false}]<script type="text/javascript">[{/if}]
var myChart = {
	'date': '[{date('Y-m-d')}]',
	'openWeekChart': function(table,row,date,type){
		if ($("#weekly-chart-dialog").length === 0) {
	        $('body').append('<div id="weekly-chart-dialog"></div>');
	    }
	    $('#weekly-chart-dialog').html('<div style="width: 100%; height: 340px"></div>');
	    uidialog({
	        'message' : $('#weekly-chart-dialog'),
	        'title': 'Weekly Chart',
	        'width':'640px',
	        'dialogClass':'metronic-modal',
	        'buttons' : [],
	        'onopen' : function(){
	        }
	    }).open();
    	$('#weekly-chart-dialog').load('/dashboard/cp/chart/week/' + table + '/' + row + '/' + date + '/' + type);
	}
}