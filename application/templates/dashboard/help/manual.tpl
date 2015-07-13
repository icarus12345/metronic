
[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/meta.tpl"}]
<!-- BEGIN BODY -->
<body class="page-header-fixed page-quick-sidebar-over-content page-style-square page-boxed">
    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/header.tpl"}]
    <!-- BEGIN CONTAINER -->
    <div class="container">
        <div class="page-container">
            [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/sidebar.tpl"}]
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <div class="page-content">
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/content/customizer.tpl"}]
                    <!-- BEGIN PAGE HEADER-->

                    <h3 class="page-title">
                        Dashboard <small>Manual</small>
                    </h3>
                    <div class="page-bar">
                        <ul class="page-breadcrumb">
                            <li>
                                <i class="fa fa-home"></i>
                                <a href="/dashboard">Dashboard</a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                            <li>
                                <a href="/dashboard/cp">Content Provider</a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Manual</a>
                            </li>
                        </ul>
                        <!-- <div class="page-toolbar">
                            <div id="dashboard-report-range" class="pull-right tooltips btn btn-fit-height grey-salt" data-placement="top" data-original-title="Change dashboard date range">
                                <i class="icon-calendar"></i>&nbsp; <span class="thin uppercase visible-lg-inline-block"></span>&nbsp; <i class="fa fa-angle-down"></i>
                            </div>
                        </div> -->
                    </div>
                    <!-- END PAGE HEADER-->
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/content/helper.tpl"}]
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END CONTAINER -->
        [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/footer.tpl"}]

</body>

<!-- END BODY -->
</html>