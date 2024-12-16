using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDetay : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    string yemekid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];
        SqlCommand cmd = new SqlCommand("Select YemekAd From Tbl_Yemekler where yemekid=@p1",bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read()) {
            Label1.Text = reader[0].ToString();
        }
        bgl.baglanti().Close();


        SqlCommand cmd2 = new SqlCommand("Select * from Tbl_Yorumlar Where yemekid=@p2", bgl.baglanti())
;

        cmd2.Parameters.AddWithValue("@p2",yemekid);
        SqlDataReader reader2 = cmd2.ExecuteReader();
        DataList1.DataSource = reader2;
        DataList1.DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd3 = new SqlCommand("insert into Tbl_Yorumlar (Yorumadsoyad,Yorummail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        cmd3.Parameters.AddWithValue("@p1",TextBox1.Text);
        cmd3.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd3.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd3.Parameters.AddWithValue("@p4", yemekid.ToString());
        cmd3.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yorumuz gönderilmiştir.");





    }
}