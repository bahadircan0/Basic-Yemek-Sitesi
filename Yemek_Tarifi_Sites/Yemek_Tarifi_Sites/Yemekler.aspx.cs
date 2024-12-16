using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yemekler : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {

            id=Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];

            SqlCommand cmd2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader reader2 = cmd2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = reader2;
            DropDownList1.DataBind();

        }


        SqlCommand cmd = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader reader = cmd.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();

        if (islem == "sil")
        {
            SqlCommand cmd2 = new SqlCommand("delete from Tbl_Yemekler where Yemekid=@p1",bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", id);
            cmd2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd3 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,Yemektarif,kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        cmd3.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd3.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd3.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd3.ExecuteNonQuery();
        bgl.baglanti().Close();

        SqlCommand cmd4 = new SqlCommand("update Tbl_Kategoriler set kategoriadet=kategoriadet+1 where Kategoriid=@p1", bgl.baglanti());
        cmd4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        cmd4.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    
   
}