using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AspNetYemekTarifiSitesi
{
    public partial class adminTarifDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string tarifid = "";
        string tarifonay = "false";
        protected void Page_Load(object sender, EventArgs e)
        {
            tarifid = Request.QueryString["TARIFID"];
            if (Page.IsPostBack == false)
            {
                // KATEGORI DROPDOWNLIST
                SqlCommand kat = new SqlCommand("SELECT * FROM TBLKATEGORI",bgl.baglanti());
                SqlDataReader dr2=kat.ExecuteReader();
                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";
                DropDownList1.DataSource=dr2;
                DropDownList1.DataBind();
                bgl.baglanti().Close();

                SqlCommand cmd = new SqlCommand("SELECT * FROM TBLTARIFLER WHERE TARIFID=@P1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@P1",tarifid);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    textb1.Text = dr[1].ToString();
                    textb2.Text = dr[5].ToString();
                    textb3.Text = dr[6].ToString();
                    textb4.Text = dr[2].ToString();
                    textb5.Text = dr[3].ToString();
                    Image2.ImageUrl = dr[4].ToString();
                    tarifonay = dr[7].ToString();
                }
                bgl.baglanti().Close();
                if (tarifonay == "False")
                {
                    CheckBox1.Checked = false;
                }
                if (tarifonay == "True")
                {
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                tarifonay = "True";
            }
            if (CheckBox1.Checked == false)
            {
                tarifonay = "False";
            }
        }

        protected void btnyorumyap_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE TBLTARIFLER SET TARIFAD=@P1,TARIFMALZEME=@P2,TARIFYAPILIS=@P3,TARIFRESIM=@P4,TARIFGONDEREN=@P5,TARIFGONDERENMAIL=@P6,TARIFDURUM=@P7 WHERE TARIFID=@P0 ", bgl.baglanti());
            cmd.Parameters.AddWithValue("@P1", textb1.Text);
            cmd.Parameters.AddWithValue("@P2", textb4.Text);
            cmd.Parameters.AddWithValue("@P3", textb5.Text);
            cmd.Parameters.AddWithValue("@P4", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@P5", textb2.Text);
            cmd.Parameters.AddWithValue("@P6", textb3.Text);
            cmd.Parameters.AddWithValue("@P7", tarifonay);
            cmd.Parameters.AddWithValue("@P0",tarifid);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarif başarıyla güncellendi.");
            if (tarifonay=="True")
            {
                SqlCommand cmd2 = new SqlCommand("INSERT INTO TBLYEMEK (YEMEKAD,YEMEKMALZEME,YEMEKTARIF,YEMEKRESIM,KATEGORI) VALUES (@P1,@P2,@P3,@P4,@P5)", bgl.baglanti());
                cmd2.Parameters.AddWithValue("@P1", textb1.Text);
                cmd2.Parameters.AddWithValue("@P2", textb4.Text);
                cmd2.Parameters.AddWithValue("@P3", textb5.Text);
                cmd2.Parameters.AddWithValue("@P4", FileUpload1.FileName);
                cmd2.Parameters.AddWithValue("@P5", DropDownList1.SelectedValue);
                cmd2.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Tarif yemekler listesine eklendi.");
            }
            

        }
    }
}