@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Thêm - Nhà cung cấp
        <small><a href="{{ route('admin.vendor.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin Nhà cung cấp</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.category.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form class="">
                    <div class="box-body">
                        
                        <div class="form-group" id="form-name">
                            <label>Tên</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên">
                        </div>

                        <div class="form-group" id="form-email">
                            <label>Email</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="Nhập Email">
                        </div>

                        <div class="form-group" id="form-phone">
                            <label>Số điện thoại</label>
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="Nhập SĐT">
                        </div>
                        
                        <div class="form-group" id="form-image">
                            <label for="exampleInputFile">Ảnh</label>
                            <input type="file" id="image" >
                        </div>

                        <div class="form-group" id="form-website">
                            <label>Website</label>
                            <input type="text" class="form-control" id="website" name="website" placeholder="Nhập Website">
                        </div>

                        <div class="form-group" id="form-address">
                            <label>Địa chỉ</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ">
                        </div>

                        <div class="form-group" id="form-position">
                            <label for="">Vị trí hiển thị</label>
                            <input type="number" class="form-control" id="position" name="position" value="0" min="0">
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active"> Trạng thái hiển thị
                            </label>
                        </div>
                        
                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary add-vendor">Add</a>
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
        $('.add-vendor').click(function (e) {

            var model = '/admin/vendor';
            var data;
            data = new FormData();
            data.append('name', $('#name').val());
            data.append('email', $('#email').val());
            data.append('phone', $('#phone').val());
            data.append('image', $('#image')[0].files[0]);
            data.append('website', $('#website').val());
            data.append('address', $('#address').val());
            data.append('position', $('#position').val());
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            addModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection