<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="ThongTinSanPham.aspx.cs" Inherits="DT_QLBANDTDD.ThongTinSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="mens">
        <div class="main">
            <div class="wrap">
                <ul class="breadcrumb breadcrumb__t"><a class="home" href="Index.aspx">Home</a> / <a href="ThongTinSanPham.aspx">Sản Phẩm</a></ul>
                <div class="cont span_2_of_3">
                    <div class="grid images_3_of_2">
                        <ul id="etalage">
                            <asp:Literal ID="ltrhinhanh" runat="server"></asp:Literal>
                            
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="desc1 span_3_of_2">
                        <h3 class="m_3">
                            <asp:Label ID="lbten" runat="server" /></h3>
                        <p class="m_5">
                            <asp:Label ID="lbgia" runat="server" />
                        </p>
                        <h3 class="m_3">
                            <asp:Label ID="Lbtb" runat="server" ForeColor="#FF0066" />
                            <asp:Label ID="Label9" runat="server"></asp:Label>
                        </h3>
                        <div class="btn_form">
                            <asp:Button ID="btn_muahang" runat="server" Text="Mua Ngay" OnCommand="btn_muahang_Command" OnClick="btn_muahang_Click" />
                        </div>
                        <h3 class="m_3">
                            
                            <asp:Label ID="Label8" runat="server" Text="Thông Tin Chung:"></asp:Label></h3>
                        Màn Hình:
                        <asp:Label ID="lbmanhinh" runat="server" Text="Label"></asp:Label><br />
                        Ram/Rom:
                        <asp:Label ID="lbram" runat="server" Text="Label" />/<asp:Label ID="lbrom" runat="server" Text="Label"></asp:Label><br />
                        CPU:
                        <asp:Label ID="Lbcpu" runat="server" Text="Label"></asp:Label><br />
                        GPU:<asp:Label ID="Lbgpu" runat="server" Text="Label"></asp:Label><br />
                        Mạng Di Đông:<asp:Label ID="lbmangdd" runat="server" Text="Label"></asp:Label><br />
                        Wifi:<asp:Label ID="lbwifi" runat="server" Text="Label"></asp:Label><br />
                        Pin:<asp:Label ID="lbpin" runat="server" Text="Label"></asp:Label><br />
                        Trọng Lượng:
                        <asp:Label ID="Lbtrongluong" runat="server" Text="Label"></asp:Label><br />
                        Cam Trước/Sau:
                        <asp:Label ID="lbcamtruoc" runat="server" />/<asp:Label ID="lbcamsau" runat="server"></asp:Label><br />
                        Thời Gian Gia Mắt:
                        <asp:Label ID="Lbtgrm" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="clear"></div>
                    <div class="toogle">
                        <h3 class="m_3">Giới thiệu Chung</h3>
                        <p class="m_text">abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd abcd</p>
                    </div>
                    <div class="toogle">
                        <h3 class="m_3">Nhận Xét</h3>
                        <p class="m_text">abcd</p>
                    </div>
                </div>
            </div>
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
