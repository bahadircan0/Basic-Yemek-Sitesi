<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <div >
       <div class="baslik">Mesaj Listesi</div>
       
   </div>
   <div class="a2">
       <div>Mesaj Gönderen:</div>
       <div>
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
   </div>
   <div class="a2">
       <div>Mail Adresi:</div>
       <div>
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div>
   </div>
   <div class="a2">
       <div>MesajBaslik:</div>
       <div>
           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></div>
   </div>

   <div class="mesaj">
       <div>Mesajicerik:</div>
       <div >
           <asp:TextBox ID="TextBox4" runat="server" style="height:250px;width:300px" TextMode="MultiLine"></asp:TextBox></div>
   </div>
  <br />
  

</asp:Content>

