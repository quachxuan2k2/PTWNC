<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCQuangcao_2.ascx.cs" Inherits="Baitaplon.USER_CONTROL.UCQuangcao_2" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="STT" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("HREF") %>'>
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/imgs/Upload/"+Eval("Hinh_Minh_Hoa") %>' />
        <br />
        </asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="  select * from QUANG_CAO
  where Ngay_het_han between '2021-12-10 00:00:00'  and '2022-05-10 00:00:00';"></asp:SqlDataSource>

