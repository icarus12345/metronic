
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
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/kcfinder/pageheader.tpl"}]
                    <!-- BEGIN PAGE CONTENT-->
                    <!-- <div class="row">
                            <div class="col-md-12">
                                    <div class="note note-danger">
                                            <p>
                                                     NOTE: The below datatable is not connected to a real database so the filter and sorting is just simulated for demo purposes only.
                                            </p>
                                    </div>
                                    
                            </div>
                    </div> -->
                    <!-- END PAGE CONTENT-->
                    <div id="entry-container" style="display: none"></div>
                    <div>
                        <div class="widget" id="entry-list">
                            <div class="modal-header">
                                <h4>KCFinder - Image Manager</h4>
                            </div>
                            <div class="">
                                <div id="entry-setting" style="display:none"><div id="jqxListBoxSetting" style="height:200px"></div></div>
                                <div style="height:400px;position:relative">
                                    <div id= "jqwidget-entry-list" style="border:0"></div>
                                    <iframe id="kcfinderiframe" name="kcfinderiframe" 
                                    src="/libraries/kcfinder/browse.php?lang=en&type=[{$type|default:'image'}]" 
                                    style="border: 0;width: 100%;position:absolute;height:100%;top:0;left:0"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END CONTAINER -->
        [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/footer.tpl"}]

</body>
<!-- END BODY -->
</html>