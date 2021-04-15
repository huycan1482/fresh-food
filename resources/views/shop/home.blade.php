@extends('shop.layouts.main')

@section('content')
    
<div class="content">
    <div class="fake-menu">

    </div>

    <div class="carousel-container">
        <i class="fas fa-chevron-left" id="prevBtn"></i>
        <i class="fas fa-chevron-right" id="nextBtn"></i>

        <div class="carousel-slide">

            @foreach ($banners as $banner)
            <div style="background-image: url({{$banner->image}}) ;" alt="">
                {{-- <p>{{$banner->title}}</p> --}}
            </div>
            @endforeach

        </div>
    </div>

    
    <div class="section col-lg-12">
        <div class="container col-lg-10" style="margin-top: 20px">
            <div class="header-content col-lg-12">
                <h2 class="title"><span>Loại thực phẩm phổ biến</span></h2>
            </div>
            <div class="box col-lg-6 col-md-12 wow animate__animated animate__bounceInLeft animate__slow">
                <div class="left-banner banner-img" style="background-image: url({{$popular_categories1->first()->image}})">
                    <div class="box-banner">
                        <p>{{$popular_categories1->first()->name}}</p>
                        <a href="{{ route('shop.listProducts', ['slug' => $popular_categories1->first()->slug]) }}">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="box col-lg-6 col-md-12 wow animate__animated animate__bounceInRight animate__slow">
                <div class="right-banner ">
                    @foreach ($popular_categories2 as $key => $item)
                    <div class="right-banner-{{ ($key == 0) ? 'top' : 'bottom' }} banner-img" style="url({{$item->image}})">
                        <div class="box-banner">
                            <p>{{ $item->name }}</p>
                            <a href="{{ route('shop.listProducts', ['slug' => $item->slug]) }}">Xem thêm</a>
                        </div>
                    </div>    
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    <div class="section col-lg-12" style="background-color: #f5f6fa;">
        <div class="container col-lg-10">
            <div class="header-content col-lg-12">
                <h2 class="title"><span>Sản phẩm hot</span></h2>
            </div>
            <div class="main-content col-lg-12">
                @foreach ($hot_products as $key => $hot_product)
                <div class="col-lg-3 col-md-6 col-sm-12 wow animate__animated animate__bounceInRight animate__slow" data-wow-delay=".{{$key + 2}}s">
                    <div class="product move-up">
                        <div class="top-product ">
                            <a href="{{ route('shop.productDetail', ['slug' => $hot_product->slug]) }}" class="product-img zoom">
                                <!-- <img src="../images/bg_2.jpg" alt=""> -->
                                <img src="{{$hot_product->image}}" alt="">
                            </a>
                            @if ($hot_product->sale > 0)
                            <div class="on-sale">
                                <span>-{{$hot_product->sale}}%</span>
                            </div>
                            @endif
                            
                        </div>
                        <div class="main-product">
                            <p class="product-name">
                                <a href="{{ route('shop.productDetail', ['slug' => $hot_product->slug]) }}">{{$hot_product->name}} ({{$hot_product->unit}})</a>
                            </p>
                            <div class="price">
                                @if ($hot_product->sale > 0)
                                <span class="old-price">{{ number_format($hot_product->price ,0,",",".") }}</span>
                                @endif
                                <span class="new-price">{{ number_format( ( $hot_product->price - ($hot_product->sale * $hot_product->price)/100 ),0,",",".") }}Đ</span>
                            </div>
                            <div class="add-to-card-btn">
                                <a class="icon-detail" href="{{ route('shop.productDetail', ['slug' => $hot_product->slug]) }}"><i class="fas fa-eye"></i></a>
                                <a class="icon-card" data-id="{{$hot_product->id}}" data-value="1" href=""><i class="fas fa-shopping-basket"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="more-info col-lg-12">
                <a href="{{ route('shop.listProducts', ['slug' => 'san-pham-hot']) }}" class="more-info-btn">Xem thêm</a>
            </div>
        </div>
    </div>

    <div class="section col-lg-12 choose-us banner-img">
        <div class="container col-lg-10 ">
            <div class="header-content col-lg-12" style="margin-bottom: 40px">
                <h2 class="title"><span>Vì sao nên chúng tôi</span></h2>
            </div>
            <div class="box col-lg-4 col-md-6 col-sm-12 wow animate__animated animate__bounceInUp animate__slow" data-wow-delay=".2s">
                <div class="box-service" style="">
                    <div class="box-icon zoom box-1 banner-img">
                        <!-- <img src="../images/banner_img_1.png" alt=""> -->
                        <!-- <img src="../images/bg_1.jpg" style=" width: 100%;" alt=""> -->
                    </div>
                    <div class="box-infor">
                        <h3>Hàng rào trái cây</h3>
                        <p>Hãy chắc chắn rằng hàng rào vườn của bạn đủ chắc chắn để tránh động vật và những khu vườn
                            xinh đẹp và hơn thế nữa.</p>
                    </div>
                </div>

            </div>
            <div class="box col-lg-4 col-md-6 col-sm-12 wow animate__animated animate__bounceInUp animate__slow" data-wow-delay=".4s">
                <div class="box-service" style="">
                    <div class="box-icon zoom box-2 banner-img">
                        <!-- <img src="../images/banner_img_2.webp" alt=""> -->
                        <!-- <img src="../images/bg_2.jpg" style=" width: 100%;" alt=""> -->
                    </div>
                    <div class="box-infor ">
                        <h3>Chuẩn bị cảnh quan</h3>
                        <p>Xây dựng một khu vườn tất nhiên chúng ta sẽ cần cảnh quan của khu vườn, bố trí khu vườn
                            phù hợp với bạn nhất.</p>
                    </div>
                </div>

            </div>
            <div class="box col-lg-4 col-md-12 col-sm-12 wow animate__animated animate__bounceInUp animate__slow" data-wow-delay=".6s">
                <div class="box-service" style="">
                    <div class="box-icon zoom box-3 banner-img">
                        <!-- <img src="../images/banner_img_3.png" alt=""> -->
                    </div>
                    <div class="box-infor ">
                        <h3>Nguồn cung cấp trái cây</h3>
                        <p>Chúng tôi cung cấp các dịch vụ làm vườn tốt nhất với giá cả rất phải chăng, rất nhiều sản
                            phẩm cho bạn lựa chọn.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section col-lg-12" style="background-color: #f5f6fa;">
        <div class="container col-lg-10">
            <div class="header-content col-lg-12">
                <h2 class="title"><span>Sản phẩm mới</span></h2>
            </div>
            <div class="main-content col-lg-12">
                @foreach ($products as $key => $product)
                <div class="col-lg-3 col-md-6 col-sm-12 wow animate__animated animate__bounceInLeft animate__slow" data-wow-delay=".{{$key + 2}}s">
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
                                <a class="icon-detail" href="{{ route('shop.productDetail', ['slug' => $product->slug]) }}"><i class="fas fa-eye"></i></a>
                                <a class="icon-card" href="" data-id="{{$product->id}}" data-value="1"><i class="fas fa-shopping-basket"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach

            </div>
            <div class="more-info col-lg-12">
                <a href="{{ route('shop.listProducts', ['slug' => 'san-pham-moi']) }}" class="more-info-btn">Xem thêm</a>
            </div>
        </div>
    </div>

    <div class="section col-lg-12 about-us">
        <div class="container col-lg-10 wow animate__animated animate__bounceInUp animate__slow">
            <div class="about-us-banner col-lg-5 col-md-12">
                <img src="frontend/images/Screenshot 2021-04-07 180637.png" alt="">
            </div>
            <div class="about-us-info col-lg-6 col-md-12">
                <div class="title-about-us">
                    <p class="">Sơ lược</p>
                    <p class="">về chúng tôi</p>
                </div>
                <div class="detail-about-us ">
                    {!! $setting->introduce !!}
                </div>
            </div>

        </div>
    </div>

    <div class="section col-lg-12" style="background-color: #f5f6fa;">
        <div class="container col-lg-10">
            <div class="header-content col-lg-12">
                <h2 class="home-title">Tin tức mới</h2>
            </div>

            <div class="main-content col-lg-12">
                @foreach ($new_articles as $key => $item)
                <div class="col-lg-4 col-md-6 col-sm-12 wow animate__animated animate__bounceInDown animate__slow" data-wow-delay=".{{$key + 2}}s">
                    <div class="new-items">
                        <div class="new-banner">
                            <a href="{{ route('shop.articleDetail', ['slug' => $item->slug]) }}">
                                <img class="zoom" src="{{$item->image}}" alt="">
                            </a>
                        </div>
                        <div class="new-detail">
                            <h3><a href="{{ route('shop.articleDetail', ['slug' => $item->slug]) }}">{{ $item->title }}</a></h3>
                            {!! $item->summary !!}
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="more-info col-lg-12">
                <a href="" class="more-info-btn">Xem thêm</a>
            </div>
        </div>
    </div>


    <div class="section col-lg-12 cook">
        <div class="container col-lg-10">
            <div class="left-content col-lg-7 col-sm-12 wow animate__animated animate__bounceInLeft animate__slow">
                <div class="header-content col-lg-12 ">
                    <h2 class="home-title">Tin tức nổi bật</h2>
                </div>
                @foreach ($hot_articles as $item)
                <div class="cook-content wow animate__animated animate__fadeInUp animate__slow">
                    <h3 class="cook-content-header"><a href="{{ route('shop.articleDetail', ['slug' => $item->slug]) }}">{{ $item->title }}</a></h3>
                    <div class="cook-main-content">
                        <div class="cook-content-img col-lg-3">
                            <a href="{{ route('shop.articleDetail', ['slug' => $item->slug]) }}">
                                <img class="zoom" src="{{$item->image}}" alt="">
                            </a>
                        </div>
                        <div class="cook-content-detail col-lg-9">
                            {!! $item->summary !!}
                        </div>
                    </div>
                </div>
                @endforeach

                <div class="right-more-info col-lg-12">
                    <a href="" class="right-more-info-btn">Xem thêm</a>
                </div>
            </div>
            <div class="right-content col-lg-4 col-sm-12 wow animate__animated animate__bounceInRight animate__slow">
                <div class="header-content col-lg-12">
                    <h2 class="home-title">Video</h2>
                </div>
                <div class="video">
                    <!-- <video width="320" height="240" controls>
                        <source src="https://www.youtube.com/watch?v=BnzKty_w1p0" type="video/mp4">
                        Trình duyệt của bạn không hỗ trợ HTML5.
                      </video> -->
                    <!-- <iframe width="100%" height="240" src="https://www.youtube.com/embed/BnzKty_w1p0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
                        <iframe width="1519" height="591" src="https://www.youtube.com/embed/KJawXG1KG84" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>-->
                    <iframe width="100%" height="210px" src="https://www.youtube.com/embed/HDhlIJ2VEAo"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <div class="home-more-video">
                        <div class="home-video">
                            <iframe class="col-lg-6" height="100px" src="https://www.youtube.com/embed/CRaNtKVjdDk"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                            <div class="col-lg-6">
                                <a href="">18 tin đồn sai sự thật về thực phẩm mà bạn nên biết</a>
                            </div>
                        </div>
                        <div class="home-video">
                            <iframe class="col-lg-6" height="100px" src="https://www.youtube.com/embed/duz8PeCNFQk"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                            <div class="col-lg-6">
                                <a href="">42 BÍ KÍP VỚI GÀ ĐƠN GIẢN GIÚP CUỘC ĐỜI THÊM DỄ DÀNG</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- <div class="header-content col-lg-12">
                    <h2 class="home-title">FaceBook</h2>
                </div>
                <div class="home-facebook">

                </div> -->
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

    $('.add-to-card-btn .icon-card').click(function (e) { 
        e.preventDefault();
        var pro_number = $(this).attr('data-value');
        var pro_id = $(this).attr('data-id');
        
        $.ajax({
            type: "POST",   
            url: base_url + '/gio-hang/add',
            data: {
                number : pro_number,
                id : pro_id,
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


</script>
@endsection