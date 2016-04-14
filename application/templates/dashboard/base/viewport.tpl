
[{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/meta.tpl"}]
<!-- BEGIN BODY -->
[{foreach $template.css 'css'}]
<link href='[{$css}]' rel='stylesheet' type='text/css'>
[{/foreach}]
[{foreach $template.js 'js'}]
<script type="text/javascript" src="[{$js}]" ></script>
[{/foreach}]

<body class="page-header-fixed page-quick-sidebar-over-content page-style-square page-boxed" oncontextmenu="return false">
[{if $template.contextmenu}]
    [{include file=$smarty.const.APPPATH|cat:$template.contextmenu}]
[{else}]
    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/base/contextmenu.tpl"}]
[{/if}]
    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/header.tpl"}]
    <!-- BEGIN CONTAINER -->
    <div class="container">
        <div class="page-container">
            [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/inc/sidebar.tpl"}]
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <div class="page-content">
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/base/customizer.tpl"}]
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/base/pageheader.tpl"}]
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
                                <h4>[{$template.fulltitle}]</h4>
                                <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
                                    [{if $action.add == 1}]
                                    <li>
                                        <a href="JavaScript:myApp.addItem()" title="Add Item" onclick=""><i class="fa fa-plus"></i>
                                        </a>
                                    </li>
                                    [{/if}]
                                    <li>
                                        <a href="JavaScript:myApp.refreshList()" title="Refresh List" onclick=""><i class="fa fa-refresh"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="JavaScript:myChart.openWeekChart('_product',0,'[{date('Y-m-d')}]','View','Chart of Cake');" title="Chart" onclick=""><i class="fa fa-line-chart"></i></a>
                                    </li><li>
                                        <a href="JavaScript:myApp.setting()" title="Setting" onclick=""><i class="fa fa-cogs"></i></a>
                                    </li>
                                    <li>
                                    <span class="dropdown">
                                      <a
                                        title="Change Language" 
                                        class=" dropdown-toggle" type="button" 
                                        id="dropdownMenuLangSetting" 
                                        data-toggle="dropdown" 
                                        aria-haspopup="true" 
                                        aria-expanded="true">
                                        <i class="fa fa-language"></i>
                                      </a>
                                      <ul class="dropdown-menu pull-right " aria-labelledby="dropdownMenuLangSetting">
                                        [{foreach $aLang 'la'}]
                                        <li><a 
                                                class="text-right" 
                                                href="JavaScript:" 
                                                onclick="myApp.changeLang('[{$la->lang_short}]')">[{$la->lang_name}]</a></li>
                                        [{/foreach}]
                                      </ul>
                                    </span>
                                    </li>
                                </ul>
                            </div>
                            
                            <div class="">
                                <div id="entry-setting" style="display:none"><div id="jqxListBoxSetting" style="height:200px"></div></div>
                                <div id="grid-list-data" style="height:400px;position:relative">
                                    <div id= "jqwidget-entry-list" style="border-left:0;border-right:0;border-bottom:0;"></div>
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