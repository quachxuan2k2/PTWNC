using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace study
{
    public partial class Chaomung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Session["TenDangNhap"].ToString();
            Response.Write("Chúc mừng &nbsp;&nbsp;" + s + "&nbsp;&nbsp;đã đăng nhập thành công!");
        }
    }
}