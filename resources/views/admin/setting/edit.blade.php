@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Sửa - Website
        {{-- <small><a href="{{ route('admin.article.index') }}">Danh sách</a></small> --}}
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin Website</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.category.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form class="">
                    <div class="box-body">
                        
                        <div class="form-group" id="form-company">
                            <label for="company">Tên công ty</label>
                            <input type="text" class="form-control" id="company" name="company" placeholder="Nhập tên công ty" value="{{ $setting->company }}">
                        </div>

                        <div class="form-group" id="form-new_image">
                            <label for="new_image">Ảnh</label>
                            <input type="file" id="new_image" name="new_image">
                            @if ($setting->image)
                                <img src="{{ asset($setting->image) }}" width="200" alt="">
                            @endif
                        </div>

                        <div class="form-group" id="form-phone">
                            <label for="phone">SĐT</label>
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="Nhập SĐT" value="{{ $setting->phone }}">
                        </div>

                        <div class="form-group" id="form-hotline">
                            <label for="hotline">Đường dây nóng</label>
                            <input type="text" class="form-control" id="hotline" name="hotline" placeholder="Nhập đường dây nóng" value="{{ $setting->hotline }}">
                        </div>

                        <div class="form-group" id="form-facebook">
                            <label for="address2">Facebook</label>
                            <input type="text" class="form-control" id="facebook" name="facebook" placeholder="Nhập địa chỉ facebook" value="{{ $setting->facebook }}">
                        </div>

                        <div class="form-group" id="form-email">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="Nhập địa chỉ email" value="{{ $setting->email }}">
                        </div>

                        <div class="form-group" id="form-address">
                            <label for="address">Địa chỉ 1</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ" value="{{ $setting->address }}">
                        </div>

                        <div class="form-group" id="form-address2">
                            <label for="address2">Địa chỉ 2</label>
                            <input type="text" class="form-control" id="address2" name="address2" placeholder="Nhập địa chỉ 2" value="{{ $setting->address2 }}">
                        </div>

                        <div class="form-group" id="form-introduce">
                            <label for="introduce">Giới thiệu</label>
                            <textarea id="introduce" name="introduce" class="form-group rows=" 10" >{{ $setting->introduce }}</textarea>
                        </div>

                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary edit-setting" data-id="{{$setting->id}}">Update</a>
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
    CKEDITOR.replace('introduce');
</script> 
@endsection

@section('my_script')
    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> --}}

    <script>
        $('.edit-setting').click(function (e) {;

            var model = '/admin/setting/' + $(this).attr('data-id');
            var data;
            data = new FormData();
            data.append('_method', 'PUT');
            data.append('company', $('#company').val());
            data.append('new_image', ($('#new_image').val()) ? $('#new_image')[0].files[0] : '');
            data.append('phone', $('#phone').val());
            data.append('hotline', $('#hotline').val());
            data.append('facebook', $('#facebook').val());
            data.append('email', $('#email').val());
            data.append('address', $('#address').val());
            data.append('address2', $('#address2').val());
            data.append('introduce', CKEDITOR.instances.introduce.getData());

            updateModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection