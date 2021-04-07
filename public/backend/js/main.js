// ajaxSetup() là phương thức set giá trị mặc định cho tất cả các request ajax tiếp theo
// Để gửi được request ajax chúng ta cũng cần xác thực csrf giống như Form
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

/* Xóa một row  */
function destroyModel(model, id) {
    // $this.data('id').val();
    var result = confirm("Bạn có chắc chắn muốn xóa ?");
    if (result) { // neu nhấn == ok , sẽ send request ajax
        $.ajax({
            url: base_url + '/admin/'+model+'/'+id, // base_url được khai báo ở đầu page == http://webshop.local
            type: 'DELETE',
            data: {}, // dữ liệu truyền sang nếu có
            dataType: "json", // kiểu dữ liệu trả về
            success: function (response) { // success : kết quả trả về sau khi gửi request ajax
                $('.item-'+id).closest('tr').remove();// class .item- ở trong class của thẻ td đã khai báo trong file index
                messageResponse('success', response.mess);
            },
            error: function (e) { // lỗi nếu có
                messageResponse('danger', e.responseJSON.mess);
            }
        });
    }
}

function addModel (model, data) {
    $.ajax({
        type: "POST",
        url: base_url + model,
        data: data,
        // dataType : "formData",
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
        cache: false,
        success: function (response) {
            successResponse(response);
        },
        error: function (e) {
            errorResponse(e)
        }
    });
}

function updateModel (model, data) {
    $.ajax({
        type: "POST",
        url: base_url + model,
        data: data,
        // dataType : "formData",
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
        cache: false,
        success: function (response) {
            successResponse(response);
        }, 
        error: function (e) {
            errorResponse(e)
        }
    });
}

function messageResponse (status, mess) {
    $("html, body").animate({ scrollTop: 0 }, "slow");
                        
    var message = "<div class='pad margin no-print col-md-3' id='message' style='position: fixed; right: 0; z-index:10'><div class='alert alert-" + status + " alert-dismissible'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button><h4><i class='icon fa fa-check'></i> Thông báo !</h4>"+ mess +"</div></div>"

    if ( $('#message') ) {
        $('#message').remove();
    }

    $('.content-header').after(message);
}

function successResponse (response) {
    $("*").removeClass('has-error');
    $('.sp-error').remove();
 
    messageResponse('success',response.mess);
}

function errorResponse (e) {
    // console.log(e, e.responseJSON.mess)
    // console.log(e.status);
    errors = e.responseJSON.errors;
    
    $("*").removeClass('has-error');

    $('.sp-error').remove();

    $.each( errors, function( key, value ) {
        // console.log( key + ": " + value[0] );
        $('.sp-' + key).remove();
        $('#form-' + key).addClass('has-error');
        $('#form-' + key).append("<span class='help-block sp-" + key + " sp-error'>"+ value[0] +"</span>");
    });

    messageResponse('danger', e.responseJSON.mess);
}

