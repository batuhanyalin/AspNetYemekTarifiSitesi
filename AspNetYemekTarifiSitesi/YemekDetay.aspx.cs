using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetYemekTarifiSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                yemekid = Request.QueryString["YEMEKID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM TBLYEMEK WHERE YEMEKID=@P1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@P1", yemekid);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label3.Text = dr[1].ToString();
                }
                bgl.baglanti().Close();
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM TBLYORUM WHERE YEMEK=@P2 AND YORUMONAY=1", bgl.baglanti());
                cmd2.Parameters.AddWithValue("@P2", yemekid);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DataList2.DataSource = dr2;
                DataList2.DataBind();
            }
            catch (Exception)
            {

            }
        }

        protected void btnyorumyap_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO TBLYORUM (YORUMADSOYAD,YORUMMAIL,YORUM,YEMEK) VALUES (@P1,@P2,@P3,@P4)", bgl.baglanti());
                cmd.Parameters.AddWithValue("@P1", txtadsoyad.Text);
                cmd.Parameters.AddWithValue("@P2", txteposta.Text);
                cmd.Parameters.AddWithValue("@P3", txtyorum.Text);
                cmd.Parameters.AddWithValue("@P4", yemekid);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Yorum başarıyla gönderildi. Onaylandıktan sonra yayınlanacaktır.");

            }
            catch (Exception)
            {
            }
        }
    }
}