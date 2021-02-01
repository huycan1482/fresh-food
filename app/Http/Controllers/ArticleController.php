<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $articles = Article::latest()->paginate(10);
        $categories = Category::all();
        return view ('admin.article.index', [
            'articles' => $articles,
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
        return view ('admin.article.create', [
            'categories' => $categories,
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
        $request['trueTitle'] = $request->input('title');
        $request['title'] = Str::slug($request->input('title'));

        $validator = Validator::make($request->all(), [
            'title' => 'required|unique:articles,slug|max:255',
            'category_id' => 'required|exists:categories,id',
            'image' => 'required|mimes:jpeg,png,jpg,gif,svg,webp',
            'summary' => 'required',
            'description' => 'required',
            'is_active' => 'integer|boolean',
        ], [
            'name.required' => 'Tên không được để trống',
            'name.unique' => 'Tên bị trùng',
            'category_id.required' => 'Tên không được để trống',
            'category_id.exists' => 'Dữ liệu không tồn tại',
            'phone.required' => 'Số điện thoại không được để trống',
            'phone.regex' => 'Số điện thoại không đúng định dạng',
            'image.required' => 'Ảnh không được để trống',
            // 'image.image' => 'Ảnh không đúng định dạng',
            'image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'summary.required' => 'Yêu cầu không để trống',
            'description.required' => 'Yêu cầu không để trống',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',

        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Thêm bản ghi lỗi'], 400);
        } else {
            $article = new Article;
            $article->name = $request->input('trueTitle');
            $article->slug = $request->input('title');
            $article->category_id = $request->input('category_id');

            if ($request->hasFile('image')) {
                // get file
                $file = $request->file('image');
                // get ten
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/article/';
                // upload file
    
                $article->image = $path_upload.$filename;
            }

            $article->summary = $request->input('summary');
            $article->description = $request->input('description');
            $article->is_active = (int)$request->input('is_active');

            if ($article->save()) {
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
        $article = Article::findOrFail($id);
        $categories = Category::all();
        return view ('admin.article.edit', [
            'article' => $article,
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
        $article = Article::find($id);

        if (empty($article)) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        $request['trueTitle'] = $request->input('title');
        $request['title'] = Str::slug($request->input('title'));

        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255|unique:articles,slug,'.$id,
            'category_id' => 'required|exists:categories,id',
            'new_image' => 'nullable|mimes:jpeg,png,jpg,gif,svg,webp',
            'summary' => 'required',
            'description' => 'required',
            'is_active' => 'integer|boolean',
        ], [
            'name.required' => 'Tên không được để trống',
            'name.unique' => 'Tên bị trùng',
            'category_id.required' => 'Tên không được để trống',
            'category_id.exists' => 'Dữ liệu không tồn tại',
            'phone.required' => 'Số điện thoại không được để trống',
            'phone.regex' => 'Số điện thoại không đúng định dạng',
            'new_image.mimes' => 'Ảnh không đúng định dạng, ảnh phải có đuôi jpeg,png,jpg,gif,svg,webp',
            'summary.required' => 'Yêu cầu không để trống',
            'description.required' => 'Yêu cầu không để trống',
            'is_active.integer' => 'Sai kiểu dữ liệu',
            'is_active.boolean' => 'Yêu cầu dữ liệu là dạng boolean',

        ]);

        $errs = $validator->errors();

        if ( $validator->fails() ) {
            return response()->json(['errors' => $errs, 'mess' => 'Sửa bản ghi lỗi'], 400);
        } else {
            $article->name = $request->input('trueTitle');
            $article->slug = $request->input('title');
            $article->category_id = $request->input('category_id');

            if ($request->hasFile('new_image')) {
                // xóa file cũ
                @unlink(public_path($article->image));
                // get file mới
                $file = $request->file('new_image');
                // get tên
                $filename = time().'_'.$file->getClientOriginalName();
                // duong dan upload
                $path_upload = 'uploads/article/';
                // upload file

                $article->image = $path_upload.$filename;
            }
            
            $article->summary = $request->input('summary');
            $article->description = $request->input('description');
            $article->is_active = (int)$request->input('is_active');

            if ($article->save()) {
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
        $article = Article::find($id);
        if ( empty($article) ) {
            return response()->json(['mess' => 'Bản ghi không tồn tại'], 400);
        }

        if( Article::destroy($id) != 0 ) {
            return response()->json(['mess' => 'Xóa bản ghi thành công'], 200);
        } else {
            return response()->json(['mess' => 'Xóa bản không thành công'], 400);

        }
    }
}
