<?php

namespace App\Http\Controllers;

use App\User;
use App\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;

class VendorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $currentUser = User::findOrFail(Auth::user()->id);

        if ($currentUser->can('viewAny', Vendor::class)) {
            $vendors = Vendor::latest()->paginate(10);
            return view ('admin.vendor.index', [
                'vendors' => $vendors,
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
        $currentUser = User::findOrFail(Auth::user()->id);

        if ($currentUser->can('create', Vendor::class)) {
            return view ('admin.vendor.create');
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
        $currentUser = User::findOrFail(Auth::user()->id);

        if ($currentUser->can('create', Vendor::class)) {
            $request['trueName'] = $request->input('name');
            $request['name'] = Str::slug($request->input('name'));

            $validator = Validator::make($request->all(), [
                'name' => 'required|unique:vendors,slug|max:255',
                'email' => 'required|unique:vendors,email|email',
                'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/',
                'image' => 'required|mimes:jpeg,png,jpg,gif,svg,webp',
                'website' => 'nullable|url|unique:vendors,website',
                'address' => 'required|unique:vendors,address',
                'position' => 'integer|min:0', 
                'is_active' => 'integer|boolean',
            ], [
                'name.required' => 'Tên không được để trống',
                'name.unique' => 'Tên bị trùng',
                'email.required' => 'Tên không được để trống',
                'email.unique' => 'Email bị trùng',
                'phone.required' => 'Số điện thoại không được để trống',
                'phone.regex' => 'Số điện thoại không đúng định dạng',
                'image.required' => 'Ảnh không được để trống',
                // 'image.image' => 'Ảnh không đúng định dạng',
                'image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
                'website.url' => 'Website không đúng định dạng',
                'website.unique' => 'Website bị trùng',
                'address.required' => 'Địa chỉ không được để trống',
                'address.unique' => 'Địa chỉ bị trùng',
                'is_active.integer' => 'Sai kiểu dữ liệu',
                'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
                
                'position.min' => 'Dữ liệu không được nhỏ hơn 0',
                'position.integer' => 'Sai kiểu dữ liệu',
            ]);

            $errs = $validator->errors();

            if ( $validator->fails() ) {
                return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
            } else {
                $vendor = new Vendor;
                $vendor->name = $request->input('trueName');
                $vendor->slug = $request->input('name');
                $vendor->email = $request->input('email');
                $vendor->phone = $request->input('phone');

                if ($request->hasFile('image')) {
                    // get file
                    $file = $request->file('image');
                    // get ten
                    $filename = time().'_'.$file->getClientOriginalName();
                    // duong dan upload
                    $path_upload = 'uploads/vendor/';
                    // upload file
        
                    $vendor->image = $path_upload.$filename;
                }

                $vendor->website = $request->input('website');
                $vendor->address = $request->input('address');
                $vendor->position = (int)$request->input('position');
                $vendor->is_active = (int)$request->input('is_active');
                // $vendor->is_hot = (int)$request->input('is_hot');

                if ($vendor->save()) {
                    // upload file
                    $request->file('image')->move($path_upload,$filename);

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
        $currentUser = User::findOrFail(Auth::user()->id);

        if ($currentUser->can('update', Vendor::class)) {
            $vendor = Vendor::findOrFail($id);

            return view ('admin.vendor.edit', [
                'vendor' => $vendor,
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
        $currentUser = User::findOrFail(Auth::user()->id);

        if ($currentUser->can('update', Vendor::class)) {
            $vendor = Vendor::find($id);

            if (empty($vendor)) {
                return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
            }

            $request['trueName'] = $request->input('name');
            $request['name'] = Str::slug($request->input('name'));

            $validator = Validator::make($request->all(), [
                'name' => 'required|max:255|unique:vendors,slug,'.$id,
                'email' => 'required|email|unique:vendors,email,'.$id,
                'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/',
                'new_image' => 'required|mimes:jpeg,png,jpg,gif,svg,webp',
                'website' => 'nullable|url|unique:vendors,website,'.$id,
                'address' => 'required|unique:vendors,address,'.$id,
                'position' => 'integer|min:0', 
                'is_active' => 'integer|boolean',
            ], [
                'name.required' => 'Tên không được để trống',
                'name.unique' => 'Tên bị trùng',
                'email.required' => 'Tên không được để trống',
                'email.unique' => 'Email bị trùng',
                'phone.required' => 'Số điện thoại không được để trống',
                'phone.regex' => 'Số điện thoại không đúng định dạng',
                'new_image.required' => 'Ảnh không được để trống',
                // 'image.image' => 'Ảnh không đúng định dạng',
                'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
                'website.url' => 'Website không đúng định dạng',
                'website.unique' => 'Website bị trùng',
                'address.required' => 'Địa chỉ không được để trống',
                'address.unique' => 'Địa chỉ bị trùng',
                'is_active.integer' => 'Sai kiểu dữ liệu',
                'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
                'position.integer' => 'Sai kiểu dữ liệu',
                'position.min' => 'Dữ liệu không được nhỏ hơn 0',
            ]);

            $errs = $validator->errors();

            if ( $validator->fails() ) {
                return response()->json(['errors' => $errs, 'mess' => 'Sửa bản ghi lỗi'], 400);
            } else {
                $vendor->name = $request->input('trueName');
                $vendor->slug = $request->input('name');
                $vendor->email = $request->input('email');
                $vendor->phone = $request->input('phone');
                if ($request->hasFile('new_image')) {
                    // xóa file cũ
                    @unlink(public_path($vendor->image));
                    // get file mới
                    $file = $request->file('new_image');
                    // get tên
                    $filename = time().'_'.$file->getClientOriginalName();
                    // duong dan upload
                    $path_upload = 'uploads/vendor/';
                    // upload file

                    $vendor->image = $path_upload.$filename;
                }
                
                $vendor->website = $request->input('website');
                $vendor->address = $request->input('address');
                $vendor->position = (int)$request->input('position');
                $vendor->is_active = (int)$request->input('is_active');

                if ($vendor->save()) {
                    // upload file
                    ( $request->hasFile('new_image') ) ? $request->file('new_image')->move($path_upload,$filename) : '';  

                    return response()->json(['mess' => 'Sửa bản ghi thành công'], 200);

                } else {
                    return response()->json(['mess' => 'Sửa bản ghi lỗi'], 500);
                }
            }
        } else {
            return view ('errors.auth');
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

        if ($currentUser->can('delete', Vendor::class)) {
            $vendor = Vendor::find($id);
            if ( empty($vendor) ) {
                return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
            }

            if( Vendor::destroy($id) != 0 ) {
                return response()->json(['mess' => 'Xóa bản ghi thành công'], 200);
            } else {
                return response()->json(['mess' => 'Xóa bản không thành công'], 400);

            }
        } else {
            return view ('errors.auth');
        }   
        
    }
}
