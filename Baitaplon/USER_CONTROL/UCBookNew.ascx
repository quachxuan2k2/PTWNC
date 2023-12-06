<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCBookNew.ascx.cs" Inherits="Baitaplon.UCBookNew" %>
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/muitendo.gif" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Hienthi_Ctsach.aspx?Ms="+Eval("Ms") %>' Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="select top(5) Mcd, Ten_sach, Ngay_cap_nhat,Ms
from SACH 
order by 3 DEsc; "></asp:SqlDataSource>

