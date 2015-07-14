<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-14 14:32:52
         compiled from "application\templates\dashboard\chart\weekly.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2467355a47b63421e73-92096892%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '40a0795fcfb5750c56eea4838a310d7aced0d8c9' => 
    array (
      0 => 'application\\templates\\dashboard\\chart\\weekly.tpl',
      1 => 1436859158,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2467355a47b63421e73-92096892',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55a47b63536e57_88405896',
  'variables' => 
  array (
    'chartData' => 0,
    'chart_title' => 0,
    'chart_desc' => 0,
    'max' => 0,
    'type' => 0,
    'table' => 0,
    'row' => 0,
    'prevDate' => 0,
    'nextDate' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55a47b63536e57_88405896')) {function content_55a47b63536e57_88405896($_smarty_tpl) {?><?php echo '<script'; ?>
 type="text/javascript">
    $(document).ready(function () {
        // prepare chart data as an array
        var sampleData = <?php echo json_encode($_smarty_tpl->tpl_vars['chartData']->value);?>
;
        // prepare jqxChart settings
        var settings = {
            title: "<?php echo $_smarty_tpl->tpl_vars['chart_title']->value;?>
",
            description: "<?php echo $_smarty_tpl->tpl_vars['chart_desc']->value;?>
",
            enableAnimations: true,
            showLegend: true,
            padding: { left: 10, top: 10, right: 15, bottom: 10 },
            titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
            source: sampleData,
            colorScheme: 'scheme05',
            xAxis: {
                dataField: 'Day',
                unitInterval: 1,
                tickMarks: { visible: true, interval: 1 },
                gridLinesInterval: { visible: true, interval: 1 },
                valuesOnTicks: false,
                padding: { bottom: 10 }
            },
            valueAxis: {
                unitInterval: <?php echo $_smarty_tpl->tpl_vars['max']->value/5;?>
,
                minValue: 0,
                maxValue: <?php echo $_smarty_tpl->tpl_vars['max']->value;?>
,
                title: { text: 'Count<br><br>' },
                labels: { horizontalAlignment: 'right' }
            },
            seriesGroups:
                [
                    {
                        type: 'line',
                        series:
                        [
                            {
                                dataField: '<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
',
                                symbolType: 'circle'
                            }
                        ]
                    }
                ]
        };
        // setup the chart
        $('#chartContainer').jqxChart(settings);
    });
<?php echo '</script'; ?>
>
<div id="chartContainer" style="width: 100%; height: 320px"></div>
<div class="text-center">
    <button class="btn btn-default btn-circle" onclick="myChart.openWeekChart('<?php echo $_smarty_tpl->tpl_vars['table']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['row']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['prevDate']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
')">Prev</button>    
    <button class="btn btn-default btn-circle" onclick="myChart.openWeekChart('<?php echo $_smarty_tpl->tpl_vars['table']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['row']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['nextDate']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
')">Next</button>    
</div><?php }} ?>
