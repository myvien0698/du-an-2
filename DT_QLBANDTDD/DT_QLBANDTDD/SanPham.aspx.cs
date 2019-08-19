using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DT_QLBANDTDD.Common;
using DT_QLBANDTDD.Data.SanPham;

namespace DT_QLBANDTDD
{
    public partial class SanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                khong.Visible = false;
                getbanner();
                LoadDTByGia();
            }
        }
        public void LoadDTByGia()
        {
            int tu;
            int den;
            SanPhamController dt = new SanPhamController();
            DataTable d = new DataTable();
            string id = Request.QueryString["id"].ToString();
            switch (id)
            {
                case "1":
                    {
                        tu = 1000000;
                        den = 3000000;
                        d = dt.SanPham_GetByGia(tu, den);   
                        if (d.Rows.Count == 0)
                        {
                            khong.Visible = true;
                            
                        }else
                            for (int i = 0; i < d.Rows.Count; i++)
                            {
                                double g = double.Parse(d.Rows[i]["Gia"].ToString());
                                string a = g.ToString("###,###").Replace(',', '.');

                                ltrSP.Text += @"
                             <div class='col_1_of_3 span_1_of_3'>
                                <a href = 'ThongTinSanPham.aspx?idsp=" + d.Rows[i]["IDSanPham"] + @"' >
                                <div class='inner_content clearfix'>
                                 <div class='product_image'>
                                    <img src = 'images/" + d.Rows[i]["HinhAnh1"] + @"' alt=''/>
                                    </div>
                                    <div class='price'>
                                        <div class='cart-left'>
                                            <p class='title'>" + d.Rows[i]["TenSP"] + @"</p>
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
                        break;
                    }
                case "2":
                    {
                        tu = 3000000;
                        den = 7000000;
                        d = dt.SanPham_GetByGia(tu, den);          
                        if (d.Rows.Count == 0)
                        {
                            khong.Visible = true;
                            
                        }else
                            for (int i = 0; i < d.Rows.Count; i++)
                            {
                                ltrSP.Text += @"
                             <div class='col_1_of_3 span_1_of_3'>
                                <a href = 'ThongTinSanPham.aspx?idsp=" + d.Rows[i]["IDSanPham"] + @"' >
                                <div class='inner_content clearfix'>
                                 <div class='product_image'>
                                    <img src = 'images/" + d.Rows[i]["HinhAnh1"] + @"' alt=''/>
                                    </div>
                                    <div class='price'>
                                        <div class='cart-left'>
                                            <p class='title'>" + d.Rows[i]["TenSP"] + @"</p>
                                            <div class='price1'>
                                                <span class='actual'>" + d.Rows[i]["Gia"] + @"</span>
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
                        break;

                    }
                case "3":
                    {
                        tu = 7000000;
                        den = 10000000;
                        d = dt.SanPham_GetByGia(tu, den);
                        if (d.Rows.Count == 0)
                        {
                            khong.Visible = true;
                           
                        }else
                            for (int i = 0; i < d.Rows.Count; i++)
                            {
                                ltrSP.Text += @"
                             <div class='col_1_of_3 span_1_of_3'>
                                <a href = 'ThongTinSanPham.aspx?idsp=" + d.Rows[i]["IDSanPham"] + @"' >
                                <div class='inner_content clearfix'>
                                 <div class='product_image'>
                                    <img src = 'images/" + d.Rows[i]["HinhAnh1"] + @"' alt=''/>
                                    </div>
                                    <div class='price'>
                                        <div class='cart-left'>
                                            <p class='title'>" + d.Rows[i]["TenSP"] + @"</p>
                                            <div class='price1'>
                                                <span class='actual'>" + d.Rows[i]["Gia"] + @"</span>
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
                        break;

                    }
                case "4":
                    {
                        tu = 10000000;
                        den = 100000000;
                        d = dt.SanPham_GetByGia(tu, den);
                       
                        if (d.Rows.Count == 0)
                        {
                            khong.Visible = true;
                            
                        }else
                            for (int i = 0; i < d.Rows.Count; i++)
                            {
                                ltrSP.Text += @"
                             <div class='col_1_of_3 span_1_of_3'>
                                <a href = 'ThongTinSanPham.aspx?idsp=" + d.Rows[i]["IDSanPham"] + @"' >
                                <div class='inner_content clearfix'>
                                 <div class='product_image'>
                                    <img src = 'images/" + d.Rows[i]["HinhAnh1"] + @"' alt=''/>
                                    </div>
                                    <div class='price'>
                                        <div class='cart-left'>
                                            <p class='title'>" + d.Rows[i]["TenSP"] + @"</p>
                                            <div class='price1'>
                                                <span class='actual'>" + d.Rows[i]["Gia"] + @"</span>
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
                        break;
                    }
                default:
                    {
                            string i = Request.QueryString["id"].ToString();
                            d = dt.SanPham_GetBySreach(i);                          
                            if (d.Rows.Count == 0)
                            {
                                Label2.Text = "Không tìn thấy điện thoại";
                            }else
                                for (int j = 0; j < d.Rows.Count; j++)
                                {
                                    ltrSP.Text += @"
                             <div class='col_1_of_3 span_1_of_3'>
                                <a href = 'ThongTinSanPham.aspx?idsp=" + d.Rows[j]["IDSanPham"] + @"' >
                                <div class='inner_content clearfix'>
                                 <div class='product_image'>
                                    <img src = 'images/" + d.Rows[j]["HinhAnh1"] + @"' alt=''/>
                                    </div>
                                    <div class='price'>
                                        <div class='cart-left'>
                                            <p class='title'>" + d.Rows[j]["TenSP"] + @"</p>
                                            <div class='price1'>
                                                <span class='actual'>" + d.Rows[j]["Gia"] + @"</span>
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
                     
                        break;




                    }
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