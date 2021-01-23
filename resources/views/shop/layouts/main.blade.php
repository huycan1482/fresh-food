<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>

    <link rel="stylesheet" href="frontend/css/trangchu.css">

    <link rel="stylesheet" href="frontend/css/product.css">

    <link rel="stylesheet" href="frontend/css/main.css">
    <link rel="stylesheet" href="frontend/css/layout.css">
    <link rel="stylesheet" href="frontend/css/slideShow.css">
    <link rel="stylesheet" href="frontend/css/form.css">
    <link rel="stylesheet" href="frontend/fontawesome-free-5.12.0-web/css/all.min.css">

    <link rel="stylesheet" href="frontend/css/font.css">

    @yield('css')

</head>

<body>
    @include('shop.layouts.header')

    @yield('content')

    @include('shop.layouts.footer')

    <script language="javascript" src="frontend/js/main.js"></script>
    <script language="javascript" src="frontend/js/slideShow.js"></script>

    @yield('script')
</body>

</html>