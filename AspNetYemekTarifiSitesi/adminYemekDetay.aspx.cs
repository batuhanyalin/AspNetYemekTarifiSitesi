using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNetYemekTarifiSitesi
{
    public partial class adminYemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        string gununyemegi = "False";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["YEMEKID"];
            if (Page.IsPostBack == false)
            {
                //KATEGORİ DROPDOWNLIST
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM TBLKATEGORI", bgl.baglanti());
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                bgl.baglanti().Close();
          
                SqlCommand cmd = new SqlCommand("EXECUTE adminYemekDetay @DEGER=@P1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@P1", yemekid);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label1.Text = dr[1].ToString();
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[6].ToString();
                    DropDownList1.Text = dr[7].ToString();
                    Image2.ImageUrl = dr[4].ToString();
                    gununyemegi = dr[8].ToString();
                }
                bgl.baglanti().Close();
                if (gununyemegi=="False")
                {
                    CheckBox1.Checked = false;
                }
                if (gununyemegi=="True")
                {
                    CheckBox1.Checked = true;
                }
            }
     
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/Yemekler/"+FileUpload1.FileName));

                SqlCommand cmd = new SqlCommand("UPDATE TBLYEMEK SET YEMEKAD=@P1,YEMEKMALZEME=@P2,YEMEKTARIF=@P3,YEMEKRESIM=@P4,YEMEKPUAN=@P5,KATEGORI=@P6,Durum=@P7 WHERE YEMEKID=@P0 ", bgl.baglanti());
                cmd.Parameters.AddWithValue("@P1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@P2", TextBox2.Text);
                cmd.Parameters.AddWithValue("@P3", TextBox3.Text);
                cmd.Parameters.AddWithValue("@P4", "~/Resimler/Yemekler/"+FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@P5", double.Parse(TextBox4.Text));
                cmd.Parameters.AddWithValue("@P6", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@P7", gununyemegi);
                cmd.Parameters.AddWithValue("@P0", yemekid);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Yemek bilgileri başarıyla güncellendi.");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked==true)
            {
                gununyemegi = "True";
            }
            if (CheckBox1.Checked==false)
            {
                gununyemegi = "False";
            }             
        }
    }
}