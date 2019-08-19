using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DT_QLBANDTDD.Data.NguoiDung;

namespace DT_QLBANDTDD
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            NguoiDungController kt = new NguoiDungController();
            string ad = txt_user.Text;
            NguoiDungInfo info = kt.Check_Login(txt_user.Text, txt_pass.Text);
            if (info != null)
            {
                if (info.Quyen)
                {
                    Session["TenDangNhap"] = info.TenDangNhap;
                    Response.Redirect("~/Admin/ADIndex.aspx");
                }
                else
                    Session["TenDangNhap"] = info.TenDangNhap;
                Session["Email"] = info.Email;
                Session["HoTen"] = info.HoTen;
                Session["SDT"] = info.SDT;
                Session["DiaChi"] = info.DiaChi;
                Session["quyen"] = info.Quyen;
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                tb.Text = "Sai Tên Hoặc Mật Khẩu!";
            }
        }
        
    }
}