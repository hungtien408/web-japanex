(function ($) {
    $(window).load(function () {
        EqualSizer('.wrap-faq .left .nav-tabs > li a,.wrap-guide .japanex-guide .item-cate .item .tit');
        //height_jpweb();
        height_text();
    });
    $(window).resize(function () {
        hover_problem();
        respon_es();
        height_bread_web();
        height_menumo();
        //height_jpweb();
        height_right();
    });
    $(function () {
        mymap();
        myfunload();
        hover_problem();
        cuocphi();
        //service();
        respon_es();
        height_right();
        init();
        height_bread_web();
        bread_web();
        height_menumo();
        //pager();

        $('.wrap-faq .right').mCustomScrollbar({
            theme: "dark-thick",
        });
        $('.wrap-faq .left .faq-tab .tab-content .mt').mCustomScrollbar({
            theme: "dark-thick",
            autoHideScrollbar: true,
        });
        $('#bread-web').mCustomScrollbar({
            theme: "dark-thick",
            autoHideScrollbar: true,
        });
        $('.content-menu-mo .menu').mCustomScrollbar({
            theme: "dark-thick",
            autoHideScrollbar: true,
        });
        /* accodion tin van */
        $(".faq-acc .content").hide();
        // Áp dụng sự kiện click vào thẻ h3
        $(".faq-acc h3").click(function () {
            $('.faq-acc .item').removeClass('active');
            // chọn .accordion (do phần tử đi đi ngay sau phần tử h3 nên ta dùng .next())
            $accordion = $(this).next();
            // Kiểm tra nếu đang ẩn thì sẽ hiện và ẩn các phần tử khác
            // Nếu đang hiện thì click vào h3 sẽ ẩn
            if ($accordion.is(':hidden') === true) {
                $(".faq-acc .content").slideUp();
                $accordion.slideDown();
            } else {
                $accordion.slideUp();
            }
        });
    });
})(jQuery);
function height_menumo() {
    n = $(window).height();
    x = $('.content-menu-mo .head').height();
    z = $('.copy-right-mo').height();
    $('.content-menu-mo .menu').css('height',(n - (x + z + 10)));
    //console.log(n, x, z);
}
function bread_web() {
    $('.btn-shop-mo').click(function () {
        $('#bread-web').stop(true, false, true).slideToggle(300);
    });
    $('#bread-web li').click(function () {
        x = $(this).attr('id');
        $('.wrap-shop .item').hide();
        $('.wrap-shop .item[data-id="' + x + '"]').show();
        if (x == "all") {
            $('.wrap-shop .item').show();
        }
        $('#bread-web').slideUp(300);
    });
}
function height_bread_web() {
    n = $(window).height();
    $('#bread-web').css('max-height', (n - 100));
}
function height_text() {
    n = $('.wrap-faq .left .nav-tabs > li:nth-child(3) a').height();
    $('.wrap-faq .left .nav-tabs > li:nth-child(3) a').css('line-height', n +"px");
}
//function pager() {
//    var records_1 = $('#mt-1 li').length;
//    var records_2 = $('#mt-2 li').length;
//    var records_3 = $('#mt-3 li').length;
//    $('#green-1').smartpaginator({
//        totalrecords: records_1,
//        recordsperpage: 4,
//        datacontainer: 'mt-1',
//        dataelement: 'li',
//        display: 'single',
//    });
//    $('#green-2').smartpaginator({
//        totalrecords: records_2,
//        recordsperpage: 4,
//        datacontainer: 'mt-2',
//        dataelement: 'li',
//        display: 'single',
//    });
//    $('#green-3').smartpaginator({
//        totalrecords: records_3,
//        recordsperpage: 4,
//        datacontainer: 'mt-3',
//        dataelement: 'li',
//        display: 'single',
//    });
//}
var item;
var item1;
function init() {
    //localStorage.getItem('item');// get
    var store = localStorage.getItem("item");
    if (typeof store != "undefined" && store != null) {
        //$("#result").innerHTML = localStorage.getItem("item");
        //$("#result").html(store);
        $('.wrap-faq .left .tab-content .tab-pane').removeClass('active');
        $('.wrap-faq .left .nav-tabs li').removeClass('active');
        var x = $('.wrap-faq .left .tab-content li[id="' + store + '"]');
        x.addClass('active');
        x.parents('.tab-pane').addClass('active');
        var y = x.parents('.tab-pane').attr('id');
        $('.wrap-faq .left .nav-tabs li a[href="#' + y + '"]').parent().addClass('active');
        $('.wrap-faq .right .item[data-id="' + store + '"]').addClass('active');

        $('.wrap-faq .left .tab-content .faq-acc .item[data-id="' + store + '"]').addClass('active');
        //alert(y);
        //var myObj = $('.wrap-faq .left');
        //if (myObj.length) {
        //    $('html, body').animate({
        //        scrollTop: myObj.offset().top
        //    }, 1000);
        //}
    }
    localStorage.removeItem("item");

    //var store1 = localStorage.getItem("item1");
    //if (typeof store1 != "undefined" && store1 != null) {
    //    //$("#result").innerHTML = localStorage.getItem("item");
    //    //$("#result").html(store);
    //    $('.wrap-faq .left .tab-content .tab-pane').removeClass('active');
    //    $('.wrap-faq .left .nav-tabs li').removeClass('active');
    //    var x = $('.wrap-faq .left .tab-content li[id="' + store1 + '"]');
    //    x.addClass('active');
    //    x.parents('.tab-pane').addClass('active');
    //    var y = x.parents('.tab-pane').attr('id');
    //    $('.wrap-faq .left .nav-tabs li a[href="#' + y + '"]').parent().addClass('active');
    //    $('.wrap-faq .right .item[data-id="' + store1 + '"]').addClass('active');
    //    //alert(y);
    //    //var myObj = $('.wrap-faq .left');
    //    //if (myObj.length) {
    //    //    $('html, body').animate({
    //    //        scrollTop: myObj.offset().top
    //    //    }, 1000);
    //    //}
    //}
    //localStorage.removeItem("item1");
}
$(".japanex-question .item-cate .item").on('click', function () {
    var item_id = $(this).attr('data-id');
    localStorage.setItem('item', item_id); //set
});
$(".japanex-website .img-left .item .link").on('click', function () {
    var item_id1 = $(this).attr('data-id');
    localStorage.setItem('item1', item_id1); //set
});
function height_right() {
    var n = $('.Estimate-table.width_2 .left').outerHeight();
    $('.Estimate-table.width_2 .right').outerHeight(n);

    var m = $('.wrap-faq .left').outerHeight();
    $('.wrap-faq .right').outerHeight(m);
}
function service() {
    var array = []; // tạo 1 mảng array
    var arr = []; // tạo 1 mảng array
    var n = $('.service-kh .item-hidden .item').length;
    if (n % 2 == 1) {
        var m = n / 2;
        var y = m + 0.5;
        for (var x = 0; x <= y; x++) {
            array.push($('.service-kh .item-hidden .item:nth-of-type(' + x + ')'));
        }
    }
    else if (n % 2 == 0) {
        var m = n / 2;
        var y = m;
        for (var x = 0; x <= y; x++) {
            array.push($('.service-kh .item-hidden .item:nth-of-type(' + x + ')'));
        }
    }
    var len = array.length; // đếm số phần tử trong mảng
    for (var i = 0; i < len; i++) {
        array[i].appendTo('.service-kh .it-left .cate-item');
    }
    var o = $('.service-kh .item-hidden .item').length;
    for (var x = 0; x <= o; x++) {
        arr.push($('.service-kh .item-hidden .item:nth-of-type(' + x + ')'));
    }
    var leng = arr.length; // đếm số phần tử trong mảng
    for (var i = 0; i < leng; i++) {
        arr[i].appendTo('.service-kh .it-right .cate-item');
    }
}
function respon_es() {
    if ($(window).width() <= 991) {
        $('.wrap-service .Estimate-table').removeClass('width_2');
        $('.wrap-service .Estimate-table').addClass('width_1');
    }
    else {
        $('.wrap-service .Estimate-table').removeClass('width_1');
        $('.wrap-service .Estimate-table').addClass('width_2');
    }
}
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    //$(".panel-a").mobilepanel();
    $("#menu > li").not(".home").clone().appendTo($("#menuMobiles"));
    $("#menuMobiles input").remove();
    $("#menuMobiles > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobiles li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu > li:last-child").addClass("last");
    $("#menu > li:first-child").addClass("fisrt");

    $("#menu > li").find("ul").addClass("menu-level");

    $('#menu li').hover(function () {
        $(this).children('ul').stop(true, false, true).slideToggle(300);
    });
    $('.right-head .top > ul > li').click(function () {
        $(this).children('ul').stop(true, false, true).slideToggle(300);
    });

    $('.tab-content .tab-pane').first().addClass('active');
    $('.nav-tabs li').first().addClass('active');

    /*=====  =====*/

    $('.problem_solution .problem .item').first().addClass('active');
    $('.problem_solution .solution .item').first().addClass('active');

    $('.wrap-faq .tab-content ul li').click(function () {
        $('.wrap-faq .right .item').removeClass('active');
        $('.wrap-faq .tab-content ul li').removeClass('active');
        $(this).addClass('active');
        n = $(this).attr('id');
        $('.wrap-faq .right .item[data-id="' + n + '"]').addClass('active');
    });

    $('.head-mo .menu-toggle span').click(function () {
        $('.content-menu-mo').toggleClass('active');
        $('.head-mo').append('<div id="over-bg"></div>');
    });
    $(document).on('click', "#over-bg", function () {
        $('.content-menu-mo').removeClass('active');
        $('#over-bg').fadeOut();
        $('#over-bg').remove();
        return false;
    });
}

