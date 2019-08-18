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
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            height: 21px;
            width: 56px;
        }
        .auto-style6 {
            height: 23px;
            width: 56px;
        }
        .auto-style7 {
            height: 21px;
            width: 11px;
        }
        .auto-style8 {
            height: 23px;
            width: 11px;
        }
    </style>
    <form id="form2" runat="server">
        <div style="height: 531px">
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
                        <asp:TextBox ID="txthoten" runat="server" Width="497px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Text="Ngày tháng năm sinh:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtngaysinh" runat="server" TextMode="DateTime"></asp:TextBox>
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
            <table style="width:100%; height: 169px;">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label10" runat="server" Text="Địa chỉ:"></asp:Label>
                    </td>
                    <td class="auto-style4" colspan="2">
                        <asp:TextBox ID="txtdiachi" runat="server" Width="634px"></asp:TextBox>
                    </td>
                    <td class="auto-style4" colspan="3"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label11" runat="server" Text="Tỉnh/Thành phố:"></asp:Label>
                    </td>
                    <td class="auto-style1" colspan="2">
                        <asp:TextBox ID="txttinhthanh" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label12" runat="server" Text="Số điện thoại:"></asp:Label>
                    </td>
                    <td class="auto-style1" colspan="2">
                        <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label13" runat="server" Text="Số điện thoại di động:"></asp:Label>
                     </td>
                    <td class="auto-style1" colspan="2">
                        <asp:TextBox ID="txtsdtdđ" runat="server"></asp:TextBox>
                     </td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label runat="server" Text="Email:"></asp:Label>
                     </td>
                    <td class="auto-style1" colspan="2">
                        <asp:TextBox ID="txtemail" runat="server" Width="259px"></asp:TextBox>
                     </td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
            </table>
             <asp:Label ID="Label4" runat="server" ForeColor="White" style="text-align:left;background-color:#339933 ; Color:#3399FF;" Text="Trình độ học vấn" Width="100%"></asp:Label>
             <table style="width:100%; height: 169px;">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" ForeColor="#006600" Text="Trình độ học vấn:"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="2">
                        <asp:DropDownList ID="rdbtrinhdo" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                            <asp:ListItem Selected="True">9/12</asp:ListItem>
                            <asp:ListItem>12/12</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4" colspan="3"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label15" runat="server" Text="Thông tin về học vấn:" ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="auto-style8" colspan="2">
                        <asp:TextBox ID="txthocvan" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label16" runat="server" Text="Ngoại ngữ:" ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="auto-style8" colspan="2">
                        <asp:TextBox ID="txtngoaingu" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                    </td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label17" runat="server" Text="Kỹ năng:"></asp:Label>
                     </td>
                    <td class="auto-style8" colspan="2">
                        <asp:TextBox ID="txtkynang" runat="server"></asp:TextBox>
                     </td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style8" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
            </table>
            <asp:Label ID="Label30" runat="server" ForeColor="White" style="text-align:left;background-color:#339933 ; Color:#3399FF;" Text="Kinh nghiệm làm việc" Width="100%"></asp:Label>
             <table style="width:100%; height: 59px;">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label19" runat="server" Text="Số năm kinh nghiệm:" ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="auto-style4" colspan="2">
                        <asp:TextBox ID="txtkinhnghiem" runat="server" Width="136px"></asp:TextBox>
                    </td>
                    <td class="auto-style4" colspan="3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label20" runat="server" Text="Kinh nghiệm làm việc:" ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="auto-style1" colspan="2">
                        <asp:TextBox ID="txtkn" runat="server" Height="54px" Width="632px"></asp:TextBox>
                    </td>
                    <td class="auto-style1" colspan="2"></td>
                </tr>
                
            </table>
            <asp:Label ID="Label29" runat="server" ForeColor="White" style="text-align:left;background-color:#339933 ; Color:#3399FF;" Text="Mong muốn của bản thân" Width="100%"></asp:Label>
             <table style="width:100%; height: 169px;">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label24" runat="server" Text="Việc làm mong muốn:" ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="auto-style4" colspan="2">
                        <asp:TextBox ID="txtvieclam" runat="server" Width="634px" Height="52px"></asp:TextBox>
                    </td>
                    <td class="auto-style4" colspan="3"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label25" runat="server" Text="Mức lương thỏa thuận:" ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="auto-style1" colspan="2">
                        <asp:TextBox ID="txtluong" runat="server"></asp:TextBox>
                        <asp:Label ID="Label31" runat="server" Text="VND" ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="auto-style1" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style1" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Gửi hồ sơ" />
                        <asp:Button ID="Button2" runat="server" Text="Xóa Form" />
                    </td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style1" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style1" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style1" colspan="3"></td>
                </tr>
            </table>
        </div>
    </form>
    

</html>
