<%@ Control Language="C#" AutoEventWireup="true" CodeFile="customer-say.ascx.cs"
    Inherits="uc_menu_customer" %>
<asp:ListView ID="lstCustomer" runat="server" DataSourceID="odsCustomer" EnableModelValidation="True">
    <ItemTemplate>
        <div class="col-xs-4">
            <div class="box-cus">
                <div class="cus-des-bottom">
                    <div class="cus-des-top">
                        <div class="cus-des-left">
                            <div class="cus-des-right">
                                <div class="customer-say">
                                    <%# string.IsNullOrEmpty(Eval("Description").ToString()) ? "Đang cập nhật..." : TLLib.Common.SplitSummary(Eval("Description").ToString(),120) %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cus-wrap">
                    <div class="cus-img">
                        <a href="du-an.aspx">
                            <img runat="server" src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/service/" + Eval("ImageName") : "~/assets/images/iteams-img-1.jpg"%>'
                                alt='<%# Eval("ImageName") %>' />
                        </a>
                    </div>
                    <div class="cus-content">
                        <h3 class="cus-name">
                            <a href="du-an.aspx">
                                <%# Eval("ServiceTitle") %>
                            </a>
                        </h3>
                        <p class="cus-node">
                            <%# Eval("TagEn") %>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
    <LayoutTemplate>
        <div class="hidden">
            <h2 class="title-6 utm-neosansintel">
                Khách hàng nói gì về chúng tôi</h2>
            <div class="row">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:ObjectDataSource ID="odsCustomer" runat="server" SelectMethod="ServiceSelectAll"
    TypeName="TLLib.Service">
    <SelectParameters>
        <asp:Parameter Name="StartRowIndex" DefaultValue="1" Type="String" />
        <asp:Parameter Name="EndRowIndex" DefaultValue="6" Type="String" />
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
