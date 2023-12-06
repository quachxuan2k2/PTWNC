<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownloadFile.aspx.cs" Inherits="Lab01.DownLoad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="lbl1" runat="server" Text="Hoa Hồng xanh"></asp:Label>
                    <a href="Rose.rar" tag="download">Click để tải</a>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nhấp vào đây để tải "></asp:Label>
                    <asp:ImageButton ID="imgbtn" runat="server" BorderColor="#00CC00" Height="30px" ImageUrl="~/file/butterfly.jpg"  Width="30px" OnClick="imgbtn_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
        </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Rose.rar">click để tải</asp:HyperLink>
    </form>
</body>
</html>
