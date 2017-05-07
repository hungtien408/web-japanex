<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

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
            $("#checkboxBH").click(function () {
                if ($('.gia-tri').hasClass('show')) {
                    $('.gia-tri').removeClass('show');
                    $("[id$='txtGiaTriDonHang']").val("");
                    var sokg = $("[id$='txtSoKg']").val();
                    if (sokg > 30) {
                        $("[id$='lblMoneyJP']").text("0 JPY");
                        $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                        alert("Vui lòng nhập số kg dưới 30kg")
                    } else if (sokg != "" && sokg != 0) {
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
                } else if (sokg != "" && sokg != 0) {
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
            $("[id$='txtGiaTriDonHang']").keyup(function () {
                var sokg = $("[id$='txtSoKg']").val();
                if (sokg > 30) {
                    $("[id$='lblMoneyJP']").text("0 JPY");
                    $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                    alert("Vui lòng nhập số kg dưới 30kg")
                } else if (sokg != "" && sokg != 0) {
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
                    var sokg = $("[id$='txtSoKg']").val();
                    if (sokg > 30) {
                        $("[id$='lblMoneyJP']").text("0 JPY");
                        $("[id$='lblMoneyVN']").text("(0 VNĐ)");
                        alert("Vui lòng nhập số kg dưới 30kg")
                    } else if (sokg != "" && sokg != 0) {
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
    <div class="breadcrumb">
        <div class="wrap-breadcrumb">
            <a id="A1" href="~/" runat="server"><i class="fa fa-chevron-left"></i></a>
            <p>Dịch vụ / Phí / Dự toán</p>
        </div>
    </div>
    <div class="wrap-service">
        <div class="Estimate-table width_2">
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
                                <%--<asp:RadNumericTextBox ID="txtGiaTriDonHang" runat="server" Type="Number" Width="500">
                                    <NumberFormat AllowRounding="false" />
                                </asp:RadNumericTextBox>--%>
                                <asp:TextBox ID="txtGiaTriDonHang" runat="server"></asp:TextBox>
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
        <div class="clr"></div>
        <div class="cuocphi">
            <h1>Cước phí <span>EMS</span></h1>
            <div class="item-hidden">
                <div class="item">
                    <ul>
                        <li>0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>0.6</li>
                        <li>1,540</li>
                        <li>2,700</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>0.7</li>
                        <li>1,680</li>
                        <li>2,700</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>0.8</li>
                        <li>1,820</li>
                        <li>2,700</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>0.9</li>
                        <li>1,960</li>
                        <li>2,700</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>1</li>
                        <li>2,100</li>
                        <li>2,700</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>1.25</li>
                        <li>2,400</li>
                        <li>3,300</li>
                        <li>2,200</li>
                        <li>2,100</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>1.5</li>
                        <li>2,700</li>
                        <li>3,300</li>
                        <li>2,900</li>
                        <li>2,100</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>1.75</li>
                        <li>3,000</li>
                        <li>3,900</li>
                        <li>2,900</li>
                        <li>2,100</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>2</li>
                        <li>3,300</li>
                        <li>3,900</li>
                        <li>2,900</li>
                        <li>2,100</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>2.5</li>
                        <li>3,800</li>
                        <li>4,500</li>
                        <li>3,600</li>
                        <li>2,500</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>3</li>
                        <li>4,300</li>
                        <li>5,100</li>
                        <li>3,600</li>
                        <li>2,500</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>3.5</li>
                        <li>4,800</li>
                        <li>5,700</li>
                        <li>4,300</li>
                        <li>2,900</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>4</li>
                        <li>5,300</li>
                        <li>6,300</li>
                        <li>4,300</li>
                        <li>2,900</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>4.5</li>
                        <li>5,800</li>
                        <li>6,900</li>
                        <li>5,000</li>
                        <li>3,300</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>5</li>
                        <li>6,300</li>
                        <li>7,500</li>
                        <li>5,000</li>
                        <li>3,300</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>5.5</li>
                        <li>6,800</li>
                        <li>8,000</li>
                        <li>5,600</li>
                        <li>3,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>6</li>
                        <li>7,300</li>
                        <li>8,500</li>
                        <li>5,600</li>
                        <li>3,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>7</li>
                        <li>8,100</li>
                        <li>9,500</li>
                        <li>6,200</li>
                        <li>4,100</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>8</li>
                        <li>8,900</li>
                        <li>10,500</li>
                        <li>6,800</li>
                        <li>4,500</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>9</li>
                        <li>9,700</li>
                        <li>11,500</li>
                        <li>7,400</li>
                        <li>4,900</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>10</li>
                        <li>10,500</li>
                        <li>12,500</li>
                        <li>8,000</li>
                        <li>5,300</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>11</li>
                        <li>11,300</li>
                        <li>13,200</li>
                        <li>8,400</li>
                        <li>5,600</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>12</li>
                        <li>12,100</li>
                        <li>13,900</li>
                        <li>8,800</li>
                        <li>5,900</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>13</li>
                        <li>12,900</li>
                        <li>14,600</li>
                        <li>9,200</li>
                        <li>6,200</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>14</li>
                        <li>13,700</li>
                        <li>15,300</li>
                        <li>9,600</li>
                        <li>6,500</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>15</li>
                        <li>14,500</li>
                        <li>16,000</li>
                        <li>10,000</li>
                        <li>6,800</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>16</li>
                        <li>15,300</li>
                        <li>16,700</li>
                        <li>10,400</li>
                        <li>7,100</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>17</li>
                        <li>16,100</li>
                        <li>17,400</li>
                        <li>10,800</li>
                        <li>7,400</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>18</li>
                        <li>16,900</li>
                        <li>18,100</li>
                        <li>11,200</li>
                        <li>7,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>19</li>
                        <li>17,700</li>
                        <li>18,800</li>
                        <li>11,600</li>
                        <li>8,000</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>20</li>
                        <li>18,500</li>
                        <li>19,500</li>
                        <li>12,000</li>
                        <li>8,300</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>21</li>
                        <li>19,300</li>
                        <li>20,200</li>
                        <li>12,400</li>
                        <li>8,600</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>22</li>
                        <li>20,100</li>
                        <li>20,900</li>
                        <li>12,800</li>
                        <li>8,900</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>23</li>
                        <li>20,900</li>
                        <li>21,600</li>
                        <li>13,200</li>
                        <li>9,200</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>24</li>
                        <li>21,700</li>
                        <li>22,300</li>
                        <li>13,600</li>
                        <li>9,500</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>25</li>
                        <li>22,500</li>
                        <li>23,000</li>
                        <li>14,000</li>
                        <li>9,800</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>26</li>
                        <li>23,300</li>
                        <li>23,700</li>
                        <li>14,400</li>
                        <li>10,100</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>27</li>
                        <li>24,100</li>
                        <li>24,100</li>
                        <li>14,800</li>
                        <li>10,400</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>28</li>
                        <li>24,900</li>
                        <li>24,400</li>
                        <li>15,200</li>
                        <li>10,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>29</li>
                        <li>25,700</li>
                        <li>25,800</li>
                        <li>15,600</li>
                        <li>11,000</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>30</li>
                        <li>26,500</li>
                        <li>26,500</li>
                        <li>16,000</li>
                        <li>11,300</li>
                    </ul>
                </div>
            </div>
            <div class="item-show">
                <div class="it-left">
                    <div class="head">
                        <ul>
                            <li>Weight (kg)</li>
                            <li>EMS</li>
                            <li>Air Transport</li>
                            <li>SAL</li>
                            <li>Sea Transport</li>
                        </ul>
                    </div>
                    <div class="cate-item">
                    </div>
                </div>
                <div class="it-right">
                    <div class="head">
                        <ul>
                            <li>Weight (kg)</li>
                            <li>EMS</li>
                            <li>Air Transport</li>
                            <li>SAL</li>
                            <li>Sea Transport</li>
                        </ul>
                    </div>
                    <div class="cate-item">
                    </div>
                </div>
            </div>
            <div class="item-clone">
                <div class="head">
                    <ul>
                        <li>Weight (kg)</li>
                        <li>EMS</li>
                        <li>Air Transport</li>
                        <li>SAL</li>
                        <li>Sea Transport</li>
                    </ul>
                </div>
                <div class="cate-item">

                </div>
            </div>
        </div>
        <div class="clr"></div>
        <div class="baohiem">
            <h1>Bảo hiểm <span>EMS</span></h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Mức phí</th>
                        <th>Đơn giá/JPY</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><=20,000 JPY</td>
                        <td>
                            <div class="free">FREE</div>
                        </td>
                    </tr>
                    <tr>
                        <td>>20,000 JPY</td>
                        <td>50 JPY cho mỗi 20,000 JPY tăng thêm</td>
                    </tr>
                </tbody>
            </table>
            <div class="cate-baohiem-mo">
                <div class="item">
                    <h1>Đơn hàng <= 20,000 JPY</h1>
                    <div class="wrap-bh">
                        <p><span>FREE</span></p>
                    </div>
                </div>
                <div class="item">
                    <h1>Đơn hàng > 20,000 JPY</h1>
                    <div class="wrap-bh">
                        <p>
                        50 JPY cho mỗi <br />
                        20,000 JPY tăng thêm</p>
                    </div>
                </div>
            </div>
            <p>Ví dụ 1: Kiện hàng có giá trị đơn hàng là 18,000 JPY, mức phí bảo hiểm cho đơn hàng này là  0 JPY</p>
            <p>Ví dụ 2: Kiện hàng có giá trị đơn hàng là 22,000 JPY, mức phí bảo hiểm cho đơn hàng này là (50*1)= 50 JPY</p>
        </div>
        <div class="service-kh">
            <h1>Dịch vụ <span>kho hàng JP</span></h1>
            <div class="item-hidden">
                <div class="item">
                    <ul>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>3% hóa đơn</li>
                        <li>Thanh toán hộ với Hóa đơn tối thiểu là 200 JPY
                            <br />
                            Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán COD.
                            <br />
                            <i>(*) Có khoảng 1 ngày để chuẩn bị tiền mặt, nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>Gộp kiện</li>
                        <li>300 JPY</li>
                        <li>Phí vận chuyển được tính dựa trên trọng lượng của kiện gộp. Lệ phí là 300 JPY khi gộp đến 05 kiện hàng. Tổng số kiện
                            gộp thêm vượt quá 05 kiện sẽ được tính phí 50 JPY/kiện. Chỉ gộp nhiều nhất 10 kiện cho một lần vận chuyển. Khi tiến
                            hành gộp kiện, bao bì ban đầu sẽ được loại bỏ để giảm trọng lượng. Sau đó, hộp bao bì lớn nhất của các kiện gộp sẽ
                            được sử dụng cho lô hàng vận chuyển. Chúng tôi gộp các kiện trong kích thước và/hoặc trọng lượng giới hạn cho phép. 
                            <br />
                            Những kiện hàng không gộp sẽ được vận chuyển riêng biệt.</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>Đổi / Trả / Chuyển hàng quốc nội</li>
                        <li>300 JPY/Kiện</li>
                        <li>Nếu phát sinh tình huống phải trả lại kiện hàng cho Chủ hàng ở Nhật, hoặc Khách hàng không muốn gửi chuyển phát
                            nhanh EMS tại JapanEx, Khách hàng có nhu cầu chuyển hàng nội địa Nhật và sử dụng dịch vụ khác, JapanEx cung cấp
                            dịch vụ vận chuyển nội địa theo <a href="shipping.aspx">Bảng giá vận chuyển nội địa</a>.
                        </li>
                    </ul>
                </div>
            </div>
            <div class="item-show">
                <div class="it-left">
                    <div class="head">
                        <ul>
                            <li>STT</li>
                            <li>Dịch vụ</li>
                            <li>Phí (JPY)</li>
                            <li>Ghi chú</li>
                        </ul>
                    </div>
                    <div class="cate-item">
                    </div>
                </div>
                <div class="it-right">
                    <div class="head">
                        <ul>
                            <li>STT</li>
                            <li>Dịch vụ</li>
                            <li>Phí (JPY)</li>
                            <li>Ghi chú</li>
                        </ul>
                    </div>
                    <div class="cate-item">
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="clr"></div>
        <div class="bangtinh">
            <h1>Tải bảng phí <span>EMS / Bảo Hiểm /  DV đính kèm</span></h1>
            <div class="down-bangtinh">
                <a href="/assets/JapanEx-Bang-cuoc-phi-Tong-hop.pdf" download>Tải bản tính đầy đủ</a>
            </div>
        </div>--%>
    </div>
    <div class="clr"></div>
</asp:Content>

