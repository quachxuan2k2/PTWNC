using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab02
{
    public partial class Thongtincanhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            lblThongtin.Text = "Thông tin về bạn:";
            lblTen.Text = "Họ và tên:" + txtHoten.Text; 
            lblGioitinh.Text = "Giới tính: " + gioitinh();
            lblNgoaingu.Text = "Ngoại ngữ: " + ngoaingu();
            lblThunhap.Text = "Mức thu nhập: " + thunhap();
            lblTrinhdo.Text = "Trình độ: " + rdolTrinhdo.SelectedItem.Text;
        }
        private string gioitinh()
        {
            string gt="";
            if(rdoNam.Checked == true)
            {
                gt = "Nam";
            }
            else if(rdoNu.Checked == true)
            {
                gt = "Nữ";
            }
            return gt;
        }
        private string ngoaingu()
        {
            string nn = " ";
            if (chkPhapvan.Checked == true && chkAnhvan.Checked == true)
            {
                nn = "Anh văn, Pháp văn";
            }
            else if(chkAnhvan.Checked == true)
            {
                nn = "Anh văn";
            }
            else if(chkPhapvan.Checked == true)
            {
                nn = "Pháp văn";
            }
            else
            {
                nn = "";
            }
           
            return nn;
        }
        private string thunhap()
        {
            string thunhap=" ";
            if (rdoThunhapA.Checked == true)
            {
                thunhap = "Dưới 1 triệu";
            }
            else if (rdoThunhapB.Checked == true)
            {
                thunhap = "1-3 triệu";
            }
            else if (rdoThunhapC.Checked == true)
            {
                thunhap = "Trên 3 triệu";
            }
            else if (rdoThunhapC.Checked == false && rdoThunhapB.Checked == false && rdoThunhapA.Checked == false)
            {
                thunhap = " ";
            }
            return thunhap;
        }
       
    }
}