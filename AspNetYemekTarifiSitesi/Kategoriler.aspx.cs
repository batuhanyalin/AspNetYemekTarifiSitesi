using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AspNetYemekTarifiSitesi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string kategoriid = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                kategoriid = Request.QueryString["KATEGORIID"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLKATEGORI", bgl.baglanti());
            SqlDataReader dr=cmd.ExecuteReader();
            DataList1.DataSource=dr;
            DataList1.DataBind();
            Panel2.Visible = false;

            //Silme İşlemi
            if (islem == "sil")
            {
                SqlCommand cmd2 = new SqlCommand("DELETE FROM TBLKATEGORI WHERE KATEGORIID=@P1",bgl.baglanti());
                cmd2.Parameters.AddWithValue("@P1",kategoriid);
                cmd2.ExecuteNonQuery();
                Response.Write("Kategori başarıyla silindi.");
            }
        }
      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO TBLKATEGORI (KATEGORIAD,KATEGORIRESIM) VALUES (@P1,@P2)", bgl.baglanti());
                    cmd.Parameters.AddWithValue("@P1", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@P2", FileUpload1.FileName);
                    cmd.ExecuteNonQuery();
                    bgl.baglanti().Close();
                    Response.Write("Kategori başarıyla eklendi.");
                }
                catch (Exception)
                {

                }
            }
          
         
        }

    }
}