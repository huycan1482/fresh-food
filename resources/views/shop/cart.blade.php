@extends('shop.layouts.main')

@section('css')
<link rel="stylesheet" href="frontend/css/cart.css">
@endsection

@section('content')
<div>
    <div class="fake-menu">

    </div>

    <div class="cart-header">
        <h1>Giỏ hàng</h1>
    </div>

    @if (!empty($cart))
    <div class="section col-lg-12 cart">
        <div class="container col-lg-10">
            <div class="col-lg-6 col-md-12 shop-table">
                <form action="">
                    <table class="col-lg-12">
                        <thead>
                            <tr>
                                <th></th>
                                <th class="col-lg-3">Sản phẩm</th>
                                <th class="col-lg-3">Giá</th>
                                <th class="col-lg-3">Số lượng</th>
                                <th class="col-lg-3">Tổng</th>
                            </tr>
                        </thead>
                        <tbody>
                            {{-- {{dd($cart->getProducts())}} --}}
                            @foreach ($cart->getProducts() as $item)
                            <tr>
                                {{-- {{dd($cart->getProducts())}} --}}
                                <td class="del-product"><span><i class="far fa-times-circle"></i></span></td>
                                <td class="product-img-name"> 
                                    <img src="{{ ($item['image']) }}" alt="">
                                    <span>{{ $item['name'] }}</span>
                                </td>
                                <td class="product-price" data-value="{{$item['price']}}">{{ number_format( $item['price'] ,0,",","." )}}đ</td>
                                <td class="number">
                                    <input class="product-number" type="number" min="0" step="0.01" value="{{$item['number']}}" data-id="{{$item['id']}}">
                                </td>
                                <td class="product-total" >{{ number_format( $item['price'] * $item['number'] ,0,",","." ) }}đ</td>
                            </tr>
                            @endforeach

                        </tbody>
                    </table>
                </form>
                
                <div class="shop-footer">
                    <div class="see-more-product">
                        <a href=""><i class="fas fa-long-arrow-alt-left"></i> Tiếp tục xem sản phẩm </a>
                    </div>  
                    <div class="destroy-cart">
                        <a href="" class="btn-destroy">Xóa giỏ hàng</a>
                    </div>
                </div>
                
            </div>
            <div class="col-lg-5 col-md-12 cart-total">
                <div class="cart-total-discount">
                    <div class="cart-total-title">
                        <i class="fas fa-tag"></i> Phiếu giảm giá
                    </div>
                    <form action="">
                        <input class="form-control" type="text" placeholder="Nhập mã giảm giá">
                        <button class="btn">Áp dụng</button>
                    </form>
                </div>
                <div class="cart-total-title">
                    Tổng số lượng
                </div>
                <div class="cart-total-content">
                    <div>
                        <p>Tạm tính: </p>
                        <p class="price">{{number_format($cart->getTotalPrice() ,0,",","." )}}đ</p>
                    </div>
                    <div>
                        <p>Giảm giá:</p>
                        <p>0</p>
                    </div>
                    <div>
                        <p>Tổng tiền:</p>
                        <p class="total-price" data-value="{{$cart->getTotalPrice()}}">{{number_format($cart->getTotalPrice() ,0,",","." )}}đ</p>
                    </div>
                </div>


            </div>
        </div>
    </div>    
    @endif
    

    <div class="section col-lg-12 shopping-form">
        <div class="container col-lg-10">
            <div class="shopping-form-title">
                <h2>Phiếu nhập thông tin mua hàng</h2>
            </div>
            <form class="col-lg-9 col-sm-12" action="{{route('shop.postCheckout')}}" method="POST">
                @csrf
                <div class="row">
                    <div class="col col-lg-4">
                        <div class="form-group">
                            <label for="">Họ và tên *</label>
                            <input class="form-control" type="text" name="name" value="{{old('name')}}">
                        </div>
                    </div>
                    <div class="col col-lg-4">
                        <div class="form-group">
                            <label for="">Mail *</label>
                            <input class="form-control" type="text" name="mail" value="{{old('mail')}}">
                        </div>
                    </div>
                    <div class="col col-lg-4">
                        <div class="form-group">
                            <label for="">Số điện thoại *</label>
                            <input class="form-control" type="text" name="phone" value="{{old('phone')}}">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col col-lg-6">
                        <div class="form-group">
                            <label for="">Địa chỉ *</label>
                            <input class="form-control" type="text" name="address" value="{{old('address')}}">
                        </div>
                    </div>
                    <div class="col col-lg-6">
                        <div class="form-group">
                            <label for="">Địa chỉ nhận hàng *</label>
                            <input class="form-control" type="text" name="address2"  value="{{old('address2')}}">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="">Ghi chú *</label>
                    <textarea class="form-control" name="note" id="" cols="30" rows="10" name="note">{{old('note')}}</textarea>
                </div>

                <div class="form-btn">
                    <button class="btn">Hoàn thành</button>
                </div>
            </form>
            
        </div>
    </div>

</div>    
@endsection


@section('script')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    function formatNumber(num) {
        return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.')
    }

    $('.product-number').change(function (e) { 
        e.preventDefault();
        var number = $(this).val();
        var id = $(this).attr('data-id');

        var price = $(this).closest('tr').children('.product-price').attr('data-value');
        var new_price = price * number;
                
        $(this).closest('tr').children('.product-total').text(formatNumber(new_price) + 'đ');

        var new_price = 0;
        $('.product-price').each( function (key, value) { 
            new_price += $(this).attr('data-value') * $(this).closest('tr').children('.number').children('input').val();
        });

        $('.price').text(formatNumber(new_price) + 'đ');
        $('.total-price').text(formatNumber(new_price) + 'đ');

        $.ajax({
            type: "POST",
            url: base_url + '/gio-hang/update',
            data: {
                id : id,
                number : number,
            },
            dataType: 'json',
            success: function (response) {
                // $(this).jqCloset
                
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

    $('.del-product .fa-times-circle').click(function (e) {
        $(this).closest('tr').remove();
        
        var id = $(this).closest('tr').children('.number').children('input').attr('data-id');

        var new_price = 0;
        
        $('.product-price').each( function (key, value) { 
            new_price += $(this).attr('data-value') * $(this).closest('tr').children('.number').children('input').val();
        });

        $('.price').text(formatNumber(new_price) + 'đ');
        $('.total-price').text(formatNumber(new_price) + 'đ');

        // $('.shopping-icon .num-cart').text( $('.shopping-icon .num-cart').text() * 1 - 1 );
        


        // console.log(id);
        $.ajax({
            type: 'POST',
            url: base_url + '/gio-hang/delete',
            data: {
                id : id,
            },
            dataType: 'json',
            success: function (response) {
                // this.remove();
                $('.shopping-icon .num-cart').text( response.cart_total );

            },
            error: function (e) { // lỗi nếu có
                // messageResponse('danger', e.responseJSON.mess);
                $('.shopping-icon .num-cart').text( response.cart_total );
                html = "<div class='messages-box' style='background-color: #c0392b'><div class='messages-header'><h2>Thông báo</h2><i class='fas fa-times'></i></div><p>" + e.responseJSON.mess + "</p></div>";

                $('.content').append(html);

                $('.messages-box').click(function (e) { 
                    $(this).fadeOut();
                    e.preventDefault();
                });
            }
        });
    });

    $('.btn-destroy').click(function (e) {
        e.preventDefault();

        $.ajax({
            type: "POST",
            url: base_url + '/gio-hang/destroy',
            data: {
        
            },
            dataType: 'json',
            success: function (response) {
                // $(this).jqCloset

                $(location).attr('href', base_url);
                
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

