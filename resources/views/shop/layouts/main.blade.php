<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <base href="{{ asset('') }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">


    <link rel="stylesheet" href="frontend/css/trangchu.css">

    <link rel="stylesheet" href="frontend/css/product.css">

    <link rel="stylesheet" href="frontend/css/main.css">
    <link rel="stylesheet" href="frontend/css/layout.css">
    <link rel="stylesheet" href="frontend/css/slideShow.css">
    <link rel="stylesheet" href="frontend/css/form.css">
    <link rel="stylesheet" href="frontend/fontawesome-free-5.12.0-web/css/all.min.css">

    <link rel="stylesheet" href="frontend/css/font.css">

    @yield('css')
{{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> --}}
    
    <script type="text/javascript">
        var base_url = '{{ url('/') }}';
    </script>

</head>

<body>
    @include('shop.layouts.header')

    @yield('content')

    @include('shop.layouts.footer')

    <script language="javascript" src="frontend/js/main.js"></script>

    <script language="javascript" src="frontend/js/navbarScroll.js"></script>

    @yield('script')

    {{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> --}}
</body>

</html>