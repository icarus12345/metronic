<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-04 20:12:21
         compiled from "application\templates\dashboard\kcfinder\viewport.tpl" */ ?>
<?php /*%%SmartyHeaderCode:288495597db6e5db490-68004794%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9df90e0d2de0d599fe86b46f10897c54d33a7028' => 
    array (
      0 => 'application\\templates\\dashboard\\kcfinder\\viewport.tpl',
      1 => 1436015505,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '288495597db6e5db490-68004794',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5597db6e694824_03280247',
  'variables' => 
  array (
    'type' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5597db6e694824_03280247')) {function content_5597db6e694824_03280247($_smarty_tpl) {?>
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

                    <?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/kcfinder/pageheader.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

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
                                    src="/libraries/kcfinder/browse.php?lang=en&type=<?php echo (($tmp = @$_smarty_tpl->tpl_vars['type']->value)===null||$tmp==='' ? 'image' : $tmp);?>
" 
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
        <?php echo $_smarty_tpl->getSubTemplate ((@constant('APPPATH')).("templates/dashboard/inc/footer.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


</body>
<!-- END BODY -->
</html><?php }} ?>
