<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class ShopController extends HomeController
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index () 
    {
        // dd($this->menu);
        $products = Product::where([['is_active', '=', 1]])->get();
        $hot_products = Product::where([['is_active', '=', 1], ['is_hot', '=', 1]])->get();
        return view ('shop.home', [
            'menu' => $this->menu,
        ]);
    }
}
