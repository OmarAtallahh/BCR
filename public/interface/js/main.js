$(document).ready(function () {
    var scrollTop = 0;
    $(window).scroll(function () {
        scrollTop = $(window).scrollTop();
        $('.counter').html(scrollTop);

        if (scrollTop >= 100) {
            $('#global-nav').addClass('scrolled-nav');
        } else if (scrollTop < 100) {
            $('#global-nav').removeClass('scrolled-nav');
        }

    });

});

$(document).ready(function(){
    $("#pw").focus(function(){
        this.type = "text";
    }).blur(function(){
        this.type = "password";
    })
});

//Placeholder fixed for Internet Explorer
$(function() {
    var input = document.createElement("input");
    if(('placeholder' in input)==false) {
        $('[placeholder]').focus(function() {
            var i = $(this);
            if(i.val() == i.attr('placeholder')) {
                i.val('').removeClass('placeholder');
                if(i.hasClass('password')) {
                    i.removeClass('password');
                    this.type='password';
                }
            }
        }).blur(function() {
            var i = $(this);
            if(i.val() == '' || i.val() == i.attr('placeholder')) {
                if(this.type=='password') {
                    i.addClass('password');
                    this.type='text';
                }
                i.addClass('placeholder').val(i.attr('placeholder'));
            }
        }).blur().parents('form').submit(function() {
            $(this).find('[placeholder]').each(function() {
                var i = $(this);
                if(i.val() == i.attr('placeholder'))
                    i.val('');
            })
        });
    }
    });
