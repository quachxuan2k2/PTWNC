using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Baitaplon.USER_CONTROL
{
    public partial class UCGiohangsach : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Trigia"] = 0;
                ViewState["Soluong"] = 0;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Chonmua")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                double dongia = double.Parse(GridView1.Rows[chiso].Cells[3].Text);
                ViewState["Soluong"] = int.Parse(ViewState["Soluong"].ToString()) + 1;
                ViewState["Trigia"] = int.Parse(ViewState["Trigia"].ToString()) + dongia;
                lblDongia.Text = ViewState["Trigia"].ToString();
                lblSoluong.Text = ViewState["Soluong"].ToString();
            }
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            lblThongbao.Text = " Cập nhật thành công!";
        }
        
    }
}