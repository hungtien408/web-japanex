<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ThemHopDong.ascx.cs" Inherits="uc_ThemHopDong" %>

<asp:Panel ID="pnlCreateMaHD" GroupingText="TẠO HỢP ĐỒNG MỚI" runat="server">
    <table class="tbl">
        <tr>
            <td class="tbll">
                Mã hợp đồng:
                <asp:RequiredFieldValidator ControlToValidate="txtMaHD" ID="RequiredFieldValidator1"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtMaHD" runat="server" CssClass="text"></asp:TextBox>
                <span class="loadding-check"></span>
                <asp:CustomValidator ID="CustomValidator1" ControlToValidate="txtMaHD" ClientValidationFunction="ValidateDuplicateMHD"
                        runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ValidationGroup="addHD">Mã HĐ đã tồn tại.</asp:CustomValidator>
            </td>
            <td class="tbll">
                Thời hạn:
                <asp:RequiredFieldValidator ControlToValidate="txtThoiHan" ID="RequiredFieldValidator2"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtThoiHan" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Ngày bắt đầu:
                <asp:RequiredFieldValidator ControlToValidate="txtNgayBatDau" ID="RequiredFieldValidator3"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNgayBatDau" runat="server" CssClass="datepicker" onkeypress="return false;"></asp:TextBox>
            </td>
            <td class="tbll">
                Ngày kết thúc:
                <asp:RequiredFieldValidator ControlToValidate="txtNgayKetThuc" ID="RequiredFieldValidator4"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNgayKetThuc" runat="server" CssClass="datepicker" onkeypress="return false;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Ngày tái ký:
                <asp:RequiredFieldValidator ControlToValidate="txtNgayTaiKy" ID="RequiredFieldValidator5"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNgayTaiKy" runat="server" CssClass="datepicker" onkeypress="return false;"></asp:TextBox>
            </td>
            <td class="tbll">
                Người lập HĐ:
                <asp:RequiredFieldValidator ControlToValidate="txtNguoiLapHD" ID="RequiredFieldValidator6"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNguoiLapHD" runat="server" CssClass="text"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Nhân viên ký:
                <asp:RequiredFieldValidator ControlToValidate="txtNhanVienKy" ID="RequiredFieldValidator9"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNhanVienKy" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td class="tbll">
                Loại hợp đồng:
                <asp:RequiredFieldValidator ControlToValidate="txtLoaiHD" ID="RequiredFieldValidator10"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtLoaiHD" runat="server" CssClass="text"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Hoa hồng: %
                <asp:RequiredFieldValidator ControlToValidate="txtHoaHong" ID="RequiredFieldValidator11"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtHoaHong" runat="server" CssClass="text" onkeypress="return numbersonly(this, event)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Giá trị HĐ: USD
                <asp:RequiredFieldValidator ControlToValidate="txtGiaTriHD" ID="RequiredFieldValidator8"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
                <br />
                (+VAT)
            </td>
            <td>
                <asp:TextBox ID="txtGiaTriHD" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                    onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text="0"></asp:TextBox>
            </td>
            <td class="tbll">
                Giá trị HĐ: VND
                <asp:RequiredFieldValidator ControlToValidate="txtGiaTriHDVND" ID="RequiredFieldValidator13"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
                <br />
                (+VAT)
            </td>
            <td>
                <asp:TextBox ID="txtGiaTriHDVND" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                    onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text="0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Tỷ Giá:
                <asp:RequiredFieldValidator ControlToValidate="txtTyGia" ID="RequiredFieldValidator12"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtTyGia" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                    onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text="0"></asp:TextBox>
            </td>
            <td class="tbll">
                Tổng đợt TT:
                <asp:RequiredFieldValidator ControlToValidate="txtTongDotTT" ID="RequiredFieldValidator7"
                    runat="server" Display="Dynamic" ValidationGroup="addHD">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtTongDotTT" MaxLength="2" runat="server" CssClass="text" onkeypress="return numbersonly(this, event)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll vat">
                Ghi chú:
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtGhiChu" TextMode="MultiLine" runat="server" CssClass="text" Width="100%"
                    Rows="5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Thêm" CausesValidation="true" ValidationGroup="addHD"
                    OnClick="btnAdd_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
