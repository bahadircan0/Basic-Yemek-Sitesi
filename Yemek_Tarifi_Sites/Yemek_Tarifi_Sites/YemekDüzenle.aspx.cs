using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDüzenle : System.Web.UI.Page
{   sqlsinifi bgl=new sqlsinifi();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
      id =Request.QueryString["Yemekid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Yemekler where Yemekid=@p1",bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader[1].ToString();
                TextBox2.Text = reader[2].ToString();
                TextBox3.Text = reader[3].ToString();
            }
            bgl.baglanti().Close();


            if (Page.IsPostBack == false)
            {
                SqlCommand cmd2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader reader2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = reader2;
                DropDownList1.DataBind();

            }


        }
        
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update Tbl_Yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4 where yemekid=@p5", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1",TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2",TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3",TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@p5",id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update Tbl_Yemekler set Durum=0", bgl.baglanti());
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();

        SqlCommand cmd2 = new SqlCommand("update Tbl_Yemekler set Durum=1 where Yemekid=@p1", bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p1", id);
        cmd2.ExecuteNonQuery();
        bgl.baglanti().Close();



    }


}