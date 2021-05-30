@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Thêm - Danh mục
        <small><a href="{{ route('admin.category.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin danh mục</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.category.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form>
                    <div class="box-body">
                        
                        <div class="form-group" id="form-name">
                            <label>Tên</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên" value="{{$category->name}}">
                        </div>

                        <div class="form-group" id="form-new_image">
                            <label for="exampleInputFile">Ảnh</label>
                            <input type="file" id="new_image" name="new_image">
                            @if ($category->image)
                                <img src="{{ asset($category->image) }}" width="200" alt="">
                            @endif
                        </div>

                        <div class="form-group" id="form-position">
                            <label for="">Vị trí hiển thị</label>
                            <input type="number" class="form-control" id="position" name="position" value="{{$category->position}}" min="0">
                        </div>

                        <div class="checkbox form-group" id="form-is_hot">
                            <label>
                                <input type="checkbox" value="1" name="is_hot" id="is_hot" {{ ($category->is_hot == 1) ? 'checked' : '' }}> Danh mục Hot ?
                            </label>
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" value="1" name="is_active" id="is_active" {{ ($category->is_active == 1) ? 'checked' : '' }}> Trạng thái hiển thị
                            </label>
                        </div>
                        
                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary edit-cate" data-id="{{ $category->id }}">Edit</a>
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


@section('my_script')
    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> --}}


    <script>
        $('.edit-cate').click(function (e) {

            var model = '/admin/category/' + $(this).attr('data-id');

            var data = new FormData();
            data.append('_method', 'PUT');
            data.append('name', $('#name').val());
            data.append('new_image', ($('#new_image').val()) ? $('#new_image')[0].files[0] : '');
            data.append('position', $('#position').val());
            data.append('is_hot', ( $('#is_hot').is(':checked') ) ? 1 : 0 );
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            updateModel(model, data);
            // e.preventDefault();
            
        });
        
        
    </script>
@endsection