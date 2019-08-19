<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="DT_QLBANDTDD.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
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
                                        <asp:Label ID="nd" runat="server" Text='<%# Eval("noidung") %>' />
                                    </p>
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
        <div class="cont span_2_of_3">
            <h2 class="head">Sản Phẩm </h2>
            <asp:Panel ID="khong" runat="server" Height="769"  Width="100%">
                <asp:Label ID="lbtb" runat="server" Text="Không Có Sản Phẩm Trong Tầm Giá Này"></asp:Label>
            </asp:Panel>
            <asp:Label ID="Label2" runat="server" Text="" Height="768"></asp:Label>
            <asp:Literal ID="ltrSP" runat="server"></asp:Literal>
            <div class="clear"></div>
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
                <div class="btn"><a href="#">Nhấn Xem Thêm</a></div>
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
