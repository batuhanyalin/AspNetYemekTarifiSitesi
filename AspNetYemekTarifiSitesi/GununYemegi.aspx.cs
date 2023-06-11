using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AspNetYemekTarifiSitesi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlsinif bgl= new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLYEMEK WHERE DURUM=1",bgl.baglanti());
            SqlDataReader dr=cmd.ExecuteReader();
            DataList2.DataSource= dr;
            DataList2.DataBind();
        }
    }
}