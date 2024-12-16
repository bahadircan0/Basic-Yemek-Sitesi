<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" cssClass="container2">
    <ItemTemplate>
        <div style="border:2px solid black">
       <div class="yemekad"><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>"><asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label></div></a>
         <div class="yemekmalzeme1"><div>Malzemeler:</div>  <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label></div>
         <div class="yemekmalzeme1"><div>Tarifi:</div>  <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label></div>
        <div>Eklenme Tarihi: <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label></div>
        <div>Puan: <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label></div>
       <div>Katagori: <asp:Label ID="Label6" runat="server" Text='<%# Eval("Kategoriid") %>'></asp:Label></div>
        <br /><br />
            </div>

    </ItemTemplate>
</asp:DataList>
</asp:Content>

