<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    public function permissionsTables () 
    {
        return $this->belongsToMany('App\PermissionsTables', 'roles_permissions', 'role_id', 'permissionTable_id')
            ->withPivot('role_id', 'permissionTable_id');
    }
}
