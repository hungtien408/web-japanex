<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Usage-Guide.aspx.cs" Inherits="Usage_Guide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Japanex</title>
    <meta name="description" content="Japanex" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumb">
        <div class="wrap-breadcrumb">
            <a href="~/" runat="server"><i class="fa fa-chevron-left"></i></a>
            <p>5 bước hướng dẫn sử dụng <br />
            JapanEx</p>
        </div>
    </div>
    <div class="banner-ship">
        <img src="assets/images/guide.png" alt="" />
    </div>
    <div class="wrap-guide">
        <div class="japanex-guide">
            <div class="item-cate">
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd1.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 1:</h4>
                    <span>khách hàng</span>
                    <p>ĐĂNG KÝ DỊCH VỤ</p></div>
                    <div class="content">
                        <p>Quý Khách Hàng vui lòng truy cập website <b>www.japanex.net</b> hoặc gọi <b>1900 7163</b> để <br class="break" />
                            đăng ký và được hướng dẫn sử dụng dịch vụ.
                        </p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd2.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 2:</h4>
                    <span>khách hàng</span>
                    <p>
                        MUA SẮM TẠI CÁC
                        <br />
                        WEBSITE NHẬT BẢN
                    </p></div>
                    <div class="content">
                        <p>Khách Hàng sử dụng thông tin JapanEx cung cấp để mua sắm tại các website mua hàng trực tuyến tại Nhật như: www.amazon.jp, www.rakuten.co.jp, http://auctions.yahoo.co.jp …. </p>
                        <p>Tham khảo thêm tại : <a href="shopping.aspx">Danh sách các website mua hàng tại Nhật.</a></p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd3.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 3:</h4>
                    <h5>japan<span>Ex</span></h5>
                    <p>NHẬN HÀNG VÀ BÁO GIÁ</p></div>
                    <div class="content">
                        <p>Kho JapanEx tại Nhật nhận hàng và tiến hành <br class="break" />báo giá bao gồm Cước phí EMS và Phí dịch vụ <br class="break" />kho hàng.</p>
                        <p>(*) Chuyển phát nhanh quốc tế EMS có thể <br class="break" />chuyển hàng từ Nhật đi khắp nơi trên thế giới.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd4.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 4:</h4>
                    <span>khách hàng</span>
                    <p>THANH TOÁN</p></div>
                    <div class="content">
                        <p>Khách Hàng có thanh Toán cho JapanEx thông qua các kênh thanh toán:  <br />
                            + Chuyển khoản Vietcombank<br />
                            + Thẻ quốc tế: Visa/Master Card, JCB,…</p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd5.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 5:</h4>
                    <h5>japan<span>Ex</span></h5>
                    <p>XUẤT HÀNG</p></div>
                    <div class="content">
                        <p>JapanEx tiến hành xuất hàng ngay khi xác nhận thanh toán.</p>
                        <%--<p>(*) Giá chuyển phát nhanh bao gồm Cước phí EMS và phí Dịch Vụ Kho Hàng JapanEx.</p>--%>
                    </div>
                </div>
            </div>
            <div class="us-guide-mobile">
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd1.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 1:</h4>
                    <span>khách hàng</span>
                    <p>ĐĂNG KÝ DỊCH VỤ</p></div>
                    <div class="content">
                        <p>Quý Khách Hàng vui lòng truy cập website <br />
                            <b>www.japanex.net</b> hoặc <br />
                             gọi <b>1900 7163</b> để đăng ký và <br />
                            được hướng dẫn sử dụng dịch vụ.
                        </p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd2.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 2:</h4>
                    <span>khách hàng</span>
                    <p>
                        MUA SẮM TẠI CÁC
                        <br />
                        WEBSITE NHẬT BẢN
                    </p></div>
                    <div class="content">
                        <p>Khách Hàng sử dụng thông tin <b>JapanEx</b> <br />
                            cung cấp để mua sắm tại các website <br />
                            mua hàng trực tuyến tại Nhật như: <br />
                            www.amazon.jp, www.rakuten.co.jp,<br />
                            http://auctions.yahoo.co.jp …. </p>
                        <p>Tham khảo thêm tại : <a href="shopping.aspx">Danh sách các <br />
                            website mua hàng tại Nhật.</a></p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd3.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 3:</h4>
                    <h5>japan<span>Ex</span></h5>
                    <p>NHẬN HÀNG VÀ BÁO GIÁ</p></div>
                    <div class="content">
                        <p>Kho JapanEx tại Nhật nhận hàng và <br />
                            tiến hành báo giá bao gồm Cước phí <b>EMS</b> <br />
                            và Phí dịch vụ kho hàng.</p>
                        <p>(*) Chuyển phát nhanh quốc tế <b>EMS</b> <br />
                            có thể chuyển hàng từ Nhật đi khắp nơi <br />
                            trên thế giới.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd4.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 4:</h4>
                    <span>khách hàng</span>
                    <p>THANH TOÁN</p></div>
                    <div class="content">
                        <p>Khách Hàng có thanh Toán cho <b>JapanEx</b> <br />
                            thông qua các kênh thanh toán:  <br />
                            + Chuyển khoản Vietcombank<br />
                            + Thẻ quốc tế: Visa/Master Card, JCB,…</p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/images/hd5.png" alt="" />
                    </div>
                    <div class="tit">
                    <h4>bước 5:</h4>
                    <h5>japan<span>Ex</span></h5>
                    <p>XUẤT HÀNG</p></div>
                    <div class="content">
                        <p>JapanEx tiến hành xuất hàng ngay khi <br />
                            xác nhận thanh toán.</p>
                        <%--<p>(*) Giá chuyển phát nhanh bao gồm Cước phí EMS và phí Dịch Vụ Kho Hàng JapanEx.</p>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

