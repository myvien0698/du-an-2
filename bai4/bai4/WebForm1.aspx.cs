using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bai4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                if (CheckFileType(FileUpload1.FileName))
                {
                    FileUpload1.SaveAs(Server.MapPath("~") + FileUpload1.FileName);
                    lblMessage.Text = "Upload file thanh cong";
                }
                else
                    lblMessage.Text = "Upload file khong thanh cong";
            }
          
        }

        private bool CheckFileType(string fileName)
        {
            throw new NotImplementedException();
        }
    }
}