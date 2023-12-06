<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dropdownlist.aspx.cs" Inherits="Lab04_.Dropdownlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DrlChude" runat="server" AutoPostBack="True" Height="27px" OnSelectedIndexChanged="DrlChude_SelectedIndexChanged" Width="254px">
            </asp:DropDownList>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Mcd" DataSourceID="SqlDataSource1" Width="219px">
            <Columns>
                <asp:BoundField DataField="Mcd" HeaderText="Mcd" InsertVisible="False" ReadOnly="True" SortExpression="Mcd" />
                <asp:BoundField DataField="Ten_chu_de" HeaderText="Ten_chu_de" SortExpression="Ten_chu_de" />
                <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\XUANDEBUG;Initial Catalog=QLBanSach;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [CHU_DE]"></asp:SqlDataSource>
    </form>
</body>
</html>
