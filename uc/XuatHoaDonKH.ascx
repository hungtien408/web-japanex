<%@ Control Language="C#" AutoEventWireup="true" CodeFile="XuatHoaDonKH.ascx.cs" Inherits="uc_XuatHoaDon" %>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
    AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None"
    BorderWidth="1px" CellPadding="4" DataKeyNames="SerialNo,MaHoaDon" DataSourceID="ObjectDataSource1"
    EnableModelValidation="True" ForeColor="Black" GridLines="Vertical" CssClass="gridview"
    OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="SerialNo" HeaderText="Số seri" SortExpression="SerialNo" />
        <asp:BoundField DataField="MaHoaDon" HeaderText="Mã hoá đơn" SortExpression="MaHoaDon" />
        <asp:BoundField DataField="MaHopDong" HeaderText="Mã hợp đồng" SortExpression="MaHopDong" />
        <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" SortExpression="MaKH" />
        <asp:TemplateField HeaderText="USD" SortExpression="USD">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# string.Format("{0:c}",Eval("USD")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tỷ giá" SortExpression="TiGia">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# string.Format("{0:c}",Eval("TiGia")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="VND" SortExpression="VND">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# string.Format("{0:c}",Eval("VND")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Ngày xuất H.Đơn" SortExpression="NgayXuatHoaDon">
            <ItemTemplate>
                <asp:Label ID="lblNgayXuatHoaDon" runat="server" Text='<%# string.Format("{0:dd/MM/yyyy}", Eval("NgayXuatHoaDon"))%>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"><img alt="Cập nhật hoá đơn" title="Cập nhật hoá đơn" style="border:none" src="../qlda/assets/images/edit.gif" /></asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                    OnClientClick='return confirm("Xoá hoá đơn?")'><img alt="Xóa hoá đơn" title="Xóa hoá đơn" style="border:none" src="../qlda/assets/images/Remove-icon.gif" /></asp:LinkButton>
            </ItemTemplate>
            <HeaderStyle Width="50px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" />
    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="get_xuathoadon"
    TypeName="TableXuatHoaDonKH" DeleteMethod="delete_xuathoadon">
    <DeleteParameters>
        <asp:Parameter Name="SerialNo" Type="String" />
        <asp:Parameter Name="MaHoaDon" Type="String" />
    </DeleteParameters>
    <SelectParameters>
        <asp:Parameter Name="MaHopDong" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
<br />
<%--<asp:Panel ID="pnlCreateXHD" GroupingText="TẠO HOÁ ĐƠN MỚI" runat="server">
    <table class="tbl">
        <tr>
            <td class="tbll">
                Mã hợp đồng:
            </td>
            <td>
                <asp:Label ID="lblMaHopDong" runat="server"></asp:Label>
            </td>
            <td class="tbll">
                Mã K.Hàng:
            </td>
            <td>
                <asp:Label ID="lblMaKhachHang" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Số Seri:
                <asp:RequiredFieldValidator ControlToValidate="txtSerialNo" ID="RequiredFieldValidator1"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtSerialNo" MaxLength="20" runat="server" CssClass="text SerNo"></asp:TextBox>
            </td>
            <td class="tbll">
                Mã hoá đơn:
                <asp:RequiredFieldValidator ControlToValidate="txtMaHoaDon" ID="RequiredFieldValidator2"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox MaxLength="20" ID="txtMaHoaDon" runat="server" CssClass="text"></asp:TextBox>
                <span class="loadding-check"></span>
                <asp:CustomValidator ID="CustomValidator1" ControlToValidate="txtMaHoaDon" ClientValidationFunction="ValidateDuplicateMHDon"
                    runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ValidationGroup="addXHDon">Mã HĐ đã tồn tại.</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Người viết H.Đơn:
                <asp:RequiredFieldValidator ControlToValidate="txtNguoiVietHoaDon" ID="RequiredFieldValidator3"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNguoiVietHoaDon" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td class="tbll">
                Người giao H.Đơn:
                <asp:RequiredFieldValidator ControlToValidate="txtNguoiGiaoHoaDon" ID="RequiredFieldValidator4"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNguoiGiaoHoaDon" runat="server" CssClass="text"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Người nhận H.Đơn:
                <asp:RequiredFieldValidator ControlToValidate="txtNguoiNhanHoaDon" ID="RequiredFieldValidator6"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNguoiNhanHoaDon" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td class="tbll">
                Ngày xuất H.Đơn:
                <asp:RequiredFieldValidator ControlToValidate="txtNgayXuatHoaDon" ID="RequiredFieldValidator5"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNgayXuatHoaDon" runat="server" CssClass="datepicker" onkeypress="return false;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                USD:
                <asp:RequiredFieldValidator ControlToValidate="txtUSD" ID="RequiredFieldValidator8"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtUSD" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                    onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text="0"></asp:TextBox>
            </td>
            <td class="tbll">
                VND:
                <asp:RequiredFieldValidator ControlToValidate="txtVND" ID="RequiredFieldValidator7"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtVND" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                    onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text="0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll vat">
                Tỷ giá:
                <asp:RequiredFieldValidator ControlToValidate="txtTyGia" ID="RequiredFieldValidator9"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtTyGia" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                    onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text="0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Thêm" CausesValidation="true" ValidationGroup="addXHDon"
                    OnClick="btnAdd_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
