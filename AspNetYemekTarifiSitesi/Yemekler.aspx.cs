using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace AspNetYemekTarifiSitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                yemekid = Request.QueryString["YEMEKID"];
                islem = Request.QueryString["islem"];
                // Kategori DROPDOWNLIST
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM TBLKATEGORI", bgl.baglanti());
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                bgl.baglanti().Close();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLYEMEK", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bgl.baglanti().Close();
            //SİLME İŞLEMİ
            if (islem == "sil")
            {
                SqlCommand sil = new SqlCommand("DELETE FROM TBLYEMEK WHERE YEMEKID=@P1",bgl.baglanti());
                sil.Parameters.AddWithValue("@P1",yemekid);
                sil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Yemek başarıyla silindi.");
            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO TBLYEMEK (YEMEKAD,YEMEKMALZEME,YEMEKTARIF,YEMEKRESIM,KATEGORI) VALUES (@P1,@P2,@P3,@P4,@P5)", bgl.baglanti());
                cmd.Parameters.AddWithValue("@P1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@P2", TextBox2.Text);
                cmd.Parameters.AddWithValue("@P3", TextBox3.Text);
                cmd.Parameters.AddWithValue("@P4", FileUpload2.FileName);
                cmd.Parameters.AddWithValue("@P5", DropDownList1.SelectedValue);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Yemek başarıyla eklendi.");
            }
            catch (Exception)
            {
            }     
        }
    }
}