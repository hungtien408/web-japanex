(function ($) {
    $(function () {
        var litype = 3;
        if (litype == 0) {
            $("#sliderseo li").addClass("seo-left");
        } else if (litype == 1) {
            $("#sliderseo li").addClass("seo-right");
        } else {
            $("#sliderseo li:even").addClass("seo-left");
            $("#sliderseo li:odd").addClass("seo-right");
        }
        $("#sliderseo li").each(function () {
            var srcimg = $(this).attr("rel-src");
            $(this).css({ "background-image": 'url(' + srcimg + ')' });
        });
        mybannerSeo();
        $("#bannerseo").css({"background" : "#fff"});
        function mybannerSeo() {
            var $bannerseo = $('#sliderseo');
            var css_itearm = 'li';
            var speed = 5000;
            var speedfade = 600;
            $bannerseo.find(css_itearm).hide();
            $bannerseo.find(css_itearm + ":last").addClass("seo-current");
            nextIcon(0);
            var rotateIcon = setInterval(nextIcon, speed);
            function nextIcon(indexNum) {
                var current_image = $bannerseo.find('.seo-current').length ? $bannerseo.find('.seo-current') : $bannerseo.find(css_itearm + ':first');
                if (indexNum) {
                    var next_image = (current_image.prev().length) ? current_image.prev() : $bannerseo.find(css_itearm + ':last');
                } else {
                    var next_image = (current_image.next().length) ? current_image.next() : $bannerseo.find(css_itearm + ':first');
                }
                $bannerseo.find(css_itearm).removeClass('seo-current').stop(true, true).fadeOut(speedfade * 1.5, "linear");
                next_image.addClass('seo-current').fadeIn(speedfade, "linear");
                //                next_image.addClass('seo-current').css({ "display": "block" });
                //next_image.addClass('seo-current');
                myseo();
            };
            function myseo() {
                if ($bannerseo.find(css_itearm).hasClass('seo-current')) {
                    //                    $(".seo-current").css({ "left": "50%", "right": "50%", "width": 0 });
                    $(".seo-current").find(".head-seo").css({ "left": "100%" }).find("p").hide();
                    $(".seo-current").find(".seo-img").css({ "left": "-100%" });
                    $(".seo-current").find(".seo-tit").css({ "left": "200%" });
                    $(".seo-current").find(".box-img").css({ "left": "200%" });
                    //                    $(".seo-current").stop(true, true).delay(50).animate({ "left": 0, "right": 0, "width": "100%" }, speedfade, "swing");
                    //$(".seo-current").stop(true, true).delay(50).toggle("clip", 500);
                    $(".seo-current").find(".seo-img").stop(true, true).delay(800).animate({ "left": 0 }, 500);
                    $(".seo-current").find(".seo-tit").stop(true, true).delay(1300).animate({ "left": 0 }, 500, "easeOutSine");
                    $(".seo-current").find(".box-img").stop(true, true).delay(1700).animate({ "left": 0 }, 500, "easeOutQuart")
                    $(".seo-current").find(".head-seo").stop(true, true).delay(2200).animate({ "left": 0 }, 500, "easeInOutSine");
                    $(".seo-current").find(".head-seo").find("p").stop(true, true).delay(2700).fadeIn(500, "swing");
                }
            }
        }
    });
})(jQuery);