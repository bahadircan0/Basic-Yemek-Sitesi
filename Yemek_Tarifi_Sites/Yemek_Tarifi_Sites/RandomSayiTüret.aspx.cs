using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class RandomSayiTüret : System.Web.UI.Page
{
    sqlsinifi bgl=new sqlsinifi();
    Random random = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
      
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int rastgaleSayi = random.Next(0, 50);
        Label3.Text = rastgaleSayi.ToString();

    }
}