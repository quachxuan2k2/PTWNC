<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCDang_nhap.ascx.cs" Inherits="Baitaplon.USER_CONTROL.Dang_nhap" %>
<style type="text/css">
    .auto-style1 {
        height: 23px;
    }
    .auto-style2 {
        width: 81px;
    }
    .auto-style3 {
        width: 1px;
    }
</style>
<center>
<br /><br />
<table style="width:100%; height:90px; background-color:green;">
    <tr>
        
        <td class="auto-style1" colspan="2" style=" text-align:right;color:white;">
            <br /><br /><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Họ tên:"></asp:Label>
        </td>
        <td class="auto-style1" colspan="2">
            <asp:TextBox ID="txtHoten" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style=" text-align:right;color:white;">
            <asp:Label ID="Label2" runat="server" Text="Mật khẩu:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtMatkhau" runat="server" Width="219px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">

            &nbsp;</td>
        <td>
            <br />
           <asp:Button ID="btnDangnhap" runat="server" Text="Đăng nhập" OnClick="btnDangnhap_Click" />
            <asp:Label ID="lblThongbao" runat="server"></asp:Label>
            <br />
        </td>
        <td></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">

            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">

            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">

            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    </center>

