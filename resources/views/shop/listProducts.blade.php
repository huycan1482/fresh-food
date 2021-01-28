@extends('shop.layouts.main')

@section('css')
<link rel="stylesheet" href="frontend/css/sanpham.css">
@endsection

@section('content')
<div>
    <div class="fake-menu">

    </div>
    <div class="shop-page-title col-lg-12">
        <div class="page-title col-lg-10">
            <div class="left-page-title col-lg-5 col-md-12">
                <a href="">Trang chủ / </a><span>Sản phẩm / </span><span>{{$category->name}}</span>
            </div>
            <div class="right-page-title col-lg-7 col-md-12">
                <p class="">Hiển thị {{$products->total()}} trong {{count($products)}} kết quả</p>
                <form class="" action="">
                    <select name="" class="sort-product">
                        <option value="">Thứ tự mặc định</option>
                        <option value="gia-tang-dan">Tăng dần</option>
                        <option value="gia-giam-dan">Giảm dần</option>
                    </select>
                </form>
            </div>
        </div>
    </div>

    <div class="sort-btn">
        <span>Bộ lọc</span><i class="fas fa-list-ul" id="sort-btn"></i>
    </div>

    <div class="section col-lg-12 main-shop">
        <div class="container col-lg-11">
            <div class="col-lg-3 col-md-12 shop-side-bar">
                <div class="side-bar-category">
                    <h3 class="header-side-bar">Danh mục sản phẩm <i class="fas fa-list" id="close-category"></i>
                    </h3>
                    <!-- <i class="fas fa-times" id="close-category"></i> -->
                    <ul class="main-category-side-bar">

                        @foreach ($menu as $item)
                        <li class=""> <a href="{{ route('shop.listProducts', ['slug' => $item->slug]) }}"> {{$item->name}} </a></li>
                        @endforeach

                    </ul>
                </div>
                <div class="side-bar-price">
                    <h3 class="header-side-bar">Lọc theo giá<i class="fas fa-list" id="close-price"></i></h3>
                    <form action="" class="price-range">
                        <input type="range" min="0" max="100000" value="0" class="slider" id="myRange">
                        <div>
                            <button>Lọc</button>
                            <p>Giá: Từ 0 Đ đến <span id="demo"></span> Đ</p>
                        </div>
                    </form>
                </div>
                <div class="other-products">
                    <h3 class="header-side-bar">Sản phẩm hot<i class="fas fa-list" id="close-product"></i>
                    </h3>
                    <div class="other-list-items">
                        @foreach ($hot_products as $hot_product)
                        <div class="other-pro-items">
                            <a href="{{ route('shop.productDetail', ['slug' => $hot_product->slug]) }}" class="col-lg-3 other-pro-img">
                                <img src="{{$hot_product->image}}" alt="">
                            </a>
                            <div class="col-lg-9 other-pro-content">
                                <a href="{{ route('shop.productDetail', ['slug' => $hot_product->slug]) }}">{{$hot_product->name}} ({{$hot_product->unit}})</a>
                                <p>{{ number_format( ( $hot_product->price - ($hot_product->sale * $hot_product->price)/100 ),0,",",".") }}đ</p>
                            </div>
                        </div>   
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-12 main-content">
                @foreach ($products as $product)
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="product move-up">
                        <div class="top-product ">
                            <a href="{{ route('shop.productDetail', ['slug' => $product->slug]) }}" class="product-img zoom">
                                <!-- <img src="../images/bg_2.jpg" alt=""> -->
                                <img src="{{$product->image}}" alt="">
                            </a>
                       
                            @if ($product->sale > 0)
                            <div class="on-sale">
                                <span>-{{$product->sale}}%</span>
                            </div>
                            @endif
                     
                        </div>
                        <div class="main-product">
                            <p class="product-name">
                                <a href="{{ route('shop.productDetail', ['slug' => $product->slug]) }}">{{$product->name}} ({{$product->unit}})</a>
                            </p>
                            <div class="price">
                                @if ($product->sale > 0)
                                <span class="old-price">{{ number_format($product->price ,0,",",".") }}</span>
                                @endif
                                <span class="new-price">{{ number_format( ( $product->price - ($product->sale * $product->price)/100 ),0,",",".") }}Đ</span>
                            </div>
                            <div class="add-to-card-btn">
                                <a class="icon-detail" href="{{ route('shop.productDetail', ['slug' => $product->slug]) }}""><i class="fas fa-eye"></i></a>
                                <a class="icon-card" href=""><i class="fas fa-shopping-basket"></i></a>
                            </div>
                        </div>
                    </div>
                </div>   
                @endforeach
            </div>

        </div>
    </div>

    <div class="pagination">
        {{$products->links()}}
    </div>

</div>
@endsection

@section('script')
<script language="javascript" src="frontend/js/sidebar.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>

    var pathname = window.location.pathname;
    var urlParams = new URLSearchParams(window.location.search);

    function formatNumber(num) {
        return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.')
    }

    // $.ajaxSetup({
    //     headers: {
    //         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    //     }
    // });

    // const myRange = document.getElementById('myRange');

    $('#myRange').change(function (e) { 
        e.preventDefault();

        console.log($(this).val());
        
    });

    $('.sort-product').change(function (e) {
        e.preventDefault();

        var sort_price = $(this).val();

        console.log(urlParams, pathname);

        $.ajax({
            url: base_url + pathname + '/sap-xep',
            type: "GET",
            data: {
                sort_price : sort_price,
            },
            dataType: "json",
            success: function (response) {

                var products = response.products;
                var products_val = response.products.data;

                var html = ''; 
                // console.log(products);
                // console.log(products_val)
                products_val.forEach(element => {
                    var html_sale1 = '', html_sale2 = '';
                    // console.log(formatNumber(element.truePrice));
                    if (element.sale > 0) {
                        html_sale1 += "<div class='on-sale'><span>-" + element.sale + "%</span></div>";
                        html_sale2 += "<span class='old-price'>"+ formatNumber(element.price) +"Đ</span>"; 
                    }
                        
                    html_sale2 += "<span class='new-price'>" + formatNumber(element.truePrice) + "Đ</span>";

                    html += "<div class='col-lg-4 col-md-6 col-sm-12'><div class='product move-up'><div class='top-product'><a href='" + base_url  + '/chi-tiet-san-pham/' + element.slug + "' class='product-img zoom'><img src='" + element.image + "' alt=''></a>" + html_sale1 + "</div><div class='main-product'><p class='product-name'><a href='" + base_url  + '/chi-tiet-san-pham/' + element.slug + "'>"+ element.name +" ("+ element.unit +")</a></p><div class='price'>" + html_sale1 + html_sale2 + "</div><div class='add-to-card-btn'><a class='icon-detail' href='" + base_url  + '/chi-tiet-san-pham/' + element.slug + "'><i class='fas fa-eye'></i></a><a class='icon-card' href=''><i class='fas fa-shopping-basket'></i></a></div></div></div></div>";
                });

                $('.main-content').html(html);

            }
        });
    });

    // myRange.oninput = function () {
    //     console.log(this.value);
    // }

</script>

@endsection


