using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KTRAGKY
{
    public partial class DANGKY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            lblthongbao.Text = string.Format("Bạn{0} đã đăng ký thành công!", txthoten.Text);
        }
       
        
    }
    Response.Redirect("luuthongtinDK.aspx");
}