using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bai7
{
    public partial class RegisteringComplete : System.Web.UI.Page
    {
        private object lblhoso;
   

        protected void Page_Load(object sender, EventArgs e)
        {
            {

                layDuLieu();
            }

           
        }
        public string layDuLieu()
        {
            string txthoten = ((TextBox)PreviousPage.FindControl("txthoten")).Text;
            string txtngaysinh = ((TextBox)PreviousPage.FindControl("txtngaysinh")).Text;
            string txtthanhpho = ((TextBox)PreviousPage.FindControl("txtthanhpho")).Text;
            string txtdiachi = ((TextBox)PreviousPage.FindControl("txtdiachi")).Text;
            string txtsdt = ((TextBox)PreviousPage.FindControl("txtsdt")).Text;
            string txtsdtdđ = ((TextBox)PreviousPage.FindControl("txtsdtdđ")).Text;
            string txtemail = ((TextBox)PreviousPage.FindControl("txtemail")).Text;
            string txttrinhdo = ((TextBox)PreviousPage.FindControl("txttrinhdo")).Text;
            string txthocvan = ((TextBox)PreviousPage.FindControl("txthocvan")).Text;
            string txtngoaingu = ((TextBox)PreviousPage.FindControl("txtngoaingu")).Text;
            string txtkynang = ((TextBox)PreviousPage.FindControl("txtkynang")).Text;
            string txtkinhnghiem = ((TextBox)PreviousPage.FindControl("txtkinhnghiem")).Text;
            string txtkn = ((TextBox)PreviousPage.FindControl("txtkn")).Text;
            string txtvieclam = ((TextBox)PreviousPage.FindControl("txtvieclam")).Text;
            string txtluong = ((TextBox)PreviousPage.FindControl("txtluong")).Text;
            string ddlgioitinh = ((DropDownList)PreviousPage.FindControl("ddlgioitinh")).SelectedValue;
            string ddltrinhdo = ((DropDownList)PreviousPage.FindControl("ddltrinhdo")).SelectedValue;
            string ddltinhtrang = ((DropDownList)PreviousPage.FindControl("ddltinhtrang")).SelectedValue;

            lblhoso.Text = "Họ & tên: " + txthoten + "</br>" +
                         "Ngày sinh: " + txtngaysinh + "</br>" +
                         "Giới tính: " + ddlgioitinh + "</br>" +
                         "Trình trạng hôn nhân: " + ddltinhtrang + "</br>" +
                         "Địa chỉ: " + txtdiachi + "</br>" +
                         "Tỉnh/Thành phố: " + txtthanhpho + "</br>" +
                         "Số điện thoại: " + txtsdt + "</br>" +
                         "Số điện thoại di động: " + txtsdtdđ + "</br>" +
                         "Email:  " + txtemail + "</br>" +
                         "Trình độ học vấn: " + txttrinhdo + "</br>" +
                         "Thông tin học vấn: " + txthocvan + "</br>" +
                         "Ngoại ngữ: " + txtngoaingu + "</br>" +
                         "Kỹ năng: " + txtkynang + "</br>" +
                         "Số năm kinh nghiệm: " + txtkinhnghiem + "</br>" +
                         "Kinh nghiệm làm việc: " + txtkn + "</br>" +
                         "Việc làm mong muốn: " + txtvieclam + "</br>" +
                         "Mức lương thỏa thuận: " + txtluong + " VNĐ" + "</br>";
        }
    }
}