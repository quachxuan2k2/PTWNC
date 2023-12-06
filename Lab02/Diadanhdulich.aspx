<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Diadanhdulich.aspx.cs" Inherits="Lab02.Diadanhdulich" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style7 {
            width: 42%;
            height: 276px;
            margin-left: 392px;
        }
        .auto-style8 {
            height: 26px;
            width: 366px;
        }
        .auto-style9 {
            height: 115px;
            width: 366px;
        }
        .auto-style10 {
            height: 23px;
            width: 366px;
        }
        .auto-style19 {
            height: 32px;
            width: 377px;
        }
        .auto-style20 {
            height: 32px;
            width: 205px;
        }
        .auto-style23 {
            height: 32px;
            width: 67px;
        }
        .auto-style24 {
            height: 32px;
            width: 133px;
        }
        .auto-style28 {
            width: 377px;
        }
        .auto-style29 {
            height: 26px;
            width: 377px;
        }
        .auto-style30 {
            height: 23px;
            width: 377px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style7" style="background-color:aqua; border:2px solid blue;">
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style8" colspan="3">
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Địa danh du lịch "></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Label ID="Label2" runat="server" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Địa danh du lịch:</asp:Label>
                </td>
                <td class="auto-style9" colspan="3" rowspan="2">
                    <asp:ListBox ID="lstDiadanh" runat="server" Height="69px" OnSelectedIndexChanged="lstDiadanh_SelectedIndexChanged" SelectionMode="Multiple" Width="188px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30">
                    <asp:Label ID="Label3" runat="server" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tổng số địa danh:</asp:Label>
                </td>
                <td class="auto-style10" colspan="3">
                    <asp:Label ID="lblSoDD" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style10" colspan="3">
                    <asp:Button ID="btnChon" runat="server" OnClick="btnChon_Click" TabIndex="1" Text="Chọn" Width="66px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="lblDiadanh" runat="server"></asp:Label>
                </td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
