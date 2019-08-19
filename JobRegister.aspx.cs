using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bai7
{
    public partial class JobRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void btnxoaform_Click(object sender, EventArgs e)
        {

        }

        protected void btnguihs_Click(object sender, EventArgs e)
        {
            Response.Redirect("JobRegister.aspx");
        }
    }
}