using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Lab04_
{
    public partial class Dropdownlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string strconn = @"Data Source=.\XUANDEBUG;Initial Catalog=QLBanSach;Integrated Security=True";
                string strconn = ConfigurationManager.ConnectionStrings["CONN"].ConnectionString; // dùng web.config

                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                string strSQL = "select Mcd, Ten_chu_de from CHU_DE";
                SqlCommand cmd = new SqlCommand(strSQL, con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    DrlChude.Items.Add(new ListItem(reader[1].ToString(), reader[0].ToString()));
                }
            }
            else
            {
                Response.Write("Bạn đã chọn mã chủ để: "+DrlChude.SelectedValue.ToString());
            }
        }
        protected void DrlChude_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}