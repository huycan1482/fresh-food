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
        <div class="col-md-6">
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
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên" value="{{$vendor->name}}">
                        </div>

                        <div class="form-group" id="form-email">
                            <label>Email</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="Nhập Email" value="{{$vendor->email}}">
                        </div>

                        <div class="form-group" id="form-phone">
                            <label>Số điện thoại</label>
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="Nhập SĐT" value="{{$vendor->phone}}">
                        </div>
                        
                        <div class="form-group" id="form-new_image">
                            <label for="exampleInputFile">Ảnh</label>
                            <input type="file" id="new_image" name="new_image">
                            @if ($vendor->image)
                                <img src="{{ asset($vendor->image) }}" width="200" alt="">
                            @endif
                        </div>

                        <div class="form-group" id="form-website">
                            <label>Website</label>
                            <input type="text" class="form-control" id="website" name="website" placeholder="Nhập Website" value="{{$vendor->website}}">
                        </div>

                        <div class="form-group" id="form-address">
                            <label>Địa chỉ</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ" value="{{$vendor->address}}">
                        </div>

                        <div class="form-group" id="form-position">
                            <label for="">Vị trí hiển thị</label>
                            <input type="number" class="form-control" id="position" name="position" value="{{$vendor->position}}" min="0">
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active" {{ ($vendor->is_active == 1) ? 'checked' : '' }}> Trạng thái hiển thị
                            </label>
                        </div>
                        
                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary edit-vendor" data-id="{{ $vendor->id }}">Add</a>
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
        $('.edit-vendor').click(function (e) {

            var model = '/admin/vendor/' + $(this).attr('data-id');

            var data;
            
            data = new FormData();
            data.append('_method', 'PUT');
            data.append('name', $('#name').val());
            data.append('email', $('#email').val());
            data.append('phone', $('#phone').val());
            data.append('new_image', ($('#new_image').val()) ? $('#new_image')[0].files[0] : '');
            data.append('website', $('#website').val());
            data.append('address', $('#address').val());
            data.append('position', $('#position').val());
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            updateModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection