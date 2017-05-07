<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Japanex</title>
    <meta name="description" content="Japanex" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="breadcrumb">
        <div class="wrap-breadcrumb">
            <a id="A1" href="~/" runat="server"><i class="fa fa-chevron-left"></i></a>
            <p>FAQs</p>
        </div>
    </div>
    <%--<div class="banner-ship">
        <img src="assets/images/banner-faq.png" alt="" />
    </div>--%>
    <div class="wrap-faq">
        <h1>FAQ<span>s</span></h1>
        <div class="left">
            <div role="tabpanel" class="faq-tab">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation">
                        <a href="#tab1" aria-controls="home" role="tab" data-toggle="tab">Hướng dẫn mua hàng</a>
                    </li>
                    <li role="presentation">
                        <a href="#tab2" aria-controls="tab" role="tab" data-toggle="tab">Cước & phí dịch vụ</a>
                    </li>
                    <li role="presentation">
                        <a href="#tab3" aria-controls="tab" role="tab" data-toggle="tab">Khác</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane" id="tab1">
                        <ul id="mt-1" class="mt">
                            <li id="faq_1">Cách sử dụng dịch vụ tại JapanEx ?</li>
                            <li id="faq_2">Hướng dẫn mua hàng tại website trực tuyến Amazon.</li>
                            <li id="faq_3">Hướng dẫn mua hàng tại website trực tuyến Rakuten.</li>
                            <li id="faq_4">Các website mua hàng trực tuyến thông dụng tại Nhật ?</li>
                        </ul>
                        <%--<div id="green-1" class="page-green" style="margin: auto;"></div>--%>
                        <div class="faq-acc">
                            <div class="item" data-id="faq_1">
                                <h3>Cách sử dụng dịch vụ tại JapanEx ?</h3>
                                <div class="content">
                                    <p>Quy trình sử dụng của JapanEx rất đơn giản. Khách hàng chỉ cần lên các websitemua hàng trực tuyếntại Nhật mua hàng và gửi hàng về Địa Chỉ Kho Hàng của JapanEx tại Nhật. ( Chi tiết các bước xem <a href="Usage-Guide.aspx">Tại Đây</a> )</p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_2">
                                <h3>Hướng dẫn mua hàng tại website trực tuyến Amazon.</h3>
                                <div class="content">
                                    <p>Hướng dẫn mua hàng tại website trực tuyến Amazon <a href="buy-amazon.aspx">Tại đây</a>.</p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_3">
                                <h3>Hướng dẫn mua hàng tại website trực tuyến Rakuten.</h3>
                                <div class="content">
                                    <p>Hướng dẫn mua hàng tại website trực tuyến Rakuten <a href="buy-rakuten.aspx">Tại đây</a>.</p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_4">
                                <h3>Các website mua hàng trực tuyến thông dụng tại Nhật ?</h3>
                                <div class="content">
                                    <p>Khách hàng vui lòng nhấp chuột <a href="shopping.aspx">Tại Đây</a> để biết thêm thông tin về các website mua hàng trực tuyến thông dụng tại Nhật.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab2">
                        <ul id="mt-2" class="mt">
                            <li id="faq_5">Bảng giá dịch vụ của JapanEx ?</li>
                            <li id="faq_6">Cách tính giá tiền cho một kiện hàng ?</li>
                            <li id="faq_7">Trả / Đổi / Chuyển hàng quốc nội Japan có được không ?</li>
                            <li id="faq_8">Phương thức thanh toán phí dịch vụ JapanEx ?</li>
                        </ul>
                        <%--<div id="green-2" class="page-green" style="margin: auto;"></div>--%>
                        <div class="faq-acc">
                            <div class="item" data-id="faq_5">
                                <h3>Bảng giá dịch vụ của JapanEx ?</h3>
                                <div class="content">
                                    <p>Hiện tại, JapanEx có rất nhiều dịch vụ đính kèm cho khách hàng lựa chọn để phù hợp với nhu cầu của khách hàng. Dịch vụ của JapanEx có giá phí ổn định và cạnh tranh so với thị trường. ( Xem bảng giá chi tiết <a href="service.aspx">Tại Đây</a> )</p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_6">
                                <h3>Cách tính giá tiền cho một kiện hàng ?</h3>
                                <div class="content">
                                    <p>Phí vận chuyển tại JapanEx sẽ bao gồm : Phí vận chuyển EMS + Dịch vụ kho hàng (nếu có) + Phí bảo hiểm (nếu có). ( Bảng tính phí dịch vụ <a href="service.aspx">Tại Đây</a> )</p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_7">
                                <h3>Trả / Đổi / Chuyển hàng quốc nội Japan có được không ?</h3>
                                <div class="content">
                                    <p>Nhằm mục đích đem đến cho khách hàng những trải nghiệm thoải mái nhất khi sử dụng dịch vụ, JapanEx cung cấp cho khách hàng các dịch vụ Trả/ Đổi/ Chuyển hàng quốc nội Japan cho khách hàng. Vui lòng xem chi tiết Bảng phí dịch vụ vận chuyển nội địa Japan ( <a href="shipping.aspx">Tại Đây</a> )</p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_8">
                                <h3>Phương thức thanh toán phí dịch vụ JapanEx ?</h3>
                                <div class="content">
                                    <p>
                                        Khách hàng vui lòng thanh toán phí dịch vụ của JapanEx qua tài khoản ngân hàng sau:
                                        <br />
                                        <br />
                                        Ngân Hàng <b>VCB (VIETCOMBANK)</b>
                                        <br />
                                        Tên Tài Khoản: Đặng Trần Bá Tước
                                        <br />
                                        Số Tài Khoản: 007100364733
                                        <br />
                                        Chi Nhánh: Hồ Chí Minh
                                        <br />
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab3">
                        <ul id="mt-3" class="mt">
                            <%--<li id="faq_9">Hướng dẫn mua hàng sử dụng Mã Khách Hàng và địa chỉ kho JapanEx</li>--%>
                            <li id="faq_10">Ưu và nhược điểm của dịch vụ EMS?</li>
                            <li id="faq_11">Tại sao hàng nhỏ lẻ, cồng kềnh lại tiện lợi khi gửi EMS ?</li>
                            <li id="faq_12">Thời gian kiện hàng về tới Việt Nam ?</li>
                            <li id="faq_13">Có thể thanh toán phí dịch vụ bằng VNĐ được không ?</li>
                            <li id="faq_14">Có bắt buộc mua bảo hiểm cho đơn hàng ?</li>
                            <li id="faq_15">Các mặt hàng cấm ( cấm bay, cấm xuất )?</li>
                            <li id="faq_16">Tôi có phải trả thêm loại thuế gì nữa không?</li>
                            <li id="faq_17">Thanh toán bằng thẻ tín dụng có lợi ích gì ?</li>
                        </ul>
                        <%--<div id="green-3" class="page-green" style="margin: auto;"></div>--%>
                        <div class="faq-acc">
                            <div class="item" data-id="faq_10">
                                <h3>Ưu và nhược điểm của dịch vụ EMS?</h3>
                                <div class="content">
                                    <p>
                                        Ưu điểm của EMS:
                                        <br />
                                        •	Ít xảy ra vấn đề về mất hàng hoá, độ tin cậy, uy tín cao.
                                        <br />
                                        •	Đại lý rộng khắp trên cả nước.
                                        <br />
                                        •	Phí dịch vụ phải chăng, ổn định.
                                        <br />
                                        •	Giao hàng đúng cam kết.
                                        <br />
                                        •	Kiểm tra kiện hàng qua trang website riêng của EMS.
                                        <br />
                                        •	Giá trị đơn hàng dưới 2 triệu đồng sẽ được miễn thuế.
                                        <br />
                                        <br />
                                        Nhược điểm của EMS:
                                        <br />
                                        •	Sau khi phát hàng <b>2 lần</b> nếu không được, người nhận phải tự đến lấy hàng.
                                    </p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_11">
                                <h3>Tại sao hàng nhỏ lẻ, cồng kềnh lại tiện lợi khi gửi EMS ?</h3>
                                <div class="content">
                                    <p>
                                        Cước phí vận chuyển của EMS được tính theo trọng lượng đúng của kiện hàng không phụ thuộc vào diện tích. Do đó, cước phí vận chuyển hàng nhỏ, lẻ, cồng kềnh của EMS sẽ thấp hơn so với các dịch vụ khác. Ngoài ra, đơn hàng có giá trị dưới 2 triệu đồng khi vận chuyển bằng dịch vụ EMS  sẽ được miễn thuế.
                                    </p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_12">
                                <h3>Thời gian kiện hàng về tới Việt Nam ?</h3>
                                <div class="content">
                                    <p>
                                        <b>EMS</b> cam kết kiện hàng sẽ được vận chuyển tới tận nhà người dùng ( nội thành ) trong vòng từ 4 đến 8 ngày.
                                    </p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_13">
                                <h3>Có thể thanh toán phí dịch vụ bằng VNĐ được không ?</h3>
                                <div class="content">
                                    <p>
                                        Tất cả các giao dịch của JapanEx đều có thể thanh toán được bằng VNĐ theo tỷ giá được cập nhật trên website của JapanEx.
                                    </p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_14">
                                <h3>Có bắt buộc mua bảo hiểm cho đơn hàng ?</h3>
                                <div class="content">
                                    <p>Dịch vụ EMS không bắt buộc phải mua bảo hiểm cho đơn hàng. Bảo hiểm đơn hàng được khuyến khích sử dụng cho các trường hợp hàng có giá trị, hàng dễ vỡ. ( Bảng giá chi tiết xem <a href="#">Tại Đây</a> )</p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_15">
                                <h3>Các mặt hàng cấm ( cấm bay, cấm xuất )?</h3>
                                <div class="content">
                                    <p>
                                        Danh sách các mặt hàng bị cấm Xuất, Nhập Khẩu:
                                        <br />
                                        •	<a href="http://www.post.japanpost.jp/int/use/restriction/restriction01.pdf" target="_blank">Announcement Regarding Dangerous Goods in Airmai</a>
                                        <br />
                                        •	<a href="http://www.post.japanpost.jp/int/use/restriction/restriction02_en.pdf" target="_blank">Regarding Lithium Batteries</a>
                                        <br />
                                        •	<a href="http://www.post.japanpost.jp/int/use/restriction/restriction03_en.pdf" target="_blank">About erasion of the indication such as "the dangerous materials labels" of the mail decoration</a>
                                    </p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_16">
                                <h3>Tôi có phải trả thêm loại thuế gì nữa không?</h3>
                                <div class="content">
                                    <p>
                                        Với những mặt hàng nhất định khách hàng lưu ý có thể sẽ phải đóng thêm thuế nhập khẩu khi về đến hải quan Việt Nam (Tra cứu thuế nhập khẩu tại <a href="https://www.customs.gov.vn/default.aspx" target="_blank">https://www.customs.gov.vn/default.aspx</a> ) và thuế giá trị gia tăng (V.A.T) 10%.
                                    </p>
                                </div>
                            </div>
                            <div class="item" data-id="faq_17">
                                <h3>Thanh toán bằng thẻ tín dụng có lợi ích gì ?</h3>
                                <div class="content">
                                    <p>
                                        •	Linh hoạt trong chi tiêu
                                        <br />
                                        Bạn yêu thích hoặc cần một món hàng, nhưng không có sẵn tiền mặt hay không đủ tiền trong tài khoản để mua, với thẻ tín dụng, bạn chỉ đơn giản thanh toán bằng thẻ và đem món hàng về nhà ngay sau đó.
                                        <br /><br />
                                        •	Được chấp nhận toàn cầu
                                        <br />
                                        Thẻ tín dụng được phát hành bởi các ngân hàng uy tín được chấp nhận thanh toán toàn cầu, kể cả thanh toán cho các giao dịch trên thực tế lẫn trên mạng.
                                        <br /><br />
                                        •	Đơn giản hóa việc theo dõi chi tiêu
                                        <br />
                                        Mỗi tháng ngân hàng phát hành thẻ của bạn sẽ gửi báo cáo chi tiết (bảng sao kê) về những giao dịch như số tiền, ngày tháng thanh toán, mua sắm ở đâu... trong khi nếu giao dịch bằng tiền mặt, liệu bạn có thể giữ hết hóa đơn của tất cả các thanh toán và tự quản lý một cách chính xác?
                                        <br /><br />
                                        •	Những giá trị cộng thêm
                                        <br />
                                        Để khuyến khích người sử dụng thẻ, nhiều ngân hàng đưa ra các chương trình ưu đãi như tích điểm thưởng, liên kết với các thương hiệu được ưa chuộng, các trung tâm mua sắm để giảm giá cho người sử dụng thẻ của họ, quà tặng ngay khi đăng ký sử dụng thẻ.
                                        <br />
                                        Với thẻ tín dụng, bạn có thể mua hàng trên các website trực tuyến, trong khi không thể làm điều này bằng tiền mặt. Hãy nghĩ đến những chương trình khuyến mãi hấp dẫn chỉ dành riêng cho các khách hàng thanh toán bằng thẻ tín dụng, nếu không sử dụng thẻ, làm sao bạn có thể tham gia được những chương trình hấp dẫn này?
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="pager">
                <a href="#" class="current">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#" class="prev fa fa-chevron-left"></a>
                <a href="#" class="next fa fa-chevron-right"></a>
            </div>--%>
            
        </div>
        <div class="right">
            <div class="item" data-id="faq_1">
                <p>Quy trình sử dụng của JapanEx rất đơn giản. Khách hàng chỉ cần lên các websitemua hàng trực tuyếntại Nhật mua hàng và gửi hàng về Địa Chỉ Kho Hàng của JapanEx tại Nhật. ( Chi tiết các bước xem <a href="Usage-Guide.aspx">Tại Đây</a> )</p>
                <%--<a href="#" class="estimate-link">
                    <img src="assets/images/cal.png" alt="" />Thử dự toán</a>--%>
            </div>
            <div class="item" data-id="faq_2">
                <p>Hướng dẫn mua hàng tại website trực tuyến Amazon <a href="buy-amazon.aspx">Tại đây</a>.</p>
            </div>
            <div class="item" data-id="faq_3">
                <p>Hướng dẫn mua hàng tại website trực tuyến Rakuten <a href="buy-rakuten.aspx">Tại đây</a>.</p>
            </div>
            <div class="item" data-id="faq_4">
                <p>Khách hàng vui lòng nhấp chuột <a href="shopping.aspx">Tại Đây</a> để biết thêm thông tin về các website mua hàng trực tuyến thông dụng tại Nhật.</p>
            </div>
            <div class="item" data-id="faq_5">
                <p>Hiện tại, JapanEx có rất nhiều dịch vụ đính kèm cho khách hàng lựa chọn để phù hợp với nhu cầu của khách hàng. Dịch vụ của JapanEx có giá phí ổn định và cạnh tranh so với thị trường. ( Xem bảng giá chi tiết <a href="service.aspx">Tại Đây</a> )</p>
            </div>
            <div class="item" data-id="faq_6">
                <p>Phí vận chuyển tại JapanEx sẽ bao gồm : Phí vận chuyển EMS + Dịch vụ kho hàng (nếu có) + Phí bảo hiểm (nếu có). ( Bảng tính phí dịch vụ <a href="service.aspx">Tại Đây</a> )</p>
            </div>
            <div class="item" data-id="faq_7">
                <p>Nhằm mục đích đem đến cho khách hàng những trải nghiệm thoải mái nhất khi sử dụng dịch vụ, JapanEx cung cấp cho khách hàng các dịch vụ Trả/ Đổi/ Chuyển hàng quốc nội Japan cho khách hàng. Vui lòng xem chi tiết Bảng phí dịch vụ vận chuyển nội địa Japan ( <a href="shipping.aspx">Tại Đây</a> )</p>
            </div>
            <div class="item" data-id="faq_8">
                <p>
                    Khách hàng vui lòng thanh toán phí dịch vụ của JapanEx qua tài khoản ngân hàng sau:
                    <br />
                    <br />
                    Ngân Hàng <b>VCB (VIETCOMBANK)</b>
                    <br />
                    Tên Tài Khoản: Đặng Trần Bá Tước
                    <br />
                    Số Tài Khoản: 007100364733
                    <br />
                    Chi Nhánh: Hồ Chí Minh
                    <br />
                </p>
            </div>
            <div class="item" data-id="faq_9">
                <p>1 Hiện tại, JapanEx có rất nhiều dịch vụ và dịch vụ đính kèm cho khách hàng lựa chọn để phù hợp với nhu cầu khách hàng. Dịch vụ của JapanEx có cước phí cạnh tranh so với thị trường. ( Xem bảng giá chi tiết <a href="#">Tại Đây</a> )</p>
            </div>
            <div class="item" data-id="faq_10">
                <p>
                    Ưu điểm của EMS:
                    <br />
                    •	Ít xảy ra vấn đề về mất hàng hoá, độ tin cậy, uy tín cao.
                    <br />
                    •	Đại lý rộng khắp trên cả nước.
                    <br />
                    •	Phí dịch vụ phải chăng, ổn định.
                    <br />
                    •	Giao hàng đúng cam kết.
                    <br />
                    •	Kiểm tra kiện hàng qua trang website riêng của EMS.
                    <br />
                    •	Giá trị đơn hàng dưới 2 triệu đồng sẽ được miễn thuế.
                    <br />
                    <br />
                    Nhược điểm của EMS:
                    <br />
                    •	Sau khi phát hàng <b>2 lần</b> nếu không được, người nhận phải tự đến lấy hàng.
                </p>
            </div>
            <div class="item" data-id="faq_11">
                <p>
                    Cước phí vận chuyển của EMS được tính theo trọng lượng đúng của kiện hàng không phụ thuộc vào diện tích. Do đó, cước phí vận chuyển hàng nhỏ, lẻ, cồng kềnh của EMS sẽ thấp hơn so với các dịch vụ khác. Ngoài ra, đơn hàng có giá trị dưới 2 triệu đồng khi vận chuyển bằng dịch vụ EMS  sẽ được miễn thuế.
                </p>
            </div>
            <div class="item" data-id="faq_12">
                <p>
                    <b>EMS</b> cam kết kiện hàng sẽ được vận chuyển tới tận nhà người dùng ( nội thành ) trong vòng từ 4 đến 8 ngày.
                </p>
            </div>
            <div class="item" data-id="faq_13">
                <p>
                    Tất cả các giao dịch của JapanEx đều có thể thanh toán được bằng VNĐ theo tỷ giá được cập nhật trên website của JapanEx.
                </p>
            </div>
            <div class="item" data-id="faq_14">
                <p>Dịch vụ EMS không bắt buộc phải mua bảo hiểm cho đơn hàng. Bảo hiểm đơn hàng được khuyến khích sử dụng cho các trường hợp hàng có giá trị, hàng dễ vỡ. ( Bảng giá chi tiết xem <a href="#">Tại Đây</a> )</p>
            </div>
            <div class="item" data-id="faq_15">
                <p>
                    Danh sách các mặt hàng bị cấm Xuất, Nhập Khẩu:
                    <br />
                    •	<a href="http://www.post.japanpost.jp/int/use/restriction/restriction01.pdf" target="_blank">Announcement Regarding Dangerous Goods in Airmai</a>
                    <br />
                    •	<a href="http://www.post.japanpost.jp/int/use/restriction/restriction02_en.pdf" target="_blank">Regarding Lithium Batteries</a>
                    <br />
                    •	<a href="http://www.post.japanpost.jp/int/use/restriction/restriction03_en.pdf" target="_blank">About erasion of the indication such as "the dangerous materials labels" of the mail decoration</a>
                </p>
            </div>
            <div class="item" data-id="faq_16">
                <p>
                    Với những mặt hàng nhất định khách hàng lưu ý có thể sẽ phải đóng thêm thuế nhập khẩu khi về đến hải quan Việt Nam (Tra cứu thuế nhập khẩu tại <a href="https://www.customs.gov.vn/default.aspx" target="_blank">https://www.customs.gov.vn/default.aspx</a> ) và thuế giá trị gia tăng (V.A.T) 10%.
                </p>
            </div>
            <div class="item" data-id="faq_17">
                <p>
                    •	Linh hoạt trong chi tiêu
                    <br />
                    Bạn yêu thích hoặc cần một món hàng, nhưng không có sẵn tiền mặt hay không đủ tiền trong tài khoản để mua, với thẻ tín dụng, bạn chỉ đơn giản thanh toán bằng thẻ và đem món hàng về nhà ngay sau đó.
                    <br /><br />
                    •	Được chấp nhận toàn cầu
                    <br />
                    Thẻ tín dụng được phát hành bởi các ngân hàng uy tín được chấp nhận thanh toán toàn cầu, kể cả thanh toán cho các giao dịch trên thực tế lẫn trên mạng.
                    <br /><br />
                    •	Đơn giản hóa việc theo dõi chi tiêu
                    <br />
                    Mỗi tháng ngân hàng phát hành thẻ của bạn sẽ gửi báo cáo chi tiết (bảng sao kê) về những giao dịch như số tiền, ngày tháng thanh toán, mua sắm ở đâu... trong khi nếu giao dịch bằng tiền mặt, liệu bạn có thể giữ hết hóa đơn của tất cả các thanh toán và tự quản lý một cách chính xác?
                    <br /><br />
                    •	Những giá trị cộng thêm
                    <br />
                    Để khuyến khích người sử dụng thẻ, nhiều ngân hàng đưa ra các chương trình ưu đãi như tích điểm thưởng, liên kết với các thương hiệu được ưa chuộng, các trung tâm mua sắm để giảm giá cho người sử dụng thẻ của họ, quà tặng ngay khi đăng ký sử dụng thẻ.
                    <br />
                    Với thẻ tín dụng, bạn có thể mua hàng trên các website trực tuyến, trong khi không thể làm điều này bằng tiền mặt. Hãy nghĩ đến những chương trình khuyến mãi hấp dẫn chỉ dành riêng cho các khách hàng thanh toán bằng thẻ tín dụng, nếu không sử dụng thẻ, làm sao bạn có thể tham gia được những chương trình hấp dẫn này?
                </p>
            </div>
        </div>
        <div class="clr"></div>
    </div>
</asp:Content>

