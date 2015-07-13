<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-04 21:26:29
         compiled from "application\templates\dashboard\so\account\viewport.tpl" */ ?>
<?php /*%%SmartyHeaderCode:320345597ed159fce76-81725487%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a301d44195d0d7a7f0ff1c9ed6fb4258e3824834' => 
    array (
      0 => 'application\\templates\\dashboard\\so\\account\\viewport.tpl',
      1 => 1436019526,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '320345597ed159fce76-81725487',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'unit' => 0,
    'type' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5597ed15a8ceb5_73503019',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5597ed15a8ceb5_73503019')) {function content_5597ed15a8ceb5_73503019($_smarty_tpl) {?>
<?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/meta.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<!-- BEGIN BODY -->
<body class="page-header-fixed page-quick-sidebar-over-content page-style-square page-boxed">
    <?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/header.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    <!-- BEGIN CONTAINER -->
    <div class="container">
        <div class="page-container">
            <?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/sidebar.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <div class="page-content">
                    <?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/content/customizer.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

                    <?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/so/account/pageheader.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

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

                    <div style="display:none" id="entry-container"></div>
                    <div>
                        <link href='/libraries/jqwidgets/styles/jqx.base.css' rel='stylesheet' type='text/css'>
                        <link href='/libraries/jqwidgets/styles/jqx.metro.css' rel='stylesheet' type='text/css'>
                        <?php echo '<script'; ?>
 type="text/javascript" src="/libraries/jqwidgets/jqx-all.js"><?php echo '</script'; ?>
>
                        <?php echo '<script'; ?>
 type="text/javascript" src="/dashboard/so/account/loadscript/app/<?php echo $_smarty_tpl->tpl_vars['unit']->value;?>
"><?php echo '</script'; ?>
>
                        <?php echo '<script'; ?>
 type="text/javascript">
                            var myApp;
                            $(document).ready(function(){
                                myApp = new APP();
                                myApp.entryType='<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
';
                                <?php if ($_smarty_tpl->tpl_vars['action']->value['add']!=false) {?>
                                    myApp.isAddItem = true;
                                <?php }?>
                                <?php if ($_smarty_tpl->tpl_vars['action']->value['edit']!=false) {?>
                                    myApp.isEditItem = true;
                                <?php }?>
                                <?php if ($_smarty_tpl->tpl_vars['action']->value['delete']!=false) {?>
                                    myApp.isDeleteItem = true;
                                <?php }?>
                                <?php if ($_smarty_tpl->tpl_vars['action']->value['ispopup']==true) {?>
                                    myApp.isEntryDialog = true;
                                <?php }?>
                                myApp.onInit();
                            })
                        <?php echo '</script'; ?>
>
                        <div style="display:none">
                            <div id='contextMenu' class="jqx-contextMenu">
                                <ul>
                                    <li data-action="add" id="jqxAddAction"><i class="fa fa-plus"></i> Add new Record</li>
                                    <li data-action="edit" id="jqxEditAction"><i class="fa fa-pencil-square"></i> Edit Selected Row</li>
                                    <li data-action="status" id="jqxStatusAction">
                                        <i class="fa fa-toggle-off"></i> Status
                                        <ul>
                                            <li data-action="statuson" id="jqxStatusActionOn"><i class="fa fa-check-square-o"></i> Enable</li>
                                            <li data-action="statusoff" id="jqxStatusActionOff"><i class="fa fa-square-o"></i> Disable</li>
                                        </ul>
                                    </li>
                                    <li data-action="delete" id="jqxDeleteAction"><i class="fa fa-trash-o"></i> Delete Selected Row</li>
                                    <li data-action="view" id="jqxViewAction"><i class="fa fa-eye"></i> View Selected Row</li>
                                </ul>
                            </div>
                        </div>



                        <div class="widget" id="entry-list">
                            <div class="modal-header">
                                <h4>User List</h4>
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
        <?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/footer.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


</body>

<!-- END BODY -->
</html><?php }} ?>
