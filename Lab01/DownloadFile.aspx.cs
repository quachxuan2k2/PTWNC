using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DownLoad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgbtn_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["tenDN"].ToString() != "")
            {

                string tep = "Rose.rar";
                string path;
                path = Server.MapPath("~/") + tep;
                Response.AddHeader("Content-Disposition", "attachment; filename =" + path);
                Response.WriteFile(path);
                Response.End();
            }
            else
            {
                Response.Redirect("~/DangNhap.aspx?preUrl=~/DownloadFile.aspx");
            }
        }
    }
}