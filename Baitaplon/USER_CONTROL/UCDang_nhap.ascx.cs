using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Baitaplon.USER_CONTROL
{
    public partial class Dang_nhap : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangnhap_Click(object sender, EventArgs e)
        {
            string tendangnhap = txtHoten.Text;
            string mk = txtMatkhau.Text;
            string strCon = @"Data Source=.\XUANDEBUG;Initial Catalog=QLBanSach;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strCon);
            string dangnhap = "select Ten_dang_nhap, Mat_khau from KHACH_HANG";
            SqlCommand cmd = new SqlCommand(dangnhap, conn);
            conn.Open();
            SqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                if(tendangnhap == read[0].ToString() && mk == read[1].ToString())
                {
                    lblThongbao.Text = "Đăng nhập thành công!";
                }
                else
                {
                    lblThongbao.Text = "Sai tên đăng nhập hoặc mật khẩu";
                }
            }
        }
    }
}