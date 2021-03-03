<?php

namespace App\Http\Controllers;

use App\Permission;
use App\Table;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions = Permission::latest()->paginate(10);
        return view ('admin.permission.index', [
            'permissions' => $permissions,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('admin.permission.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:permissions,name|max:255',
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
            $permission = new Permission;
            $permission->name = $request->input('name');
            $permission->is_active = (int)$request->input('is_active');
            $permission->user_id = Auth::user()->id;

            if ($permission->save()) {

                $tables = Table::where('is_active', 1)->get();
                foreach ($tables as $table) {
                    $arr_tables [] = [
                       'table_id' => $table->id,
                       'action_code' => strtoupper($permission->name),
                       'created_at' => Carbon::now(),
                       'updated_at' => Carbon::now(),
                    ]; 
                }
                
                // $table->permissions->attach($arr_permissions);

                $permission->tables()->attach($arr_tables);

                return response()->json(['mess' => 'Thêm bản ghi thành công'], 200);

            } else {
                return response()->json(['mess' => 'Thêm bản ghi lỗi'], 500);
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
        $permission = Permission::findOrFail($id);
        return view ('admin.permission.edit', [
            'permission' => $permission,
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
        $permission = Permission::find($id);

        if (empty($permission)) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        } else {
            $validator = Validator::make($request->all(), [
                'name' => 'required|unique:permissions,name|max:255',
                'is_active' => 'integer|boolean',
            ], [
                'name.required' => 'Tên không được để trống',
                'name.unique' => 'Tên bị trùng',
                'is_active.integer' => 'Sai kiểu dữ liệu',
                'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            ]);
    
            $errs = $validator->errors();
    
            if ( $validator->fails() ) {
                return response()->json(['errors' => $errs, 'mess' => 'Sửa bản ghi lỗi'], 400);
            } else {

                $permission->name = $request->input('name');
                $permission->is_active = (int)$request->input('is_active');
                $permission->user_id = Auth::user()->id;

                if ($permission->save()) {

                    $tables = Table::where('is_active', 1)->get();
                    foreach ($tables as $table) {
                        $arr_tables [] = [
                        'table_id' => $table->id,
                        'action_code' => strtoupper($permission->name),
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                        ]; 
                    }
                    
                    // $table->permissions->attach($arr_permissions);

                    $permission->tables()->sync($arr_tables);

                    return response()->json(['mess' => 'Sửa bản ghi thành công'], 200);
                } else {
                    return response()->json(['mess' => 'Sửa bản ghi lỗi'], 500);
                }
            }

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
        $permission = Permission::find($id);
        
        if ( empty($permission) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }
    
        if( Permission::destroy($id) != 0 ) {
            return response()->json(['mess' => 'Xóa bản ghi thành công'], 200);
        } else {
            return response()->json(['mess' => 'Xóa bản không thành công'], 400);
        }
    }
}
