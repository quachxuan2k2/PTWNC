<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thongtincanhan.aspx.cs" Inherits="Lab02.Thongtincanhan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 158px;
        }
        .auto-style3 {
            height: 25px;
            width: 538px;
        }
        .auto-style4 {
            width: 54%;
            height: 245px;
            margin-left: 2px;
        }
        td{
            border: 1px solid blue;
        }
        .txt{
            text-align:right;
        }
        .auto-style5 {
            width: 538px;
            
        }
        .auto-style6 {
            width: 158px;
            height: 27px;
        }
        .auto-style7 {
            width: 538px;
            height: 27px;
        }
        .button{
            font-size: 20px;
            color: darkblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <center>
            <table class="auto-style4" style="border: 2px solid blue;">
            <tr>
                <td colspan="2">&nbsp;<center><asp:Label ID="Label1" runat="server" Font-Size="15" ForeColor="#3333CC" Text="Thông tin cá nhân"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label  ID ="Label2" runat="server" Text="Họ và tên:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Giới tính:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:RadioButton ID="rdoNam"  GroupName="gioitinh" runat="server" Text="Nam" />
                    <asp:RadioButton ID="rdoNu"   GroupName="gioitinh" runat="server" Text="Nữ" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Ngoại ngữ:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:CheckBox ID="chkAnhvan" runat="server" Text="Anh văn" />
                    <asp:CheckBox ID="chkPhapvan" runat="server" Text="Pháp văn" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Thu nhập:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:RadioButton ID="rdoThunhapA" GroupName="thunhap" runat="server" Text="Dưới 1 triệu" />
                    <asp:RadioButton ID="rdoThunhapB"  GroupName="thunhap" runat="server" Text="1-3 triệu" />
                    <asp:RadioButton ID="rdoThunhapC" GroupName="thunhap" runat="server" Text="Trên 3 triệu" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                   <center> <asp:Label ID="Label6" runat="server" Text="Trình độ:"></asp:Label> </center>
                </td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="rdolTrinhdo" runat="server" CellPadding="2" CellSpacing="2" RepeatDirection="Horizontal">
                        <asp:ListItem>Sau đại học</asp:ListItem>
                        <asp:ListItem>Đại học</asp:ListItem>
                        <asp:ListItem>Cao đẳng</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style5">
                   <center> <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" ForeColor="#333399" Width="178px" OnClick="btnDangky_Click" /> </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style5">
                    
                        
                    <asp:Label ID="lblThongtin" runat="server"></asp:Label>
                    <br />
                        <ul>
                        <li id="liten">
                    <asp:Label ID="lblTen" runat="server"></asp:Label> <br />
                         </li>
                         <li id="ligioitinh">
                    <asp:Label ID="lblGioitinh" runat="server"></asp:Label>
                    <br />
                        </li>
                        <li id="linn">
                    <asp:Label ID="lblNgoaingu" runat="server"></asp:Label>
                    <br />
                        </li>
                        <li id="lithunhap">
                    <asp:Label ID="lblThunhap" runat="server"></asp:Label>
                    <br />
                        </li>
                        <li id="litrinhdo">
                    <asp:Label ID="lblTrinhdo" runat="server"></asp:Label>
                    <br />
                     <br />
                         </li>
                    
                     </ul>
                </td>
            </tr>
        </table>
            </center>
    </form>
</body>
</html>
