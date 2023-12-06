using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace study
{
    public partial class ExcuteReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strconn = @"Data Source=.\XUANDEBUG;Initial Catalog=QLBanSach;Integrated Security=True";
            string str = "<center><table style = 'width:50%; border: 1px solid blue'>"
             + "<tr><td style = 'border: 1px solid blue'> Mã chủ đề</td><td style='border: 1px solid blue'>Tên chủ đề</td></tr>";
            Response.Write(str);

            SqlConnection con = new SqlConnection(strconn);
            string strSQL = "select Mcd, Ten_chu_de from CHU_DE";
            SqlCommand cmd = new SqlCommand(strSQL, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Response.Write("<tr> <td style='border: 1px solid blue'>" + reader[0] + "</td> <td style='border: 1px solid blue'>" + reader[1] + "</td></tr>");
            }
            Response.Write("</table> </center>");
        }
    }
}