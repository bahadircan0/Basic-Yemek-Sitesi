﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class MesajDetay : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Mesajid"];
        SqlCommand cmd = new SqlCommand("select * from Tbl_Mesajlar Where mesajid=@p1",bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1",id);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();
        }
        bgl.baglanti().Close();
    }

    
}