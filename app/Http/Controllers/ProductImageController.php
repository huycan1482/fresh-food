<?php

namespace App\Http\Controllers;

use App\Product;
use App\ProductImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProductImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productImages = ProductImage::latest()->paginate(10);
        $products = Product::all();
        // dd($productImages);
        return view ('admin.productImage.index', [
            'productImages' => $productImages,
            'products' => $products,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = Product::all();
        return view ('admin.productImage.create', [
            'products' => $products,
        ]);
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
            'product_id' => 'required|exists:products,id',
            'image' => 'required|mimes:jpeg,png,jpg,gif,svg,webp',
            'url' => 'nullable|url',
            'position' => 'nullable|integer|min:0', 
            'is_active' => 'integer|boolean',
        ], [
            'product_id.required' => 'Dữ liệu không được để trống',
            'product_id.exists' => 'Dữ liệu không tồn tại',
            'image.required' => 'Ảnh không được để trống',
            'image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'url.url' => 'Không đúng định dạng',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'position.integer' => 'Sai kiểu dữ liệu',
            'position.min' => 'Giá trị phải lớn hơn hoặc bằng 0',
        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Sửa bản ghi lỗi'], 400);
        } else {
            $productImage = new ProductImage;
            $productImage->product_id = $request->input('product_id');
            if ($request->hasFile('image')) {
                // get file mới
                $file = $request->file('image');
                // get tên
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/productImage/';
                // upload file

                $productImage->image = $path_upload.$filename;
            }
            $productImage->url = $request->input('url'); 
            $productImage->position = (int)$request->input('position');
            $productImage->is_active = (int)$request->input('is_active');

            if ($productImage->save()) {
                // upload file
                $request->file('image')->move($path_upload,$filename);

                return response()->json(['mess' => 'Sửa bản ghi thành công'], 200);

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
        $productImage = ProductImage::findOrFail($id);
        $products = Product::all();
        return view ('admin.productImage.edit', [
            'productImage' => $productImage,
            'products' => $products,
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
        $productImage = ProductImage::find($id);

        if (empty($productImage)) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        $validator = Validator::make($request->all(), [
            'product_id' => 'required|exists:products,id',
            'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
            'url' => 'nullable|url',
            'position' => 'nullable|integer|min:0', 
            'is_active' => 'integer|boolean',
        ], [
            'product_id.required' => 'Dữ liệu không được để trống',
            'product_id.exists' => 'Dữ liệu không tồn tại',
            'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'url.url' => 'Không đúng định dạng',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'position.integer' => 'Sai kiểu dữ liệu',
            'position.min' => 'Giá trị phải lớn hơn hoặc bằng 0',
        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Sửa bản ghi lỗi'], 400);
        } else {
            $productImage->product_id = $request->input('product_id');
            if ($request->hasFile('new_image')) {
                // xóa file cũ
                @unlink(public_path($productImage->image));
                // get file mới
                $file = $request->file('new_image');
                // get tên
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/productImage/';
                // upload file

                $productImage->image = $path_upload.$filename;
            }
            $productImage->url = $request->input('url'); 
            $productImage->position = (int)$request->input('position');
            $productImage->is_active = (int)$request->input('is_active');

            if ($productImage->save()) {
                // upload file
                ( $request->hasFile('new_image') ) ? $request->file('new_image')->move($path_upload,$filename) : '';  

                return response()->json(['mess' => 'Sửa bản ghi thành công'], 200);

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
        $productImage = ProductImage::find($id);
        if ( empty($productImage) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        if( ProductImage::destroy($id) != 0 ) {
            return response()->json(['mess' => 'Xóa bản ghi thành công'], 200);
        } else {
            return response()->json(['mess' => 'Xóa bản không thành công'], 400);

        }
    }
}
