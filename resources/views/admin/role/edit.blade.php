@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Sửa - Vai trò
        <small><a href="{{ route('admin.role.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="row">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Thông tin vai trò</h3>
                        </div>
                        <div class="box-body">
                            <form role="form">
                                <div class="form-group" id="form-role">
                                    <label for="title">Vai trò</label>
                                    <input type="text" class="form-control" id="name" name="name"
                                        placeholder="Nhập vai trò" value="{{$role->name}}">
                                </div>
                                <div class="checkbox form-group" id="form-is_active">
                                    <label>
                                        <input type="checkbox" name="is_active" id="is_active"
                                            {{ ($role->is_active == 1) ? 'checked' : '' }}> Trạng thái kích hoạt
                                    </label>
                                </div>
                            </form>
                        </div>
                        <div class="box-footer">
                            <a class="btn btn-primary edit-role" data-id="{{ $role->id }}">Update</a>
                            <button type="reset" class="btn btn-danger">Reset</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <h3 class="box-title">Thống kê quyền trên các bảng</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i></button>
                                {{-- <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button> --}}
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">

                        </div>
                        <div class="box-footer">
                            <a class="btn btn-primary edit-permission" data-id="{{ $role->id }}">Update</a>
                            <button type="reset" class="btn btn-danger">Reset</button>
                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!--/.col (right) -->
    </div>
    <div class="row">
        @foreach ($tables as $table)
        <div class="col-md-3">
            <!-- Horizontal Form -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Bảng {{ $table->name }}</h3>
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
                                            ? 'checked' : '' }} name="{{$table->id}}">
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
    $('.edit-role').click(function (e) {
        // disabled the submit button
        // $("#btnSubmit").prop("disabled", true);
        // console.log($('form').serialize());

        var model = '/admin/role/' + $(this).attr('data-id');
        var data;
        data = new FormData();
        data.append('_method', 'PUT');
        data.append('name', $('#name').val());
        data.append('is_active', ($('#is_active').is(':checked')) ? 1 : 0);

        updateModel(model, data);

        e.preventDefault();

    });

    $('.edit-permission').click(function (e) {
        var url = '/admin/role/' + $(this).attr('data-id');
        // console.log($('.permission input'));
        var val = new Object();
        $(".table").each(function($key, $value){
            var arr = [];
            // var formdata = $(this).serializeArray();
            $( $(this).serializeArray() ).each(function(index, obj){
                arr.push(obj.value);
            });

            // console.log($(this).attr('id'));

            val[$(this).attr('id')] = arr;            
        });

        // console.log(val, JSON.stringify(val));
        console.log(val);

        $.ajax({
            type: "PUT",
            url: url,
            data: val,
            dataType: "json",
            success: function (response) {
                
            }
        });


    });

</script>
@endsection
