@extends('shop.layouts.main')

@section('css')
<link rel="stylesheet" href="frontend/css/cart.css">
@endsection

@section('content')
<div class="section col-lg-12 shopping-form" style="justify-content: center; margin-top: 100px">
    <div class="about-us-banner col-lg-4 col-md-12">
        <img src="frontend/images/left_image_ad.webp" alt="">
    </div>
    
    <div class="container col-lg-6 col-md-12">
        <div class="shopping-form-title" style="margin-bottom:20px">
            <h2>Liên hệ với chúng tôi</h2>
        </div>
        @if (session('msg'))
            {{session('msg')}}
        @else
        <form class="col-lg-9 col-sm-12" action="{{route('shop.postContact')}}" method="POST">
            @csrf
            <div class="row">
                <div class="col col-lg-4">
                    <div class="form-group">
                        <label for="">Họ và tên *</label>
                        <input class="form-control" type="text" name="name" value="{{old('name')}}">
                        <span style="color:red; font-size:13px; margin-top: 5px">{{$errors->first('name')}}</span>
                    </div>
                </div>
                <div class="col col-lg-4">
                    <div class="form-group">
                        <label for="">Mail *</label>
                        <input class="form-control" type="text" name="mail" value="{{old('mail')}}">
                        <span style="color:red; font-size:13px; margin-top: 5px">{{$errors->first('mail')}}</span>
                    </div>
                </div>
                <div class="col col-lg-4">
                    <div class="form-group">
                        <label for="">Số điện thoại *</label>
                        <input class="form-control" type="text" name="phone" value="{{old('phone')}}">
                        <span style="color:red; font-size:13px; margin-top: 5px">{{$errors->first('phone')}}</span>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="">Ghi chú *</label>
                <textarea class="form-control" name="content" id="" cols="30" rows="10" name="content">{{old('content')}}</textarea>
                <span style="color:red; font-size:13px; margin-top: 5px">{{$errors->first('content')}}</span>
            </div>

            <div class="form-btn">
                <button class="btn">Hoàn thành</button>
            </div>
        </form>
        @endif
    </div>  
    
</div>    
@endsection
