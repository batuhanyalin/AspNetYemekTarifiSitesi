using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AspNetYemekTarifiSitesi
{
    public partial class adminHakkimizda : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            if (Page.IsPostBack==false)
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM TBLHAKKIMIZDA", bgl.baglanti());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                bgl.baglanti().Close();

            }               
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE TBLHAKKIMIZDA SET HAKKIMIZDA=@P1",bgl.baglanti());
            cmd.Parameters.AddWithValue("@P1",TextBox1.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Hakkımızda metni başarıyla güncellendi.");
        }
    }
}