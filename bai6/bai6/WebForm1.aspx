<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="bai6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Họ tên"></asp:Label>
        
            <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="rfvHoten" runat="server" ControlToValidate="txtHoten" ErrorMessage="Nhập họ tên"></asp:RequiredFieldValidator>
&nbsp;<br />
            <asp:Label ID="Label2" runat="server" Text="Cơ quan"></asp:Label>
            <asp:TextBox ID="txtCoquan" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCoquan" runat="server" ErrorMessage="Nhập cơ quan" ControlToValidate="txtCoquan"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Nhập địa chỉ email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mật khẩu "></asp:Label>
            <asp:TextBox ID="txtMatkhau" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ControlToValidate="txtMatkhau" ErrorMessage="Nhập mật khẩu"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
            <asp:TextBox ID="txtNLmatkhau" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNLmatkhau" runat="server" ControlToValidate="txtNLmatkhau" ErrorMessage="Nhập mật khẩu lần 2"></asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="cmvMatkhau" runat="server" ControlToCompare="txtMatkhau" ControlToValidate="txtNLmatkhau" ErrorMessage="Mật khẩu không khớp "></asp:CompareValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Ngày Check in"></asp:Label>
            <asp:TextBox ID="txtCheckin" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cmvNgaycheckin" runat="server" ErrorMessage="Nhập ngày checkin" ControlToValidate="txtNLmatkhau" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Số ngày ở"></asp:Label>
            <asp:TextBox ID="txtSongayo" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cmvSongay" runat="server" ErrorMessage="Nhập con số ngày" ControlToValidate="txtSongayo" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Loại phòng"></asp:Label>
            <asp:DropDownList ID="cbxLoaiphong" runat="server">
                <asp:ListItem>Phòng đơn</asp:ListItem>
                <asp:ListItem>Phòng đôi</asp:ListItem>
                <asp:ListItem>Phòng VIP đơn</asp:ListItem>
                <asp:ListItem>Phòng VIP đôi</asp:ListItem>
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblThongbao" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
