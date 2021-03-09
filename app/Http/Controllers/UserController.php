<?php

namespace App\Http\Controllers;

use App\Permission;
use App\Role;
use App\Table;
use App\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // dd(Auth::viaRemember());
        $users = User::latest()->paginate(10);
        return view ('admin.user.index', [
            'users' => $users,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('admin.user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $currentUser = User::find(Auth::user()->id);
        
        if ( $currentUser->can('create', User::class) ) {
            $validator = Validator::make($request->all(), [
                'name' => 'required|max:255',
                'email' => 'required|unique:users,email|email',
                'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
                'new_password' => 'nullable',
                'repassword' =>'nullable|same:new_password',
                'is_active' => 'integer|boolean',
            ], [
                'name.required' => 'Tên không được để trống',
                'email.required' => 'Yêu cầu không được để trống',
                'email.email' => 'Không đúng định dạng mail',
                'email.unique' => 'Email bị trùng',
                'new_image.image' => 'Ảnh không đúng định dạng',
                'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
                'repassword.same' => 'Mật khẩu nhập lại phải giống mật khẩu mới',
                'is_active.integer' => 'Sai kiểu dữ liệu',
                'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            ]); 

            $user = new User;
            $user->name = $request->input('name');
            $user->email = $request->input('email');

            if ($request->hasFile('new_image')) {
                // xóa file cũ
                @unlink(public_path($user->image));
                // get file mới
                $file = $request->file('new_image');
                // get tên
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/user/';
                // upload file

                $user->avatar = $path_upload.$filename;
            }

            if (!empty($request->input('new_password'))) {
                $user->password = Hash::make($request->input('new_password'));
            }

            if ($user->save()) {
                ( $request->hasFile('new_image') ) ? $request->file('new_image')->move($path_upload,$filename) : '';              
                return response()->json(['mess' => 'Sửa ghi thành công'], 200);
            } else {
                return response()->json(['mess' => 'Sửa bản ghi lỗi'], 500);
            }

        }
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
        $currentUser = User::find(Auth()->user()->id);
        if ($currentUser->can('update', Article::class)) {
            $user = User::findOrFail($id);
    
            $roles = Role::all();

            foreach ($user->roles as $item) {
                $user_roles [] = [
                    'id' => $item->id,
                    'name' => $item->name,
                ];
            }
            // dd($user_roles, $roles);
            // dd($user_roles[1]['id']);

            $tables = Table::all();
            $permissions = Permission::all();

            foreach ($tables as $table) {
                $test = DB::table('permissions')
                    ->select('permissions.id', 'permissions.name', 'tables.name as table', 'tables.id as table_id')
                    ->join('permissions_tables', 'permissions.id', '=', 'permissions_tables.permission_id')
                    ->join('tables', 'tables.id', '=', 'permissions_tables.table_id')
                    ->join('roles_permissions', 'permissions_tables.id', '=', 'roles_permissions.permissionTable_id')
                    ->join('roles', 'roles_permissions.role_id', '=', 'roles.id')
                    ->join('users_roles', 'users_roles.role_id', '=', 'roles.id')
                    ->join('users', 'users.id', '=', 'users_roles.user_id')
                    ->where([['users.id', '=', $id], ['tables.id', '=', $table->id]])
                    ->groupBy('permissions.id', 'permissions.name', 'tables.name', 'tables.id')
                    ->get();  

                foreach ($test as $key => $item) {
                    $user_permissions [$item->table_id][$item->id] = $item->id;
                }   
            }

            return view ('admin.user.edit', [
                'user' => $user,
                'user_roles' => $user_roles,
                'roles' => $roles,
                'tables' => $tables,
                'permissions' => $permissions,
                'user_permissions' => $user_permissions,
            ]);
        } else {
            return view ('errors.404');
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
        $user = User::find($id);
        $currentUser = User::find(Auth::user()->id);

        if ( empty($user) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        } 
        
        if ( $currentUser->can('updateProfile', $user) ) {
            $validator = Validator::make($request->all(), [
                'name' => 'required|max:255',
                'email' => 'required|email',
                'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
                'new_password' => 'nullable',
                'repassword' =>'nullable|same:new_password',
                // 'is_active' => 'integer|boolean',
            ], [
                'name.required' => 'Tên không được để trống',
                'email.required' => 'Yêu cầu không được để trống',
                'email.email' => 'Không đúng định dạng mail',
                'new_image.image' => 'Ảnh không đúng định dạng',
                'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
                'repassword.same' => 'Mật khẩu nhập lại phải giống mật khẩu mới',
                // 'is_active.integer' => 'Sai kiểu dữ liệu',
                // 'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            ]); 
            
            $errs = $validator->errors();
    
            if ( $validator->fails() ) {
                return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
            } else {
                $user->name = $request->input('name');
                $user->email = $request->input('email');
                if ($request->hasFile('new_image')) {
                    // xóa file cũ
                    @unlink(public_path($user->image));
                    // get file mới
                    $file = $request->file('new_image');
                    // get tên
                    $filename = time().'_'.$file->getClientOriginalName();
                    // duong dan upload
                    $path_upload = 'uploads/user/';
                    // upload file
    
                    $user->avatar = $path_upload.$filename;
                }
    
                if (!empty($request->input('new_password'))) {
                    $user->password = Hash::make($request->input('new_password'));
                }
                    
                if ($user->save()) {
                    ( $request->hasFile('new_image') ) ? $request->file('new_image')->move($path_upload,$filename) : '';              
                    return response()->json(['mess' => 'Sửa ghi thành công'], 200);
                } else {
                    return response()->json(['mess' => 'Sửa bản ghi lỗi'], 500);
                }
            }

        } else if ( $currentUser->can('update', User::class) ) {
            $validator = Validator::make($request->all(), [
                'is_active' => 'integer|boolean',
            ], [
                'is_active.integer' => 'Sai kiểu dữ liệu',
                'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            ]); 

            $errs = $validator->errors();
    
            if ( $validator->fails() ) {
                return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
            } else {

                $arr_role = $request->input('arr_role');

                if (!empty($arr_role)) {
                $user->roles()->sync($arr_role);
                }

                $user->is_active = (int)$request->input('is_active');

                if ($user->save()) {
                    return response()->json(['mess' => 'Sửa ghi thành công'], 200);
                } else {
                    return response()->json(['mess' => 'Sửa bản ghi lỗi'], 500);
                }
            }

        } else {
            return response()->json(['mess' => 'Sửa bản ghi lỗi'], 400);
        }

        // dd($request->all());
        
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
