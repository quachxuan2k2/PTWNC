<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Them.aspx.cs" Inherits="Thi_giua_ky.Them" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtThem" runat="server" Width="201px"></asp:TextBox>
            <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" style="height: 26px" Text="Thêm" Width="64px" />
        </div>
        <asp:TextBox ID="txtMcd" runat="server"></asp:TextBox>
    </form>
</body>
</html>
