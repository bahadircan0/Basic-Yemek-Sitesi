<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:DataList ID="DataList2" runat="server" cssClass="container2">
        <ItemTemplate>
            <div class="baslik" >
                 <asp:Label Text='<%# Eval("YemekAd") %>' runat="server" ID="Label3"> </asp:Label>
            </div>
            <div class="yemekmalzeme"><div> Malzemeler:</div><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label></div>
            <div class="yemekmalzeme"><div> Tarif:</div><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label></div>
            
            <div class="yemekmalzeme"><div> Puan:</div><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label></div>
            <div class="yemekmalzeme">Tarih: <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>

            </div>

             
            
            
            
           
        </ItemTemplate>


    </asp:DataList>

</asp:Content>

