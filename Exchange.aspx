<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Exchange.aspx.cs" Inherits="Exchange" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Japanex</title>
    <meta name="description" content="Japanex" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="breadcrumb">
        <div class="wrap-breadcrumb">
            <a id="A1" href="~/" runat="server"><i class="fa fa-chevron-left"></i></a>
            <p>Tỉ giá</p>
        </div>
    </div>
    <div class="wrap-exchange">
        <div class="contact-exchange height_a">
            <div class="form-group">
                <label>Ngày</label>
                <asp:RadDatePicker ShowPopupOnFocus="True" ID="dpNgay" runat="server" Culture="en-US"
                    Calendar-CultureInfo="en-US" Width="230px" Height="30px" CssClass="drop-ngaysinh">
                    <calendar id="Calendar1" runat="server" ShowRowHeaders="false" ShowNavigationButtons="true" ShowFastNavigationButtons="false">
                                    <SpecialDays>
                                        <asp:RadCalendarDay Repeatable="Today">
                                            <ItemStyle CssClass="rcToday" />
                                        </asp:RadCalendarDay>
                                    </SpecialDays>
                                </calendar>
                    <dateinput id="DateInput1" dateformat="dd/MM/yyyy" displaydateformat="dd/MM/yyyy"
                        runat="server" height="32px">
                                </dateinput>
                    <datepopupbutton hoverimageurl="" imageurl="" />
                </asp:RadDatePicker>
                <asp:Button ID="btnXemTiGia" runat="server" Text="Xem tỷ giá" OnClick="btnXemTiGia_Click" />
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th>Tỷ giá</th>
                        <th class="hidden">Thời gian cập nhật</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <asp:Label ID="lblTyGIa" runat="server" Text=""></asp:Label></td>
                        <td class="hidden"><asp:Label ID="lblNgay" runat="server" Text=""></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

