<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu-customer-site.ascx.cs"
    Inherits="uc_menu_customer" %>
<asp:ListView ID="lstCustomer" runat="server" DataSourceID="odsCustomer" EnableModelValidation="True">
    <ItemTemplate>
        <li>
            <div class="box-info">
                <div class="info-head">
                    <a class="info-img" href="#">
                        <img id="Img1" runat="server" class="img-circle" src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/service/" + Eval("ImageName") : "~/assets/images/info-img-1.jpg"%>'
                            alt='<%# Eval("ImageName") %>' />
                    </a>
                    <div class="info-content">
                        <h3 class="info-name">
                            <a href="#">
                                <%# Eval("ServiceTitle") %></a>
                        </h3>
                        <h4>
                            <%# Eval("TagEn") %>
                        </h4>
                    </div>
                </div>
                <div class="description">
                    <%# string.IsNullOrEmpty(Eval("Description").ToString()) ? "Đang cập nhật..." : TLLib.Common.SplitSummary(Eval("Description").ToString(),120) %>
                </div>
                <p class="website">
                    View website: <a target='<%# string.IsNullOrEmpty(Eval("Tag").ToString()) ? "" : "_blank"%>'
                        href='<%# Eval("Tag").ToString().ToLower().StartsWith("http://") ? Eval("Tag").ToString().ToLower() : "http://" + Eval("Tag").ToString().ToLower()%>'>
                        <%# Eval("Tag") %>
                    </a>
                </p>
            </div>
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <div class="row">
            <div class="col-lg-10">
                <h2 class="title-2">
                    Khách hàng nói gì <span>về chúng tôi</span></h2>
                <ul id="slidergg">
                    <span runat="server" id="itemPlaceholder" />
                </ul>
            </div>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:ObjectDataSource ID="odsCustomer" runat="server" SelectMethod="ServiceSelectAll"
    TypeName="TLLib.Service">
    <SelectParameters>
        <asp:Parameter Name="StartRowIndex" Type="String" />
        <asp:Parameter Name="EndRowIndex" Type="String" />
        <asp:Parameter Name="Keyword" Type="String" />
        <asp:Parameter Name="ServiceTitle" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter DefaultValue="1" Name="ServiceCategoryID" Type="String" />
        <asp:Parameter Name="Tag" Type="String" />
        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
        <asp:Parameter Name="IsHot" Type="String" />
        <asp:Parameter Name="IsNew" Type="String" />
        <asp:Parameter Name="FromDate" Type="String" />
        <asp:Parameter Name="ToDate" Type="String" />
        <asp:Parameter DefaultValue="true" Name="IsAvailable" Type="String" />
        <asp:Parameter Name="Priority" Type="String" />
        <asp:Parameter DefaultValue="true" Name="SortByPriority" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
