using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Lab02
{
    public partial class Hosodangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            lblTen.Text = "Họ tên khách hàng: "+ txtTen.Text;
            lblEmail.Text = "Email: "+ txtEmail.Text;
            lblGioitinh.Text = "Giới tính: " + Gioitinh();
            lblDiachi.Text = "Địa chỉ: "+ TextAreaDiachi.Value;
            lblDienthoai.Text = "Điện thoại: "+ txtDienthoai.Text;
            Response.End();
        }
        private string Gioitinh()
        {
            string gt = "";
            if (rdoNam.Checked == true)
            {
                gt = "Nam";
            }
            else if (rdoNu.Checked == true)
            {
                gt = "Nữ";
            }
            else if(rdoNu.Checked == false && rdoNam.Checked == false)
            {
                lblThongbao.Text = "Bạn chưa chọn giới tính. Chọn lại";
            }
            return gt;
        }
    }
}