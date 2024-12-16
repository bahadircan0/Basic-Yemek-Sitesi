using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

public class sqlsinifi
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=BAHADIR\SQLEXPRESS;Initial Catalog=Dbo_YemekTarifi;Integrated Security=True;Encrypt=False");
        baglan.Open();
        return baglan;


        
    }
}