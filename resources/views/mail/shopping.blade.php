<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        /* body {
            color: #2f3640;
        } */
    </style>
</head>

<body>
    <h1 style="text-align: center;">Phiếu đặt hàng</h1>
    <h2 style="text-align: center;">Thông tin người đặt</h2>
    <div>
        <div style="display: flex; justify-content: flex-start">
            <table>
                <tr style="border-bottom: 1px solid #bdc3c7;">
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;">Họ và tên người đặt: </td>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $order->fullname }} </td>
                </tr>
                <tr style="border-bottom: 1px solid #bdc3c7;">
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;">Mã đơn hàng: </td>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $order->code }} </td>
                </tr>
                <tr>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;">Số điện thoại: </td>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $order->phone }} </td>
                </tr>
                <tr>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;">Email: </td>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $order->mail }} </td>
                </tr>
                <tr>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;">Địa chỉ: </td>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $order->address1 }} </td>
                </tr>
                <tr>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;">Địa chỉ nhận hàng: </td>
                    <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $order->address2 }} </td>
                </tr>
            </table>
        </div>

        <h2 style="text-align: center;">Thông tin Đơn hàng</h2>
        <div style="display: flex; justify-content: center !important">
            <div class="table" style=" border-top: 3px solid #2980b9;border-left: 1px solid #3498db;border-right: 1px solid #3498db;border-bottom: 3px solid #3498db;border-radius: 5px;">
                <table class="table2" style="border-collapse: collapse;">
                    <tr style="border-bottom: 1px solid #bdc3c7;">
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"><label style="font-weight: 700;">STT</label></td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"><label style="font-weight: 700;">Tên mặt hàng</label></td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"><label style="font-weight: 700;">Giá</label></td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"><label style="font-weight: 700;">Số lượng</label></td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"><label style="font-weight: 700;">Tổng</label></td>
                    </tr>

                    @foreach ($order->orderDetails as $key => $item)
                    <tr style="border-bottom: 1px solid #bdc3c7;">  
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $key + 1 }} </td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $item->name }} </td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ number_format( $item->price ,0,",",".") }} </td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ $item->number }} </td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"> {{ number_format( $item->price * $item->number ,0,",",".") }} </td>
                    </tr>
                    @endforeach
                    
                    <tr>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"></td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"></td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"></td>
                        <td style="border-right: 1px solid #bdc3c7;padding: 10px;max-width: 600px;min-width: 50px;text-align: left;"><label for="" style="font-weight: 700;">Tổng tiền: </label></td>
                        <td style="padding: 10px;max-width: 600px;min-width: 50px;text-align: left; color: #EA2027; font-weight: bold"><label>{{ number_format( $order->total_price ,0,",",".") }}đ</label></td>
                    </tr>
                </table>
            </div>
        </div>


    </div>
</body></html>
