using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab02
{
    public partial class Diadanhdulich : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] Diadanh = new string[6] { "Vịnh Hạ Long", "Phan Thiết-Mũi Né", "Nha Trang", "Đà Lạt", "Đà Nẵng", "Bình Thuận" };
            foreach(string i in Diadanh)
            {
                lstDiadanh.Items.Add(i);
            }
            lblSoDD.Text = Diadanh.Length.ToString();
        }

        protected void lstDiadanh_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnChon_Click(object sender, EventArgs e)
        {
            int count = lstDiadanh.Items.Count;
            lblSoDD.Text = count.ToString();

            lblDiadanh.Text += lstDiadanh.SelectedItem.ToString() + Environment.NewLine ;
            
        }
    }
}