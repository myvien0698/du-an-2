using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bai4
{
    public partial class UploadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkUpload_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        protected void LinkXemUpload_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {

            try
            {
                string sFolderPath = Server.MapPath(@"\file");
                HttpPostedFile myFile = btnFile.PostedFile;
                string sFileName = myFile.FileName;
                myFile.SaveAs(string.Format(@"{0}\{1}", sFolderPath, sFileName));
                txtXemDS.Text += sFileName + "\n";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        private bool CheckFileType(string fileName)
        {
            string check = Path.GetExtension(fileName);
            switch (check.ToLower())
            {
                case ".doc":
                    return true;
                case ".docx":
                    return true;
                case ".jpg":
                    return true;
                default:
                    return false;
            }
        }

        private void GetAllFile(string path)
        {
            string[] filePath = Directory.GetFiles(path);
            foreach (string s in filePath)
            {
                txtXemDS.Text += s + "\n";
            }
        }
    }
}