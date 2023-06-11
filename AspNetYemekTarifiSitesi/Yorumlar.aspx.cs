using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNetYemekTarifiSitesi
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string islem = "";
        string yorumid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible= false;
            islem = Request.QueryString["islem"];
            yorumid = Request.QueryString["YORUMID"];
            SqlCommand onayli=new SqlCommand("SELECT * FROM TBLYORUM WHERE YORUMONAY=1",bgl.baglanti());
            SqlDataReader dr=onayli.ExecuteReader();
            DataList1.DataSource= dr;
            DataList1.DataBind();
            SqlCommand onaysiz = new SqlCommand("SELECT * FROM TBLYORUM WHERE YORUMONAY=0", bgl.baglanti());
            SqlDataReader dr2=onaysiz.ExecuteReader();
            DataList2.DataSource= dr2;
            DataList2.DataBind();
            if (islem=="sil")
            {
                SqlCommand sil = new SqlCommand("DELETE FROM TBLYORUM WHERE YORUMID=@P1",bgl.baglanti());
                sil.Parameters.AddWithValue("@P1",yorumid);
                sil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Yorum başarıyla silindi.");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}