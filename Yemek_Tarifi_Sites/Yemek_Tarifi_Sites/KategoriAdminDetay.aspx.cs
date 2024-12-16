using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class KategoriAdminDetay : System.Web.UI.Page
{   sqlsinifi bgl=new sqlsinifi();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Kategoriid"];
        if (Page.IsPostBack == false) { 
        SqlCommand cmd = new SqlCommand("Select * from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", id);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read()) {
            TextBox1.Text = reader[1].ToString();
            TextBox2.Text = reader[2].ToString();
        }
        bgl.baglanti().Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd2 = new SqlCommand("update Tbl_Kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3",bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p1",TextBox1.Text);
        cmd2.Parameters.AddWithValue("@p2",TextBox2.Text);
        cmd2.Parameters.AddWithValue("@p3", id);
        cmd2.ExecuteNonQuery();
        bgl.baglanti().Close(); 
    }
}