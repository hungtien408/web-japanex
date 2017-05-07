<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="shipping.aspx.cs" Inherits="shipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Japanex</title>
    <meta name="description" content="Japanex" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="breadcrumb">
        <div class="wrap-breadcrumb">
            <a id="A1" href="~/" runat="server"><i class="fa fa-chevron-left"></i></a>
            <p>Phí vận chuyển nội địa</p>
        </div>
    </div>
    <div class="banner-ship">
        <img src="assets/images/banner-ship.png" alt="" />
    </div>
    <div class="wrap-ship">
        <div class="head">
            <div class="left">
                <h1>Phí vận chuyển <span>nội địa</span></h1>
                <div class="clr"></div>
                <span>(từ Kho JapanEx đến Nơi nhận)</span>
            </div>
            <div class="right">
                <p>
                    (*) Vận chuyển nội địa Nhật,
                    <br />
                    Bảng giá tính theo
                </p>
                <span>Kích thước (cm) = dài + rộng + cao</span>
            </div>
        </div>
        <div class="content">
            <div class="bor-table">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Nơi Nhận (Vùng)</th>
                            <th>Hokkaido</th>
                            <th>Tohoku</th>
                            <th>Kanto</th>
                            <th>Shin-Etsu</th>
                            <th>Hokuriku</th>
                            <th>Chubu (Tokai)</th>
                            <th>Kansai (Kinki)</th>
                            <th>Chugoku</th>
                            <th>Shikoku</th>
                            <th>Kyushu</th>
                            <th>Okinawa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nơi Nhận (Tỉnh)</td>
                            <td>Hokkaido</td>
                            <td>Aomori
                                <br />
                                Akita
                                <br />
                                Iwate
                                <br />
                                Miyagi
                                <br />
                                Yamagata
                                <br />
                                Fukushima
                            </td>
                            <td>Ibaraki
                                <br />
                                Tochigi
                                <br />
                                Gunma
                                <br />
                                Saitama
                                <br />
                                Chiba
                                <br />
                                Kanagawa
                                <br />
                                Tokyo
                                <br />
                                Yamanashi</td>
                            <td>Niigata
                                <br />
                                Nagano</td>
                            <td>Toyama
                                <br />
                                Ishikawa
                                <br />
                                Fukui</td>
                            <td>Shizuoka
                                <br />
                                Aichi
                                <br />
                                Triple
                                <br />
                                Gifu</td>
                            <td>Osaka
                                <br />
                                Kyoto
                                <br />
                                Shiga
                                <br />
                                Nara
                                <br />
                                Wakayama
                                <br />
                                Hyogo</td>
                            <td>Okayama
                                <br />
                                Hiroshima
                                <br />
                                Yamaguchi
                                <br />
                                Tottori
                                <br />
                                Shimane</td>
                            <td>Kagawa
                                <br />
                                Tokushima
                                <br />
                                Ehime
                                <br />
                                Kochi</td>
                            <td>Fukuoka
                                <br />
                                Saga
                                <br />
                                Nagasaki
                                <br />
                                Kumamoto
                                <br />
                                Much
                                <br />
                                Miyazaki
                                <br />
                                Kagoshima</td>
                            <td>Okinawa</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="bor-table">
                <table class="table">
                    <thead>
                        <tr>
                            <th>着地</th>
                            <th>北海度</th>
                            <th>東北</th>
                            <th>関東</th>
                            <th>信越</th>
                            <th>北陸</th>
                            <th>中部 (東海)</th>
                            <th>関西 (近畿)</th>
                            <th>中国</th>
                            <th>四国</th>
                            <th>九州</th>
                            <th>沖縄</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td>北海道</td>
                            <td>青森県
                                <br />
                                秋田県
                                <br />
                                岩手県
                                <br />
                                宮城県
                                <br />
                                山形県
                                <br />
                                福島県
                            </td>
                            <td>茨城県 
                                <br />
                                栃木県
                                <br />
                                栃木県
                                <br />
                                埼玉県
                                <br />
                                千葉県
                                <br />
                                神奈川県
                                <br />
                                東京都
                                <br />
                                山梨県</td>
                            <td>新潟県
                                <br />
                                長野県</td>
                            <td>富山県
                                <br />
                                石川県
                                <br />
                                福井県</td>
                            <td>静岡県
                                <br />
                                愛知県
                                <br />
                                三重県
                                <br />
                                岐阜県</td>
                            <td>大阪府
                                <br />
                                京都府
                                <br />
                                京都府
                                <br />
                                奈良県
                                <br />
                                和歌山県
                                <br />
                                兵庫県</td>
                            <td>岡山県
                                <br />
                                広島県
                                <br />
                                山口県
                                <br />
                                鳥取県
                                <br />
                                島根県</td>
                            <td>香川県
                                <br />
                                徳島県
                                <br />
                                愛媛県
                                <br />
                                高知県</td>
                            <td>福岡県
                                <br />
                                佐賀県
                                <br />
                                長崎県
                                <br />
                                熊本県
                                <br />
                                大分県
                                <br />
                                宮崎県
                                <br />
                                鹿児島県</td>
                            <td>沖縄県</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="bor-table">
                <table class="table txt-right">
                    <thead>
                        <tr>
                            <th>Kích thước (cm)</th>
                            <th colspan="11">Bảng giá (JPY)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><b>60</b></td>
                            <td>1,129</td>
                            <td>635</td>
                            <td>583</td>
                            <td>635</td>
                            <td>635</td>
                            <td>635</td>
                            <td>727</td>
                            <td>933</td>
                            <td>933</td>
                            <td>1,190</td>
                            <td>1,334</td>
                        </tr>
                        <tr>
                            <td><b>80</b></td>
                            <td>1,229</td>
                            <td>735</td>
                            <td>683</td>
                            <td>735</td>
                            <td>735</td>
                            <td>735</td>
                            <td>827</td>
                            <td>1,033</td>
                            <td>1,033</td>
                            <td>1,290</td>
                            <td>1,434</td>
                        </tr>
                        <tr>
                            <td><b>100</b></td>
                            <td>1,329</td>
                            <td>835</td>
                            <td>783</td>
                            <td>835</td>
                            <td>835</td>
                            <td>835</td>
                            <td>927</td>
                            <td>1,133</td>
                            <td>1,133</td>
                            <td>1,390</td>
                            <td>1,647</td>
                        </tr>
                        <tr>
                            <td><b>120</b></td>
                            <td>1,329</td>
                            <td>835</td>
                            <td>783</td>
                            <td>835</td>
                            <td>835</td>
                            <td>835</td>
                            <td>927</td>
                            <td>1,133</td>
                            <td>1,133</td>
                            <td>1,390</td>
                            <td>1,647</td>
                        </tr>
                        <tr>
                            <td><b>140</b></td>
                            <td>1,645</td>
                            <td>1,038</td>
                            <td>986</td>
                            <td>1,038</td>
                            <td>1,038</td>
                            <td>1,038</td>
                            <td>1,233</td>
                            <td>1,439</td>
                            <td>1,439</td>
                            <td>1,696</td>
                            <td>1,953</td>
                        </tr>
                        <tr>
                            <td><b>160</b></td>
                            <td>1,645</td>
                            <td>1,038</td>
                            <td>986</td>
                            <td>1,038</td>
                            <td>1,038</td>
                            <td>1,038</td>
                            <td>1,233</td>
                            <td>1,439</td>
                            <td>1,439</td>
                            <td>1,696</td>
                            <td>1,953</td>
                        </tr>
                        <tr>
                            <td><b>170</b></td>
                            <td>2,056</td>
                            <td>1,449</td>
                            <td>1,346</td>
                            <td>1,449</td>
                            <td>1,449</td>
                            <td>1,449</td>
                            <td>1,542</td>
                            <td>2,056</td>
                            <td>2,056</td>
                            <td>2,056</td>
                            <td>2,262</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="table_1" class="table-mo">
            <table class="table responsive">
		        <tr class="Colhead">
                    <td>Nơi Nhận (Vùng)</td>
                    <td>Hokkaido</td>
                    <td>Tohoku</td>
                    <td>Kanto</td>
                    <td>Shin-Etsu</td>
                    <td>Hokuriku</td>
                    <td>Chubu (Tokai)</td>
                    <td>Kansai (Kinki)</td>
                    <td>Chugoku</td>
                    <td>Shikoku</td>
                    <td>Kyushu</td>
                    <td>Okinawa</td>
                </tr>
                <tr>
                    <td>Nơi Nhận (Tỉnh)</td>
                    <td>Hokkaido</td>
                    <td>Aomori
                        <br />
                        Akita
                        <br />
                        Iwate
                        <br />
                        Miyagi
                        <br />
                        Yamagata
                        <br />
                        Fukushima
                    </td>
                    <td>Ibaraki
                        <br />
                        Tochigi
                        <br />
                        Gunma
                        <br />
                        Saitama
                        <br />
                        Chiba
                        <br />
                        Kanagawa
                        <br />
                        Tokyo
                        <br />
                        Yamanashi</td>
                    <td>Niigata
                        <br />
                        Nagano</td>
                    <td>Toyama
                        <br />
                        Ishikawa
                        <br />
                        Fukui</td>
                    <td>Shizuoka
                        <br />
                        Aichi
                        <br />
                        Triple
                        <br />
                        Gifu</td>
                    <td>Osaka
                        <br />
                        Kyoto
                        <br />
                        Shiga
                        <br />
                        Nara
                        <br />
                        Wakayama
                        <br />
                        Hyogo</td>
                    <td>Okayama
                        <br />
                        Hiroshima
                        <br />
                        Yamaguchi
                        <br />
                        Tottori
                        <br />
                        Shimane</td>
                    <td>Kagawa
                        <br />
                        Tokushima
                        <br />
                        Ehime
                        <br />
                        Kochi</td>
                    <td>Fukuoka
                        <br />
                        Saga
                        <br />
                        Nagasaki
                        <br />
                        Kumamoto
                        <br />
                        Much
                        <br />
                        Miyazaki
                        <br />
                        Kagoshima</td>
                    <td>Okinawa</td>
                </tr>
                <tr class="Colhead">
                    <td>着地</td>
                    <td>北海度</td>
                    <td>東北</td>
                    <td>関東</td>
                    <td>信越</td>
                    <td>北陸</td>
                    <td>中部 (東海)</td>
                    <td>関西 (近畿)</td>
                    <td>中国</td>
                    <td>四国</td>
                    <td>九州</td>
                    <td>沖縄</td>
                </tr>
                <tr>
                    <td></td>
                    <td>北海道</td>
                    <td>青森県
                        <br />
                        秋田県
                        <br />
                        岩手県
                        <br />
                        宮城県
                        <br />
                        山形県
                        <br />
                        福島県
                    </td>
                    <td>茨城県 
                        <br />
                        栃木県
                        <br />
                        栃木県
                        <br />
                        埼玉県
                        <br />
                        千葉県
                        <br />
                        神奈川県
                        <br />
                        東京都
                        <br />
                        山梨県</td>
                    <td>新潟県
                        <br />
                        長野県</td>
                    <td>富山県
                        <br />
                        石川県
                        <br />
                        福井県</td>
                    <td>静岡県
                        <br />
                        愛知県
                        <br />
                        三重県
                        <br />
                        岐阜県</td>
                    <td>大阪府
                        <br />
                        京都府
                        <br />
                        京都府
                        <br />
                        奈良県
                        <br />
                        和歌山県
                        <br />
                        兵庫県</td>
                    <td>岡山県
                        <br />
                        広島県
                        <br />
                        山口県
                        <br />
                        鳥取県
                        <br />
                        島根県</td>
                    <td>香川県
                        <br />
                        徳島県
                        <br />
                        愛媛県
                        <br />
                        高知県</td>
                    <td>福岡県
                        <br />
                        佐賀県
                        <br />
                        長崎県
                        <br />
                        熊本県
                        <br />
                        大分県
                        <br />
                        宮崎県
                        <br />
                        鹿児島県</td>
                    <td>沖縄県</td>
                </tr>
                <tr class="Colhead">
                    <td>Kích thước (cm)</td>
                    <td colspan="11">Bảng giá (JPY)</td>
                </tr>
                <tr class="text-right">
                    <td><b>60</b></td>
                    <td>1,129</td>
                    <td>635</td>
                    <td>583</td>
                    <td>635</td>
                    <td>635</td>
                    <td>635</td>
                    <td>727</td>
                    <td>933</td>
                    <td>933</td>
                    <td>1,190</td>
                    <td>1,334</td>
                </tr>
                <tr class="text-right">
                    <td><b>80</b></td>
                    <td>1,229</td>
                    <td>735</td>
                    <td>683</td>
                    <td>735</td>
                    <td>735</td>
                    <td>735</td>
                    <td>827</td>
                    <td>1,033</td>
                    <td>1,033</td>
                    <td>1,290</td>
                    <td>1,434</td>
                </tr>
                <tr class="text-right">
                    <td><b>100</b></td>
                    <td>1,329</td>
                    <td>835</td>
                    <td>783</td>
                    <td>835</td>
                    <td>835</td>
                    <td>835</td>
                    <td>927</td>
                    <td>1,133</td>
                    <td>1,133</td>
                    <td>1,390</td>
                    <td>1,647</td>
                </tr>
                <tr class="text-right">
                    <td><b>120</b></td>
                    <td>1,329</td>
                    <td>835</td>
                    <td>783</td>
                    <td>835</td>
                    <td>835</td>
                    <td>835</td>
                    <td>927</td>
                    <td>1,133</td>
                    <td>1,133</td>
                    <td>1,390</td>
                    <td>1,647</td>
                </tr>
                <tr class="text-right">
                    <td><b>140</b></td>
                    <td>1,645</td>
                    <td>1,038</td>
                    <td>986</td>
                    <td>1,038</td>
                    <td>1,038</td>
                    <td>1,038</td>
                    <td>1,233</td>
                    <td>1,439</td>
                    <td>1,439</td>
                    <td>1,696</td>
                    <td>1,953</td>
                </tr>
                <tr class="text-right">
                    <td><b>160</b></td>
                    <td>1,645</td>
                    <td>1,038</td>
                    <td>986</td>
                    <td>1,038</td>
                    <td>1,038</td>
                    <td>1,038</td>
                    <td>1,233</td>
                    <td>1,439</td>
                    <td>1,439</td>
                    <td>1,696</td>
                    <td>1,953</td>
                </tr>
                <tr class="text-right">
                    <td><b>170</b></td>
                    <td>2,056</td>
                    <td>1,449</td>
                    <td>1,346</td>
                    <td>1,449</td>
                    <td>1,449</td>
                    <td>1,449</td>
                    <td>1,542</td>
                    <td>2,056</td>
                    <td>2,056</td>
                    <td>2,056</td>
                    <td>2,262</td>
                </tr>
	        </table>
        </div>
    </div>
</asp:Content>

