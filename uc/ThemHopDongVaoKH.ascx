<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ThemHopDongVaoKH.ascx.cs"
    Inherits="uc_ThemHopDongVao" %>
<asp:Panel ID="pnlCreateMaHD" GroupingText="NHẬN LẠI HỢP ĐỒNG" runat="server">
    <table class="tbl">
        <tr>
            <td class="tbll">
                Mã hợp đồng:
            </td>
            <td colspan="3">
                <asp:Label ID="lblMaHD" runat="server"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="tbll">
                Người nhận:
                <asp:RequiredFieldValidator ControlToValidate="txtNguoiNhan" ID="RequiredFieldValidator10"
                    runat="server" Display="Dynamic" ValidationGroup="addHDN">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNguoiNhan" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td class="tbll">
                Ngày Nhận:
                <asp:RequiredFieldValidator ControlToValidate="txtNgayNhan" ID="RequiredFieldValidator3"
                    runat="server" Display="Dynamic" ValidationGroup="addHDN">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNgayNhan" runat="server" CssClass="datepicker" onkeypress="return false;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Nhận lại hợp đồng" CausesValidation="true"
                    ValidationGroup="addHDN" OnClick="btnAdd_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
