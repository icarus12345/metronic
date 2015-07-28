
[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/meta.tpl"}]
<!-- BEGIN BODY -->
<body class="page-header-fixed page-quick-sidebar-over-content page-style-square page-boxed" oncontextmenu="return false">
    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/header.tpl"}]
    <!-- BEGIN CONTAINER -->
    <div class="container">
        <div class="page-container">
            [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/sidebar.tpl"}]
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <div class="page-content">
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/content/customizer.tpl"}]
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/cp/product/pageheader.tpl"}]
                    
                    <div id="entry-container" style="display: none"></div>
                    <div>
                        <link href='/libraries/jqwidgets/styles/jqx.base.css' rel='stylesheet' type='text/css'>
                        <link href='/libraries/jqwidgets/styles/jqx.metro.css' rel='stylesheet' type='text/css'>
                        <script type="text/javascript" src="/libraries/jqwidgets/jqx-all.js"></script>
                        <script type="text/javascript" src="/dashboard/la/lang/loadscript/app/[{$unit}]"></script>
                        <script type="text/javascript">
                            var myApp;
                            $(document).ready(function(){
                                myApp = new APP();
                                myApp.entryType='[{$type}]';
                                [{if $action.add!=false}]
                                    myApp.isAddItem = true;
                                [{/if}]
                                [{if $action.edit!=false}]
                                    myApp.isEditItem = true;
                                [{/if}]
                                [{if $action.delete!=false}]
                                    myApp.isDeleteItem = true;
                                [{/if}]
                                [{if $action.ispopup==true}]
                                    myApp.isEntryDialog = true;
                                [{/if}]
                                    myApp.onInit();
                            })
                        </script>
                        <div class="widget" id="entry-list">
                            <div class="modal-header">
                                <h4>[{$cname}] List</h4>
                                <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
                                    <li>
                                        <a href="JavaScript:myApp.refreshList()" title="Refresh List" onclick=""><i class="fa fa-refresh"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="">
                                <div id="entry-setting" style="display:none"><div id="jqxListBoxSetting" style="height:200px"></div></div>
                                <div style="height:400px;position:relative">
                                    <div id= "jqwidget-entry-list" style="border:0"></div>
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