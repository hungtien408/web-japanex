<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="service2.aspx.cs" Inherits="service" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Japanex</title>
    <meta name="description" content="Japanex" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                            <asp:RadNumericTextBox ID="txtSoKg" runat="server" Type="Number" AutoPostBack="true" OnTextChanged="txtSoKg_TextChanged">
                                <NumberFormat AllowRounding="false" />
                            </asp:RadNumericTextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Vui lòng nhập số kg dưới 30kg" MinimumValue="0" MaximumValue="30" ControlToValidate="txtSoKg" Display="Dynamic"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <label>Chuyển phát nhanh</label>
                            <asp:DropDownList ID="dropVanChuyen" runat="server" DataSourceID="odsVanChuyen" DataTextField="Name" DataValueField="Id" AutoPostBack="true" OnSelectedIndexChanged="dropVanChuyen_SelectedIndexChanged"></asp:DropDownList>
                            <asp:ObjectDataSource ID="odsVanChuyen" runat="server" SelectMethod="TransporterSelectAll" TypeName="JapanexCommon"></asp:ObjectDataSource>
                        </div>
                        <div class="form-group">
                            <label>Bảo hiểm</label>
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
                        </div>
                        <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <div class="form-group gia-tri">
                                <label>Giá trị đơn hàng</label>
                                <asp:RadNumericTextBox ID="txtGiaTriDonHang" runat="server" Type="Number" AutoPostBack="true" OnTextChanged="txtGiaTriDonHang_TextChanged">
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
        <div class="clr"></div>
        <div class="cuocphi">
            <h1>Cước phí <span>EMS</span></h1>
            <div class="item-hidden">
                <div class="item">
                    <ul>
                        <li>1 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>2 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>3 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>4 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>5 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>6 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>7 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>8 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>9 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>10 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>11 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>12 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>13 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>14 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>15 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>16 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>17 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>18 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>19 0.5</li>
                        <li>1,400</li>
                        <li>2,100</li>
                        <li>2,200</li>
                        <li>1,700</li>
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
            <p>Ví dụ 1: Kiện hàng có giá trị đơn hàng là 18,000 JPY, mức phí bảo hiểm cho đơn hàng này là  0 JPY</p>
            <p>Ví dụ 2 : Kiện hàng có giá trị đơn hàng là 22,000 JPY, mức phí bảo hiểm cho đơn hàng này là 400+(50*1)= 450 JPY</p>
        </div>
        <div class="service-kh">
            <h1>Dịch vụ <span>kho hàng JP</span></h1>
            <div class="item-hidden">
                <div class="item">
                    <ul>
                        <li>1</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>2</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>3</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>4</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>5</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>6</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>7</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>8</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>9</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>10</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>11</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>12</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>13</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>14</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>15</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>16</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>17</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>18</li>
                        <li>Daibiki (COD) Thanh toán hộ</li>
                        <li>5% hóa đơn</li>
                        <li>Khách hàng mua hàng từ các cửa hàng và gửi đến kho BLF.
                            <br />
                            BLF nhận và thanh toán code
                            <br />
                            <i>(*) có khoảng 1 ngày để chuẩn bị tiền mặt nếu không có bất kì lưu ý nào.</i>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>19</li>
                        <li>Thông quan</li>
                        <li>200 JPY/kiện</li>
                        <li>JapanEx thực hiện thủ tục gửi hàng EMS bao gồm: khai báo Hoá đơn, gửi hàng,...
                            <br />
                            Đối với kiện hàng trên 10kg, phí dịch vụ là 200 JPY/kiện</li>
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
        <div class="clr"></div>
        <div class="bangtinh">
            <h1>Tải bảng phí <span>EMS / Bảo Hiểm /  DV đính kèm</span></h1>
            <div class="down-bangtinh">
                <a href="#">Tải bản tính đầy đủ</a>
            </div>
        </div>
    </div>
    <div class="clr"></div>
</asp:Content>

