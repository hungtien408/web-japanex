<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SuaHopDongRa.ascx.cs"
    Inherits="uc_SuaHopDongRa" %>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" 
    EnableModelValidation="True">
    <ItemTemplate>
        <asp:Panel ID="pnlCreateMaHD" GroupingText="SỬA HỢP ĐỒNG ĐÃ XUẤT" runat="server">
            <table class="tbl">
                <tr>
                    <td class="tbll">
                        Mã hợp đồng:
                    </td>
                    <td>
                        <asp:Label ID="lblMaHD" runat="server" Text='<%# Eval("MaHopDong") %>'></asp:Label>
                    </td>
                    <td class="tbll">
                        Ngày Xuất:
                        <asp:RequiredFieldValidator ControlToValidate="txtNgayXuat" ID="RequiredFieldValidator3"
                            runat="server" Display="Dynamic" ValidationGroup="editHDX">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNgayXuat" runat="server" CssClass="datepicker" onkeypress="return false;" Text='<%# string.Format("{0:dd/MM/yyyy}",Eval("NgayXuat")) %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Người giao:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiGiao" ID="RequiredFieldValidator9"
                            runat="server" Display="Dynamic" ValidationGroup="editHDX">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiGiao" runat="server" CssClass="text" Text='<%# Eval("NguoiGiao") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        Người nhận:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiNhan" ID="RequiredFieldValidator10"
                            runat="server" Display="Dynamic" ValidationGroup="editHDX">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiNhan" runat="server" CssClass="text" Text='<%# Eval("NguoiNhan") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                        <asp:Button ID="btnAdd" runat="server" Text="Sửa hợp đồng đã xuất" CausesValidation="true"
                            ValidationGroup="editHDX" OnClick="btnAdd_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </ItemTemplate>
</asp:FormView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="get_hopdongra" TypeName="TableHopDongRa">
    <SelectParameters>
        <asp:Parameter Name="MaHopDong" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>

