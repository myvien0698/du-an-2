using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DT_QLBANDTDD.Common;
using DT_QLBANDTDD.Data.SanPham;
using DT_QLBANDTDD.Data.GioHang;
using System.Data.SqlClient;
using DT_QLBANDTDD.Data;

namespace DT_QLBANDTDD
{
    public partial class ThongTinSanPham : System.Web.UI.Page
    {
        GioHangController gh;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Validate dt = new Validate();
                string sql = "SELECT * FROM dbo.tbSANPHAM WHERE IDSanPham='"+ Request.QueryString.Get("idsp") + "'";
                dt.dr = dt.getData(sql);
                if (dt.dr.Read())
                {
                    lbten.Text = dt.dr["TenSP"].ToString();
                    double gia = Double.Parse(dt.dr["Gia"].ToString());
                    lbmanhinh.Text = dt.dr["ManHinh"].ToString() + " inh";
                    lbram.Text = dt.dr["Ram"].ToString();
                    lbrom.Text = dt.dr["BoNhoTrong"].ToString() + " GB";
                    Lbcpu.Text = dt.dr["CPU"].ToString();
                    Lbgpu.Text = dt.dr["GPU"].ToString();
                    lbmangdd.Text = dt.dr["MangDiDong"].ToString() + " g";
                    lbwifi.Text = dt.dr["Wifi"].ToString();
                    lbpin.Text = dt.dr["Pin"].ToString() + " mah";
                    Lbtrongluong.Text = dt.dr["TrongLuong"].ToString() + " g";
                    lbcamtruoc.Text = dt.dr["Gia"].ToString();
                    lbcamsau.Text = dt.dr["Gia"].ToString();
                    Lbtgrm.Text = dt.dr["TGRaMat"].ToString();
                    Session["SoLuongBB"] = dt.dr["SoLuong"].ToString();
                    Session["sl"] = dt.dr["SoLuong"].ToString();
                    lbgia.Text = gia.ToString("###,###").Replace(',', '.') + " Đ";
                    if (Convert.ToDouble(dt.dr["SoLuong"]) <= 0)
                    {
                        Lbtb.Text = "Sản Phẩm Tạm Thời Hết Hàng";
                        btn_muahang.Visible = false;
                    }

                }
                dt.dr.Close();
                loadIngSP();
            }
        }
        public void loadIngSP()
        {
            if (Request.QueryString["idsp"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            else {
                string id = Request.QueryString["idsp"].ToString();
                SanPhamController sp = new SanPhamController();
                DataTable dt = new DataTable();
                    dt=sp.SanPham_GetByID(id);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ltrhinhanh.Text += @"
                           <li>
								<img class='etalage_thumb_image' src='images/"+dt.Rows[i]["HinhAnh1"]+ @"'  />
                                    <img class='etalage_source_image' src='images/" + dt.Rows[i]["HinhAnh1"] + @"' />
							</li>
                            <li>
								<img class='etalage_thumb_image' src='images/" + dt.Rows[i]["HinhAnh2"] + @"'  />
                                    <img class='etalage_source_image' src='images/" + dt.Rows[i]["HinhAnh2"] + @"' title='' />
							</li>";
                }
            }
        }

     

        protected void btn_muahang_Click(object sender, EventArgs e)
        {
            string idgio = "";
            int slg = 0;
            string ngaylap= System.DateTime.Now.Day.ToString() + "/" + System.DateTime.Now.Month.ToString() + "/" + System.DateTime.Now.Year.ToString();
            //int idg = 4;
            gh = new GioHangController();
            DataTable tb;
            if (Session["GioHang"] == null)
            {
                tb = gh.SetTable();
                idgio = DateTime.Now.Day.ToString() + "" + System.DateTime.Now.Month.ToString() + "" + System.DateTime.Now.Year.ToString()+ "" + DateTime.Now.Hour.ToString()+""+DateTime.Now.Minute.ToString()+ ""+ DateTime.Now.Second.ToString();
            }
            else

            {
                tb = (DataTable)Session["GioHang"];
                foreach (DataRow gr in tb.Rows)
                {
                    idgio = gr["idgio"].ToString();
                    slg = int.Parse(gr["SoLuong"].ToString());
                }

            }
            //
            int idsp = int.Parse(Request.QueryString.Get("idsp"));
            bool kt = gh.Check_SPTrongGio(idsp, idgio);
            if (kt)
            {
                int sl = int.Parse(Session["sl"].ToString());
                Validate va = new Validate();
                string sql1 = "SELECT SUM(SoLuong) AS Tong FROM dbo.GioHang WHERE IDSanPham=" + idsp + " AND IDGioHang='" + idgio + "'";
                va.dr = va.getData(sql1);
                if (va.dr.Read())
                {
                    int soLuong = int.Parse(va.dr["Tong"].ToString());
                    if ((sl - soLuong) <= 0)
                    {
                        Lbtb.Text = "<script>alert('Bạn đã thêm sản phẩm tối đa.!')</script>";
                        va.dr.Close();
                    }
                    else
                    {
                        va.dr.Close();
                        string sql = "SELECT * FROM dbo.tbSANPHAM WHERE IDSanPham='" + Request.QueryString.Get("idsp") + "'";
                        SqlDataAdapter da = new SqlDataAdapter(sql, SqlDataConnect.connet);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        foreach (DataRow dr in dt.Rows)
                        {
                            tb = gh.dienVaoBang(tb, dr["HinhAnh1"].ToString(), dr["TenSP"].ToString(), 1, Convert.ToDouble(dr["Gia"]), Convert.ToInt16(dr["IDSanPham"]), Convert.ToInt16(dr["SoLuong"]), idgio.ToString());
                            gh.GioHang_UpDateSl(slg + 1, idsp, idgio);
                            Session["GioHang"] = tb;
                            Response.Redirect("GioHang.aspx");
                        }
                    }
                }
            }
            else
            {
                string sql = "SELECT * FROM dbo.tbSANPHAM WHERE IDSanPham='" + Request.QueryString.Get("idsp") + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, SqlDataConnect.connet);
                DataTable dt = new DataTable();
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    tb = gh.dienVaoBang(tb, dr["HinhAnh1"].ToString(), dr["TenSP"].ToString(), 1, Convert.ToDouble(dr["Gia"]), Convert.ToInt16(dr["IDSanPham"]), Convert.ToInt16(dr["SoLuong"]), idgio.ToString());
                    Session["GioHang"] = tb;
                    GioHangInfo info = new GioHangInfo
                    {
                        IDDonHang = idgio,
                        IDDienThoai = int.Parse(dr["IDSanPham"].ToString()),
                        SoLuongMua = 1,
                        Gia = int.Parse(dr["Gia"].ToString()),
                        NgayLap = ngaylap
                    };
                    GioHangController giohang = new GioHangController();
                    giohang.GioHang_Insert(info);
                    Response.Redirect("GioHang.aspx");
                }
                
            }
           
        }

        protected void btn_muahang_Command(object sender, CommandEventArgs e)
        {
        }
    }
}