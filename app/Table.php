<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Table extends Model
{
    public function permissions () 
    {
        return $this->belongsToMany('App\Permission', 'permissions_tables', 'permission_id', 'table_id');
    }
}
