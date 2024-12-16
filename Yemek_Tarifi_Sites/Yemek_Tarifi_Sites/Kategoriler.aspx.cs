using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Kategoriler : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id=Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand cmd = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader reader = cmd.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();

        //silme işlemi

        if (islem == "sil")
        {

            SqlCommand cmdsil = new SqlCommand("Delete from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            cmdsil.Parameters.AddWithValue("@p1", id);
            cmdsil.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd2 = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd,KategoriAdet) values (@p1,@p2)", bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@p2", "0");
        cmd2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}