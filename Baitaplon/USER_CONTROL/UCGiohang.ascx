<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCGiohang.ascx.cs" Inherits="Baitaplon.Thongtin_giohang" %>


<style type="text/css">
    .auto-style1 {
        width: 258px;
    }
    .auto-style2 {
        width: 48px;
    }
</style>


<table class="auto-style1" style="width: 100%; height: 20px; border:1px dashed black; background-color:yellow;">
    <tr style="border:0.5px solid black;">
        <td class="auto-style2">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/Sotien.gif" />
        </td>
        <td >
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Gio_hang.aspx">Giỏ hàng:</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/imgs/Giohang.gif" />
        </td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Số tiền:"></asp:Label>
            <asp:Label ID="lblSotien" runat="server" Text=""></asp:Label>
        </td>
    </tr>
</table>

