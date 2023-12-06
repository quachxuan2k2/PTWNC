<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCGiohangsach.ascx.cs" Inherits="Baitaplon.USER_CONTROL.UCGiohangsach" %>

<center>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Ms" DataSourceID="giohangsach" Height="266px" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="386px">
    <Columns>
        <asp:BoundField DataField="Ms" HeaderText="Mã sách" InsertVisible="False" ReadOnly="True" SortExpression="Ms" />
        <asp:ImageField DataImageUrlField="Hinh_minh_hoa" DataImageUrlFormatString="~/imgs/Upload/{0}.jpg" HeaderText="Hình minh họa">
        </asp:ImageField>
        <asp:BoundField DataField="Mcd" HeaderText="Mã chủ đề" SortExpression="Mcd" />
        <asp:BoundField DataField="Don_gia" DataFormatString="{0:#.##0}" HeaderText="Đơn giá" SortExpression="Don_gia" />
        <asp:ButtonField ButtonType="Image" HeaderText="Chọn  mua" ImageUrl="~/imgs/nut_chonmua.gif" CommandName="Chonmua" />
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
           <div style="position:absolute; top:170px; right:190px;">
            <asp:Label ID="lblSoluong" runat="server" Text=""></asp:Label>
            </div>
            <div style="position:absolute; top:210px; right:190px;">
            <asp:Label ID="lblDongia" runat="server" Text=""></asp:Label>
            </div>
    </center>
<asp:SqlDataSource ID="giohangsach" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT   [Ms],[Hinh_minh_hoa],[Ten_sach], [Mcd], [Don_gia] FROM [SACH]
where SACH.Ms=@Ms">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="14" Name="Ms" QueryStringField="Ms" />
    </SelectParameters>
</asp:SqlDataSource>

   <center> <asp:Button ID="btnCapnhat" runat="server" Text="Cập nhật đơn hàng" OnClick="btnCapnhat_Click" />
       <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
</center>



