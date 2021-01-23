@extends('shop.layouts.main')

@section('css')
<link rel="stylesheet" href="frontend/css/product-detail.css">
@endsection

@section('content')
<div class="">
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
                    <form action="">
                        <input type="number" min="1" value="1"> 
                        <button>Đưa vào giỏ hàng</button>
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
@endsection
