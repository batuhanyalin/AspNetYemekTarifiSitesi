using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AspNetYemekTarifiSitesi
{
    public partial class adminYorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yorumid = "";
        string yorumdurum = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumid = Request.QueryString["YORUMID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("EXECUTE adminYorumDetay @DEGER=@P1 ", bgl.baglanti());
                cmd.Parameters.AddWithValue("@P1", yorumid);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[5].ToString();
                    lbltarih.Text = dr[3].ToString();
                    lblyemek.Text = dr[6].ToString();
                    yorumdurum = dr[4].ToString();
                }
                bgl.baglanti().Close();
                if (yorumdurum == "False")
                {
                    CheckBox2.Checked = true;
                    CheckBox1.Checked = false;
                }
                if (yorumdurum == "True")
                {
                    CheckBox1.Checked = true;
                    CheckBox2.Checked = false;
                }
            }

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                CheckBox2.Checked = false;
                yorumdurum = "True";
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked == true)
            {
                CheckBox1.Checked = false;
                yorumdurum = "False";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE TBLYORUM SET YORUMADSOYAD=@P1,YORUMMAIL=@P2,YORUM=@P3,YORUMONAY=@P4 WHERE YORUMID=@P5", bgl.baglanti());
            cmd.Parameters.AddWithValue("@P1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@P2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@P3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@P4", yorumdurum);
            cmd.Parameters.AddWithValue("@P5", yorumid);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yorum başarıyla güncellendi.");
        }
    }
}