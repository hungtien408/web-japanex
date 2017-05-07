<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Japanex</title>
    <meta name="description" content="Japanex" />
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
            $("#checkboxBH").click(function(){
                $('.gia-tri').toggleClass("show");
            });
            $("[id$='txtSoKg']").keyup(function () {
                var sokg = $(this).val();
                if (sokg > 30) {
                    alert("Vui lòng nhập số kg dưới 30kg")
                } else if (sokg != "") {
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
            $("[id$='txtGiaTriDonHang']").keyup(function () {
                var sokg = $("[id$='txtSoKg']").val();
                if (sokg > 30) {
                    alert("Vui lòng nhập số kg dưới 30kg")
                } else if (sokg != "") {
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
            $("[id$='dropVanChuyen']").change(function () {
                $("[id$='dropVanChuyen'] option:selected").each(function () {
                    var sokg = $("[id$='txtSoKg']").val();
                    if (sokg > 30) {
                        alert("Vui lòng nhập số kg dưới 30kg")
                    } else if (sokg != "") {
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
    <div class="wrap-df">
        <div class="japanex">
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
                        <p>- Hướng dẫn khách hàng tự mua hàng Nhật bằng cách đăng ký tài khoản website trực tuyến: Amazon, Rakuten, Yahoo,…  </p>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <img src="assets/images/ch2.png" alt="" />
                        <h2>Kho hàng chuyên nghiệp</h2>
                        <p><b>JapanEx</b>  sở hữu hệ thống kho hàng quy mô, có giấy phép, đạt chuẩn tại Nhật Bản;</p>
                        <p>- Dịch vụ kho hàng đa dạng, chuyên nghiệp: thanh toán hộ, nhận hàng, đóng gói;</p>
                        <p>- Thông quan hàng hoá xuất về Việt Nam qua dịch vụ chuyển phát nhanh quốc tế <b>EMS</b></p>
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
                            <b>EMS</b>: Cước phí phải chăng, ổn định.
                        <br />
                            Kho hàng Japan: phí dịch vụ từ 200 JPY (40.000 VNĐ/kiện hàng)
                        </p>
                    </div>
                    <div class="item" data-id="vd_2">
                        <div class="img">
                            <img src="assets/images/gp-2.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Cước phí phải chăng, ổn định.
                            <br />
                            Kho hàng Japan: phí dịch vụ từ 200 JPY (40.000 VNĐ/kiện hàng)
                        </p>
                    </div>
                    <div class="item" data-id="vd_3">
                        <div class="img">
                            <img src="assets/images/gp-3.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Cước phí phải chăng, ổn định.
                        <br />
                            Kho hàng Japan: phí dịch vụ từ 200 JPY (40.000 VNĐ/kiện hàng)
                        </p>
                    </div>
                    <div class="item" data-id="vd_4">
                        <div class="img">
                            <img src="assets/images/gp-4.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Cước phí phải chăng, ổn định.
                            <br />
                            Kho hàng Japan: phí dịch vụ từ 200 JPY (40.000 VNĐ/kiện hàng)
                        </p>
                    </div>
                    <div class="item" data-id="vd_5">
                        <div class="img">
                            <img src="assets/images/gp-5.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Cước phí phải chăng, ổn định.
                            <br />
                            Kho hàng Japan: phí dịch vụ từ 200 JPY (40.000 VNĐ/kiện hàng)
                        </p>
                    </div>
                    <div class="item" data-id="vd_6">
                        <div class="img">
                            <img src="assets/images/gp-6.png" alt="" />
                        </div>
                        <p>
                            <b>EMS</b>: Cước phí phải chăng, ổn định.
                            <br />
                            Kho hàng Japan: phí dịch vụ từ 200 JPY (40.000 VNĐ/kiện hàng)
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="clr"></div>
        <div class="contact-exchange">
            <div class="content">
                <p>TỔNG ĐÀI HỖ TRỢ KHÁCH HÀNG TẠI VIỆT NAM</p>
                <span>
                    <img src="assets/images/sdt.png" alt="" />
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
        </div>
        <div class="EMS-service">
            <div class="head-EMS">
                <h1>dịch vụ / phí / dự toán</h1>
                <a href="service.aspx">
                    <img src="assets/images/plus.png" alt="" />
                    Xem thêm</a>
            </div>
            <div class="content">
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
                                        <asp:RadNumericTextBox ID="txtSoKg" runat="server" Type="Number" MinValue="0" MaxValue="30">
                                            <NumberFormat AllowRounding="false" />
                                        </asp:RadNumericTextBox>
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
                                            </asp:RadNumericTextBox>--%>
                                            <asp:RadNumericTextBox ID="txtGiaTriDonHang" runat="server" Type="Number" Width="500">
                                                <NumberFormat AllowRounding="false" />
                                            </asp:RadNumericTextBox>
                                            JPY
                                        </div>
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
                <div class="item">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Ưu điểm và nhược điểm của EMS ?</p>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Tại sao hàng nhỏ lẻ, cồng kềnh lại tiện lợi khi gửi EMS?</p>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Trả / Đổi / Chuyển hàng quốc nội Nhật có được không?</p>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Thanh toán bằng thẻ tín dụng có lợi ích gì?</p>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Có thể thanh toán phí dịch vụ bằng VNĐ được không?</p>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a href="FAQ.aspx">
                        <div class="wrap-item">
                            <p>Thời gian kiện hàng về tới Việt Nam?</p>
                        </div>
                    </a>
                </div>
            </div>
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
                        <div class="item" id="w_1">
                            <img src="assets/images/w1.png" alt="" />
                        </div>
                        <div class="item" id="w_2">
                            <img src="assets/images/w2.png" alt="" />
                        </div>
                        <div class="item" id="w_3">
                            <img src="assets/images/w3.png" alt="" />
                        </div>
                        <div class="item" id="w_4">
                            <img src="assets/images/w4.png" alt="" />
                        </div>
                    </div>
                </div>
                <div class="de-right">
                    <div class="item" data-id="w_1">
                        <img src="assets/images/w-d.png" alt="" />
                        <p>
                            Amazon.com launched in 1995 with the mission “to be Earth’s most customer-centric company, where customers can find and discover anything they might want to buy online, and endeavors to offer its customers the lowest possible prices.” This goal continues today, but Amazon’s customers are worldwide now, and have grown to include millions of Consumers, Sellers, Content Creators, and Developers & Enterprises. Each of these groups has different needs, and we always work to meet those needs, innovating new solutions to make things easier, faster, better, and more cost-effective.
                            <br />
                            Amazon.com ra mắt vào năm 1995 với sứ mệnh: “trở thành công ty tập trung vào khách hàng nhất Trái Đất, là nơi mà khách hàng có thể tìm kiếm bất cứ thứ gì mà họ muốn mua trực tuyến với mức giá thấp nhất có thể”. Mục tiêu ấy vẫn còn tiếp tục cho đến nay, mặc dù khách hàng của Amazon đã được mở rộng bao gồm hàng triệu người tiêu dùng, người bán, người tạo nội dung, và các nhà phát triển và doanh nghiệp. Mỗi nhóm khách hàng có những nhu cầu khác nhau và Amazon luôn làm việc để đáp ứng những nhu cầu đó cùng với phát triển các giải pháp mới để làm cho mọi thứ trở nên dễ dàng, nhanh hơn, tốt hơn và tiết kiệm chi phí hơn.
                        </p>
                        <div class="link"><a href="#">Hướng dẫn mua hàng tại AMAZON.CO.JP</a></div>
                    </div>
                    <div class="item" data-id="w_2">
                        <img src="assets/images/rakuten.png" alt="" />
                        <p>
                            Rakuten.com is a marketplace with a mission to deliver an outstanding shopping experience and offer a broad selection of products to discover and purchase. We empower retailers to build individual relationships and go the extra mile for their customers. We proud that one of the world's leading Internet service companies.
                            <br />
                            Rakuten.com là một “sàn giao dịch” với sứ mệnh mang đến trải nghiệm mua sắm tuyệt vời và cung cấp nhiều lựa chọn về các sản phẩm đa dạng cho người dùng. Bên cạnh đó, Rakuten tạo điều kiện cho các doanh nghiệp bán lẻ xây dựng các mối quan hệ cá nhân và tiếp cận gần hơn với khách hàng của họ. Rakuten tự hào là một trong những công ty dịch vụ trực tuyến hàng đầu thế giới.
                        </p>
                        <div class="link"><a href="#">Hướng dẫn mua hàng tại RAKUTEN.CO.JP</a></div>
                    </div>
                    <div class="item" data-id="w_3">
                        <img src="assets/images/yahoo-shop.png" alt="" />
                        <p>
                            Yahoo! Shopping is a shopping service which of Yahoo Inc. which enable users to gather relevant information and make commercial transactions and purchases online. Yahoo! Shopping is a price comparison service which uses the Kelkoo price comparison service it acquired in April 2004.
                            <br />
                            Yahoo! Shopping là dịch vụ mua sắm của công ty Yahoo! cho phép người dùng thu thập thông tin liên quan và thực hiện các giao dịch thương mại và mua hàng trực tuyến. Yahoo Shopping là một dịch vụ so sánh giá sử dụng dịch vụ so sánh giá Kelkoo mà nó mua lại vào tháng 4 năm 2004.
                        </p>
                        <div class="link"><a href="#">Hướng dẫn mua hàng tại YAHOOSHOPPING.CO.JP</a></div>
                    </div>
                    <div class="item" data-id="w_4">
                        <img src="assets/images/yahoo-auction.png" alt="" />
                        <p>
                            Yahoo! Auction is a service set up by the online search giant Yahoo! and is Japan’s largest auction site in sales.
                            <br />
                            Yahoo! Auction là một dịch vụ đấu giá trực tuyến được thiết lập bởi công cụ tìm kiếm khổng lồ Yahoo! và là website đấu giá trực tuyến lớn nhất của Nhật Bản.
                        </p>
                        <div class="link"><a href="#">Hướng dẫn mua hàng tại YAHOO.CO.JP</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

