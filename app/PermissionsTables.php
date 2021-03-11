<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PermissionsTables extends Model
{
    protected $table = 'permission_table';

    public function permissionsTables () 
    {
        return $this->belongsToMany('App\Role', 'role_permission', 'permissionTable_id', 'role_id')
            ->withPivot('permissionTable_id', 'role_id');
    }

    public function tables ()
    {
        return $this->belongsTo('App\Table', 'table_id');
    }

    public function permissions ()
    {
        return $this->belongsTo('App\Permission', 'permission_id');
    }

}
