@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Sửa - Bài viết
        <small><a href="{{ route('admin.article.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin bài viết</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.category.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form class="">
                    <div class="box-body">
                        
                        <div class="form-group" id="form-title">
                            <label for="title">Tiêu đề</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="Nhập tiêu đề" value="{{$article->title}}">
                        </div>

                        <div class="form-group" id="form-category_id">
                            <label for="category_id">Danh mục</label>
                            <select class="form-control" id="category_id" name="category_id">
                                <option value="0">-- chọn --</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}" {{ ($category->id == $article->category_id) ? 'selected' : '' }} >{{ $category->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        
                        <div class="form-group" id="form-new_image">
                            <label for="new_image">Ảnh</label>
                            <input type="file" id="new_image" name="new_image">
                            @if ($article->image)
                                <img src="{{ asset($article->image) }}" width="500" alt="">
                            @endif
                        </div>

                        <div class="form-group" id="form-summary" >
                            <label for="summary">Tóm tắt</label>
                            <textarea id="summary" name="summary" class="form-group" >{{$article->summary}}</textarea>
                        </div>

                        <div class="form-group" id="form-description">
                            <label for="description">Mô tả</label>
                            <textarea id="description" name="description" class="form-group rows=" >{{$article->description}}</textarea>
                        </div>

                        <div class="checkbox form-group" id="form-is_hot">
                            <label>
                                <input type="checkbox" name="is_hot" id="is_hot" {{ ($article->is_hot == 1) ? 'checked' : '' }}> Bài viết nổi bật
                            </label>
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active" {{ ($article->is_active == 1) ? 'checked' : '' }}> Trạng thái hiển thị
                            </label>
                        </div>
                        
                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary edit-article" data-id="{{ $article->id }}">Update</a>
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
                </form>
            </div>
            <!-- /.box -->
            

        </div>
        <!--/.col (right) -->
    </div>
    <!-- /.row -->
</section>
@endsection

@section('ck_editor')
<script>
    // CKEDITOR.replace('summary');
    CKEDITOR.replace('description', {
        height: '500px'          
    });
    CKEDITOR.replace( 'summary' , {
        // toolbar: [  ['Font'], ['Bold' ]  ],
        // width: '80px',
        height: '500px'          
    });   
</script> 
@endsection

@section('my_script')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <script>
         

        $('.edit-article').click(function (e) {
            // disabled the submit button
            // $("#btnSubmit").prop("disabled", true);
            // console.log($('form').serialize());

            var model = '/admin/article/' + $(this).attr('data-id');
            var data;
            data = new FormData();
            data.append('_method', 'PUT');
            data.append('title', $('#title').val());
            data.append('category_id', $('#category_id').val());
            data.append('new_image', ($('#new_image').val()) ? $('#new_image')[0].files[0] : '');
            data.append('summary', CKEDITOR.instances.summary.getData());
            data.append('description', CKEDITOR.instances.description.getData());
            data.append('is_hot', ( $('#is_hot').is(':checked') ) ? 1 : 0);
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            updateModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection