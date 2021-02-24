<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PermissionsTables extends Model
{
    protected $table = 'permissions_tables';

    public function tables ()
    {
        return $this->belongsTo('App\Table', 'table_id');
    }

    public function permissions ()
    {
        return $this->belongsTo('App\Permission', 'permission_id');
    }

}
