<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCDang_ky.ascx.cs" Inherits="Baitaplon.USER_CONTROL.UCDang_ky" %>
<style type="text/css">
    .auto-style1 {
        width: 170px;
    }
    .auto-style2 {
        width: 80px;
    }
    .auto-style3 {
        width: 100%;
        height: 330px;
    }
</style>
<br />
<table style="background-color:green;" class="auto-style3">
    <tr>
        <td colspan="3" style="text-align:right;color:white;">
            <asp:Label ID="Label1" runat="server" Text="Họ tên:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3"style="text-align:right;color:white;">
            <asp:Label ID="Label2" runat="server" Text="Địa chỉ:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3"style="text-align:right; color:white;">
            <asp:Label ID="Label3" runat="server" Text="Số điện thoại:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtSodt" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align:right;color:white;">
            <asp:Label ID="Label4" runat="server" Text="Tên đăng nhập:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtTendangnhap" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3"style="text-align:right;color:white;">
            <asp:Label ID="Label5" runat="server" Text="Mật khẩu:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtMatkhau" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3"style="text-align:right;color:white;">
            <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" />
        </td>
        <td style="color:white;">
            <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

