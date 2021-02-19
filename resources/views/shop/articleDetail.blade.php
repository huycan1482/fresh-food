@extends('shop.layouts.main')

@section('css')
<link rel="stylesheet" href="frontend/css/sanpham.css">
<link rel="stylesheet" href="frontend/css/article.css">
@endsection

@section('content')
<div class="content" style="width:100%">
    <div class="fake-menu">

    </div>

    <div class="article-header">
        <a href="">Trang chủ / </a><a href="{{ route('shop.listArticles', ['slug' => 'tat-ca']) }}">Cẩm nang / </a><span> {{$article->title}} </span>
    </div>

    <div class="main-article section">
        <div class="container article-sidebar col-lg-3 col-md-12 shop-side-bar">
            <div class="side-bar-category col-lg-12">
                <h3 class="header-side-bar">Danh mục Bài viết<i class="fas fa-list" id="close-category"></i>
                </h3>
                <!-- <i class="fas fa-times" id="close-category"></i> -->
                <ul class="main-category-side-bar">
                    @foreach ($menu as $item)
                    <li class=""> <a href="{{ route('shop.listArticles', ['slug' => $item->slug]) }}"> {{$item->name}} </a></li>
                     @endforeach
                </ul>
            </div>
            <div class="search-article col-lg-12">
                <h3 class="header-side-bar">Tìm kiếm Bài viết<i class="fas fa-list" id="close-search"></i>
                </h3>
                <form class="search-article-form" action="{{ route('shop.searchArticles') }}">
                    @csrf
                    <input type="text" value="" placeholder="Nhập bài viết..." name="tu-khoa" >
                    <button>Tìm kiếm <i class="fas fa-search"></i></button>
                </form>
            </div>
            <div class="other-products col-lg-12">
                <h3 class="header-side-bar">Bài viết liên quan<i class="fas fa-list" id="close-product"></i>
                </h3>
                <div class="other-list-items">
                    @foreach ($relate_articles as $relate_article)
                    <div class="other-pro-items">
                        <a href="" class="col-lg-3 other-pro-img">
                            <img src="{{ $relate_article->image }}" alt="">
                        </a>
                        <div class="col-lg-9 other-pro-content">
                            <a href="">{!! $relate_article->title !!}</a>
                        </div>
                    </div>
                    @endforeach
                    
                </div>
            </div>
        
        </div>
        <div class="container article-content col-lg-6 col-md-12">
            <div class="col-lg-12" style="overflow: overlay" >
                <!-- <div class=""> -->
                {!! $article->description !!}
                <!-- </div> -->
                
            </div> 
            
        </div>
        
    </div>


</div>
@endsection

@section('script')
<script language="javascript" src="frontend/js/sidebar.js"></script>    
@endsection