<asp:FormView ID="FormView1" DefaultMode="Edit" runat="server" DataSourceID="ObjectDataSource2"
    EnableModelValidation="True" Visible="False">
    <EditItemTemplate>
        <asp:Panel ID="pnlCreateXHD" GroupingText="CHỈNH SỬA HOÁ ĐƠN" runat="server">
            <table class="tbl">
                <tr>
                    <td class="tbll">
                        Mã hợp đồng:
                    </td>
                    <td>
                        <asp:Label ID="lblMaHopDong" Text='<%# Eval("MaHopDong") %>' runat="server"></asp:Label>
                    </td>
                    <td class="tbll">
                        Mã K.Hàng:
                    </td>
                    <td>
                        <asp:Label ID="lblMaKhachHang" Text='<%# Eval("MaKH") %>' runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Số Seri:
                    </td>
                    <td>
                        <asp:Label ID="lblSerialNo" runat="server" Text='<%# Eval("SerialNo") %>'></asp:Label>
                    </td>
                    <td class="tbll">
                        Mã hoá đơn:
                    </td>
                    <td>
                        <asp:Label ID="lblMaHoaDon" runat="server" Text='<%# Eval("MaHoaDon") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Người viết H.Đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiVietHoaDon" ID="RequiredFieldValidator3"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiVietHoaDon" runat="server" CssClass="text" Text='<%# Eval("NguoiVietHoaDon") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        Người giao H.Đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiGiaoHoaDon" ID="RequiredFieldValidator4"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiGiaoHoaDon" runat="server" CssClass="text" Text='<%# Eval("NguoiGiaoHoaDon") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Người nhận H.Đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiNhanHoaDon" ID="RequiredFieldValidator6"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiNhanHoaDon" runat="server" CssClass="text" Text='<%# Eval("NguoiNhanHoaDon") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        Ngày xuất H.Đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtNgayXuatHoaDon" ID="RequiredFieldValidator5"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNgayXuatHoaDon" runat="server" CssClass="datepicker" onkeypress="return false;"
                            Text='<%# string.Format("{0:dd/MM/yyyy}", Eval("NgayXuatHoaDon"))%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        USD:
                        <asp:RequiredFieldValidator ControlToValidate="txtUSD" ID="RequiredFieldValidator8"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUSD" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                            onkeyup="this.value=formatCurrency(this.value);" MaxLength="15"  Text='<%# string.Format("{0:c}",Eval("USD")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        VND:
                        <asp:RequiredFieldValidator ControlToValidate="txtVND" ID="RequiredFieldValidator7"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVND" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                            onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text='<%# string.Format("{0:c}",Eval("VND")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tbll vat">
                        Tỷ giá:
                        <asp:RequiredFieldValidator ControlToValidate="txtTyGia" ID="RequiredFieldValidator9"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtTyGia" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                            onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text='<%# string.Format("{0:c}",Eval("TiGia")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                        <asp:Button ID="btnEdit" runat="server" Text="Cập nhật hoá đơn" CausesValidation="true" ValidationGroup="editXHDon"
                            OnClick="btnEdit_Click" />
                            <asp:Button ID="btnCancel" runat="server" Text="Trở về" CausesValidation="false"
                            OnClick="btnCancel_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </EditItemTemplate>
</asp:FormView>--%>
<asp:Panel ID="pnlCreateXHD" GroupingText="TẠO HOÁ ĐƠN MỚI" runat="server">
    <table class="tbl">
        <tr>
            <td class="tbll">
                Mã hợp đồng:
            </td>
            <td>
                <asp:Label ID="lblMaHopDong" runat="server"></asp:Label>
            </td>
            <td class="tbll">
                Ngày xuất H.Đơn:
                <asp:RequiredFieldValidator ControlToValidate="txtNgayXuatHoaDon" ID="RequiredFieldValidator5"
                    runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNgayXuatHoaDon" runat="server" CssClass="datepicker" onkeypress="return false;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Thêm" CausesValidation="true" ValidationGroup="addXHDon"
                    OnClick="btnAdd_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
