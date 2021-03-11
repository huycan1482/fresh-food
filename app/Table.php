<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Table extends Model
{
    public function permissions () 
    {
        return $this->belongsToMany('App\Permission', 'permission_table', 'table_id', 'permission_id')
            ->withPivot('table_id', 'permission_id');
    }
}
