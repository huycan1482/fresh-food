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
        <div class="col-xs-4">
            <div class="box box-solid">
                <div class="box-header with-border">
                    <h3 class="box-title">Lọc sản phẩm</h3>

                    <div class="box-tools">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body no-padding">
                    <ul class="nav nav-pills nav-stacked">
                        <li class=""><a><i class="fas fa-shopping-basket"></i>  Loại hàng
                            <select name="" id="category" class="form-control">
                                <option value="">--Chọn--</option>
                                @foreach ($categories as $category)
                                <option value="{{ $category->slug }}" {{ ($category_id == $category->slug) ? 'selected' : '' }}>{{ $category->name }}</option> 
                                @endforeach
                            </select>
                        </a></li>
                        <li class=""><a><i class="fas fa-coins"></i> Tình trạng sản phẩm 
                            <select name="" id="number" class="form-control">
                                <option value="">--Chọn--</option>
                                <option value="con-hang" {{ ($number == 'con-hang') ? 'selected' : '' }}>Còn hàng</option>
                                <option value="gan-het" {{ ($number == 'gan-het') ? 'selected' : '' }}>Gần hết</option>
                                <option value="het-hang" {{ ($number == 'het-hang') ? 'selected' : '' }}>Hết hàng</option>
                            </select>
                        </a></li>
                        <li class=""><a><i class="fa fa-clock"></i>HSD
                            <select name="" id="time" class="form-control">
                                <option value="">--Chọn--</option>
                                <option value="kha-dung" {{ ($time == 'kha-dung') ? 'selected' : '' }}>Khả dụng</option>
                                <option value="khong-kha-dung" {{ ($time == 'khong-kha-dung') ? 'selected' : '' }}>Không khả dụng</option>
                            </select>
                        </a></li>
                        <li class=""><a><i class="fa fa-eye"></i>Trạng thái
                            <select name="" id="status" class="form-control">
                                <option value="">--Chọn--</option>
                                <option value="hien-thi" {{ ($status == 'hien-thi') ? 'selected' : '' }}>Hiển thị</option>
                                <option value="khong-hien-thi" {{ ($status == 'khong-hien-thi') ? 'selected' : '' }}>Không hiển thị</option>
                            </select>
                        </a></li>
                    </ul>
                </div>
                
                <div class="box-body no-padding">
                    <ul class="nav nav-pills nav-stacked">
                        <li>
                            <a><h4>Tổng số lượng sản phẩm: <span class="badge bg-light-blue" style="margin-bottom: 3px">{{ $total_products }}</span></h4></a>
                        </li>
                        <li>
                            <a> Số lượng hàng khả dụng: <span class="badge bg-green" style="margin-bottom: 3px"> {{$enabled_products}} </span> 
                            <div class="progress progress-xs progress-striped active">
                                <div class="progress-bar progress-bar-success" style="width: {{ ($enabled_products/$total_products)*100 }}%"></div>
                            </div></a>
                        </li>
                        <li>
                            <a> Số lượng hàng quá hạn: <span class="badge bg-yellow" style="margin-bottom: 3px"> {{$disabled_products}} </span> 
                            <div class="progress progress-xs progress-striped active">
                                <div class="progress-bar progress-bar-yellow" style="width: {{ ($disabled_products/$total_products)*100 }}%"></div>
                            </div></a>
                        </li>
                        <li>
                            <a> Số lượng hàng bán hết: <span class="badge bg-red" style="margin-bottom: 3px"></span> 
                            <div class="progress progress-xs progress-striped active">
                                <div class="progress-bar progress-bar-danger" style="width: "></div>
                            </div></a>
                        </li>
                    </ul>
                    
                </div>
                <!-- /.box-body -->
            </div>
        </div>
        <div class="col-xs-8">
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
                                {{-- <th class="text-center">Loại hàng</th> --}}
                                {{-- <th class="text-center">NCC</th> --}}
                                <th class="text-center">Hình ảnh</th>
                                {{-- <th class="text-center">Số lượng</th> --}}
                                <th class="text-center">Giá/Đơn vị</th>
                                <th class="text-center">Người sửa cuối</th>
                                <th class="text-center">Tình trạng hàng</th>
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
                                {{-- <td class="text-center">
                                @foreach ($categories as $category)
                                    {{ ($product->category_id == $category->id) ? $category->name : '' }}
                                @endforeach
                                </td> --}}
                                {{-- <td class="text-center">
                                @foreach ($vendors as $vendor)
                                    {{ ($product->vendor_id == $vendor->id) ? $vendor->name : '' }}
                                @endforeach
                                </td> --}}
                                <td class="text-center">
                                    @if ($product->image)
                                    <img src="{{ asset($product->image) }}" width="50" height="50">
                                    @endif
                                </td>
                                {{-- <td class="text-center">{{ number_format($product->number ,0,",",".") }}</td> --}}
                                <td class="text-center">{{ number_format($product->price ,0,",",".") }}/{{ $product->unit }}</td>
                                <td class="text-center"></td>
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

@section('my_script')
<script type="text/javascript">
    var pathname = window.location.pathname;
    var urlParams = new URLSearchParams(window.location.search);

    $(document).on('change', '#category', function() {
        var val = $(this).val();
        if (val == '') 
            urlParams.delete('loai-hang');
        else
            urlParams.set('loai-hang', val);
        // console.log(pathname + "?" +decodeURIComponent(urlParams.toString()));
        
        window.location.href = pathname + "?" +decodeURIComponent(urlParams.toString());
    });

    $(document).on('change', '#number', function() {
        var val = $(this).val();
        if (val == '') 
            urlParams.delete('so-luong');
        else
            urlParams.set('so-luong', val);
        window.location.href = pathname + "?" +decodeURIComponent(urlParams.toString());
    });

    $(document).on('change', '#time', function() {
        var val = $(this).val();
        if (val == '') 
            urlParams.delete('thoi-gian');
        else
            urlParams.set('thoi-gian', val);
        window.location.href = pathname + "?" +decodeURIComponent(urlParams.toString());
    });

    $(document).on('change', '#status', function() {
        var val = $(this).val();
        if (val == '') 
            urlParams.delete('trang-thai');
        else
            urlParams.set('trang-thai', val);
        window.location.href = pathname + "?" +decodeURIComponent(urlParams.toString());
    });

</script>
@endsection