
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
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/so/setting/pageheader.tpl"}]
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
                    <script type="text/javascript" src="/dashboard/so/data/loadscript/app/[{$unit}]"></script>
                    <div class="forms-entry-list">
                        [{foreach $cates 'cate'}]
                        [{if count($cate->data)>0}]
                        <div class="portlet light bg-inverse">
                            <div class="portlet-title">
                                <div class="caption font-purple-plum">
                                    <i class="icon-speech font-purple-plum"></i>
                                    <span class="caption-subject bold uppercase"> [{$cate->cat_title}]</span>
                                    <span class="caption-helper">right click inside the box</span>
                                </div>
                                <div class="actions">
                                    <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title="">
                                    </a>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="row">
                                [{foreach $cate->data 'item'}]
                                    [{if $item->data_datatype=='image'}]
                                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/so/setting/editPanelImage.tpl"}]
                                    [{/if}]
                                    [{if $item->data_datatype=='string'}]
                                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/so/setting/editPanelString.tpl"}]
                                    [{/if}]
                                    [{if $item->data_datatype=='text'}]
                                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/so/setting/editPanelText.tpl"}]
                                    [{/if}]
                                [{/foreach}]
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="space-line"></div>
                        <div class="space-line"></div>
                        [{/if}]
                        [{/foreach}]
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