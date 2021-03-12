<?php

namespace App\Http\Controllers;

use App\Mail\MailNotify;
use App\Order;
use App\OrderStatus;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::findOrFail(Auth::user()->id);
        if ($user->can('viewAny', Order::class)) {
            $orders = Order::latest()->paginate(10);
            return view ('admin.order.index', [
                'orders' => $orders,
            ]);
        } else {
            return view ('errors.404'); 
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::findOrFail(Auth::user()->id);
        if ($user->can('update', Order::class)) {
            $order = Order::findOrFail($id);
            $order_status = OrderStatus::all();
            return view ('admin.order.edit', [
                'order' => $order,
                'order_status' => $order_status,
            ]);
        } else {
            return view ('errors.404'); 
        }
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // dd($request->all());
        $order = Order::findOrFail($id);
        // dd($order->status_id);
        $user = User::findOrFail(Auth::user()->id);
        if ($order->status_id != 3 && $order->status_id != 4) {
            if ($user->can('update', Order::class) ) {
                $order = Order::findOrFail($id);
            
                $order->address2 = $request->input('address2');
                $order->note = $request->input('note');
                $order->status_id = $request->input('status_id');
                if ($order->status_id == 3) {
                    Mail::to($order->mail)->send(new MailNotify($order, 'shopping'));
                }
                
                $order->save();
    
                return redirect()->back()->with('suc_msg', "Sửa bản ghi thành công"); 
            } else {
                return redirect()->back()->with('errs_msg', "Sửa bản ghi lỗi"); 
            }
        } else {
            return redirect()->back()->with('errs_msg', "Sửa bản ghi lỗi"); 
        }
        
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
