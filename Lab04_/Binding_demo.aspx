<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Binding_demo.aspx.cs" Inherits="Lab04_.Binding_demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ten_chu_de" DataValueField="Mcd" Height="35px" Width="200px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CONN %>" SelectCommand="SELECT * FROM [CHU_DE]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
