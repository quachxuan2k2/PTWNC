<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thongke.aspx.cs" Inherits="Lab01.Thongke" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 458px;
        }
        .auto-style6 {
            width: 385px;
        }
        .auto-style7 {
            width: 385px;
            height: 23px;
        }
        .auto-style8 {
            width: 458px;
            height: 23px;
        }
        .auto-style9 {
            width: 37%;
            margin-left: 267px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style9" style = "background-color: antiquewhite" >
            <tr>
                <td class="auto-style7">
            <asp:Label ID="Label1" runat="server" Text="Số lượng truy cập:"></asp:Label>
                </td>
                <td class="auto-style8">
            <asp:Label ID="lblTruyCap" runat="server" ForeColor="Red">0</asp:Label>
                </td>
                <td rowspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
        <asp:Label ID="Label2" runat="server" Text="Số lượng Online:"></asp:Label>
                </td>
                <td class="auto-style8">
        <asp:Label ID="lblOnline" runat="server" ForeColor="Red">0</asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnSS" runat="server" OnClick="btnSS_Click" Text="Xóa session" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
