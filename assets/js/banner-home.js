(function ($) {
    $(function () {
        bannerHome();
        function bannerHome() {
            $("#bannerHome").append('<div class="banner-load"></div>');
            $(".banner-load").stop().fadeOut(500);
            var $banner = $('#sliderBanner');
            var css_itearm = 'li';
            var speed = 6500;
            var speedfade = 500;
            $banner.find(css_itearm).hide();
            $banner.find(css_itearm + ":first").show();
            myslider($banner.find(css_itearm + ":first").attr("id"));
            //nextIcon(0);
            var rotateIcon = setInterval(nextIcon, speed);
            function nextIcon(indexNum) {
                var current_image = $banner.find('.current').length ? $banner.find('.current') : $banner.find(':first');
                if (indexNum) {
                    var next_image = (current_image.prev().length) ? current_image.prev() : $banner.find(':last');
                } else {
                    var next_image = (current_image.next().length) ? current_image.next() : $banner.find(':first');
                }
                $banner.find(css_itearm).removeClass('current').fadeOut(speedfade, "linear");
                next_image.addClass('current').fadeIn(speedfade, "linear");
                var ifd = next_image.attr("id");
                myslider(ifd);
            };
            function myslider(idf) {
                if (idf == "websoft") {
                    $("#websoft").find(".slider-img-1").css({ "left": "-200%" });
                    $("#websoft").find(".slider-img-2").css({ "right": "200%" });
                    $("#websoft").find(".slider-img-3").css({ "right": "200%" });
                    $("#websoft").find(".group-3").css({ "left": "100%", "top": "100%" });
                    $("#websoft").find(".group-1").find(".img").css({ "bottom": "50%", "right": "50%", "left": "50%", "top": "50%", "width": 0 });
                    $("#websoft").find(".group-1").find(".text").hide();
                    $("#websoft").find(".slider-img-1").stop(true, true).delay(500).animate({ "left": 0 }, 600, "easeOutQuart");
                    $("#websoft").find(".slider-img-2").stop(true, true).delay(1100).animate({ "right": "45px" }, 600, "easeOutQuart");
                    $("#websoft").find(".slider-img-3").stop(true, true).delay(1700).animate({ "right": 0 }, 600, "easeOutQuart");
                    $("#websoft").find(".group-1").find(".img").stop(true, true).delay(2300).animate({ "bottom": 0, "right": 0, "left": 0, "top": 0, "width": "100%" }, 600, "easeOutQuad");
                    $("#websoft").find(".group-1").find(".text").stop(true, true).delay(2900).fadeIn(1000);
                    $("#websoft").find(".group-3").stop(true, true).delay(3900).animate({ "left": 0, "top": 0 }, 700, "easeOutSine");
                } else if (idf == "outsource") {
                    //outsource
                    $("#outsource").find(".group-2").css({ "bottom": "100%" });
                    $("#outsource").find(".group-1").css({ "right": "-100%" }).find(".banner-title").find("span").css({ "display": "none", "right": "200%" })
                    .parents(".group-1").find(".description").hide();
                    $("#outsource").find(".group-2").stop(true, true).delay(500).animate({ "bottom": 0 }, 500, "easeOutBack");
                    $("#outsource").find(".group-1").stop(true, true).delay(1000).animate({ "right": 0 }, 500, "linear");
                    $("#outsource").find(".banner-title").find("span").stop(true, true).delay(1500).fadeIn("fast").animate({ "right": 0 }, 800, "easeOutQuart");
                    $("#outsource").find(".description").stop(true, true).delay(2300).fadeIn(1000);
                } else if (idf == "seosem") {
                    //seosem
                    $("#seosem").find(".group-1").css({ "bottom": "-150%" });
                    $("#seosem").find(".slider-img-1").hide();
                    $("#seosem").find(".slider-img-2").hide();
                    $("#seosem").find(".slider-img-3").hide();
                    $("#seosem").find(".group-3").css({ "left": "-100%" }).find("p").css({ "left": "100%" });
                    $("#seosem").find(".group-1").stop(true, true).delay(500).animate({ "bottom": 0 }, 1000, "easeOutQuad");
                    $("#seosem").find(".group-3").stop(true, true).delay(1500).animate({ "left": 0 }, 600, "easeOutCirc");
                    $("#seosem").find(".group-3").find(".text-1").stop(true, true).delay(2200).animate({ "left": 0 }, "fast", "linear");
                    $("#seosem").find(".group-3").find(".text-2").stop(true, true).delay(2300).animate({ "left": 0 }, "fast", "linear");
                    $("#seosem").find(".group-3").find(".text-3").stop(true, true).delay(2400).animate({ "left": 0 }, "fast", "easeInQuad");
                    $("#seosem").find(".slider-img-1").stop(true, true).delay(2900).fadeIn(500);
                    $("#seosem").find(".slider-img-2").stop(true, true).delay(3100).fadeIn(500);
                    $("#seosem").find(".slider-img-3").stop(true, true).delay(3800).fadeIn(1000);
                } else if (idf == "businessweb") {
                    $("#businessweb").find(".group-1").find("img").css({ "right": "100%" });
                    $("#businessweb").find(".group-2").find(".logo").css({ "left": "200%" });
                    $("#businessweb").find(".group-2").find(".images-1").hide();
                    $("#businessweb").find(".group-1").find(".images-1").stop(true, true).delay(500).animate({ "right": 0 }, 500, "easeOutQuad");
                    $("#businessweb").find(".group-1").find(".images-2").stop(true, true).delay(1000).animate({ "right": 0 }, 500, "linear");
                    $("#businessweb").find(".group-1").find(".text-1").stop(true, true).delay(1500).animate({ "right": 0 }, 500, "linear");
                    $("#businessweb").find(".group-1").find(".text-2").stop(true, true).delay(2000).animate({ "right": 0 }, 500, "linear");
                    $("#businessweb").find(".group-2").find(".logo").stop(true, true).delay(2500).animate({ "left": 0 }, 500, "linear");
                    $("#businessweb").find(".group-2").find(".images-1").stop(true, true).delay(3000).fadeIn(1000);
                }
            }
        }
    });
})(jQuery);