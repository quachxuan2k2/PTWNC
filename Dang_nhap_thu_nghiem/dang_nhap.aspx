<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dang_nhap.aspx.cs" Inherits="Dang_nhap_thu_nghiem.dang_nhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 264px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <table style="width:70%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Họ tên"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                    </td>
                    <td rowspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Mật khẩu"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtMatkhau" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btnDangnhap" runat="server" Text="Đăng nhập" OnClick="btnDangnhap_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
                </center>
        </div>
    </form>
</body>
</html>
