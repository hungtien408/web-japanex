$(document).ready(function () {
    //slider site
    //if($("*").hasClass("wrap-people")){
    //    mypeople();
    //}else{
    //    myslider();
    //}

    //function myslider() {
    //    var wislider = $(window).width();
    //    var sliderO;
    //    if (wislider < 768) {
    //        sliderO = $('#slidergg').bxSlider({
    //            pager: false
    //        });
    //    } else if (wislider > 981 && wislider < 1199) {
    //        sliderO = $('#slidergg').bxSlider({
    //            pager: false,
    //            slideWidth: 300,
    //            minSlides: 1,
    //            maxSlides: 3,
    //            slideMargin: 0
    //        });
    //    } else if (wislider > 768 && wislider < 980) {
    //        sliderO = $('#slidergg').bxSlider({
    //            pager: false,
    //            slideWidth: 330,
    //            minSlides: 1,
    //            maxSlides: 3,
    //            slideMargin: 20
    //        });
    //    } else if (wislider > 1200) {
    //        sliderO = $('#slidergg').bxSlider({
    //            pager: false,
    //            slideWidth: 290,
    //            minSlides: 1,
    //            maxSlides: 3,
    //            slideMargin: 10
    //        });
    //    }
//        $(window).resize(function () {
//            var wisliderr = $(window).width();
//            if (wisliderr < 768) {
//                sliderO.reloadSlider({
//                    pager: false
//                });
//            } else if (wisliderr > 981 && wisliderr < 1199) {
//                sliderO.reloadSlider({
//                    pager: false,
//                    slideWidth: 300,
//                    minSlides: 1,
//                    maxSlides: 3,
//                    slideMargin: 0
//                });
//            } else if (wisliderr > 768 && wisliderr < 980) {
//                sliderO.reloadSlider({
//                    pager: false,
//                    slideWidth: 330,
//                    minSlides: 1,
//                    maxSlides: 3,
//                    slideMargin: 20
//                });
//            } else if (wisliderr > 1200) {
//                sliderO.reloadSlider({
//                    pager: false,
//                    slideWidth: 290,
//                    minSlides: 1,
//                    maxSlides: 3,
//                    slideMargin: 10
//                });
//            }
//        });
    //}
    //slider site
    mypeople();
    function mypeople() {
        var sliderPeople = $('#list-people').bxSlider({
            pager: false
        });
        var countslider = $('#list-people').size();
        if (countslider > 0) {
            mysliderList($(window).width());
            $(window).resize(function () {
                var wipeople2 = $(window).width();
                mysliderList(wipeople2);
            });
        }
        function mysliderList(wipeople2) {
            if (wipeople2 < 480) {
                sliderPeople.reloadSlider({
                    pager: false
                });
            } else if (wipeople2 > 480 && wipeople2 < 768) {
                sliderPeople.reloadSlider({
                    pager: false,
                    slideWidth: 216,
                    minSlides: 1,
                    maxSlides: 2,
                    slideMargin: 14
                });
            } else if (wipeople2 > 981 && wipeople2 < 1199) {
                sliderPeople.reloadSlider({
                    pager: false,
                    slideWidth: 216,
                    minSlides: 1,
                    maxSlides: 4,
                    slideMargin: 0
                });
            } else if (wipeople2 > 768 && wipeople2 < 980) {
                sliderPeople.reloadSlider({
                    pager: false,
                    slideWidth: 216,
                    minSlides: 1,
                    maxSlides: 3,
                    slideMargin: 14
                });
            } else if (wipeople2 > 1200) {
                sliderPeople.reloadSlider({
                    pager: false,
                    slideWidth: 216,
                    minSlides: 1,
                    maxSlides: 4,
                    slideMargin: 19
                });
            }
        }
    }
    //
    $(".list-process .pro-con").click(function () {
        $(".list-process .box-process").removeClass("current");
        $(this).toggleClass("open");
        $(this).parent(".box-process").addClass("current");
        if ($(this).hasClass("open") && $(this).parent(".box-process").hasClass("current")) {
            $(this).parent(".box-process").find(".pro-content").slideToggle();
            $(".list-process .box-process").each(function () {
                if ($(this).find(".pro-con").hasClass("open") && !$(this).hasClass("current")) {
                    $(this).find(".pro-con").removeClass("open");
                    $(this).find(".pro-content").slideUp();
                } else if (!$(this).find(".pro-con").hasClass("open") && $(this).hasClass("current")) {
                    $(this).removeClass("current");
                    $(this).find(".pro-content").slideUp();
                } else {
                    $(this).parent(".box-process").find(".pro-content").slideUp();
                }
            });
        } else {
            $(this).parent(".box-process").find(".pro-content").slideUp();
        }
    });
    //
});