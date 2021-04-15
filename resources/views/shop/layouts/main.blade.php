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

<link
rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
/>
    
    <script type="text/javascript">
        var base_url = '{{ url('/') }}';
    </script>

</head>

<body>
    @include('shop.layouts.header')

    @yield('content')

    @include('shop.layouts.footer')

    {{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> --}}

    {{-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script> --}}

    <script src="frontend/js/wow.min.js"></script>
    

    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> --}}


    <script> new WOW().init(); </script>

    <script language="javascript" src="frontend/js/main.js"></script>

    <script language="javascript" src="frontend/js/navbarScroll.js"></script>

    @yield('script')

    {{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> --}}
</body>

</html>