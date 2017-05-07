<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ThuKH.ascx.cs" Inherits="uc_Thu" %>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
    AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None"
    BorderWidth="1px" CellPadding="4" DataKeyNames="SerialNo,MaHoaDon" DataSourceID="ObjectDataSource1"
    EnableModelValidation="True" ForeColor="Black" GridLines="Vertical" CssClass="gridview"
    OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
    <AlternatingRowStyle BackColor="White" />
    <EmptyDataTemplate>
        Chưa có thanh toán nào. Xem lại xuất hoá đơn.
    </EmptyDataTemplate>
    <Columns>
        <asp:BoundField DataField="SerialNo" HeaderText="Số seri" SortExpression="SerialNo" />
        <asp:BoundField DataField="MaHoaDon" HeaderText="Mã hoá đơn" SortExpression="MaHoaDon" />
        <asp:BoundField DataField="MaHopDong" HeaderText="Mã hợp đồng" SortExpression="MaHopDong" />
        <asp:TemplateField HeaderText="Mã thu" SortExpression="MaThu">
            <ItemTemplate>
                <img alt="" src="~/qlda/assets/images/Remove-icon1.gif" title="Chưa thanh toán" runat="server"
                    visible='<%#  Eval("MaThu").ToString() == "" ? true : false %>' />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("MaThu") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Số tiền thu" SortExpression="SoTienThu">
            <ItemTemplate>
                <img alt="" src="~/qlda/assets/images/Remove-icon1.gif" title="Chưa thanh toán" runat="server"
                    visible='<%#  Eval("SoTienThu").ToString() == "" ? true : false %>' />
                <asp:Label ID="Label1" runat="server" Text='<%# string.Format("{0:c} VND",Eval("SoTienThu")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'
                    Visible='<%#  Eval("SoTienThu").ToString() != "" ? true : false %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Đợt thanh toán" SortExpression="DotThanhToan">
            <ItemTemplate>
                <img alt="" src="~/qlda/assets/images/Remove-icon1.gif" title="Chưa thanh toán" runat="server"
                    visible='<%#  Eval("DotThanhToan").ToString() == "" ? true : false %>' />
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DotThanhToan") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Hình thức thanh toán" SortExpression="HinhThucThanhToan">
            <ItemTemplate>
                <img alt="" src="~/qlda/assets/images/Remove-icon1.gif" title="Chưa thanh toán" runat="server"
                    visible='<%#  Eval("HinhThucThanhToan").ToString() == "" ? true : false %>' />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("HinhThucThanhToan").ToString() == "1" ? "Chuyển khoản" : "Tiền mặt" %>'
                    Visible='<%# Eval("HinhThucThanhToan").ToString() == "" ? false : true %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Người nhận" SortExpression="NguoiNhan">
            <ItemTemplate>
                <img alt="" src="~/qlda/assets/images/Remove-icon1.gif" title="Chưa thanh toán" runat="server"
                    visible='<%#  Eval("NguoiNhan").ToString() == "" ? true : false %>' />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("NguoiNhan") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Đã TT" SortExpression="DaThu">
            <ItemTemplate>
                <img alt="" src="~/qlda/assets/images/Remove-icon1.gif" title="Chưa thanh toán" runat="server"
                    visible='<%# bool.Parse(Eval("DaThu").ToString()) ? false : true %>' />
                <img alt="" src="~/qlda/assets/images/checked.png" title="Đã thanh toán" runat="server"
                    visible='<%#  Eval("DaThu") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="lnkUpdate" runat="server" CausesValidation="False" OnClick="lnkUpdate_Click"
                    CommandName='<%# Eval("SerialNo") %>' CommandArgument='<%# Eval("MaHoaDon") %>'
                    Visible='<%# bool.Parse(Eval("DaThu").ToString()) ? false : true %>'><img alt="Thanh toán" title="Thanh toán" style="border:none" src="../qlda/assets/images/edit.gif" /></asp:LinkButton>
                <asp:LinkButton ID="lnkSelect" runat="server" CausesValidation="False" OnClick="lnkSelect_Click"
                    CommandName='<%# Eval("SerialNo") %>' CommandArgument='<%# Eval("MaHoaDon") %>'
                    Visible='<%# Eval("DaThu") %>'><img alt="Xem thanh toán" title="Xem thanh toán" style="border:none" src="../qlda/assets/images/eye1.png" /></asp:LinkButton>
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
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="get_thu"
    TypeName="TableThuKH">
    <SelectParameters>
        <asp:Parameter Name="MaHopDong" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
