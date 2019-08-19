<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DT_QLBANDTDD.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <div class="mens">
        <div class="main">
            <div class="wrap">
                <ul class="breadcrumb breadcrumb__t"><a class="home" href="Home.aspx">Home</a> /</ul>
                <div class="cont span_2_of_3">
                    <div class="bo">
                        <h4>Đăng Nhập</h4>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_user" runat="server" required=""></asp:TextBox>
                            <label>Tài Khoản</label><br />
                        </div>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_pass" runat="server" required="" TextMode="Password"></asp:TextBox>
                            <label>Mật Khẩu:</label>
                        </div>
                        <asp:Label ID="tb" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="LoGin" />

                        <div class="link">
                            <a href="#" class="last">Quên Mật Khẩu</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
