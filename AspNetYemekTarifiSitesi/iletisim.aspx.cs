using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetYemekTarifiSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        sqlsinif bgl = new sqlsinif();
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO TBLMESAJ (MESAJADSOYAD,MESAJMAIL,MESAJBASLIK,MESAJ) VALUES (@P1,@P2,@P3,@P4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@P1",txtadsoyad.Text);
            cmd.Parameters.AddWithValue("@P2", txtmail.Text);
            cmd.Parameters.AddWithValue("@P3", txtbaslik.Text);
            cmd.Parameters.AddWithValue("@P4", txtmesaj.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Mesajınız başarıyla gönderildi.");

        }
    }
}