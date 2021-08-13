<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Order;
use App\OrderDetail;
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
            'setting' => $this->setting,
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

        $cart->edit($pro_id, $pro_number);

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

        return response()->json(['mess' => 'Xóa sản phẩm khỏi giỏ hàng thành công', 'cart_total' => session('cart')->getTotalNumber()], 200);

    }

    public function postCheckout(Request $request) 
    {

        $request->validate([
            'name' => 'required',
            'mail' => 'required|email',
            'address' => 'required',
            'address2' => 'required',
            'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
        ], [
            'name.required' => 'Yêu cầu không để trống',
            'mail.required' => 'Yêu cầu không để trống',
            'mail.email' => 'Sai kiểu dữ liệu',
            'address.required' => 'Yêu cầu không để trống',
            'address2.required' => 'Yêu cầu không để trống',
            'phone.required' => 'Yêu cầu không để trống',
            'phone.regex' => 'Không đúng định dạng dữ liệu',
            'phone.min' => 'Số điện thoại phải lớn hơn 10 chữ số',
        ]);
        $_cart = session('cart') ? session('cart') : '' ; 
            
        $order = new Order;
        // dd($order->id);
        $order->code = 'DH-'.date('d').date('m').date('Y').'-'.time();
        $order->fullname = $request->input('name');
        $order->mail = $request->input('mail');
        $order->address1 = $request->input('address');
        $order->address2 = $request->input('address2');
        $order->phone = $request->input('phone');
        // $order->discount = ;
        $order->note = $request->input('note');
        // $order->coupon = ;
        $order->status_id = 1;
        $order->payment_id = 1;
        $order->total_price = session('cart')->getTotalPrice();
        // dd($order->id);
        if ($order->save()) {
            // dd($order->id);
            // $order->code = 'DH-'.$order->id.'-'.date('d').date('m').date('Y');
            // $order->save();
            foreach ( $_cart->getProducts() as $item ) {
                $order_detail = new OrderDetail;
                $order_detail->name = $item['name'];
                $order_detail->image = $item['image'];
                $order_detail->order_id = $order->id;
                // $order_detail->sku
                $order_detail->product_id = $item['id'];
                $order_detail->price = $item['price'];
                $order_detail->number = $item['number'];
                $order_detail->save();
            }

            $request->session()->forget('cart');
        }

        return redirect()->back()->with('msg', "Gửi yêu cầu thành công mã đơn hàng $order->code"); 

        // if ($order->save()) {

        // }

    }

    public function destroyCart (Request $request)
    {
        $request->session()->forget('cart');

        // return redirect('/');

        return response()->json(['mess' => 'Xóa giỏ hàng thành công'], 200);
    }


}
