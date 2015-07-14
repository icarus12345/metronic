<script type="text/javascript">
    $(document).ready(function () {
        // prepare chart data as an array
        var sampleData = [{$chartData|json_encode}];
        // prepare jqxChart settings
        var settings = {
            title: "[{$chart_title}]",
            description: "[{$chart_desc}]",
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
                unitInterval: [{$max/5}],
                minValue: 0,
                maxValue: [{$max}],
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
<div id="chartContainer" style="width: 100%; height: 320px"></div>
<div class="text-center">
    <button class="btn btn-default btn-circle" onclick="myChart.openWeekChart('[{$table}]','[{$row}]','[{$prevDate}]','[{$type}]')">Prev</button>    
    <button class="btn btn-default btn-circle" onclick="myChart.openWeekChart('[{$table}]','[{$row}]','[{$nextDate}]','[{$type}]')">Next</button>    
</div>