<asp:FormView ID="FormView1" DefaultMode="Edit" runat="server" DataSourceID="ObjectDataSource2"
    EnableModelValidation="True" Visible="False">
    <EditItemTemplate>
        <asp:Panel ID="pnlCreateXHD" GroupingText="CHỈNH SỬA HOÁ ĐƠN" runat="server">
            <table class="tbl">
                <tr>
                    <td class="tbll">
                        Mã hợp đồng:
                    </td>
                    <td>
                        <asp:Label ID="lblMaHopDong" Text='<%# Eval("MaHopDong") %>' runat="server"></asp:Label>
                    </td>
                    <td class="tbll">
                        Mã K.Hàng:
                    </td>
                    <td>
                        <asp:Label ID="lblMaKhachHang" Text='<%# Eval("MaKH") %>' runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Số Seri:
                        <asp:RequiredFieldValidator ControlToValidate="txtSerialNo" ID="RequiredFieldValidator1"
                            runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:HiddenField ID="hdnSerialNo" Value='<%# Eval("SerialNo") %>' runat="server" />
                        <asp:TextBox ID="txtSerialNo" MaxLength="20" runat="server" CssClass="text SerNo" Text='<%# Eval("SerialNo") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        Mã hoá đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtMaHoaDon" ID="RequiredFieldValidator2"
                            runat="server" Display="Dynamic" ValidationGroup="addXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:HiddenField ID="hdnMaHoaDon" Value='<%# Eval("MaHoaDon") %>' runat="server" />
                        <asp:TextBox MaxLength="20" ID="txtMaHoaDon" runat="server" CssClass="text" Text='<%# Eval("MaHoaDon") %>'></asp:TextBox>
                        <span class="loadding-check"></span>
                        <asp:CustomValidator ID="CustomValidator1" ControlToValidate="txtMaHoaDon" ClientValidationFunction="ValidateDuplicateMHDon"
                            runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ValidationGroup="addXHDon">Mã HĐ đã tồn tại.</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Người viết H.Đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiVietHoaDon" ID="RequiredFieldValidator3"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiVietHoaDon" runat="server" CssClass="text" Text='<%# Eval("NguoiVietHoaDon") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        Người giao H.Đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiGiaoHoaDon" ID="RequiredFieldValidator4"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiGiaoHoaDon" runat="server" CssClass="text" Text='<%# Eval("NguoiGiaoHoaDon") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Người nhận H.Đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtNguoiNhanHoaDon" ID="RequiredFieldValidator6"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNguoiNhanHoaDon" runat="server" CssClass="text" Text='<%# Eval("NguoiNhanHoaDon") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        Ngày xuất H.Đơn:
                        <asp:RequiredFieldValidator ControlToValidate="txtNgayXuatHoaDon" ID="RequiredFieldValidator5"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNgayXuatHoaDon" runat="server" CssClass="datepicker" onkeypress="return false;"
                            Text='<%# string.Format("{0:dd/MM/yyyy}", Eval("NgayXuatHoaDon"))%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        USD:
                        <asp:RequiredFieldValidator ControlToValidate="txtUSD" ID="RequiredFieldValidator8"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUSD" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                            onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text='<%# string.Format("{0:c}",Eval("USD")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:TextBox>
                    </td>
                    <td class="tbll">
                        VND:
                        <asp:RequiredFieldValidator ControlToValidate="txtVND" ID="RequiredFieldValidator7"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVND" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                            onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text='<%# string.Format("{0:c}",Eval("VND")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tbll vat">
                        Tỷ giá:
                        <asp:RequiredFieldValidator ControlToValidate="txtTyGia" ID="RequiredFieldValidator9"
                            runat="server" Display="Dynamic" ValidationGroup="editXHDon">*</asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtTyGia" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                            onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text='<%# string.Format("{0:c}",Eval("TiGia")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                        <asp:Button ID="btnEdit" runat="server" Text="Cập nhật hoá đơn" CausesValidation="true"
                            ValidationGroup="editXHDon" OnClick="btnEdit_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Trở về" CausesValidation="false"
                            OnClick="btnCancel_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </EditItemTemplate>
</asp:FormView>
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="get_xuathoadon_by_id"
    TypeName="TableXuatHoaDonKH">
    <SelectParameters>
        <asp:Parameter Name="SerialNo" Type="String" />
        <asp:Parameter Name="MaHoaDon" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
