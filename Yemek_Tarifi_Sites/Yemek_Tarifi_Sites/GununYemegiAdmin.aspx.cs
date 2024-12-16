using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class GununYemegiAdmin : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    string id="";
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Yemekid"];

        SqlCommand cmd = new SqlCommand("select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader reader = cmd.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();

        SqlCommand cmd2 = new SqlCommand("select * from Tbl_GununYemegi", bgl.baglanti());
        SqlDataReader reader2 = cmd2.ExecuteReader();
        DataList2.DataSource = reader2;
        DataList2.DataBind();

        SqlCommand cmd3 = new SqlCommand("select YemekAd from Tbl_Yemekler where Durum=@p1", bgl.baglanti());
        cmd3.Parameters.AddWithValue("@p1", "True");
        SqlDataReader reader3 = cmd3.ExecuteReader();
        DataList2.DataSource = reader3;
        DataList2.DataBind();



    }

   
}