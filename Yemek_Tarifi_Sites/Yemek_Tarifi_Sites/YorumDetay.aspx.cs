using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YorumDetay : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Yorumid"];

        if (Page.IsPostBack==false)
        {

        

        SqlCommand cmd = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.yemekid=Tbl_yemekler.yemekid where Yorumid=@p1",bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1",id);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();
        }

        bgl.baglanti().Close(); 


    }
}

        protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update Tbl_Yorumlar set  YorumAdSoyad=@p1,YorumMail=@p2,yorumicerik=@p3,yorumonay=@p4 where yorumid=@p5", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1",TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2",TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3",TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", "True");
        cmd.Parameters.AddWithValue("@p5", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}