<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    public function tables () 
    {
        return $this->belongsToMany('App\Table', 'permission_table', 'permission_id', 'table_id');
    }
}
