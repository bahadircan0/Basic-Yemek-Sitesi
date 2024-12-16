using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOner : System.Web.UI.Page
{   
    sqlsinifi bgl=new sqlsinifi();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
        cmd.Parameters.AddWithValue("@t1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@t2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@t3", TextBox3.Text);
        cmd.Parameters.AddWithValue("@t4", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@t5", TextBox5.Text);
        cmd.Parameters.AddWithValue("@t6", TextBox6.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Tarifiniz Alınmıştır");
    }
}