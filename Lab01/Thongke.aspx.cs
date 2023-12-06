using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Thongke : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblOnline.Text = Application["LuotOnline"].ToString();
            this.lblTruyCap.Text = Application["LuotTruyCap"].ToString();
            
        }

        protected void btnSS_Click(object sender, EventArgs e)
        {
            Session.Abandon(); 
            Response.End();
        }
    }
}