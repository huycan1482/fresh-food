@extends('admin.layouts.main')
@section('content')
<section class="content-header">
    <h1>
        Danh sách Liên hệ
        {{-- <small><a href="{{ route('admin.contact.create') }}">Thêm mới</a></small> --}}
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
                                <th class="text-center">Tên người liên hệ</th>
                                <th class="text-center">SĐT</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Trạng thái</th>
                                <th class="text-center">Người sửa lần cuối</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                        </thead>
                        <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                        <tbody>
                            @foreach($contacts as $key => $contact)
                            <tr class="item-{{ $contact->id }}">
                                <td class="text-center">{{ $key + 1}}</td>
                                <td class="text-center">{{ $contact->name }}</td>
                                <td class="text-center">{{ $contact->phone }}</td>
                                <td class="text-center">{{ $contact->email }}</td>
                                <td class="text-center">
                                    @if ( $contact->status == 1 )           
                                        <span class="label label-info">Mới</span>
                                    @elseif ( $contact->status == 2 )
                                        <span class="label label-warning">Đang xử lí</span>
                                    @elseif ( $contact->status == 3 )
                                        <span class="label label-success">Hoàn thành</span>
                                    @else
                                        <span class="label label-danger">Hủy</span>
                                    @endif
                                </td>
                                <td class="text-center">
                                    @foreach ($users as $user)
                                        {{ ($user->id == $contact->user_id) ? $user->name : '' }}
                                    @endforeach
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('admin.contact.edit', ['id'=> $contact->id]) }}" class="btn  btn-primary">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    @can ('delete', App\Contact::class)
                                    <a href="javascript:void(0)" class="btn btn-danger"
                                        onclick="destroyModel('contact', '{{ $contact->id }}' )"><i class="fa fa-trash"></i>
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
                        {{ $contacts->links() }}
                    </ul>
                </div>
            </div>
            <!-- /.box -->
        </div>
    </div>
    <!-- /.row -->
</section>
@endsection
