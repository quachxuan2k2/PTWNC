<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataList_danhmucsach.aspx.cs" Inherits="Thi_giua_ky.DataList_danhmucsach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 211px;
        }
        .auto-style2 {
            width: 145px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center> 
            <asp:DataList ID="DataList1" runat="server" BorderColor="Blue" BorderWidth="2px" CellPadding="1" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="2" RepeatDirection="Horizontal" Width="834px">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td rowspan="3" class="auto-style1">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/Images/Upload/"+Eval("Hinh_minh_hoa")+".JPG" %>' Height="167px" Width="139px" />
                            </td>
                            <td colspan="2">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.fahasa.com/">Link sản phẩm</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Mo_ta") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Images/nut_chonmua.gif" />
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Don_gia") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT [Ten_sach], [Don_gia], [Mo_ta], [Hinh_minh_hoa] FROM [SACH]"></asp:SqlDataSource>
        </center></div>
    </form>
</body>
</html>
