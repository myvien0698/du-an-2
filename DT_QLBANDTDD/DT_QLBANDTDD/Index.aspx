<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DT_QLBANDTDD.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            left: 0px;
            top: 8300%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <!-- start slider -->
    <div id="fwslider">
        <div class="slider_container">
            <asp:DataList ID="DataL_KM" runat="server">
                <ItemTemplate>
                    <div class="slide">
                        <asp:Image ID="Image" runat="server" ImageUrl='<%# Eval("HinhAnh", "~/images/{0}") %>' />
                        <div class="slide_content">
                            <div class="slide_content_wrap">
                                <a href="#">
                                    <h4 class="title">
                                        <asp:Label ID="tdd" runat="server" Text='<%# Eval("tieude") %>' /></h4>
                                </a>
                                <a href="#">
                                    <p class="description">
                                        <asp:Label ID="nd" runat="server" Text='<%# Eval("noidung") %>' /></p>
                                </a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
    </div>
    <%-- phần thân menu danh sách sản phẩm --%>
        <div class="cont span_2_of_3">
            <h2 class="head">Sản Phẩm Nổi Bật Nhất</h2>
            <asp:Literal ID="ltrSPmoi" runat="server"></asp:Literal>
            <div class="clear"></div>
            <h2 class="head">Điện Thoại</h2>
            <asp:Literal ID="ltrDanhSachSP" runat="server"></asp:Literal>
            <div class="clear"></div>
            <h2 class="head">Tablet</h2>
            <asp:Literal ID="ltrTablet" runat="server"></asp:Literal>
            <div class="clear"></div>
            <h2 class="head">Phụ Kiện</h2>
            <asp:Literal ID="ltrPhuKien" runat="server"></asp:Literal>

        </div>

    <div class="rsidebar span_1_of_left">
        <div class="top-border"></div>
        <div class="border">
            <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
            <link href="css/nivo-slider.css" rel="stylesheet" type="text/css" media="all" />
            <script src="js/jquery.nivo.slider.js"></script>
            <script type="text/javascript">
                $(window).load(function () {
                    $('#slider').nivoSlider();
                });
            </script>
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">
                    <img src="images/bannerdoc1.jpg" />
                    <img src="images/bannerdoc2.jpg" />
                    <img src="images/bannerdoc3.jpg" />
                </div>
            </div>
            <div class="btn"><a href="single.html">Nhấn Xem Thêm</a></div>
        </div>
    </div>
     <asp:Panel ID="ttkm" runat="server">
                         <div class="rsingle span_1_of_single">
                             <section class="sky-form">
                                 <h4>Hãng Điện Thoại</h4>
                                 <div class="col col-4">
                                     <label class="checkbox">
                                         <a href="SanPham.aspx?id=">
                                             <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/htc-LOGO.jpg" Height="22" Width="92" />
                                             HTC</a></label>
                                     <label class="checkbox">
                                         <a href="SanPham.aspx?id=">
                                             <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/nokia-logo.jpg" Height="22" Width="92" />NOKIA</a></label>
                                     <label class="checkbox">
                                         <a href="SanPham.aspx?id=">
                                             <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/samsung-logo.jpg" Height="22" Width="92" />
                                             SAMSUNG</a></label>
                                     <label class="checkbox"><a href="SanPham.aspx?id=">abcd</a></label>
                                 </div>
                             </section>
                             <section class="sky-form">
                                 <h4>Mức Giá</h4>
                                 <div class="col col-4">
                                     <label class="checkbox"><a href="SanPham.aspx?id=1">Từ 1-3 triệu.</a></label>
                                     <label class="checkbox"><a href="SanPham.aspx?id=2">Từ 3-7 triệu.</a></label>
                                     <label class="checkbox"><a href="SanPham.aspx?id=3">Từ 7-10 triệu.</a></label>
                                     <label class="checkbox"><a href="SanPham.aspx?id=4">Trên 10 Triệu</a></label>
                                 </div>

                             </section>
                             <section class="sky-form">
                                 <h4></h4>
                             </section>
                         </div>

                     </asp:Panel>

</asp:Content>
