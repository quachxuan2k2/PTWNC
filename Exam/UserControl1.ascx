<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl1.ascx.cs" Inherits="Exam.UserControl1" %>
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ten_chu_de") %>'></asp:Label>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT [Ten_chu_de] FROM [CHU_DE]"></asp:SqlDataSource>

