@extends('admin.layouts.main')

@section('content')
<section class="content-header">
    <h1>
        Dashboard
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>{{ $new_orders }}</h3>

                    <p>Đơn đặt hàng trong ngày</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
                <div class="inner">
                    {{-- <h3>53<sup style="font-size: 20px">%</sup></h3> --}}
                    <h3>{{ $new_contacts }}</h3>

                    <p>Liên hệ trong ngày</p>
                </div>
                <div class="icon">
                    <i class="fa fa-phone"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
                <div class="inner">
                    <h3>{{ $products }}</h3>

                    <p>Tổng số sản phẩm</p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="{{ route('admin.product.index') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>{{ $articles }}</h3>
                    <p>Tổng bài viết</p>
                </div>
                <div class="icon">
                    <i class="fa fa-picture-o"></i>
                </div>
                <a href="{{ route('admin.article.index') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div id="chart_div1" style="height: 500px;"></div>
        </div>
        <div class="col-lg-6">
            <div id="piechart" style="height: 500px;"></div>
        </div>
    </div>
    <div class="row" style="padding-top: 30px">
        <div class="col-lg-12">
            <div id="chart_div2" style=" height: 500px;"></div>
        </div>
    </div>
</section>
@endsection

@section('my_script')
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawVisualization);

    function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
        // ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
        // ['2004/05',  165,      938,         522,             998,           450,      614.6],
        // ['2005/06',  135,      1120,        599,             1268,          288,      682],
        // ['2006/07',  157,      1167,        587,             807,           397,      623],
        // ['2007/08',  139,      1110,        615,             968,           215,      609.4],
        // ['2008/09',  136,      691,         629,             1026,          366,      569.6]
        {!! $chart_1_1 !!}
        {!! $chart_1_2 !!}
        ]);

        var options = {
        title : 'Số lượng sản phẩm bán trong ngày dựa theo danh mục',
        vAxis: {title: 'Cups'},
        hAxis: {title: 'Today'},
        seriesType: 'bars',
        // series: {5: {type: 'line'}}
        };

        var chart = new google.visualization.ComboChart(document.getElementById('chart_div1'));
        chart.draw(data, options);
    }
    

    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart1);

    function drawChart1() {

        var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            // ['Work',     11],
            // ['Eat',      2],
            // ['Commute',  2],
            // ['Watch TV', 2],
            // ['Sleep',    7]
            {!! $chart_2_1 !!}
        ]);

        var options = {
            title: 'Số lượng sản phẩm dựa theo danh mục'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
    }

    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart2);

    function drawChart2() {
        var data = google.visualization.arrayToDataTable([
            ['Year', 'Sales', 'Expenses'],
            ['2013',  1000,      400],
            ['2014',  1170,      460],
            ['2015',  660,       1120],
            ['2016',  1030,      540]
        ]);

        var options = {
            title: 'Company Performance',
            hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
            vAxis: {minValue: 0}
        };

        var chart = new google.visualization.AreaChart(document.getElementById('chart_div2'));
        chart.draw(data, options);
    }
    </script>
</script>
@endsection
