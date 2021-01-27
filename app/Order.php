<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function orderDetails ()
    {
        return $this->hasMany('App\OrderDetail', 'order_id', 'id');
    }

    public function orderStatus ()
    {
        return $this->belongsTo('App\OrderStatus', 'status_id', 'id');
    }
}
