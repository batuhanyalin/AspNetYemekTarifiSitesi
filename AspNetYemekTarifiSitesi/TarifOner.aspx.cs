using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services.Description;

namespace AspNetYemekTarifiSitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        sqlsinif bgl=new sqlsinif();
        protected void btntarifoner_Click(object sender, EventArgs e)
        {        
            SqlCommand cmd=new SqlCommand("INSERT INTO TBLTARIFLER (TARIFAD,TARIFMALZEME,TARIFYAPILIS,TARIFRESIM,TARIFGONDEREN,TARIFGONDERENMAIL) VALUES (@P1,@P2,@P3,@P4,@P5,@P6)",bgl.baglanti());
            cmd.Parameters.AddWithValue("@P1",txttarifad.Text);
            cmd.Parameters.AddWithValue("@P2", txtmalzemeler.Text);
            cmd.Parameters.AddWithValue("@P3", txtyapilis.Text);
            cmd.Parameters.AddWithValue("@P4", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@P5", txttarifoneren.Text);
            cmd.Parameters.AddWithValue("@P6", txtmailadresi.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz alınmıştır.");
        }
    }
}