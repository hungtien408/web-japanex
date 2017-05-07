<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Japanex</title>
    <meta name="description" content="Japanex" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="breadcrumb">
        <div class="wrap-breadcrumb">
            <a id="A1" href="~/" runat="server"><i class="fa fa-chevron-left"></i></a>
            <p>Liên hệ</p>
        </div>
    </div>
    <div class="wrap-lh container">
        <div class="contact-left">
            <h1>Liên hệ <span>với chúng tôi</span></h1>
            <p>Công ty: <span>BETTER LIFE Co.,Ltd</span></p>
            <p>Zip: <span>102-0072</span></p>
            <p>Địa chỉ: <span>1-12-1 Iidabashi Chiyodaku Tokyo</span></p>
            <p>Tel: <span>(+81) 03.6380.9858</span></p>
            <p>Fax: <span>(+81) 03.6380.9859</span></p>
            <p>Ngày thành lập: <span>08/10/2014</span></p>
            <p>Vốn điều lệ: <span>3,000,000 JPY</span></p>
            <p>Website: <span>www.betterlifejp.com</span></p>
        </div>
        <div class="contact-right">
            <h1>FORM LIÊN HỆ</h1>
            <div class="form-group">
                <label>E-mail</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                    runat="server" ValidationGroup="SendContact" ControlToValidate="txtEmail" ErrorMessage="Email không đúng!"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                    ValidationGroup="SendContact" ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!"
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Nội dung</label>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                    ValidationGroup="SendContact" ControlToValidate="txtMessage" ErrorMessage="Thông tin bắt buộc!"
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="btnGui" runat="server" Text="GỬI" ValidationGroup="SendContact" OnClick="btnGui_Click" />
        </div>
        <div class="clr"></div>
    </div>
</asp:Content>

