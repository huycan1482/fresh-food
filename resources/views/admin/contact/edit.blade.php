
@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <h1>
        Sửa - Liên hệ
        <small><a href="{{ route('admin.contact.index') }}">Danh sách</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin Liên hệ</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                {{-- {{ dd(route('admin.category.store')) }} --}}
                {{-- <form role="form" action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
                    @csrf --}}
                <form action="{{ route('admin.contact.update', ['id' => $contact->id]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="box-header with-border">
                        <button type="submit" class="btn btn-info btn-flat">
                            <i class="fa fa-edit"></i>
                            Cập nhật
                        </button>
                    </div>
                    <div class="box-body">
                        <table class="table table-bordered">
                            <tr>
                                <td><label>Trạng thái</label></td>
                                <td>
                                    <select class="form-control " name="status" style="max-width: 150px; display:inline-block">
                                        <option value="0">-- chọn --</option>
                                        @foreach($order_status as $status)
                                            <option {{ ($contact->status == $status->id ? 'selected':'') }} value="{{ $status->id }}">{{ $status->name }}</option>
                                        @endforeach
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="">Tên người liên hệ :</label></td>
                                <td colspan="3">{{$contact->name}}</td>
                            </tr>
                            <tr>
                                <td><label for="">Địa chỉ Email :</label></td>
                                <td colspan="3">{{$contact->email}}</td>
                            </tr>
                            <tr>
                                <td><label>SĐT :</label></td>
                                <td colspan="3">{{$contact->phone}}</td>
                            </tr>
                            <tr>
                                <td><label>Nội dung :</label></td>
                                <td colspan="3">
                                    <div class="form-group">
                                        <textarea name="content" class="form-control" rows="3" placeholder="">{{ $contact->content }}</textarea>
                                    </div>
                                </td>
                            </tr>
                            
                        </table>
                    </div>
                    
                    <!-- /.box-body -->
                </form>
            </div>
            <!-- /.box -->
            

        </div>
        <!--/.col (right) -->
    </div>
    <!-- /.row -->
</section>
@endsection

{{-- @section('ck_editor')
<script>
    CKEDITOR.replace('summary');
    CKEDITOR.replace('description');
</script> 
@endsection --}}

{{-- @section('my_script')
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

        $('.edit-contact').click(function (e) {
            // disabled the submit button
            // $("#btnSubmit").prop("disabled", true);
            // console.log($('form').serialize());

            // console.log($('#category_id').val());

            var model = '/admin/contact/' + $(this).attr('data-id');
            var data;
            data = new FormData();
            data.append('_method', 'PUT');
            data.append('name', $('#name').val());
            data.append('category_id', $('#category_id').val());
            data.append('vendor_id', $('#vendor_id').val());
            data.append('new_image', ($('#new_image').val()) ? $('#new_image')[0].files[0] : '');
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

            updateModel(model, data);

            e.preventDefault();
            
        });
    </script>
@endsection --}}