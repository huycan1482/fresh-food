<?php

namespace App\Http\Controllers;

use App\Permission;
use App\Table;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class TableController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('viewAny', Table::class) ) {
            $tables = Table::latest()->paginate(10);
            return view ('admin.table.index', [
                'tables' => $tables
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
        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('create', Table::class) ) {
            return view ('admin.table.create');
        } else {
            return view ('errors.auth');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $request['trueName'] = $request->input('name');
        // $request['name'] = Str::slug($request->input('name'));
        $currentUser = User::findOrFail(Auth()->user()->id);

        if ( $currentUser->can('create', Table::class) ) {
            $validator = Validator::make($request->all(), [
                'name' => 'required|unique:tables,name|max:255',
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
                $table = new Table;
                $table->name = $request->input('name');
                $table->is_active = (int)$request->input('is_active');
                $table->user_id = Auth::user()->id;
    
                if ($table->save()) {
    
                    $permissions = Permission::where('is_active', 1)->get();
                    foreach ($permissions as $permission) {
                        $arr_permissions [] = [
                           'permission_id' => $permission->id,
                           'action_code' => strtoupper($permission->name),
                           'created_at' => Carbon::now(),
                           'updated_at' => Carbon::now(),
                        ]; 
                    }
                    
                    $table->permissions()->attach($arr_permissions);
    
                    return response()->json(['mess' => 'Thêm bản ghi thành công'], 200);
    
                } else {
                    return response()->json(['mess' => 'Thêm bản ghi lỗi'], 500);
                }
            }
        } else {
            return response()->json(['mess' => 'Thêm bản ghi lỗi', 403]);
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
        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('update', Table::class) ) {
            $table = Table::find($id);
            if (empty($table)) {
                dd(false);
            }
            return view ('admin.table.edit', [
                'table' => $table,
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
        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('update', Table::class) ) {
            $table = Table::find($id);

            if (empty($table)) {
                return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
            } else {
                $validator = Validator::make($request->all(), [
                    'name' => 'required|unique:tables,name|max:255',
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

                    $table->name = $request->input('name');
                    $table->is_active = (int)$request->input('is_active');
                    $table->user_id = Auth::user()->id;

                    if ($table->save()) {

                        $permissions = Permission::where('is_active', 1)->get();
                        foreach ($permissions as $permission) {
                            $arr_permissions [] = [
                            'permission_id' => $permission->id,
                            'action_code' => strtoupper($permission->name),
                            'created_at' => Carbon::now(),
                            'updated_at' => Carbon::now(),
                            ]; 
                        }
                        
                        $table->permissions()->sync($arr_permissions);

                        return response()->json(['mess' => 'Sửa bản ghi thành công'], 200);
                    } else {
                        return response()->json(['mess' => 'Sửa bản ghi lỗi'], 500);
                    }
                }
            }
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
        $currentUser = User::findOrFail(Auth::user()->id);

        if ($currentUser->can('destroy', Table::class)) {
            $table = Table::find($id);
            if ( empty($article) ) {
                return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
            }
        
            if( Table::destroy($id) != 0 ) {
                return response()->json(['mess' => 'Xóa bản ghi thành công'], 200);
            } else {
                return response()->json(['mess' => 'Xóa bản không thành công'], 400);
            }
        } else {
            return response()->json(['mess' => 'Thêm bản ghi lỗi', 403]);
        }
        
    }
}
