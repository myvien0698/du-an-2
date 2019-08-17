 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobRegister.aspx.cs" Inherits="bai7.JobRegister" %>

<!DOCTYPE html>

    <title></title>
    <style type="text/css">

        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
    <form id="form2" runat="server">
        <div style="height: 630px">
            <asp:Label ID="Label2" runat="server" style="text-align:center;Font-size:30px;Color:#006600" Text="Đăng ký thông tin việc làm" Width="100%"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="White" Height="23px" style="text-align:left;background-color:#339933 ; Color:#3399FF;" Text="Thông tin cá nhân" Width="100%"></asp:Label>
            <br />
            <table style="width:100%; height: 140px;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" style="text-align:right;" Text="Họ và tên:"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txthoten" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Text="Ngày tháng năm sinh:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Giới tính:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True">Nam</asp:ListItem>
                            <asp:ListItem>Nữ </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Tình trạng hôn nhân"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Selected="True">Độc thân</asp:ListItem>
                            <asp:ListItem>Đã lập gia đình</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label9" runat="server" ForeColor="White" style="text-align:left;background-color:#339933 ; Color:#3399FF;" Text="Thông tin liên lạc" Width="100%"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
