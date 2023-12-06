<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qc.aspx.cs" Inherits="Quang_cao_thu_nghiem.qc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        
        &nbsp;<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("HREF") %>'>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/Images/Upload/"+Eval("Hinh_Minh_Hoa") %>' />
                </asp:HyperLink>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="  select * from QUANG_CAO
  where Ngay_het_han between '2021-12-10 00:00:00'  and '2022-05-10 00:00:00';"></asp:SqlDataSource>
    </form>
</body>
</html>
