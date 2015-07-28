<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-15 16:43:26
         compiled from "application\templates\dashboard\chart\year.tpl" */ ?>
<?php /*%%SmartyHeaderCode:756755a61f9c0950e2-89889973%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ccd290c9080a72caaa24737e40e20d9a5b16ce64' => 
    array (
      0 => 'application\\templates\\dashboard\\chart\\year.tpl',
      1 => 1436953388,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '756755a61f9c0950e2-89889973',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55a61f9c1269d3_32366683',
  'variables' => 
  array (
    'chartData' => 0,
    'chart_title' => 0,
    'chart_desc' => 0,
    'max' => 0,
    'min' => 0,
    'type' => 0,
    'time_type' => 0,
    'table' => 0,
    'row' => 0,
    'prevDate' => 0,
    'aType' => 0,
    'date' => 0,
    'foo' => 0,
    'nextDate' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55a61f9c1269d3_32366683')) {function content_55a61f9c1269d3_32366683($_smarty_tpl) {?>  
<?php echo '<script'; ?>
 type="text/javascript">
    $(document).ready(function () {
        var sampleData = <?php echo json_encode($_smarty_tpl->tpl_vars['chartData']->value);?>
;
        
        var settings = {
            title: null,//"<?php echo $_smarty_tpl->tpl_vars['chart_title']->value;?>
",
            description: null,//"<?php echo $_smarty_tpl->tpl_vars['chart_desc']->value;?>
",
            showLegend: true,
            padding: { left: 10, top: 10, right: 10, bottom: 10 },
            // titlePadding: { left: 0, top: 0, right: 0, bottom: 10 },
            source: sampleData,
            xAxis:
            {
                dataField: 'Month',
                tickMarks: { visible: true, interval: 1 },
                gridLinesInterval: { visible: true, interval: 1 },
                valuesOnTicks: false,
                // padding: { bottom: 10 },
            },
            valueAxis: {
                // unitInterval: <?php echo ($_smarty_tpl->tpl_vars['max']->value-$_smarty_tpl->tpl_vars['min']->value)/5;?>
,
                minValue: <?php echo $_smarty_tpl->tpl_vars['min']->value;?>
,
                maxValue: <?php echo $_smarty_tpl->tpl_vars['max']->value;?>
,
                title: { text: 'Sessions' },
                labels: { horizontalAlignment: 'right' }
            },
            colorScheme: 'scheme05',
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
    <button class="btn btn-default" onclick="myChart.open<?php echo $_smarty_tpl->tpl_vars['time_type']->value;?>
Chart('<?php echo $_smarty_tpl->tpl_vars['table']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['row']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['prevDate']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
')">
        <span class="fa fa-angle-left"></span>
    </button> 
    <div style="display:inline-block;width:120px">
        <div class="dropdown text-left">
            <button class="btn btn-default dropdown-toggle btn-block" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            <?php echo (($tmp = @$_smarty_tpl->tpl_vars['type']->value)===null||$tmp==='' ? 'Chart type' : $tmp);?>

                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aType']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?> 
                <li><a href="JavaScript:" onclick="myChart.open<?php echo $_smarty_tpl->tpl_vars['time_type']->value;?>
Chart('<?php echo $_smarty_tpl->tpl_vars['table']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['row']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['date']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['foo']->value->chart_type;?>
')" ><?php echo $_smarty_tpl->tpl_vars['foo']->value->chart_type;?>
</a></li>  
                <?php } ?>
            </ul>
        </div>
    </div>
    <div style="display:inline-block;width:80px">
        <div class="dropdown text-left">
            <button class="btn btn-default dropdown-toggle btn-block" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            <?php echo (($tmp = @$_smarty_tpl->tpl_vars['time_type']->value)===null||$tmp==='' ? 'Week' : $tmp);?>

                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="JavaScript:" onclick="myChart.openWeekChart('<?php echo $_smarty_tpl->tpl_vars['table']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['row']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['date']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['foo']->value->chart_type;?>
')" >Week</a></li>
                <li><a href="JavaScript:" onclick="myChart.openMonthChart('<?php echo $_smarty_tpl->tpl_vars['table']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['row']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['date']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['foo']->value->chart_type;?>
')" >Month</a></li>
                <li><a href="JavaScript:" onclick="myChart.openYearChart('<?php echo $_smarty_tpl->tpl_vars['table']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['row']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['date']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['foo']->value->chart_type;?>
')" >Year</a></li>
            </ul>
        </div>
    </div>
    <button class="btn btn-default" onclick="myChart.open<?php echo $_smarty_tpl->tpl_vars['time_type']->value;?>
Chart('<?php echo $_smarty_tpl->tpl_vars['table']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['row']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['nextDate']->value;?>
','<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
')">
        <span class="fa fa-angle-right"></span>
    </button>    
</div><?php }} ?>
