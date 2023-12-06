<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Docbao.aspx.cs" Inherits="Lab02.Docbao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 239px;
            height: 100px;
        }
        .auto-style2 {
            height: 100px;
        }
        .auto-style3 {
            height: 23px;
        }
        .txt {
            text-align: left;
            
            background-color:lightseagreen;
            font-size: inherit;
        }
        a{
            text-decoration:none;
            color:white;
        }
        a:hover{
            color:green;
        }
        table{
            border:1px solid lightseagreen;
        }
        .flex{
            display:flex;
        }
        .wtxt{
            width:50%;
        }
        .Himg{
            width:50%;
            left:5px;
            top:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <center>
            <table style="width:50%; height: 300px;">
                <tr style="background-color:white;" class="flex">
                    <td class="auto-style1 wtxt" style="text-align:left; color:lightseagreen; font-size:inherit">
                       &nbsp;&nbsp;&nbsp; Lợi ích của đọc báo: <br />
                        <ul >
                            <li> Mở rộng kiến thức</li>
                            <li>Cập nhật thông tin</li>
                            <li>Rèn luyện trí nhớ</li>
                            <li>Giải trí ít tốn kém</li>
                            <li>...</li>
                        </ul>
                    </td>
                    <td class="auto-style2 Himg"> <img style=" width:250px; height: 160px " src ="img/sach.jpg" /></td>
                </tr>
                <tr>
                    <td colspan="2" class="txt">&nbsp; <a href="https://tuoitre.vn/">Tuổi trẻ</a></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3 txt"><a href="https://vnexpress.net/">&nbsp;Tin nhanh</a></td>
                </tr>
                <tr>
                    <td colspan="2" class="txt">&nbsp;<a href="https://thanhnien.vn/">Thanh niên</a>  </td>
                </tr>
                <tr>
                    <td colspan="2" class="txt">&nbsp;<a href="https://nld.com.vn/">Người lao động</a></td>
                </tr>
            </table>
            </center>
        </div>
    </form>
</body>
</html>
