using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Baitaplon.USER_CONTROL
{
    public partial class UCDang_ky : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            Dangky();
        }
        private void Dangky()
        {
            string hoten = txtHoten.Text;
            string diachi = txtDiachi.Text;
            string sodienthoai = txtSodt.Text;
            string email = txtEmail.Text;
            string mk = txtMatkhau.Text;
            string tendangnhap = txtTendangnhap.Text;
            if (hoten == "" || diachi == "" || sodienthoai == "" || email == "" || mk == "" || tendangnhap == "")
            {
                lblThongbao.Text = "Bạn không được để trống!";
            }
            else
            {
                string strSQL = "insert into KHACH_HANG(Ho_ten,Dia_chi,Dien_thoai,Ten_dang_nhap,Mat_khau,Email)" + "values (N'" + hoten + "',N'" + diachi + "',N'" + sodienthoai + "',N'" + tendangnhap + "',N'" + mk + "',N'" + email + "')";
                string strconn = @"Data Source=.\XUANDEBUG;Initial Catalog=QLBanSach;Integrated Security=True";
                using (SqlConnection conn = new SqlConnection(strconn))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(strSQL, conn);
                    cmd.ExecuteScalar();
                }
                lblThongbao.Text = "Đăng ký thành công!";
            }
        }
    }
}