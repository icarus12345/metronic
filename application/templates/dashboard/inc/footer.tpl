<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Metronic by keenthemes. <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->

<script>
jQuery(document).ready(function() {    
	Metronic.init(); // init metronic core componets
	Layout.init(); // init layout
	// QuickSidebar.init(); // init quick sidebar
	Demo.init(); // init demo features 
	Index.init();   
	// Index.initDashboardDaterange();
	//Index.initJQVMAP(); // init index page's custom scripts
	Index.initCalendar(); // init index page's custom scripts
	//Index.initCharts(); // init index page's custom scripts
	Index.initChat();
	//Index.initMiniCharts();
	// Tasks.initDashboardWidget();
	//EcommerceProducts.init();
	ComponentsContextMenu.init();
	UIToastr.init();

	var _menu = $('.page-sidebar-menu a[href^="/[{''|uri_string}]"]');
	if(_menu.length==1){
		var _menus = _menu.parents('li');
		_menus.find('>a').click();
		$(_menus[_menus.length-1]).addClass('active start');
		$(_menus[_menus.length-1]).find('>a>.title').after('<span class="selected"></span>');
		$('.page-sidebar-menu a[href^="/[{''|uri_string}]"]').parent().addClass('open')
	}else{
		$('.page-sidebar-menu>li:nth-child(4)>a').click()
		$('.page-sidebar-menu>li:nth-child(4)').addClass('active start');
		$('.page-sidebar-menu>li:nth-child(4)>a>.title').after('<span class="selected"></span>');
	}
});
</script>
<!-- END JAVASCRIPTS -->