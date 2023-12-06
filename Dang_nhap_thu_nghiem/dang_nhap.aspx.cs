using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Dang_nhap_thu_nghiem
{
    public partial class dang_nhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangnhap_Click(object sender, EventArgs e)
        {
            if (txtHoten.Text == "Phetit" && txtMatkhau.Text == "123456")
            {
                Response.Redirect("./ trang_chu.aspx");
            }
            else
                lblThongbao.Text = "Sai mật khẩu";
        }
    }
}