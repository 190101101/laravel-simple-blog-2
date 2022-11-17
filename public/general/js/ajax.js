function ajaxGet(url, arg, method = 'Get')
{
    return $.ajax({
        beforeSend: function(){
            $(arg).prop("disabled", true);
            $('.data-get').prop('disabled', true);
        },
        type: method,
        url: url,
        complete: function(){
            setTimeout(function(){
                $('.data-get').prop('disabled', false);
            }, 200);
        }
    });
}

$('body').on('click', '.data-status', function(e) {
    arg = this;
    get = $(arg).attr("data-get");

    ajaxGet(get).done(function(data){
        data == true 
            ? alertify.success('status changed', 1)
            : alertify.error('Is there something wrong', 1);
    });
});

$('body').on('click', '.data-delete', function(e) {

    arg = this;
    
    get = $(arg).attr("data-get");

    alertify.confirm('Are you sure you want to delete???', function(){ 
        ajaxGet(get, arg, 'delete').done(function(data){
            $(arg).parents('.table tr').hide();

            data == true 
                ? alertify.success('deleted successfully', 1)
                : alertify.error('Is there something wrong', 1);
        });
    });
});
