
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
                    [{include file=$smarty.const.APPPATH|cat:"templates/dashboard/cp/contactus/pageheader.tpl"}]
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
                        <script type="text/javascript" src="/libraries/ckeditor/ckeditor.js" ></script>
                        <link href='/libraries/jqwidgets/styles/jqx.base.css' rel='stylesheet' type='text/css'>
                        <link href='/libraries/jqwidgets/styles/jqx.metro.css' rel='stylesheet' type='text/css'>
                        <script type="text/javascript" src="/libraries/jqwidgets/jqx-all.js"></script>
                        <script type="text/javascript" src="/dashboard/cp/contactus/loadscript/app/[{$unit}]"></script>
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
                        <div style="display:none">
                            <div id='contextMenu' class="jqx-contextMenu">
                                <ul>
                                    <li data-action="add" id="jqxAddAction"><i class="fa fa-plus"></i> Add new Record</li>
                                    <li data-action="edit" id="jqxEditAction"><i class="fa fa-pencil-square"></i> Edit Entry</li>
                                    <li data-action="status" id="jqxStatusAction">
                                        <i class="fa fa-toggle-off"></i> Status
                                        <ul>
                                            <li data-action="statuson" id="jqxStatusActionOn"><i class="fa fa-check-square-o"></i> Enable</li>
                                            <li data-action="statusoff" id="jqxStatusActionOff"><i class="fa fa-square-o"></i> Disable</li>
                                        </ul>
                                    </li>
                                    [{if $smarty.session.auth.user->ause_authority=='Administrator'}]
                                    <li data-action="lock" id="jqxLockAction">
                                        <i class="fa fa-lock"></i> Lock Entry
                                        <ul>
                                            <li data-action="lockon" id="jqxLockActionOn"><i class="fa fa-lock"></i> Lock</li>
                                            <li data-action="lockoff" id="jqxLockActionOff"><i class="fa fa-unlock-alt"></i> Unlock</li>
                                        </ul>
                                    </li>
                                    [{/if}]
                                    <li data-action="delete" id="jqxDeleteAction"><i class="fa fa-trash-o"></i> Delete Entry</li>
                                    <li data-action="view" id="jqxViewAction"><i class="fa fa-eye"></i> View Entry</li>
                                </ul>
                            </div>
                        </div>



                        <div class="widget" id="entry-list">
                            <div class="modal-header">
                                <h4>Contact us</h4>
                                <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
                                    <li>
                                        <a href="JavaScript:myApp.addItem()" title="Add Item" onclick=""><i class="fa fa-plus"></i></a>
                                    </li>
                                    <li>
                                        <a href="JavaScript:myApp.refreshList()" title="Refresh List" onclick=""><i class="fa fa-refresh"></i></a>
                                    </li>
                                    <li>
                                        <a href="JavaScript:myApp.setting()" title="Setting" onclick=""><i class="fa fa-cogs"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="">
                                <div id="entry-setting" style="display:none"><div id="jqxListBoxSetting" style="height:200px"></div></div>
                                <div style="height:400px;position:relative">
                                    <div id= "jqwidget-entry-list" style="border:0"></div>
                                </div>
                                <!-- <div id="context" data-toggle="context" data-target="#context-menu2">
                                                <p>
                                                         Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.
                                                </p>
                                </div>
                                <div id="context-menu2">
                                        <ul class="dropdown-menu" role="menu">
                                                <li>
                                                        <a href="javascript:;">
                                                        <i class="icon-user"></i> New User </a>
                                                </li>
                                                <li>
                                                        <a href="javascript:;">
                                                        <i class="icon-present"></i> New Event <span class="badge badge-success">4</span>
                                                        </a>
                                                </li>
                                                <li>
                                                        <a href="javascript:;">
                                                        <i class="icon-basket"></i> New order </a>
                                                </li>
                                                <li class="divider">
                                                </li>
                                                <li>
                                                        <a href="javascript:;">
                                                        <i class="icon-flag"></i> Pending Orders <span class="badge badge-danger">4</span>
                                                        </a>
                                                </li>
                                                <li>
                                                        <a href="javascript:;">
                                                        <i class="icon-users"></i> Pending Users <span class="badge badge-warning">12</span>
                                                        </a>
                                                </li>
                                        </ul>
                                </div> -->

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