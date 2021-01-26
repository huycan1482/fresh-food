@extends('shop.layouts.main')

@section('css')
<link rel="stylesheet" href="frontend/css/product-detail.css">
@endsection

@section('content')
<div class="content">
    {{-- <div class="messages-box">
        <div class="messages-header">
            <h2>Thông báo</h2>
            <i class="fas fa-times"></i>
        </div>
        <p>Thêm sản phẩm thành công</p>
    </div> --}}

    <div class="fake-menu">

    </div>

    <div class="section col-lg-12 product-main">
        <div class="container col-lg-10">
            <div class="col-lg-6 col-md-12">
                <div class="carousel-container">
                    <i class="fas fa-arrow-left" id="prevBtn"></i>
                    <i class="fas fa-arrow-right" id="nextBtn"></i>

                    <div class="carousel-slide">
                        @foreach ($productImages as $item)
                        <div class="">
                            <img src="{{$item->image}}" alt="">
                        </div>
                        @endforeach

                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-md-12">
                <div class="header-title">
                    <a href="/">Trang chủ / </a><a>chi tiết sản phẩm / {{$product->name}}</a>
                </div>
                <p class="product-title">{{$product->name}}</p>
                <div class="product-status" >
                    <p>Trạng thái: <span>{{ ($product->number > 2) ? 'Còn hàng' : 'Hết hàng' }}</span></p>
                </div>
                <div class="price">
                    @if ($product->sale > 0)
                    <span class="old-price">{{ number_format($product->price ,0,",",".") }}</span>
                    @endif
                    <span class="new-price">{{ number_format( ( $product->price - ($product->sale * $product->price)/100 ),0,",",".") }}Đ</span>
                </div>
                <div class="summary">
                    {!! $product->summary !!}
                </div>
                <div class="form-cart">
                    <form action="" method="">
                        <input type="number" min="0" value="1" step="0.01" id="product-number" data-id="{{$product->id}}"> 
                        <button class="btn-addToCart">Đưa vào giỏ hàng</button>
                    </form>
                </div>
                
            </div>
        </div>
    </div>

    <div class="section col-lg-12 product-descriptions">
        <div class="container col-lg-10">
            <div class="product-description-title">
                <h1>Mô tả</h1>
            </div>
            <div class="product-description">
                {!! $product->description !!}
            </div>
            

        </div>
    </div>

</div>    
@endsection

@section('script')
<script language="javascript" src="frontend/js/slideShow.js"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('form').submit(function(e){
        e.preventDefault();
        
        var number = $('#product-number').val();
        var id = $('#product-number').attr('data-id');

        $.ajax({
            type: "POST",   
            url: base_url + '/gio-hang',
            data: {
                number : number,
                id : id,
            },
            dataType: "json",
            success: function (response) {
                // console.log(response.mess);

                $('.shopping-icon .num-cart').text( response.cart_total );


                html = "<div class='messages-box' style='background-color: #49a010'><div class='messages-header'><h2>Thông báo</h2><i class='fas fa-times'></i></div><p>" + response.mess + "</p></div>";

                $('.content').append(html);

                $('.messages-box').click(function (e) { 
                    $(this).fadeOut();
                    e.preventDefault();
                });
            },
            error: function (e) { // lỗi nếu có
                // messageResponse('danger', e.responseJSON.mess);
                
                html = "<div class='messages-box' style='background-color: #c0392b'><div class='messages-header'><h2>Thông báo</h2><i class='fas fa-times'></i></div><p>" + e.responseJSON.mess + "</p></div>";

                $('.content').append(html);

                $('.messages-box').click(function (e) { 
                    $(this).fadeOut();
                    e.preventDefault();
                });
            }
        });
    });


    // $('btn-addToCart').click(function (e) {
    //     e.preventDefault();
    // });
</script>
@endsection
