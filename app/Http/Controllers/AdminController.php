<?php

namespace App\Http\Controllers;

use App\Article;
use App\Contact;
use App\Order;
use App\OrderDetail;
use App\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function dashboard ()
    {
        // return view('admin.dashboard');
    }

    public function index ()
    {
        // dd('here');

        $new_orders = Order::whereRaw('DATE(created_at) = CURRENT_DATE')->count();
        $new_contacts = Contact::whereRaw('DATE(created_at) = CURRENT_DATE')->count();
        $products = Product::all()->count();
        $articles  = Article::all()->count();

        $dt_today = Carbon::now('Asia/Ho_Chi_Minh');
        // dd($dt_today->format('D / m'))  D sẽ hiện ra tên ngày =  TA;

        // $data_chart_1 = DB::table('order_details')
        //     ->selectRaw('categories.id, IF( date(order_details.created_at) = (CURRENT_DATE), COUNT(order_details.id), 0 ) as number')
        //     ->rightJoin('products', 'order_details.product_id', '=', 'products.id')
        //     ->rightJoin('categories', 'products.category_id', '=', 'categories.id')
        //     ->groupBy('categories.name')
        //     ->get();

        $data_chart_1 = DB::table('categories')
            ->selectRaw('categories.name, count(number.id) as number')
            ->leftJoin(DB::raw("(select p.id, p.category_id from products as p
            inner join order_details as od on p.id = od.product_id
            where Date(od.created_at) = (CURRENT_DATE)) as number"), 'categories.id', '=', 'number.category_id')
            ->groupBy('categories.name')
            ->get();
            // dd($data_chart_1);

        if(!empty($data_chart_1)) {
            $chart_1_1 = "['Today'";
            $chart_1_2 = "],['".$dt_today->format('d/m')."'";

            foreach ($data_chart_1 as $item1) {
                $chart_1_1 .= ",'".$item1->name."'";
                $chart_1_2 .= ",".$item1->number;
            }
    
            $chart_1_2 .= "],";
        }

        $data_chart_2 = DB::table('categories')
            ->selectRaw('categories.name, COUNT(products.id) as number')
            ->leftJoin('products', 'products.category_id', '=', 'categories.id')
            ->groupBy('categories.name')
            ->get();
        
        $chart_2_1 = "";

        foreach ($data_chart_2 as $item2) {
            $chart_2_1 .= "['" .$item2->name. "'," .$item2->number. "]," ;
        }
        
        return view ('admin.dashboard', [
            'new_contacts' => $new_contacts,
            'new_orders' => $new_orders,
            'products' => $products,
            'articles' => $articles,

            'chart_1_1' => isset($chart_1_1) ? $chart_1_1 : '',
            'chart_1_2' => isset($chart_1_2) ? $chart_1_2 : '',
            'chart_2_1' => $chart_2_1,
        ]);
    }
}
