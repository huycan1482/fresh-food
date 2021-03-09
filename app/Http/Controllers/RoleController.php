<?php

namespace App\Http\Controllers;

use App\Permission;
use App\Role;
use App\PermissionsTables;
use App\Table;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Arr;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Role::latest()->paginate(10);


        return view ('admin.role.index', [
            'roles' => $roles,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // dd( $table->permissions()->where([['permissions.id', '=', 1]])->get() );

        $role = Role::findOrFail($id);

        $tables = Table::all();
        $permissions = Permission::all();

        foreach ($tables as $table) {
            $user_roles = DB::table('permissions')
                ->select('permissions.id', 'permissions.name', 'tables.name as table', 'tables.id as table_id')
                ->join('permissions_tables', 'permissions.id', '=', 'permissions_tables.permission_id')
                ->join('tables', 'tables.id', '=', 'permissions_tables.table_id')
                ->join('roles_permissions', 'permissions_tables.id', '=', 'roles_permissions.permissionTable_id')
                ->join('roles', 'roles_permissions.role_id', '=', 'roles.id')
                ->join('users_roles', 'users_roles.role_id', '=', 'roles.id')
                ->join('users', 'users.id', '=', 'users_roles.user_id')
                ->where([['roles.id', '=', $id], ['tables.id', '=', $table->id]])
                ->groupBy('permissions.id', 'permissions.name', 'tables.name', 'tables.id')
                ->get();  

            foreach ($user_roles as $key => $item) {
                $user_permissions [$item->table_id][$item->id] = $item->id;
            }   
        }

        // dd($user_roles, $user_permissions);

        return view ('admin.role.edit', [
            'role' => $role,
            'tables' => $tables,
            'permissions' => $permissions,
            'user_permissions' => $user_permissions,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // dd($request->all(), $request->input('1'));

        // $user_tables = [];

        foreach ($request->all() as $key => $item) {
            $user_tables [] = $key;
            // dd($item);
        }

        $tables = Table::all();
        $permissions = Permission::all();

        // foreach ($tables as $table) {
        //     $user_roles = DB::table('permissions')
        //         ->select('permissions.id', 'permissions.name', 'tables.name as table', 'tables.id as table_id')
        //         ->join('permissions_tables', 'permissions.id', '=', 'permissions_tables.permission_id')
        //         ->join('tables', 'tables.id', '=', 'permissions_tables.table_id')
        //         ->join('roles_permissions', 'permissions_tables.id', '=', 'roles_permissions.permissionTable_id')
        //         ->join('roles', 'roles_permissions.role_id', '=', 'roles.id')
        //         ->join('users_roles', 'users_roles.role_id', '=', 'roles.id')
        //         ->join('users', 'users.id', '=', 'users_roles.user_id')
        //         ->where([['users.id', '=', $id], ['tables.id', '=', $table->id]])
        //         ->groupBy('permissions.id', 'permissions.name', 'tables.name', 'tables.id')
        //         ->get();  

        //     foreach ($user_roles as $key => $item) {
        //         $user_permissions [$item->table_id][$key] = $item->id;
        //     }   
        // }

        $role = Role::find($id);

        foreach ($request->all() as $key => $item) {
            $change_ids = DB::table('permissions_tables')->select('id')
                ->where([['table_id', '=', $key]])
                ->whereIn('permission_id', $item)
                ->get();

            foreach ($change_ids as $val) {
                $arr[] = $val->id;
            }

            $role->permissionsTables()->sync($arr);
        }

        // dd($detach_id, $attach_id, $request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}