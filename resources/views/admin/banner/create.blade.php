@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Thêm - Ảnh bìa
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
                {{-- {{ dd(route('admin.productImage.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.productImage.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form class="">
                    <div class="box-body">

                        <div class="form-group" id="form-title">
                            <label for="title">Tiêu đề</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="Nhập tiêu đề">
                        </div>

                        <div class="form-group" id="form-image">
                            <label for="image">Ảnh</label>
                            <input type="file" id="image">
                        </div>

                        <div class="form-group" id="form-url">
                            <label for="url">URL</label>
                            <input type="text" class="form-control" id="url" name="url" placeholder="URL">
                        </div>

                        <div class="form-group" id="form-target">
                            <label for="target">Target</label>
                            <select class="form-control" id="target" name="target">
                                <option value="_blank">Mở tab mới</option>
                                <option value="_self">Trang hiện tại</option>
                            </select>
                        </div>

                        <div class="form-group" id="form-position">
                            <label for="position">Vị trí hiển thị</label>
                            <input type="number" class="form-control" id="position" name="position" min="0" placeholder="Vị trí hiển thị" value="0">
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active"> Trạng thái hiển thị
                            </label>
                        </div>
                        
                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary add-banner">Add</a>
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
        $('.add-banner').click(function (e) {
            // disabled the submit button
            // $("#btnSubmit").prop("disabled", true);
            // console.log($('form').serialize());

            var model = '/admin/banner';
            var data;
            data = new FormData();
            data.append('title', $('#title').val());
            data.append('image', $('#image')[0].files[0]);
            data.append('url', $('#url').val());
            data.append('target', $('#target').val());
            data.append('position', $('#position').val());
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            addModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection