

    var that;
    $('.delete_box').on('click',function(){
            $(this).children('.delete_up').css(
                {
                    transition :'all 1s',
                    'transformOrigin':"0 5px" ,
                    transform :'rotate(-30deg) translateY(2px)'
                }

            )
            $('.jd_win').show();
            that = $(this);
    })

    $('.cancle').on('click',function(){
        $('.jd_win').hide();
        $('.delete_up').css('transform','none')
    })
    $('.submit').on('click',function(){
        that.parent().parent().parent().parent().remove();
        $('.jd_win').hide();
    })


