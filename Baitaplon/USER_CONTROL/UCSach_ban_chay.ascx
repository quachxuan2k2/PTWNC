<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCSach_ban_chay.ascx.cs" Inherits="Baitaplon.Sach_ban_chay" %>
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/muitendo.gif" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Hienthi_Ctsach.aspx?Ms="+Eval("Ms") %>' Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="select top(5)  CT_DAT_HANG.Ms ,SACH.Ten_sach, So_luong
from CT_DAT_HANG inner join SACH on CT_DAT_HANG.Ms = SACH.Ms
order by So_luong desc;"></asp:SqlDataSource>

