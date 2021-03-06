@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Thêm - Sản phẩm
        <small><a href="{{ route('admin.product.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin Sản phẩm</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.category.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form class="">
                    <div class="box-body">
                        
                        <div class="form-group" id="form-name">
                            <label for="name">Tên sản phẩm</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên sản phẩm">
                        </div>
                        
                        <div class="form-group" id="form-category_id">
                            <label for="category_id">Loại sản phẩm</label>                          
                            <select class="form-control" id="category_id" name="category_id">
                                <option value="0">-- chọn --</option>
                                @foreach ($categories as $category )
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group" id="form-vendor_id">
                            <label for="vendor_id">Nhà cung cấp</label>                          
                            <select class="form-control" id="vendor_id" name="vendor_id">
                                <option value="0">-- chọn --</option>
                                @foreach ($vendors as $vendor )
                                    <option value="{{ $vendor->id }}">{{ $vendor->name }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group" id="form-image">
                            <label for="exampleInputFile">Ảnh</label>
                            <input type="file" id="image" >
                        </div>

                        <div class="form-group" id="form-number">
                            <label for="number">Số lượng</label>
                            <input type="number" min="0" class="form-control" id="number" name="number" placeholder="Số lượng">
                        </div>

                        <div class="form-group" id="form-price">
                            <label for="price">Giá</label>
                            <input type="number" min="0" class="form-control" id="price" name="price" placeholder="Giá">
                        </div>
                        
                        <div class="form-group" id="form-sale">
                            <label for="sale">Giá giảm</label>
                            <input type="number" min="0" class="form-control" id="sale" name="sale" placeholder="Giá giảm">
                        </div>

                        <div class="form-group" id="form-unit">
                            <label for="unit">Đơn vị tính</label>
                            <input type="text" class="form-control" id="unit" name="unit" placeholder="Đơn vị tính">
                        </div>

                        <div class="form-group" id="form-sku">
                            <label for="sku">Mã giảm giá</label>
                            <input type="text" class="form-control" id="sku" name="sku" placeholder="Đơn vị tính">
                        </div>

                        <div class="form-group" id="form-NSX">
                            <label for="NSX">Ngày sản xuất</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right datepicker" id="NSX" name="NSX" placeholder="DD-MM-YYYY">
                            </div>
                        </div>

                        <div class="form-group" id="form-HSD">
                            <label for="HSD">Hạn sử dụng</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right datepicker" id="HSD" name="HSD" placeholder="DD-MM-YYYY">
                            </div>
                        </div>

                        <div class="form-group" id="form-season_start">
                            <label for="season_start">Mùa vụ bắt đầu</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right datepicker" id="season_start" name="season_start" placeholder="DD-MM-YYYY">
                            </div>
                        </div>

                        <div class="form-group" id="form-season_end">
                            <label for="season_end">Mùa vụ kết thúc</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right datepicker" id="season_end" name="season_end" placeholder="DD-MM-YYYY">
                            </div>
                        </div>

                        <div class="form-group" id="form-summary">
                            <label for="summary">Tóm tắt</label>
                            <textarea id="summary" name="summary" class="form-group"></textarea>
                        </div>

                        <div class="form-group" id="form-description">
                            <label for="description">Mô tả</label>
                            <textarea id="description" name="description" class="form-group rows=" 10" ></textarea>
                        </div>

                        <div class="form-group" id="form-position">
                            <label for="">Vị trí hiển thị</label>
                            <input type="number" class="form-control" id="position" name="position" value="0" min="0">
                        </div>

                        <div class="checkbox form-group" id="form-is_hot">
                            <label>
                                <input type="checkbox" name="is_hot" id="is_hot"> Sản phẩm Hot ?
                            </label>
                        </div>

                        <div class="checkbox form-group" id="form-is_active">
                            <label>
                                <input type="checkbox" name="is_active" id="is_active"> Trạng thái hiển thị
                            </label>
                        </div>
                        
                    </div>
                    
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-primary add-product">Add</a>
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
    CKEDITOR.replace('summary');
    CKEDITOR.replace('description');
</script> 
@endsection

@section('my_script')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <script>
        $(function() {
            //Date picker
            $('.datepicker').datepicker({
                // autoclose: false,
                format: 'dd-mm-yyyy',
                forceParse: false,
            })
        });

        $('.add-product').click(function (e) {
            // disabled the submit button
            // $("#btnSubmit").prop("disabled", true);
            // console.log($('form').serialize());

            // console.log($('#category_id').val());

            var model = '/admin/product';
            var data;
            data = new FormData();
            data.append('name', $('#name').val());
            data.append('category_id', $('#category_id').val());
            data.append('vendor_id', $('#vendor_id').val());
            data.append('image', $('#image')[0].files[0]);
            data.append('number', $('#number').val());
            data.append('price', $('#price').val());
            data.append('unit', $('#unit').val());
            data.append('sale', $('#sale').val());
            data.append('sku', $('#sku').val());
            data.append('NSX', $('#NSX').val());
            data.append('HSD', $('#HSD').val());
            data.append('season_start', $('#season_start').val());
            data.append('season_end', $('#season_end').val());
            data.append('summary', CKEDITOR.instances.summary.getData());
            data.append('description', CKEDITOR.instances.description.getData());
            data.append('position', $('#position').val());
            data.append('is_hot', ( $('#is_hot').is(':checked') ) ? 1 : 0 );
            data.append('is_active', ( $('#is_active').is(':checked') ) ? 1 : 0);

            addModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection