<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use phpDocumentor\Reflection\Types\Integer;

class UserPolicy
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
     * Determine whether the user can view any models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        $table = 'users';
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
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\User  $model
     * @return mixed
     */
    public function view(User $user, User $model)
    {
        //
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        $table = 'users';
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
     * Determine whether the user can update the model.
     *
     * @param  \App\User  $user
     * @param  \App\User  $model
     * @return mixed
     */
    public function update(User $user)
    {
        $table = 'users';
        $permission = 'update';

        $users_id = $this->checkUser($table, $permission);

        foreach ($users_id as $item) {
            if ($item->id == $user->id ) {
                return true;
            }
        }

        return false;
    }

    public function updateProfile(User $currentUser, User $user)
    {
        // dd($user->id === $currentId->id);
        return $user->id === $currentUser->id;
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\User  $model
     * @return mixed
     */
    public function delete(User $user, User $model)
    {
        $table = 'users';
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
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\User  $model
     * @return mixed
     */
    public function restore(User $user, User $model)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\User  $model
     * @return mixed
     */
    public function forceDelete(User $user, User $model)
    {
        //
    }
}
