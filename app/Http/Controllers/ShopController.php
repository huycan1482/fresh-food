<?php

namespace App\Http\Controllers;

use App\Article;
use App\Banner;
use App\Category;
use App\Contact;
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
        $popular_categories1 = Category::where([['is_active', '=', 1], ['position', '=', 1]])->orderBy('id', 'desc')->limit(1)->get();
        $popular_categories2 = Category::where([['is_active', '=', 1], ['position', '=', 2]])->orderBy('id', 'desc')->limit(2)->get();

        $new_articles = Article::where([['is_active', '=' , 1]])->orderBy('id', 'desc')->limit(3);
        // $articles

        return view ('shop.home', [
            'menu' => $this->menu,
            'setting' => $this->setting,
            'banners' => $banners,
            'products' => $products,
            'hot_products' => $hot_products, 
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,
            'popular_categories1' => $popular_categories1,
            'popular_categories2' => $popular_categories2,
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
            'setting' => $this->setting,
            'product' => $product,
            'productImages' => $product_images,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,

        ]);
    }

    public function listProducts (Request $request, $slug) 
    {   
        
        $checkCategory = Category::where([['slug', '=', $slug], ['is_active', '=', 1]])->get();

        if ($slug == 'san-pham-hot') {
            $products = Product::where([['is_active', '=', 1], ['is_hot', '=', 1]])->orderBy('id', 'desc')->paginate(12);

            $hot_products = Product::where([['is_active', '=', 1], ['is_hot', '=', 1]])->limit(8)->get();

            return view ('shop.listProducts', [
                'menu' => $this->menu,
                'setting' => $this->setting,
                'products' => $products,
                'hot_products' => $hot_products,
                'category' => 'Sản phẩm hot',
                'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,
    
            ]);
        }

        if ($slug == 'san-pham-moi') {
            $products = Product::where([['is_active', '=', 1]])->orderBy('id', 'desc')->paginate(12);

            $hot_products = Product::where([['is_active', '=', 1], ['is_hot', '=', 1]])->limit(8)->get();

            return view ('shop.listProducts', [
                'menu' => $this->menu,
                'setting' => $this->setting,
                'products' => $products,
                'hot_products' => $hot_products,
                'category' => 'Sản phẩm mới',
                'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,
    
            ]);
        }

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
            'setting' => $this->setting,
            'products' => $products,
            'hot_products' => $hot_products,
            'category' => $category,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,

        ]);
    }

    public function sortProducts (Request $request, $slug)
    {
        $category = DB::table('categories')->where([['is_active', '=' , 1], ['slug', '=', $slug]])->get();

        if ($category->isEmpty() && $slug != 'san-pham-hot' && $slug != 'san-pham-moi') {
            dd('ko thấy category');
        }

        $sort_price = $request->query('sort_price');
        $range_price = $request->query('range_price');

        if (!$category->isEmpty()) {
            $query = DB::table('products')
            ->select(DB::raw( "( CAST( products.price - products.sale/100 * products.price as int ) ) as truePrice, products.* "))
            ->where('category_id', '=', $category->first()->id);
        } else {
            $query = DB::table('products')
            ->select(DB::raw("( CAST( products.price - products.sale/100 * products.price as int ) ) as truePrice, products.* "));
        }
  
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

        // dd($query->get());

        if ($slug == 'san-pham-hot') {
            $query->where([['is_hot', '=', 1]])->orderBy('id', 'desc');
        }

        if (empty($range_price) && empty($sort_price)) {
            $query->orderBy('id', 'desc');
        }

        $products = $query->paginate(12);

        // dd($products);

        return response()->json(['products' => $products], 200);
    }

    public function searchProducts (Request $request) 
    {
        $keyword = $request->input('tu-khoa');

        $slug = Str::slug($keyword);

        $sort_price = $request->query('sort_price');

        $range_price = $request->query('range_price');

        $query = DB::table('products')
        ->select(DB::raw("( CAST( products.price - products.sale/100 * products.price as int ) ) as truePrice, products.* "))
        ->where([['slug', 'like', '%' . $slug . '%'], ['is_active', '=', 1]]);

        if (!empty($sort_price)) {
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

        $products = $query->paginate(12);

        $hot_products = Product::where([['is_active', '=', 1], ['is_hot', '=', 1]])->limit(8)->get();

        if (!empty($sort_price) || !empty($range_price)) {
            return response()->json(['products' => $products], 200);
        }

        // dd('false');

        return view ('shop.searchProducts', [
            'menu' => $this->menu,
            'setting' => $this->setting,
            'products' => $products,
            'hot_products' => $hot_products,
            'keyword' => $keyword,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,

        ]);
    }

    // public function sortSearchProducts (Request $request, $slug)
    // {
    //     dd($slug, $request->all());
    // }

    public function contactUs ()
    {
        return view ('shop.contact', [
            'menu' => $this->menu,
            'setting' => $this->setting,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,
        ]);
    }

    public function postContactUs (Request $request)
    {

        $request->validate([
            'name' => 'required|max:255',
            'mail' => 'required|email',
            'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
            'content' => 'required',
        ], [
            'name.required' => 'Yêu cầu không để trống',
            'name.max' => 'Giới hạn 255 kí tự',
            'mail.required' => 'Yêu cầu không để trống',
            'mail.email' => 'Không đúng định dạng',
            'phone.required' => 'Yêu cầu không để trống',
            'phone.regex' => 'Không đúng định dạng',
            'content.required' => 'Yêu cầu không để trống',
        ]);

        $contact = new Contact;
        $contact->name = $request->input('name');
        $contact->email = $request->input('mail');
        $contact->phone = $request->input('phone');
        $contact->content = $request->input('content');
        $contact->save();

        return redirect()->back()->with('msg', "Gửi yêu cầu thành công, cảm ơn bạn đã liên hệ"); 
        
    }

    public function listArticles ($slug)
    {
        $query = Article::where([['is_active', '=', 1]]);

        if ($slug == 'tat-ca') {
            $slug = 'tất cả';
            // $query->orderBy('id', 'desc')->paginate(12);
        }

        $categories = Category::where([['is_active', '=', 1]])->get();

        foreach ($categories as $category) {
            if ($category->slug == $slug) {
                $query->where([['category_id', '=', $category->id]]);
                $slug = $category->name;
            }
        }

        $articles = $query->orderBy('id', 'desc')->paginate(5);

        $hot_articles = Article::where(['is_active' => 1], ['is_hot' => 1])->limit(5)->get();

        return view ('shop.listArticles', [
            'menu' => $this->menu,
            'setting' => $this->setting,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,
            'slug' => $slug,
            'articles' => $articles,
            'hot_articles' => $hot_articles,
        ]);
    }

    public function articleDetail($slug) 
    {
        $checkArticle = Article::where([['slug', '=', $slug], ['is_active', '=', 1]])->get();

        if (empty($checkArticle->first())) {
            return view ('shop.notFound');
        }

        $article = $checkArticle->first();

        $relate_articles = Article::where([['is_active', '=', 1], ['category_id', '=', 1]])->get();
        
        // dd($article->category_id, $relate_articles);
        
        return view ('shop.articleDetail', [
            'menu' => $this->menu,
            'setting' => $this->setting,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,
            'article' => $article,
            'relate_articles' => $relate_articles,

        ]);
    }

    public function searchArticles (Request $request) 
    {
        $keyword = $request->input('tu-khoa');

        $slug = Str::slug($keyword);

        $articles = Article::where([['slug', 'like', '%' . $slug . '%'], ['is_active', '=', 1]])->get();

        $hot_articles = Article::where(['is_active' => 1], ['is_hot' => 1])->limit(5)->get();

        return view ('shop.searchArticles', [
            'menu' => $this->menu,
            'setting' => $this->setting,
            'cart_total' => session('cart') ? session('cart')->getTotalNumber() : 0,
            'slug' => $keyword,
            'articles' => $articles,
            'hot_articles' => $hot_articles,
            'keyword' => $keyword,
        ]);
    }

}
