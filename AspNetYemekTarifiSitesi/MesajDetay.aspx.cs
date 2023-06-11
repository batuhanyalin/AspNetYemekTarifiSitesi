using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AspNetYemekTarifiSitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        string mesajid = "";
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            mesajid = Request.QueryString["MESAJID"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLMESAJ WHERE MESAJID=@P1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@P1", mesajid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}