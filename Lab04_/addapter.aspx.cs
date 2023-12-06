using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Lab04_
{
    public partial class addapter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // data addapter - Tạo nguồn dữ liệu data source
            string strConn = ConfigurationManager.ConnectionStrings["CONN"].ConnectionString;
            if (!String.IsNullOrEmpty(strConn))
            {
                SqlConnection Conn = new SqlConnection(strConn);
                Conn.Open();
                string sql = "select Mcd,Ten_chu_de from CHU_DE";
                SqlDataAdapter adpt = new SqlDataAdapter(sql,Conn);
                DataSet dsBanSach = new DataSet();
                DataTable Adt = dsBanSach.Tables.Add("Chu_De");
                adpt.Fill(Adt);
                // hiển thị 
                this.GridView1.DataSource = Adt;
                this.GridView1.DataBind();
            }
        }
    }
}