<?php

namespace App\Policies;

use App\User;
use App\Role;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\DB;

class RolePolicy
{
    use HandlesAuthorization;

    public function checkUser($table, $permission) 
    {
        return DB::table('users')->select('users.id')
            ->join('users_roles', 'users_roles.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'users_roles.role_id')
            ->join('roles_permissions', 'roles_permissions.role_id', '=', 'roles.id')
            ->join('permissions_tables', 'permissions_tables.id', '=' ,'roles_permissions.permissionTable_id')
            ->join('tables', 'tables.id', '=', 'permissions_tables.table_id')
            ->join('permissions', 'permissions.id', '=', 'permissions_tables.permission_id')
            ->where([['tables.name', '=', $table], ['permissions.name', '=', $permission]])
            ->groupBy('users.id')->get();
    }
    
    /**
     * Determine whether the user can view any roles.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        $table = 'roles';
        $permission = 'view';

        $users_id = $this->checkUser($table, $permission);

        foreach ($users_id as $item) {
            if ($item->id == $user->id ) {
                return true;
            }
        }

        return false;
    }

    /**
     * Determine whether the user can view the role.
     *
     * @param  \App\User  $user
     * @param  \App\Role  $role
     * @return mixed
     */
    public function view(User $user, Role $role)
    {
        
    }

    /**
     * Determine whether the user can create roles.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        $table = 'roles';
        $permission = 'create';

        $users_id = $this->checkUser($table, $permission);

        foreach ($users_id as $item) {
            if ($item->id == $user->id ) {
                return true;
            }
        }

        return false;
    }

    /**
     * Determine whether the user can update the role.
     *
     * @param  \App\User  $user
     * @param  \App\Role  $role
     * @return mixed
     */
    public function update(User $user)
    {
        $table = 'roles';
        $permission = 'update';

        $users_id = $this->checkUser($table, $permission);

        foreach ($users_id as $item) {
            if ($item->id == $user->id ) {
                return true;
            }
        }

        return false;
    }

    /**
     * Determine whether the user can delete the role.
     *
     * @param  \App\User  $user
     * @param  \App\Role  $role
     * @return mixed
     */
    public function delete(User $user)
    {
        $table = 'roles';
        $permission = 'delete';

        $users_id = $this->checkUser($table, $permission);

        foreach ($users_id as $item) {
            if ($item->id == $user->id ) {
                return true;
            }
        }

        return false;
    }

    /**
     * Determine whether the user can restore the role.
     *
     * @param  \App\User  $user
     * @param  \App\Role  $role
     * @return mixed
     */
    public function restore(User $user, Role $role)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the role.
     *
     * @param  \App\User  $user
     * @param  \App\Role  $role
     * @return mixed
     */
    public function forceDelete(User $user, Role $role)
    {
        //
    }
}
