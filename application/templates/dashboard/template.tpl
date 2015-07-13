[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/meta.tpl"}]
<body class="page-quick-sidebar-over-content page-boxed">
	[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/script.tpl"}]
	[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/header.tpl"}]
	<!-- BEGIN CONTAINER -->
	<div class="container">
		<div class="page-container">
			[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/sidebar.tpl"}]
			[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/content.tpl"}]
			[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/quicksidebar.tpl"}]
		</div>
	</div>
	<!-- END CONTAINER -->
	[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/footer.tpl"}]
</body>