<br />
<asp:Panel ID="pnlCreateThu" GroupingText="THANH TOÁN" runat="server" Visible="false">
    <table class="tbl">
        <tr>
            <td class="tbll">
                Mã hợp đồng:
            </td>
            <td colspan="3">
                <asp:Label ID="lblMaHopDong" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Số Seri:
            </td>
            <td>
                <asp:Label ID="lblSerialNo" runat="server"></asp:Label>
            </td>
            <td class="tbll">
                Mã hoá đơn:
            </td>
            <td>
                <asp:Label ID="lblMaHoaDon" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Mã thu:
                <asp:RequiredFieldValidator ControlToValidate="txtMaThu" ID="RequiredFieldValidator10"
                    runat="server" Display="Dynamic" ValidationGroup="addThu">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtMaThu" MaxLength="20" runat="server" CssClass="text"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator2" ControlToValidate="txtMaThu" ClientValidationFunction="ValidateDuplicateMThu"
                    runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ValidationGroup="addThu">Mã thu đã tồn tại.</asp:CustomValidator>
            </td>
            <td class="tbll">
                Ngày thu:
                <asp:RequiredFieldValidator ControlToValidate="txtNgayThu" ID="RequiredFieldValidator5"
                    runat="server" Display="Dynamic" ValidationGroup="addThu">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNgayThu" runat="server" CssClass="datepicker" onkeypress="return false;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                Số tiền thu: (VND)
                <asp:RequiredFieldValidator ControlToValidate="txtSoTienThu" ID="RequiredFieldValidator11"
                    runat="server" Display="Dynamic" ValidationGroup="addThu">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtSoTienThu" runat="server" CssClass="text" onkeypress="return floatsonly(this, event)"
                    onkeyup="this.value=formatCurrency(this.value);" MaxLength="15" Text="0"></asp:TextBox>
            </td>
            <td class="tbll">
                Đợt thanh toán:
                <asp:RequiredFieldValidator ControlToValidate="txtDotThanhToan" ID="RequiredFieldValidator3"
                    runat="server" Display="Dynamic" ValidationGroup="addThu">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtDotThanhToan" MaxLength="2" runat="server" CssClass="text" onkeypress="return numbersonly(this, event)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tbll">
                H.Thức T.Toán:
                <asp:RequiredFieldValidator ControlToValidate="ddlHinhThucThanhToan" ID="RequiredFieldValidator4"
                    runat="server" Display="Dynamic" ValidationGroup="addThu">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:DropDownList ID="ddlHinhThucThanhToan" runat="server">
                    <asp:ListItem Value="">- Chọn hình thức thanh toán -</asp:ListItem>
                    <asp:ListItem Value="1">Chuyển khoản</asp:ListItem>
                    <asp:ListItem Value="2">Tiền mặt</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="tbll">
                Người nhận:
                <asp:RequiredFieldValidator ControlToValidate="txtNguoiNhan" ID="RequiredFieldValidator12"
                    runat="server" Display="Dynamic" ValidationGroup="addThu">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNguoiNhan" runat="server" CssClass="text"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Thanh toán" CausesValidation="true"
                    ValidationGroup="addThu" OnClick="btnAdd_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource2" EnableModelValidation="True"
    Visible="false" Width="600px">
    <ItemTemplate>
        <asp:Panel ID="pnlCreateThu" GroupingText="XEM THANH TOÁN" runat="server">
            <table class="tbl" border="1" width="100%">
                <tr>
                    <td class="tbll">
                        Mã hợp đồng:
                    </td>
                    <td colspan="3">
                        <asp:Label ID="lblMaHopDong" runat="server"></asp:Label>
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
                        Mã thu:
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("MaThu") %>'></asp:Label>
                    </td>
                    <td class="tbll">
                        Ngày thu:
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# string.Format("{0:dd/MM/yyyy}", Eval("NgayThu"))%>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        Số tiền thu:
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text='<%# string.Format("{0:c} VND",Eval("SoTienThu")).Replace(",", "-").Replace(".", ",").Replace("-", ".").Replace("$","") %>'></asp:Label>
                    </td>
                    <td class="tbll">
                        Đợn thanh toán:
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("DotThanhToan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tbll">
                        H.Thức T.Toán:
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("HinhThucThanhToan").ToString() == "1" ? "Chuyển khoản" : "Tiền mặt" %>'></asp:Label>
                    </td>
                    <td class="tbll">
                        Người nhận:
                    </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("NguoiNhan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                        <asp:Button ID="btnCancel" runat="server" Text="Trở về" CausesValidation="false"
                            OnClick="btnCancel_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </ItemTemplate>
</asp:FormView>
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="get_thu_by_id"
    TypeName="TableThu">
    <SelectParameters>
        <asp:Parameter DefaultValue="SN2009N" Name="SerialNo" Type="String" />
        <asp:Parameter DefaultValue="1309141" Name="MaHoaDon" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
