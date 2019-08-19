using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DT_QLBANDTDD.Data.SanPham;
using DT_QLBANDTDD.Common;

namespace DT_QLBANDTDD
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getbanner();
                loadSPMOI();
                loadDTList_AllSP();
                loadDTList_Tablet();
                loadDTList_PhuKien();

            }
        }
        public void loadSPMOI()
        {
            SanPhamController sp = new SanPhamController();
            DataTable dt = new DataTable();
            dt = sp.SanPham_GetBySPMoi();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                double g = double.Parse(dt.Rows[i]["Gia"].ToString());
                string a = g.ToString("###,###").Replace(',', '.');
                ltrSPmoi.Text += @"
            <div class='col_1_of_3 span_1_of_3'>
			  	 <a href ='ThongTinSanPham.aspx?idsp=" + dt.Rows[i]["IDSanPham"] + @"' >

                 <div class='inner_content clearfix'>
					<div class='product_image'>
						<img src = 'images/" + dt.Rows[i]["HinhAnh1"] + @"' alt=''/>
					</div>
                     <div class='sale-box'><span class='on_sale title_shop'>Mới</span></div>	
                    <div class='price'>
					   <div class='cart-left'>
							<p class='title'>" + dt.Rows[i]["TenSP"] + @"</p>
							<div class='price1'>
							  <span class='actual'>" + a + @" VND</span>
							</div>
						</div>
						<div class='cart-right'> </div>
						<div class='clear'></div>
					 </div>				
                   </div>
                   </a>
				</div>
            ";
            }
        }
        public void loadDTList_AllSP()
        {
            SanPhamController sp = new SanPhamController();
            DataTable dt = new DataTable();
            dt = sp.SanPham_GetByAllSP();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                double g = double.Parse(dt.Rows[i]["Gia"].ToString());
                string a = g.ToString("###,###").Replace(',', '.');
                ltrDanhSachSP.Text += @"
            <div class='col_1_of_3 span_1_of_3'>
                        <a href = 'ThongTinSanPham.aspx?idsp="+dt.Rows[i]["IDSanPham"]+@"' >
                             <div class='inner_content clearfix'>
                                <div class='product_image'>
                                    <img src = 'images/"+dt.Rows[i]["HinhAnh1"]+@"' alt=''/>
                                </div>
                                <div class='price'>
                                    <div class='cart-left'>
                                        <p class='title'>"+dt.Rows[i]["TenSP"]+@"</p>
                                        <div class='price1'>
                                            <span class='actual'>"+a+@" VND</span>
                                        </div>
                                    </div>
                                    <div class='cart-right'></div>
                                    <div class='clear'></div>
                                </div>
                            </div>
                        </a>
                    </div>
";
            }
        }
        public void loadDTList_Tablet()
        {
            SanPhamController sp = new SanPhamController();
            DataTable dt = new DataTable();
            dt = sp.SanPham_GetByTabLet();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                double g = double.Parse(dt.Rows[i]["Gia"].ToString());
                string a = g.ToString("###,###").Replace(',', '.');
                ltrTablet.Text += @"
            <div class='col_1_of_3 span_1_of_3'>
                        <a href = 'ThongTinSanPham.aspx?idsp=" + dt.Rows[i]["IDSanPham"] + @"' >
                             <div class='inner_content clearfix'>
                                <div class='product_image'>
                                    <img src = 'images/" + dt.Rows[i]["HinhAnh1"] + @"' alt=''/>
                                </div>
                                <div class='price'>
                                    <div class='cart-left'>
                                        <p class='title'>" + dt.Rows[i]["TenSP"] + @"</p>
                                        <div class='price1'>
                                            <span class='actual'>" + a + @"VND</span>
                                        </div>
                                    </div>
                                    <div class='cart-right'></div>
                                    <div class='clear'></div>
                                </div>
                            </div>
                        </a>
                    </div>
";
            }
        }
        public void loadDTList_PhuKien()
        {
            SanPhamController sp = new SanPhamController();
            DataTable dt = new DataTable();
            dt = sp.SanPham_GetByPhuKien();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                double g = double.Parse(dt.Rows[i]["Gia"].ToString());
                string a = g.ToString("###,###").Replace(',', '.');
                ltrPhuKien.Text += @"
            <div class='col_1_of_3 span_1_of_3'>
                        <a href = 'ThongTinSanPham.aspx?idsp=" + dt.Rows[i]["IDSanPham"] + @"' >
                             <div class='inner_content clearfix'>
                                <div class='product_image'>
                                    <img src = 'images/" + dt.Rows[i]["HinhAnh1"] + @"' alt=''/>
                                </div>
                                <div class='price'>
                                    <div class='cart-left'>
                                        <p class='title'>" + dt.Rows[i]["TenSP"] + @"</p>
                                        <div class='price1'>
                                            <span class='actual'>" + a + @" VND</span>
                                        </div>
                                    </div>
                                    <div class='cart-right'></div>
                                    <div class='clear'></div>
                                </div>
                            </div>
                        </a>
                    </div>
";
            }
        }
        public void getbanner()
        {
            Validate v = new Validate();
            DataTable dt = new DataTable();
            dt = v.KM_GetALL();
            DataL_KM.DataSource = dt;
            DataL_KM.DataBind();
        }

    }
}