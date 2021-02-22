<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="frontend/css/product.css">

    <link rel="stylesheet" href="frontend/css/main.css">
    <link rel="stylesheet" href="frontend/css/layout.css">
    <link rel="stylesheet" href="frontend/css/slideShow.css">
    <link rel="stylesheet" href="frontend/css/form.css">
    {{-- <link rel="stylesheet" href="../fontawesome-free-5.12.0-web/css/all.min.css"> --}}

    <link rel="stylesheet" href="frontend/css/font.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }

        .login-wrap {   
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-wrap::after {
            content: "";
            /* background:url('../images/4k-3840-x-2160-wallpapers-themefoxx\ \(427\).jpg'); */
            /* background:url('../images/4k-3840-x-2160-wallpapers-themefoxx\ \(574\).jpg'); */
            /* background:url('../images/4k-3840-x-2160-wallpapers-themefoxx\ \(610\).jpg'); */
            /* background:url('../images/4k-3840-x-2160-wallpapers-themefoxx\ \(644\).jpg'); */
            background:url('frontend/images/4k-3840-x-2160-wallpapers-themefoxx\ \(942\).jpg');

            background-size: cover;
            /* opacity: 0.9; */
            position: absolute;
            z-index: -1;
            width: 100%;
            height: 100vh;
        }

        .login-body {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            width: 500px;
            height: 600px;
            position: relative;
            box-shadow:0 12px 15px 0 rgba(0,0,0,.3),0 17px 50px 0 rgba(0,0,0,.2);
            /* background-color: #273c75; */
            background: rgba(255,255,255,.1);

            border-radius: 15px;
        }

        .login-header {
            display: flex;
        }

        .login-header div {
            margin: -50px 30px 50px;
            font-size: 27px;
            
        }

        .login-header a {
            color: #fff;
            position: relative;
        }

        .login-header a::before {
            content: '';
            width: 0px;
            height: 2px;
            background-color: #fff;
            position: absolute;
            top: 120%;
            left: 0%;
            transition: width 1s;
        }

        .login-header a:hover::before {
            width: 60%;
        }

        .login-header a:hover {
            transition: 2s ease;
        }


        .form-group label {
            color: #fff;
            font-size: 17px;
        }

        .login-content {
            width: 70%;
            display: flex;
            flex-direction: column;
        }

        .login-content .form-group input{
            box-shadow:0 12px 15px 0 rgba(0,0,0,.2),0 17px 50px 0 rgba(0,0,0,.2);
            background: rgba(255,255,255,.2);
            border-color: transparent;
            color: #fff;
        }

        .login-content .form-group input:focus {
            /* background: rgba(255,255,255,.3); */
            color: #fff;
            box-shadow:0 12px 15px 0 rgba(0,0,0,.4),0 17px 50px 0 rgba(0,0,0,.3);
        }

        #remember {
            margin: 10px;
            padding: 5px;
        }

        button {
            box-shadow:0 12px 15px 0 rgba(0,0,0,.4),0 17px 50px 0 rgba(0,0,0,.3);
            background-color: #7158e2;
            margin: auto;
            font-family: roboto-light;
            font-size: 17px;
            font-weight: 600;
            padding: 10px 35px;
            border: 1px solid transparent;
            border-radius: 50px;
            color: #fff;
            cursor: pointer;
            transition: .3s ease-in-out;
        }

        .form-footer {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-footer .form-group label{
            margin-bottom: 0;
        }

    </style>
</head>
<body>
    <div class="login-wrap">
        <div class="login-body">
            <div class="login-header">
                <div>
                    <a href="">Sign In</a>
                </div>
                <div>
                    <a href="">Sign Up</a>
                </div>
            </div>
            <form class="login-content" action="{{route('admin.postLogin')}}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="email" class="form-control" name="email" value="{{old('email')}}">
                    <span style="color:#d35400; font-size:13px; margin-top: 5px">{{$errors->first('email')}}</span>
                </div>
                <div class="form-group">
                    <label for="">Password</label>
                    <input type="password" class="form-control" name="password" value="{{old('password')}}">
                    <span style="color:#d35400; font-size:13px; margin-top: 5px">{{$errors->first('password')}}</span>
                </div>
                <div class="form-footer">
                    <div class="form-group">
                        <label for="">Keep me logged in<input type="checkbox" class="" id="remember" name="remember"></label>
                    </div>
                    <button class="">Sign In</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>