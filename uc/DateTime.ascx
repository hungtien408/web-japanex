<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DateTime.ascx.cs" Inherits="uc_DateTime" %>
<style type="text/css">
    .style1
    {
        width: 50px;
    }
    .style2
    {
        width: 18px;
    }
</style>
<table style="width: 444px">
    <tr>
        <td class="style1">
            Giờ
        </td>
        <td class="style1">
            Phút
        </td>
        <td class="style2">
            &nbsp;
        </td>
        <td class="style1">
            Ngày
        </td>
        <td class="style1">
            Tháng
        </td>
        <td>
            Năm
        </td>
    </tr>
    <tr>
        <td class="style1">
            <asp:DropDownList ID="ddlHours" runat="server">
            </asp:DropDownList> : 
        </td>
        <td class="style1">
            <asp:DropDownList ID="ddlMinutes" runat="server">
            </asp:DropDownList>
        </td>
        <td class="style2">
            &nbsp;
        </td>
        <td class="style1">
            <asp:DropDownList ID="ddlDays" runat="server">
            </asp:DropDownList> / 
        </td>
        <td class="style1">
            <asp:DropDownList ID="ddlMonths" runat="server">
            </asp:DropDownList> / 
        </td>
        <td>
            <asp:DropDownList ID="ddlYears" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
</table>
