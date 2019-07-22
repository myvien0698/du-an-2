<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
       
        <div>
         
            
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            <br />
            <input id="txtemail" type="text" runat="server"></input>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <br />
            <input id="txtpass" type="password" runat="server"></input>
            <br />
            
            <div id="divInfo" runat="server"/>
                <input id="btnlogin" type="submit" value="sign in now!" runat="server" onserverclick="Button1_Click" />
            
            
        </div>
      
    </form>
</body>
</html>
