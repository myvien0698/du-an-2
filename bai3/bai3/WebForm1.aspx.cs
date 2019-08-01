using System;
using System.IO;
using System.Text.RegularExpressions;

namespace bai3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // hiển thị các entry comment trước
            ReadComment();
            
        }

        protected void btnGuiND_Click(object sender, EventArgs e)
        {
            string sfile = Server.MapPath(@"\") + "data.txt";
            //mở file nếu khác rỗng thì thêm
            using (StreamWriter writer = new StreamWriter(sfile, true))
            {
                //thêm các entry cmt mới
                writer.WriteLine(txttieude.Text);
                writer.WriteLine(txthoten.Text);
                writer.WriteLine(txtemail.Text);
                writer.WriteLine(txtnoidung.Text);
                //thêm ký hiệu nhận dạng kết thúc 1 entry để lọc ra từng entry

                writer.WriteLine("#END");
                writer.Close();
            }

        }

        protected void btncmt_Click(object sender, EventArgs e)
        {

        }



        private void ReadComment()
        {
            //hàm đọc các comment trong file và đưa vào bảng trên wed
            string sfile = Server.MapPath(@"\") + "data.txt";
            // mở file, nếu khác rỗng thì bắt đầu đọcad
            using (StreamReader reader = new StreamReader(sfile))
                
            {
                // đọc toàn bộ file
                string snoidung = reader.ReadToEnd(); 
                string[] delimiter = { "#END" };
                // lọc ra từng entry và đưa vào mảng chuổi
                string[] sArr = snoidung.Split(delimiter, StringSplitOptions.RemoveEmptyEntries);
                // duyệt qua từng entry
                foreach(string s in sArr)
                {
                    string stemp;
                    // thay thế ký tự " xuống dòng và đầu dòng" bằng tab break
                    stemp = Regex.Replace(s, @"\r\n", @"</br>");
                    // tạo ra các dòng hiển thị entry
                    string entry = string.Format("<tr><td colspan=\"2\">{0}</td></tr>", stemp);
                    EntryComment.InnerHtml  += 1;
                }
            }
        }

      
    }
}