using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Tarifid"];
        SqlCommand cmd = new SqlCommand("select * from tbl_tarifler where tarifid=@p1", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox5.Text = dr[5].ToString();
            TextBox6.Text = dr[6].ToString();
            
        }
        if (Page.IsPostBack == false) {
            SqlCommand cmd2=new SqlCommand("select * from Tbl_Kategoriler",bgl.baglanti());
            SqlDataReader dr2=cmd2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

            bgl.baglanti().Close();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];
        SqlCommand cmd2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd2.ExecuteNonQuery();
        bgl.baglanti().Close();


        SqlCommand cmd = new SqlCommand("delete from Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
        

    }

}