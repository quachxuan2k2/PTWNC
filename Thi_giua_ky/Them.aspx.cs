using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;

namespace Thi_giua_ky
{
    public partial class Them : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            cach2();
        }
        
        private void cach1() 
        {
            //lấy dữ liệu từ web
            string tenchude = txtThem.Text;
            string strSql = "insert into CHU_DE(Ten_chu_de) values(N'"+tenchude+ "')";
            string strconn = @"Data Source=.\XUANDEBUG;Initial Catalog=QLBanSach;Integrated Security=True";
            using(SqlConnection conn = new SqlConnection(strconn))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(strSql, conn);
                cmd.ExecuteScalar();
            }

        }
        private void cach2()
        {
            //lấy dữ liệu từ web
            string tenchude = txtThem.Text;
            // viết câu lệnh truy vấn
            string strSql = "insert into CHU_DE(Ten_chu_de,Mcd) values(@Ten_chu_de,@Mcd)";
            // kết nối sql
            string strconn = @"Data Source=.\XUANDEBUG;Initial Catalog=QLBanSach;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(strconn))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(strSql, conn); // tạo đối tượng command và chạy
                cmd.Parameters.Add("@Ten_chu_de", SqlDbType.NVarChar);
                cmd.Parameters["@Ten_chu_de"].Value = tenchude;
                
                cmd.ExecuteScalar();
            }
        }
    }
}