@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Thêm - Ảnh sản phẩm
        <small><a href="{{ route('admin.productImage.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin Ảnh Sản phẩm</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.productImage.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.productImage.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form class="">
                    <div class="box-body">

                        <div class="form-group" id="form-product_id">
                            <label for="product_id">Sản phẩm</label>
                            <select class="form-control" id="product_id" name="product_id">
                                <option value="0">-- chọn --</option>
                                @foreach ($products as $product)
                                    <option value="{{ $product->id }}">{{ $product->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group" id="form-image">
                            <label for="image">Ảnh</label>
                            <input type="file" id="image">
                        </div>

                        <div class="form-group" id="form-url">
                            <label for="url">URL</label>
                            <input type="text" class="form-control" id="url" name="url" placeholder="URL">
                        </div>

                        <div class="form-group" id="form-position">
                            <label for="position">Vị trí hiển thị</label>
                            <input type="number" class="form-control" id="position" name="position" min="0" placeholder="Vị trí hiển thị">
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active"> Trạng thái hiển thị
                            </label>
                        </div>
                        
                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary add-image">Add</a>
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

            var model = '/admin/productImage';
            var data;
            data = new FormData();
            data.append('product_id', $('#product_id').val());
            data.append('image', $('#image')[0].files[0]);
            data.append('url', $('#url').val());
            data.append('position', $('#position').val());
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            addModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection