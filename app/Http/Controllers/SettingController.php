<?php

namespace App\Http\Controllers;

use App\Setting;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('viewAny', Setting::class) ) {
            $setting = Setting::first();
            return view ('admin.setting.edit', [
                'setting' => $setting,
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

        $currentUser = User::findOrFail(Auth()->user()->id);
        if ( $currentUser->can('create', Setting::class) ) {
            $setting = new Setting;
            $setting->company = $request->input('company');
            $setting->phone = $request->input('phone');
            $setting->hotline = $request->input('hotline');
            $setting->address = $request->input('address');
            $setting->address2 = $request->input('address2');
            $setting->facebook = $request->input('facebook');
            $setting->email = $request->input('email');
            $setting->introduce = $request->input('introduce');
            $setting->user_id = Auth::user()->id;

            if ($request->hasFile('new_image')) {
                // xóa file cũ
                @unlink(public_path($setting->image));
                // get file mới
                $file = $request->file('new_image');
                // get tên
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/setting/';
                // upload file
                $request->file('new_image')->move($path_upload,$filename);

                $setting->image = $path_upload.$filename;
            }

            $setting->save();

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
        if ( $currentUser->can('update', Setting::class) ) {
            $setting = Setting::findOrFail($id);
            return view ('admin.setting.edit', [
                'setting' => $setting,
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
        if ( $currentUser->can('update', Setting::class) ) {
            $setting = Setting::find($id);

            if (empty($setting)) {
                return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
            }

            $validator = Validator::make($request->all(), [
                'company' => 'required|max:255|unique:settings,company,'.$id,
                'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
                'email' => 'required|email',
                'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
                'hotline' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
                'facebook' => 'required|url',
                'address' => 'required',
                'address2' => 'nullable',
                'introduce' => 'required',
            ], [
                'company.required' => 'Tên không được để trống',
                'company.unique' => 'Tên bị trùng',
                'email.required' => 'Yêu cầu không để trống',
                'email.email' => 'Dữ liệu không đúng định dạng',
                'phone.required' => 'Số điện thoại không được để trống',
                'phone.regex' => 'Số điện thoại không đúng định dạng',
                'hotline.required' => 'Số điện thoại không được để trống',
                'hotline.regex' => 'Số điện thoại không đúng định dạng',
                'facebook.required' => 'Yêu cầu không được để trống',
                'facebook.url' => 'Dữ liệu không đúng định dạng',
                'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
                'address.required' => 'Yêu cầu không để trống',
                'introduce.required' => 'Yêu cầu không để trống',
            ]);

            $errs = $validator->errors();

            if ( $validator->fails() ) {
                return response()->json(['errors' => $errs, 'mess' => 'Sửa bản ghi lỗi'], 400);
            } else {

                $setting->company = $request->input('company');
                $setting->phone = $request->input('phone');
                $setting->hotline = $request->input('hotline');
                $setting->address = $request->input('address');
                $setting->address2 = $request->input('address2');
                $setting->facebook = $request->input('facebook');
                $setting->email = $request->input('email');
                $setting->introduce = $request->input('introduce');
                $setting->user_id = Auth::user()->id;
        
                if ($request->hasFile('new_image')) {
                    // xóa file cũ
                    @unlink(public_path($setting->image));
                    // get file mới
                    $file = $request->file('new_image');
                    // get tên
                    $filename = time().'_'.$file->getClientOriginalName();
                    // duong dan upload
                    $path_upload = 'uploads/setting/';
                    // upload file

                    $setting->image = $path_upload.$filename;
                }


                if ($setting->save()) {
                    // upload file
                    ( $request->hasFile('new_image') ) ? $request->file('new_image')->move($path_upload,$filename) : '';  

                    return response()->json(['mess' => 'Sửa bản ghi thành công'], 200);

                } else {
                    return response()->json(['mess' => 'Sửa bản ghi lỗi'], 500);
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
        //
    }
}
