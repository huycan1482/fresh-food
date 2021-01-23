<header>
    <!-- <div class="logo-banner">
        <a class="navbar-brand" href="#">FRESH F<span style="font-size: 28px; margin-bottom: 5px;"><i class="fas fa-apple-alt"></i></span>OD</a>
    </div> -->
    <nav>
        <div class="left-nav">
            <a class="navbar-brand" href="#">FRESH F<span style="font-size: 28px; margin-bottom: 5px;"><i
                        class="fas fa-apple-alt"></i></span>OD</a>
            <div class="navbar-toggle" onclick="responsive_menu()">
                <i class="fas fa-list" id="response-icon"></i>
            </div>
        </div>

        <div class="menu" id="menu">
            <ul class="left-menu">
                <li><a href="">Trang chủ</a></li>
                <li class="food">
                    <a onclick="dropdown_menu()">Thực phẩm<i class="fas fa-caret-down"></i></a>
                    <div class="dropdown-menu" id="dropdown-menu">
                    @foreach ($menu as $item)
                        <div class="drop-item"><a href="">{{$item->name}}</a></div>
                    @endforeach
                        {{-- <div class="drop-item"><a href="">Rau củ quả</a></div>
                        <div class="drop-item"><a href="">Trái cây</a></div>
                        <div class="drop-item"><a href="">Nấm</a></div>
                        <div class="drop-item"><a href="">Thịt</a></div>
                        <div class="drop-item"><a href="">Thủy, hải sản</a></div> --}}
                    </div>
                </li>
                <li><a href="">Giới thiệu</a></li>
                <li><a href="">Liên hệ</a></li>
                <li><a href="">Cẩm nang</a></li>
            </ul>

            <ul class="right-menu">
                <form action="#" class="search-nav">
                    <input type="text" placeholder="Nhập sản phẩm ... ">
                    <button><i class="fas fa-search"></i></button>
                </form>
                <li class="shopping-icon">
                    <a href="#"><i class="fas fa-shopping-cart"></i></a>
                    <span class="num-cart">2</span>
                </li>

                <li><a href="#"><i class="fas fa-user"></i></a></li>

            </ul>
        </div>

        <!-- <div class="right-nav">
            
        </div> -->
    </nav>
</header>