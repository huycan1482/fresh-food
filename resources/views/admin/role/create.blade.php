@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Thêm - Vai trò
        <small><a href="{{ route('admin.role.index') }}">Danh sách</a></small>
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
                        
                        <div class="form-group" id="form-name">
                            <label for="name">Tên vai trò</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên vai trò">
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active"> Trạng thái hiển thị
                            </label>
                        </div>
                        
                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary add-role">Add</a>
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
        $('.add-role').click(function (e) {

            var model = '/admin/role';
            var data;
            data = new FormData();
            data.append('name', $('#name').val());
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            addModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection