using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Hakkimizda : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Tbl_Hakkımızda", bgl.baglanti());
        SqlDataReader reader = cmd.ExecuteReader();
        Datalist1.DataSource = reader;
        Datalist1.DataBind();

    }
}