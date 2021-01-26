<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use App\Vendor;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::latest()->paginate(10);
        $vendors = Vendor::all();
        $categories = Category::all();
        return view ('admin.product.index', [
            'products' => $products,
            'vendors' => $vendors,
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
        $categories = Category::all();
        $vendors = Vendor::all();
        return view ('admin.product.create', [
            'categories' => $categories,
            'vendors' => $vendors,
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
        // dd($request->all());
        $request['trueName'] = $request->input('name');
        $request['name'] = Str::slug($request->input('name'));

        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:products,slug|max:255',
            'category_id' => 'required|exists:categories,id',
            'vendor_id' => 'required|exists:vendors,id',
            'image' => 'required|mimes:jpeg,png,jpg,gif,svg,webp',
            'number' => 'required|integer|min:0',
            'price' => 'required|integer|min:0',
            'sale' => 'nullable|integer|min:0',
            'unit' => 'required',
            // 'sku' => 'nullable',
            'NSX' => 'date_format:"d-m-Y"|required',
            'HSD' => 'date_format:"d-m-Y"|required|after:NSX',
            'season_start' => 'date_format:"d-m-Y"|required',
            'season_end' => 'date_format:"d-m-Y"|required|after:season_start',
            'summary' => 'required',
            'description' => 'required',
            'position' => 'integer|min:0', 
            'is_active' => 'integer|boolean',
            'is_hot' => 'integer|boolean',
        ], [
            'name.required' => 'Tên không được để trống',
            'name.unique' => 'Tên bị trùng',
            'category_id.required' => 'Dữ liệu không được để trống',
            'category_id.exists' => 'Dữ liệu không tồn tại',
            'vendor_id.required' => 'Dữ liệu không được để trống',
            'vendor_id.exists' => 'Dữ liệu không tồn tại',
            'image.required' => 'Ảnh không được để trống',
            'image.image' => 'Ảnh không đúng định dạng',
            'image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'number.required' => 'Dữ liệu không được để trống',
            'number.integer' => 'Sai kiểu dữ liệu',
            'number.min' => 'Giá trị phải lớn hơn 0',
            'price.required' => 'Dữ liệu không được để trống',
            'price.integer' => 'Sai kiểu dữ liệu',
            'price.min' => 'Giá trị phải lớn hơn 0',
            'sale.required' => 'Dữ liệu không được để trống',
            'sale.integer' => 'Sai kiểu dữ liệu',
            'sale.min' => 'Giá trị phải lớn hơn 0',
            'unit.required' => 'Dữ liệu không được để trống',
            'NSX.required' => 'Dữ liệu không được để trống',
            'NSX.date_format' => 'Sai kiểu dữ liệu',
            'HSD.required' => 'Dữ liệu không được để trống',
            'HSD.date_format' => 'Sai kiểu dữ liệu',
            'HSD.after' => 'HSD phải sau NSX',
            'season_start.required' => 'Dữ liệu không được để trống',
            'season_start.date_format' => 'Sai kiểu dữ liệu',
            'season_end.required' => 'Dữ liệu không được để trống',
            'season_end.date_format' => 'Sai kiểu dữ liệu',
            'season_end.after' => 'season_end phải sau season_start',
            'summary.required' => 'Dữ liệu không được để trống',
            'description.required' => 'Dữ liệu không được để trống',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'is_hot.integer' => 'Sai kiểu dữ liệu',
            'is_hot.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'position.integer' => 'Sai kiểu dữ liệu',
            'position.min' => 'Giá trị phải lớn hơn hoặc bằng 0',
        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
        } else {
            $product = new Product;
            $product->name = $request->input('trueName');
            $product->slug = $request->input('name');
            $product->category_id = $request->input('category_id');
            $product->vendor_id = $request->input('vendor_id');

            if ($request->hasFile('image')) {
                // get file
                $file = $request->file('image');
                // get ten
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/product/';
                // upload file
    
                $product->image = $path_upload.$filename;
            }

            $product->number = $request->input('number');
            $product->price = $request->input('price');
            $product->sale = $request->input('sale');
            $product->unit = $request->input('unit');
            $product->sku = $request->input('sku');
            $product->NSX = date('Y-m-d', strtotime($request->input('NSX')));
            $product->HSD = date('Y-m-d', strtotime($request->input('HSD')));
            $product->season_start = date('Y-m-d', strtotime($request->input('season_start')));
            $product->season_end = date('Y-m-d', strtotime($request->input('season_end')));
            $product->summary = $request->input('summary');
            $product->description = $request->input('description');
            $product->position = (int)$request->input('position');
            $product->is_active = (int)$request->input('is_active');
            $product->is_hot = (int)$request->input('is_hot');

            if ($product->save()) {
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
        $product = Product::find($id);
        $vendors = Vendor::all();
        $categories = Category::all();
        return view ('admin.product.edit', [
            'product' => $product,
            'vendors' => $vendors,
            'categories' => $categories,
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
        $product = Product::find($id);

        if ( empty($product) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        // dd($request->all());

        $request['trueName'] = $request->input('name');
        $request['name'] = Str::slug($request->input('name'));

        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255|unique:products,slug,'.$id,
            'category_id' => 'required|exists:categories,id',
            'vendor_id' => 'required|exists:vendors,id',
            'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
            'number' => 'required|integer|min:0',
            'price' => 'required|integer|min:0',
            'sale' => 'nullable|integer|min:0',
            'unit' => 'required',
            // 'sku' => 'nullable',
            'NSX' => 'date_format:"d-m-Y"|required',
            'HSD' => 'date_format:"d-m-Y"|required|after:NSX',
            'season_start' => 'date_format:"d-m-Y"|required',
            'season_end' => 'date_format:"d-m-Y"|required|after:season_start',
            'summary' => 'required',
            'description' => 'required',
            'position' => 'integer|min:0', 
            'is_active' => 'integer|boolean',
            'is_hot' => 'integer|boolean',
        ], [
            'name.required' => 'Tên không được để trống',
            'name.unique' => 'Tên bị trùng',
            'category_id.required' => 'Dữ liệu không được để trống',
            'category_id.exists' => 'Dữ liệu không tồn tại',
            'vendor_id.required' => 'Dữ liệu không được để trống',
            'vendor_id.exists' => 'Dữ liệu không tồn tại',
            'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'number.required' => 'Dữ liệu không được để trống',
            'number.integer' => 'Sai kiểu dữ liệu',
            'number.min' => 'Giá trị phải lớn hơn 0',
            'price.required' => 'Dữ liệu không được để trống',
            'price.integer' => 'Sai kiểu dữ liệu',
            'price.min' => 'Giá trị phải lớn hơn 0',
            'sale.required' => 'Dữ liệu không được để trống',
            'sale.integer' => 'Sai kiểu dữ liệu',
            'sale.min' => 'Giá trị phải lớn hơn 0',
            'unit.required' => 'Dữ liệu không được để trống',
            'NSX.required' => 'Dữ liệu không được để trống',
            'NSX.date_format' => 'Sai kiểu dữ liệu',
            'HSD.required' => 'Dữ liệu không được để trống',
            'HSD.date_format' => 'Sai kiểu dữ liệu',
            'HSD.after' => 'HSD phải sau NSX',
            'season_start.required' => 'Dữ liệu không được để trống',
            'season_start.date_format' => 'Sai kiểu dữ liệu',
            'season_end.required' => 'Dữ liệu không được để trống',
            'season_end.date_format' => 'Sai kiểu dữ liệu',
            'season_end.after' => 'season_end phải sau season_start',
            'summary.required' => 'Dữ liệu không được để trống',
            'description.required' => 'Dữ liệu không được để trống',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'is_hot.integer' => 'Sai kiểu dữ liệu',
            'is_hot.boolean' => 'Yêu cầu dữ liệu là dạng boolean',
            'position.integer' => 'Sai kiểu dữ liệu',
            'position.min' => 'Giá trị phải lớn hơn hoặc bằng 0',
        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Sửa bản ghi lỗi'], 400);
        } else {
            $product->name = $request->input('trueName');
            $product->slug = $request->input('name');
            $product->category_id = $request->input('category_id');
            $product->vendor_id = $request->input('vendor_id');

            if ($request->hasFile('new_image')) {
                // xóa file cũ
                @unlink(public_path($product->image));
                // get file mới
                $file = $request->file('new_image');
                // get tên
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/product/';
                // upload file

                $product->image = $path_upload.$filename;
            }

            $product->number = $request->input('number');
            $product->price = $request->input('price');
            $product->sale = $request->input('sale');
            $product->unit = $request->input('unit');
            $product->sku = $request->input('sku');
            $product->NSX = date('Y-m-d', strtotime($request->input('NSX')));
            $product->HSD = date('Y-m-d', strtotime($request->input('HSD')));
            $product->season_start = date('Y-m-d', strtotime($request->input('season_start')));
            $product->season_end = date('Y-m-d', strtotime($request->input('season_end')));
            $product->summary = $request->input('summary');
            $product->description = $request->input('description');
            $product->position = (int)$request->input('position');
            $product->is_active = (int)$request->input('is_active');
            $product->is_hot = (int)$request->input('is_hot');

            if ($product->save()) {
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
        $product = Product::find($id);
        if ( empty($product) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        if( Product::destroy($id) != 0 ) {
            return response()->json(['mess' => 'Xóa bản ghi thành công'], 200);
        } else {
            return response()->json(['mess' => 'Xóa bản không thành công'], 400);

        }
    }
}
