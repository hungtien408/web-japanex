<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function currency_format(num, rounding) {
            if (!$.isNumeric(num)) {
                return num
            }
            if (rounding === null || typeof rounding === 'undefined' || rounding == false) {
                var roundingConfig = 10
                num = Math.ceil(num / roundingConfig) * roundingConfig
            }
            num = num.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, '$1,')

            return (num)
        }
        $(document).ready(function () {
            $("#checkboxBH").click(function () {
                if ($('.gia-tri').hasClass('show')) {
                    $('.gia-tri').removeClass('show');
                    $("[id$='txtGiaTriDonHang']").val('');
                    var sokg = $("[id$='dropSoKg']").val();
                    if (sokg > 30) {
                        $("[id$='lblMoneyJP']").text("0 JPY");
                        $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                        alert("Vui lòng nhập số kg dưới 30kg");
                    }
                    else if (sokg != "" && sokg != 0) {
                        var gtdh = $("[id$='txtGiaTriDonHang']").val();
                        if (typeof (gtdh) === "undefined") {
                            gtdh = 0;
                        } else {
                            gtdh = $("[id$='txtGiaTriDonHang']").val();
                        }
                        var tg = parseInt($("#exrate").text());
                        var vanchuyen = $("[id$='dropVanChuyen'] option:selected").val();
                        $.ajax({
                            type: "POST",
                            url: "default.aspx/LoadData",
                            data: "{'SoKg': '" + sokg + "','GTDH': '" + gtdh + "','VanChuyen': '" + vanchuyen + "'}",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            async: true,
                            cache: false,
                            success: function (msg) {
                                if (msg.d != "") {
                                    $("[id$='lblMoneyJP']").text(currency_format(msg.d, 0) + " JPY");
                                    var vnd = (msg.d) * tg;
                                    $("[id$='lblMoneyVN']").text("(" + currency_format(vnd, 0) + " VNĐ)");
                                }
                            }
                        });
                    } else {
                        $("[id$='lblMoneyJP']").text("0 JPY");
                        $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                    }
                }
                else {
                    $('.gia-tri').addClass('show');
                }
            });
            $("[id$='txtSoKg']").keyup(function () {
                var sokg = $(this).val();
                if (sokg > 30) {
                    $("[id$='lblMoneyJP']").text("0 JPY");
                    $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                    alert("Vui lòng nhập số kg dưới 30kg")
                }
                else if (sokg != "" && sokg != 0) {
                    var gtdh = $("[id$='txtGiaTriDonHang']").val();
                    if (typeof (gtdh) === "undefined") {
                        gtdh = 0;
                    } else {
                        gtdh = $("[id$='txtGiaTriDonHang']").val();
                    }
                    var tg = parseInt($("#exrate").text());
                    var vanchuyen = $("[id$='dropVanChuyen'] option:selected").val();
                    $.ajax({
                        type: "POST",
                        url: "default.aspx/LoadData",
                        data: "{'SoKg': '" + sokg + "','GTDH': '" + gtdh + "','VanChuyen': '" + vanchuyen + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: true,
                        cache: false,
                        success: function (msg) {
                            if (msg.d != "") {
                                $("[id$='lblMoneyJP']").text(currency_format(msg.d, 0) + " JPY");
                                var vnd = (msg.d) * tg;
                                $("[id$='lblMoneyVN']").text("(" + currency_format(vnd, 0) + " VNĐ)");
                            }
                        }
                    });
                } else {
                    $("[id$='lblMoneyJP']").text("0 JPY");
                    $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                }
            });
            $("[id$='dropSoKg']").on('change', function () {
                var sokg = $(this).val();
                if (sokg > 30) {
                    $("[id$='lblMoneyJP']").text("0 JPY");
                    $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                    alert("Vui lòng nhập số kg dưới 30kg")
                }
                else if (sokg != "" && sokg != 0) {
                    var gtdh = $("[id$='txtGiaTriDonHang']").val();
                    if (typeof (gtdh) === "undefined") {
                        gtdh = 0;
                    } else {
                        gtdh = $("[id$='txtGiaTriDonHang']").val();
                    }
                    var tg = parseInt($("#exrate").text());
                    var vanchuyen = $("[id$='dropVanChuyen'] option:selected").val();
                    $.ajax({
                        type: "POST",
                        url: "default.aspx/LoadData",
                        data: "{'SoKg': '" + sokg + "','GTDH': '" + gtdh + "','VanChuyen': '" + vanchuyen + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: true,
                        cache: false,
                        success: function (msg) {
                            if (msg.d != "") {
                                $("[id$='lblMoneyJP']").text(currency_format(msg.d, 0) + " JPY");
                                var vnd = (msg.d) * tg;
                                $("[id$='lblMoneyVN']").text("(" + currency_format(vnd, 0) + " VNĐ)");
                            }
                        }
                    });
                } else {
                    $("[id$='lblMoneyJP']").text("0 JPY");
                    $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                }
            })
            $("[id$='txtGiaTriDonHang']").keyup(function () {
                var sokg = $("[id$='dropSoKg']").val();
                if (sokg > 30) {
                    $("[id$='lblMoneyJP']").text("0 JPY");
                    $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                    alert("Vui lòng nhập số kg dưới 30kg")
                }
                else if (sokg != "" && sokg != 0) {
                    var gtdh = $(this).val();
                    if (typeof (gtdh) === "undefined") {
                        gtdh = 0;
                    } else {
                        gtdh = $(this).val();
                    }
                    var tg = parseInt($("#exrate").text());
                    var vanchuyen = $("[id$='dropVanChuyen'] option:selected").val();
                    $.ajax({
                        type: "POST",
                        url: "default.aspx/LoadData",
                        data: "{'SoKg': '" + sokg + "','GTDH': '" + gtdh + "','VanChuyen': '" + vanchuyen + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: true,
                        cache: false,
                        success: function (msg) {
                            if (msg.d != "") {
                                $("[id$='lblMoneyJP']").text(currency_format(msg.d, 0) + " JPY");
                                var vnd = (msg.d) * tg;
                                $("[id$='lblMoneyVN']").text("(" + currency_format(vnd, 0) + " VNĐ)");
                            }
                        }
                    });
                } else {
                    $("[id$='lblMoneyJP']").text("0 JPY");
                    $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                }
            });
            $("[id$='txtGiaTriDonHang']").keydown(function (e) {
                // Allow: backspace, delete, tab, escape, enter and .
                if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                    // Allow: Ctrl+A, Command+A
                    (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
                    // Allow: home, end, left, right, down, up
                    (e.keyCode >= 35 && e.keyCode <= 40)) {
                    // let it happen, don't do anything
                    return;
                }
                // Ensure that it is a number and stop the keypress
                if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                }
            });
            $("[id$='dropVanChuyen']").change(function () {
                $("[id$='dropVanChuyen'] option:selected").each(function () {
                    var sokg = $("[id$='dropSoKg']").val();
                    if (sokg > 30) {
                        $("[id$='lblMoneyJP']").text("0 JPY");
                        $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                        alert("Vui lòng nhập số kg dưới 30kg")
                    }
                    else if (sokg != "" && sokg != 0) {
                        var gtdh = $("[id$='txtGiaTriDonHang']").val();
                        if (typeof (gtdh) === "undefined") {
                            gtdh = 0;
                        } else {
                            gtdh = $("[id$='txtGiaTriDonHang']").val();
                        }
                        var tg = parseInt($("#exrate").text());
                        var vanchuyen = $(this).val();
                        $.ajax({
                            type: "POST",
                            url: "service.aspx/LoadData",
                            data: "{'SoKg': '" + sokg + "','GTDH': '" + gtdh + "','VanChuyen': '" + vanchuyen + "'}",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            async: true,
                            cache: false,
                            success: function (msg) {
                                if (msg.d != "") {
                                    $("[id$='lblMoneyJP']").text(currency_format(msg.d, 0) + " JPY");
                                    var vnd = (msg.d) * tg;
                                    $("[id$='lblMoneyVN']").text("(" + currency_format(vnd, 0) + " VNĐ)");
                                }
                            }
                        });
                    } else {
                        $("[id$='lblMoneyJP']").text("0 JPY");
                        $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="intro">
        <img src="assets/images/banner.png" alt="" />
        <div class="container">
            <div class="intro-cate">
                <div class="item">
                    <img src="assets/images/it1.png" alt="" />
                    <p>Tự mua hàng Nhật</p>
                    <span>OK</span>
                </div>
                <div class="item">
                    <img src="assets/images/it2.png" alt="" />
                    <p>
                        Chuyển phát nhanh
                        <br />
                        quốc tế EMS
                    </p>
                    <span>OK</span>
                </div>
                <div class="item">
                    <img src="assets/images/it3.png" alt="" />
                    <p>Thanh toán VNĐ</p>
                    <span>OK</span>
                </div>
                <div class="item">
                    <img src="assets/images/it4.png" alt="" />
                    <p>
                        Đổi / Trả / Chuyển hàng
                        <br />
                        Quốc nội Nhật Bản
                    </p>
                    <span>OK</span>
                </div>
            </div>
        </div>
        <div class="intro-mobile">
            <ul>
                <li>Tự mua hàng Nhật</li>
                <li>Chuyển phát nhanh quốc tế EMS</li>
                <li>Thanh toán VNĐ</li>
                <li>Đổi / Trả / Chuyển hàng <br />
                quốc nội Nhật Bản</li>
            </ul>
        </div>
    </div>
    <div class="wrap-df">
        <div class="japanex">
            <h1>tại sao chọn <span>japan<i>EX?</i></span></h1>
            <img src="assets/images/intro.png" alt="" />
            <h2>Giới thiệu về Japan<span>Ex</span></h2>
            <p>
                <b>JapanEx</b> là sự kết hợp giữa
                <br />
                dịch vụ kho hàng chuyên nghiệp tại Nhật và
                <br />
                dịch vụ chuyển phát nhanh quốc tế  <b>EMS</b>
            </p>
        </div>
        <div class="japanex-choose">
            <h1>tại sao chọn <span>japan<i>EX?</i></span></h1>
            <div class="item-cate">
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/ch1.png" alt="" />
                        <h2>Hỗ trợ hướng dẫn mua hàng</h2>
                        <p>- Trung tâm tư vấn, chăm sóc khách hàng chuyên nghiệp</p>
                        <p>
                            - Hướng dẫn khách hàng tự mua hàng Nhật bằng cách
                            <br class="break" />
                            đăng ký tài khoản website trực tuyến: Amazon, Rakuten, Yahoo,… 
                        </p>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/ch2.png" alt="" />
                        <h2>Kho hàng chuyên nghiệp</h2>
                        <p>
                            <b>JapanEx</b>  sở hữu hệ thống kho hàng quy mô, có giấy phép,
                            <br class="break" />
                            đạt chuẩn tại Nhật Bản;
                        </p>
                        <p>- Dịch vụ kho hàng đa dạng, chuyên nghiệp: thanh toán hộ,
                            <br class="break" />
                            nhận hàng, đóng gói;</p>
                        <p>- Thông quan hàng hoá xuất về Việt Nam qua dịch vụ
                            <br class="break" />
                            chuyển phát nhanh quốc tế <b>EMS</b></p>
                        <p>- <a href="shipping.aspx">Xuất hàng quốc nội Japan</a> (theo yêu cầu, nếu không dùng <b>EMS</b>)</p>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/ch3.png" alt="" />
                        <h2>Giá phí ổn định, cạnh tranh</h2>
                        <p>- Cước phí <b>EMS</b>: sử dụng bảng giá gốc của <b>EMS</b></p>
                        <p>- Phí dịch vụ kho hàng: từ 200 JPY (40.000 VNĐ)/kiện hàng.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/ch4.png" alt="" />
                        <h2>Thanh toán linh hoạt</h2>
                        <p>- Có thể thanh toán chuyển khoản bằng VNĐ.</p>
                    </div>
                </div>
            </div>
            <div class="choose-mobile">
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/mo-cskh.png" alt="" />
                        <p>Chăm sóc khách hàng <br />
                        tận tình</p>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/mo-dvcn.png" alt="" />
                        <p>Dịch vụ<br />
                        chuyên nghiệp</p>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/mo-giaphi.png" alt="" />
                        <p>Giá phí ổn định<br />
                        cạnh tranh</p>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/mo-thanhtoan.png" alt="" />
                        <p>Thanh toán<br />
                        linh hoạt</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="japanex-subjects">
            <h1>đối tượng sử dụng <span>japan<i>EX?</i></span></h1>
            <div class="item-cate">
                <div class="item">
                    <img src="assets/images/dt1.png" alt="" />
                    <div class="content">
                        <span>Người tiêu dùng Việt</span>
                        <p>- tại Việt Nam;</p>
                        <p>- tại các Quốc gia khác.</p>
                    </div>
                </div>
                <div class="item">
                    <img src="assets/images/dt2.png" alt="" />
                    <div class="content">
                        <span>Người tiêu dùng có nhu cầu</span>
                        <p>
                            Tự mua hàng Nhật tại các website
                            <br />
                            thương mại điện tử tại Nhật:
                        </p>
                        <p>Amazon, Rakuten, Yahoo,...</p>
                    </div>
                </div>
                <div class="item">
                    <img src="assets/images/dt3.png" alt="" />
                    <div class="content">
                        <span>Người tiêu dùng có nhu cầu mua</span>
                        <p>- Hàng nhỏ lẻ;</p>
                        <p>- Hàng cồng kềnh.</p>
                    </div>
                </div>
                <div class="item">
                    <img src="assets/images/dt4.png" alt="" />
                    <div class="content">
                        <span>Người tiêu dùng có nhu cầu</span>
                        <p>- Tự thanh toán tiền hàng;</p>
                        <p>- Thanh toán chủ yếu bằng thẻ tín dụng.</p>
                    </div>
                </div>
            </div>
            <div class="subjects-mobile">
                <div class="item">
                    <img src="assets/images/mo-dtsd.png" alt="" />
                    <p>
                        Nguời tiêu dùng Việt <br />
                        <b>tại Việt Nam</b> và <br />
                        <b>tại các Quốc gia khác</b>
                    </p>
                </div>
                <div class="item">
                    <img src="assets/images/mo-dtsd.png" alt="" />
                    <p>
                        Người tiêu dùng có <br />
                        nhu cầu <b>tự mua hàng <br />
                        Nhật tại các website <br />
                        thương mại điện tử tại <br />
                        Nhật: Amazon, <br />
                        Rakuten, Yahoo,...</b>
                    </p>
                </div>
                <div class="item">
                    <img src="assets/images/mo-dtsd.png" alt="" />
                    <p>
                        Người tiêu dùng có <br />
                        nhu cầu <b>mua hàng <br />
                        nhỏ lẻ, cồng kềnh</b>
                    </p>
                </div>
                <div class="item">
                    <img src="assets/images/mo-dtsd.png" alt="" />
                    <p>
                        Người tiêu dùng có nhu <br />
                        cầu <b>tự thanh toán tiền <br />
                        hàng và thanh toán chủ <br />
                        yếu bằng thẻ tín dụng</b>
                    </p>
                </div>
            </div>
        </div>
        <div class="problem_solution">
            <div class="problem">
                <h1>vấn đề của <span>thị trường</span></h1>
                <div class="item-cate">
                    <div class="item" id="vd_1">
                        <div class="img">
                            <img src="assets/images/vd1.png" alt="" />
                        </div>
                        <p>
                            Cước và phí
                            <br />
                            thay đổi liên tục
                        </p>
                    </div>
                    <div class="item" id="vd_2">
                        <div class="img">
                            <img src="assets/images/vd2.png" alt="" />
                        </div>
                        <p>
                            Thời gian giao hàng
                            <br />
                            không ổn định
                        </p>
                    </div>
                    <div class="item" id="vd_3">
                        <div class="img">
                            <img src="assets/images/vd3.png" alt="" />
                        </div>
                        <p>
                            Dịch vụ chăm sóc
                            <br />
                            không tốt
                        </p>
                    </div>
                    <div class="item" id="vd_4">
                        <div class="img">
                            <img src="assets/images/vd4.png" alt="" />
                        </div>
                        <p>
                            Mất hàng nhưng không
                            <br />
                            được bồi thường
                        </p>
                    </div>
                    <div class="item" id="vd_5">
                        <div class="img">
                            <img src="assets/images/vd5.png" alt="" />
                        </div>
                        <p>
                            Mất thời gian theo dõi
                            <br />
                            thời hạn giao hàng
                        </p>
                    </div>
                    <div class="item" id="vd_6">
                        <div class="img">
                            <img src="assets/images/vd6.png" alt="" />
                        </div>
                        <p>
                            Hàng nhỏ lẻ, cồng kềnh:
                            <br />
                            cước phí cao (tính theo
                            <br />
                            kích thước quy đổi)
                        </p>
                    </div>
                </div>
            </div>
            <div class="solution">
                <h1>Giải pháp của <span>japan<i>Ex</i></span></h1>
                <div class="item-cate">
                    <div class="item" data-id="vd_1">
                        <div class="img">
                            <img src="assets/images/gp-1.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Cước phí
                            <br class="break" />
                            phải chăng,
                            <br class="break" />
                            ổn định.
                        </p>
                    </div>
                    <div class="item" data-id="vd_2">
                        <div class="img">
                            <img src="assets/images/gp-2.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Thời hạn
                            <br class="break" />
                            giao hàng 2 - 6 ngày
                        </p>
                    </div>
                    <div class="item" data-id="vd_3">
                        <div class="img">
                            <img src="assets/images/gp-3.png" alt="" />
                        </div>
                        <p>
                            <b>JapanEx</b>: Dịch vụ đa dạng,
                            <br class="break" />
                            chăm sóc khách hàng
                            <br class="break" />
                            chuyên nghiệp
                        </p>
                    </div>
                    <div class="item" data-id="vd_4">
                        <div class="img">
                            <img src="assets/images/gp-4.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Có bảo hiểm
                        </p>
                    </div>
                    <div class="item" data-id="vd_5">
                        <div class="img">
                            <img src="assets/images/gp-5.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Tra cứu
                            <br class="break" />
                            thời hạn giao hàng
                            <br class="break" />
                            trên website 
                        </p>
                    </div>
                    <div class="item" data-id="vd_6">
                        <div class="img">
                            <img src="assets/images/gp-6.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: cước phí tính
                            <br class="break" />
                            theo trọng lượng
                        </p>
                    </div>
                </div>
            </div>
            <div class="problem_solution-mobile">
                <div class="head">
                    <h1>vấn đề của <span>thị trường</span></h1>
                    <h1>giải pháp của <span>japan<i>ex</i></span></h1>
                </div>
                <div class="cate-item">
                    <div class="item">
                        <div class="left">
                            <div class="wrap-con">
                                Cước và phí <br />
                                thay đổi liên tục
                            </div>
                        </div>
                        <div class="right">
                            <div class="wrap-con">
                                EMS: Cước phí  <br />
                                phải chăng, ổn định
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="left">
                            <div class="wrap-con">
                                Thời hạn giao hàng <br />
                                không ổn định
                            </div>
                        </div>
                        <div class="right">
                            <div class="wrap-con">
                                EMS: Thời hạn  <br />
                                giao hàng 2 - 6 ngày
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="left">
                            <div class="wrap-con">
                                Dịch vụ chăm sóc <br />
                                không tốt
                            </div>
                        </div>
                        <div class="right">
                            <div class="wrap-con">
                                JapanEx: Dịch vụ đa  <br />
                                dạng, chăm sóc khách <br />
                                hàng chuyên nghiệp
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="left">
                            <div class="wrap-con">
                                Mất hàng nhưng <br />
                                không dược <br />
                                bồi thường
                            </div>
                        </div>
                        <div class="right">
                            <div class="wrap-con">
                                EMS: Có bảo hiểm
                            </div>
                        </div>
                    </div> 
                    <div class="item">
                        <div class="left">
                            <div class="wrap-con">
                                Mất thời gian theo dõi <br />
                                thời hạn giao hàng
                            </div>
                        </div>
                        <div class="right">
                            <div class="wrap-con">
                                EMS: Tra cứu thời hạn <br />
                                giao hàng trên website
                            </div>
                        </div>
                    </div> 
                    <div class="item">
                        <div class="left">
                            <div class="wrap-con">
                                Hàng nhỏ lẻ, cồng kềnh: <br />
                                cước phí cao (tính theo <br />
                                kích thước quy đổi)
                            </div>
                        </div>
                        <div class="right">
                            <div class="wrap-con">
                                EMS: Cước phí tính <br /> 
                                theo trọng lượng
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <div class="clr"></div>
        <div class="contact-exchange">
            <div class="content">
                <p>TỔNG ĐÀI HỖ TRỢ KHÁCH HÀNG <b>TẠI VIỆT NAM</b></p>
                <span>1900 - 7163
                </span>
            </div>
        </div>
        <div class="japanex-guide">
            <div class="head-jp">
                <h1>5 bước hướng dẫn sử dụng <span>japan<i>EX</i></span></h1>
                <a href="Usage-Guide.aspx">
                    <img src="assets/images/plus.png" alt="" />
                    Xem thêm</a>
            </div>
            <div class="item-cate">
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd1.png" alt="" />
                    </div>
                    <h4>bước 1:</h4>
                    <span>khách hàng</span>
                    <p>ĐĂNG KÝ DỊCH VỤ</p>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd2.png" alt="" />
                    </div>
                    <h4>bước 2:</h4>
                    <span>khách hàng</span>
                    <p>
                        MUA SẮM TẠI CÁC
                        <br />
                        WEBSITE NHẬT BẢN
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd3.png" alt="" />
                    </div>
                    <h4>bước 3:</h4>
                    <h4>japan<span>Ex</span></h4>
                    <p>NHẬN HÀNG VÀ BÁO GIÁ</p>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd4.png" alt="" />
                    </div>
                    <h4>bước 4:</h4>
                    <span>khách hàng</span>
                    <p>THANH TOÁN</p>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd5.png" alt="" />
                    </div>
                    <h4>bước 5:</h4>
                    <h4>japan<span>Ex</span></h4>
                    <p>XUẤT HÀNG</p>
                </div>
            </div>
            <div class="guide-mobile">
                <div class="item">
                    <span>BƯỚC 1:</span>
                    <p><b>KHÁCH HÀNG</b> ĐĂNG KÝ DỊCH VỤ</p>
                </div>
                <div class="item">
                    <span>BƯỚC 2:</span>
                    <p><b>KHÁCH HÀNG</b> MUA SẮM <br />
                        TẠI CÁC WEBSITE NHẬT BẢN
                    </p>
                </div>
                <div class="item">
                    <span>BƯỚC 3:</span>
                    <p><b>JAPANEX</b> NHẬN HÀNG VÀ BÁO GIÁ</p>
                </div>
                <div class="item">
                    <span>BƯỚC 4:</span>
                    <p><b>KHÁCH HÀNG</b> THANH TOÁN</p>
                </div>
                <div class="item">
                    <span>BƯỚC 5:</span>
                    <p><b>JAPANEX</b> XUẤT HÀNG</p>
                </div>
                <a href="Usage-Guide.aspx" class="guide-more-mo">Xem chi tiết <i class="fa fa-caret-right"></i></a>
            </div>
        </div>
        <div class="EMS-service">
            <div class="head-EMS">
                <h1>dịch vụ / phí / dự toán</h1>
                <a href="service.aspx">
                    <img src="assets/images/plus.png" alt="" />
                    Xem thêm</a>
            </div>
            <div class="content">
                <div class="ct-mobile">
                    <div class="item">
                        <img src="assets/images/mo-dv-1.png" alt="" />
                        <p>Dịch vụ <br />
                        kho hàng</p>
                    </div>
                    <div class="item">
                        <img src="assets/images/mo-dv-2.png" alt="" />
                        <p>Dịch vụ chuyển<br />
                        phát nhanh <br />
                        quốc tế EMS</p>
                    </div>
                    <div class="item">
                        <img src="assets/images/mo-dv-3.png" alt="" />
                        <p>Dịch vụ khác</p>
                    </div>
                </div>
                <div class="ct-right">
                    <div class="item">
                        <div class="img">
                            <img src="assets/images/sv1.png" alt="" />
                        </div>
                        <div class="ct">
                            <span>Dịch vụ kho hàng:</span>
                            <p>
                                - Thanh toán hộ;
                                <br />
                                - Nhận hàng / Kiểm hàng / Đóng gói;
                                <br />
                                - Thông quan <b>EMS</b>
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img">
                            <img src="assets/images/sv2.png" alt="" />
                        </div>
                        <div class="ct">
                            <span>Dịch vụ chuyển phát nhanh
                                <br />
                                quốc tế EMS:</span>
                            <p>
                                - EMS / SAL / Air / Transport / Sea Transport
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img">
                            <img src="assets/images/sv3.png" alt="" />
                        </div>
                        <div class="ct">
                            <span>Dịch vụ khác:</span>
                            <p>
                                - Đổi / Trả hàng;
                                <br />
                                - <a href="shipping.aspx">Chuyển phát hàng quốc nội Nhật</a> dành cho Khách hàng đổi ý không dùng dịch vụ chuyển phát nhanh quốc tế, muốn <b>JapanEx</b>  chuyển phát hàng quốc nội Nhật cho các đơn vị vận chuyển xách tay, Air Cargo.<br />
                            </p>
                        </div>
                    </div>
                </div>
                <div class="ct-left">
                    <div class="Estimate-table width_1">
                        <div class="left">
                            <div class="content">
                                <img src="assets/images/estimate.png" alt="" />
                                <p>CÔNG CỤ DỰ TOÁN</p>
                            </div>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="right">
                                    <div class="form-group">
                                        <label>Quốc gia</label>
                                        <asp:DropDownList ID="dropQuocGia" runat="server" DataSourceID="odsQuocGia" DataTextField="Name" DataValueField="Id" AutoPostBack="true"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="odsQuocGia" runat="server" SelectMethod="NationSelectAll" TypeName="JapanexCommon"></asp:ObjectDataSource>
                                    </div>
                                    <div class="form-group">
                                        <label>Số kg</label>
                                        <%--<asp:RadNumericTextBox ID="txtSoKg" runat="server" Type="Number" AutoPostBack="true" OnTextChanged="txtSoKg_TextChanged">
                                            <NumberFormat AllowRounding="false" />
                                        </asp:RadNumericTextBox>--%>
                                        <%--<asp:RadNumericTextBox ID="txtSoKg" runat="server" Type="Number" MinValue="0" MaxValue="30">
                                            <NumberFormat AllowRounding="false" />
                                        </asp:RadNumericTextBox>--%>
                                        <asp:DropDownList ID="dropSoKg" runat="server" DataSourceID="odsWeight" DataTextField="Name" DataValueField="Value" OnDataBound="DropDownList_DataBound"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="odsWeight" runat="server" SelectMethod="WeightSelectAll" TypeName="JapanexCommon"></asp:ObjectDataSource>
                                        <%--<asp:TextBox ID="txtSoKg" runat="server"></asp:TextBox>--%>
                                        <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Vui lòng nhập số kg dưới 30kg" MinimumValue="0" MaximumValue="30" ControlToValidate="txtSoKg" Display="Dynamic"></asp:RangeValidator>--%>
                                    </div>
                                    <div class="form-group">
                                        <label>Chuyển phát nhanh</label>
                                        <%--<asp:DropDownList ID="dropVanChuyen" runat="server" DataSourceID="odsVanChuyen" DataTextField="Name" DataValueField="Id" AutoPostBack="true" OnSelectedIndexChanged="dropVanChuyen_SelectedIndexChanged"></asp:DropDownList>--%>
                                        <asp:DropDownList ID="dropVanChuyen" runat="server" DataSourceID="odsVanChuyen" DataTextField="Name" DataValueField="Id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="odsVanChuyen" runat="server" SelectMethod="TransporterSelectAll" TypeName="JapanexCommon"></asp:ObjectDataSource>
                                    </div>
                                    <div class="form-group">
                                        <label>Bảo hiểm</label>
                                        <%--<asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />--%>
                                        <input id="checkboxBH" type="checkbox" name="name" value=" " />
                                    </div>
                                    <asp:Panel ID="Panel1" runat="server" Visible="true">
                                        <div class="form-group gia-tri hidden">
                                            <label>Giá trị đơn hàng</label>
                                            <%--<asp:RadNumericTextBox ID="txtGiaTriDonHang" runat="server" Type="Number" AutoPostBack="true" OnTextChanged="txtGiaTriDonHang_TextChanged" Width="500">
                                                <NumberFormat AllowRounding="false" />
                                            </asp:RadNumericTextBox>
                                            <asp:RadNumericTextBox ID="txtGiaTriDonHang" runat="server" Type="Number" Width="500">
                                                <NumberFormat AllowRounding="false" />
                                            </asp:RadNumericTextBox>--%>
                                            <asp:TextBox ID="txtGiaTriDonHang" runat="server"></asp:TextBox>
                                            JPY
                                        </div>
                                        <%--<div class="form-group gia-tri">
                                            <label>Giá trị đơn hàng</label>
                                            <asp:TextBox ID="txtGiaTriDonHang" runat="server" AutoPostBack="true" OnTextChanged="txtGiaTriDonHang_TextChanged"></asp:TextBox>
                                            JPY
                                        </div>--%>
                                    </asp:Panel>
                                    <div class="clr"></div>
                                    <div class="tong">
                                        <h1>
                                            <asp:Label ID="lblMoneyJP" runat="server" Text="0 JPY"></asp:Label></h1>
                                        <p>
                                            <asp:Label ID="lblMoneyVN" runat="server" Text="(0 VNĐ)"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <a href="service.aspx" class="guide-more-mo">Xem chi tiết <i class="fa fa-caret-right"></i></a>
            </div>
        </div>
        <div class="clr"></div>
        <div class="japanex-question">
            <div class="head-ques">
                <h1>những câu hỏi <span>thường gặp</span></h1>
                <a href="FAQ.aspx">
                    <img src="assets/images/plus.png" alt="" />
                    Xem thêm</a>
            </div>
            <div class="item-cate">
                <div class="item" data-id="faq_10">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Ưu điểm và nhược điểm
                                <br class="break" />
                                của EMS ?</p>
                        </div>
                    </a>
                </div>
                <div class="item" data-id="faq_11">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Tại sao hàng nhỏ lẻ,
                                <br class="break" />
                                cồng kềnh lại tiện lợi
                                <br class="break" />
                                khi gửi EMS?</p>
                        </div>
                    </a>
                </div>
                <div class="item" data-id="faq_7">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Trả / Đổi / Chuyển hàng
                                <br class="break" />
                                quốc nội Nhật có được
                                <br class="break" />
                                không?</p>
                        </div>
                    </a>
                </div>
                <div class="item" data-id="faq_17">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Thanh toán bằng
                                <br class="break" />
                                thẻ tín dụng có lợi ích gì?</p>
                        </div>
                    </a>
                </div>
                <div class="item" data-id="faq_13">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Có thể thanh toán
                                <br class="break" />
                                phí dịch vụ bằng VNĐ
                                <br class="break" />
                                được không?</p>
                        </div>
                    </a>
                </div>
                <div class="item" data-id="faq_12">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Thời gian kiện hàng về tới
                                <br class="break" />
                                Việt Nam?</p>
                        </div>
                    </a>
                </div>
            </div>
            <a href="FAQ.aspx" class="guide-more-mo">Xem chi tiết <i class="fa fa-caret-right"></i></a>
        </div>
        <div class="japanex-website">
            <div class="head-web">
                <h1><span>website mua hàng</span> tại nhật bản</h1>
                <a href="shopping.aspx">
                    <img src="assets/images/plus.png" alt="" />
                    Xem thêm</a>
            </div>
            <div class="content">
                <div class="img-left">
                    <div class="cate">
                        <div class="item">
                            <a href="https://www.amazon.co.jp/" target="_blank"><img src="assets/images/w1.png" alt="" /></a>
                            <div class="link" data-id="faq_2"><a href="buy-amazon.aspx">Hướng dẫn mua hàng</a></div>
                        </div>
                        <div class="item">
                            <a href="http://www.rakuten.co.jp/" target="_blank"><img src="assets/images/w2.png" alt="" /></a>
                            <div class="link" data-id="faq_3"><a href="buy-rakuten.aspx">Hướng dẫn mua hàng</a></div>
                        </div>
                        <div class="item" id="w_3">
                            <a href="http://shopping.yahoo.co.jp/" target="_blank"><img src="assets/images/w3.png" alt="" /></a>
                            <div class="link"><a href="FAQ.aspx">Hướng dẫn mua hàng</a></div>
                        </div>
                        <div class="item" id="w_4">
                            <a href="http://auctions.yahoo.co.jp/" target="_blank"><img src="assets/images/w4.png" alt="" /></a>
                            <div class="link"><a href="FAQ.aspx">Hướng dẫn mua hàng</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="website-mobile">
                <div class="item">
                    <a href="https://www.amazon.co.jp/" target="_blank"><img src="assets/images/mo-web-1.png" alt="" /></a>
                    <a href="buy-amazon.aspx" class="word-place">Hướng dẫn mua hàng</a>
                </div>
                <div class="item">
                    <a href="http://www.rakuten.co.jp/" target="_blank"><img src="assets/images/mo-web-2.png" alt="" /></a>
                    <a href="buy-rakuten.aspx" class="word-place">Hướng dẫn mua hàng</a>
                </div>
                <div class="item">
                    <a href="http://shopping.yahoo.co.jp/" target="_blank"><img src="assets/images/mo-web-3.png" alt="" /></a>
                    <a href="#" class="word-place">Hướng dẫn mua hàng</a>
                </div>
                <div class="item">
                    <a href="http://auctions.yahoo.co.jp/" target="_blank"><img src="assets/images/mo-web-4.png" alt="" /></a>
                    <a href="#" class="word-place">Hướng dẫn mua hàng</a>
                </div>
            </div>
            <a href="FAQ.aspx" class="guide-more-mo">Xem chi tiết <i class="fa fa-caret-right"></i></a>
        </div>
    </div>
</asp:Content>
