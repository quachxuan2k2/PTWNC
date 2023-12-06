using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace study
{
    public partial class sesson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if(txtTenDangNhap.Text == "Xuan" && txtMatKhau.Text == "123")
            {
                Session["TenDangNhap"] = txtTenDangNhap.Text;
                Response.Redirect("Chaomung.aspx");
            }
        }
    }
}