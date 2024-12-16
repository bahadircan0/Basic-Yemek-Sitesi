using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class HakkımızdaAdmin : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from Tbl_Hakkımızda", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

        }
    }
    protected void Button1_(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update Tbl_hakkımızda set metin=@p1", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}