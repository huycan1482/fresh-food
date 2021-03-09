@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Tạo - Người dùng
        <small><a href="{{ route('admin.user.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin Người dùng</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.user.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.user.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form class="">
                    <div class="box-body">

                        <div class="form-group" id="form-name">
                            <label for="name">Tên người dùng</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên" value="">
                        </div>

                        <div class="form-group" id="form-email">
                            <label for="mail">Email</label>
                            <input type="mail" class="form-control" id="email" name="email" placeholder="Nhập Email" value="">
                        </div>  
    
                        <div class="form-group" id="form-new_image">
                            <label for="new_image">Ảnh</label>
                            <input type="file" id="new_image" name="new_image">
                        </div>
                        
                        <div class="form-group" id="form-new_password">
                            <label for="new_password">Mật khẩu mới **</label>
                            <input type="password" class="form-control" id="new_password" name="new_password" placeholder="Nhập mật khẩu" value="">
                        </div> 

                        <div class="form-group" id="form-repassword">
                            <label for="repassword">Nhập lại mật khẩu mới **</label>
                            <input type="password" class="form-control" id="repassword" name="repassword" placeholder="Nhập lại mật khẩu" value="">
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active" > Trạng thái hiển thị
                            </label>
                        </div>
                    </div>
                        
                        <!-- /.box-body -->
    
                    <div class="box-footer">
                        <a class="btn btn-primary add-user">Create</a>
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
        $('.add-user').click(function (e) {
            // disabled the submit button
            // $("#btnSubmit").prop("disabled", true);
            // console.log($('form').serialize());

            var model = '/admin/user/';
            var data;
            data = new FormData();
            data.append('name', $('#name').val());
            data.append('email', $('#email').val());
            data.append('new_image', ($('#new_image').val()) ? $('#new_image')[0].files[0] : '');
            data.append('new_password', $('#new_password').val());
            data.append('repassword', $('#repassword').val());
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            addModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection