[{*
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Metronic | Admin Dashboard Template</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1.0" name="viewport"/>
        <link href='/libraries/jqwidgets/styles/jqx.base.css' rel='stylesheet' type='text/css'>
        <link href="/libraries/metronic/theme/assets/global/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="/libraries/metronic/theme/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

        <!-- <link href='/libraries/jqwidgets/styles/jqx.metro.css' rel='stylesheet' type='text/css'> -->
        <script src="/libraries/metronic/theme/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="/libraries/jqwidgets/jqx-all.js"></script>
        <script src="/libraries/metronic/theme/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
*}]        
        <div id="chartContainer" style="width: 100%; height: 320px"></div>
        <script type="text/javascript">
            $(document).ready(function () {
                // prepare chart data as an array
                var sampleData = [{$chartData|json_encode}];
                var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                // prepare jqxChart settings
                var settings = {
                    title: "[{$chart_title}]",
                    description: "[{$chart_desc}]",
                    enableAnimations: true,
                    showLegend: true,
                    padding: { left: 10, top: 10, right: 10, bottom: 10 },
                    // titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
                    source: sampleData,
                    colorScheme: 'scheme05',
                    xAxis: {
                        dataField: 'Date',
                        type: 'date',
                        baseUnit: 'day',
                        tickMarks: { visible: true, interval: 1 },
                        gridLinesInterval: { visible: true, interval: 1 },
                        valuesOnTicks: false,
                        // padding: { bottom: 10 },
                        labels:
                        {
                            formatFunction: function (value) {
                                return value.getDate();
                            }
                        },
                        toolTipFormatFunction: function (value) {
                            console.log(value)
                            return value.getDate() + '-' + months[value.getMonth()] + '-' + value.getFullYear();
                        }
                    },
                    valueAxis: {
                        unitInterval: [{ceil(($max-$min)/5)}],
                        minValue: [{$min}],
                        maxValue: [{$max}],
                        title: { text: 'Sessions' },
                        labels: { horizontalAlignment: 'right' }
                    },
                    seriesGroups:
                        [
                            {
                                type: 'stackedline',
                                series:
                                [
                                    {
                                        dataField: '[{$type}]',
                                        symbolType: 'circle'
                                    }
                                ]
                            }
                        ]
                };
                // setup the chart
                $('#chartContainer').jqxChart(settings);
            });
        </script>
        <div class="text-center">
            <button class="btn btn-default" onclick="myChart.open[{$time_type}]Chart('[{$table}]','[{$row}]','[{$prevDate}]','[{$type}]')">
                <span class="fa fa-angle-left"></span>
            </button> 
            <div style="display:inline-block;width:120px">
                <div class="dropdown text-left">
                    <button class="btn btn-default dropdown-toggle btn-block" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    [{$type|default:'Chart type'}]
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        [{foreach $aType 'foo'}] 
                        <li><a href="JavaScript:" onclick="myChart.open[{$time_type}]Chart('[{$table}]','[{$row}]','[{$date}]','[{$foo->chart_type}]')" >[{$foo->chart_type}]</a></li>  
                        [{/foreach}]
                    </ul>
                </div>
            </div>
            <div style="display:inline-block;width:80px">
                <div class="dropdown text-left">
                    <button class="btn btn-default dropdown-toggle btn-block" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    [{$time_type|default:'Week'}]
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="JavaScript:" onclick="myChart.openWeekChart('[{$table}]','[{$row}]','[{$date}]','[{$type}]')" >Week</a></li>
                        <li><a href="JavaScript:" onclick="myChart.openMonthChart('[{$table}]','[{$row}]','[{$date}]','[{$type}]')" >Month</a></li>
                        <li><a href="JavaScript:" onclick="myChart.openYearChart('[{$table}]','[{$row}]','[{$date}]','[{$type}]')" >Year</a></li>
                    </ul>
                </div>
            </div>
            <button class="btn btn-default" onclick="myChart.open[{$time_type}]Chart('[{$table}]','[{$row}]','[{$nextDate}]','[{$type}]')">
                <span class="fa fa-angle-right"></span>
            </button>    
        </div>