<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="bai5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .btn-sm {
            width: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <table style="width: 100%;" border="1">
            <tr>
                <td colspan="3" style="background-color:#FFBF00; font-weight:bold" class="auto-style1">CHỌN CÁC SẢN PHẨM BẠN THÍCH</td>
            </tr>
            <tr >
                <td class="auto-style1">Danh sách sản phẩm</td>
                <td class="auto-style1">Số lượng</td>
                <td class="auto-style1">Sản phẩm được chọn</td>
            </tr>
            <tr >
                <td class="auto-style2">
                    <asp:CheckBox ID="chkTCTC" runat="server" Text="Kẹo trái cây thập cẩm" OnCheckedChanged="chkTCTC_CheckedChanged" /><br />
                    <asp:CheckBox ID="chkNho" runat="server" Text="Kẹo nho" /><br />
                    <asp:CheckBox ID="chkTao" runat="server" Text="Kẹo táo" /><br />
                    <asp:CheckBox ID="chkSTao" runat="server" Text="Sôcôla táo" /><br />
                    <asp:CheckBox ID="chkSDau" runat="server" Text="Kẹo sôcôla đậu phộng" /><br />
                    <asp:CheckBox ID="chkCSua" runat="server" Text="Kẹo coffe sữa" /><br />
                    <asp:CheckBox ID="chkSTC" runat="server" Text="Sôcôla thập cẩm có nhân" />
                    <asp:CheckBox ID="checkall" type="checkbox" runat="server" />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lblSL" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDSSP" runat="server" TextMode="MultiLine" Rows="6" Height="169px" Width="257px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" >
                    <asp:Button ID="btnReset" runat="server" Text="Bắt đầu chọn lại" OnClick="btnReset" style="height: 26px" />
                </td>

            </tr>
            <tr>
                <td colspan ="4"></td>
                <td class="text-center">
                    <input type="submit" class ="btn btn-danger btn-sm" value="Xóa" onclick="return confirm('Xác nhận xóa các sản phẩm được chọn?')"/>
                </td>
            </tr>
        </table>
    </form>
    @section Scripts{
    <script>
        $function() {
            $("checkall").change(function () {
                if ($(this).prop("checked") == true);
                {
                    $("input[name=dsxoa]").prop("checked" == true);
                }
                else
                {
                    $("input[name=dsxoa]").prop("checked" == false);
                }
            }
            );
        }
    </script>
    }
</body>
</html>
