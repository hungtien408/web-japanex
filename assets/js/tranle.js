function whois() {
    $(document).ready(function () {
        $('.showDomain').click(function () {
            $('body').append('<div id="mask"></div><div id="modal_window" style="overflow-y:scroll"><div id="center" style="margin:20px auto;width:500px;"></div></div>');
            $('#center').html($(this).attr("rel"));
            var window_width = $(window).width();
            var window_height = $(window).height();
            var modal_height = $('#modal_window').outerHeight();
            if (modal_height > window_height) {
                $('#modal_window').css({ height: window_height - 60 });
                modal_height = window_height - 60;
            }
            var modal_width = $('#modal_window').outerWidth();

            //calculate top and left offset needed for centering
            var top = (window_height - modal_height) / 2;
            var left = (window_width - modal_width) / 2;

            //set display to block and opacity to 0 so we can use fadeTo
            $('#mask').css({ display: 'block', height: $("body").height(), display: 'none' });

            $('#modal_window').css({ top: top + $(window).scrollTop(), left: left });

            //fade in the mask to opacity 0.8 
            $('#mask').fadeTo('medium', 0.8);

            //show the modal window
            $('#modal_window').fadeIn('medium');

            $('#mask').click(function () {
                $('#mask').fadeOut('medium');
                $('#modal_window').fadeOut('medium');
                $('#modal_window').remove();
                $('#mask').remove();
            });
        });
    });
};

$(document).ready(function () {
    $('.showDomain').click(function () {
        $('body').append('<div id="mask"></div><div id="modal_window" style="overflow-y:scroll"><div id="center" style="margin:20px auto;width:500px;"></div></div>');
        $('#center').html($(this).attr("rel"));
        var window_width = $(window).width();
        var window_height = $(window).height();
        var modal_height = $('#modal_window').outerHeight();
        if (modal_height > window_height) {
            $('#modal_window').css({ height: window_height - 60 });
            modal_height = window_height - 60;
        }
        var modal_width = $('#modal_window').outerWidth();

        //calculate top and left offset needed for centering
        var top = (window_height - modal_height) / 2;
        var left = (window_width - modal_width) / 2;

        //set display to block and opacity to 0 so we can use fadeTo
        $('#mask').css({ display: 'block', height: $("body").height(), display: 'none' });

        $('#modal_window').css({ top: top + $(window).scrollTop(), left: left });

        //fade in the mask to opacity 0.8 
        $('#mask').fadeTo('medium', 0.8);

        //show the modal window
        $('#modal_window').fadeIn('medium');

        $('#mask').click(function () {
            $('#mask').fadeOut('medium');
            $('#modal_window').fadeOut('medium');
            $('#modal_window').remove();
            $('#mask').remove();
        });
    });
})


