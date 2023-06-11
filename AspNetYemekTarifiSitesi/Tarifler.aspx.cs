using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNetYemekTarifiSitesi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlsinif bgl= new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            //ONAYSIZ TARİFLER
            SqlCommand cmd2= new SqlCommand("SELECT * FROM TBLTARIFLER WHERE TARIFDURUM=0",bgl.baglanti());
            SqlDataReader dr2= cmd2.ExecuteReader();
            DataList2.DataSource= dr2;
            DataList2.DataBind();
            bgl.baglanti().Close();
            //ONAYLANAN TARİFLER
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLTARIFLER WHERE TARIFDURUM=1", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();
            bgl.baglanti().Close();
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