<?php

namespace App\Policies;

use App\User;
use App\ProductImage;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\DB;

class ProductImagePolicy
{
    use HandlesAuthorization;

    public function checkUser($table, $permission) 
    {
        return DB::table('users')->select('users.id')
            ->join('user_role', 'user_role.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'user_role.role_id')
            ->join('role_permission', 'role_permission.role_id', '=', 'roles.id')
            ->join('permission_table', 'permission_table.id', '=' ,'role_permission.permissionTable_id')
            ->join('tables', 'tables.id', '=', 'permission_table.table_id')
            ->join('permissions', 'permissions.id', '=', 'permission_table.permission_id')
            ->where([['tables.name', '=', $table], ['permissions.name', '=', $permission]])
            ->groupBy('users.id')->get();
    }
    
    /**
     * Determine whether the user can view any product images.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        $table = 'images';
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
     * Determine whether the user can view the product image.
     *
     * @param  \App\User  $user
     * @param  \App\ProductImage  $productImage
     * @return mixed
     */
    public function view(User $user, ProductImage $productImage)
    {
        //
    }

    /**
     * Determine whether the user can create product images.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        $table = 'images';
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
     * Determine whether the user can update the product image.
     *
     * @param  \App\User  $user
     * @param  \App\ProductImage  $productImage
     * @return mixed
     */
    public function update(User $user)
    {
        $table = 'images';
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
     * Determine whether the user can delete the product image.
     *
     * @param  \App\User  $user
     * @param  \App\ProductImage  $productImage
     * @return mixed
     */
    public function delete(User $user)
    {
        $table = 'images';
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
     * Determine whether the user can restore the product image.
     *
     * @param  \App\User  $user
     * @param  \App\ProductImage  $productImage
     * @return mixed
     */
    public function restore(User $user, ProductImage $productImage)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the product image.
     *
     * @param  \App\User  $user
     * @param  \App\ProductImage  $productImage
     * @return mixed
     */
    public function forceDelete(User $user, ProductImage $productImage)
    {
        //
    }
}
