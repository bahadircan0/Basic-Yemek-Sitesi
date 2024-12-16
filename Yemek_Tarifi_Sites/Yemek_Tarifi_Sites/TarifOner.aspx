<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container2">
    <div class="baslik">Tarif Öner</div> 

    <div class="tarifoner">
        <div>Tarif Ad:</div><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
      <div class="tarifoner">
     <div>Malzemeler:</div> <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
  </div>
      <div class="tarifoner">
     <div> Yapılış:</div><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
  </div>
      <div class="tarifoner">
     <div> Resim:</div><asp:FileUpload ID="FileUpload1" runat="server" />
  </div>
      <div class="tarifoner">
      <div>  Tarif Öneren:</div><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
  </div>
    <div class="tarifoner">
     <div>   Mail Adresi:</div><asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
    </div>
    
    <asp:Button ID="Button1" runat="server" Text="Tarif Öner" OnClick="Button1_Click" CssClass="button-ekle" />

        </div>
</asp:Content>

