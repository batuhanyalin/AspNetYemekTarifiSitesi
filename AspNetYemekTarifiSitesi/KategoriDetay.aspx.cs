using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNetYemekTarifiSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                kategoriid = Request.QueryString["KATEGORIID"];
                SqlCommand cmd= new SqlCommand("SELECT * FROM TBLKATEGORI WHERE KATEGORIID=@P1",bgl.baglanti());
                cmd.Parameters.AddWithValue("@P1",kategoriid);
                SqlDataReader dr=cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label1.Text = dr[1].ToString();
                }
                bgl.baglanti().Close();
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM TBLYEMEK WHERE KATEGORI=@P2",bgl.baglanti());
                cmd2.Parameters.AddWithValue("@P2",kategoriid);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DataList1.DataSource=dr2;
                DataList1.DataBind();
            }
            catch (Exception)
            {
            }
        }
    }
}