<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Product;
use Illuminate\Http\Request;

class CartController extends HomeController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index (Request $request)
    {
        // dd(session('cart') );
        // $request->session()->flush();    
        // dd('true');
        return view ('shop.cart', [
            'menu' => $this->menu ,
            'cart' => session('cart') ? session('cart') : '',
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,
        ]);
    }

    public function addToCart(Request $request)
    {
        // $request->session()->flush();    

        $pro_id = $request->input('id');

        $pro_number = $request->input('number');

        $product = Product::find($pro_id);

        // dd($pro_number);

        if (!$product) {
            return response()->json(['mess' => 'Thêm sản phẩm không thành công'], 404);
        } 

        $_cart = session('cart') ? session('cart') : '';

        $cart = new Cart($_cart);

        $cart->add($product, $pro_number);

        $request->session()->put('cart', $cart);

        return response()->json(['mess' => 'Thêm sản phẩm vào giỏ hàng thành công', 'cart_total' => session('cart')->getTotalNumber()], 200);
        // dd(session()->get('cart'));
    }

    public function updateToCart (Request $request)
    {
        // dd($request->all());
        $pro_id = $request->input('id');

        $pro_number = $request->input('number');

        $product = Product::find($pro_id);

        if (!$product) {
            return response()->json(['mess' => 'Sửa sản phẩm không thành công'], 404);
        }

        $_cart = session('cart') ? session('cart') : '';

        $cart = new Cart($_cart);

        ($cart->edit($pro_id, $pro_number));

        $request->session()->put('cart', $cart);

        return response()->json(['mess' => 'Thêm sản phẩm vào giỏ hàng thành công', 'cart_total' => session('cart')->getTotalNumber()], 200);

    }

    public function removeToCart (Request $request) 
    {
        $pro_id = $request->input('id');

        $product = Product::find($pro_id);

        if (!$product) {
            return response()->json(['mess' => 'Sửa sản phẩm không thành công'], 404);
        }

        // Kiểm tra tồn tại giỏ hàng cũ
        $_cart = session('cart') ? session('cart') : '';
        // Khởi tạo giỏ hàng
        $cart = new Cart($_cart);

        $cart->remove($pro_id);

        $request->session()->put('cart', $cart);

        return response()->json(['mess' => 'Thêm sản phẩm vào giỏ hàng thành công', 'cart_total' => session('cart')->getTotalNumber()], 200);

    }


}