/*=========================================================================*/
//================== scroll top
$(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
        $('.scroll-to-top').fadeIn();
    } else {
        $('.scroll-to-top').fadeOut();
    }
});

//$(window).scroll(function () {
//    if ($(this).scrollTop() > 138) {
//        $('.bot-head').addClass('bot-head-scroll');
//    }
//    else {
//        $('.bot-head').removeClass('bot-head-scroll');
//    }
//});

$('.scroll-to-top').on('click', function (e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: 0 }, 800);
    return false;
});

function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function() {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};
function EqualSizer_1(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function () {
        DoEqualSizer(myclass);
    });
};
function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function() { 
        DoEqualSizer(myclass); 
    });
};
//==================
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
/****/
function hover_problem() {
    if ($(window).width() >= 991) {
        $('.problem_solution .problem .item').click(function () {
            $('.problem_solution .problem .item').removeClass('active');
            $('.problem_solution .solution .item').removeClass('active');
            $(this).addClass('active');
            var n = $(this).attr('id');
            $('.problem_solution .solution .item[data-id="' + n + '"]').addClass('active');
        });
        //$('.japanex-website .content .img-left .item').click(function () {
        //    $('.japanex-website .content .img-left .item').removeClass('active');
        //    $('.japanex-website .content .de-right .item').removeClass('active');
        //    $(this).addClass('active');
        //    var n = $(this).attr('id');
        //    $('.japanex-website .content .de-right .item[data-id="' + n + '"]').addClass('active');
        //});
    }
    else {

    }
}
function cuocphi() {
    var array = []; // tạo 1 mảng array
    var arr = []; // tạo 1 mảng array
    var n = $('.cuocphi .item-hidden .item').length;
    if (n % 2 == 1) {
        var m = n / 2;
        var y = m + 0.5;
        for (var x = 0; x <= y; x++) {
            array.push($('.cuocphi .item-hidden .item:nth-of-type(' + x + ')'));
        }
    }
    else if (n % 2 == 0) {
        var m = n / 2;
        var y = m;
        for (var x = 0; x <= y; x++) {
            array.push($('.cuocphi .item-hidden .item:nth-of-type(' + x + ')'));
        }
    }
    var len = array.length; // đếm số phần tử trong mảng
    for (var i = 0; i < len; i++) {
        array[i].clone().appendTo('.cuocphi .it-left .cate-item');
        array[i].appendTo('.item-clone .cate-item');
    }
    var o = $('.cuocphi .item-hidden .item').length;
    for (var x = 0; x <= o; x++) {
        arr.push($('.cuocphi .item-hidden .item:nth-of-type(' + x + ')'));
    }
    var leng = arr.length; // đếm số phần tử trong mảng
    for (var i = 0; i < leng; i++) {
        arr[i].clone().appendTo('.cuocphi .it-right .cate-item');
        arr[i].appendTo('.item-clone .cate-item');
    }

    /**/
}
function height_jpweb() {
    var n = $('.japanex-website .content .img-left').height();
    $('.japanex-website .content .de-right').height(n - 24);
    $('.japanex-website .content .de-right').mCustomScrollbar({
        autoHideScrollbar: true,
        theme: "dark-thick",
    });
}