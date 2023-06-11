using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.WebSockets;

namespace AspNetYemekTarifiSitesi
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinif bgl=new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLKATEGORI", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
    }
}