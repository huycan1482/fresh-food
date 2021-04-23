<?php

namespace App\Http\Controllers;

use App\Permission;
use App\Role;
use App\PermissionsTables;
use App\Table;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('viewAny', Role::class) ) {
            $roles = Role::latest()->paginate(10);
            return view ('admin.role.index', [
                'roles' => $roles,
            ]);
        } else {
            return view ('errors.auth');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('admin.role.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = User::findOrFail(Auth::user()->id);

        if ($user->can('create', Role::class)) {
            $request['trueName'] = $request->input('name');
            $request['name'] = Str::slug($request->input('name'));

            $validator = Validator::make($request->all(), [
                'name' => 'required|unique:articles,slug|max:255',
                'is_active' => 'integer|boolean',
            ], [
                'name.required' => 'Tên không được để trống',
                'name.unique' => 'Tên bị trùng',
                'is_active.integer' => 'Sai kiểu dữ liệu',
                'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',

            ]);

            $errs = $validator->errors();

            if ( $validator->fails() ) {
                return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
            } else {
                $role = new Role;
                $role->name = $request->input('trueName');

                $role->is_active = (int)$request->input('is_active');
                $role->user_id = Auth::user()->id;

                if ($role->save()) {
    
                    return response()->json(['mess' => 'Thêm bản ghi thành công'], 201);

                } else {
                    return response()->json(['mess' => 'Thêm bản ghi lỗi'], 500);
                }
            }
            
        }
        return response()->json(['mess' => 'Thêm bản ghi lỗi', 403]);
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
        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('update', Role::class) ) {
            $role = Role::findOrFail($id);

            $tables = Table::all();
            $permissions = Permission::all();
            // $user_permissions = [][];
            foreach ($tables as $table) {
                $user_roles = DB::table('permissions')
                    ->select('permissions.id', 'permissions.name', 'tables.name as table', 'tables.id as table_id')
                    ->join('permission_table', 'permissions.id', '=', 'permission_table.permission_id')
                    ->join('tables', 'tables.id', '=', 'permission_table.table_id')
                    ->join('role_permission', 'permission_table.id', '=', 'role_permission.permissionTable_id')
                    ->join('roles', 'role_permission.role_id', '=', 'roles.id')
                    ->join('user_role', 'user_role.role_id', '=', 'roles.id')
                    ->join('users', 'users.id', '=', 'user_role.user_id')
                    ->where([['roles.id', '=', $id], ['tables.id', '=', $table->id]])
                    ->groupBy('permissions.id', 'permissions.name', 'tables.name', 'tables.id')
                    ->get();  

                foreach ($user_roles as $key => $item) {
                    $user_permissions [$item->table_id][$item->id] = $item->id;
                }   
            }


            return view ('admin.role.edit', [
                'role' => $role,
                'tables' => $tables,
                'permissions' => $permissions,
                'user_permissions' => (isset($user_permissions)) ? $user_permissions : '',
            ]);
        } else {
            return view ('errors.auth');
        }
        
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
        dd($request->all());
        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('update', Role::class) ) {
            foreach ($request->all() as $key => $item) {
                $user_tables [] = $key;
            }    
            // $tables = Table::all();
            // $permissions = Permission::all();
            $role = Role::find($id);
            $arr = [];
            foreach ($request->all() as $key => $item) {
                
                $change_ids = DB::table('permission_table')->select('id')
                    ->where([['table_id', '=', $key]])
                    ->whereIn('permission_id', $item)
                    ->get();
                
                foreach ($change_ids as $val) {
                    $arr[] = [
                        'permissionTable_id' => $val->id,
                        'user_id' => Auth::user()->id,
                        'is_active' => 1,
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                    ];
                }
            }

            $role->permissionsTables()->sync($arr);

            return response()->json(['mess' => 'Sửa bản ghi thành công'], 200);
        } else {
            return response()->json(['mess' => 'Thêm bản ghi lỗi', 403]);
        }
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