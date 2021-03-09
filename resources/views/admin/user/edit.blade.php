@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Sửa - Người dùng
        <small><a href="{{ route('admin.user.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-7">
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

                        @can('updateProfile', $user)
                        <div class="form-group" id="form-name">
                            <label for="name">Tên người dùng</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên" value="{{$user->name}}">
                        </div>

                        <div class="form-group" id="form-email">
                            <label for="mail">Email</label>
                            <input type="mail" class="form-control" id="email" name="email" placeholder="Nhập Email" value="{{$user->email}}">
                        </div>  
    
                        <div class="form-group" id="form-new_image">
                            <label for="new_image">Ảnh</label>
                            <input type="file" id="new_image" name="new_image">
                            @if ($user->avatar)
                                <img src="{{ asset($user->avatar) }}" width="200" alt="">
                            @endif
                        </div>
                        
                        <div class="form-group" id="form-new_password">
                            <label for="new_password">Mật khẩu mới **</label>
                            <input type="password" class="form-control" id="new_password" name="new_password" placeholder="Nhập mật khẩu mới" value="">
                        </div> 

                        <div class="form-group" id="form-repassword">
                            <label for="repassword">Nhập lại mật khẩu mới **</label>
                            <input type="password" class="form-control" id="repassword" name="repassword" placeholder="Nhập lại mật khẩu mới" value="">
                        </div>

                        @elsecan('update', App\User::class)
                        <div class="form-group" id="form-name">
                            <label for="name">Tên người dùng</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên" value="{{$user->name}}" disabled>
                        </div>

                        <div class="form-group" id="form-email">
                            <label for="mail">Email</label>
                            <input type="mail" class="form-control" id="email" name="email" placeholder="Nhập Email" value="{{$user->email}}" disabled>
                        </div>

                        <div class="form-group" id="form-new_image">
                            <label for="new_image">Ảnh</label>
                            @if ($user->avatar)
                                <img src="{{ asset($user->avatar) }}" width="200" alt="">
                            @endif
                        </div>
                        @endcan

                        @can('update', App\User::class)
                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active" {{ ($user->is_active == 1) ? 'checked' : '' }}> Trạng thái hiển thị
                            </label>
                        </div>
                        @endcan
                        
                    </div>
                        
                        <!-- /.box-body -->
    
                    <div class="box-footer">
                        <a class="btn btn-primary update-user" data-id="{{ $user->id }}">Update</a>
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
                </form>
            </div>
            <!-- /.box -->
            
        </div>

        <div class="col-md-5">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin Chức năng của người dùng</h3>
                </div>

                <div class="box-body">
                    <form class="table" id="">
                        <div class="form-group" id="form-user_roles">
                            <label for="">Chọn vai trò cho người dùng</label>
                            @foreach ($roles as $role)
                            {{-- {{dd($role['name'])}} --}}
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="{{ $role->id }}" 
                                    @foreach ($user_roles as $item)
                                    {{ ($item['id'] == $role['id']) ? 'checked' : '' }}
                                    @endforeach
                                    name="{{$role->id}}">
                                    {{$role->name}}
                                </label>
                            </div>
                            @endforeach
                        </div>
                    </form>                   
                </div>

                <div class="box-footer">
                    <a class="btn btn-primary edit-permission" data-id="{{ $role->id }}">Update</a>
                    {{-- <button type="reset" class="btn btn-danger">Reset</button> --}}
                </div>
                 
            </div>

        </div>

    </div>
    <div class="row">
        @foreach ($tables as $table)
        <div class="col-md-3">
            <!-- Horizontal Form -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Quyền trên bảng {{ $table->name }}</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                class="fa fa-minus"></i></button>
                        {{-- <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button> --}}
                    </div>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <div class="box-body">
                    {{-- <form class="table1" id="form-{{ $table->id }}"> --}}
                    <form class="table" id="{{ $table->id }}">
                        <div class="form-group">
                            <label for="">Chọn quyền cho bảng</label>
                            @foreach ($permissions as $permission)
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="{{ $permission->id }}" {{ (isset($user_permissions[$table->id][$permission->id]) == $permission->id) 
                                            ? 'checked' : '' }} name="{{$table->id}}" disabled>
                                    {{$permission->name}}
                                </label>
                            </div>
                            @endforeach
                        </div>
                    </form>

                </div>
                <div class="box-footer">
                    {{-- <button type="submit" class="btn btn-info pull-right">Sign in</button> --}}
                </div>
            </div>

        </div>
        @endforeach
    </div>
    <!-- /.row -->
</section>
@endsection

@section('my_script')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <script>
        $('.update-user').click(function (e) {
            // disabled the submit button
            // $("#btnSubmit").prop("disabled", true);
            // console.log($('form').serialize());

            var model = '/admin/user/' + $(this).attr('data-id');
            var data;
            data = new FormData();
            data.append('_method', 'PUT');
            data.append('name', $('#name').val());
            data.append('email', $('#email').val());
            data.append('new_image', ($('#new_image').val()) ? $('#new_image')[0].files[0] : '');
            data.append('new_password', $('#new_password').val());
            data.append('repassword', $('#repassword').val());
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);
            
            $('#form-user_roles input').each(function ($key, $val) {
                ( $(this).is(':checked') == true ) ? data.append('arr_role[]', $(this).val()) : '';
            });

            // console.log(data.getAll('test'));

            updateModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection