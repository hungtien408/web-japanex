<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ThemHopDongRa.ascx.cs"
    Inherits="uc_ThemHopDongRa" %>
<asp:Panel ID="pnlCreateMaHD" GroupingText="XUẤT HỢP ĐỒNG" runat="server">
    <table class="tbl">
        <tr>
            <td class="tbll">
                Mã hợp đồng:
            </td>
            <td>
                <asp:Label ID="lblMaHD" runat="server"></asp:Label>
            </td>
            <td class="tbll">
                Ngày Xuất:
                <asp:RequiredFieldValidator ControlToValidate="txtNgayXuat" ID="RequiredFieldValidator3"
                    runat="server" Display="Dynamic" ValidationGroup="addHDX">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNgayXuat" runat="server" CssClass="datepicker" onkeypress="return false;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Người giao:
                <asp:RequiredFieldValidator ControlToValidate="txtNguoiGiao" ID="RequiredFieldValidator9"
                    runat="server" Display="Dynamic" ValidationGroup="addHDX">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNguoiGiao" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td class="tbll">
                Người nhận:
                <asp:RequiredFieldValidator ControlToValidate="txtNguoiNhan" ID="RequiredFieldValidator10"
                    runat="server" Display="Dynamic" ValidationGroup="addHDX">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNguoiNhan" runat="server" CssClass="text"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Xuất hợp đồng" CausesValidation="true"
                    ValidationGroup="addHDX" OnClick="btnAdd_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
