<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCChitiet_sach.ascx.cs" Inherits="Baitaplon.USER_CONTROL.UCChitiet_sach" %>
<style type="text/css">
    .auto-style1 {
        width: 159px;
    }
    .auto-style2 {
        width: 100%;
    }
</style>
<asp:DataList ID="DataList1" runat="server" DataSourceID="Chi_tiet_sach">
    <ItemTemplate>
        <table style="width:100%;">
            <tr>
                <td rowspan="3" class="auto-style1">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/imgs/Upload/"+Eval("Hinh_minh_hoa")+".JPG" %>' Height="170px" Width="140px" />
                </td>
                <td colspan="2">
                  <b> <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ten_sach") %>'></asp:Label> </b> 
                </td>
            </tr>
            <tr>
                <td colspan="2">
                   <p style="text-align:justify;"> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Mo_ta") %>'></asp:Label></p>
                </td>
            </tr>
            <tr>
                <td>
                  <b style="color:darkblue">  <asp:Label ID="Label3" runat="server" Text='<%# Eval("Don_gia") %>'></asp:Label> </b>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Gio_hang.aspx?Ms"+Eval("Ms") %>'>
                        <p style="color:orange;"> Đi tới giỏ hàng </p>
                    </asp:HyperLink>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="Chi_tiet_sach" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="select THAM_GIA.Ms, SACH.Mo_ta, SACH.Don_gia, SACH.Hinh_minh_hoa, SACH.Ten_sach,TAC_GIA.Ten_tac_gia
from THAM_GIA INNER JOIN SACH ON SACH.Ms = THAM_GIA.Ms inner join TAC_GIA on TAC_GIA.Mtg = THAM_GIA.Mtg
where SACH.Ms=@Ms ;
">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="5" Name="Ms" QueryStringField="Ms" />
    </SelectParameters>
</asp:SqlDataSource>

