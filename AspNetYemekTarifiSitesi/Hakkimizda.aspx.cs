using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetYemekTarifiSitesi
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd=new SqlCommand("SELECT * FROM TBLHAKKIMIZDA",bgl.baglanti());
            SqlDataReader dr=cmd.ExecuteReader();
            DataList2.DataSource=dr;
            DataList2.DataBind();
        }
    }
}