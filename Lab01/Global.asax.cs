using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Lab01
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["LuotTruyCap"] = 1000000;
            Application["LuotOnline"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["TenDN"] = "";
            Application["LuotTruyCap"] = int.Parse(Application["LuotTruyCap"].ToString()) + 1;
            Application["LuotOnline"] = int.Parse(Application["LuotOnline"].ToString()) + 1;

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["LuotOnline"] = int.Parse(Application["LuotOnline"].ToString()) - 1;

        }
        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}