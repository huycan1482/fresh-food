@extends('admin.layouts.main')
@section('content')
<section class="content-header">
    <h1>
        Danh sách Danh Mục
        <small><a href="{{ route('admin.category.create') }}">Thêm mới</a></small>
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
                                <th class="text-center">Hình ảnh</th>
                                <th class="text-center">Vị trí hiển thị</th>
                                <th class="text-center">Trạng thái</th>
                                <th class="text-center">Người tạo</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                        </thead>
                        <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                        <tbody>
                            @foreach($categories as $key => $category)
                            <tr class="item-{{ $category->id }}">
                                <td class="text-center">{{ $key + 1}} /td>
                                <td class="text-center">{{ $category->name }}</td>
                                <td class="text-center">
                                    @if ($category->image)
                                    <img src="{{ asset($category->image) }}" width="50" height="50">
                                    @endif
                                </td>
                                
                                <td class="text-center">{{ $category->position }}</td>
                                <td class="text-center">
                                    <span
                                        class="label label-{{ ($category->is_active == 1) ? 'success' : 'danger' }}">{{ ($category->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</span>
                                </td>
                                <td></td>
                                <td class="text-center">
                                    <a href="{{ route('admin.category.edit', ['id'=> $category->id]) }}" class="btn  btn-primary">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    @can ('delete', App\Category::class)
                                    <a href="javascript:void(0)" class="btn btn-danger"
                                        onclick="destroyModel('category', '{{ $category->id }}' )"><i class="fa fa-trash"></i>
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
                        {{ $categories->links() }}
                    </ul>
                </div>
            </div>
            <!-- /.box -->
        </div>
    </div>
    <!-- /.row -->
</section>
@endsection
