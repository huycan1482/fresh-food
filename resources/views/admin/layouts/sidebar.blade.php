<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{Auth::user()->avatar}}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>{{ Auth::user()->name }}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i
                            class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
          <li class="header">MAIN NAVIGATION</li>
            {{-- <li class="active treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
                    <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
                </ul>
            </li> --}}
          <li class="">
              <a href="{{ route('admin.category.index') }}">
                  <i class="fa fa-files-o"></i>
                  <span>QL Danh mục (Categories)</span>
                    {{-- <span class="pull-right-container">
                        <span class="label label-primary pull-right">4</span>
                    </span> --}}
              </a>
                {{-- <ul class="treeview-menu">
                    <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
                    <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>
                    <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>
                    <li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed
                            Sidebar</a></li>
                </ul> --}}
          </li>

          <li class="">
            <a href="{{ route('admin.vendor.index') }}">
                <i class="fa fa-files-o"></i>
                <span>QL NCC (Vendors)</span>
            </a>
          </li>

          <li class="">
            <a href="{{ route('admin.product.index') }}">
                <i class="fa fa-files-o"></i>
                <span>QL Sản phẩm (Products)</span>
            </a>
          </li>

          <li class="">
            <a href="{{ route('admin.productImage.index') }}">
                <i class="fa fa-files-o"></i>
                <span>QL Ảnh Sản phẩm (Images)</span>
            </a>
          </li>

          <li class="">
            <a href="{{ route('admin.article.index') }}">
                <i class="fa fa-files-o"></i>
                <span>QL Bài viết (Articles)</span>
            </a>
          </li>

          <li class="">
            <a href="{{ route('admin.banner.index') }}">
                <i class="fa fa-files-o"></i>
                <span>QL Ảnh bìa (Banners)</span>
            </a>
          </li>

          <li class="">
            <a href="{{ route('admin.order.index') }}">
                <i class="fa fa-files-o"></i>
                <span>QL Đơn đặt hàng (Orders)</span>
            </a>
          </li>

          <li class="">
            <a href="{{ route('admin.contact.index') }}">
                <i class="fa fa-files-o"></i>
                <span>QL Liên hệ (Contacts)</span>
            </a>
          </li>


          <li class="">
            <a href="{{ route('admin.setting.index') }}">
                <i class="fa fa-files-o"></i>
                <span>Settings Website (Settings)</span>
            </a>
          </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
