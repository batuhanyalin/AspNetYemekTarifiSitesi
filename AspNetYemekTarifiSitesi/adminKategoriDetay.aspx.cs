using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetYemekTarifiSitesi
{
    public partial class adminKategoriDetay : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KATEGORIID"];
            try
            {
                if (Page.IsPostBack==false)
                {
                    SqlCommand cmd = new SqlCommand("SELECT * FROM TBLKATEGORI WHERE KATEGORIID=@P1", bgl.baglanti());
                    cmd.Parameters.AddWithValue("@P1", kategoriid);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        Label1.Text = dr[1].ToString();
                    }
                    bgl.baglanti().Close();
                    SqlCommand cmd2 = new SqlCommand("SELECT * FROM TBLKATEGORI WHERE KATEGORIID=@P2", bgl.baglanti());
                    cmd2.Parameters.AddWithValue("@P2", kategoriid);
                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    DataList1.DataSource = dr2;
                    DataList1.DataBind();
                }
            }
            catch (Exception)
            {
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE TBLKATEGORI SET KATEGORIAD=@P1,KATEGORIADET=@P2,KATEGORIRESIM=@P3 WHERE KATEGORIID=@P4", bgl.baglanti());
                cmd.Parameters.AddWithValue("@P4", kategoriid);
                cmd.Parameters.AddWithValue("@P1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@P2", TextBox2.Text);
                cmd.Parameters.AddWithValue("@P3", FileUpload1.FileName);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Kategori başarıyla güncellendi.");
            }
            catch (Exception)
            {

            }
           

        }
    }
}