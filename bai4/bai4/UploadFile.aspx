<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="bai4.UploadFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        div.contain{
             text-align:center;
             width: 650px;
             height: 150px;
             background-color:#8A0886; 
             margin-left:auto;
             margin-right:auto;
        }

        div.Multiview{
            background-color:white;
            width:640px;
            height:110px;
            margin-top:20px;
            margin-left:auto;
            margin-right:auto;
            padding:0;
        }
        .text{
            width:630px;
            background-color:#EEE;
            margin-top:20px;
            border-color:#4a3f3f;
        }
        .link{
            font-weight:bold;
            color:white;
            margin-left:20px;
            text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contain">
            <asp:LinkButton class="link" ID="LinkUpload" runat="server" OnClick="LinkUpload_Click">Upload tập tin</asp:LinkButton>
            <asp:LinkButton class="link" ID="LinkXemUpload" runat="server" OnClick="LinkXemUpload_Click">Xem các tập tin được Upload</asp:LinkButton>
            <div class="Multiview">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="ViewUpload" runat="server">
                        <asp:FileUpload class="text" ID="btnFile" runat="server" /><br />
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                    </asp:View>
                    <asp:View ID="ViewXemUpload" runat="server">
                        <asp:TextBox class="text" ID="txtXemDS" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </form>
</body>
</html>
