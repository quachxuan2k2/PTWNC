<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCChu_de.ascx.cs" Inherits="Baitaplon.Chu_de" %>
<asp:DataList ID="DataList1" runat="server" DataSourceID="Chude">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/icon_list.jpg" />
        <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl='<%# "~/Danh_muc_sach.aspx?Mcd="+Eval("Mcd") %>' Text='<%# Eval("Ten_chu_de") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="Chude" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT [Ten_chu_de], [Mcd] FROM [CHU_DE]"></asp:SqlDataSource>

