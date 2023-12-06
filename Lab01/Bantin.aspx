<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bantin.aspx.cs" Inherits="Lab01.Bantin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ban_tin</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
<style>
    i{
        color:gold;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Bản tin cuối ngày <br />
                <i class="fa-sharp fa-solid fa-star"></i> Microsoft vừa công bố vá lỗi cho windowns 7

        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0066" NavigateUrl="~/Chitietbantin.aspx?MaBT=&quot;Tin01&quot;">Xem chi tiết</asp:HyperLink>

        </div>
    </form>
</body>
</html>
