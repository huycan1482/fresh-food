@extends('admin.layouts.main')
@section('content')
<section class="content-header">
    <h1>
        Danh sách Nhà cung cấp
        <small><a href="{{ route('admin.vendor.create') }}">Thêm mới</a></small>
    </h1>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header ">
                    <h3 class="box-title"></h3>

                    <form class="box-tools" action="" method="GET">
                        <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                            <input type="text" name="search_name" class="form-control pull-right" placeholder="Name">

                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table-hover table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                        <tbody>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Hình ảnh</th>
                                <th>Email</th>
                                <th>SĐT</th>
                                <th>Trạng thái</th>
                                <th>Người chỉnh sửa</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                        </tbody>
                        <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                        @foreach($vendors as $key => $vendor)
                        <tr class="item-{{ $vendor->id }}">
                            <td>{{ $key + 1}}</td>
                            <td>{{ $vendor->name }}</td>
                            <td>
                                @if ($vendor->image)
                                <img src="{{ asset($vendor->image) }}" width="50" height="50">
                                @endif
                            </td>
                            
                            <td>{{ $vendor->email }}</td>
                            <td>{{ $vendor->phone }}</td>
                            <td>
                                <span class="label label-{{ ($vendor->is_active == 1) ? 'success' : 'danger' }}">{{ ($vendor->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</span>
                            </td>
                            <td></td>
                            <td class="text-center">
                                <a href="{{ route('admin.vendor.edit', ['id'=> $vendor->id]) }}" class="btn  btn-primary">
                                    <i class="fa fa-edit"></i>
                                </a>
                                @can ('delete', App\Vendor::class)
                                <a href="javascript:void(0)" class="btn btn-danger"
                                    onclick="destroyModel('vendor', '{{ $vendor->id }}' )"><i class="fa fa-trash"></i>
                                </a>
                                @endcan
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <ul class="pagination pagination-sm no-margin">
                        {{ $vendors->links() }}
                    </ul>
                </div>
            </div>
            <!-- /.box -->
        </div>
    </div>
    <!-- /.row -->
</section>
@endsection
