<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giohangsach.aspx.cs" Inherits="Lab07.Giohangsach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 188px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color:yellow;"><CENTER>CHỌN MUA HÀNG</CENTER></div>
        </div>
        <table style="width:100%;">
            <tr>
                <td rowspan="5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Ms" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="Ten_sach" HeaderText="Tên sách" SortExpression="Ten_sach" />
                <asp:BoundField DataField="Don_gia" HeaderText="Đơn giá" SortExpression="Don_gia" DataFormatString="{0:#.##0}" />
                <asp:BoundField DataField="Mcd" HeaderText="Mã chủ đề" SortExpression="Mcd" />
                <asp:ImageField DataImageUrlField="Hinh_minh_hoa" DataImageUrlFormatString="~/Images/Images/Upload/{0}.jpg" HeaderText="Hình ảnh">
                </asp:ImageField>
                <asp:ButtonField ButtonType="Image" CommandName="Chonmua" HeaderText="Đặt mua" ImageUrl="~/Images/Images/nut_chonmua.gif" Text="Button" />
            </Columns>
            <EmptyDataTemplate>
                <center>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">Hình Minh Họa</td>
                        <td>Mã sách</td>
                        <td>Tên sách</td>
                        <td>Mã chủ đề</td>
                        <td>Đơn giá</td>
                        <td>Đặt mua</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/Images/Upload/"+Eval("Hinh_minh_hoa")+".jpg" %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ms") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Ten_sach") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mcd") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Don_gia") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Images/nut_chonmua.gif" />
                        </td>
                    </tr>
                </table>
                    </center>
            </EmptyDataTemplate>
        </asp:GridView>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Số lượng:"></asp:Label>
                    <asp:Label ID="lblSoluong" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Đơn giá:"></asp:Label>
                    <asp:Label ID="lblDongia" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT [Ten_sach], [Ms], [Don_gia], [Hinh_minh_hoa], [Mcd] FROM [SACH]"></asp:SqlDataSource>
    </form>
</body>
</html>
