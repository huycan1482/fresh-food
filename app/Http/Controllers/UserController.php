<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
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
        $users = User::all();
        return view ('admin.user.index');
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
        $user = User::findOrFail($id);
        return view ('admin.user.edit', [
            'user' => $user,
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
        $user = User::find($id);

        if ( empty($user) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        // dd($request->all());

        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'email' => 'required|email',
            'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
            'new_password' => 'nullable',
            'repassword' =>'nullable|same:new_password',
            'position' => 'integer|boolean', 
            'is_active' => 'integer|boolean',
            'is_hot' => 'integer|boolean',
        ], [
            'name.required' => 'Tên không được để trống',
            'email.required' => 'Yêu cầu không được để trống',
            'email.email' => 'Không đúng định dạng mail',
            'new_image.image' => 'Ảnh không đúng định dạng',
            'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'repassword.same' => 'Mật khẩu nhập lại phải giống mật khẩu mới',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
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
            
            $user->is_active = (int)$request->input('is_active');

            if ($user->save()) {
                ( $request->hasFile('new_image') ) ? $request->file('new_image')->move($path_upload,$filename) : '';              
                return response()->json(['mess' => 'Sửa ghi thành công'], 200);

            } else {
                return response()->json(['mess' => 'Sửa bản ghi lỗi'], 500);
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
        //
    }
}
