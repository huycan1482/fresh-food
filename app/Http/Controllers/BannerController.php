<?php

namespace App\Http\Controllers;

use App\Banner;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banners = Banner::latest()->paginate(10);
        return view ('admin.banner.index', [
            'banners' => $banners,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('admin.banner.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request['trueTitle'] = $request->input('title');
        $request['title'] = Str::slug($request->input('title'));

        $validator = Validator::make($request->all(), [
            'title' => 'required|unique:banners,slug|max:255',
            'image' => 'required|mimes:jpeg,png,jpg,gif,svg,webp',
            'url' => 'nullable|url',
            'target' => 'required',
            'position' =>  'required|integer|min:0',
            'is_active' => 'integer|boolean',
        ], [
            'title.required' => 'Tên không được để trống',
            'title.unique' => 'Tên bị trùng',
            'image.required' => 'Ảnh không được để trống',
            'image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'url.url' => 'Dữ liệu không đúng định dạng',
            'target.required' => 'Yêu cầu không được để trống',
            'position.integer' => 'Sai kiểu dữ liệu',
            'position.min' => '',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',

        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
        } else {
            $banner = new Banner;
            $banner->title = $request->input('trueTitle');
            $banner->slug = $request->input('title');

            if ($request->hasFile('image')) {
                // get file
                $file = $request->file('image');
                // get ten
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/banner/';
                // upload file
    
                $banner->image = $path_upload.$filename;
            }

            $banner->url = $request->input('url');
            $banner->target = $request->input('target');
            $banner->position = (int)$request->input('position');
            $banner->is_active = (int)$request->input('is_active');

            if ($banner->save()) {
                // upload file
                $request->file('image')->move($path_upload,$filename);

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
        $banner = Banner::findOrFail($id);
        return view ('admin.banner.edit', [
            'banner' => $banner,
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
        $banner = Banner::find($id);

        if (empty($banner)) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        $request['trueTitle'] = $request->input('title');
        $request['title'] = Str::slug($request->input('title'));

        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255|unique:banners,slug,'.$id,
            'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
            'url' => 'nullable|url',
            'target' => 'required',
            'position' =>  'required|integer|min:0',
            'is_active' => 'integer|boolean',
        ], [
            'title.required' => 'Tên không được để trống',
            'title.unique' => 'Tên bị trùng',
            'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'url.url' => 'Dữ liệu không đúng định dạng',
            'target.required' => 'Yêu cầu không được để trống',
            'position.integer' => 'Sai kiểu dữ liệu',
            'position.min' => 'Giá trị yêu cầu lớn hơn 0',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',

        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
        } else {
            $banner->title = $request->input('trueTitle');
            $banner->slug = $request->input('title');

            if ($request->hasFile('new_image')) {
                // xóa file cũ
                @unlink(public_path($banner->image));
                // get file mới
                $file = $request->file('new_image');
                // get tên
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/banner/';
                // upload file

                $banner->image = $path_upload.$filename;
            }

            $banner->url = $request->input('url');
            $banner->target = $request->input('target');
            $banner->position = (int)$request->input('position');
            $banner->is_active = (int)$request->input('is_active');

            if ($banner->save()) {
                // upload file
                ( $request->hasFile('new_image') ) ? $request->file('new_image')->move($path_upload,$filename) : '';  

                return response()->json(['mess' => 'Thêm bản ghi thành công'], 200);

            } else {
                return response()->json(['mess' => 'Thêm bản ghi lỗi'], 500);
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
        $banner = Banner::find($id);
        if ( empty($banner) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        if( Banner::destroy($id) != 0 ) {
            return response()->json(['mess' => 'Xóa bản ghi thành công'], 200);
        } else {
            return response()->json(['mess' => 'Xóa bản không thành công'], 400);

        }
    }
}
