@extends('admin.layouts.main')
@section('content')
<section class="content-header">
    <h1>
        Danh sách Sản phẩm
        <small><a href="{{ route('admin.product.create') }}">Thêm mới</a></small>
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
                        <thead>
                            <tr>
                                <th class="text-center">STT</th>
                                <th class="text-center">Tên</th>
                                <th class="text-center">Loại hàng</th>
                                <th class="text-center">NCC</th>
                                <th class="text-center">Hình ảnh</th>
                                <th class="text-center">Số lượng</th>
                                <th class="text-center">Giá/Đơn vị</th>
                                <th class="text-center">Người sửa cuối</th>
                                <th class="text-center">Sản phẩm hot</th>
                                <th class="text-center">Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                        </thead>
                        <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                        <tbody>
                        @foreach($products as $key => $product)
                            <tr class="item-{{ $product->id }}">
                                <td class="text-center">{{ $key + 1}}</td>
                                <td class="text-center">{{ $product->name }}</td>
                                <td class="text-center">
                                @foreach ($categories as $category)
                                    {{ ($product->category_id == $category->id) ? $category->name : '' }}
                                @endforeach
                                </td>
                                <td class="text-center">
                                @foreach ($vendors as $vendor)
                                    {{ ($product->vendor_id == $vendor->id) ? $vendor->name : '' }}
                                @endforeach
                                </td>
                                <td class="text-center">
                                    @if ($product->image)
                                    <img src="{{ asset($product->image) }}" width="50" height="50">
                                    @endif
                                </td>
                                <td class="text-center">{{ number_format($product->number ,0,",",".") }}</td>
                                <td class="text-center">{{ number_format($product->price ,0,",",".") }}/{{ $product->unit }}</td>
                                <td class="text-center"></td>
                                <td class="text-center">
                                    <span class="label label-{{ ($product->is_hot == 1) ? 'success' : 'danger' }}">{{ ($product->is_hot == 1) ? 'Có' : 'Không' }}</span>
                                </td>
                                <td class="text-center">
                                    <span class="label label-{{ ($product->is_active == 1) ? 'success' : 'danger' }}">{{ ($product->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</span>
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('admin.product.edit', ['id'=> $product->id]) }}" class="btn  btn-primary">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    @can ('delete', App\Product::class)
                                    <a href="javascript:void(0)" class="btn btn-danger"
                                        onclick="destroyModel('product', '{{ $product->id }}' )"><i class="fa fa-trash"></i>
                                    </a>
                                    @endcan
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <ul class="pagination pagination-sm no-margin">
                        {{ $products->links() }}
                    </ul>
                </div>
            </div>
            <!-- /.box -->
        </div>
    </div>
    <!-- /.row -->
</section>
@endsection
