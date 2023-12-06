<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hosodangky.aspx.cs" Inherits="Lab02.Hosodangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .label{
            text-align:left;
        }
               
        .border{
            border: 2px solid violet;

        }
        .borderright{
            border-right: 2px solid violet;
        }
        .auto-style10 {
            
            width: 220px;
        }
        .auto-style12 {
            width: 66%;
        }
        .auto-style17 {
            
            width: 187px;
        }
        .auto-style18 {
            
            width: 187px;
            height: 44px;
        }
        
        .auto-style19 {
            
            height: 46px;
        }
        .auto-style20 {
            
            width: 220px;
            height: 46px;
        }
        .auto-style22 {
            
            width: 187px;
            height: 30px;
        }
        .auto-style23 {
            
            width: 220px;
            height: 30px;
        }
        .borderbottom{
            border-bottom: 2px solid violet;
        }
        
        .auto-style24 {
            width: 152px;
        }
        .auto-style25 {
            width: 152px;
            height: 30px;
        }
        .auto-style26 {
            width: 152px;
            height: 44px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <table class="auto-style12 border">
                <tr>
                    <td colspan="3" class="auto-style1 borderbottom">&nbsp; <center><label >Hồ sơ đăng ký</label></center></td>
                    
                </tr>
                
                <tr>
                    <td class="auto-style19 borderright borderbottom" colspan="2"> &nbsp;<center>Thông tin cá nhân</center></td> 
                    <td class="auto-style20 borderbottom">&nbsp;<center>Hồ sơ khách hàng</center></td>
                </tr>
                <tr>
                    <td class="auto-style24"> &nbsp;<label class="label">Họ tên khách hàng:</label> </td> 
                    <td class="auto-style17 borderright"> 
                        <asp:TextBox ID="txtTen" runat="server" Width="173px"></asp:TextBox>
                    </td> 
                    <td class="auto-style10">
                        <asp:Label ID="lblTen" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;<label class="label">Email:</label> </td>
                    <td class="auto-style22 borderright"> 
                        <asp:TextBox ID="txtEmail" runat="server" Width="177px" TabIndex="1"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;<label class="label">Giới tính:</label>
                        </td>
                    <td class="auto-style17 borderright">
                        <asp:RadioButton ID="rdoNam"  groupname="gt" runat ="server" Text="Nam" TabIndex="2" />
                        <asp:RadioButton ID="rdoNu" groupname="gt" runat="server" Text="Nữ" TabIndex="3" />
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="lblGioitinh" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;<label class="label">Địa chỉ:</label></td>
                    <td class="auto-style18 borderright">
                        <textarea id="TextAreaDiachi" runat="server" cols="20" name="S1" rows="2"></textarea></td>
                    <td class="auto-style10">
                        <asp:Label ID="lblDiachi" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;<label class="label">Điện thoại:</label> </td>
                    <td class="auto-style17 borderright">  
                        <asp:TextBox ID="txtDienthoai" runat="server" Width="177px" TabIndex="5"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="lblDienthoai" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;<center></center></td>
                    <td class="auto-style17 borderright">
                        <asp:Button ID="btnDangky" runat="server" OnClick="btnDangky_Click" Text="Đăng ký" />
                        </td>
                    <td class="auto-style10">&nbsp;<asp:Label ID="lblThongbao" runat="server"></asp:Label></td>
                </tr>
            </table>
                </center>
        </div>
    </form>
</body>
</html>
