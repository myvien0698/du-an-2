using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bai5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDSSP.Text = "";
            GetVlueCheckbox();
        }

        protected void chkTCTC_CheckedChanged(object sender, EventArgs e)
        {

        }
        private void GetVlueCheckbox()
        {
            int sl = 0;
            if (chkTCTC.Checked)
            {
                sl = sl + 1;
                txtDSSP.Text = chkTCTC.Text + "\n";
            }
            lblSL.Text = sl + "sản phẩm";
        }

        protected void btnReset(object sender, EventArgs e)
        {
            if(chkTCTC.Checked)
            {

            }
        }
    }
}