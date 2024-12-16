using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class iletisim : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen,MesajMail,MesajBaslik,Mesajicerik) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", TextBox4.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Mesajınız gönderilmiştir.");
    }
}