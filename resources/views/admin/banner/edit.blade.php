@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Sửa - Ảnh bìa
        <small><a href="{{ route('admin.banner.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin Ảnh bìa</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.banner.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.banner.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form class="">
                    <div class="box-body">
    
                        <div class="form-group" id="form-title">
                            <label for="title">Tiêu đề</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="Nhập tiêu đề" value="{{$banner->title}}">
                        </div>
    
                        <div class="form-group" id="form-new_image">
                            <label for="new_image">Ảnh</label>
                            <input type="file" id="new_image" name="new_image">
                            @if ($banner->image)
                                <img src="{{ asset($banner->image) }}" width="200" alt="">
                            @endif
                        </div>
    
                        <div class="form-group" id="form-url">
                            <label for="url">URL</label>
                            <input type="text" class="form-control" id="url" name="url" placeholder="URL" value="{{$banner->url}}">
                        </div>
    
                        <div class="form-group" id="form-target">
                            <label for="target">Target</label>
                            <select class="form-control" id="target" name="target">
                                <option value="_blank" {{ ($banner->target == '_blank') ? 'selected' : '' }}>Mở tab mới</option>
                                <option value="_self" {{ ($banner->target == '_self') ? 'selected' : '' }}>Trang hiện tại</option>
                            </select>
                        </div>
    
                        <div class="form-group" id="form-position">
                            <label for="position">Vị trí hiển thị</label>
                            <input type="number" class="form-control" id="position" name="position" min="0" placeholder="Vị trí hiển thị" value="{{$banner->position}}">
                        </div>
    
                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active" {{ ($banner->is_active == 1) ? 'checked' : '' }}> Trạng thái hiển thị
                            </label>
                        </div>
                            
                    </div>
                        
                        <!-- /.box-body -->
    
                    <div class="box-footer">
                        <a class="btn btn-primary update-banner" data-id="{{ $banner->id }}">Update</a>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <script>
        $('.add-image').click(function (e) {
            // disabled the submit button
            // $("#btnSubmit").prop("disabled", true);
            // console.log($('form').serialize());

            var model = '/admin/banner/' + $(this).attr('data-id');
            var data;
            data = new FormData();
            data.append('_method', 'PUT');
            data.append('product_id', $('#product_id').val());
            data.append('new_image', ($('#new_image').val()) ? $('#new_image')[0].files[0] : '');
            data.append('url', $('#url').val());
            data.append('position', $('#position').val());
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            updateModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection