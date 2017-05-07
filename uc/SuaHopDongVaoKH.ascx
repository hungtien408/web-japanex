<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SuaHopDongVaoKH.ascx.cs"
    Inherits="uc_SuaHopDongVao" %>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" 
    EnableModelValidation="True">
    <ItemTemplate>
        <asp:Panel ID="pnlCreateMaHD" GroupingText="CHỈNH SỬA HỢP ĐỒNG ĐÃ NHẬN" runat="server">
            <table class="tbl">
                <tr>
                    <td class="tbll">
                        Mã hợp đồng:
                    </td>
                    <td colspan="3">
                        <asp:Label ID="lblMaHD" runat="server" Text='<%# Eval("MaHopDong") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Người nhận:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiNhan" ID="RequiredFieldValidator10"
                            runat="server" Display="Dynamic" ValidationGroup="addHDN">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiNhan" runat="server" CssClass="text" Text='<%# Eval("NguoiNhan") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        Ngày Nhận:
                        <asp:RequiredFieldValidator ControlToValidate="txtNgayNhan" ID="RequiredFieldValidator3"
                            runat="server" Display="Dynamic" ValidationGroup="addHDN">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNgayNhan" runat="server" CssClass="datepicker" onkeypress="return false;" Text='<%# string.Format("{0:dd/MM/yyyy}",Eval("NgayNhan")) %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                        <asp:Button ID="btnAdd" runat="server" Text="Sửa hợp đồng" CausesValidation="true"
                            ValidationGroup="addHDN" OnClick="btnAdd_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </ItemTemplate>
</asp:FormView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="get_hopdongvao" TypeName="TableHopDongVaoKH">
    <SelectParameters>
        <asp:Parameter Name="MaHopDong" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>

