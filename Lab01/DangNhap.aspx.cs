using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "Phetit" && txtPass.Text == "123456")
            {
                Session["TenDN"] = txtName.Text;
                string url = Request.QueryString["preUrl"];
                if(url == null)
                {
                    Response.Redirect("./DownloadFile.aspx");
                    //Response.Redirect("./ChaoMung.aspx?Name=" + txtName.Text);
                }
                Response.Redirect(url);
            }
            else
                Lbl3.Text = "Sai mật khẩu";
        }
    }
}