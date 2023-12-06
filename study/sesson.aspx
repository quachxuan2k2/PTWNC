<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sesson.aspx.cs" Inherits="study.sesson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập:"></asp:Label>
            <asp:TextBox ID="txtTenDangNhap" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Mật khẩu:"></asp:Label>
            <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
            <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng nhập" />
        </p>
    </form>
</body>
</html>
