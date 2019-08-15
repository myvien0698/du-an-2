<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DANGKY.aspx.cs" Inherits="KTRAGKY.DANGKY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
         <p>
             <asp:Label ID="Label10" runat="server" Text="Họ và tên"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="txthoten" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ControlToValidate="txthoten" ErrorMessage="Nhập họ tên"></asp:RequiredFieldValidator>
         </p>
         <p>
             <asp:Label ID="Label6" runat="server" Text="Địa chỉ email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvdiachimail" runat="server" ControlToValidate="txtdiachi" ErrorMessage="Nhập địa chỉ email"></asp:RequiredFieldValidator>
         </p>
         <p>
             <asp:Label ID="Label1" runat="server" Text="Tài khoản"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="txttaikhoan" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvtentk" runat="server" ControlToValidate="txttaikhoan" ErrorMessage="Nhập tên tài khoản"></asp:RequiredFieldValidator>
         </p>
         <p>
             <asp:Label ID="Label3" runat="server" Text="Mật khẩu"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
             <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvmatkhau" runat="server" ControlToValidate="txtnhaplaimk" ErrorMessage="Nhập mật khẩu"></asp:RequiredFieldValidator>
         </p>
         <p>
&nbsp;<asp:Label ID="Label9" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtnhaplaimk" runat="server" TextMode="Password"></asp:TextBox>
             &nbsp;<asp:RequiredFieldValidator ID="rfvnhaplaimk" runat="server" ControlToValidate="txtnhaplaimk" ErrorMessage="Nhập lại mật khẩu "></asp:RequiredFieldValidator>
             &nbsp;&nbsp;</p>
         <p style="margin-left: 200px">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaimk" ErrorMessage="Mật khẩu không khớp" Type="Integer"></asp:CompareValidator>
         </p>
         <p style="margin-left: 120px">
             <asp:Button ID="btndangky" runat="server" style="height: 26px" Text="ĐĂNG KÝ" OnClick="btndangky_Click" />
         </p>
         <p style="margin-left: 120px">
             <asp:Label ID="lblthongbao" runat="server"></asp:Label>
         </p>
         <p style="margin-left: 120px">
             &nbsp;</p>
         
     </form>
     </body>
</html>

