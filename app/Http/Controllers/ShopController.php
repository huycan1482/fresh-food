<?php

namespace App\Http\Controllers;

use App\Banner;
use App\Category;
use App\Product;
use App\ProductImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ShopController extends HomeController
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index () 
    {
        // dd($this->menu);
        $banners = Banner::where(['is_active' => 1])->get();
        $products = Product::where([['is_active', '=', 1]])->orderBy('id', 'desc')->limit(4)->get(); 
        $hot_products = Product::where([['is_active', '=', 1], ['is_hot', '=', 1]])->orderBy('id', 'desc')->limit(4)->get();
        return view ('shop.home', [
            'menu' => $this->menu,
            'banners' => $banners,
            'products' => $products,
            'hot_products' => $hot_products, 
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,

        ]);
    }

    public function productDetail ($slug)
    {

        $checkProduct = Product::where([['slug', '=', $slug], ['is_active', '=', 1]])->get();

        if (empty($checkProduct->first())) {
            return view ('shop.notFound');
        }

        $product = $checkProduct->first();
        $product_images = ProductImage::where([['product_id', '=', $product->id], ['is_active', '=', 1]])->get();

        return view ('shop.productDetail', [
            'menu' => $this->menu,
            'product' => $product,
            'productImages' => $product_images,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,

        ]);
    }

    public function listProducts (Request $request, $slug) 
    {   
        
        $checkCategory = Category::where([['slug', '=', $slug], ['is_active', '=', 1]])->get();

        if (empty($checkCategory->first())) {
            return view ('shop.notFound');
        }

        $category = $checkCategory->first();

        $products = Product::where([['is_active', '=', 1], ['category_id', '=', $category->id]])->orderBy('id', 'desc')->paginate(12);
        // dd($products);

        $hot_products = Product::where([['is_active', '=', 1], ['is_hot', '=', 1]])->limit(8)->get();

        // dd($products->lastPage());

        return view ('shop.listProducts', [
            'menu' => $this->menu,
            'products' => $products,
            'hot_products' => $hot_products,
            'category' => $category,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,

        ]);
    }

    public function searchProducts (Request $request) 
    {
        $keyword = $request->input('tu-khoa');
    
        $slug = Str::slug($keyword);

        $products = Product::where([['slug', 'like', '%' . $slug . '%'], ['is_active', '=', 1]])->paginate(12);

        $hot_products = Product::where([['is_active', '=', 1], ['is_hot', '=', 1]])->limit(8)->get();

        return view ('shop.searchProducts', [
            'menu' => $this->menu,
            'products' => $products,
            'hot_products' => $hot_products,
            'keyword' => $keyword,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,

        ]);
    }

    public function sortProducts (Request $request, $slug)
    {

        $category = DB::table('categories')->where([['is_active', '=' , 1], ['slug', '=', $slug]])->get();

        if ($category->isEmpty()) {
            dd('ko thấy category');
        }
        // dd($category->isEmpty());
        $sort_price = $request->query('sort_price');
        $range_price = $request->query('range_price');

        // dd($range_price);

        $query = DB::table('products')
        ->select(DB::raw( "( CAST( products.price - products.sale/100 * products.price as int ) ) as truePrice, products.* "))
        ->where('category_id', '=', $category->first()->id);
  
        if ( !empty($sort_price) ) {
            if($sort_price == 'gia-tang-dan') {
                $query->orderBy('truePrice', 'asc');
            }

            if ($sort_price == 'gia-giam-dan') {
                $query->orderBy('truePrice', 'desc');
            }
        } 
        
        if ( !empty($range_price) ) {
            $query->whereRaw("(products.price - products.sale/100 * products.price ) between 0 and $range_price");
        } 

        if (empty($range_price) && empty($sort_price)) {
            $query->orderBy('id', 'desc');
        }


        $products = $query->paginate(12);


        return response()->json(['products' => $products], 200);
    }

}
