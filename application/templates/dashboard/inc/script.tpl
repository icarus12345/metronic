<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="/libraries/metronic/theme/assets/global/plugins/respond.min.js"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="/libraries/metronic/theme/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="/libraries/metronic/theme/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="/libraries/metronic/theme/assets/global/plugins/bootstrap-contextmenu/bootstrap-contextmenu.js"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui.min.js for drag & drop support -->
<script src="/libraries/metronic/theme/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>


<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/libraries/metronic/theme/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/admin/pages/scripts/components-context-menu.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/admin/pages/scripts/index.js" type="text/javascript"></script>
<script src="/libraries/metronic/theme/assets/admin/pages/scripts/tasks.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
	jQuery(document).ready(function() {
		// initiate layout and plugins
		Metronic.init(); // init metronic core components
		Layout.init(); // init current layout
		QuickSidebar.init(); // init quick sidebar
		Demo.init(); // init demo features  // set current page
		ComponentsContextMenu.init(); // init context menu demo
		Index.init();   
		Index.initDashboardDaterange();
		// Index.initJQVMAP(); // init index page's custom scripts
		Index.initCalendar(); // init index page's custom scripts
		//Index.initCharts(); // init index page's custom scripts
		Index.initChat();
		Index.initMiniCharts();
		Tasks.initDashboardWidget();


	});
</script>