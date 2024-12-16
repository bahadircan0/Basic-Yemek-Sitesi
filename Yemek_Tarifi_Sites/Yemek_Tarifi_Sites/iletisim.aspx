<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="container2">
    <div  class="baslik">Mesaj Paneli</div>

    <div class="tarifoner">Ad Soyad: 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <div class="tarifoner">Mail adresiniz: 
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
    <div class="tarifoner">Konu: 
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </div>
    <div class="tarifoner">Mesaj:  
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </div>


    <div>
        <asp:Button runat="server" Text="Mesajı Gönder" OnClick="Button1_Click1" CssClass="button-ekle" />
    </div>
        </div>
</asp:Content>

