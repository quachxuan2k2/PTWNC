<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCDanh_muc.ascx.cs" Inherits="Baitaplon.USER_CONTROL.UCDanh_muc" %>
<style type="text/css">
    .auto-style1 {
        height: 23px;
    }
</style>

<asp:DataList ID="DataList1" runat="server" DataSourceID="Danh_muc" RepeatColumns="2">
    <ItemTemplate>
        <table style="width:100%;">
            <tr>
                <td rowspan="3">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/imgs/Upload/"+Eval("Hinh_minh_hoa")+".JPG" %>' />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Hienthi_Ctsach.aspx?Ms="+Eval("Ms") %>' Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDongia" runat="server" Text='<%# Eval("Don_gia") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Gio_hang.aspx?Ms="+Eval("Ms") %>'>
                       <p style="color:orange;"> Đi tới giỏ hàng </p>
                    </asp:HyperLink>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="Danh_muc" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT [Ms], [Ten_sach], [Don_gia], [Mo_ta], [Hinh_minh_hoa] FROM [SACH]
where SACH.Mcd = @Mcd">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="9" Name="Mcd" QueryStringField="Mcd" />
    </SelectParameters>
</asp:SqlDataSource>

