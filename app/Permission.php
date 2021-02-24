<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    public function tables () 
    {
        return $this->belongsToMany('App\Table', 'permissions_tables', 'table_id', 'permission_id');
    }
}
