<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::latest()->paginate(10);
        return view ('admin.category.index', [
            'categories' => $categories,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('admin.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $request['trueName'] = $request->input('name');
        $request['name'] = Str::slug($request->input('name'));

        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:categories,slug|max:255',
            'image' => 'required|mimes:jpeg,png,jpg,gif,svg,webp',
            'position' => 'integer|boolean', 
            'is_active' => 'integer|boolean',
            'is_hot' => 'integer|boolean',
        ], [
            'name.required' => 'Tên không được để trống',
            'name.unique' => 'Tên bị trùng',
            'image.required' => 'Ảnh không được để trống',
            'image.image' => 'Ảnh không đúng định dạng',
            'image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'is_hot.integer' => 'Sai kiểu dữ liệu',
            'is_hot.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'position.integer' => 'Sai kiểu dữ liệu',
            'position.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
        } else {
            $category = new Category;
            $category->name = $request->input('trueName');
            $category->slug = $request->input('name');

            if ($request->hasFile('image')) {
                // get file
                $file = $request->file('image');
                // get ten
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/category/';
                // upload file
    
                $category->image = $path_upload.$filename;
            }

            $category->position = (int)$request->input('position');
            $category->is_active = (int)$request->input('is_active');
            $category->is_hot = (int)$request->input('is_hot');

            if ($category->save()) {
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
        $category = Category::find($id);
        if (empty($category)) {
            dd(false);
        }
        return view ('admin.category.edit', [
            'category' => $category,
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
        $category = Category::find($id);

        if ( empty($category) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        $request['trueName'] = $request->input('name');
        $request['name'] = Str::slug($request->input('name'));

        // dd($request->all());

        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255|unique:categories,slug,'.$id,
            'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
            'position' => 'integer|boolean', 
            'is_active' => 'integer|boolean',
            'is_hot' => 'integer|boolean',
        ], [
            'name.required' => 'Tên không được để trống',
            'name.unique' => 'Tên bị trùng',
            // 'new_image.required' => 'Ảnh không được để trống',
            'new_image.image' => 'Ảnh không đúng định dạng',
            'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'is_hot.integer' => 'Sai kiểu dữ liệu',
            'is_hot.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'position.integer' => 'Sai kiểu dữ liệu',
            'position.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
        ]); 

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Sửa bản ghi lỗi'], 400);
        } else {
            $category->name = $request->input('trueName');
            $category->slug = $request->input('name');
            if ($request->hasFile('new_image')) {
                // xóa file cũ
                @unlink(public_path($category->image));
                // get file mới
                $file = $request->file('new_image');
                // get tên
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/category/';
                // upload file

                $category->image = $path_upload.$filename;
            }
            $category->position = (int)$request->input('position');
            $category->is_active = (int)$request->input('is_active');
            $category->is_hot = (int)$request->input('is_hot');

            if ($category->save()) {
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
        $category = Category::find($id);
        if ( empty($category) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        if( Category::destroy($id) != 0 ) {
            return response()->json(['mess' => 'Xóa bản ghi thành công'], 200);
        } else {
            return response()->json(['mess' => 'Xóa bản không thành công'], 400);

        }
        
    }
}
